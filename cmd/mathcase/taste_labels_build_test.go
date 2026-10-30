package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/taste"
)

type tasteLabelBuildTestFiles struct {
	root          string
	snapshot      catalog.Snapshot
	pairs         taste.MathlibProofPairDataset
	sourceBytes   []byte
	evidenceFiles map[string][]byte
	snapshotPath  string
	pairsPath     string
	sourceRoot    string
	evidenceRoot  string
	labelPath     string
	linkPath      string
	reportPath    string
}

func prepareTasteLabelBuildFiles(t *testing.T) tasteLabelBuildTestFiles {
	t.Helper()
	snapshot, pairs, sourceBytes, evidenceFiles := tasteSplitFixture(t)
	root := t.TempDir()
	snapshotPath := filepath.Join(root, "catalog.snapshot.json")
	pairsPath := filepath.Join(root, "proof-pairs.json")
	for path, value := range map[string]any{snapshotPath: snapshot, pairsPath: pairs} {
		encoded, err := json.Marshal(value)
		if err != nil {
			t.Fatalf("marshal test input %q: %v", path, err)
		}
		if err := os.WriteFile(path, encoded, 0o600); err != nil {
			t.Fatalf("write test input %q: %v", path, err)
		}
	}
	sourceRoot, evidenceRoot := writeTasteEvidenceRoots(t, snapshot, sourceBytes, evidenceFiles)
	return tasteLabelBuildTestFiles{
		root: root, snapshot: snapshot, pairs: pairs, sourceBytes: sourceBytes, evidenceFiles: evidenceFiles,
		snapshotPath: snapshotPath, pairsPath: pairsPath, sourceRoot: sourceRoot, evidenceRoot: evidenceRoot,
		labelPath: filepath.Join(root, "taste-labels.json"), linkPath: filepath.Join(root, "taste-label-replay-link.json"),
		reportPath: filepath.Join(root, "replay-audit.json"),
	}
}

func (f tasteLabelBuildTestFiles) buildArgs(includeReplayFlags bool) []string {
	args := []string{
		"taste-labels-build", "--snapshot", f.snapshotPath, "--pairs", f.pairsPath,
		"--source-root", f.sourceRoot, "--evidence-root", f.evidenceRoot,
		"--output", f.labelPath, "--label-replay-link", f.linkPath,
	}
	if includeReplayFlags {
		args = append(args,
			"--runner-root", filepath.Join(f.root, "runner"),
			"--repository-root", f.root,
			"--replay-manifest", "manifest.json",
			"--expected-image-id", "sha256:"+strings.Repeat("a", 64),
			"--expected-mathlib-revision", "synthetic-mathlib-revision",
			"--execution-report", f.reportPath,
		)
	}
	return args
}

func syntheticTasteReplayAuditReport(t *testing.T, snapshotSHA, pairSetSHA string, pairs []taste.MathlibProofPair, evidenceFiles map[string][]byte, status string) taste.MathlibLeanReplayAuditReport {
	t.Helper()
	report := taste.MathlibLeanReplayAuditReport{
		SchemaVersion: tasteReplayAuditReportSchema, EvidenceClass: tasteReplayAuditEvidenceClass, Authenticated: false,
		Status: status, CatalogSnapshotSHA256: snapshotSHA, PairSetSHA256: pairSetSHA,
		ExpectedImageID: "sha256:" + strings.Repeat("a", 64), MathlibRevision: "synthetic-mathlib-revision",
		ManifestSHA256: testSHA256("synthetic-manifest"), RunnerSHA256: testSHA256("synthetic-runner"),
		PreflightSHA256: testSHA256("synthetic-preflight"), RuntimeSHA256: testSHA256("synthetic-runtime"),
		ProgressSHA256: testSHA256("synthetic-progress"), PairCount: len(pairs),
	}
	for _, pair := range pairs {
		var evidence taste.MathlibSimplificationEvidence
		if err := json.Unmarshal(evidenceFiles[pair.SimplificationEvidenceID+".json"], &evidence); err != nil {
			t.Fatalf("decode synthetic simplification evidence: %v", err)
		}
		runID := "synthetic-test-only-run-" + pair.PairID
		receiptSHA := testSHA256("synthetic-test-only-receipt-" + pair.PairID)
		report.Pairs = append(report.Pairs, taste.MathlibLeanReplayPairAudit{
			PairID: pair.PairID, EvidenceID: pair.SimplificationEvidenceID, SourceSHA256: evidence.ReplaySourceSHA256,
			Status: "PASS", ExecutionOutcome: "EXITED_ZERO", RunID: runID, ReceiptSHA256: receiptSHA,
		})
		report.Receipts = append(report.Receipts, taste.MathlibLeanReplayReceiptDigest{
			RunID: runID, SourceSHA256: evidence.ReplaySourceSHA256, ReceiptPath: "synthetic-test-only/" + pair.PairID + ".json",
			ReceiptSHA256: receiptSHA, ExecutionOutcome: "EXITED_ZERO",
		})
	}
	if status == "PASS" {
		report.PassCount = len(pairs)
	} else {
		report.PassCount = len(pairs) - 1
		report.IncompleteCount = 1
		report.Pairs[len(report.Pairs)-1].Status = "INCOMPLETE"
		report.Pairs[len(report.Pairs)-1].ReceiptSHA256 = ""
		report.Pairs[len(report.Pairs)-1].RunID = ""
	}
	return report
}

