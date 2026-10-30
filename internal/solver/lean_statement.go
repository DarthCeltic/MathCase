package solver

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const leanStatementCheckSchema = "mathcase-lean-statement-check-v3"

// LeanStatementCheckReceipt records Lean elaboration of a proposition. It
// proves only that the expression is a well-typed Prop in the selected
// project; it makes no claim that the proposition itself is true.
type LeanStatementCheckReceipt struct {
	SchemaVersion          string                 `json:"schema_version"`
	EvidenceID             string                 `json:"evidence_id"`
	RecordedAtUTC          time.Time              `json:"recorded_at_utc"`
	ProblemID              string                 `json:"problem_id"`
	ProblemStatementSHA256 string                 `json:"problem_statement_sha256"`
	PropositionSHA256      string                 `json:"proposition_sha256"`
	GeneratedSourceSHA256  string                 `json:"generated_source_sha256"`
	ArtifactSnapshotSchema string                 `json:"artifact_snapshot_schema,omitempty"`
	GeneratedSource        string                 `json:"generated_source,omitempty"`
	CompiledArtifactStatus string                 `json:"compiled_artifact_status,omitempty"`
	CompiledArtifact       []byte                 `json:"compiled_artifact_base64,omitempty"`
	CompiledArtifactSHA256 string                 `json:"compiled_artifact_sha256,omitempty"`
	CompiledArtifactSize   int64                  `json:"compiled_artifact_size_bytes,omitempty"`
	CompiledArtifactError  string                 `json:"compiled_artifact_error,omitempty"`
	ProjectSnapshotSHA256  string                 `json:"project_snapshot_sha256"`
	ProjectSnapshot        LeanProjectSnapshot    `json:"project_snapshot"`
	SnapshotID             string                 `json:"snapshot_id"`
	SnapshotManifestPath   string                 `json:"snapshot_manifest_path"`
	SnapshotManifestSHA256 string                 `json:"snapshot_manifest_sha256"`
	SnapshotImageCheck     LeanSnapshotImageCheck `json:"snapshot_image_check"`
	Toolchain              string                 `json:"toolchain"`
	LeanVersion            string                 `json:"lean_version"`
	LeanVersionCheck       LeanVersionCheck       `json:"lean_version_check"`
	Imports                []string               `json:"imports"`
	TypecheckPassed        bool                   `json:"typecheck_passed"`
	Status                 string                 `json:"status"`
	Summary                string                 `json:"summary"`
	StdoutSHA256           string                 `json:"stdout_sha256"`
	StderrSHA256           string                 `json:"stderr_sha256"`
	StdoutExcerpt          string                 `json:"stdout_excerpt,omitempty"`
	StderrExcerpt          string                 `json:"stderr_excerpt,omitempty"`
	StdoutCapturedSHA256   string                 `json:"stdout_captured_sha256,omitempty"`
	StderrCapturedSHA256   string                 `json:"stderr_captured_sha256,omitempty"`
	StdoutPrefix           []byte                 `json:"stdout_prefix_base64,omitempty"`
	StderrPrefix           []byte                 `json:"stderr_prefix_base64,omitempty"`
	StdoutBytesObserved    int64                  `json:"stdout_bytes_observed,omitempty"`
	StderrBytesObserved    int64                  `json:"stderr_bytes_observed,omitempty"`
	StdoutBytesCaptured    int64                  `json:"stdout_bytes_captured,omitempty"`
	StderrBytesCaptured    int64                  `json:"stderr_bytes_captured,omitempty"`
	OutputLimitBytes       int64                  `json:"output_limit_bytes,omitempty"`
	OutputTruncated        bool                   `json:"output_truncated"`
	ExitCode               int                    `json:"exit_code"`
	ElapsedMilliseconds    int64                  `json:"elapsed_milliseconds"`
	ExecutionIsolation     string                 `json:"execution_isolation"`
	ExecutionImage         string                 `json:"execution_image"`
	SandboxExecution       LeanSandboxExecution   `json:"sandbox_execution"`
}

