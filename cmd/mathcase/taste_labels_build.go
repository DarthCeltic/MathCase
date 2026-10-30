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

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/taste"
)

type tasteLabelBuildOutput struct {
	Status                string   `json:"status"`
	CatalogSnapshotSHA256 string   `json:"catalog_snapshot_sha256"`
	PairSetSHA256         string   `json:"pair_set_sha256"`
	LabelSetSHA256        string   `json:"label_set_sha256"`
	LabelCount            int      `json:"label_count"`
	LabelRecordIDs        []string `json:"label_record_ids"`
	LabelReplayLinkPath   string   `json:"label_replay_link_path"`
	LabelReplayLinkSHA256 string   `json:"label_replay_link_sha256"`
	TrainingStarted       bool     `json:"training_started"`
}

type tasteLabelValidationOutput struct {
	Status                     string `json:"status"`
	EvidenceClass              string `json:"evidence_class"`
	ExecutionStatus            string `json:"execution_status"`
	ExecutionPairCount         int    `json:"execution_pair_count,omitempty"`
	ExecutionPassCount         int    `json:"execution_pass_count,omitempty"`
	ExecutionFailCount         int    `json:"execution_fail_count,omitempty"`
	ExecutionIncompleteCount   int    `json:"execution_incomplete_count,omitempty"`
	ExecutionAuditReportPath   string `json:"execution_audit_report_path,omitempty"`
	ExecutionAuditReportSHA256 string `json:"execution_audit_report_sha256,omitempty"`
	LabelReplayLinkPath        string `json:"label_replay_link_path,omitempty"`
	LabelReplayLinkSHA256      string `json:"label_replay_link_sha256,omitempty"`
	CatalogSnapshotSHA256      string `json:"catalog_snapshot_sha256"`
	PairSetSHA256              string `json:"pair_set_sha256"`
	LabelSetSHA256             string `json:"label_set_sha256"`
	LabelCount                 int    `json:"label_count"`
	TrainingReady              bool   `json:"training_ready"`
}

const maxTasteLabelDatasetFile = 128 << 20
const tasteLabelReplayLinkSchema = "mathcase-taste-label-replay-link-v1"
const tasteReplayAuditReportSchema = "mathcase-taste-lean-replay-audit-v1"
const tasteReplayAuditEvidenceClass = "HASH_BOUND_LOCAL_PROCESS_RECEIPTS_NOT_AUTHENTICATED"

func tasteReplayAuditOptionsConfigured(options *tasteReplayAuditOptions) bool {
	return options != nil && (strings.TrimSpace(options.runnerRoot) != "" || strings.TrimSpace(options.repositoryRoot) != "" ||
		strings.TrimSpace(options.manifestPath) != "" || strings.TrimSpace(options.expectedImage) != "" ||
		strings.TrimSpace(options.mathlibRevision) != "" || strings.TrimSpace(options.reportPath) != "")
}

func tasteReplayAuditOptionsComplete(options *tasteReplayAuditOptions) bool {
	return options != nil && strings.TrimSpace(options.runnerRoot) != "" && strings.TrimSpace(options.repositoryRoot) != "" &&
		strings.TrimSpace(options.manifestPath) != "" && strings.TrimSpace(options.expectedImage) != "" &&
		strings.TrimSpace(options.mathlibRevision) != "" && strings.TrimSpace(options.reportPath) != ""
}

// tasteLabelReplayLinkRecord binds candidate labels to the exact M0 snapshot,
// pairset, and immutable local replay audit that admitted them. It is not a
// signature or a training-readiness decision.
type tasteLabelReplayLinkRecord struct {
	SchemaVersion         string `json:"schema_version"`
	EvidenceClass         string `json:"evidence_class"`
	Authenticated         bool   `json:"authenticated"`
	CatalogSnapshotPath   string `json:"catalog_snapshot_path"`
	CatalogSnapshotSHA256 string `json:"catalog_snapshot_sha256"`
	PairSetPath           string `json:"pair_set_path"`
	PairSetSHA256         string `json:"pair_set_sha256"`
	LabelSetPath          string `json:"label_set_path"`
	LabelSetSHA256        string `json:"label_set_sha256"`
	LabelCount            int    `json:"label_count"`
	PairCount             int    `json:"pair_count"`
	ReplayAuditPath       string `json:"replay_audit_path"`
	ReplayAuditSHA256     string `json:"replay_audit_sha256"`
	TrainingReady         bool   `json:"training_ready"`
}

type tasteReplayAuditFunc func(
	options *tasteReplayAuditOptions,
	snapshot catalog.Snapshot,
	pairs []taste.MathlibProofPair,
	sourceFiles, evidenceFiles map[string][]byte,
) (*tasteReplayAuditSummary, error)