func writeSyntheticTasteReplaySummary(t *testing.T, options *tasteReplayAuditOptions, report taste.MathlibLeanReplayAuditReport) (*tasteReplayAuditSummary, error) {
	t.Helper()
	encoded, err := json.MarshalIndent(report, "", "  ")
	if err != nil {
		t.Fatalf("marshal synthetic replay report: %v", err)
	}
	encoded = append(encoded, '\n')
	if err := createOrReuseTasteReplayAuditReport(options.reportPath, encoded); err != nil {
		return nil, err
	}
	digest := sha256.Sum256(encoded)
	return &tasteReplayAuditSummary{
		Status: report.Status, EvidenceClass: report.EvidenceClass, Authenticated: false,
		PairCount: report.PairCount, PassCount: report.PassCount, FailCount: report.FailCount,
		IncompleteCount: report.IncompleteCount, AuditReportPath: options.reportPath,
		AuditReportSHA256: hex.EncodeToString(digest[:]),
	}, nil
}

func TestTasteLabelsBuildRejectsContentOnlyAndDoesNotWriteLabels(t *testing.T) {
	files := prepareTasteLabelBuildFiles(t)
	var stdout, stderr bytes.Buffer
	if code := run(files.buildArgs(false), &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("content-only build exit=%d stdout=%q stderr=%q; want refusal before writing", code, stdout.String(), stderr.String())
	}
	assertTasteLabelBuildOutputsAbsent(t, files)
}

func TestTasteLabelsBuildRejectsPartialReplayBeforeWritingLabels(t *testing.T) {
	files := prepareTasteLabelBuildFiles(t)
	var stdout, stderr bytes.Buffer
	callback := func(options *tasteReplayAuditOptions, snapshot catalog.Snapshot, pairs []taste.MathlibProofPair, _, _ map[string][]byte) (*tasteReplayAuditSummary, error) {
		pairSet, err := files.pairs.Digest()
		if err != nil {
			return nil, err
		}
		report := syntheticTasteReplayAuditReport(t, snapshot.ContentSHA256, pairSet, pairs, files.evidenceFiles, "PARTIAL")
		return writeSyntheticTasteReplaySummary(t, options, report)
	}
	if code := runTasteLabelsBuildWithReplayAudit(files.buildArgs(true)[1:], &stdout, &stderr, callback); code != 2 || stdout.Len() != 0 {
		t.Fatalf("partial replay build exit=%d stdout=%q stderr=%q; want refusal before labels", code, stdout.String(), stderr.String())
	}
	assertTasteLabelBuildOutputsAbsent(t, files)
}