// CheckProposition uses the selected pinned Lake project to elaborate one
// proposition as Prop and writes an immutable receipt for either outcome.
func (v LeanVerifier) CheckProposition(ctx context.Context, problem domain.MathProblem) (LeanStatementCheckReceipt, error) {
	if ctx == nil {
		return LeanStatementCheckReceipt{}, errors.New("lean statement checker: context is required")
	}
	if err := state.ValidateIdentifier("problem ID", problem.ID); err != nil {
		return LeanStatementCheckReceipt{}, err
	}
	if strings.TrimSpace(problem.Statement) == "" {
		return LeanStatementCheckReceipt{}, errors.New("lean statement checker: informal problem statement is required for evidence binding")
	}
	if err := ValidateLeanStatement(problem.LeanStatement); err != nil {
		return LeanStatementCheckReceipt{}, fmt.Errorf("lean statement checker: %w", err)
	}

	imports, err := validateLeanImports(v.Imports)
	if err != nil {
		return LeanStatementCheckReceipt{}, err
	}
	runtime, err := v.prepareLeanSnapshotRuntime(ctx, imports)
	if err != nil {
		return LeanStatementCheckReceipt{}, err
	}
	toolchain := runtime.Manifest.Toolchain
	statementHash, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		return LeanStatementCheckReceipt{}, fmt.Errorf("lean statement checker: hash problem statement: %w", err)
	}
	proposition, _, err := normalizeLeanProblemStatement(problem.LeanStatement)
	if err != nil {
		return LeanStatementCheckReceipt{}, fmt.Errorf("lean statement checker: normalize exact theorem header: %w", err)
	}
	source := generatedLeanTypecheckSource(proposition, imports)
	sourceHash := sha256.Sum256([]byte(source))
	propositionHash := sha256.Sum256([]byte(proposition))
	evidenceID, err := newLeanEvidenceID()
	if err != nil {
		return LeanStatementCheckReceipt{}, fmt.Errorf("lean statement checker: create evidence ID: %w", err)
	}

	timeout := v.Timeout
	if timeout <= 0 {
		timeout = defaultLeanTimeout
	}
	maxOutput := v.MaxOutputBytes
	if maxOutput <= 0 || maxOutput > defaultOutputLimit {
		maxOutput = defaultOutputLimit
	}
	now := v.Now
	if now == nil {
		now = time.Now
	}
	workspace, err := v.makeWorkspace()
	if err != nil {
		return LeanStatementCheckReceipt{}, err
	}
	defer os.RemoveAll(workspace)
	const sourceName = "MathCaseStatement.lean"
	const artifactName = "MathCaseStatement.olean"
	candidatePath, err := writeLeanCandidateInput(workspace, sourceName, []byte(source))
	if err != nil {
		return LeanStatementCheckReceipt{}, fmt.Errorf("lean statement checker: stage read-only candidate input: %w", err)
	}
	started := now().UTC()
	versionCtx, cancelVersion := newLeanPhaseContext(ctx, timeout)
	leanVersionCheck, err := runLeanSnapshotVersion(versionCtx, runtime, maxOutput)
	cancelVersion()
	if err != nil {
		if leanVersionCheck.Execution.ContainerName == "" {
			return LeanStatementCheckReceipt{}, fmt.Errorf("lean statement checker: pinned Lean toolchain unavailable before a version-probe process started: %w", err)
		}
		ended := now().UTC()
		if ended.Before(started) {
			ended = started
		}
		receipt := LeanStatementCheckReceipt{
			SchemaVersion:          leanStatementCheckSchema,
			EvidenceID:             evidenceID,
			RecordedAtUTC:          ended,
			ProblemID:              problem.ID,
			ProblemStatementSHA256: statementHash,
			PropositionSHA256:      hex.EncodeToString(propositionHash[:]),
			GeneratedSourceSHA256:  hex.EncodeToString(sourceHash[:]),
			ArtifactSnapshotSchema: LeanArtifactSnapshotSchemaVersion,
			GeneratedSource:        source,
			CompiledArtifactStatus: "NOT_PRODUCED",
			ProjectSnapshotSHA256:  runtime.Manifest.ProjectSnapshot.SHA256,
			ProjectSnapshot:        runtime.Manifest.ProjectSnapshot,
			SnapshotID:             runtime.Manifest.SnapshotID,
			SnapshotManifestPath:   runtime.ManifestPath,
			SnapshotManifestSHA256: runtime.ManifestSHA256,
			SnapshotImageCheck:     runtime.ImageCheck,
			Toolchain:              toolchain,
			LeanVersion:            leanVersionCheck.Version,
			LeanVersionCheck:       leanVersionCheck,
			Imports:                imports,
			TypecheckPassed:        false,
			Status:                 "TOOLCHAIN_PROBE_FAILED",
			Summary:                "Pinned Lean version preflight did not complete; the proposition-check process was not started.",
			ExitCode:               -1,
			ElapsedMilliseconds:    ended.Sub(started).Milliseconds(),
			ExecutionIsolation:     leanExecutionIsolation(runtime.Image),
			ExecutionImage:         runtime.Image,
		}
		if writeErr := v.writeStatementCheckReceipt(receipt); writeErr != nil {
			return LeanStatementCheckReceipt{}, errors.Join(fmt.Errorf("lean statement checker: pinned Lean toolchain unavailable: %w", err), writeErr)
		}
		return receipt, fmt.Errorf("lean statement checker: pinned Lean toolchain unavailable: %w", err)
	}
	artifactRoot, err := prepareLeanArtifactOutput(workspace)
	if err != nil {
		return LeanStatementCheckReceipt{}, err
	}

	proofCtx, cancelProof := newLeanPhaseContext(ctx, timeout)
	prepared := v.prepareOptionalLeanImports(proofCtx, runtime, imports, workspace, hex.EncodeToString(sourceHash[:]))
	stdout, stderr, runErr, sandboxExecution := runLeanSnapshotPreparedCommand(proofCtx, runtime, candidatePath, sourceName, hex.EncodeToString(sourceHash[:]), artifactRoot, artifactName, []string{"--root=/mathcase/input", "-o", "/mathcase/output/" + artifactName, "/mathcase/input/" + sourceName}, maxOutput, prepared)
	proofContextErr := proofCtx.Err()
	cancelProof()
	compiledArtifact, compiledArtifactStatus, compiledArtifactErr := captureLeanCompiledArtifact(artifactRoot, artifactName)
	ended := now().UTC()
	if ended.Before(started) {
		ended = started
	}
	outputTruncated := stdout.truncated || stderr.truncated
	typecheckPassed := runErr == nil && !outputTruncated
	status := "PASSED"
	summary := "Lean elaborated the candidate expression as a proposition in the selected project."
	exitCode := 0
	if outputTruncated {
		status = "OUTPUT_LIMIT"
		summary = "Lean output exceeded the configured capture limit; statement checking failed closed."
		typecheckPassed = false
		exitCode = -1
	} else if proofContextErr != nil {
		status = "CANCELLED"
		if errors.Is(proofContextErr, context.DeadlineExceeded) {
			status = "TIMED_OUT"
		}
		summary = "Lean statement checking did not finish within the bounded isolated-container window."
		typecheckPassed = false
		exitCode = -1
	} else if runErr != nil {
		var exitError *exec.ExitError
		if errors.As(runErr, &exitError) && leanContainerRejectedProof(runErr, stdout.String()+"\n"+stderr.String()) {
			status = "REJECTED"
			summary = "Lean rejected the candidate expression or it did not elaborate as Prop."
			exitCode = exitError.ExitCode()
		} else {
			status = "EXECUTION_ERROR"
			summary = "Lean could not execute the statement-checking process."
			typecheckPassed = false
			exitCode = -1
		}
	}
	compiledArtifactSHA256 := ""
	compiledArtifactSize := int64(0)
	if compiledArtifactStatus == "CAPTURED" {
		digest := sha256.Sum256(compiledArtifact)
		compiledArtifactSHA256 = hex.EncodeToString(digest[:])
		compiledArtifactSize = int64(len(compiledArtifact))
	} else if compiledArtifactErr != nil {
		compiledArtifactStatus = "CAPTURE_FAILED"
	}
	compiledArtifactError := ""
	if compiledArtifactErr != nil {
		compiledArtifactError = compiledArtifactErr.Error()
	}
	if typecheckPassed && compiledArtifactStatus != "CAPTURED" {
		typecheckPassed = false
		if compiledArtifactStatus == "CAPTURE_FAILED" {
			status = "COMPILED_ARTIFACT_CAPTURE_FAILED"
			summary = "Lean elaborated the proposition, but its compiled artifact could not be captured; statement checking failed closed."
		} else {
			status = "COMPILED_ARTIFACT_MISSING"
			summary = "Lean elaborated the proposition but produced no compiled artifact snapshot; statement checking failed closed."
		}
	}
	stdoutSHA256 := stdout.SHA256()
	stderrSHA256 := stderr.SHA256()
	stdoutExcerpt := stdout.String()
	stderrExcerpt := stderr.String()
	var stdoutCapturedSHA256, stderrCapturedSHA256 string
	var stdoutPrefix, stderrPrefix []byte
	var stdoutBytesObserved, stderrBytesObserved, stdoutBytesCaptured, stderrBytesCaptured, outputLimitBytes int64
	if outputTruncated {
		stdoutSHA256 = ""
		stderrSHA256 = ""
		stdoutExcerpt = strings.ToValidUTF8(stdoutExcerpt, "\uFFFD")
		stderrExcerpt = strings.ToValidUTF8(stderrExcerpt, "\uFFFD")
		stdoutCapturedSHA256 = stdout.CapturedSHA256()
		stderrCapturedSHA256 = stderr.CapturedSHA256()
		stdoutPrefix = append([]byte(nil), stdout.buffer.Bytes()...)
		stderrPrefix = append([]byte(nil), stderr.buffer.Bytes()...)
		stdoutBytesObserved = stdout.total
		stderrBytesObserved = stderr.total
		stdoutBytesCaptured = int64(stdout.buffer.Len())
		stderrBytesCaptured = int64(stderr.buffer.Len())
		outputLimitBytes = int64(maxOutput)
	}
	receipt := LeanStatementCheckReceipt{
		SchemaVersion:          leanStatementCheckSchema,
		EvidenceID:             evidenceID,
		RecordedAtUTC:          ended,
		ProblemID:              problem.ID,
		ProblemStatementSHA256: statementHash,
		PropositionSHA256:      hex.EncodeToString(propositionHash[:]),
		GeneratedSourceSHA256:  hex.EncodeToString(sourceHash[:]),
		ArtifactSnapshotSchema: LeanArtifactSnapshotSchemaVersion,
		GeneratedSource:        source,
		CompiledArtifactStatus: compiledArtifactStatus,
		CompiledArtifact:       compiledArtifact,
		CompiledArtifactSHA256: compiledArtifactSHA256,
		CompiledArtifactSize:   compiledArtifactSize,
		CompiledArtifactError:  compiledArtifactError,
		ProjectSnapshotSHA256:  runtime.Manifest.ProjectSnapshot.SHA256,
		ProjectSnapshot:        runtime.Manifest.ProjectSnapshot,
		SnapshotID:             runtime.Manifest.SnapshotID,
		SnapshotManifestPath:   runtime.ManifestPath,
		SnapshotManifestSHA256: runtime.ManifestSHA256,
		SnapshotImageCheck:     runtime.ImageCheck,
		Toolchain:              toolchain,
		LeanVersion:            leanVersionCheck.Version,
		LeanVersionCheck:       leanVersionCheck,
		Imports:                imports,
		TypecheckPassed:        typecheckPassed,
		Status:                 status,
		Summary:                summary,
		StdoutSHA256:           stdoutSHA256,
		StderrSHA256:           stderrSHA256,
		StdoutExcerpt:          stdoutExcerpt,
		StderrExcerpt:          stderrExcerpt,
		StdoutCapturedSHA256:   stdoutCapturedSHA256,
		StderrCapturedSHA256:   stderrCapturedSHA256,
		StdoutPrefix:           stdoutPrefix,
		StderrPrefix:           stderrPrefix,
		StdoutBytesObserved:    stdoutBytesObserved,
		StderrBytesObserved:    stderrBytesObserved,
		StdoutBytesCaptured:    stdoutBytesCaptured,
		StderrBytesCaptured:    stderrBytesCaptured,
		OutputLimitBytes:       outputLimitBytes,
		OutputTruncated:        outputTruncated,
		ExitCode:               exitCode,
		ElapsedMilliseconds:    ended.Sub(started).Milliseconds(),
		ExecutionIsolation:     leanExecutionIsolation(runtime.Image),
		ExecutionImage:         runtime.Image,
		SandboxExecution:       sandboxExecution,
	}
	if err := v.writeStatementCheckReceipt(receipt); err != nil {
		return LeanStatementCheckReceipt{}, err
	}
	if receipt.Status == "PASSED" && receipt.TypecheckPassed {
		// This optional index points to the actual immutable statement receipt.
		// Failure only loses the optimization; no evidence is manufactured.
		_ = v.writeLeanStatementReadiness(ctx, problem, receipt, runtime, now().UTC())
	}
	if status == "EXECUTION_ERROR" {
		return receipt, errors.New("lean statement checker: isolated Lean process failed")
	}
	if status == "TIMED_OUT" {
		return receipt, context.DeadlineExceeded
	}
	if status == "CANCELLED" {
		return receipt, ctx.Err()
	}
	if status == "COMPILED_ARTIFACT_MISSING" || status == "COMPILED_ARTIFACT_CAPTURE_FAILED" {
		return receipt, errors.New("lean statement checker: compiled artifact snapshot was not complete")
	}
	return receipt, nil
}

