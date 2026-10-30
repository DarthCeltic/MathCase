package solver

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

const (
	leanToolchainProbeFailureSchemaV1 = "mathcase-lean-toolchain-probe-failure-v1"
	leanToolchainProbeFailureSchemaV2 = "mathcase-lean-toolchain-probe-failure-v2"
	leanToolchainProbeFailureSchema   = "mathcase-lean-toolchain-probe-failure-v3"
)

// LeanToolchainProbeFailureReceipt preserves the real version-check process
// when verification stops before launching the proof. It is never a proof
// receipt and cannot satisfy V1/V2 or M8.
type LeanToolchainProbeFailureReceipt struct {
	SchemaVersion          string                 `json:"schema_version"`
	EvidenceID             string                 `json:"evidence_id"`
	RecordedAtUTC          time.Time              `json:"recorded_at_utc"`
	ProblemID              string                 `json:"problem_id"`
	ProblemStatementSHA256 string                 `json:"problem_statement_sha256"`
	ProofSHA256            string                 `json:"proof_sha256"`
	GeneratedSourceSHA256  string                 `json:"generated_source_sha256"`
	ProjectSnapshotSHA256  string                 `json:"project_snapshot_sha256"`
	ProjectSnapshot        LeanProjectSnapshot    `json:"project_snapshot,omitempty"`
	SnapshotID             string                 `json:"snapshot_id,omitempty"`
	SnapshotManifestPath   string                 `json:"snapshot_manifest_path,omitempty"`
	SnapshotManifestSHA256 string                 `json:"snapshot_manifest_sha256,omitempty"`
	SnapshotImageCheck     LeanSnapshotImageCheck `json:"snapshot_image_check,omitempty"`
	Toolchain              string                 `json:"toolchain"`
	ExpectedToolchain      string                 `json:"expected_toolchain"`
	Image                  string                 `json:"image"`
	Imports                []string               `json:"imports"`
	Status                 string                 `json:"status"`
	ProofExecutionStarted  bool                   `json:"proof_execution_started"`
	FailureReason          string                 `json:"failure_reason"`
	LeanVersionCheck       LeanVersionCheck       `json:"lean_version_check"`
}

// ValidateToolchainProbeFailureReceipt confirms the captured version-probe
// output and its exact problem/proof bindings. It deliberately never treats
// this artifact as a successful Lean proof receipt.
func ValidateToolchainProbeFailureReceipt(receipt LeanToolchainProbeFailureReceipt, problem domain.MathProblem, proof string) error {
	if (receipt.SchemaVersion != leanToolchainProbeFailureSchema && receipt.SchemaVersion != leanToolchainProbeFailureSchemaV2 && receipt.SchemaVersion != leanToolchainProbeFailureSchemaV1) || receipt.Status != "TOOLCHAIN_PROBE_FAILED" || receipt.ProofExecutionStarted {
		return errors.New("Lean toolchain probe receipt is not a failed pre-proof probe")
	}
	if receipt.EvidenceID == "" || receipt.ProblemID != problem.ID || receipt.RecordedAtUTC.IsZero() || strings.TrimSpace(receipt.FailureReason) == "" {
		return errors.New("Lean toolchain probe receipt identity does not match the problem")
	}
	statementDigest, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		return err
	}
	if receipt.ProblemStatementSHA256 != statementDigest {
		return errors.New("Lean toolchain probe receipt statement digest does not match the exact problem")
	}
	proofDigest := sha256.Sum256([]byte(proof))
	proofSHA := hex.EncodeToString(proofDigest[:])
	if receipt.ProofSHA256 != proofSHA {
		return errors.New("Lean toolchain probe receipt proof digest does not match the exact input proof")
	}
	proofBody, err := normalizeLeanProof(proof)
	if err != nil {
		return err
	}
	imports, err := validateLeanImports(receipt.Imports)
	if err != nil {
		return err
	}
	source := generatedLeanSource(problem.LeanStatement, proofBody, imports)
	sourceDigest := sha256.Sum256([]byte(source))
	if receipt.GeneratedSourceSHA256 != hex.EncodeToString(sourceDigest[:]) {
		return errors.New("Lean toolchain probe receipt generated-source digest does not match the exact statement, proof, and imports")
	}
	if len(receipt.ProjectSnapshotSHA256) != 64 || !isLowerHex(receipt.ProjectSnapshotSHA256) {
		return errors.New("Lean toolchain probe receipt is missing its pinned project snapshot digest")
	}
	if receipt.ProjectSnapshot.SchemaVersion != "" {
		if err := receipt.ProjectSnapshot.Validate(receipt.ProjectSnapshotSHA256); err != nil {
			return fmt.Errorf("Lean toolchain probe receipt project snapshot is invalid: %w", err)
		}
	}
	if receipt.SchemaVersion == leanToolchainProbeFailureSchema {
		manifest, err := validateReceiptSnapshotLink(receipt.SnapshotID, receipt.SnapshotManifestPath, receipt.SnapshotManifestSHA256, receipt.Image, receipt.ProjectSnapshot)
		if err != nil {
			return err
		}
		if err := validateLeanSnapshotImageCheck(receipt.SnapshotImageCheck, manifest, receipt.Image); err != nil {
			return err
		}
	}
	if strings.TrimSpace(receipt.Toolchain) == "" || receipt.ExpectedToolchain != expectedLeanToolchain(receipt.ExpectedToolchain) {
		return errors.New("Lean toolchain probe receipt is missing the expected toolchain identity")
	}
	if receipt.Toolchain != receipt.ExpectedToolchain {
		return errors.New("Lean toolchain probe receipt project toolchain differs from the expected toolchain")
	}
	if receipt.Image != strings.TrimSpace(receipt.Image) || !leanSandboxImagePattern.MatchString(receipt.Image) {
		return errors.New("Lean toolchain probe receipt is missing an immutable sandbox image")
	}
	return validateToolchainProbeExecution(receipt)
}

