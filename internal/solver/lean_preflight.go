package solver

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strings"
	"sync"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	leanRuntimePreflightSchema   = "mathcase-lean-runtime-preflight-v1"
	leanRuntimePreflightFile     = "MathCaseRuntimePreflight.lean"
	leanRuntimePreflightTTL      = 10 * time.Minute
	leanRuntimeImportFloor       = 5 * time.Minute
	leanRuntimeCacheIndexSchema  = "mathcase-lean-runtime-preflight-cache-v1"
	leanStatementReadinessSchema = "mathcase-lean-statement-readiness-index-v1"
)

// LeanRuntimePreflightReceipt records a no-provider check of the exact pinned
// Lean image and import closure that will verify a cleared problem. It checks
// the runtime only; it is not a solver attempt or a result for the problem.
type LeanRuntimePreflightReceipt struct {
	SchemaVersion          string                 `json:"schema_version"`
	EvidenceID             string                 `json:"evidence_id"`
	RunID                  string                 `json:"run_id"`
	ProblemID              string                 `json:"problem_id"`
	ProblemStatementSHA256 string                 `json:"problem_statement_sha256"`
	RecordedAtUTC          time.Time              `json:"recorded_at_utc"`
	StartedAtUTC           time.Time              `json:"started_at_utc"`
	FinishedAtUTC          time.Time              `json:"finished_at_utc"`
	SnapshotID             string                 `json:"snapshot_id"`
	SnapshotManifestPath   string                 `json:"snapshot_manifest_path"`
	SnapshotManifestSHA256 string                 `json:"snapshot_manifest_sha256"`
	ProjectSnapshotSHA256  string                 `json:"project_snapshot_sha256"`
	ProjectSnapshot        LeanProjectSnapshot    `json:"project_snapshot"`
	SnapshotImageCheck     LeanSnapshotImageCheck `json:"snapshot_image_check"`
	Image                  string                 `json:"image"`
	Toolchain              string                 `json:"toolchain"`
	ExpectedToolchain      string                 `json:"expected_toolchain"`
	Imports                []string               `json:"imports"`
	GeneratedSource        string                 `json:"generated_source"`
	GeneratedSourceSHA256  string                 `json:"generated_source_sha256"`
	LeanVersion            string                 `json:"lean_version,omitempty"`
	LeanVersionCheck       LeanVersionCheck       `json:"lean_version_check"`
	Status                 string                 `json:"status"`
	Summary                string                 `json:"summary"`
	FailureReason          string                 `json:"failure_reason,omitempty"`
	SandboxExecution       LeanSandboxExecution   `json:"sandbox_execution"`
	StdoutSHA256           string                 `json:"stdout_sha256,omitempty"`
	StderrSHA256           string                 `json:"stderr_sha256,omitempty"`
	StdoutCapturedSHA256   string                 `json:"stdout_captured_sha256,omitempty"`
	StderrCapturedSHA256   string                 `json:"stderr_captured_sha256,omitempty"`
	StdoutExcerpt          string                 `json:"stdout_excerpt"`
	StderrExcerpt          string                 `json:"stderr_excerpt"`
	StdoutBytesObserved    int64                  `json:"stdout_bytes_observed"`
	StderrBytesObserved    int64                  `json:"stderr_bytes_observed"`
	StdoutBytesCaptured    int64                  `json:"stdout_bytes_captured"`
	StderrBytesCaptured    int64                  `json:"stderr_bytes_captured"`
	OutputLimitBytes       int64                  `json:"output_limit_bytes"`
	OutputTruncated        bool                   `json:"output_truncated"`
}

type leanRuntimePreflightEvidence struct {
	EvidenceID    string
	ReceiptSHA256 string
	ReceiptPath   string
	ManifestSHA   string
	Image         string
	Docker        string
	Imports       string
	ProblemID     string
	StatementSHA  string
	Toolchain     string
	Expected      string
	PreparedAtUTC time.Time
	VersionCheck  LeanVersionCheck
}

type leanRuntimePreflightCacheIndex struct {
	SchemaVersion  string    `json:"schema_version"`
	CacheKeySHA256 string    `json:"cache_key_sha256"`
	EvidenceID     string    `json:"evidence_id"`
	ReceiptSHA256  string    `json:"receipt_sha256"`
	PreparedAtUTC  time.Time `json:"prepared_at_utc"`
}

var leanRuntimePreflightCache = struct {
	sync.Mutex
	entries map[string]leanRuntimePreflightEvidence
}{entries: make(map[string]leanRuntimePreflightEvidence)}

