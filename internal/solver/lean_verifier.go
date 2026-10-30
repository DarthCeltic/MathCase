package solver

import (
	"bytes"
	"context"
	"crypto/rand"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"hash"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"sort"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/fsutil"
	"github.com/DarthCeltic/MathCase/internal/state"
	"github.com/DarthCeltic/MathCase/internal/verification"
)

const (
	defaultLeanToolchain = "leanprover/lean4:v4.33.1"
	defaultLeanTimeout   = 2 * time.Minute
	defaultOutputLimit   = 2 << 20
	maxLeanProofBytes    = 128 << 10
	maxLeanTermBytes     = 64 << 10
	leanVerifierSchema   = "mathcase-lean-verification-v3"
)

type LeanAttemptDisposition string

const (
	LeanAttemptProofPassed           LeanAttemptDisposition = "PROOF_KERNEL_AND_AXIOMS_PASSED"
	LeanAttemptRejectedProof         LeanAttemptDisposition = "REJECTED_PROOF"
	LeanAttemptInfrastructureFailure LeanAttemptDisposition = "INFRASTRUCTURE_FAILURE"
)

var (
	leanImportPattern = regexp.MustCompile(`^[A-Z][A-Za-z0-9_]*(\.[A-Za-z0-9_]+)*$`)
	unsafeLeanPattern = regexp.MustCompile(`(?i)(\brun_tac\b|\brunTermElabM\b|\bunsafe[A-Za-z0-9_]*|\bmacro_rules\b|\bcommand_elab\b|\bterm_elab\b|\btactic_elab\b|\bLean\.Elab\b|\bIO\.|\bSystem\.)`)
)

// LeanVerifier compiles a proposed proof in a pinned Lake project inside the
// configured Docker sandbox and audits the theorem's actual #print axioms output.
type LeanVerifier struct {
	DockerExecutable string
	SandboxImage     string
	// SnapshotManifestPath is an explicit invocation input. Lean execution
	// never inherits a manifest from the process environment.
	SnapshotManifestPath string
	// ImportPreparationReceiptPath is an optional, explicit local preparation;
	// unsupported or invalid preparations select the existing cold execution.
	ImportPreparationReceiptPath string
	importPreparationRoot        string // test-only owner-root injection; production uses cwd
	ProjectRoot                  string
	WorkspaceRoot                string
	ReceiptRoot                  string
	ExpectedToolchain            string
	Imports                      []string
	AllowedAxioms                []string
	Timeout                      time.Duration
	MaxOutputBytes               int
	Now                          func() time.Time
}

type LeanVerificationReceipt struct {
	SchemaVersion              string                 `json:"schema_version"`
	EvidenceID                 string                 `json:"evidence_id"`
	RecordedAtUTC              time.Time              `json:"recorded_at_utc"`
	ProblemID                  string                 `json:"problem_id"`
	InputProof                 string                 `json:"input_proof,omitempty"`
	ProblemStatementSHA256     string                 `json:"problem_statement_sha256"`
	ProofSHA256                string                 `json:"proof_sha256"`
	GeneratedSourceSHA256      string                 `json:"generated_source_sha256"`
	ArtifactSnapshotSchema     string                 `json:"artifact_snapshot_schema,omitempty"`
	GeneratedSource            string                 `json:"generated_source,omitempty"`
	CompiledArtifactStatus     string                 `json:"compiled_artifact_status,omitempty"`
	CompiledArtifact           []byte                 `json:"compiled_artifact_base64,omitempty"`
	CompiledArtifactSHA256     string                 `json:"compiled_artifact_sha256,omitempty"`
	CompiledArtifactSize       int64                  `json:"compiled_artifact_size_bytes,omitempty"`
	CompiledArtifactError      string                 `json:"compiled_artifact_error,omitempty"`
	ProjectSnapshotSHA256      string                 `json:"project_snapshot_sha256"`
	ProjectSnapshot            LeanProjectSnapshot    `json:"project_snapshot"`
	SnapshotID                 string                 `json:"snapshot_id"`
	SnapshotManifestPath       string                 `json:"snapshot_manifest_path"`
	SnapshotManifestSHA256     string                 `json:"snapshot_manifest_sha256"`
	SnapshotImageCheck         LeanSnapshotImageCheck `json:"snapshot_image_check"`
	Toolchain                  string                 `json:"toolchain"`
	LeanVersion                string                 `json:"lean_version"`
	LeanVersionCheck           LeanVersionCheck       `json:"lean_version_check"`
	LeanPreflightEvidenceID    string                 `json:"lean_preflight_evidence_id,omitempty"`
	LeanPreflightReceiptSHA256 string                 `json:"lean_preflight_receipt_sha256,omitempty"`
	LeanPreflightReceiptSchema string                 `json:"lean_preflight_receipt_schema,omitempty"`
	Imports                    []string               `json:"imports"`
	AllowedAxioms              []string               `json:"allowed_axioms"`
	ObservedAxioms             []string               `json:"observed_axioms"`
	KernelPassed               bool                   `json:"kernel_passed"`
	AxiomsPassed               bool                   `json:"axioms_passed"`
	Status                     string                 `json:"status"`
	Summary                    string                 `json:"summary"`
	AxiomOutput                string                 `json:"axiom_output,omitempty"`
	StdoutSHA256               string                 `json:"stdout_sha256"`
	StderrSHA256               string                 `json:"stderr_sha256"`
	StdoutExcerpt              string                 `json:"stdout_excerpt,omitempty"`
	StderrExcerpt              string                 `json:"stderr_excerpt,omitempty"`
	StdoutCapturedSHA256       string                 `json:"stdout_captured_sha256,omitempty"`
	StderrCapturedSHA256       string                 `json:"stderr_captured_sha256,omitempty"`
	StdoutPrefix               []byte                 `json:"stdout_prefix_base64,omitempty"`
	StderrPrefix               []byte                 `json:"stderr_prefix_base64,omitempty"`
	StdoutBytesObserved        int64                  `json:"stdout_bytes_observed,omitempty"`
	StderrBytesObserved        int64                  `json:"stderr_bytes_observed,omitempty"`
	StdoutBytesCaptured        int64                  `json:"stdout_bytes_captured,omitempty"`
	StderrBytesCaptured        int64                  `json:"stderr_bytes_captured,omitempty"`
	OutputLimitBytes           int64                  `json:"output_limit_bytes,omitempty"`
	OutputTruncated            bool                   `json:"output_truncated"`
	ExitCode                   int                    `json:"exit_code"`
	ElapsedMilliseconds        int64                  `json:"elapsed_milliseconds"`
	ExecutionIsolation         string                 `json:"execution_isolation"`
	ExecutionImage             string                 `json:"execution_image"`
	SandboxExecution           LeanSandboxExecution   `json:"sandbox_execution"`
}

type lakeManifest struct {
	PackagesDir string `json:"packagesDir"`
	Packages    []struct {
		Name  string `json:"name"`
		URL   string `json:"url"`
		Rev   string `json:"rev"`
		Scope string `json:"scope"`
	} `json:"packages"`
}

type boundedCapture struct {
	limit                int
	buffer               bytes.Buffer
	hasher               hash.Hash
	total                int64
	truncated            bool
	limitCallbackInvoked bool
	onLimit              func()
	onWrite              func([]byte)
}

func newBoundedCapture(limit int) *boundedCapture {
	return &boundedCapture{limit: limit, hasher: sha256.New()}
}

func (b *boundedCapture) Write(data []byte) (int, error) {
	if _, err := b.hasher.Write(data); err != nil {
		return 0, err
	}
	b.total += int64(len(data))
	remaining := b.limit - b.buffer.Len()
	if remaining > 0 {
		if remaining > len(data) {
			remaining = len(data)
		}
		_, _ = b.buffer.Write(data[:remaining])
	}
	if remaining < len(data) {
		b.truncated = true
		if !b.limitCallbackInvoked && b.onLimit != nil {
			b.limitCallbackInvoked = true
			b.onLimit()
		}
	}
	if b.onWrite != nil {
		b.onWrite(data)
	}
	return len(data), nil
}

func (b *boundedCapture) String() string { return b.buffer.String() }
func (b *boundedCapture) SHA256() string { return hex.EncodeToString(b.hasher.Sum(nil)) }

func (b *boundedCapture) CapturedSHA256() string {
	digest := sha256.Sum256(b.buffer.Bytes())
	return hex.EncodeToString(digest[:])
}