func generatedLeanTypecheckSource(proposition string, imports []string) string {
	var source strings.Builder
	for _, importPath := range imports {
		fmt.Fprintf(&source, "import %s\n", importPath)
	}
	if len(imports) > 0 {
		source.WriteByte('\n')
	}
	fmt.Fprintf(&source, "#check (show Prop from (%s))\n", proposition)
	return source.String()
}

// ValidateCandidateArtifacts checks the full source and compiled-output bytes
// retained by a fresh statement-check receipt. It verifies internal binding
// and integrity; it does not authenticate who produced the receipt.
func (r LeanStatementCheckReceipt) ValidateCandidateArtifacts(problem domain.MathProblem) error {
	if r.SchemaVersion != leanStatementCheckSchema || r.ProblemID != problem.ID || r.EvidenceID == "" {
		return errors.New("lean statement checker: receipt identity does not match the candidate problem")
	}
	statementDigest, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		return fmt.Errorf("lean statement checker: recompute statement binding: %w", err)
	}
	proposition, _, err := normalizeLeanProblemStatement(problem.LeanStatement)
	if err != nil {
		return fmt.Errorf("lean statement checker: normalize exact theorem header: %w", err)
	}
	propositionDigest := sha256.Sum256([]byte(proposition))
	if r.ProblemStatementSHA256 != statementDigest || r.PropositionSHA256 != hex.EncodeToString(propositionDigest[:]) {
		return errors.New("lean statement checker: receipt does not bind the exact informal statement and Lean proposition")
	}
	imports, err := validateLeanImports(r.Imports)
	if err != nil {
		return err
	}
	expectedSource := generatedLeanTypecheckSource(proposition, imports)
	if err := validateLeanArtifactSnapshot(r.ArtifactSnapshotSchema, r.GeneratedSource, expectedSource, r.GeneratedSourceSHA256,
		r.CompiledArtifactStatus, r.CompiledArtifact, r.CompiledArtifactSHA256, r.CompiledArtifactSize, r.CompiledArtifactError, r.TypecheckPassed || r.Status == "PASSED"); err != nil {
		return fmt.Errorf("lean statement checker: source/compiled-artifact snapshot is invalid: %w", err)
	}
	if r.TypecheckPassed != (r.Status == "PASSED") {
		return errors.New("lean statement checker: status and typecheck result disagree")
	}
	preflightFailure := r.Status == "TOOLCHAIN_PROBE_FAILED"
	if preflightFailure {
		if r.TypecheckPassed || r.OutputTruncated || r.ExitCode != -1 || strings.TrimSpace(r.Summary) == "" ||
			r.StdoutSHA256 != "" || r.StderrSHA256 != "" || r.StdoutExcerpt != "" || r.StderrExcerpt != "" ||
			hasOutputLimitCaptureEvidence(outputLimitCaptureEvidence{
				stdoutCapturedSHA256: r.StdoutCapturedSHA256, stderrCapturedSHA256: r.StderrCapturedSHA256,
				stdoutPrefix: r.StdoutPrefix, stderrPrefix: r.StderrPrefix,
				stdoutBytesObserved: r.StdoutBytesObserved, stderrBytesObserved: r.StderrBytesObserved,
				stdoutBytesCaptured: r.StdoutBytesCaptured, stderrBytesCaptured: r.StderrBytesCaptured,
				outputLimitBytes: r.OutputLimitBytes,
			}) || hasSandboxExecutionRecord(r.SandboxExecution) {
			return errors.New("lean statement checker: toolchain preflight failure must not claim proposition execution")
		}
	} else if r.Status == "OUTPUT_LIMIT" {
		if !r.OutputTruncated || r.TypecheckPassed || r.ExitCode != -1 || !r.SandboxExecution.CleanupAttempted {
			return errors.New("lean statement checker: OUTPUT_LIMIT status lacks its infrastructure-failure disposition")
		}
		if err := validateOutputLimitCaptureEvidence(outputLimitCaptureEvidence{
			stdoutSHA256: r.StdoutSHA256, stderrSHA256: r.StderrSHA256,
			stdoutCapturedSHA256: r.StdoutCapturedSHA256, stderrCapturedSHA256: r.StderrCapturedSHA256,
			stdoutPrefix: r.StdoutPrefix, stderrPrefix: r.StderrPrefix,
			stdoutExcerpt: r.StdoutExcerpt, stderrExcerpt: r.StderrExcerpt,
			stdoutBytesObserved: r.StdoutBytesObserved, stderrBytesObserved: r.StderrBytesObserved,
			stdoutBytesCaptured: r.StdoutBytesCaptured, stderrBytesCaptured: r.StderrBytesCaptured,
			outputLimitBytes: r.OutputLimitBytes,
		}); err != nil {
			return fmt.Errorf("lean statement checker: output-limit evidence is invalid: %w", err)
		}
	} else {
		if r.OutputTruncated || hasOutputLimitCaptureEvidence(outputLimitCaptureEvidence{
			stdoutSHA256: r.StdoutSHA256, stderrSHA256: r.StderrSHA256,
			stdoutCapturedSHA256: r.StdoutCapturedSHA256, stderrCapturedSHA256: r.StderrCapturedSHA256,
			stdoutPrefix: r.StdoutPrefix, stderrPrefix: r.StderrPrefix,
			stdoutExcerpt: r.StdoutExcerpt, stderrExcerpt: r.StderrExcerpt,
			stdoutBytesObserved: r.StdoutBytesObserved, stderrBytesObserved: r.StderrBytesObserved,
			stdoutBytesCaptured: r.StdoutBytesCaptured, stderrBytesCaptured: r.StderrBytesCaptured,
			outputLimitBytes: r.OutputLimitBytes,
		}) {
			return errors.New("lean statement checker: truncated output must use the OUTPUT_LIMIT disposition")
		}
		if !validReceiptOutputDigest(r.StdoutExcerpt, r.StdoutSHA256) || !validReceiptOutputDigest(r.StderrExcerpt, r.StderrSHA256) {
			return errors.New("lean statement checker: complete output does not match its stdout/stderr digests")
		}
	}
	if !preflightFailure {
		if err := validateSandboxCleanupMetadata(r.SandboxExecution); err != nil {
			return fmt.Errorf("lean statement checker: sandbox cleanup receipt is inconsistent: %w", err)
		}
		if r.Status == "REJECTED" && (r.ExitCode <= 0 || r.SandboxExecution.ExitCode == nil || *r.SandboxExecution.ExitCode != r.ExitCode || r.SandboxExecution.TimedOut) {
			return errors.New("lean statement checker: REJECTED status is not bound to a completed nonzero sandbox exit")
		}
	}
	if r.ArtifactSnapshotSchema != LeanArtifactSnapshotSchemaVersion {
		return errors.New("lean statement checker: candidate handoff requires the current full-source/artifact snapshot schema")
	}
	if err := r.ProjectSnapshot.Validate(r.ProjectSnapshotSHA256); err != nil {
		return fmt.Errorf("lean statement checker: project snapshot is invalid: %w", err)
	}
	manifest, err := validateReceiptSnapshotLink(r.SnapshotID, r.SnapshotManifestPath, r.SnapshotManifestSHA256, r.ExecutionImage, r.ProjectSnapshot)
	if err != nil {
		return fmt.Errorf("lean statement checker: snapshot reference is invalid: %w", err)
	}
	if err := validateLeanSnapshotImageCheck(r.SnapshotImageCheck, manifest, r.ExecutionImage); err != nil {
		return fmt.Errorf("lean statement checker: snapshot image preflight is invalid: %w", err)
	}
	if preflightFailure {
		if err := validateFailedLeanSnapshotVersionCheck(r.LeanVersionCheck, r.LeanVersion, manifest, r.ExecutionImage); err != nil {
			return fmt.Errorf("lean statement checker: failed version preflight is not bound to the qualified snapshot: %w", err)
		}
		return nil
	}
	if r.SandboxExecution.ImportPreparation != nil && r.SandboxExecution.ImportPreparation.ConsumerSourceSHA256 != r.GeneratedSourceSHA256 {
		return errors.New("lean statement checker: import preparation consumer source binding differs")
	}
	if err := validateLeanSnapshotInvocation(r.SandboxExecution, r.ExecutionImage, strings.Join(manifest.ModuleSearchPath, ":"), "MathCaseStatement.lean", "MathCaseStatement.olean", true,
		leanSnapshotRuntime{Imports: r.Imports, Docker: r.SandboxExecution.DockerExecutable, Image: r.ExecutionImage, Manifest: manifest, ManifestPath: r.SnapshotManifestPath, ManifestSHA256: r.SnapshotManifestSHA256}); err != nil {
		return fmt.Errorf("lean statement checker: sandbox invocation is not bound to the qualified snapshot: %w", err)
	}
	if err := validateLeanVersionCheck(r.LeanVersionCheck, r.LeanVersion, manifest, r.ExecutionImage, r.SandboxExecution); err != nil {
		return fmt.Errorf("lean statement checker: version probe is not bound to the qualified snapshot: %w", err)
	}
	if r.Status == "PASSED" && (r.ExitCode != 0 || r.OutputTruncated || r.CompiledArtifactStatus != "CAPTURED") {
		return errors.New("lean statement checker: passing result lacks a complete isolated compilation artifact")
	}
	return nil
}