// Preflight verifies the exact image and import closure before Cascade may
// reserve or spend on an external proposal. Its successful runtime-version
// evidence can be reused briefly by Verify; candidate proofs still run and are
// independently kernel- and axiom-checked every time.
func (v LeanVerifier) Preflight(ctx context.Context, runID string, problem domain.MathProblem) error {
	if ctx == nil {
		return errors.New("lean verifier: preflight context is required")
	}
	if err := state.ValidateIdentifier("run ID", runID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("problem ID", problem.ID); err != nil {
		return err
	}
	if strings.TrimSpace(problem.Statement) == "" || strings.TrimSpace(problem.LeanStatement) == "" {
		return errors.New("lean verifier: preflight requires the exact cleared problem statement")
	}
	imports, err := validateLeanImports(v.Imports)
	if err != nil {
		return err
	}
	statementHash, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		return fmt.Errorf("lean verifier: hash preflight problem statement: %w", err)
	}
	now := v.Now
	if now == nil {
		now = time.Now
	}
	evidenceID, err := newLeanEvidenceID()
	if err != nil {
		return fmt.Errorf("lean verifier: create preflight evidence ID: %w", err)
	}
	started := now().UTC()
	receipt := LeanRuntimePreflightReceipt{
		SchemaVersion: leanRuntimePreflightSchema, EvidenceID: evidenceID, RunID: runID,
		ProblemID: problem.ID, ProblemStatementSHA256: statementHash,
		StartedAtUTC: started, RecordedAtUTC: started, Imports: imports,
		Status: "INCOMPLETE", Summary: "Pinned Lean runtime and exact imports are being checked before provider dispatch.",
	}
	complete := func(failure error) error {
		receipt.FinishedAtUTC = now().UTC()
		if receipt.FinishedAtUTC.Before(receipt.StartedAtUTC) {
			receipt.FinishedAtUTC = receipt.StartedAtUTC
		}
		receipt.RecordedAtUTC = receipt.FinishedAtUTC
		if failure != nil {
			receipt.FailureReason = failure.Error()
			if receipt.Status == "INCOMPLETE" {
				receipt.Status = "FAILED"
				receipt.Summary = "Pinned Lean preflight failed; no provider call was made."
			}
		}
		if failure == nil {
			if validationErr := ValidateLeanRuntimePreflightReceipt(receipt); validationErr != nil {
				failure = fmt.Errorf("validate completed runtime preflight: %w", validationErr)
				receipt.Status = "RECEIPT_VALIDATION_FAILED"
				receipt.Summary = "The runtime preflight did not reconcile to its exact inputs and execution; no provider call was made."
				receipt.FailureReason = failure.Error()
			}
		}
		path, receiptSHA, writeErr := v.writeLeanRuntimePreflightReceipt(receipt)
		if writeErr != nil {
			if failure != nil {
				return fmt.Errorf("%v; preserve runtime preflight receipt: %w", failure, writeErr)
			}
			return fmt.Errorf("preserve runtime preflight receipt: %w", writeErr)
		}
		if failure != nil {
			return fmt.Errorf("%w (receipt %s)", failure, path)
		}
		key := leanRuntimePreflightCacheKey(v.ReceiptRoot, receipt.Image, receipt.SnapshotManifestSHA256, receipt.SnapshotManifestPath, receipt.SandboxExecution.DockerExecutable, receipt.Imports, receipt.ProblemID, receipt.ProblemStatementSHA256, receipt.Toolchain, receipt.ExpectedToolchain)
		evidence := leanRuntimePreflightEvidence{
			EvidenceID: receipt.EvidenceID, ReceiptSHA256: receiptSHA, ReceiptPath: path,
			ManifestSHA: receipt.SnapshotManifestSHA256, Image: receipt.Image,
			Docker: receipt.SandboxExecution.DockerExecutable, Imports: strings.Join(receipt.Imports, "\x00"),
			ProblemID: receipt.ProblemID, StatementSHA: receipt.ProblemStatementSHA256,
			Toolchain: receipt.Toolchain, Expected: receipt.ExpectedToolchain,
			PreparedAtUTC: receipt.FinishedAtUTC, VersionCheck: receipt.LeanVersionCheck,
		}
		storeLeanRuntimePreflightEvidence(key, evidence)
		// The cache index is an optimization. The append-only receipt above is
		// authoritative; an index write failure only causes a later cold check.
		_ = writeLeanRuntimePreflightCacheIndex(v.ReceiptRoot, key, evidence)
		return nil
	}

	runtime, err := v.loadQualifiedSnapshot(imports)
	if err != nil {
		return complete(fmt.Errorf("load qualified Lean snapshot: %w", err))
	}
	receipt.SnapshotID = runtime.Manifest.SnapshotID
	receipt.SnapshotManifestPath = runtime.ManifestPath
	receipt.SnapshotManifestSHA256 = runtime.ManifestSHA256
	receipt.ProjectSnapshotSHA256 = runtime.Manifest.ProjectSnapshot.SHA256
	receipt.ProjectSnapshot = runtime.Manifest.ProjectSnapshot
	receipt.Image = runtime.Image
	receipt.Toolchain = runtime.Manifest.Toolchain
	receipt.ExpectedToolchain = expectedLeanToolchain(v.ExpectedToolchain)
	runtime.ImageCheck, err = inspectLeanSnapshotImage(ctx, runtime.Docker, runtime.Image, runtime.Manifest)
	receipt.SnapshotImageCheck = runtime.ImageCheck
	if err != nil {
		return complete(fmt.Errorf("pinned snapshot image preflight: %w", err))
	}
	expected := expectedLeanToolchain(v.ExpectedToolchain)
	key := leanRuntimePreflightCacheKey(v.ReceiptRoot, runtime.Image, runtime.ManifestSHA256, runtime.ManifestPath, runtime.Docker, imports, problem.ID, statementHash, runtime.Manifest.Toolchain, expected)
	cacheNow := now().UTC()
	if cached, ok := takeLeanRuntimePreflightEvidence(key, cacheNow); ok && leanRuntimePreflightEvidenceReceiptMatches(cached, runtime, imports, problem, statementHash, runtime.Manifest.Toolchain, expected) {
		return nil
	}
	if cached, ok := readLeanRuntimePreflightEvidence(v.ReceiptRoot, key, cacheNow, runtime, imports, problem, statementHash, runtime.Manifest.Toolchain, expected); ok {
		storeLeanRuntimePreflightEvidence(key, cached)
		return nil
	}
	// A successfully elaborated exact statement already exercised its imports
	// and compiler. Preserve its actual receipt type instead of inventing an
	// import-smoke execution that did not occur.
	if _, ok := readLeanStatementReadiness(ctx, v.ReceiptRoot, key, cacheNow, runtime, imports, problem, statementHash, expected); ok {
		return nil
	}
	removeLeanRuntimePreflightCacheIndex(v.ReceiptRoot, key)
	timeout := v.Timeout
	if timeout <= 0 {
		timeout = defaultLeanTimeout
	}
	maxOutput := v.MaxOutputBytes
	if maxOutput <= 0 || maxOutput > defaultOutputLimit {
		maxOutput = defaultOutputLimit
	}
	versionCtx, cancelVersion := newLeanPhaseContext(ctx, timeout)
	receipt.LeanVersionCheck, err = runLeanSnapshotVersion(versionCtx, runtime, maxOutput)
	cancelVersion()
	if err != nil {
		receipt.LeanVersion = receipt.LeanVersionCheck.Version
		receipt.Status = "VERSION_PROBE_FAILED"
		receipt.Summary = "Pinned compiler identity could not be confirmed; no provider call was made."
		return complete(fmt.Errorf("Lean compiler version probe: %w", err))
	}
	receipt.LeanVersion = receipt.LeanVersionCheck.Version

	source := generatedLeanRuntimePreflightSource(imports)
	if len(source) > maxLeanTermBytes {
		return complete(errors.New("generated Lean runtime preflight exceeds its bounded input size"))
	}
	workspace, err := v.makeWorkspace()
	if err != nil {
		return complete(fmt.Errorf("create Lean runtime preflight workspace: %w", err))
	}
	defer os.RemoveAll(workspace)
	candidatePath, err := writeLeanCandidateInput(workspace, leanRuntimePreflightFile, []byte(source))
	if err != nil {
		return complete(fmt.Errorf("stage read-only Lean runtime preflight input: %w", err))
	}
	sourceHash := sha256.Sum256([]byte(source))
	receipt.GeneratedSource = source
	receipt.GeneratedSourceSHA256 = hex.EncodeToString(sourceHash[:])
	proofCtx, cancelProof := newLeanPhaseContext(ctx, leanRuntimePreflightImportBudget(timeout))
	stdout, stderr, runErr, execution := runLeanSnapshotCommand(proofCtx, runtime, candidatePath, leanRuntimePreflightFile, receipt.GeneratedSourceSHA256, "", "", []string{"--root=/mathcase/input", "/mathcase/input/" + leanRuntimePreflightFile}, maxOutput)
	proofContextErr := proofCtx.Err()
	cancelProof()
	receipt.SandboxExecution = execution
	receipt.OutputLimitBytes = int64(maxOutput)
	receipt.OutputTruncated = stdout.truncated || stderr.truncated
	receipt.StdoutExcerpt = strings.ToValidUTF8(stdout.String(), "\uFFFD")
	receipt.StderrExcerpt = strings.ToValidUTF8(stderr.String(), "\uFFFD")
	receipt.StdoutBytesObserved = stdout.total
	receipt.StderrBytesObserved = stderr.total
	receipt.StdoutBytesCaptured = int64(stdout.buffer.Len())
	receipt.StderrBytesCaptured = int64(stderr.buffer.Len())
	if receipt.OutputTruncated {
		receipt.StdoutCapturedSHA256 = stdout.CapturedSHA256()
		receipt.StderrCapturedSHA256 = stderr.CapturedSHA256()
	} else {
		receipt.StdoutSHA256 = stdout.SHA256()
		receipt.StderrSHA256 = stderr.SHA256()
	}
	if proofContextErr != nil {
		runErr = proofContextErr
	}
	if runErr != nil {
		receipt.Status = "IMPORT_CHECK_FAILED"
		receipt.Summary = "The exact Lean import closure did not finish cleanly; no provider call was made."
		return complete(fmt.Errorf("Lean exact-import check: %w", runErr))
	}
	if receipt.OutputTruncated {
		receipt.Status = "OUTPUT_LIMIT"
		receipt.Summary = "Lean runtime preflight output exceeded its bounded capture; no provider call was made."
		return complete(errors.New("Lean runtime preflight output exceeded the capture limit"))
	}
	if execution.ExitCode == nil || *execution.ExitCode != 0 {
		receipt.Status = "IMPORT_CHECK_FAILED"
		receipt.Summary = "The exact Lean import closure returned a nonzero exit; no provider call was made."
		return complete(errors.New("Lean exact-import check returned a nonzero exit"))
	}
	receipt.Status = "PASSED"
	receipt.Summary = "Pinned Lean version and exact import closure are ready; every proposed proof will still receive its own independent check."
	return complete(nil)
}

