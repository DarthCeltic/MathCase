package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"os"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/taste"
)

type tasteReplayAuditOptions struct {
	runnerRoot      string
	repositoryRoot  string
	manifestPath    string
	expectedImage   string
	mathlibRevision string
	reportPath      string
}

type tasteReplayAuditSummary struct {
	Status            string `json:"execution_status"`
	EvidenceClass     string `json:"execution_evidence_class"`
	Authenticated     bool   `json:"execution_authenticated"`
	PairCount         int    `json:"execution_pair_count"`
	PassCount         int    `json:"execution_pass_count"`
	FailCount         int    `json:"execution_fail_count"`
	IncompleteCount   int    `json:"execution_incomplete_count"`
	AuditReportPath   string `json:"execution_audit_report_path"`
	AuditReportSHA256 string `json:"execution_audit_report_sha256"`
}

func addTasteReplayAuditFlags(flags *flag.FlagSet) *tasteReplayAuditOptions {
	options := &tasteReplayAuditOptions{}
	flags.StringVar(&options.runnerRoot, "runner-root", "", "root directory of the pinned Mathlib replay run")
	flags.StringVar(&options.repositoryRoot, "repository-root", "", "repository root used to reopen exact pair-set files named by the manifest")
	flags.StringVar(&options.manifestPath, "replay-manifest", "", "manifest.json or manifest.incomplete.json under --runner-root")
	flags.StringVar(&options.expectedImage, "expected-image-id", "", "immutable sha256 image ID expected for this replay")
	flags.StringVar(&options.mathlibRevision, "expected-mathlib-revision", "", "exact Mathlib commit expected for this replay")
	flags.StringVar(&options.reportPath, "execution-report", "", "new file path for the immutable execution-audit report")
	return options
}

func auditTasteReplayIfConfigured(
	options *tasteReplayAuditOptions,
	snapshot catalog.Snapshot,
	pairs []taste.MathlibProofPair,
	sourceFiles, evidenceFiles map[string][]byte,
) (*tasteReplayAuditSummary, error) {
	if options == nil {
		return nil, errors.New("taste replay audit options are required")
	}
	configured := strings.TrimSpace(options.runnerRoot) != "" || strings.TrimSpace(options.manifestPath) != "" ||
		strings.TrimSpace(options.repositoryRoot) != "" || strings.TrimSpace(options.expectedImage) != "" ||
		strings.TrimSpace(options.mathlibRevision) != "" || strings.TrimSpace(options.reportPath) != ""
	if !configured {
		return nil, nil
	}
	if strings.TrimSpace(options.runnerRoot) == "" || strings.TrimSpace(options.repositoryRoot) == "" || strings.TrimSpace(options.manifestPath) == "" ||
		strings.TrimSpace(options.expectedImage) == "" || strings.TrimSpace(options.mathlibRevision) == "" ||
		strings.TrimSpace(options.reportPath) == "" {
		return nil, errors.New("execution audit requires --runner-root, --repository-root, --replay-manifest, --expected-image-id, --expected-mathlib-revision, and --execution-report together")
	}
	report, err := taste.AuditMathlibLeanReplayExecution(taste.MathlibLeanReplayAuditRequest{
		RunnerRoot: options.runnerRoot, RepositoryRoot: options.repositoryRoot, ManifestPath: options.manifestPath, Snapshot: snapshot, Pairs: pairs,
		SourceFiles: sourceFiles, EvidenceFiles: evidenceFiles, ExpectedImageID: options.expectedImage,
		ExpectedMathlibRevision: options.mathlibRevision,
	})
	if err != nil {
		return nil, fmt.Errorf("audit real Mathlib Lean replay: %w", err)
	}
	encoded, err := json.MarshalIndent(report, "", "  ")
	if err != nil {
		return nil, fmt.Errorf("encode Mathlib Lean replay audit: %w", err)
	}
	encoded = append(encoded, '\n')
	if err := createOrReuseTasteReplayAuditReport(options.reportPath, encoded); err != nil {
		return nil, fmt.Errorf("write or reuse immutable Mathlib Lean replay audit: %w", err)
	}
	digest := sha256.Sum256(encoded)
	return &tasteReplayAuditSummary{
		Status: report.Status, EvidenceClass: report.EvidenceClass, Authenticated: report.Authenticated,
		PairCount: report.PairCount, PassCount: report.PassCount, FailCount: report.FailCount,
		IncompleteCount: report.IncompleteCount, AuditReportPath: options.reportPath,
		AuditReportSHA256: hex.EncodeToString(digest[:]),
	}, nil
}

// createOrReuseTasteReplayAuditReport preserves an existing immutable replay
// report only when its bytes exactly match the report freshly produced by the
// shared audit consumer. Creation remains exclusive; a concurrent creator is
// handled by reopening and comparing the resulting regular file.
func createOrReuseTasteReplayAuditReport(path string, encoded []byte) error {
	if strings.TrimSpace(path) == "" || len(encoded) == 0 {
		return errors.New("replay audit report path and content are required")
	}
	err := writeNewRegularOutput(path, encoded)
	if err == nil {
		return nil
	}
	if !errors.Is(err, os.ErrExist) {
		return err
	}
	existing, readErr := readRegularInput(path, "existing immutable Taste replay audit report", 32<<20)
	if readErr != nil {
		return readErr
	}
	if !bytes.Equal(existing, encoded) {
		return errors.New("existing replay audit report differs from the freshly serialized audit report")
	}
	return nil
}