// runTasteLabelsBuild emits mechanically labeled, candidate-only M3 pairs.
// All item/source/evidence checks run before the new output is written.
func runTasteLabelsBuild(args []string, stdout, stderr io.Writer) int {
	return runTasteLabelsBuildWithReplayAudit(args, stdout, stderr, auditTasteReplayIfConfigured)
}

func runTasteLabelsBuildWithReplayAudit(args []string, stdout, stderr io.Writer, audit tasteReplayAuditFunc) int {
	flags := flag.NewFlagSet("taste-labels-build", flag.ContinueOnError)
	flags.SetOutput(stderr)
	snapshotPath := flags.String("snapshot", "", "strict JSON file containing the exact M0 catalog snapshot")
	pairsPath := flags.String("pairs", "", "strict JSON file containing the Mathlib proof-pair dataset")
	sourceRoot := flags.String("source-root", "", "local root of the pinned Mathlib repository or exact source copies")
	evidenceRoot := flags.String("evidence-root", "", "local evidence root with <id>.json, replay/<id>.lean, and output/<id>.txt")
	outputPath := flags.String("output", "", "new candidate-only label dataset output; existing files are never overwritten")
	linkRecordPath := flags.String("label-replay-link", "", "new hash-bound label-to-replay link record; existing files are never overwritten")
	replayAuditOptions := addTasteReplayAuditFlags(flags)
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*snapshotPath) == "" || strings.TrimSpace(*pairsPath) == "" ||
		strings.TrimSpace(*sourceRoot) == "" || strings.TrimSpace(*evidenceRoot) == "" || strings.TrimSpace(*outputPath) == "" || strings.TrimSpace(*linkRecordPath) == "" {
		fmt.Fprintln(stderr, "taste-labels-build requires --snapshot FILE, --pairs FILE, --source-root DIR, --evidence-root DIR, --output NEW_FILE, and --label-replay-link NEW_FILE; positional arguments are not accepted")
		return 2
	}
	if !tasteReplayAuditOptionsComplete(replayAuditOptions) {
		fmt.Fprintln(stderr, "mathcase: taste-labels-build requires all six replay-audit flags; content-only label builds are refused")
		return 2
	}
	snapshot, pairDataset, sourceFiles, evidenceFiles, err := loadTastePairEvidence(*snapshotPath, *pairsPath, *sourceRoot, *evidenceRoot)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load Taste proof-pair evidence: %v\n", err)
		return 2
	}
	if err := ensureDistinctNewTasteLabelOutputs(*outputPath, *linkRecordPath, replayAuditOptions.reportPath); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate Taste label output paths: %v\n", err)
		return 2
	}
	if audit == nil {
		fmt.Fprintln(stderr, "mathcase: replay auditor is required")
		return 2
	}
	replayAudit, err := audit(replayAuditOptions, snapshot, pairDataset.Pairs, sourceFiles, evidenceFiles)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: audit Taste label replay execution: %v\n", err)
		return 2
	}
	if replayAudit == nil {
		fmt.Fprintln(stderr, "mathcase: taste-labels-build requires all replay-audit flags; content-only label builds are refused")
		return 2
	}
	pairSetSHA256, err := pairDataset.Digest()
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: digest Taste proof-pair set: %v\n", err)
		return 2
	}
	replayReport, replayReportPath, err := reopenPassingTasteReplayAudit(
		replayAudit, replayAuditOptions.reportPath, snapshot.ContentSHA256, pairSetSHA256, pairDataset.Pairs, evidenceFiles,
	)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: require complete Taste replay audit: %v\n", err)
		return 2
	}
	labels, err := taste.BuildMathlibTastePairLabels(snapshot, pairDataset.Pairs, sourceFiles, evidenceFiles)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: build Taste labels: %v\n", err)
		return 2
	}
	encoded, err := json.MarshalIndent(labels, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode Taste labels: %v\n", err)
		return 2
	}
	encoded = append(encoded, '\n')
	linkRecord, err := newTasteLabelReplayLinkRecord(
		*snapshotPath, *pairsPath, *outputPath, snapshot, labels.PairSetSHA256, labels.ContentSHA256,
		len(labels.Records), replayReport, replayReportPath, replayAudit.AuditReportSHA256,
	)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: prepare Taste label replay link: %v\n", err)
		return 2
	}
	linkBytes, err := json.MarshalIndent(linkRecord, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode Taste label replay link: %v\n", err)
		return 2
	}
	linkBytes = append(linkBytes, '\n')
	linkDigest := sha256.Sum256(linkBytes)
	if err := writeTasteLabelAndLink(*outputPath, encoded, *linkRecordPath, linkBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: write Taste label artifacts: %v\n", err)
		return 2
	}
	ids := make([]string, 0, len(labels.Records))
	for _, record := range labels.Records {
		ids = append(ids, record.RecordID)
	}
	result := tasteLabelBuildOutput{
		Status:                "CREATED_CANDIDATE_LABELS",
		CatalogSnapshotSHA256: labels.CatalogSnapshotSHA256,
		PairSetSHA256:         labels.PairSetSHA256,
		LabelSetSHA256:        labels.ContentSHA256,
		LabelCount:            len(labels.Records),
		LabelRecordIDs:        ids,
		LabelReplayLinkPath:   *linkRecordPath,
		LabelReplayLinkSHA256: hex.EncodeToString(linkDigest[:]),
		TrainingStarted:       false,
	}
	if err := json.NewEncoder(stdout).Encode(result); err != nil {
		fmt.Fprintf(stderr, "mathcase: encode Taste label summary: %v\n", err)
		return 2
	}
	return 0
}