// leanRuntimePreflightImportBudget allows a cold, exact Mathlib import closure
// more time than a single candidate compile. It remains bounded and inherits
// the caller's cancellation or deadline through newLeanPhaseContext.
func leanRuntimePreflightImportBudget(candidateTimeout time.Duration) time.Duration {
	if candidateTimeout < leanRuntimeImportFloor {
		return leanRuntimeImportFloor
	}
	return candidateTimeout
}

func generatedLeanRuntimePreflightSource(imports []string) string {
	var source strings.Builder
	for _, importPath := range imports {
		fmt.Fprintf(&source, "import %s\n", importPath)
	}
	if len(imports) > 0 {
		source.WriteByte('\n')
	}
	source.WriteString("example : True := by trivial\n")
	return source.String()
}

func (v LeanVerifier) writeLeanRuntimePreflightReceipt(receipt LeanRuntimePreflightReceipt) (string, string, error) {
	if v.ReceiptRoot == "" {
		return "", "", errors.New("lean verifier: durable preflight receipt root is required")
	}
	root, err := filepath.Abs(v.ReceiptRoot)
	if err != nil {
		return "", "", fmt.Errorf("lean verifier: resolve preflight receipt root: %w", err)
	}
	if err := os.MkdirAll(root, 0o700); err != nil {
		return "", "", fmt.Errorf("lean verifier: create preflight receipt root: %w", err)
	}
	data, err := json.MarshalIndent(receipt, "", "  ")
	if err != nil {
		return "", "", fmt.Errorf("lean verifier: encode preflight receipt: %w", err)
	}
	data = append(data, '\n')
	path := filepath.Join(root, receipt.EvidenceID+".json")
	file, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o600)
	if err != nil {
		return "", "", fmt.Errorf("lean verifier: create append-only preflight receipt: %w", err)
	}
	if _, err := file.Write(data); err != nil {
		_ = file.Close()
		return "", "", fmt.Errorf("lean verifier: write preflight receipt: %w", err)
	}
	if err := file.Sync(); err != nil {
		_ = file.Close()
		return "", "", fmt.Errorf("lean verifier: flush preflight receipt: %w", err)
	}
	if err := file.Close(); err != nil {
		return "", "", fmt.Errorf("lean verifier: close preflight receipt: %w", err)
	}
	digest := sha256.Sum256(data)
	return path, hex.EncodeToString(digest[:]), nil
}

