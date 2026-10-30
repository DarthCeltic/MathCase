package main

import (
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/bridge"
	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/taste"
)

type tasteValidationOutput struct {
	SchemaVersion              string `json:"schema_version"`
	Status                     string `json:"status"`
	EvidenceClass              string `json:"evidence_class"`
	ExecutionStatus            string `json:"execution_status"`
	ExecutionPairCount         int    `json:"execution_pair_count,omitempty"`
	ExecutionPassCount         int    `json:"execution_pass_count,omitempty"`
	ExecutionFailCount         int    `json:"execution_fail_count,omitempty"`
	ExecutionIncompleteCount   int    `json:"execution_incomplete_count,omitempty"`
	ExecutionAuditReportPath   string `json:"execution_audit_report_path,omitempty"`
	ExecutionAuditReportSHA256 string `json:"execution_audit_report_sha256,omitempty"`
	CatalogSnapshotSHA256      string `json:"catalog_snapshot_sha256"`
	PairSetSHA256              string `json:"pair_set_sha256"`
	PairCount                  int    `json:"pair_count"`
	LeakageGroupCount          int    `json:"leakage_group_count"`
	EvidenceCount              int    `json:"simplification_evidence_count"`
	TrainingReady              bool   `json:"training_ready"`
	TrainingReadinessNote      string `json:"training_readiness_note"`
}

// runTasteValidate checks item bytes and recorded simplification claims for an
// M3 Mathlib proof-pair dataset. It does not establish that Lean executed, does
// not create a train/evaluation split, and does not start model training.
func runTasteValidate(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("taste-validate", flag.ContinueOnError)
	flags.SetOutput(stderr)
	snapshotPath := flags.String("snapshot", "", "strict JSON file containing the exact M0 catalog snapshot")
	pairsPath := flags.String("pairs", "", "strict JSON file containing the Mathlib proof-pair dataset")
	sourceRoot := flags.String("source-root", "", "local root of the pinned Mathlib repository")
	evidenceRoot := flags.String("evidence-root", "", "local evidence root with <id>.json, replay/<id>.lean, and output/<id>.txt")
	replayAuditOptions := addTasteReplayAuditFlags(flags)
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*snapshotPath) == "" || strings.TrimSpace(*pairsPath) == "" || strings.TrimSpace(*sourceRoot) == "" || strings.TrimSpace(*evidenceRoot) == "" {
		fmt.Fprintln(stderr, "taste-validate requires --snapshot FILE, --pairs FILE, --source-root DIR, and --evidence-root DIR; positional arguments are not accepted")
		return 2
	}
	snapshot, dataset, sourceFiles, evidenceFiles, err := loadTastePairEvidence(*snapshotPath, *pairsPath, *sourceRoot, *evidenceRoot)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: validate Taste proof-pair inputs: %v\n", err)
		return 2
	}
	if err := taste.ValidateMathlibProofPairEvidence(snapshot, dataset.Pairs, sourceFiles, evidenceFiles); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate Taste source evidence: %v\n", err)
		return 2
	}
	replayAudit, err := auditTasteReplayIfConfigured(replayAuditOptions, snapshot, dataset.Pairs, sourceFiles, evidenceFiles)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: audit Taste replay execution: %v\n", err)
		return 2
	}
	pairSetDigest, err := dataset.Digest()
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: hash Taste proof-pair dataset: %v\n", err)
		return 2
	}
	groups := make(map[string]struct{}, len(dataset.Pairs))
	for _, pair := range dataset.Pairs {
		groups[pair.LeakageGroupID] = struct{}{}
	}
	output := tasteValidationOutput{
		SchemaVersion:         "mathcase-taste-validation-v2",
		Status:                "CONTENT_VALIDATED_EXECUTION_UNVERIFIED",
		EvidenceClass:         "HASH_AND_CLAIM_CONSISTENCY",
		ExecutionStatus:       "NOT_AUDITED",
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		PairSetSHA256:         pairSetDigest,
		PairCount:             len(dataset.Pairs),
		LeakageGroupCount:     len(groups),
		EvidenceCount:         len(dataset.Pairs),
		TrainingReady:         false,
		TrainingReadinessNote: "This command checks pinned source bytes, recorded replay artifacts, and claim/hash consistency. It does not launch Lean or establish that a replay occurred. Actual execution requires a matching receipt from the shared pinned-sandbox runner; verified bounty labels, an adequate frozen group split, and separate training approval are also unchecked.",
	}
	if replayAudit != nil {
		output.Status = "EXECUTION_AUDITED_" + replayAudit.Status
		output.EvidenceClass = replayAudit.EvidenceClass
		output.ExecutionStatus = replayAudit.Status
		output.ExecutionPairCount = replayAudit.PairCount
		output.ExecutionPassCount = replayAudit.PassCount
		output.ExecutionFailCount = replayAudit.FailCount
		output.ExecutionIncompleteCount = replayAudit.IncompleteCount
		output.ExecutionAuditReportPath = replayAudit.AuditReportPath
		output.ExecutionAuditReportSHA256 = replayAudit.AuditReportSHA256
	}
	encoder := json.NewEncoder(stdout)
	encoder.SetIndent("", "  ")
	if err := encoder.Encode(output); err != nil {
		fmt.Fprintf(stderr, "mathcase: encode Taste validation summary: %v\n", err)
		return 2
	}
	return 0
}