func ensureDistinctNewTasteLabelOutputs(labelPath, linkPath, replayReportPath string) error {
	return ensureDistinctNewTasteOutputs(
		[]namedTastePath{{name: "label output", path: labelPath}, {name: "label replay link", path: linkPath}},
		namedTastePath{name: "replay audit report", path: replayReportPath},
	)
}

type namedTastePath struct {
	name string
	path string
}

func ensureDistinctNewTasteOutputs(outputs []namedTastePath, protected ...namedTastePath) error {
	all := append(append([]namedTastePath(nil), outputs...), protected...)
	canonical := make([]string, len(all))
	for i, candidate := range all {
		if strings.TrimSpace(candidate.path) == "" {
			return fmt.Errorf("%s path is required", candidate.name)
		}
		absolute, err := filepath.Abs(candidate.path)
		if err != nil {
			return fmt.Errorf("resolve %s path: %w", candidate.name, err)
		}
		canonical[i] = filepath.Clean(absolute)
		for j := 0; j < i; j++ {
			if strings.EqualFold(canonical[i], canonical[j]) {
				return fmt.Errorf("%s path must be distinct from %s path", candidate.name, all[j].name)
			}
		}
		if i < len(outputs) {
			if _, err := os.Lstat(canonical[i]); err == nil {
				return fmt.Errorf("%s path already exists; outputs are exclusive", candidate.name)
			} else if !errors.Is(err, os.ErrNotExist) {
				return fmt.Errorf("inspect %s path: %w", candidate.name, err)
			}
		}
	}
	return nil
}

func writeTasteLabelAndLink(labelPath string, labelBytes []byte, linkPath string, linkBytes []byte) error {
	labelInfo, err := writeNewTasteRegularOutput(labelPath, labelBytes)
	if err != nil {
		return fmt.Errorf("write candidate labels: %w", err)
	}
	if _, err := writeNewTasteRegularOutput(linkPath, linkBytes); err != nil {
		if rollbackErr := removeTasteOutputIfSameFile(labelPath, labelInfo); rollbackErr != nil {
			return fmt.Errorf("write label replay link: %w (could not roll back candidate labels: %v)", err, rollbackErr)
		}
		return fmt.Errorf("write label replay link: %w", err)
	}
	return nil
}

func writeNewTasteRegularOutput(path string, data []byte) (os.FileInfo, error) {
	if strings.TrimSpace(path) == "" || len(data) == 0 {
		return nil, errors.New("output path and content are required")
	}
	file, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o600)
	if err != nil {
		return nil, fmt.Errorf("create new file without overwriting: %w", err)
	}
	createdInfo, err := file.Stat()
	if err != nil {
		_ = file.Close()
		return nil, fmt.Errorf("inspect newly created output: %w", err)
	}
	complete := false
	defer func() {
		if !complete {
			_ = file.Close()
			_ = removeTasteOutputIfSameFile(path, createdInfo)
		}
	}()
	written, err := file.Write(data)
	if err != nil {
		return nil, fmt.Errorf("write new file: %w", err)
	}
	if written != len(data) {
		return nil, io.ErrShortWrite
	}
	if err := file.Sync(); err != nil {
		return nil, fmt.Errorf("flush new file: %w", err)
	}
	if err := file.Close(); err != nil {
		return nil, fmt.Errorf("close new file: %w", err)
	}
	complete = true
	return createdInfo, nil
}

func removeTasteOutputIfSameFile(path string, createdInfo os.FileInfo) error {
	if createdInfo == nil {
		return errors.New("created-file identity is unavailable")
	}
	currentInfo, err := os.Lstat(path)
	if errors.Is(err, os.ErrNotExist) {
		return nil
	}
	if err != nil {
		return fmt.Errorf("inspect output for safe rollback: %w", err)
	}
	if currentInfo.Mode()&os.ModeSymlink != 0 || !currentInfo.Mode().IsRegular() || !os.SameFile(createdInfo, currentInfo) {
		return errors.New("output path no longer names the file created by this operation")
	}
	if err := os.Remove(path); err != nil {
		return fmt.Errorf("remove newly created output: %w", err)
	}
	return nil
}