func leanRuntimePreflightCacheKey(receiptRoot, image, manifestSHA, manifestPath, docker string, imports []string, problemID, statementSHA, toolchain, expected string) string {
	parts := []string{filepath.Clean(receiptRoot), image, manifestSHA, filepath.Clean(manifestPath), docker, strings.Join(imports, "\x00"), problemID, statementSHA, toolchain, expected}
	return strings.Join(parts, "\x01")
}

func leanRuntimePreflightCacheIndexPath(receiptRoot, key string) (string, error) {
	root, err := filepath.Abs(receiptRoot)
	if err != nil {
		return "", fmt.Errorf("resolve Lean runtime preflight receipt root: %w", err)
	}
	keySHA := sha256.Sum256([]byte(key))
	return filepath.Join(root, ".preflight-cache", hex.EncodeToString(keySHA[:])+".json"), nil
}

func writeLeanRuntimePreflightCacheIndex(receiptRoot, key string, evidence leanRuntimePreflightEvidence) error {
	path, err := leanRuntimePreflightCacheIndexPath(receiptRoot, key)
	if err != nil {
		return err
	}
	directory := filepath.Dir(path)
	if err := os.MkdirAll(directory, 0o700); err != nil {
		return fmt.Errorf("create Lean runtime preflight cache directory: %w", err)
	}
	keySHA := sha256.Sum256([]byte(key))
	index := leanRuntimePreflightCacheIndex{
		SchemaVersion:  leanRuntimeCacheIndexSchema,
		CacheKeySHA256: hex.EncodeToString(keySHA[:]),
		EvidenceID:     evidence.EvidenceID,
		ReceiptSHA256:  evidence.ReceiptSHA256,
		PreparedAtUTC:  evidence.PreparedAtUTC,
	}
	data, err := json.MarshalIndent(index, "", "  ")
	if err != nil {
		return fmt.Errorf("encode Lean runtime preflight cache index: %w", err)
	}
	data = append(data, '\n')
	file, err := os.CreateTemp(directory, ".preflight-cache-*.tmp")
	if err != nil {
		return fmt.Errorf("create Lean runtime preflight cache index: %w", err)
	}
	temporary := file.Name()
	defer os.Remove(temporary)
	if err := file.Chmod(0o600); err != nil {
		_ = file.Close()
		return fmt.Errorf("secure Lean runtime preflight cache index: %w", err)
	}
	if _, err := file.Write(data); err != nil {
		_ = file.Close()
		return fmt.Errorf("write Lean runtime preflight cache index: %w", err)
	}
	if err := file.Sync(); err != nil {
		_ = file.Close()
		return fmt.Errorf("flush Lean runtime preflight cache index: %w", err)
	}
	if err := file.Close(); err != nil {
		return fmt.Errorf("close Lean runtime preflight cache index: %w", err)
	}
	if err := os.Rename(temporary, path); err != nil {
		return fmt.Errorf("publish Lean runtime preflight cache index: %w", err)
	}
	return nil
}

func removeLeanRuntimePreflightCacheIndex(receiptRoot, key string) {
	path, err := leanRuntimePreflightCacheIndexPath(receiptRoot, key)
	if err == nil {
		_ = os.Remove(path)
	}
}

