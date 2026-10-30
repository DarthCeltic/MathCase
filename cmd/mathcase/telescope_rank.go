package main

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/telescope"
)

type telescopeFeaturesFile struct {
	SchemaVersion string               `json:"schema_version"`
	Features      []telescope.Features `json:"features"`
}

type telescopeRankOutput struct {
	SchemaVersion         string             `json:"schema_version"`
	Status                string             `json:"status"`
	CatalogSnapshotSHA256 string             `json:"catalog_snapshot_sha256"`
	FormulaVersion        string             `json:"formula_version"`
	ResultCount           int                `json:"result_count"`
	Results               []telescope.Result `json:"results"`
}

func runTelescopeRank(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("telescope-rank", flag.ContinueOnError)
	flags.SetOutput(stderr)
	snapshotPath := flags.String("snapshot", "", "strict JSON file containing the exact M0 catalog snapshot")
	featuresPath := flags.String("features", "", "strict JSON file containing M1 feature rows")
	evidenceRoot := flags.String("evidence-root", "", "directory containing hash-pinned feature evidence JSON artifacts named <evidence_id>.json")
	outputPath := flags.String("output", "", "new ranked result file; existing files are never overwritten")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*snapshotPath) == "" || strings.TrimSpace(*featuresPath) == "" || strings.TrimSpace(*evidenceRoot) == "" || strings.TrimSpace(*outputPath) == "" {
		fmt.Fprintln(stderr, "telescope-rank requires --snapshot FILE, --features FILE, --evidence-root DIR, and --output NEW_FILE; positional arguments are not accepted")
		return 2
	}
	snapshot, err := loadCatalogSnapshot(*snapshotPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load catalog snapshot: %v\n", err)
		return 2
	}
	featuresData, err := readRegularInput(*featuresPath, "Telescope features", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load Telescope features: %v\n", err)
		return 2
	}
	var request telescopeFeaturesFile
	if err := decodeStrictJSON(featuresData, &request, "Telescope features"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode Telescope features: %v\n", err)
		return 2
	}
	if request.SchemaVersion != "mathcase-telescope-features-v1" {
		fmt.Fprintf(stderr, "mathcase: unsupported Telescope feature schema %q\n", request.SchemaVersion)
		return 2
	}
	evidence, err := loadTelescopeEvidence(*evidenceRoot, request.Features)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load Telescope feature evidence: %v\n", err)
		return 2
	}
	results, err := telescope.RankFromCatalog(snapshot, request.Features, evidence)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: rank catalog candidates: %v\n", err)
		return 2
	}
	output := telescopeRankOutput{
		SchemaVersion:         "mathcase-telescope-rank-v1",
		Status:                "COMPLETED",
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		FormulaVersion:        telescope.FormulaVersion,
		ResultCount:           len(results),
		Results:               results,
	}
	outputData, err := json.MarshalIndent(output, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode Telescope results: %v\n", err)
		return 2
	}
	outputData = append(outputData, '\n')
	if err := writeNewRegularOutput(*outputPath, outputData); err != nil {
		fmt.Fprintf(stderr, "mathcase: write Telescope results: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(outputData); err != nil {
		fmt.Fprintf(stderr, "mathcase: write Telescope results to stdout: %v\n", err)
		return 2
	}
	return 0
}

func loadTelescopeEvidence(root string, features []telescope.Features) (map[string]telescope.LoadedFeatureEvidence, error) {
	if strings.TrimSpace(root) == "" {
		return nil, errors.New("evidence root is required")
	}
	absolute, err := filepath.Abs(root)
	if err != nil {
		return nil, fmt.Errorf("resolve evidence root: %w", err)
	}
	canonical, err := filepath.EvalSymlinks(absolute)
	if err != nil {
		return nil, fmt.Errorf("resolve evidence root: %w", err)
	}
	info, err := os.Stat(canonical)
	if err != nil {
		return nil, fmt.Errorf("inspect evidence root: %w", err)
	}
	if !info.IsDir() {
		return nil, errors.New("evidence root must be a directory")
	}
	loaded := make(map[string]telescope.LoadedFeatureEvidence)
	for _, feature := range features {
		if err := feature.Validate(); err != nil {
			return nil, fmt.Errorf("feature row %q: %w", feature.ProblemID, err)
		}
		refs := []telescope.FeatureEvidenceRef{feature.TasteEvidence, feature.BoundaryEvidence}
		for _, conditional := range feature.ConditionalTaste {
			refs = append(refs, conditional.Evidence)
		}
		for _, technique := range feature.TechniqueCompatibilities {
			refs = append(refs, technique.Evidence)
		}
		for _, ref := range refs {
			if _, exists := loaded[ref.EvidenceID]; exists {
				continue
			}
			path := filepath.Join(canonical, ref.EvidenceID+".json")
			data, err := readRegularInput(path, "Telescope feature evidence "+ref.EvidenceID, maxProblemFileBytes)
			if err != nil {
				return nil, err
			}
			var record telescope.FeatureEvidenceRecord
			if err := decodeStrictJSON(data, &record, "Telescope feature evidence "+ref.EvidenceID); err != nil {
				return nil, err
			}
			digest := sha256.Sum256(data)
			loaded[ref.EvidenceID] = telescope.LoadedFeatureEvidence{
				Record:         record,
				ArtifactSHA256: hex.EncodeToString(digest[:]),
			}
		}
	}
	return loaded, nil
}