func loadTastePairEvidence(snapshotPath, pairsPath, sourceRoot, evidenceRoot string) (
	catalog.Snapshot,
	taste.MathlibProofPairDataset,
	map[string][]byte,
	map[string][]byte,
	error,
) {
	snapshot, err := loadCatalogSnapshot(snapshotPath)
	if err != nil {
		return catalog.Snapshot{}, taste.MathlibProofPairDataset{}, nil, nil, fmt.Errorf("load catalog snapshot: %w", err)
	}
	pairData, err := readRegularInput(pairsPath, "Mathlib proof-pair dataset", maxTastePairDatasetFile)
	if err != nil {
		return catalog.Snapshot{}, taste.MathlibProofPairDataset{}, nil, nil, fmt.Errorf("load Mathlib proof-pair dataset: %w", err)
	}
	var dataset taste.MathlibProofPairDataset
	if err := decodeStrictJSON(pairData, &dataset, "Mathlib proof-pair dataset"); err != nil {
		return catalog.Snapshot{}, taste.MathlibProofPairDataset{}, nil, nil, fmt.Errorf("decode Mathlib proof-pair dataset: %w", err)
	}
	if err := dataset.Validate(snapshot); err != nil {
		return catalog.Snapshot{}, taste.MathlibProofPairDataset{}, nil, nil, fmt.Errorf("validate Mathlib proof-pair dataset: %w", err)
	}
	sourceFiles, evidenceFiles, err := loadTasteRawEvidence(snapshot, dataset.Pairs, sourceRoot, evidenceRoot)
	if err != nil {
		return catalog.Snapshot{}, taste.MathlibProofPairDataset{}, nil, nil, err
	}
	return snapshot, dataset, sourceFiles, evidenceFiles, nil
}

func loadTasteRawEvidence(snapshot catalog.Snapshot, pairs []taste.MathlibProofPair, sourceRoot, evidenceRoot string) (map[string][]byte, map[string][]byte, error) {
	sourceStore, err := bridge.NewLocalProofStore(sourceRoot)
	if err != nil {
		return nil, nil, fmt.Errorf("open bounded Mathlib source root: %w", err)
	}
	evidenceStore, err := bridge.NewLocalProofStore(evidenceRoot)
	if err != nil {
		return nil, nil, fmt.Errorf("open bounded simplification-evidence root: %w", err)
	}
	sources := make(map[string]catalog.SourceVersion, len(snapshot.Sources))
	for _, source := range snapshot.Sources {
		sources[source.ID] = source
	}
	sourceFiles := make(map[string][]byte)
	evidenceFiles := make(map[string][]byte, len(pairs)*3)
	for _, pair := range pairs {
		source, ok := sources[pair.SourceID]
		if !ok {
			return nil, nil, fmt.Errorf("proof pair %q references absent source %q", pair.PairID, pair.SourceID)
		}
		if _, loaded := sourceFiles[source.ID]; !loaded {
			content, err := sourceStore.ReadProof(source.ItemLocator)
			if err != nil {
				return nil, nil, fmt.Errorf("read exact source item %q: %w", source.ID, err)
			}
			sourceFiles[source.ID] = content
		}
		receiptPath := pair.SimplificationEvidenceID + ".json"
		if _, loaded := evidenceFiles[receiptPath]; !loaded {
			content, err := evidenceStore.ReadProof(pair.SimplificationEvidenceID + ".json")
			if err != nil {
				return nil, nil, fmt.Errorf("read simplification evidence %q: %w", pair.SimplificationEvidenceID, err)
			}
			evidenceFiles[receiptPath] = content
		}
		for _, relativePath := range []string{
			"replay/" + pair.SimplificationEvidenceID + ".lean",
			"output/" + pair.SimplificationEvidenceID + ".txt",
		} {
			if _, loaded := evidenceFiles[relativePath]; loaded {
				continue
			}
			content, err := evidenceStore.ReadProof(relativePath)
			if err != nil {
				return nil, nil, fmt.Errorf("read simplification artifact %q: %w", relativePath, err)
			}
			evidenceFiles[relativePath] = content
		}
	}
	return sourceFiles, evidenceFiles, nil
}
