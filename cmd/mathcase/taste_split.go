package main

import (
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/taste"
)

const maxTastePairDatasetFile = 32 << 20

type tasteSplitOutput struct {
	Status                string                              `json:"status"`
	CatalogSnapshotSHA256 string                              `json:"catalog_snapshot_sha256"`
	PairSetSHA256         string                              `json:"pair_set_sha256"`
	TrainingPairCount     int                                 `json:"training_pair_count"`
	EvaluationPairCount   int                                 `json:"evaluation_pair_count"`
	Manifest              taste.MathlibProofPairSplitManifest `json:"manifest"`
}

func runTasteSplit(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("taste-split", flag.ContinueOnError)
	flags.SetOutput(stderr)
	snapshotPath := flags.String("snapshot", "", "strict JSON file containing the exact M0 catalog snapshot")
	pairsPath := flags.String("pairs", "", "strict JSON file containing the approved Mathlib proof-pair dataset")
	sourceRoot := flags.String("source-root", "", "local root of the pinned Mathlib repository")
	evidenceRoot := flags.String("evidence-root", "", "local evidence root with <id>.json, replay/<id>.lean, and output/<id>.txt")
	outputPath := flags.String("output", "", "new split manifest output file; existing files are never overwritten")
	seed := flags.String("seed", "", "stable split seed recorded in the manifest")
	trainingPercent := flags.Int("training-percent", 80, "percentage of leakage groups assigned to training (1-99)")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*snapshotPath) == "" || strings.TrimSpace(*pairsPath) == "" || strings.TrimSpace(*sourceRoot) == "" || strings.TrimSpace(*evidenceRoot) == "" || strings.TrimSpace(*outputPath) == "" || strings.TrimSpace(*seed) == "" {
		fmt.Fprintln(stderr, "taste-split requires --snapshot FILE, --pairs FILE, --source-root DIR, --evidence-root DIR, --output NEW_FILE, and --seed VALUE; positional arguments are not accepted")
		return 2
	}
	snapshot, dataset, sourceFiles, evidenceFiles, err := loadTastePairEvidence(*snapshotPath, *pairsPath, *sourceRoot, *evidenceRoot)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load Taste proof-pair evidence: %v\n", err)
		return 2
	}
	if err := taste.ValidateMathlibProofPairEvidence(snapshot, dataset.Pairs, sourceFiles, evidenceFiles); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate Taste proof-pair evidence: %v\n", err)
		return 2
	}
	manifest, err := taste.BuildMathlibProofPairSplit(snapshot, dataset.Pairs, taste.MathlibProofPairSplitConfig{
		TrainingPercent: *trainingPercent,
		Seed:            *seed,
	})
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: build Taste split: %v\n", err)
		return 2
	}
	partitions, err := manifest.Partition(snapshot, dataset.Pairs)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: apply Taste split: %v\n", err)
		return 2
	}
	output := tasteSplitOutput{
		Status:                "CREATED",
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		PairSetSHA256:         manifest.PairSetSHA256,
		TrainingPairCount:     len(partitions.Training),
		EvaluationPairCount:   len(partitions.Evaluation),
		Manifest:              manifest,
	}
	outputBytes, err := json.MarshalIndent(output, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode Taste split manifest: %v\n", err)
		return 2
	}
	outputBytes = append(outputBytes, '\n')
	if err := writeNewRegularOutput(*outputPath, outputBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: write Taste split manifest: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(outputBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: write Taste split summary: %v\n", err)
		return 2
	}
	return 0
}