func reopenPassingTasteReplayAudit(
	summary *tasteReplayAuditSummary,
	expectedReportPath, snapshotSHA256, pairSetSHA256 string,
	pairs []taste.MathlibProofPair,
	evidenceFiles map[string][]byte,
) (taste.MathlibLeanReplayAuditReport, string, error) {
	if summary == nil {
		return taste.MathlibLeanReplayAuditReport{}, "", errors.New("replay audit is required")
	}
	if strings.TrimSpace(summary.AuditReportPath) == "" || strings.TrimSpace(expectedReportPath) == "" {
		return taste.MathlibLeanReplayAuditReport{}, "", errors.New("the complete replay-audit flags, including --execution-report, are required")
	}
	expectedAbs, err := filepath.Abs(expectedReportPath)
	if err != nil {
		return taste.MathlibLeanReplayAuditReport{}, "", fmt.Errorf("resolve expected replay audit path: %w", err)
	}
	reportedAbs, err := filepath.Abs(summary.AuditReportPath)
	if err != nil {
		return taste.MathlibLeanReplayAuditReport{}, "", fmt.Errorf("resolve replay audit path: %w", err)
	}
	expectedAbs = filepath.Clean(expectedAbs)
	reportedAbs = filepath.Clean(reportedAbs)
	if !strings.EqualFold(expectedAbs, reportedAbs) {
		return taste.MathlibLeanReplayAuditReport{}, "", errors.New("replay audit summary path does not match --execution-report")
	}
	if !isTasteSHA256(summary.AuditReportSHA256) {
		return taste.MathlibLeanReplayAuditReport{}, "", errors.New("replay audit summary has an invalid SHA-256")
	}
	reportBytes, err := readRegularInput(reportedAbs, "immutable Taste replay audit report", 32<<20)
	if err != nil {
		return taste.MathlibLeanReplayAuditReport{}, "", err
	}
	actualDigest := sha256.Sum256(reportBytes)
	actualSHA256 := hex.EncodeToString(actualDigest[:])
	if actualSHA256 != summary.AuditReportSHA256 {
		return taste.MathlibLeanReplayAuditReport{}, "", errors.New("replay audit report bytes do not match the recorded SHA-256")
	}
	var report taste.MathlibLeanReplayAuditReport
	if err := decodeStrictJSON(reportBytes, &report, "Taste replay audit report"); err != nil {
		return taste.MathlibLeanReplayAuditReport{}, "", err
	}
	if report.SchemaVersion != tasteReplayAuditReportSchema || report.EvidenceClass != tasteReplayAuditEvidenceClass || report.Authenticated {
		return taste.MathlibLeanReplayAuditReport{}, "", errors.New("replay audit report schema or evidence identity is unsupported")
	}
	if report.Status != "PASS" || report.CatalogSnapshotSHA256 != snapshotSHA256 || report.PairSetSHA256 != pairSetSHA256 ||
		report.PairCount != len(pairs) || report.PassCount != len(pairs) || report.FailCount != 0 || report.IncompleteCount != 0 || len(report.Pairs) != len(pairs) {
		return taste.MathlibLeanReplayAuditReport{}, "", errors.New("replay audit must be a complete PASS for this exact M0 snapshot and pairset")
	}
	if summary.Status != report.Status || summary.EvidenceClass != report.EvidenceClass || summary.Authenticated != report.Authenticated ||
		summary.PairCount != report.PairCount || summary.PassCount != report.PassCount || summary.FailCount != report.FailCount || summary.IncompleteCount != report.IncompleteCount {
		return taste.MathlibLeanReplayAuditReport{}, "", errors.New("replay audit summary does not match the immutable report")
	}
	expectedByID := make(map[string]taste.MathlibProofPair, len(pairs))
	for _, pair := range pairs {
		expectedByID[pair.PairID] = pair
	}
	seen := make(map[string]struct{}, len(report.Pairs))
	for _, auditedPair := range report.Pairs {
		pair, ok := expectedByID[auditedPair.PairID]
		if !ok || auditedPair.EvidenceID != pair.SimplificationEvidenceID || auditedPair.Status != "PASS" ||
			auditedPair.RunID == "" || !isTasteSHA256(auditedPair.SourceSHA256) || !isTasteSHA256(auditedPair.ReceiptSHA256) {
			return taste.MathlibLeanReplayAuditReport{}, "", fmt.Errorf("replay audit does not contain an exact passing receipt for pair %q", auditedPair.PairID)
		}
		var evidence taste.MathlibSimplificationEvidence
		if err := json.Unmarshal(evidenceFiles[pair.SimplificationEvidenceID+".json"], &evidence); err != nil || evidence.ReplaySourceSHA256 != auditedPair.SourceSHA256 {
			return taste.MathlibLeanReplayAuditReport{}, "", fmt.Errorf("replay audit source does not match the pinned M3 evidence for pair %q", auditedPair.PairID)
		}
		if _, duplicate := seen[auditedPair.PairID]; duplicate {
			return taste.MathlibLeanReplayAuditReport{}, "", fmt.Errorf("replay audit repeats pair %q", auditedPair.PairID)
		}
		seen[auditedPair.PairID] = struct{}{}
	}
	if len(seen) != len(expectedByID) {
		return taste.MathlibLeanReplayAuditReport{}, "", errors.New("replay audit pair identities do not match the requested pairset")
	}
	receiptIDs := make(map[string]string, len(report.Receipts))
	for _, receipt := range report.Receipts {
		if receipt.RunID == "" || receipt.ReceiptPath == "" || receipt.ExecutionOutcome == "" || !isTasteSHA256(receipt.SourceSHA256) || !isTasteSHA256(receipt.ReceiptSHA256) {
			return taste.MathlibLeanReplayAuditReport{}, "", errors.New("replay audit contains an invalid process receipt digest")
		}
		key := receipt.RunID + "\x00" + receipt.SourceSHA256 + "\x00" + receipt.ReceiptSHA256
		if _, duplicate := receiptIDs[key]; duplicate {
			return taste.MathlibLeanReplayAuditReport{}, "", errors.New("replay audit repeats a process receipt digest")
		}
		receiptIDs[key] = receipt.ExecutionOutcome
	}
	for _, auditedPair := range report.Pairs {
		key := auditedPair.RunID + "\x00" + auditedPair.SourceSHA256 + "\x00" + auditedPair.ReceiptSHA256
		if outcome, ok := receiptIDs[key]; !ok || outcome != auditedPair.ExecutionOutcome {
			return taste.MathlibLeanReplayAuditReport{}, "", fmt.Errorf("replay audit pair %q is not linked to a process receipt digest", auditedPair.PairID)
		}
	}
	return report, reportedAbs, nil
}