func TestTasteLabelsBuildRejectsMismatchedReplayBeforeWritingLabels(t *testing.T) {
	files := prepareTasteLabelBuildFiles(t)
	var stdout, stderr bytes.Buffer
	callback := func(options *tasteReplayAuditOptions, snapshot catalog.Snapshot, pairs []taste.MathlibProofPair, _, _ map[string][]byte) (*tasteReplayAuditSummary, error) {
		pairSet, err := files.pairs.Digest()
		if err != nil {
			return nil, err
		}
		report := syntheticTasteReplayAuditReport(t, snapshot.ContentSHA256, testSHA256("different-pairset"), pairs, files.evidenceFiles, "PASS")
		if report.PairSetSHA256 == pairSet {
			t.Fatal("test setup unexpectedly produced matching pairset digests")
		}
		return writeSyntheticTasteReplaySummary(t, options, report)
	}
	if code := runTasteLabelsBuildWithReplayAudit(files.buildArgs(true)[1:], &stdout, &stderr, callback); code != 2 || stdout.Len() != 0 {
		t.Fatalf("mismatched replay build exit=%d stdout=%q stderr=%q; want refusal before labels", code, stdout.String(), stderr.String())
	}
	assertTasteLabelBuildOutputsAbsent(t, files)
}

func TestTasteLabelsBuildRollsBackLabelsIfLinkPathAppearsAfterPreflight(t *testing.T) {
	files := prepareTasteLabelBuildFiles(t)
	var stdout, stderr bytes.Buffer
	callback := func(options *tasteReplayAuditOptions, snapshot catalog.Snapshot, pairs []taste.MathlibProofPair, _, _ map[string][]byte) (*tasteReplayAuditSummary, error) {
		// Simulate another writer claiming the sidecar after our absence check.
		if err := os.WriteFile(files.linkPath, []byte("other writer\n"), 0o600); err != nil {
			return nil, err
		}
		pairSet, err := files.pairs.Digest()
		if err != nil {
			return nil, err
		}
		return writeSyntheticTasteReplaySummary(t, options, syntheticTasteReplayAuditReport(t, snapshot.ContentSHA256, pairSet, pairs, files.evidenceFiles, "PASS"))
	}
	if code := runTasteLabelsBuildWithReplayAudit(files.buildArgs(true)[1:], &stdout, &stderr, callback); code != 2 || stdout.Len() != 0 {
		t.Fatalf("link collision build exit=%d stdout=%q stderr=%q; want refusal and rollback", code, stdout.String(), stderr.String())
	}
	if _, err := os.Lstat(files.labelPath); !os.IsNotExist(err) {
		t.Fatalf("candidate labels remain after link collision rollback; Lstat error=%v", err)
	}
	linkBytes, err := os.ReadFile(files.linkPath)
	if err != nil || string(linkBytes) != "other writer\n" {
		t.Fatalf("competing link output changed: bytes=%q err=%v", linkBytes, err)
	}
}