func (v LeanVerifier) writeStatementCheckReceipt(receipt LeanStatementCheckReceipt) error {
	if v.ReceiptRoot == "" {
		return errors.New("lean statement checker: durable receipt root is required")
	}
	root, err := filepath.Abs(v.ReceiptRoot)
	if err != nil {
		return fmt.Errorf("lean statement checker: resolve receipt root: %w", err)
	}
	if err := os.MkdirAll(root, 0o700); err != nil {
		return fmt.Errorf("lean statement checker: create receipt root: %w", err)
	}
	data, err := json.MarshalIndent(receipt, "", "  ")
	if err != nil {
		return fmt.Errorf("lean statement checker: encode receipt: %w", err)
	}
	data = append(data, '\n')
	path := filepath.Join(root, receipt.EvidenceID+".statement.json")
	file, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o600)
	if err != nil {
		return fmt.Errorf("lean statement checker: create append-only receipt: %w", err)
	}
	if _, err := file.Write(data); err != nil {
		_ = file.Close()
		return fmt.Errorf("lean statement checker: write receipt: %w", err)
	}
	if err := file.Sync(); err != nil {
		_ = file.Close()
		return fmt.Errorf("lean statement checker: flush receipt: %w", err)
	}
	if err := file.Close(); err != nil {
		return fmt.Errorf("lean statement checker: close receipt: %w", err)
	}
	return nil
}