func loadAndValidateTasteLabelReplayLink(
	linkPath, snapshotPath, pairSetPath, labelsPath string,
	snapshot catalog.Snapshot,
	dataset taste.MathlibTastePairLabelDataset,
	pairs []taste.MathlibProofPair,
	evidenceFiles map[string][]byte,
) (tasteLabelReplayLinkRecord, string, taste.MathlibLeanReplayAuditReport, string, error) {
	linkBytes, err := readRegularInput(linkPath, "Taste label replay link", 1<<20)
	if err != nil {
		return tasteLabelReplayLinkRecord{}, "", taste.MathlibLeanReplayAuditReport{}, "", err
	}
	var link tasteLabelReplayLinkRecord
	if err := decodeStrictJSON(linkBytes, &link, "Taste label replay link"); err != nil {
		return tasteLabelReplayLinkRecord{}, "", taste.MathlibLeanReplayAuditReport{}, "", err
	}
	if link.SchemaVersion != tasteLabelReplayLinkSchema || link.EvidenceClass != tasteReplayAuditEvidenceClass || link.Authenticated || link.TrainingReady {
		return tasteLabelReplayLinkRecord{}, "", taste.MathlibLeanReplayAuditReport{}, "", errors.New("link schema, evidence identity, or readiness claim is unsupported")
	}
	snapshotAbs, err := filepath.Abs(snapshotPath)
	if err != nil {
		return tasteLabelReplayLinkRecord{}, "", taste.MathlibLeanReplayAuditReport{}, "", fmt.Errorf("resolve M0 snapshot path: %w", err)
	}
	labelsAbs, err := filepath.Abs(labelsPath)
	if err != nil {
		return tasteLabelReplayLinkRecord{}, "", taste.MathlibLeanReplayAuditReport{}, "", fmt.Errorf("resolve label-set path: %w", err)
	}
	if !strings.EqualFold(filepath.Clean(link.CatalogSnapshotPath), filepath.Clean(snapshotAbs)) ||
		!strings.EqualFold(filepath.Clean(link.LabelSetPath), filepath.Clean(labelsAbs)) {
		return tasteLabelReplayLinkRecord{}, "", taste.MathlibLeanReplayAuditReport{}, "", errors.New("link M0 or label path does not match the validated input")
	}
	if strings.TrimSpace(pairSetPath) != "" {
		pairSetAbs, err := filepath.Abs(pairSetPath)
		if err != nil {
			return tasteLabelReplayLinkRecord{}, "", taste.MathlibLeanReplayAuditReport{}, "", fmt.Errorf("resolve proof-pair path: %w", err)
		}
		if !strings.EqualFold(filepath.Clean(link.PairSetPath), filepath.Clean(pairSetAbs)) {
			return tasteLabelReplayLinkRecord{}, "", taste.MathlibLeanReplayAuditReport{}, "", errors.New("link proof-pair path does not match the reopened pairset")
		}
	}
	if !filepath.IsAbs(link.PairSetPath) || !filepath.IsAbs(link.ReplayAuditPath) || !isTasteSHA256(link.CatalogSnapshotSHA256) || !isTasteSHA256(link.PairSetSHA256) ||
		!isTasteSHA256(link.LabelSetSHA256) || !isTasteSHA256(link.ReplayAuditSHA256) ||
		link.CatalogSnapshotSHA256 != snapshot.ContentSHA256 || link.PairSetSHA256 != dataset.PairSetSHA256 ||
		link.LabelSetSHA256 != dataset.ContentSHA256 || link.LabelCount != len(dataset.Records) ||
		link.PairCount != len(pairs) || link.LabelCount != len(pairs) {
		return tasteLabelReplayLinkRecord{}, "", taste.MathlibLeanReplayAuditReport{}, "", errors.New("link digests or counts do not match the validated M0, pairset, and labels")
	}
	report, reportPath, err := reopenPassingTasteReplayAudit(
		&tasteReplayAuditSummary{
			Status:        reportStatusFromFile(link.ReplayAuditPath, link.ReplayAuditSHA256),
			EvidenceClass: tasteReplayAuditEvidenceClass, Authenticated: false,
			PairCount: link.PairCount, PassCount: link.PairCount, AuditReportPath: link.ReplayAuditPath,
			AuditReportSHA256: link.ReplayAuditSHA256,
		}, link.ReplayAuditPath, snapshot.ContentSHA256, dataset.PairSetSHA256, pairs, evidenceFiles,
	)
	if err != nil {
		return tasteLabelReplayLinkRecord{}, "", taste.MathlibLeanReplayAuditReport{}, "", err
	}
	linkDigest := sha256.Sum256(linkBytes)
	return link, hex.EncodeToString(linkDigest[:]), report, reportPath, nil
}