func readLeanRuntimePreflightEvidence(receiptRoot, key string, now time.Time, runtime leanSnapshotRuntime, imports []string, problem domain.MathProblem, statementSHA, toolchain, expected string) (leanRuntimePreflightEvidence, bool) {
	indexPath, err := leanRuntimePreflightCacheIndexPath(receiptRoot, key)
	if err != nil {
		return leanRuntimePreflightEvidence{}, false
	}
	indexBytes, err := os.ReadFile(indexPath)
	if err != nil {
		return leanRuntimePreflightEvidence{}, false
	}
	var index leanRuntimePreflightCacheIndex
	if err := json.Unmarshal(indexBytes, &index); err != nil || index.SchemaVersion != leanRuntimeCacheIndexSchema {
		return leanRuntimePreflightEvidence{}, false
	}
	keySHA := sha256.Sum256([]byte(key))
	if index.CacheKeySHA256 != hex.EncodeToString(keySHA[:]) || len(index.ReceiptSHA256) != 64 || !isLowerHex(index.ReceiptSHA256) ||
		state.ValidateIdentifier("Lean runtime preflight evidence ID", index.EvidenceID) != nil || !leanRuntimePreflightTimestampFresh(index.PreparedAtUTC, now) {
		return leanRuntimePreflightEvidence{}, false
	}
	root, err := filepath.Abs(receiptRoot)
	if err != nil {
		return leanRuntimePreflightEvidence{}, false
	}
	receiptPath := filepath.Join(root, index.EvidenceID+".json")
	receiptBytes, err := os.ReadFile(receiptPath)
	if err != nil {
		return leanRuntimePreflightEvidence{}, false
	}
	receiptSHA := sha256.Sum256(receiptBytes)
	if hex.EncodeToString(receiptSHA[:]) != index.ReceiptSHA256 {
		return leanRuntimePreflightEvidence{}, false
	}
	var receipt LeanRuntimePreflightReceipt
	if err := json.Unmarshal(receiptBytes, &receipt); err != nil || ValidateLeanRuntimePreflightReceipt(receipt) != nil {
		return leanRuntimePreflightEvidence{}, false
	}
	if receipt.EvidenceID != index.EvidenceID || receipt.Status != "PASSED" || !receipt.FinishedAtUTC.Equal(index.PreparedAtUTC) ||
		filepath.Clean(receipt.SnapshotManifestPath) != filepath.Clean(runtime.ManifestPath) {
		return leanRuntimePreflightEvidence{}, false
	}
	evidence := leanRuntimePreflightEvidence{
		EvidenceID: receipt.EvidenceID, ReceiptSHA256: index.ReceiptSHA256, ReceiptPath: receiptPath,
		ManifestSHA: receipt.SnapshotManifestSHA256, Image: receipt.Image,
		Docker: receipt.SandboxExecution.DockerExecutable, Imports: strings.Join(receipt.Imports, "\x00"),
		ProblemID: receipt.ProblemID, StatementSHA: receipt.ProblemStatementSHA256,
		Toolchain: receipt.Toolchain, Expected: receipt.ExpectedToolchain,
		PreparedAtUTC: receipt.FinishedAtUTC, VersionCheck: receipt.LeanVersionCheck,
	}
	if !leanRuntimePreflightEvidenceMatches(evidence, runtime, imports, problem, statementSHA, toolchain, expected) {
		return leanRuntimePreflightEvidence{}, false
	}
	return evidence, true
}

func leanRuntimePreflightTimestampFresh(preparedAt, now time.Time) bool {
	age := now.Sub(preparedAt)
	return !preparedAt.IsZero() && age >= 0 && age <= leanRuntimePreflightTTL
}

// Statement readiness has its own index and receipt suffix. It never enters
// the runtime-smoke cache or changes the meaning of the statement receipt.
func leanStatementReadinessIndexPath(receiptRoot, key string) (string, error) {
	root, err := filepath.Abs(receiptRoot)
	if err != nil {
		return "", err
	}
	digest := sha256.Sum256([]byte(key))
	return filepath.Join(root, ".statement-readiness", hex.EncodeToString(digest[:])+".json"), nil
}

func readLeanStatementReadinessFile(ctx context.Context, path string, limit int64) ([]byte, error) {
	if err := ctx.Err(); err != nil {
		return nil, err
	}
	info, err := os.Lstat(path)
	if err != nil || !info.Mode().IsRegular() || info.Mode()&os.ModeSymlink != 0 || info.Size() <= 0 || info.Size() > limit {
		return nil, errors.New("statement readiness requires a bounded regular file")
	}
	file, err := os.Open(path)
	if err != nil {
		return nil, err
	}
	defer file.Close()
	before, err := file.Stat()
	if err != nil || !os.SameFile(info, before) {
		return nil, errors.New("statement readiness file changed before reading")
	}
	data, err := io.ReadAll(io.LimitReader(file, limit+1))
	if err != nil {
		return nil, err
	}
	after, err := file.Stat()
	if err != nil || before.Size() != after.Size() || !before.ModTime().Equal(after.ModTime()) || int64(len(data)) != before.Size() {
		return nil, errors.New("statement readiness file changed while reading")
	}
	if err := ctx.Err(); err != nil {
		return nil, err
	}
	return data, nil
}