func validateToolchainProbeExecution(receipt LeanToolchainProbeFailureReceipt) error {
	check := receipt.LeanVersionCheck
	if check.OutputTruncated {
		if check.Version != "" {
			return errors.New("truncated Lean toolchain probe must not claim a complete version identity")
		}
		if !check.Execution.CleanupAttempted {
			return errors.New("truncated Lean toolchain probe lacks its container cleanup attempt")
		}
		if err := validateOutputLimitCaptureEvidence(outputLimitCaptureEvidence{
			stdoutSHA256: check.StdoutSHA256, stderrSHA256: check.StderrSHA256,
			stdoutCapturedSHA256: check.StdoutCapturedSHA256, stderrCapturedSHA256: check.StderrCapturedSHA256,
			stdoutPrefix: check.StdoutPrefix, stderrPrefix: check.StderrPrefix,
			stdoutExcerpt: check.StdoutExcerpt, stderrExcerpt: check.StderrExcerpt,
			stdoutBytesObserved: check.StdoutBytesObserved, stderrBytesObserved: check.StderrBytesObserved,
			stdoutBytesCaptured: check.StdoutBytesCaptured, stderrBytesCaptured: check.StderrBytesCaptured,
			outputLimitBytes: check.OutputLimitBytes,
		}); err != nil {
			return fmt.Errorf("Lean toolchain probe truncated output evidence is invalid: %w", err)
		}
	} else {
		if hasOutputLimitCaptureEvidence(outputLimitCaptureEvidence{
			stdoutSHA256: check.StdoutSHA256, stderrSHA256: check.StderrSHA256,
			stdoutCapturedSHA256: check.StdoutCapturedSHA256, stderrCapturedSHA256: check.StderrCapturedSHA256,
			stdoutPrefix: check.StdoutPrefix, stderrPrefix: check.StderrPrefix,
			stdoutExcerpt: check.StdoutExcerpt, stderrExcerpt: check.StderrExcerpt,
			stdoutBytesObserved: check.StdoutBytesObserved, stderrBytesObserved: check.StderrBytesObserved,
			stdoutBytesCaptured: check.StdoutBytesCaptured, stderrBytesCaptured: check.StderrBytesCaptured,
			outputLimitBytes: check.OutputLimitBytes,
		}) {
			return errors.New("complete Lean toolchain-probe output carries truncated-stream metadata")
		}
		if !validReceiptOutputDigest(check.StdoutExcerpt, check.StdoutSHA256) || !validReceiptOutputDigest(check.StderrExcerpt, check.StderrSHA256) {
			return errors.New("Lean toolchain probe output does not match its captured stdout/stderr digests")
		}
	}
	if check.Version != "" && strings.TrimSpace(check.StdoutExcerpt+"\n"+check.StderrExcerpt) != check.Version {
		return errors.New("Lean toolchain probe version field does not match captured output")
	}
	execution := check.Execution
	if execution.DockerExecutable == "" || execution.ContainerName == "" || len(execution.CommandArgv) < 4 || execution.CommandArgv[0] != execution.DockerExecutable {
		return errors.New("Lean toolchain probe is missing its Docker executable, container, or argv")
	}
	if execution.StartedAtUTC.IsZero() || execution.FinishedAtUTC.Before(execution.StartedAtUTC) {
		return errors.New("Lean toolchain probe has invalid process timestamps")
	}
	if execution.ExitCode == nil && (!(execution.TimedOut || check.OutputTruncated) || !execution.CleanupAttempted) {
		return errors.New("Lean toolchain probe has no completed or interrupted process evidence")
	}
	if !execution.TimedOut && !check.OutputTruncated && execution.ExitCode != nil && *execution.ExitCode == 0 && (check.Version == "" || strings.Contains(check.Version, "Lean (version 4.33.1")) {
		return errors.New("Lean toolchain probe does not show a failing process or mismatched version")
	}
	args := execution.CommandArgv[1:]
	required := []string{"run", "--rm", "--pull=never", "--network=none", "--read-only", "--user=65532:65532", "--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128"}
	for _, value := range required {
		if !containsArg(args, value) {
			return fmt.Errorf("Lean toolchain probe Docker argv is missing required isolation argument %q", value)
		}
	}
	if !containsArg(args, "--name") || !containsArg(args, execution.ContainerName) || !containsArg(args, receipt.Image) {
		return errors.New("Lean toolchain probe argv does not bind its container and immutable image")
	}
	if receipt.SchemaVersion == leanToolchainProbeFailureSchema {
		if execution.ExecutionMode != LeanExecutionModeDirect {
			return errors.New("Lean toolchain probe does not identify direct Lean execution")
		}
		manifest, err := validateReceiptSnapshotLink(receipt.SnapshotID, receipt.SnapshotManifestPath, receipt.SnapshotManifestSHA256, receipt.Image, receipt.ProjectSnapshot)
		if err != nil {
			return err
		}
		if err := validateLeanSnapshotInvocation(execution, receipt.Image, strings.Join(manifest.ModuleSearchPath, ":"), "", "", false); err != nil {
			return fmt.Errorf("Lean toolchain probe snapshot invocation is invalid: %w", err)
		}
	} else if receipt.SchemaVersion == leanToolchainProbeFailureSchemaV2 {
		if !containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/project,readonly") ||
			containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/input,readonly") {
			return errors.New("legacy Lean toolchain probe does not show the pinned read-only project mount")
		}
		if !containsArg(args, "--entrypoint=sh") || !containsConsecutiveArgs(args, "env", "lean") ||
			containsConsecutiveArgs(args, "lake", "env", "lean") || !containsArg(args, leanProjectLakeTmpfsSpec) ||
			!containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/cache-seed,readonly") ||
			(!containsConsecutiveArgs(args, "cp -a /mathcase/cache-seed/. /mathcase/project/.lake/ && exec lake \"$@\"", "mathcase-lake-cache-seed") &&
				!containsConsecutiveArgs(args, "cp -R /mathcase/cache-seed/. /mathcase/project/.lake/ && exec lake \"$@\"", "mathcase-lake-cache-seed")) {
			return errors.New("legacy Lean toolchain probe does not use Lake with a writable disposable cache")
		}
		if err := validateLeanProjectMountArgs(args); err != nil {
			return fmt.Errorf("Lean toolchain probe has invalid project/cache mounts: %w", err)
		}
	} else {
		if !containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/project,readonly") ||
			containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/input,readonly") || !containsConsecutiveArgs(args, "env", "lean") {
			return errors.New("legacy Lean toolchain probe argv does not invoke lean in its pinned read-only project")
		}
	}
	if !containsArg(args, "--version") || (receipt.SchemaVersion != leanToolchainProbeFailureSchema && (!containsArg(args, "env") || !containsArg(args, "lean"))) {
		return errors.New("Lean toolchain probe argv does not invoke lean --version")
	}
	if err := validateSandboxCleanupMetadata(execution); err != nil {
		return fmt.Errorf("Lean toolchain probe cleanup metadata is inconsistent: %w", err)
	}
	if (execution.TimedOut || check.OutputTruncated) && !execution.CleanupAttempted {
		return errors.New("interrupted Lean toolchain probe did not attempt container cleanup")
	}
	return nil
}