// reportStatusFromFile intentionally does not trust the link record's claims;
// it only lets the common reopener compare the decoded report to its bytes.
func reportStatusFromFile(path, expectedSHA256 string) string {
	data, err := readRegularInput(path, "immutable Taste replay audit report", 32<<20)
	if err != nil || !isTasteSHA256(expectedSHA256) {
		return ""
	}
	digest := sha256.Sum256(data)
	if hex.EncodeToString(digest[:]) != expectedSHA256 {
		return ""
	}
	var report taste.MathlibLeanReplayAuditReport
	if err := decodeStrictJSON(data, &report, "Taste replay audit report"); err != nil {
		return ""
	}
	return report.Status
}

func isTasteSHA256(value string) bool {
	decoded, err := hex.DecodeString(value)
	return err == nil && len(decoded) == sha256.Size && hex.EncodeToString(decoded) == value
}

func newTasteLabelReplayLinkRecord(
	snapshotPath, pairSetPath, labelSetPath string,
	snapshot catalog.Snapshot,
	pairSetSHA256, labelSetSHA256 string,
	labelCount int,
	report taste.MathlibLeanReplayAuditReport,
	reportPath, reportSHA256 string,
) (tasteLabelReplayLinkRecord, error) {
	paths := []string{snapshotPath, pairSetPath, labelSetPath, reportPath}
	abs := make([]string, len(paths))
	for i, path := range paths {
		resolved, err := filepath.Abs(path)
		if err != nil {
			return tasteLabelReplayLinkRecord{}, fmt.Errorf("resolve replay-link path %q: %w", path, err)
		}
		abs[i] = filepath.Clean(resolved)
	}
	return tasteLabelReplayLinkRecord{
		SchemaVersion: tasteLabelReplayLinkSchema, EvidenceClass: report.EvidenceClass, Authenticated: report.Authenticated,
		CatalogSnapshotPath: abs[0], CatalogSnapshotSHA256: snapshot.ContentSHA256,
		PairSetPath: abs[1], PairSetSHA256: pairSetSHA256,
		LabelSetPath: abs[2], LabelSetSHA256: labelSetSHA256, LabelCount: labelCount,
		PairCount: report.PairCount, ReplayAuditPath: abs[3], ReplayAuditSHA256: reportSHA256,
		TrainingReady: false,
	}, nil
}

// runTasteLabelsValidate reopens raw M0 source and proof-check evidence for a
// previously written candidate label bundle. It never changes the bundle.
func runTasteLabelsValidate(args []string, stdout, stderr io.Writer) int {
	return runTasteLabelsValidateWithReplayAudit(args, stdout, stderr, auditTasteReplayIfConfigured)
}