func readLeanStatementReadiness(ctx context.Context, receiptRoot, key string, now time.Time, runtime leanSnapshotRuntime, imports []string, problem domain.MathProblem, statementSHA, expected string) (leanRuntimePreflightEvidence, bool) {
	path, err := leanStatementReadinessIndexPath(receiptRoot, key)
	if err != nil {
		return leanRuntimePreflightEvidence{}, false
	}
	data, err := readLeanStatementReadinessFile(ctx, path, 8<<10)
	if err != nil {
		return leanRuntimePreflightEvidence{}, false
	}
	var index leanRuntimePreflightCacheIndex
	digest := sha256.Sum256([]byte(key))
	if json.Unmarshal(data, &index) != nil || index.SchemaVersion != leanStatementReadinessSchema || index.CacheKeySHA256 != hex.EncodeToString(digest[:]) ||
		state.ValidateIdentifier("statement readiness evidence ID", index.EvidenceID) != nil || !validSHA256(index.ReceiptSHA256) || !leanRuntimePreflightTimestampFresh(index.PreparedAtUTC, now) {
		return leanRuntimePreflightEvidence{}, false
	}
	root, err := filepath.Abs(receiptRoot)
	if err != nil {
		return leanRuntimePreflightEvidence{}, false
	}
	receiptPath := filepath.Join(root, index.EvidenceID+".statement.json")
	data, err = readLeanStatementReadinessFile(ctx, receiptPath, 64<<20)
	if err != nil {
		return leanRuntimePreflightEvidence{}, false
	}
	digest = sha256.Sum256(data)
	if hex.EncodeToString(digest[:]) != index.ReceiptSHA256 {
		return leanRuntimePreflightEvidence{}, false
	}
	var receipt LeanStatementCheckReceipt
	if json.Unmarshal(data, &receipt) != nil || receipt.SchemaVersion != leanStatementCheckSchema || receipt.EvidenceID != index.EvidenceID ||
		receipt.Status != "PASSED" || !receipt.TypecheckPassed || receipt.ExitCode != 0 || receipt.OutputTruncated ||
		receipt.SandboxExecution.ExitCode == nil || *receipt.SandboxExecution.ExitCode != 0 || receipt.SandboxExecution.TimedOut ||
		!receipt.RecordedAtUTC.Equal(index.PreparedAtUTC) || !leanRuntimePreflightTimestampFresh(receipt.RecordedAtUTC, now) ||
		receipt.SandboxExecution.FinishedAtUTC.After(receipt.RecordedAtUTC) || receipt.SandboxExecution.FinishedAtUTC.Before(receipt.SandboxExecution.StartedAtUTC) ||
		filepath.Clean(receipt.SnapshotManifestPath) != filepath.Clean(runtime.ManifestPath) ||
		receipt.ValidateCandidateArtifacts(problem) != nil {
		return leanRuntimePreflightEvidence{}, false
	}
	evidence := leanRuntimePreflightEvidence{
		EvidenceID: receipt.EvidenceID, ReceiptSHA256: index.ReceiptSHA256, ReceiptPath: receiptPath,
		ManifestSHA: receipt.SnapshotManifestSHA256, Image: receipt.ExecutionImage,
		Docker: receipt.SandboxExecution.DockerExecutable, Imports: strings.Join(receipt.Imports, "\x00"),
		ProblemID: receipt.ProblemID, StatementSHA: receipt.ProblemStatementSHA256,
		Toolchain: receipt.Toolchain, Expected: expected, PreparedAtUTC: receipt.RecordedAtUTC, VersionCheck: receipt.LeanVersionCheck,
	}
	if ctx.Err() != nil || !leanRuntimePreflightEvidenceMatches(evidence, runtime, imports, problem, statementSHA, runtime.Manifest.Toolchain, expected) || receipt.Toolchain != expected {
		return leanRuntimePreflightEvidence{}, false
	}
	return evidence, true
}

func (v LeanVerifier) writeLeanStatementReadiness(ctx context.Context, problem domain.MathProblem, receipt LeanStatementCheckReceipt, runtime leanSnapshotRuntime, now time.Time) error {
	if err := ctx.Err(); err != nil {
		return err
	}
	if receipt.Status != "PASSED" || !receipt.TypecheckPassed || !leanRuntimePreflightTimestampFresh(receipt.RecordedAtUTC, now) || receipt.ValidateCandidateArtifacts(problem) != nil {
		return errors.New("statement readiness requires fresh passing elaboration evidence")
	}
	key := leanRuntimePreflightCacheKey(v.ReceiptRoot, runtime.Image, runtime.ManifestSHA256, runtime.ManifestPath, runtime.Docker, receipt.Imports, problem.ID, receipt.ProblemStatementSHA256, runtime.Manifest.Toolchain, expectedLeanToolchain(v.ExpectedToolchain))
	path, err := leanStatementReadinessIndexPath(v.ReceiptRoot, key)
	if err != nil {
		return err
	}
	root, err := filepath.Abs(v.ReceiptRoot)
	if err != nil {
		return err
	}
	data, err := readLeanStatementReadinessFile(ctx, filepath.Join(root, receipt.EvidenceID+".statement.json"), 64<<20)
	if err != nil {
		return err
	}
	digest := sha256.Sum256(data)
	keyDigest := sha256.Sum256([]byte(key))
	index := leanRuntimePreflightCacheIndex{SchemaVersion: leanStatementReadinessSchema, CacheKeySHA256: hex.EncodeToString(keyDigest[:]), EvidenceID: receipt.EvidenceID, ReceiptSHA256: hex.EncodeToString(digest[:]), PreparedAtUTC: receipt.RecordedAtUTC}
	data, err = json.MarshalIndent(index, "", "  ")
	if err != nil {
		return err
	}
	directory := filepath.Dir(path)
	if err := os.MkdirAll(directory, 0o700); err != nil {
		return err
	}
	file, err := os.CreateTemp(directory, ".statement-readiness-*.tmp")
	if err != nil {
		return err
	}
	defer os.Remove(file.Name())
	if err := file.Chmod(0o600); err != nil {
		_ = file.Close()
		return err
	}
	if _, err := file.Write(append(data, '\n')); err != nil {
		_ = file.Close()
		return err
	}
	if err := file.Sync(); err != nil {
		_ = file.Close()
		return err
	}
	if err := file.Close(); err != nil {
		return err
	}
	if err := ctx.Err(); err != nil {
		return err
	}
	return os.Rename(file.Name(), path)
}