// Verify evaluates a proof candidate with a pinned Lean executable, preserves
// an immutable local receipt, and returns only the bounded receipt identity.
func (v LeanVerifier) Verify(ctx context.Context, problem domain.MathProblem, proof string) (Verification, error) {
	if ctx == nil {
		return Verification{}, errors.New("lean verifier: context is required")
	}
	if err := state.ValidateIdentifier("problem ID", problem.ID); err != nil {
		return Verification{}, err
	}
	if strings.TrimSpace(problem.Statement) == "" {
		return Verification{}, errors.New("lean verifier: informal problem statement is required for evidence binding")
	}
	if err := ValidateLeanStatement(problem.LeanStatement); err != nil {
		return Verification{}, fmt.Errorf("lean verifier: %w", err)
	}
	proofBody, err := normalizeLeanProof(proof)
	if err != nil {
		return Verification{}, err
	}

	imports, err := validateLeanImports(v.Imports)
	if err != nil {
		return Verification{}, err
	}
	now := v.Now
	if now == nil {
		now = time.Now
	}
	started := now().UTC()
	runtime, err := v.prepareLeanSnapshotRuntime(ctx, imports)
	if err != nil {
		return Verification{}, err
	}
	toolchain := runtime.Manifest.Toolchain
	allowedAxioms, err := validateAllowedAxioms(v.AllowedAxioms)
	if err != nil {
		return Verification{}, err
	}
	statementHash, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		return Verification{}, fmt.Errorf("lean verifier: hash problem statement: %w", err)
	}
	proofHash := sha256.Sum256([]byte(proof))
	source := generatedLeanSource(problem.LeanStatement, proofBody, imports)
	sourceHash := sha256.Sum256([]byte(source))
	evidenceID, err := newLeanEvidenceID()
	if err != nil {
		return Verification{}, fmt.Errorf("lean verifier: create evidence ID: %w", err)
	}

	timeout := v.Timeout
	if timeout <= 0 {
		timeout = defaultLeanTimeout
	}
	maxOutput := v.MaxOutputBytes
	if maxOutput <= 0 || maxOutput > defaultOutputLimit {
		maxOutput = defaultOutputLimit
	}
	workspace, err := v.makeWorkspace()
	if err != nil {
		return Verification{}, err
	}
	defer os.RemoveAll(workspace)
	const sourceName = "MathCaseCandidate.lean"
	const artifactName = "MathCaseCandidate.olean"
	candidatePath, err := writeLeanCandidateInput(workspace, sourceName, []byte(source))
	if err != nil {
		return Verification{}, fmt.Errorf("lean verifier: stage read-only candidate input: %w", err)
	}
	var leanVersionCheck LeanVersionCheck
	var preflightEvidenceID, preflightReceiptSHA256, preflightReceiptSchema string
	var versionErr error
	expectedToolchain := expectedLeanToolchain(v.ExpectedToolchain)
	cacheKey := leanRuntimePreflightCacheKey(v.ReceiptRoot, runtime.Image, runtime.ManifestSHA256, runtime.ManifestPath, runtime.Docker, imports, problem.ID, statementHash, toolchain, expectedToolchain)
	cached, cachedOK := takeLeanRuntimePreflightEvidence(cacheKey, now().UTC())
	if cachedOK && !leanRuntimePreflightEvidenceReceiptMatches(cached, runtime, imports, problem, statementHash, toolchain, expectedToolchain) {
		cachedOK = false
	}
	if !cachedOK {
		cached, cachedOK = readLeanRuntimePreflightEvidence(v.ReceiptRoot, cacheKey, now().UTC(), runtime, imports, problem, statementHash, toolchain, expectedToolchain)
		if cachedOK {
			storeLeanRuntimePreflightEvidence(cacheKey, cached)
		}
	}
	if cachedOK && leanRuntimePreflightEvidenceMatches(cached, runtime, imports, problem, statementHash, toolchain, expectedToolchain) {
		leanVersionCheck = cached.VersionCheck
		preflightEvidenceID = cached.EvidenceID
		preflightReceiptSHA256 = cached.ReceiptSHA256
		preflightReceiptSchema = leanRuntimePreflightSchema
	} else if statementEvidence, ok := readLeanStatementReadiness(ctx, v.ReceiptRoot, cacheKey, now().UTC(), runtime, imports, problem, statementHash, expectedToolchain); ok {
		leanVersionCheck = statementEvidence.VersionCheck
		preflightEvidenceID = statementEvidence.EvidenceID
		preflightReceiptSHA256 = statementEvidence.ReceiptSHA256
		preflightReceiptSchema = leanStatementCheckSchema
	} else {
		versionCtx, cancelVersion := newLeanPhaseContext(ctx, timeout)
		leanVersionCheck, versionErr = runLeanSnapshotVersion(versionCtx, runtime, maxOutput)
		cancelVersion()
	}
	if versionErr != nil {
		probe := LeanToolchainProbeFailureReceipt{
			SchemaVersion:          leanToolchainProbeFailureSchema,
			EvidenceID:             evidenceID,
			RecordedAtUTC:          now().UTC(),
			ProblemID:              problem.ID,
			ProblemStatementSHA256: statementHash,
			ProofSHA256:            hex.EncodeToString(proofHash[:]),
			GeneratedSourceSHA256:  hex.EncodeToString(sourceHash[:]),
			ProjectSnapshotSHA256:  runtime.Manifest.ProjectSnapshot.SHA256,
			ProjectSnapshot:        runtime.Manifest.ProjectSnapshot,
			SnapshotID:             runtime.Manifest.SnapshotID,
			SnapshotManifestPath:   runtime.ManifestPath,
			SnapshotManifestSHA256: runtime.ManifestSHA256,
			SnapshotImageCheck:     runtime.ImageCheck,
			Toolchain:              toolchain,
			ExpectedToolchain:      expectedLeanToolchain(v.ExpectedToolchain),
			Image:                  runtime.Image,
			Imports:                imports,
			Status:                 "TOOLCHAIN_PROBE_FAILED",
			ProofExecutionStarted:  false,
			FailureReason:          versionErr.Error(),
			LeanVersionCheck:       leanVersionCheck,
		}
		if receiptErr := v.writeToolchainProbeFailureReceipt(probe); receiptErr != nil {
			return Verification{}, fmt.Errorf("lean verifier: pinned Lean toolchain unavailable: %v; preserve failure receipt: %w", versionErr, receiptErr)
		}
		return Verification{EvidenceID: evidenceID, Summary: "Pinned Lean toolchain probe failed before the proof replay."}, fmt.Errorf("lean verifier: pinned Lean toolchain unavailable: %w", versionErr)
	}
	artifactRoot, err := prepareLeanArtifactOutput(workspace)
	if err != nil {
		return Verification{}, err
	}

	proofCtx, cancelProof := newLeanPhaseContext(ctx, timeout)
	prepared := v.prepareOptionalLeanImports(proofCtx, runtime, imports, workspace, hex.EncodeToString(sourceHash[:]))
	stdout, stderr, runErr, sandboxExecution := runLeanSnapshotPreparedCommand(proofCtx, runtime, candidatePath, sourceName, hex.EncodeToString(sourceHash[:]), artifactRoot, artifactName, []string{"--root=/mathcase/input", "-o", "/mathcase/output/" + artifactName, "/mathcase/input/" + sourceName}, maxOutput, prepared)
	proofContextErr := proofCtx.Err()
	cancelProof()
	ended := now().UTC()
	if ended.Before(started) {
		ended = started
	}
	outputTruncated := stdout.truncated || stderr.truncated
	compiledArtifact := []byte(nil)
	compiledArtifactStatus := "NOT_PRODUCED"
	var compiledArtifactErr error
	if !outputTruncated {
		compiledArtifact, compiledArtifactStatus, compiledArtifactErr = captureLeanCompiledArtifact(artifactRoot, artifactName)
	}
	kernelPassed := runErr == nil && !outputTruncated
	axiomOutput := ""
	var observedAxioms []string
	outputParsed := false
	if !outputTruncated {
		axiomOutput = stdout.String()
		observedAxioms, outputParsed = verification.ParseAxiomOutput("mathcase_candidate", axiomOutput)
	}
	axiomEvidenceID := evidenceID
	axiomPassed := false
	if kernelPassed && outputParsed {
		v2 := verification.AssessV2(verification.V2AxiomEvidence{
			ProblemID:              problem.ID,
			ProblemStatementSHA256: statementHash,
			ProofSHA256:            hex.EncodeToString(proofHash[:]),
			Theorem:                "mathcase_candidate",
			PrintOutput:            axiomOutput,
			ObservedAxioms:         observedAxioms,
			AllowedAxioms:          allowedAxioms,
			EvidenceID:             axiomEvidenceID,
		}, ended)
		axiomPassed = v2.Status == domain.VerificationPassed
	}

	status := "PASSED"
	summary := "Lean kernel accepted the proof and the axiom policy passed."
	exitCode := 0
	if outputTruncated {
		status = "OUTPUT_LIMIT"
		summary = "Lean output exceeded the configured capture limit; verification failed closed."
		kernelPassed = false
		axiomPassed = false
		exitCode = -1
	} else if proofContextErr != nil {
		status = "CANCELLED"
		if errors.Is(proofContextErr, context.DeadlineExceeded) {
			status = "TIMED_OUT"
		}
		summary = "Lean verification did not finish within the bounded isolated-container window."
		kernelPassed = false
		axiomPassed = false
		exitCode = -1
	} else if runErr != nil {
		var exitError *exec.ExitError
		if errors.As(runErr, &exitError) && leanContainerRejectedProof(runErr, stdout.String()+"\n"+stderr.String()) {
			status = "KERNEL_REJECTED"
			summary = "Lean rejected the candidate proof during compilation."
			exitCode = exitError.ExitCode()
		} else {
			status = "EXECUTION_ERROR"
			summary = "Lean could not execute the candidate verification process."
			kernelPassed = false
			axiomPassed = false
			exitCode = -1
		}
	} else if !outputParsed {
		status = "AXIOM_OUTPUT_INVALID"
		summary = "Lean compiled the candidate, but the theorem axiom output was missing or malformed."
		axiomPassed = false
	} else if !axiomPassed {
		status = "AXIOM_POLICY_REJECTED"
		summary = "Lean compiled the candidate, but its theorem depends on an axiom outside the approved set."
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
	if status == "PASSED" && compiledArtifactStatus != "CAPTURED" {
		kernelPassed = false
		axiomPassed = false
		if compiledArtifactStatus == "CAPTURE_FAILED" {
			status = "COMPILED_ARTIFACT_CAPTURE_FAILED"
			summary = "Lean accepted the proof and axiom policy, but its compiled artifact could not be captured; verification failed closed."
		} else {
			status = "COMPILED_ARTIFACT_MISSING"
			summary = "Lean accepted the proof and axiom policy but produced no compiled artifact snapshot; verification failed closed."
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

	receipt := LeanVerificationReceipt{
		SchemaVersion:              leanVerifierSchema,
		EvidenceID:                 evidenceID,
		RecordedAtUTC:              ended,
		ProblemID:                  problem.ID,
		InputProof:                 proof,
		ProblemStatementSHA256:     statementHash,
		ProofSHA256:                hex.EncodeToString(proofHash[:]),
		GeneratedSourceSHA256:      hex.EncodeToString(sourceHash[:]),
		ArtifactSnapshotSchema:     LeanArtifactSnapshotSchemaVersion,
		GeneratedSource:            source,
		CompiledArtifactStatus:     compiledArtifactStatus,
		CompiledArtifact:           compiledArtifact,
		CompiledArtifactSHA256:     compiledArtifactSHA256,
		CompiledArtifactSize:       compiledArtifactSize,
		CompiledArtifactError:      compiledArtifactError,
		ProjectSnapshotSHA256:      runtime.Manifest.ProjectSnapshot.SHA256,
		ProjectSnapshot:            runtime.Manifest.ProjectSnapshot,
		SnapshotID:                 runtime.Manifest.SnapshotID,
		SnapshotManifestPath:       runtime.ManifestPath,
		SnapshotManifestSHA256:     runtime.ManifestSHA256,
		SnapshotImageCheck:         runtime.ImageCheck,
		Toolchain:                  toolchain,
		LeanVersion:                leanVersionCheck.Version,
		LeanVersionCheck:           leanVersionCheck,
		LeanPreflightEvidenceID:    preflightEvidenceID,
		LeanPreflightReceiptSHA256: preflightReceiptSHA256,
		LeanPreflightReceiptSchema: preflightReceiptSchema,
		Imports:                    imports,
		AllowedAxioms:              allowedAxioms,
		ObservedAxioms:             observedAxioms,
		KernelPassed:               kernelPassed,
		AxiomsPassed:               axiomPassed,
		Status:                     status,
		Summary:                    summary,
		AxiomOutput:                axiomOutput,
		StdoutSHA256:               stdoutSHA256,
		StderrSHA256:               stderrSHA256,
		StdoutExcerpt:              stdoutExcerpt,
		StderrExcerpt:              stderrExcerpt,
		StdoutCapturedSHA256:       stdoutCapturedSHA256,
		StderrCapturedSHA256:       stderrCapturedSHA256,
		StdoutPrefix:               stdoutPrefix,
		StderrPrefix:               stderrPrefix,
		StdoutBytesObserved:        stdoutBytesObserved,
		StderrBytesObserved:        stderrBytesObserved,
		StdoutBytesCaptured:        stdoutBytesCaptured,
		StderrBytesCaptured:        stderrBytesCaptured,
		OutputLimitBytes:           outputLimitBytes,
		OutputTruncated:            outputTruncated,
		ExitCode:                   exitCode,
		ElapsedMilliseconds:        ended.Sub(started).Milliseconds(),
		ExecutionIsolation:         leanExecutionIsolation(runtime.Image),
		ExecutionImage:             runtime.Image,
		SandboxExecution:           sandboxExecution,
	}
	if err := v.writeReceipt(receipt); err != nil {
		return Verification{}, err
	}
	verificationResult := Verification{
		KernelPassed: kernelPassed,
		AxiomsPassed: axiomPassed,
		EvidenceID:   evidenceID,
		Summary:      summary,
	}
	if status == "KERNEL_REJECTED" {
		verificationResult.RepairFeedback = boundedLeanRepairFeedback(stdoutExcerpt, stderrExcerpt)
	}
	if status == "EXECUTION_ERROR" {
		return verificationResult, errors.New("lean verifier: local Lean process failed")
	}
	if status == "TIMED_OUT" {
		return verificationResult, context.DeadlineExceeded
	}
	if status == "CANCELLED" {
		return verificationResult, ctx.Err()
	}
	return verificationResult, nil
}

func boundedLeanRepairFeedback(stdout, stderr string) string {
	feedback := strings.TrimSpace(strings.Join([]string{stdout, stderr}, "\n"))
	feedback = strings.ToValidUTF8(feedback, "\uFFFD")
	const maxFeedbackRunes = 4000
	runes := []rune(feedback)
	if len(runes) > maxFeedbackRunes {
		feedback = string(runes[:maxFeedbackRunes-3]) + "..."
	}
	return feedback
}

// ValidateExecutionBoundReceipt checks that a newly versioned Lean receipt
// binds its exact proof input, generated source, captured process output, and
// pinned Docker invocation to the supplied M0 problem. It is intentionally
// stricter than validating receipt JSON or matching digest fields.
func ValidateExecutionBoundReceipt(receipt LeanVerificationReceipt, problem domain.MathProblem) error {
	checks, err := validateExecutionBoundReceiptInputs(receipt, problem)
	if err != nil {
		return err
	}
	return validatePassedExecutionBoundReceipt(receipt, checks)
}

// ValidateExecutionBoundAttemptReceipt reopens a completed Lean attempt and
// separates a rejected proof from infrastructure or evidence-capture failure.
// A successful result means only that the exact candidate was kernel/axiom
// checked; source-statement fidelity and any higher-level attackability claim
// remain separate gates.
func ValidateExecutionBoundAttemptReceipt(receipt LeanVerificationReceipt, problem domain.MathProblem) (LeanAttemptDisposition, error) {
	checks, err := validateExecutionBoundReceiptInputs(receipt, problem)
	if err != nil {
		return "", err
	}
	switch receipt.Status {
	case "PASSED":
		if err := validatePassedExecutionBoundReceipt(receipt, checks); err != nil {
			return "", err
		}
		return LeanAttemptProofPassed, nil
	case "KERNEL_REJECTED":
		if receipt.KernelPassed || receipt.AxiomsPassed || receipt.OutputTruncated || receipt.ExitCode <= 0 || receipt.ExitCode >= 125 ||
			checks.axiomOutputParsed || len(checks.observed) != 0 || receipt.CompiledArtifactStatus != "NOT_PRODUCED" ||
			!leanCompilerRejectedDiagnostic(receipt.StdoutExcerpt+"\n"+receipt.StderrExcerpt) {
			return "", errors.New("Lean attempt KERNEL_REJECTED status lacks a bounded compiler-rejection result")
		}
		if err := validateSandboxAttemptExecution(receipt); err != nil {
			return "", err
		}
		if receipt.SandboxExecution.TimedOut || receipt.SandboxExecution.ExitCode == nil || *receipt.SandboxExecution.ExitCode != receipt.ExitCode {
			return "", errors.New("Lean attempt KERNEL_REJECTED status does not match the completed sandbox exit code")
		}
		return LeanAttemptRejectedProof, nil
	case "AXIOM_POLICY_REJECTED":
		if !receipt.KernelPassed || receipt.AxiomsPassed || receipt.ExitCode != 0 || !checks.axiomOutputParsed || !hasUnapprovedAxiom(checks.observed, checks.allowedAxioms) {
			return "", errors.New("Lean attempt AXIOM_POLICY_REJECTED status does not match a compiled proof using an unapproved axiom")
		}
		if err := validateSandboxExecution(receipt); err != nil {
			return "", err
		}
		return LeanAttemptRejectedProof, nil
	case "OUTPUT_LIMIT":
		if !receipt.OutputTruncated || receipt.KernelPassed || receipt.AxiomsPassed || receipt.ExitCode != -1 ||
			checks.axiomOutputParsed || len(checks.observed) != 0 || receipt.AxiomOutput != "" || len(receipt.ObservedAxioms) != 0 ||
			!receipt.SandboxExecution.CleanupAttempted {
			return "", errors.New("Lean attempt OUTPUT_LIMIT status lacks a bounded infrastructure-failure receipt")
		}
		if err := validateSandboxAttemptExecution(receipt); err != nil {
			return "", err
		}
		return LeanAttemptInfrastructureFailure, nil
	case "EXECUTION_ERROR", "TIMED_OUT", "CANCELLED":
		if receipt.KernelPassed || receipt.AxiomsPassed || receipt.ExitCode != -1 {
			return "", fmt.Errorf("Lean attempt %s status contains incompatible proof or exit results", receipt.Status)
		}
		if receipt.Status == "TIMED_OUT" && !receipt.SandboxExecution.TimedOut {
			return "", errors.New("Lean attempt TIMED_OUT status lacks a timed-out sandbox receipt")
		}
		if receipt.Status != "TIMED_OUT" && receipt.SandboxExecution.TimedOut {
			return "", fmt.Errorf("Lean attempt %s status conflicts with a timed-out sandbox receipt", receipt.Status)
		}
		if err := validateSandboxAttemptExecution(receipt); err != nil {
			return "", err
		}
		if receipt.Status == "EXECUTION_ERROR" && (receipt.SandboxExecution.ExitCode == nil || *receipt.SandboxExecution.ExitCode == 0) {
			return "", errors.New("Lean attempt EXECUTION_ERROR lacks a nonzero sandbox process exit")
		}
		if receipt.Status == "CANCELLED" && !receipt.SandboxExecution.CleanupAttempted {
			return "", errors.New("Lean attempt CANCELLED lacks its sandbox cleanup attempt")
		}
		return LeanAttemptInfrastructureFailure, nil
	case "AXIOM_OUTPUT_INVALID":
		if !receipt.KernelPassed || receipt.AxiomsPassed || receipt.ExitCode != 0 || checks.axiomOutputParsed {
			return "", errors.New("Lean attempt AXIOM_OUTPUT_INVALID status does not match malformed axiom output")
		}
		if err := validateSandboxExecution(receipt); err != nil {
			return "", err
		}
		return LeanAttemptInfrastructureFailure, nil
	case "COMPILED_ARTIFACT_MISSING", "COMPILED_ARTIFACT_CAPTURE_FAILED":
		if receipt.KernelPassed || receipt.AxiomsPassed || receipt.ExitCode != 0 || !checks.axiomOutputParsed {
			return "", errors.New("Lean attempt compiled-artifact failure contains incompatible proof or axiom results")
		}
		if receipt.Status == "COMPILED_ARTIFACT_MISSING" && receipt.CompiledArtifactStatus != "NOT_PRODUCED" {
			return "", errors.New("Lean attempt COMPILED_ARTIFACT_MISSING status does not match its artifact receipt")
		}
		if receipt.Status == "COMPILED_ARTIFACT_CAPTURE_FAILED" && receipt.CompiledArtifactStatus != "CAPTURE_FAILED" {
			return "", errors.New("Lean attempt COMPILED_ARTIFACT_CAPTURE_FAILED status does not match its artifact receipt")
		}
		if err := validateSandboxExecution(receipt); err != nil {
			return "", err
		}
		return LeanAttemptInfrastructureFailure, nil
	default:
		return "", fmt.Errorf("Lean attempt status %q is not supported by the execution-bound attempt reader", receipt.Status)
	}
}

type executionBoundReceiptChecks struct {
	observed          []string
	allowedAxioms     map[string]struct{}
	axiomOutputParsed bool
}

func validateExecutionBoundReceiptInputs(receipt LeanVerificationReceipt, problem domain.MathProblem) (executionBoundReceiptChecks, error) {
	checks := executionBoundReceiptChecks{allowedAxioms: make(map[string]struct{})}
	if receipt.SchemaVersion != leanVerifierSchema {
		return checks, fmt.Errorf("Lean receipt schema %q lacks the current execution-bound input and sandbox fields", receipt.SchemaVersion)
	}
	if receipt.EvidenceID == "" || receipt.ProblemID != problem.ID {
		return checks, errors.New("Lean receipt identity does not match the dossier problem")
	}
	if receipt.LeanPreflightEvidenceID == "" {
		if receipt.LeanPreflightReceiptSHA256 != "" || receipt.LeanPreflightReceiptSchema != "" {
			return checks, errors.New("Lean receipt has a preflight receipt hash without its evidence identity")
		}
	} else if len(receipt.LeanPreflightReceiptSHA256) != 64 || !isLowerHex(receipt.LeanPreflightReceiptSHA256) {
		return checks, errors.New("Lean receipt preflight reference is incomplete or malformed")
	}
	if receipt.LeanPreflightReceiptSchema != "" && receipt.LeanPreflightReceiptSchema != leanRuntimePreflightSchema && receipt.LeanPreflightReceiptSchema != leanStatementCheckSchema {
		return checks, errors.New("Lean receipt preflight source schema is unsupported")
	}
	statementDigest, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		return checks, fmt.Errorf("recompute problem statement digest: %w", err)
	}
	if receipt.ProblemStatementSHA256 != statementDigest {
		return checks, errors.New("Lean receipt statement digest does not match the exact dossier statement")
	}
	if receipt.InputProof == "" {
		return checks, errors.New("Lean receipt does not retain its exact input proof")
	}
	proofDigest := sha256.Sum256([]byte(receipt.InputProof))
	if receipt.ProofSHA256 != hex.EncodeToString(proofDigest[:]) {
		return checks, errors.New("Lean receipt proof digest does not match its retained input proof")
	}
	proofBody, err := normalizeLeanProof(receipt.InputProof)
	if err != nil {
		return checks, fmt.Errorf("validate retained Lean proof: %w", err)
	}
	imports, err := validateLeanImports(receipt.Imports)
	if err != nil {
		return checks, err
	}
	source := generatedLeanSource(problem.LeanStatement, proofBody, imports)
	sourceDigest := sha256.Sum256([]byte(source))
	if receipt.GeneratedSourceSHA256 != hex.EncodeToString(sourceDigest[:]) {
		return checks, errors.New("Lean receipt generated-source digest does not match its retained proof and dossier statement")
	}
	if err := validateLeanArtifactSnapshot(receipt.ArtifactSnapshotSchema, receipt.GeneratedSource, source, receipt.GeneratedSourceSHA256,
		receipt.CompiledArtifactStatus, receipt.CompiledArtifact, receipt.CompiledArtifactSHA256, receipt.CompiledArtifactSize, receipt.CompiledArtifactError, receipt.Status == "PASSED"); err != nil {
		return checks, fmt.Errorf("Lean receipt source/compiled-artifact snapshot is invalid: %w", err)
	}
	if len(receipt.ProjectSnapshotSHA256) != 64 || !isLowerHex(receipt.ProjectSnapshotSHA256) || !strings.Contains(receipt.LeanVersion, "(version 4.33.1") {
		return checks, errors.New("Lean receipt is missing the pinned project snapshot or Lean 4.33.1 identity")
	}
	if receipt.ArtifactSnapshotSchema == LeanArtifactSnapshotSchemaVersion {
		if err := receipt.ProjectSnapshot.Validate(receipt.ProjectSnapshotSHA256); err != nil {
			return checks, fmt.Errorf("Lean receipt project snapshot is incomplete: %w", err)
		}
	}
	manifest, err := validateReceiptSnapshotLink(receipt.SnapshotID, receipt.SnapshotManifestPath, receipt.SnapshotManifestSHA256, receipt.ExecutionImage, receipt.ProjectSnapshot)
	if err != nil {
		return checks, err
	}
	if err := validateLeanSnapshotImageCheck(receipt.SnapshotImageCheck, manifest, receipt.ExecutionImage); err != nil {
		return checks, err
	}
	if err := validateLeanVersionCheck(receipt.LeanVersionCheck, receipt.LeanVersion, manifest, receipt.ExecutionImage, receipt.SandboxExecution); err != nil {
		return checks, fmt.Errorf("Lean receipt version probe is not execution-bound: %w", err)
	}
	var observed []string
	parsed := false
	if receipt.OutputTruncated {
		if receipt.Status != "OUTPUT_LIMIT" {
			return checks, errors.New("Lean receipt has truncated output without OUTPUT_LIMIT status")
		}
		if err := validateOutputLimitReceiptEvidence(receipt); err != nil {
			return checks, fmt.Errorf("Lean receipt output-limit evidence is invalid: %w", err)
		}
		if receipt.AxiomOutput != "" || len(receipt.ObservedAxioms) != 0 {
			return checks, errors.New("Lean receipt OUTPUT_LIMIT status cannot carry parsed axiom claims")
		}
	} else {
		if receipt.Status == "OUTPUT_LIMIT" || hasOutputLimitReceiptEvidence(receipt) {
			return checks, errors.New("Lean receipt carries output-limit evidence without a truncated output status")
		}
		if !validReceiptOutputDigest(receipt.StdoutExcerpt, receipt.StdoutSHA256) || !validReceiptOutputDigest(receipt.StderrExcerpt, receipt.StderrSHA256) {
			return checks, errors.New("Lean receipt captured output does not match its recorded stdout/stderr digests")
		}
		if receipt.AxiomOutput != receipt.StdoutExcerpt {
			return checks, errors.New("Lean receipt axiom output is not the exact captured stdout")
		}
		observed, parsed = verification.ParseAxiomOutput("mathcase_candidate", receipt.AxiomOutput)
		if parsed && !sameSortedStrings(observed, receipt.ObservedAxioms) {
			return checks, errors.New("Lean receipt observed axioms do not match its captured output")
		}
		if !parsed && len(receipt.ObservedAxioms) != 0 {
			return checks, errors.New("Lean receipt claims observed axioms without parseable captured output")
		}
	}
	if len(receipt.AllowedAxioms) == 0 {
		return checks, errors.New("Lean receipt has no explicit allowed-axiom policy")
	}
	allowed, err := validateAllowedAxioms(receipt.AllowedAxioms)
	if err != nil {
		return checks, err
	}
	checks.observed = observed
	checks.axiomOutputParsed = parsed
	for _, axiom := range allowed {
		checks.allowedAxioms[axiom] = struct{}{}
	}
	if err := validateSandboxExecutionInvocation(receipt); err != nil {
		return checks, err
	}
	return checks, nil
}

func validatePassedExecutionBoundReceipt(receipt LeanVerificationReceipt, checks executionBoundReceiptChecks) error {
	if !receipt.KernelPassed || !receipt.AxiomsPassed || receipt.Status != "PASSED" || receipt.ExitCode != 0 || !checks.axiomOutputParsed {
		return errors.New("Lean receipt is not a complete kernel and axiom pass")
	}
	if hasUnapprovedAxiom(checks.observed, checks.allowedAxioms) {
		return errors.New("Lean receipt contains an axiom outside its approved policy")
	}
	return validateSandboxExecution(receipt)
}

func hasUnapprovedAxiom(observed []string, allowed map[string]struct{}) bool {
	for _, axiom := range observed {
		if _, ok := allowed[axiom]; !ok {
			return true
		}
	}
	return false
}

func validReceiptOutputDigest(output, recorded string) bool {
	digest := sha256.Sum256([]byte(output))
	return recorded == hex.EncodeToString(digest[:])
}

func hasOutputLimitReceiptEvidence(receipt LeanVerificationReceipt) bool {
	return hasOutputLimitCaptureEvidence(outputLimitCaptureEvidence{
		stdoutSHA256: receipt.StdoutSHA256, stderrSHA256: receipt.StderrSHA256,
		stdoutCapturedSHA256: receipt.StdoutCapturedSHA256, stderrCapturedSHA256: receipt.StderrCapturedSHA256,
		stdoutPrefix: receipt.StdoutPrefix, stderrPrefix: receipt.StderrPrefix,
		stdoutExcerpt: receipt.StdoutExcerpt, stderrExcerpt: receipt.StderrExcerpt,
		stdoutBytesObserved: receipt.StdoutBytesObserved, stderrBytesObserved: receipt.StderrBytesObserved,
		stdoutBytesCaptured: receipt.StdoutBytesCaptured, stderrBytesCaptured: receipt.StderrBytesCaptured,
		outputLimitBytes: receipt.OutputLimitBytes,
	})
}

func validateOutputLimitReceiptEvidence(receipt LeanVerificationReceipt) error {
	return validateOutputLimitCaptureEvidence(outputLimitCaptureEvidence{
		stdoutSHA256: receipt.StdoutSHA256, stderrSHA256: receipt.StderrSHA256,
		stdoutCapturedSHA256: receipt.StdoutCapturedSHA256, stderrCapturedSHA256: receipt.StderrCapturedSHA256,
		stdoutPrefix: receipt.StdoutPrefix, stderrPrefix: receipt.StderrPrefix,
		stdoutExcerpt: receipt.StdoutExcerpt, stderrExcerpt: receipt.StderrExcerpt,
		stdoutBytesObserved: receipt.StdoutBytesObserved, stderrBytesObserved: receipt.StderrBytesObserved,
		stdoutBytesCaptured: receipt.StdoutBytesCaptured, stderrBytesCaptured: receipt.StderrBytesCaptured,
		outputLimitBytes: receipt.OutputLimitBytes,
	})
}

type outputLimitCaptureEvidence struct {
	stdoutSHA256, stderrSHA256                 string
	stdoutCapturedSHA256, stderrCapturedSHA256 string
	stdoutExcerpt, stderrExcerpt               string
	stdoutPrefix, stderrPrefix                 []byte
	stdoutBytesObserved, stderrBytesObserved   int64
	stdoutBytesCaptured, stderrBytesCaptured   int64
	outputLimitBytes                           int64
}

func hasOutputLimitCaptureEvidence(evidence outputLimitCaptureEvidence) bool {
	return evidence.stdoutCapturedSHA256 != "" || evidence.stderrCapturedSHA256 != "" ||
		evidence.stdoutPrefix != nil || evidence.stderrPrefix != nil ||
		evidence.stdoutBytesObserved != 0 || evidence.stderrBytesObserved != 0 ||
		evidence.stdoutBytesCaptured != 0 || evidence.stderrBytesCaptured != 0 || evidence.outputLimitBytes != 0
}

func validateOutputLimitCaptureEvidence(evidence outputLimitCaptureEvidence) error {
	if evidence.outputLimitBytes <= 0 || evidence.outputLimitBytes > defaultOutputLimit || evidence.stdoutSHA256 != "" || evidence.stderrSHA256 != "" {
		return errors.New("truncated output must pin an allowed per-stream cap and omit incomplete full-stream digests")
	}
	if err := validateTruncatedOutputStream("stdout", evidence.stdoutPrefix, evidence.stdoutExcerpt, evidence.stdoutCapturedSHA256,
		evidence.stdoutBytesObserved, evidence.stdoutBytesCaptured, evidence.outputLimitBytes); err != nil {
		return err
	}
	if err := validateTruncatedOutputStream("stderr", evidence.stderrPrefix, evidence.stderrExcerpt, evidence.stderrCapturedSHA256,
		evidence.stderrBytesObserved, evidence.stderrBytesCaptured, evidence.outputLimitBytes); err != nil {
		return err
	}
	if evidence.stdoutBytesObserved <= evidence.outputLimitBytes && evidence.stderrBytesObserved <= evidence.outputLimitBytes {
		return errors.New("no stream is proven to have exceeded the output cap")
	}
	return nil
}

func validateSandboxCleanupMetadata(execution LeanSandboxExecution) error {
	if !execution.CleanupAttempted {
		if execution.CleanupSucceeded || execution.CleanupExitCode != nil || execution.CleanupError != "" {
			return errors.New("Lean sandbox cleanup result exists without a cleanup attempt")
		}
		return nil
	}
	if execution.CleanupSucceeded {
		if execution.CleanupExitCode == nil || *execution.CleanupExitCode != 0 || execution.CleanupError != "" {
			return errors.New("successful Lean sandbox cleanup lacks a zero exit code or carries an error")
		}
		return nil
	}
	if execution.CleanupExitCode != nil && *execution.CleanupExitCode == 0 {
		return errors.New("failed Lean sandbox cleanup carries a successful exit code")
	}
	if execution.CleanupExitCode == nil && execution.CleanupError == "" {
		return errors.New("failed Lean sandbox cleanup lacks an exit code or error")
	}
	return nil
}

func validateTruncatedOutputStream(name string, prefix []byte, excerpt, capturedSHA256 string, observedBytes, capturedBytes, limitBytes int64) error {
	if observedBytes < 0 || capturedBytes < 0 || capturedBytes != int64(len(prefix)) || capturedBytes > limitBytes || observedBytes < capturedBytes {
		return fmt.Errorf("%s output byte counts do not match the retained bounded prefix", name)
	}
	expectedCaptured := observedBytes
	if expectedCaptured > limitBytes {
		expectedCaptured = limitBytes
	}
	if capturedBytes != expectedCaptured {
		return fmt.Errorf("%s output prefix length is inconsistent with observed bytes and cap", name)
	}
	digest := sha256.Sum256(prefix)
	if len(capturedSHA256) != 64 || !isLowerHex(capturedSHA256) || capturedSHA256 != hex.EncodeToString(digest[:]) {
		return fmt.Errorf("%s retained prefix does not match its SHA-256", name)
	}
	if excerpt != strings.ToValidUTF8(string(prefix), "\uFFFD") {
		return fmt.Errorf("%s text excerpt does not match the raw retained prefix", name)
	}
	return nil
}

func sameSortedStrings(left, right []string) bool {
	left = append([]string(nil), left...)
	right = append([]string(nil), right...)
	sort.Strings(left)
	sort.Strings(right)
	if len(left) != len(right) {
		return false
	}
	for index := range left {
		if left[index] != right[index] {
			return false
		}
	}
	return true
}

func validateSandboxExecutionInvocation(receipt LeanVerificationReceipt) error {
	execution := receipt.SandboxExecution
	if execution.DockerExecutable == "" || execution.ContainerName == "" || len(execution.CommandArgv) < 4 || execution.CommandArgv[0] != execution.DockerExecutable {
		return errors.New("Lean receipt is missing the captured Docker executable, container, or argv")
	}
	args := execution.CommandArgv[1:]
	required := []string{"run", "--rm", "--pull=never", "--network=none", "--read-only", "--user=65532:65532", "--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128"}
	for _, value := range required {
		if !containsArg(args, value) {
			return fmt.Errorf("Lean receipt Docker argv is missing required isolation argument %q", value)
		}
	}
	if !containsArg(args, "--name") || !containsArg(args, execution.ContainerName) || !containsArg(args, receipt.ExecutionImage) {
		return errors.New("Lean receipt Docker argv does not bind its container and immutable image")
	}
	if !leanSandboxImagePattern.MatchString(receipt.ExecutionImage) || !strings.Contains(receipt.ExecutionIsolation, receipt.ExecutionImage) {
		return errors.New("Lean receipt does not identify its immutable execution image")
	}
	if receipt.ArtifactSnapshotSchema == LeanArtifactSnapshotSchemaVersion {
		if execution.ExecutionMode != LeanExecutionModeDirect {
			return errors.New("Lean receipt does not identify the direct pinned Lean execution mode")
		}
		manifest, err := validateReceiptSnapshotLink(receipt.SnapshotID, receipt.SnapshotManifestPath, receipt.SnapshotManifestSHA256, receipt.ExecutionImage, receipt.ProjectSnapshot)
		if err != nil {
			return err
		}
		if err := validateLeanSnapshotImageCheck(receipt.SnapshotImageCheck, manifest, receipt.ExecutionImage); err != nil {
			return err
		}
		if execution.ImportPreparation != nil && execution.ImportPreparation.ConsumerSourceSHA256 != receipt.GeneratedSourceSHA256 {
			return errors.New("Lean receipt import preparation consumer source differs")
		}
		if err := validateLeanSnapshotInvocation(execution, receipt.ExecutionImage, strings.Join(manifest.ModuleSearchPath, ":"), "MathCaseCandidate.lean", "MathCaseCandidate.olean", true,
			leanSnapshotRuntime{Imports: receipt.Imports, Docker: execution.DockerExecutable, Image: receipt.ExecutionImage, Manifest: manifest, ManifestPath: receipt.SnapshotManifestPath, ManifestSHA256: receipt.SnapshotManifestSHA256}); err != nil {
			return fmt.Errorf("Lean receipt Docker argv is not bound to its qualified snapshot: %w", err)
		}
	} else if !containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/project,readonly") ||
		!containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/input,readonly") ||
		!containsArg(args, "env") || !containsArg(args, "lean") || !containsArg(args, "/mathcase/input/MathCaseCandidate.lean") {
		return errors.New("legacy Lean receipt Docker argv does not show the read-only project/input mounts and exact Lean candidate invocation")
	}
	return nil
}

func validateSandboxAttemptExecution(receipt LeanVerificationReceipt) error {
	if err := validateSandboxExecutionInvocation(receipt); err != nil {
		return err
	}
	execution := receipt.SandboxExecution
	if err := validateSandboxCleanupMetadata(execution); err != nil {
		return err
	}
	if execution.StartedAtUTC.IsZero() || execution.FinishedAtUTC.Before(execution.StartedAtUTC) {
		return errors.New("Lean receipt sandbox execution has invalid start or finish timestamps")
	}
	if execution.TimedOut {
		if !execution.CleanupAttempted {
			return errors.New("timed-out Lean sandbox execution lacks its container cleanup attempt")
		}
		return nil
	}
	if execution.ExitCode == nil {
		if (receipt.Status == "CANCELLED" || receipt.Status == "OUTPUT_LIMIT") && execution.CleanupAttempted {
			return nil
		}
		return errors.New("Lean sandbox execution has no completed process exit code")
	}
	return nil
}

func validateSandboxExecution(receipt LeanVerificationReceipt) error {
	if err := validateSandboxAttemptExecution(receipt); err != nil {
		return err
	}
	execution := receipt.SandboxExecution
	if execution.TimedOut || execution.ExitCode == nil || *execution.ExitCode != 0 {
		return errors.New("Lean receipt sandbox execution did not complete successfully")
	}
	if receipt.ExitCode != *execution.ExitCode {
		return errors.New("Lean receipt exit code does not match its sandbox process")
	}
	return nil
}

func validateLeanVersionCheck(check LeanVersionCheck, version string, manifest LeanSnapshotManifest, image string, proofExecution LeanSandboxExecution) error {
	if check.Version == "" || check.Version != version || check.OutputTruncated || hasOutputLimitCaptureEvidence(outputLimitCaptureEvidence{
		stdoutSHA256: check.StdoutSHA256, stderrSHA256: check.StderrSHA256,
		stdoutCapturedSHA256: check.StdoutCapturedSHA256, stderrCapturedSHA256: check.StderrCapturedSHA256,
		stdoutPrefix: check.StdoutPrefix, stderrPrefix: check.StderrPrefix,
		stdoutExcerpt: check.StdoutExcerpt, stderrExcerpt: check.StderrExcerpt,
		stdoutBytesObserved: check.StdoutBytesObserved, stderrBytesObserved: check.StderrBytesObserved,
		stdoutBytesCaptured: check.StdoutBytesCaptured, stderrBytesCaptured: check.StderrBytesCaptured,
		outputLimitBytes: check.OutputLimitBytes,
	}) {
		return errors.New("Lean version check is missing, inconsistent, or truncated")
	}
	if !validReceiptOutputDigest(check.StdoutExcerpt, check.StdoutSHA256) || !validReceiptOutputDigest(check.StderrExcerpt, check.StderrSHA256) {
		return errors.New("Lean version check output does not match its captured stdout/stderr digests")
	}
	if strings.TrimSpace(check.StdoutExcerpt+"\n"+check.StderrExcerpt) != check.Version || !strings.Contains(check.Version, "Lean (version 4.33.1") {
		return errors.New("Lean version identity does not parse from the exact captured output")
	}
	execution := check.Execution
	if execution.DockerExecutable == "" || execution.DockerExecutable != proofExecution.DockerExecutable || execution.ContainerName == "" || len(execution.CommandArgv) < 4 || execution.CommandArgv[0] != execution.DockerExecutable {
		return errors.New("Lean version check is missing its Docker executable, container, or argv")
	}
	if execution.StartedAtUTC.IsZero() || execution.FinishedAtUTC.Before(execution.StartedAtUTC) || execution.TimedOut || execution.ExitCode == nil || *execution.ExitCode != 0 {
		return errors.New("Lean version check did not complete successfully")
	}
	if proofExecution.StartedAtUTC.Before(execution.FinishedAtUTC) {
		return errors.New("Lean version check did not finish before the proof execution")
	}
	args := execution.CommandArgv[1:]
	required := []string{"run", "--rm", "--pull=never", "--network=none", "--read-only", "--user=65532:65532", "--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128"}
	for _, value := range required {
		if !containsArg(args, value) {
			return fmt.Errorf("Lean version check Docker argv is missing required isolation argument %q", value)
		}
	}
	if !containsArg(args, "--name") || !containsArg(args, execution.ContainerName) || !containsArg(args, image) || !leanSandboxImagePattern.MatchString(image) {
		return errors.New("Lean version check Docker argv does not bind its container and immutable image")
	}
	if proofExecution.ExecutionMode != LeanExecutionModeDirect {
		return errors.New("Lean version check is not using the qualified snapshot runtime")
	}
	if err := validateLeanSnapshotInvocation(execution, image, strings.Join(manifest.ModuleSearchPath, ":"), "", "", false); err != nil {
		return fmt.Errorf("Lean version check snapshot invocation is invalid: %w", err)
	}
	return nil
}

func validateFailedLeanSnapshotVersionCheck(check LeanVersionCheck, version string, manifest LeanSnapshotManifest, image string) error {
	if check.Version != version {
		return errors.New("failed Lean version-probe receipt has inconsistent version fields")
	}
	if check.OutputTruncated {
		if !check.Execution.CleanupAttempted {
			return errors.New("truncated Lean version probe lacks its container cleanup attempt")
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
			return fmt.Errorf("failed Lean version-probe prefix is invalid: %w", err)
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
			return errors.New("complete Lean version-probe output carries truncated-stream metadata")
		}
		if !validReceiptOutputDigest(check.StdoutExcerpt, check.StdoutSHA256) || !validReceiptOutputDigest(check.StderrExcerpt, check.StderrSHA256) {
			return errors.New("failed Lean version-probe output does not match its complete stream digests")
		}
	}
	execution := check.Execution
	if execution.StartedAtUTC.IsZero() || execution.FinishedAtUTC.Before(execution.StartedAtUTC) {
		return errors.New("failed Lean version-probe receipt has invalid execution timestamps")
	}
	if err := validateSandboxCleanupMetadata(execution); err != nil {
		return err
	}
	if check.OutputTruncated && check.Version != "" {
		return errors.New("truncated Lean version-probe receipt must not claim a complete version identity")
	}
	if (check.OutputTruncated || execution.TimedOut) && !execution.CleanupAttempted {
		return errors.New("interrupted Lean version probe lacks its container cleanup attempt")
	}
	if !execution.TimedOut && !check.OutputTruncated {
		if execution.ExitCode == nil {
			return errors.New("failed Lean version-probe receipt lacks a completed or interrupted process exit")
		}
		if *execution.ExitCode == 0 && (check.Version == "" || strings.Contains(check.Version, "Lean (version 4.33.1")) {
			return errors.New("failed Lean version-probe receipt describes a successful pinned compiler check")
		}
	}
	if err := validateLeanSnapshotInvocation(execution, image, strings.Join(manifest.ModuleSearchPath, ":"), "", "", false); err != nil {
		return fmt.Errorf("failed Lean version-probe invocation is invalid: %w", err)
	}
	return nil
}

func containsArgPrefix(args []string, prefix, suffix string) bool {
	for _, arg := range args {
		if strings.HasPrefix(arg, prefix) && strings.HasSuffix(arg, suffix) {
			return true
		}
	}
	return false
}

func containsArg(args []string, expected string) bool {
	for _, arg := range args {
		if arg == expected {
			return true
		}
	}
	return false
}

func normalizeLeanProof(proof string) (string, error) {
	if len(proof) > maxLeanProofBytes || strings.ContainsRune(proof, '\x00') {
		return "", errors.New("lean verifier: proof is missing or exceeds the local input limit")
	}
	trimmed := strings.TrimSpace(proof)
	if len(trimmed) < 2 || trimmed[:2] != "by" || (len(trimmed) > 2 && !isLeanSpace(trimmed[2]) && trimmed[2] != '\n') {
		return "", errors.New("lean verifier: proof candidate must be a Lean by-block")
	}
	body := strings.TrimRight(strings.TrimLeft(trimmed[2:], " \t\r\n"), " \t\r\n")
	if body == "" {
		return "", errors.New("lean verifier: proof candidate has an empty by-block")
	}
	if unsafeLeanPattern.MatchString(body) {
		return "", errors.New("lean verifier: proof uses a blocked command or metaprogramming token")
	}
	return dedentSubsequentLines(body), nil
}

func dedentSubsequentLines(block string) string {
	lines := strings.Split(block, "\n")
	if len(lines) < 2 {
		return block
	}
	minimum := -1
	for _, line := range lines[1:] {
		if strings.TrimSpace(line) == "" {
			continue
		}
		indent := len(line) - len(strings.TrimLeft(line, " \t"))
		if minimum == -1 || indent < minimum {
			minimum = indent
		}
	}
	if minimum <= 0 {
		return block
	}
	for index := 1; index < len(lines); index++ {
		line := lines[index]
		if strings.TrimSpace(line) == "" {
			lines[index] = ""
			continue
		}
		indent := len(line) - len(strings.TrimLeft(line, " \t"))
		if indent >= minimum {
			lines[index] = line[minimum:]
		}
	}
	return strings.Join(lines, "\n")
}

func isLeanSpace(value byte) bool {
	return value == ' ' || value == '\t' || value == '\r' || value == '\n'
}

func generatedLeanSource(statement, proofBody string, imports []string) string {
	var source strings.Builder
	for _, importPath := range imports {
		fmt.Fprintf(&source, "import %s\n", importPath)
	}
	if len(imports) > 0 {
		source.WriteByte('\n')
	}
	proposition, theoremSignature, err := normalizeLeanProblemStatement(statement)
	if err != nil {
		// Callers validate before source generation. Retaining the exact input
		// here keeps receipt reconstruction deterministic for malformed records.
		proposition = statement
	}
	if theoremSignature != "" {
		// Keep the declared telescope around the proof body. The model sees the
		// original theorem header, so a proof such as `by exact Nat.add_zero n`
		// must be checked with `n` in scope rather than against a closed `∀` goal.
		fmt.Fprintf(&source, "theorem mathcase_candidate %s := by\n", theoremSignature)
	} else {
		fmt.Fprintf(&source, "theorem mathcase_candidate : (%s) := by\n", proposition)
	}
	source.WriteString(indentLeanBlock(proofBody))
	source.WriteString("\n#print axioms mathcase_candidate\n")
	return source.String()
}

// ValidateLeanStatement accepts a proposition expression or one exact
// single-line theorem header. The theorem-header form preserves every binder
// and assumption when it is normalized to a proposition for checking.
func ValidateLeanStatement(statement string) error {
	trimmed := strings.TrimSpace(statement)
	if len(statement) > maxLeanTermBytes || trimmed == "" || strings.ContainsAny(statement, "\x00\r\n") {
		return errors.New("Lean statement must be a bounded, non-empty single-line target")
	}
	if strings.Contains(statement, ":=") || strings.Contains(statement, "#") || strings.Contains(statement, "--") ||
		strings.Contains(statement, "/-") || strings.Contains(statement, "-/") || strings.Contains(statement, ";") || unsafeLeanPattern.MatchString(statement) {
		return errors.New("Lean statement contains command-like or blocked metaprogramming syntax")
	}
	if strings.HasPrefix(trimmed, "theorem ") {
		_, _, err := normalizeLeanProblemStatement(trimmed)
		return err
	}
	for _, prefix := range []string{"lemma ", "axiom ", "def ", "opaque ", "example ", "namespace ", "section ", "instance ", "class ", "structure ", "inductive ", "private ", "protected ", "noncomputable ", "@["} {
		if strings.HasPrefix(trimmed, prefix) {
			return errors.New("unsupported Lean declaration or command; use a proposition expression or one theorem header with its binders and a top-level ':'")
		}
	}
	return nil
}

// normalizeLeanProblemStatement preserves the original problem text elsewhere
// in the case/context and returns its equivalent proposition for Lean. Only a
// single theorem declaration with explicit binder groups is accepted.
func normalizeLeanProblemStatement(statement string) (proposition, theoremSignature string, err error) {
	trimmed := strings.TrimSpace(statement)
	if !strings.HasPrefix(trimmed, "theorem ") {
		return statement, "", nil
	}
	rest := strings.TrimPrefix(trimmed, "theorem ")
	nameEnd := strings.IndexFunc(rest, func(r rune) bool { return r == ' ' || r == '\t' || r == '(' || r == '{' || r == '[' })
	if nameEnd <= 0 {
		return "", "", errors.New("unsupported theorem declaration: add a simple theorem name and one top-level ':'")
	}
	theoremName := rest[:nameEnd]
	if !validSimpleLeanDeclarationName(theoremName) {
		return "", "", errors.New("unsupported theorem declaration: theorem names must use simple dotted Lean identifiers")
	}
	declarationTail := rest[nameEnd:]
	parenDepth, bracketDepth, braceDepth := 0, 0, 0
	colonIndex := -1
	for index := 0; index < len(declarationTail); index++ {
		switch declarationTail[index] {
		case '(':
			parenDepth++
		case ')':
			parenDepth--
		case '[':
			bracketDepth++
		case ']':
			bracketDepth--
		case '{':
			braceDepth++
		case '}':
			braceDepth--
		case ':':
			if parenDepth == 0 && bracketDepth == 0 && braceDepth == 0 {
				if colonIndex >= 0 {
					return "", "", errors.New("unsupported theorem declaration: more than one top-level ':'")
				}
				colonIndex = index
			}
		}
		if parenDepth < 0 || bracketDepth < 0 || braceDepth < 0 {
			return "", "", errors.New("unsupported theorem declaration: unbalanced binders")
		}
	}
	if parenDepth != 0 || bracketDepth != 0 || braceDepth != 0 || colonIndex < 0 {
		return "", "", errors.New("unsupported theorem declaration: use balanced binder groups and one top-level ':'")
	}
	binders := strings.TrimSpace(declarationTail[:colonIndex])
	target := strings.TrimSpace(declarationTail[colonIndex+1:])
	if target == "" || (binders != "" && !validLeanDeclarationBinderGroups(binders)) {
		return "", "", errors.New("unsupported theorem declaration: preserve binders in explicit parentheses, braces, or instance brackets before the target")
	}
	if binders == "" {
		return target, strings.TrimSpace(declarationTail), nil
	}
	return "∀ " + binders + ", " + target, strings.TrimSpace(declarationTail), nil
}

func validSimpleLeanDeclarationName(name string) bool {
	for _, segment := range strings.Split(name, ".") {
		if segment == "" {
			return false
		}
		for index, character := range segment {
			valid := character == '_' || character >= 'A' && character <= 'Z' || character >= 'a' && character <= 'z'
			if index > 0 {
				valid = valid || character >= '0' && character <= '9' || character == '\''
			}
			if !valid {
				return false
			}
		}
	}
	return true
}

func validLeanDeclarationBinderGroups(binders string) bool {
	for index := 0; index < len(binders); {
		for index < len(binders) && (binders[index] == ' ' || binders[index] == '\t') {
			index++
		}
		if index >= len(binders) {
			break
		}
		if binders[index] != '(' && binders[index] != '{' && binders[index] != '[' {
			return false
		}
		stack := []byte{}
		for ; index < len(binders); index++ {
			character := binders[index]
			if character == '(' || character == '{' || character == '[' {
				stack = append(stack, character)
				continue
			}
			if character != ')' && character != '}' && character != ']' {
				continue
			}
			if len(stack) == 0 || (character == ')' && stack[len(stack)-1] != '(') ||
				(character == '}' && stack[len(stack)-1] != '{') || (character == ']' && stack[len(stack)-1] != '[') {
				return false
			}
			stack = stack[:len(stack)-1]
			if len(stack) == 0 {
				index++
				break
			}
		}
		if len(stack) != 0 {
			return false
		}
	}
	return true
}

func validateLeanImports(imports []string) ([]string, error) {
	result := append([]string(nil), imports...)
	seen := make(map[string]struct{}, len(result))
	for _, importPath := range result {
		if !leanImportPattern.MatchString(importPath) {
			return nil, fmt.Errorf("lean verifier: invalid configured import path %q", importPath)
		}
		if _, exists := seen[importPath]; exists {
			return nil, fmt.Errorf("lean verifier: duplicate configured import path %q", importPath)
		}
		seen[importPath] = struct{}{}
	}
	return result, nil
}

func validateAllowedAxioms(axioms []string) ([]string, error) {
	result := append([]string(nil), axioms...)
	if axioms == nil {
		result = []string{"Classical.choice", "Quot.sound", "propext"}
	}
	sort.Strings(result)
	seen := make(map[string]struct{}, len(result))
	for _, axiom := range result {
		if err := state.ValidateIdentifier("allowed Lean axiom", axiom); err != nil {
			return nil, err
		}
		if axiom == "sorryAx" {
			return nil, errors.New("lean verifier: sorryAx can never be allowed")
		}
		if _, exists := seen[axiom]; exists {
			return nil, fmt.Errorf("lean verifier: duplicate allowed axiom %q", axiom)
		}
		seen[axiom] = struct{}{}
	}
	return result, nil
}

func newLeanEvidenceID() (string, error) {
	var raw [16]byte
	if _, err := rand.Read(raw[:]); err != nil {
		return "", err
	}
	return "lean-" + hex.EncodeToString(raw[:]), nil
}

func (v LeanVerifier) inspectProject(ctx context.Context) (string, string, string, error) {
	if v.ProjectRoot == "" {
		return "", "", "", errors.New("lean verifier: pinned Lean project root is required")
	}
	root, err := filepath.Abs(v.ProjectRoot)
	if err != nil {
		return "", "", "", fmt.Errorf("lean verifier: resolve project root: %w", err)
	}
	root, err = filepath.EvalSymlinks(root)
	if err != nil {
		return "", "", "", fmt.Errorf("lean verifier: resolve project root: %w", err)
	}
	info, err := os.Stat(root)
	if err != nil || !info.IsDir() {
		return "", "", "", errors.New("lean verifier: pinned Lean project root is unavailable")
	}
	toolchainBytes, err := os.ReadFile(filepath.Join(root, "lean-toolchain"))
	if err != nil {
		return "", "", "", fmt.Errorf("lean verifier: read pinned toolchain: %w", err)
	}
	toolchain := strings.TrimSpace(string(toolchainBytes))
	expectedToolchain := v.ExpectedToolchain
	if expectedToolchain == "" {
		expectedToolchain = defaultLeanToolchain
	}
	if toolchain != expectedToolchain {
		return "", "", "", fmt.Errorf("lean verifier: project toolchain %q does not match required %q", toolchain, expectedToolchain)
	}
	manifestBytes, err := os.ReadFile(filepath.Join(root, "lake-manifest.json"))
	if err != nil {
		return "", "", "", fmt.Errorf("lean verifier: read pinned Lake manifest: %w", err)
	}
	var manifest lakeManifest
	if err := json.Unmarshal(manifestBytes, &manifest); err != nil {
		return "", "", "", fmt.Errorf("lean verifier: parse pinned Lake manifest: %w", err)
	}
	packagesDir := manifest.PackagesDir
	if packagesDir == "" {
		packagesDir = ".lake/packages"
	}
	if filepath.IsAbs(packagesDir) || filepath.Clean(packagesDir) == ".." || strings.HasPrefix(filepath.Clean(packagesDir), ".."+string(filepath.Separator)) {
		return "", "", "", errors.New("lean verifier: Lake package directory escapes the project")
	}
	packagesRoot := filepath.Join(root, packagesDir)
	resolvedPackagesRoot := ""
	if len(manifest.Packages) > 0 {
		resolvedPackagesRoot, err = filepath.EvalSymlinks(packagesRoot)
		if err != nil {
			return "", "", "", fmt.Errorf("lean verifier: Lake package directory is unavailable: %w", err)
		}
		if !isWithin(root, resolvedPackagesRoot) {
			return "", "", "", errors.New("lean verifier: Lake package directory symlink escapes the project")
		}
	}
	for _, pkg := range manifest.Packages {
		if err := state.ValidateIdentifier("Lake package name", pkg.Name); err != nil {
			return "", "", "", err
		}
		if len(pkg.Rev) != 40 || !isLowerHex(pkg.Rev) || pkg.URL == "" {
			return "", "", "", fmt.Errorf("lean verifier: Lake package %q has an invalid pin", pkg.Name)
		}
		packagePath := filepath.Join(packagesRoot, pkg.Name)
		resolvedPackagePath, err := filepath.EvalSymlinks(packagePath)
		if err != nil {
			return "", "", "", fmt.Errorf("lean verifier: pinned Lake package %q is unavailable: %w", pkg.Name, err)
		}
		if !isWithin(resolvedPackagesRoot, resolvedPackagePath) {
			return "", "", "", fmt.Errorf("lean verifier: Lake package %q escapes the pinned package directory", pkg.Name)
		}
		head, err := runGit(ctx, resolvedPackagePath, "rev-parse", "HEAD")
		if err != nil || head != pkg.Rev {
			return "", "", "", fmt.Errorf("lean verifier: Lake package %q does not match manifest revision", pkg.Name)
		}
		status, err := runGit(ctx, resolvedPackagePath, "status", "--porcelain=v1", "--untracked-files=all")
		if err != nil || status != "" {
			return "", "", "", fmt.Errorf("lean verifier: Lake package %q working tree is not clean", pkg.Name)
		}
		origin, err := runGit(ctx, resolvedPackagePath, "remote", "get-url", "origin")
		if err != nil || normalizeGitURL(origin) != normalizeGitURL(pkg.URL) {
			return "", "", "", fmt.Errorf("lean verifier: Lake package %q origin does not match manifest", pkg.Name)
		}
	}
	return root, "", toolchain, nil
}

func isLowerHex(value string) bool {
	for _, character := range value {
		if !(character >= '0' && character <= '9' || character >= 'a' && character <= 'f') {
			return false
		}
	}
	return true
}

func isWithin(root, path string) bool {
	return fsutil.IsWithin(root, path)
}

func normalizeGitURL(value string) string {
	return strings.TrimSuffix(strings.TrimRight(strings.ToLower(strings.TrimSpace(value)), "/"), ".git")
}

func runGit(ctx context.Context, directory string, args ...string) (string, error) {
	commandArgs := append([]string{"-C", directory}, args...)
	command := exec.CommandContext(ctx, "git", commandArgs...)
	var stdout, stderr bytes.Buffer
	command.Stdout = &stdout
	command.Stderr = &stderr
	if err := command.Run(); err != nil {
		return "", err
	}
	return strings.TrimSpace(stdout.String()), nil
}

func (v LeanVerifier) makeWorkspace() (string, error) {
	root := v.WorkspaceRoot
	if root == "" {
		root = filepath.Join(os.TempDir(), "mathcase-lean-verification")
	}
	if err := os.MkdirAll(root, 0o700); err != nil {
		return "", fmt.Errorf("lean verifier: create workspace root: %w", err)
	}
	workspace, err := os.MkdirTemp(root, "candidate-")
	if err != nil {
		return "", fmt.Errorf("lean verifier: create isolated workspace: %w", err)
	}
	return workspace, nil
}

func (v LeanVerifier) writeReceipt(receipt LeanVerificationReceipt) error {
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
		return fmt.Errorf("lean verifier: encode receipt: %w", err)
	}
	data = append(data, '\n')
	path := filepath.Join(root, receipt.EvidenceID+".json")
	file, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o600)
	if err != nil {
		return fmt.Errorf("lean verifier: create append-only receipt: %w", err)
	}
	if _, err := file.Write(data); err != nil {
		_ = file.Close()
		return fmt.Errorf("lean verifier: write receipt: %w", err)
	}
	if err := file.Sync(); err != nil {
		_ = file.Close()
		return fmt.Errorf("lean verifier: flush receipt: %w", err)
	}
	if err := file.Close(); err != nil {
		return fmt.Errorf("lean verifier: close receipt: %w", err)
	}
	return nil
}

func indentLeanBlock(block string) string {
	var indented strings.Builder
	for _, line := range strings.Split(block, "\n") {
		indented.WriteString("  ")
		indented.WriteString(line)
		indented.WriteByte('\n')
	}
	return indented.String()
}