func runTasteLabelsValidateWithReplayAudit(args []string, stdout, stderr io.Writer, audit tasteReplayAuditFunc) int {
	flags := flag.NewFlagSet("taste-labels-validate", flag.ContinueOnError)
	flags.SetOutput(stderr)
	snapshotPath := flags.String("snapshot", "", "strict JSON file containing the exact M0 catalog snapshot")
	labelsPath := flags.String("labels", "", "strict JSON file containing the Mathlib taste-pair label dataset")
	pairsPath := flags.String("pairs", "", "optional separately pinned proof-pair dataset; required when writing a replay link for existing labels")
	sourceRoot := flags.String("source-root", "", "local root of the exact pinned Mathlib source files")
	evidenceRoot := flags.String("evidence-root", "", "local evidence root with simplification JSON, replay, and Lean output files")
	linkRecordPath := flags.String("label-replay-link", "", "optional hash-bound label-to-replay link record to reconcile against these labels")
	writeLinkRecordPath := flags.String("write-label-replay-link", "", "write a new exclusive replay-link sidecar for existing labels; requires --pairs and all replay-audit flags")
	replayAuditOptions := addTasteReplayAuditFlags(flags)
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*snapshotPath) == "" || strings.TrimSpace(*labelsPath) == "" ||
		strings.TrimSpace(*sourceRoot) == "" || strings.TrimSpace(*evidenceRoot) == "" {
		fmt.Fprintln(stderr, "taste-labels-validate requires --snapshot FILE, --labels FILE, --source-root DIR, and --evidence-root DIR; positional arguments are not accepted")
		return 2
	}
	inputLinkPath := strings.TrimSpace(*linkRecordPath)
	writeLinkPath := strings.TrimSpace(*writeLinkRecordPath)
	if inputLinkPath != "" && writeLinkPath != "" {
		fmt.Fprintln(stderr, "mathcase: --label-replay-link and --write-label-replay-link are mutually exclusive")
		return 2
	}
	if writeLinkPath != "" && strings.TrimSpace(*pairsPath) == "" {
		fmt.Fprintln(stderr, "mathcase: --write-label-replay-link requires --pairs FILE")
		return 2
	}
	if writeLinkPath != "" && !tasteReplayAuditOptionsComplete(replayAuditOptions) {
		fmt.Fprintln(stderr, "mathcase: --write-label-replay-link requires all six replay-audit flags")
		return 2
	}
	if strings.TrimSpace(*linkRecordPath) != "" && tasteReplayAuditOptionsConfigured(replayAuditOptions) {
		fmt.Fprintln(stderr, "mathcase: use either --label-replay-link or replay-audit flags when validating; link reconciliation reopens its pinned report")
		return 2
	}
	snapshot, err := loadCatalogSnapshot(*snapshotPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load catalog snapshot: %v\n", err)
		return 2
	}
	labelBytes, err := readRegularInput(*labelsPath, "Mathlib taste-pair label dataset", maxTasteLabelDatasetFile)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load Taste labels: %v\n", err)
		return 2
	}
	var dataset taste.MathlibTastePairLabelDataset
	if err := decodeStrictJSON(labelBytes, &dataset, "Mathlib taste-pair label dataset"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode Taste labels: %v\n", err)
		return 2
	}
	pairs := make([]taste.MathlibProofPair, 0, len(dataset.Records))
	for _, record := range dataset.Records {
		pairs = append(pairs, record.Pair)
	}
	var sourceFiles, evidenceFiles map[string][]byte
	if strings.TrimSpace(*pairsPath) != "" {
		pairSnapshot, separatePairSet, pinnedSources, pinnedEvidence, err := loadTastePairEvidence(*snapshotPath, *pairsPath, *sourceRoot, *evidenceRoot)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: reopen M0/pairset/raw evidence: %v\n", err)
			return 2
		}
		separatePairDigest, err := separatePairSet.Digest()
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: digest reopened Taste pairset: %v\n", err)
			return 2
		}
		if pairSnapshot.ContentSHA256 != snapshot.ContentSHA256 || separatePairDigest != dataset.PairSetSHA256 || len(separatePairSet.Pairs) != len(pairs) {
			fmt.Fprintln(stderr, "mathcase: separately reopened M0/pairset does not match the existing label dataset")
			return 2
		}
		pairs = separatePairSet.Pairs
		sourceFiles, evidenceFiles = pinnedSources, pinnedEvidence
	} else {
		sourceFiles, evidenceFiles, err = loadTasteRawEvidence(snapshot, pairs, *sourceRoot, *evidenceRoot)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: load Taste label evidence: %v\n", err)
			return 2
		}
	}
	if err := dataset.Validate(snapshot, sourceFiles, evidenceFiles); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate Taste labels: %v\n", err)
		return 2
	}
	var replayAudit *tasteReplayAuditSummary
	if writeLinkPath != "" {
		if err := ensureDistinctNewTasteOutputs(
			[]namedTastePath{{name: "label replay link", path: writeLinkPath}},
			namedTastePath{name: "replay audit report", path: replayAuditOptions.reportPath},
			namedTastePath{name: "existing labels", path: *labelsPath},
			namedTastePath{name: "M0 snapshot", path: *snapshotPath},
			namedTastePath{name: "proof-pair set", path: *pairsPath},
		); err != nil {
			fmt.Fprintf(stderr, "mathcase: validate new Taste replay-link outputs: %v\n", err)
			return 2
		}
		if audit == nil {
			fmt.Fprintln(stderr, "mathcase: replay auditor is required")
			return 2
		}
		replayAudit, err = audit(replayAuditOptions, snapshot, pairs, sourceFiles, evidenceFiles)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: audit Taste label replay execution: %v\n", err)
			return 2
		}
		pairSetSHA256, err := taste.MathlibProofPairDataset{
			SchemaVersion: "mathcase-taste-proof-pairs-v1", CatalogSnapshotSHA256: snapshot.ContentSHA256, Pairs: pairs,
		}.Digest()
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: digest reopened Taste pairset: %v\n", err)
			return 2
		}
		report, reportPath, err := reopenPassingTasteReplayAudit(
			replayAudit, replayAuditOptions.reportPath, snapshot.ContentSHA256, pairSetSHA256, pairs, evidenceFiles,
		)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: require complete Taste replay audit: %v\n", err)
			return 2
		}
		linkRecord, err := newTasteLabelReplayLinkRecord(*snapshotPath, *pairsPath, *labelsPath, snapshot, dataset.PairSetSHA256, dataset.ContentSHA256, len(dataset.Records), report, reportPath, replayAudit.AuditReportSHA256)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: prepare Taste label replay link: %v\n", err)
			return 2
		}
		linkBytes, err := json.MarshalIndent(linkRecord, "", "  ")
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: encode Taste label replay link: %v\n", err)
			return 2
		}
		linkBytes = append(linkBytes, '\n')
		if err := writeNewRegularOutput(writeLinkPath, linkBytes); err != nil {
			fmt.Fprintf(stderr, "mathcase: write Taste label replay link: %v\n", err)
			return 2
		}
		linkRecordPath = writeLinkRecordPath
	} else if inputLinkPath == "" {
		if audit == nil {
			fmt.Fprintln(stderr, "mathcase: replay auditor is required")
			return 2
		}
		replayAudit, err = audit(replayAuditOptions, snapshot, pairs, sourceFiles, evidenceFiles)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: audit Taste label replay execution: %v\n", err)
			return 2
		}
	}
	output := tasteLabelValidationOutput{
		Status: "CONTENT_VALIDATED_EXECUTION_UNVERIFIED", EvidenceClass: "HASH_AND_CLAIM_CONSISTENCY",
		ExecutionStatus: "NOT_AUDITED", CatalogSnapshotSHA256: dataset.CatalogSnapshotSHA256,
		PairSetSHA256: dataset.PairSetSHA256, LabelSetSHA256: dataset.ContentSHA256,
		LabelCount: len(dataset.Records), TrainingReady: false,
	}
	if strings.TrimSpace(*linkRecordPath) != "" {
		linkRecord, linkDigest, report, reportPath, err := loadAndValidateTasteLabelReplayLink(
			*linkRecordPath, *snapshotPath, *pairsPath, *labelsPath, snapshot, dataset, pairs, evidenceFiles,
		)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: reconcile Taste label replay link: %v\n", err)
			return 2
		}
		output.Status = "EXECUTION_LINK_RECONCILED"
		output.EvidenceClass = report.EvidenceClass
		output.ExecutionStatus = report.Status
		output.ExecutionPairCount = report.PairCount
		output.ExecutionPassCount = report.PassCount
		output.ExecutionFailCount = report.FailCount
		output.ExecutionIncompleteCount = report.IncompleteCount
		output.ExecutionAuditReportPath = reportPath
		output.ExecutionAuditReportSHA256 = linkRecord.ReplayAuditSHA256
		output.LabelReplayLinkPath = *linkRecordPath
		output.LabelReplayLinkSHA256 = linkDigest
		output.TrainingReady = false
	}
	if replayAudit != nil && strings.TrimSpace(*linkRecordPath) == "" {
		output.Status = "PAIR_EXECUTION_AUDITED_LABEL_LINK_MISSING"
		output.EvidenceClass = "HASH_AND_CLAIM_CONSISTENCY"
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
		fmt.Fprintf(stderr, "mathcase: encode Taste label validation summary: %v\n", err)
		return 2
	}
	return 0
}