func leanRuntimePreflightEvidenceReceiptMatches(evidence leanRuntimePreflightEvidence, runtime leanSnapshotRuntime, imports []string, problem domain.MathProblem, statementSHA, toolchain, expected string) bool {
	if !leanRuntimePreflightEvidenceMatches(evidence, runtime, imports, problem, statementSHA, toolchain, expected) {
		return false
	}
	receiptBytes, err := os.ReadFile(evidence.ReceiptPath)
	if err != nil {
		return false
	}
	receiptSHA := sha256.Sum256(receiptBytes)
	if hex.EncodeToString(receiptSHA[:]) != evidence.ReceiptSHA256 {
		return false
	}
	var receipt LeanRuntimePreflightReceipt
	if err := json.Unmarshal(receiptBytes, &receipt); err != nil || ValidateLeanRuntimePreflightReceipt(receipt) != nil {
		return false
	}
	return receipt.EvidenceID == evidence.EvidenceID && receipt.Status == "PASSED" && receipt.FinishedAtUTC.Equal(evidence.PreparedAtUTC) &&
		receipt.SnapshotManifestSHA256 == runtime.ManifestSHA256 && filepath.Clean(receipt.SnapshotManifestPath) == filepath.Clean(runtime.ManifestPath) &&
		receipt.Image == runtime.Image && receipt.SandboxExecution.DockerExecutable == runtime.Docker &&
		receipt.ProblemID == problem.ID && receipt.ProblemStatementSHA256 == statementSHA && receipt.Toolchain == toolchain &&
		receipt.ExpectedToolchain == expected && strings.Join(receipt.Imports, "\x00") == strings.Join(imports, "\x00")
}

func storeLeanRuntimePreflightEvidence(key string, evidence leanRuntimePreflightEvidence) {
	leanRuntimePreflightCache.Lock()
	defer leanRuntimePreflightCache.Unlock()
	now := time.Now().UTC()
	for cachedKey, cached := range leanRuntimePreflightCache.entries {
		if now.Sub(cached.PreparedAtUTC) > leanRuntimePreflightTTL {
			delete(leanRuntimePreflightCache.entries, cachedKey)
		}
	}
	if len(leanRuntimePreflightCache.entries) >= 32 {
		for cachedKey := range leanRuntimePreflightCache.entries {
			delete(leanRuntimePreflightCache.entries, cachedKey)
			if len(leanRuntimePreflightCache.entries) < 16 {
				break
			}
		}
	}
	leanRuntimePreflightCache.entries[key] = evidence
}

func takeLeanRuntimePreflightEvidence(key string, now time.Time) (leanRuntimePreflightEvidence, bool) {
	leanRuntimePreflightCache.Lock()
	defer leanRuntimePreflightCache.Unlock()
	evidence, ok := leanRuntimePreflightCache.entries[key]
	if !ok {
		return leanRuntimePreflightEvidence{}, false
	}
	if !leanRuntimePreflightTimestampFresh(evidence.PreparedAtUTC, now) {
		delete(leanRuntimePreflightCache.entries, key)
		return leanRuntimePreflightEvidence{}, false
	}
	return evidence, true
}

func leanRuntimePreflightEvidenceMatches(evidence leanRuntimePreflightEvidence, runtime leanSnapshotRuntime, imports []string, problem domain.MathProblem, statementSHA, toolchain, expected string) bool {
	return evidence.EvidenceID != "" && len(evidence.ReceiptSHA256) == 64 && isLowerHex(evidence.ReceiptSHA256) &&
		evidence.ManifestSHA == runtime.ManifestSHA256 && evidence.Image == runtime.Image && evidence.Docker == runtime.Docker &&
		evidence.Imports == strings.Join(imports, "\x00") && evidence.ProblemID == problem.ID && evidence.StatementSHA == statementSHA &&
		evidence.Toolchain == toolchain && evidence.Expected == expected && evidence.VersionCheck.Version != ""
}