func expectedLeanToolchain(value string) string {
	if strings.TrimSpace(value) == "" {
		return defaultLeanToolchain
	}
	return strings.TrimSpace(value)
}

func (v LeanVerifier) writeToolchainProbeFailureReceipt(receipt LeanToolchainProbeFailureReceipt) error {
	if v.ReceiptRoot == "" {
		return errors.New("lean verifier: durable receipt root is required")
	}
	root, err := filepath.Abs(v.ReceiptRoot)
	if err != nil {
		return fmt.Errorf("lean verifier: resolve receipt root: %w", err)
	}
	if err := os.MkdirAll(root, 0o700); err != nil {
		return fmt.Errorf("lean verifier: create receipt root: %w", err)
	}
	data, err := json.MarshalIndent(receipt, "", "  ")
	if err != nil {
		return fmt.Errorf("lean verifier: encode toolchain probe failure: %w", err)
	}
	data = append(data, '\n')
	path := filepath.Join(root, receipt.EvidenceID+".toolchain-probe.json")
	file, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o600)
	if err != nil {
		return fmt.Errorf("lean verifier: create append-only toolchain probe receipt: %w", err)
	}
	if _, err := file.Write(data); err != nil {
		_ = file.Close()
		return fmt.Errorf("lean verifier: write toolchain probe receipt: %w", err)
	}
	if err := file.Sync(); err != nil {
		_ = file.Close()
		return fmt.Errorf("lean verifier: flush toolchain probe receipt: %w", err)
	}
	if err := file.Close(); err != nil {
		return fmt.Errorf("lean verifier: close toolchain probe receipt: %w", err)
	}
	return nil
}