func TestTasteLabelsBuildAndValidateSyntheticReplayLinkStayCandidateOnly(t *testing.T) {
	files := prepareTasteLabelBuildFiles(t)
	var stdout, stderr bytes.Buffer
	callback := func(options *tasteReplayAuditOptions, snapshot catalog.Snapshot, pairs []taste.MathlibProofPair, _, _ map[string][]byte) (*tasteReplayAuditSummary, error) {
		pairSet, err := files.pairs.Digest()
		if err != nil {
			return nil, err
		}
		report := syntheticTasteReplayAuditReport(t, snapshot.ContentSHA256, pairSet, pairs, files.evidenceFiles, "PASS")
		return writeSyntheticTasteReplaySummary(t, options, report)
	}
	if code := runTasteLabelsBuildWithReplayAudit(files.buildArgs(true)[1:], &stdout, &stderr, callback); code != 0 {
		t.Fatalf("synthetic acceptance build exit=%d stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
	var buildOutput tasteLabelBuildOutput
	if err := json.Unmarshal(stdout.Bytes(), &buildOutput); err != nil {
		t.Fatalf("decode label build output: %v", err)
	}
	if buildOutput.Status != "CREATED_CANDIDATE_LABELS" || buildOutput.TrainingStarted || buildOutput.LabelCount != len(files.pairs.Pairs) || buildOutput.LabelReplayLinkPath != files.linkPath {
		t.Fatalf("build output = %#v; want candidate labels with link and no training", buildOutput)
	}
	labelBytes, err := os.ReadFile(files.labelPath)
	if err != nil {
		t.Fatalf("read labels: %v", err)
	}
	var labelDataset taste.MathlibTastePairLabelDataset
	if err := json.Unmarshal(labelBytes, &labelDataset); err != nil {
		t.Fatalf("decode labels: %v", err)
	}
	for _, label := range labelDataset.Records {
		if label.Preference.TrainingStatus != taste.TastePairCandidateOnly || label.Preference.HumanRatingStatus != taste.TastePairHumanNotRated {
			t.Fatalf("synthetic replay changed candidate label status: %#v", label.Preference)
		}
	}
	linkBytes, err := os.ReadFile(files.linkPath)
	if err != nil {
		t.Fatalf("read link record: %v", err)
	}
	var link tasteLabelReplayLinkRecord
	if err := json.Unmarshal(linkBytes, &link); err != nil {
		t.Fatalf("decode link record: %v", err)
	}
	if link.TrainingReady || link.Authenticated || link.LabelCount != len(labelDataset.Records) || link.PairCount != len(files.pairs.Pairs) || link.ReplayAuditPath == "" || !isTasteSHA256(link.ReplayAuditSHA256) {
		t.Fatalf("synthetic link record = %#v; want hash-bound, unauthenticated, not training-ready", link)
	}

	validateArgs := []string{
		"taste-labels-validate", "--snapshot", files.snapshotPath, "--labels", files.labelPath,
		"--source-root", files.sourceRoot, "--evidence-root", files.evidenceRoot,
		"--label-replay-link", files.linkPath,
	}
	stdout.Reset()
	stderr.Reset()
	if code := run(validateArgs, &stdout, &stderr); code != 0 {
		t.Fatalf("synthetic link validation exit=%d stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
	var validation tasteLabelValidationOutput
	if err := json.Unmarshal(stdout.Bytes(), &validation); err != nil {
		t.Fatalf("decode link validation output: %v", err)
	}
	if validation.Status != "EXECUTION_LINK_RECONCILED" || validation.ExecutionStatus != "PASS" || validation.TrainingReady || validation.LabelSetSHA256 != link.LabelSetSHA256 || validation.PairSetSHA256 != link.PairSetSHA256 {
		t.Fatalf("link validation = %#v; want reconciled evidence and training_ready=false", validation)
	}

	stdout.Reset()
	stderr.Reset()
	validateArgs = validateArgs[:len(validateArgs)-2]
	if code := run(validateArgs, &stdout, &stderr); code != 0 {
		t.Fatalf("content-only validation exit=%d stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
	if err := json.Unmarshal(stdout.Bytes(), &validation); err != nil {
		t.Fatalf("decode content-only validation output: %v", err)
	}
	if validation.Status != "CONTENT_VALIDATED_EXECUTION_UNVERIFIED" || validation.TrainingReady {
		t.Fatalf("content-only validation = %#v; want explicitly execution-unverified", validation)
	}
}

func TestTasteLabelsValidateRejectsMissingAndTamperedLinks(t *testing.T) {
	files := prepareTasteLabelBuildFiles(t)
	callback := func(options *tasteReplayAuditOptions, snapshot catalog.Snapshot, pairs []taste.MathlibProofPair, _, _ map[string][]byte) (*tasteReplayAuditSummary, error) {
		pairSet, err := files.pairs.Digest()
		if err != nil {
			return nil, err
		}
		return writeSyntheticTasteReplaySummary(t, options, syntheticTasteReplayAuditReport(t, snapshot.ContentSHA256, pairSet, pairs, files.evidenceFiles, "PASS"))
	}
	var stdout, stderr bytes.Buffer
	if code := runTasteLabelsBuildWithReplayAudit(files.buildArgs(true)[1:], &stdout, &stderr, callback); code != 0 {
		t.Fatalf("synthetic setup build exit=%d stderr=%q", code, stderr.String())
	}
	validateArgs := []string{
		"taste-labels-validate", "--snapshot", files.snapshotPath, "--labels", files.labelPath,
		"--source-root", files.sourceRoot, "--evidence-root", files.evidenceRoot,
		"--label-replay-link", filepath.Join(files.root, "missing-link.json"),
	}
	stdout.Reset()
	stderr.Reset()
	if code := run(validateArgs, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("missing link validation exit=%d stdout=%q stderr=%q; want refusal", code, stdout.String(), stderr.String())
	}

	linkBytes, err := os.ReadFile(files.linkPath)
	if err != nil {
		t.Fatal(err)
	}
	var link tasteLabelReplayLinkRecord
	if err := json.Unmarshal(linkBytes, &link); err != nil {
		t.Fatal(err)
	}
	link.LabelSetSHA256 = testSHA256("tampered-label-digest")
	tampered, err := json.Marshal(link)
	if err != nil {
		t.Fatal(err)
	}
	tamperedPath := filepath.Join(files.root, "tampered-link.json")
	if err := os.WriteFile(tamperedPath, tampered, 0o600); err != nil {
		t.Fatal(err)
	}
	validateArgs[len(validateArgs)-1] = tamperedPath
	stdout.Reset()
	stderr.Reset()
	if code := run(validateArgs, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("tampered link validation exit=%d stdout=%q stderr=%q; want refusal", code, stdout.String(), stderr.String())
	}

	if err := os.WriteFile(files.reportPath, []byte("tampered replay report\n"), 0o600); err != nil {
		t.Fatal(err)
	}
	validateArgs[len(validateArgs)-1] = files.linkPath
	stdout.Reset()
	stderr.Reset()
	if code := run(validateArgs, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("tampered report validation exit=%d stdout=%q stderr=%q; want refusal", code, stdout.String(), stderr.String())
	}
}

func TestTasteLabelsValidateReusesExactReportToLinkExistingLabelsWithoutRewritingThem(t *testing.T) {
	files := prepareTasteLabelBuildFiles(t)
	pairs := files.pairs.Pairs
	sourceFiles, evidenceFiles, err := loadTasteRawEvidence(files.snapshot, pairs, files.sourceRoot, files.evidenceRoot)
	if err != nil {
		t.Fatalf("load fixture source and evidence: %v", err)
	}
	labels, err := taste.BuildMathlibTastePairLabels(files.snapshot, pairs, sourceFiles, evidenceFiles)
	if err != nil {
		t.Fatalf("build existing candidate label fixture: %v", err)
	}
	labelBytes, err := json.MarshalIndent(labels, "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	labelBytes = append(labelBytes, '\n')
	if err := writeNewRegularOutput(files.labelPath, labelBytes); err != nil {
		t.Fatal(err)
	}
	before, err := os.ReadFile(files.labelPath)
	if err != nil {
		t.Fatal(err)
	}
	pairSetSHA, err := files.pairs.Digest()
	if err != nil {
		t.Fatal(err)
	}
	expectedReport := syntheticTasteReplayAuditReport(t, files.snapshot.ContentSHA256, pairSetSHA, pairs, files.evidenceFiles, "PASS")
	expectedReportBytes, err := json.MarshalIndent(expectedReport, "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	expectedReportBytes = append(expectedReportBytes, '\n')
	if err := writeNewRegularOutput(files.reportPath, expectedReportBytes); err != nil {
		t.Fatalf("write preexisting exact replay report: %v", err)
	}
	writePath := filepath.Join(files.root, "existing-labels-link.json")
	args := []string{
		"--snapshot", files.snapshotPath, "--labels", files.labelPath, "--pairs", files.pairsPath,
		"--source-root", files.sourceRoot, "--evidence-root", files.evidenceRoot,
		"--write-label-replay-link", writePath,
		"--runner-root", filepath.Join(files.root, "runner"), "--repository-root", files.root,
		"--replay-manifest", "manifest.json", "--expected-image-id", "sha256:" + strings.Repeat("a", 64),
		"--expected-mathlib-revision", "synthetic-mathlib-revision", "--execution-report", files.reportPath,
	}
	callback := func(options *tasteReplayAuditOptions, snapshot catalog.Snapshot, auditedPairs []taste.MathlibProofPair, _, _ map[string][]byte) (*tasteReplayAuditSummary, error) {
		return writeSyntheticTasteReplaySummary(t, options, expectedReport)
	}
	var stdout, stderr bytes.Buffer
	if code := runTasteLabelsValidateWithReplayAudit(args, &stdout, &stderr, callback); code != 0 {
		t.Fatalf("write existing-label link exit=%d stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
	after, err := os.ReadFile(files.labelPath)
	if err != nil || !bytes.Equal(before, after) {
		t.Fatalf("existing label file changed: err=%v", err)
	}
	reusedReportBytes, err := os.ReadFile(files.reportPath)
	if err != nil || !bytes.Equal(expectedReportBytes, reusedReportBytes) {
		t.Fatalf("existing replay report was not preserved byte-for-byte: err=%v", err)
	}
	if _, err := os.Stat(writePath); err != nil {
		t.Fatalf("new link sidecar missing: %v", err)
	}
	var output tasteLabelValidationOutput
	if err := json.Unmarshal(stdout.Bytes(), &output); err != nil {
		t.Fatalf("decode relink result: %v", err)
	}
	if output.Status != "EXECUTION_LINK_RECONCILED" || output.TrainingReady || output.LabelReplayLinkPath != writePath {
		t.Fatalf("relink result = %#v; want reconciled link and training_ready=false", output)
	}
	partialLinkPath := filepath.Join(files.root, "partial-link.json")
	partialReportPath := filepath.Join(files.root, "partial-report.json")
	partialArgs := []string{
		"--snapshot", files.snapshotPath, "--labels", files.labelPath, "--pairs", files.pairsPath,
		"--source-root", files.sourceRoot, "--evidence-root", files.evidenceRoot,
		"--write-label-replay-link", partialLinkPath,
		"--runner-root", filepath.Join(files.root, "runner"), "--repository-root", files.root,
		"--replay-manifest", "manifest.json", "--expected-image-id", "sha256:" + strings.Repeat("a", 64),
		"--expected-mathlib-revision", "synthetic-mathlib-revision", "--execution-report", partialReportPath,
	}
	partialCallback := func(options *tasteReplayAuditOptions, snapshot catalog.Snapshot, auditedPairs []taste.MathlibProofPair, _, _ map[string][]byte) (*tasteReplayAuditSummary, error) {
		pairSet, err := files.pairs.Digest()
		if err != nil {
			return nil, err
		}
		return writeSyntheticTasteReplaySummary(t, options, syntheticTasteReplayAuditReport(t, snapshot.ContentSHA256, pairSet, auditedPairs, files.evidenceFiles, "PARTIAL"))
	}
	var partialStdout, partialStderr bytes.Buffer
	if code := runTasteLabelsValidateWithReplayAudit(partialArgs, &partialStdout, &partialStderr, partialCallback); code != 2 || partialStdout.Len() != 0 {
		t.Fatalf("partial historical relink exit=%d stdout=%q stderr=%q; want refusal", code, partialStdout.String(), partialStderr.String())
	}
	afterPartial, err := os.ReadFile(files.labelPath)
	if err != nil || !bytes.Equal(before, afterPartial) {
		t.Fatalf("partial relink changed historical labels: err=%v", err)
	}
	if _, err := os.Lstat(partialLinkPath); !os.IsNotExist(err) {
		t.Fatalf("partial relink created sidecar; Lstat error=%v", err)
	}

	// A report-only validation must not imply that the existing labels have a durable link.
	args = []string{
		"--snapshot", files.snapshotPath, "--labels", files.labelPath, "--pairs", files.pairsPath,
		"--source-root", files.sourceRoot, "--evidence-root", files.evidenceRoot,
		"--runner-root", filepath.Join(files.root, "runner"), "--repository-root", files.root,
		"--replay-manifest", "manifest.json", "--expected-image-id", "sha256:" + strings.Repeat("a", 64),
		"--expected-mathlib-revision", "synthetic-mathlib-revision", "--execution-report", filepath.Join(files.root, "report-without-link.json"),
	}
	var stdoutWithoutLink, stderrWithoutLink bytes.Buffer
	if code := runTasteLabelsValidateWithReplayAudit(args, &stdoutWithoutLink, &stderrWithoutLink, callback); code != 0 {
		t.Fatalf("report-only validation exit=%d stdout=%q stderr=%q", code, stdoutWithoutLink.String(), stderrWithoutLink.String())
	}
	if err := json.Unmarshal(stdoutWithoutLink.Bytes(), &output); err != nil {
		t.Fatalf("decode report-only validation result: %v", err)
	}
	if output.Status != "PAIR_EXECUTION_AUDITED_LABEL_LINK_MISSING" || output.EvidenceClass != "HASH_AND_CLAIM_CONSISTENCY" || output.TrainingReady {
		t.Fatalf("report-only validation = %#v; want explicit missing-link state", output)
	}
}

func TestTasteLabelsValidateRefusesDifferentExistingReplayReport(t *testing.T) {
	files := prepareTasteLabelBuildFiles(t)
	pairs := files.pairs.Pairs
	sourceFiles, evidenceFiles, err := loadTasteRawEvidence(files.snapshot, pairs, files.sourceRoot, files.evidenceRoot)
	if err != nil {
		t.Fatalf("load fixture source and evidence: %v", err)
	}
	labels, err := taste.BuildMathlibTastePairLabels(files.snapshot, pairs, sourceFiles, evidenceFiles)
	if err != nil {
		t.Fatalf("build existing candidate label fixture: %v", err)
	}
	labelBytes, err := json.MarshalIndent(labels, "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	labelBytes = append(labelBytes, '\n')
	if err := writeNewRegularOutput(files.labelPath, labelBytes); err != nil {
		t.Fatal(err)
	}
	priorReportBytes := []byte("prior immutable report from another batch\n")
	if err := writeNewRegularOutput(files.reportPath, priorReportBytes); err != nil {
		t.Fatal(err)
	}
	linkPath := filepath.Join(files.root, "mismatched-existing-report-link.json")
	args := []string{
		"--snapshot", files.snapshotPath, "--labels", files.labelPath, "--pairs", files.pairsPath,
		"--source-root", files.sourceRoot, "--evidence-root", files.evidenceRoot,
		"--write-label-replay-link", linkPath,
		"--runner-root", filepath.Join(files.root, "runner"), "--repository-root", files.root,
		"--replay-manifest", "manifest.json", "--expected-image-id", "sha256:" + strings.Repeat("a", 64),
		"--expected-mathlib-revision", "synthetic-mathlib-revision", "--execution-report", files.reportPath,
	}
	callback := func(options *tasteReplayAuditOptions, snapshot catalog.Snapshot, auditedPairs []taste.MathlibProofPair, _, _ map[string][]byte) (*tasteReplayAuditSummary, error) {
		pairSetSHA, err := files.pairs.Digest()
		if err != nil {
			return nil, err
		}
		report := syntheticTasteReplayAuditReport(t, snapshot.ContentSHA256, pairSetSHA, auditedPairs, files.evidenceFiles, "PASS")
		return writeSyntheticTasteReplaySummary(t, options, report)
	}
	var stdout, stderr bytes.Buffer
	if code := runTasteLabelsValidateWithReplayAudit(args, &stdout, &stderr, callback); code != 2 || stdout.Len() != 0 {
		t.Fatalf("mismatched existing report relink exit=%d stdout=%q stderr=%q; want refusal", code, stdout.String(), stderr.String())
	}
	if _, err := os.Lstat(linkPath); !os.IsNotExist(err) {
		t.Fatalf("mismatched existing report created a sidecar; Lstat error=%v", err)
	}
	actualReportBytes, err := os.ReadFile(files.reportPath)
	if err != nil || !bytes.Equal(priorReportBytes, actualReportBytes) {
		t.Fatalf("mismatched report was modified: err=%v", err)
	}
	actualLabelBytes, err := os.ReadFile(files.labelPath)
	if err != nil || !bytes.Equal(labelBytes, actualLabelBytes) {
		t.Fatalf("existing labels were modified after report mismatch: err=%v", err)
	}
}

func assertTasteLabelBuildOutputsAbsent(t *testing.T, files tasteLabelBuildTestFiles) {
	t.Helper()
	for _, path := range []string{files.labelPath, files.linkPath} {
		if _, err := os.Lstat(path); !os.IsNotExist(err) {
			t.Fatalf("unexpected label output %q after refusal; Lstat error=%v", path, err)
		}
	}
}