// ValidateLeanRuntimePreflightReceipt verifies a successful preflight as a
// runtime-only artifact. It never treats the synthetic True check as a case
// attempt or as evidence about the cleared problem.
func ValidateLeanRuntimePreflightReceipt(receipt LeanRuntimePreflightReceipt) error {
	if receipt.SchemaVersion != leanRuntimePreflightSchema || receipt.EvidenceID == "" || receipt.RunID == "" || receipt.ProblemID == "" {
		return errors.New("Lean runtime preflight receipt identity is incomplete")
	}
	if receipt.Status != "PASSED" {
		if strings.TrimSpace(receipt.FailureReason) == "" {
			return errors.New("failed Lean runtime preflight lacks its reason")
		}
		return nil
	}
	if receipt.StartedAtUTC.IsZero() || receipt.FinishedAtUTC.Before(receipt.StartedAtUTC) || receipt.RecordedAtUTC.Before(receipt.FinishedAtUTC) {
		return errors.New("Lean runtime preflight timestamps are invalid")
	}
	if err := state.ValidateIdentifier("run ID", receipt.RunID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("problem ID", receipt.ProblemID); err != nil {
		return err
	}
	imports, err := validateLeanImports(receipt.Imports)
	if err != nil || strings.Join(imports, "\x00") != strings.Join(receipt.Imports, "\x00") {
		return errors.New("Lean runtime preflight imports are invalid or reordered")
	}
	manifest, manifestPath, manifestSHA, err := ReadLeanSnapshotManifest(receipt.SnapshotManifestPath, receipt.Image)
	if err != nil {
		return fmt.Errorf("reopen Lean runtime preflight snapshot: %w", err)
	}
	if manifestPath != receipt.SnapshotManifestPath || manifestSHA != receipt.SnapshotManifestSHA256 || manifest.SnapshotID != receipt.SnapshotID || manifest.Toolchain != receipt.Toolchain || manifest.ProjectSnapshot.SHA256 != receipt.ProjectSnapshotSHA256 {
		return errors.New("Lean runtime preflight does not match its reopened snapshot manifest")
	}
	if err := validateLeanSnapshotImageCheck(receipt.SnapshotImageCheck, manifest, receipt.Image); err != nil {
		return fmt.Errorf("Lean runtime preflight image check is invalid: %w", err)
	}
	expectedSource := generatedLeanRuntimePreflightSource(imports)
	sourceDigest := sha256.Sum256([]byte(receipt.GeneratedSource))
	if receipt.GeneratedSource != expectedSource || receipt.GeneratedSourceSHA256 != hex.EncodeToString(sourceDigest[:]) {
		return errors.New("Lean runtime preflight source does not match its exact import closure")
	}
	if err := validateLeanVersionCheck(receipt.LeanVersionCheck, receipt.LeanVersion, manifest, receipt.Image, receipt.SandboxExecution); err != nil {
		return fmt.Errorf("Lean runtime preflight version evidence is invalid: %w", err)
	}
	if err := validateLeanSnapshotPreflightInvocation(receipt.SandboxExecution, receipt.Image, strings.Join(manifest.ModuleSearchPath, ":"), leanRuntimePreflightFile); err != nil {
		return err
	}
	if receipt.SandboxExecution.StartedAtUTC.Before(receipt.LeanVersionCheck.Execution.FinishedAtUTC) || receipt.SandboxExecution.TimedOut || receipt.SandboxExecution.ExitCode == nil || *receipt.SandboxExecution.ExitCode != 0 || receipt.OutputTruncated {
		return errors.New("Lean runtime preflight import check did not complete successfully")
	}
	if !validReceiptOutputDigest(receipt.StdoutExcerpt, receipt.StdoutSHA256) || !validReceiptOutputDigest(receipt.StderrExcerpt, receipt.StderrSHA256) {
		return errors.New("Lean runtime preflight output does not match its captured digests")
	}
	return nil
}

func validateLeanSnapshotPreflightInvocation(execution LeanSandboxExecution, image, moduleSearchPath, sourceName string) error {
	if execution.DockerExecutable == "" || execution.ContainerName == "" || len(execution.CommandArgv) < 4 || execution.CommandArgv[0] != execution.DockerExecutable {
		return errors.New("Lean runtime preflight invocation is missing its Docker executable or container")
	}
	args := execution.CommandArgv[1:]
	for _, required := range []string{"run", "--rm", "--pull=never", "--network=none", "--read-only", "--user=65532:65532", "--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128", "--entrypoint=lean", image, "--env=LEAN_PATH=" + moduleSearchPath, "--root=/mathcase/input", "/mathcase/input/" + sourceName} {
		if !containsArg(args, required) {
			return fmt.Errorf("Lean runtime preflight invocation is missing required argument %q", required)
		}
	}
	if !containsArg(args, "--name") || !containsArg(args, execution.ContainerName) || !containsConsecutiveArgs(args, "--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777") || !containsConsecutiveArgs(args, "--tmpfs", "/mathcase/work:rw,noexec,nosuid,nodev,size=128m,mode=1777") || !containsConsecutiveArgs(args, "--tmpfs", "/mathcase/cache:rw,noexec,nosuid,nodev,size=512m,mode=1777") {
		return errors.New("Lean runtime preflight invocation is missing its isolated container settings")
	}
	if !containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/input/"+sourceName+",readonly") || containsArg(args, "--version") || containsArg(args, "-o") || containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/output") {
		return errors.New("Lean runtime preflight invocation does not bind only the read-only exact source input")
	}
	return nil
}
