package solver

import (
	"bufio"
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	leanRandomizedCheckSchema           = "mathcase-lean-randomized-check-v5"
	maxRandomizedCases                  = 256
	maxRandomizedBinders                = 64
	maxRandomizedImplicationAntecedents = 512
)

var (
	leanSampleNamePattern  = regexp.MustCompile(`^[A-Za-z_][A-Za-z0-9_]*$`)
	leanSampleValuePattern = regexp.MustCompile(`^(true|false|-?[0-9]+)$`)
)

// LeanSampleBinder declares one explicit, nondependent argument accepted by
// the bounded local sampler.
type LeanSampleBinder struct {
	Name     string `json:"name"`
	LeanType string `json:"lean_type"`
}

// LeanRandomizedCheckRequest contains a typed proposition body and concrete
// assignments. The caller is responsible for deriving cases reproducibly.
type LeanRandomizedCheckRequest struct {
	Problem                domain.MathProblem
	Seed                   string
	Binders                []LeanSampleBinder
	ClaimBody              string
	HypothesesBody         string
	ImplicationAntecedents []string
	ConclusionBody         string
	ConclusionBinderCount  int
	HasHypotheses          bool
	Cases                  [][]string
}

type LeanRandomizedCaseResult struct {
	Index          int      `json:"index"`
	Values         []string `json:"values"`
	ClaimHolds     *bool    `json:"claim_holds,omitempty"`
	HypothesesHold *bool    `json:"hypotheses_hold,omitempty"`
}

// LeanRandomizedCheckReceipt records bounded instance evaluations. A passing
// sample set is not evidence that a universal proposition is true.
type LeanRandomizedCheckReceipt struct {
	SchemaVersion              string                     `json:"schema_version"`
	EvidenceID                 string                     `json:"evidence_id"`
	RecordedAtUTC              time.Time                  `json:"recorded_at_utc"`
	ProblemID                  string                     `json:"problem_id"`
	ProblemStatementSHA256     string                     `json:"problem_statement_sha256"`
	PropositionSHA256          string                     `json:"proposition_sha256"`
	GeneratedSourceSHA256      string                     `json:"generated_source_sha256"`
	ProjectSnapshotSHA256      string                     `json:"project_snapshot_sha256"`
	ProjectSnapshot            LeanProjectSnapshot        `json:"project_snapshot"`
	SnapshotID                 string                     `json:"snapshot_id"`
	SnapshotManifestPath       string                     `json:"snapshot_manifest_path"`
	SnapshotManifestSHA256     string                     `json:"snapshot_manifest_sha256"`
	SnapshotImageCheck         LeanSnapshotImageCheck     `json:"snapshot_image_check"`
	ArtifactSnapshotSchema     string                     `json:"artifact_snapshot_schema"`
	GeneratedSource            string                     `json:"generated_source"`
	CompiledArtifactStatus     string                     `json:"compiled_artifact_status"`
	CompiledArtifact           []byte                     `json:"compiled_artifact_base64,omitempty"`
	CompiledArtifactSHA256     string                     `json:"compiled_artifact_sha256,omitempty"`
	CompiledArtifactSize       int64                      `json:"compiled_artifact_size_bytes,omitempty"`
	CompiledArtifactError      string                     `json:"compiled_artifact_error,omitempty"`
	Toolchain                  string                     `json:"toolchain"`
	LeanVersion                string                     `json:"lean_version"`
	LeanVersionCheck           LeanVersionCheck           `json:"lean_version_check"`
	Imports                    []string                   `json:"imports"`
	Seed                       string                     `json:"seed"`
	Binders                    []LeanSampleBinder         `json:"binders"`
	ClaimBody                  string                     `json:"claim_body"`
	HypothesesBody             string                     `json:"hypotheses_body"`
	ImplicationAntecedents     []string                   `json:"implication_antecedents,omitempty"`
	ConclusionBody             string                     `json:"conclusion_body,omitempty"`
	ConclusionBinderCount      int                        `json:"conclusion_binder_count,omitempty"`
	HasHypotheses              bool                       `json:"has_hypotheses"`
	SampleCount                int                        `json:"sample_count"`
	TestsRun                   int                        `json:"tests_run"`
	Cases                      []LeanRandomizedCaseResult `json:"cases"`
	CounterexampleCaseIndices  []int                      `json:"counterexample_case_indices"`
	HypothesisWitnessCaseIndex *int                       `json:"hypothesis_witness_case_index,omitempty"`
	Status                     string                     `json:"status"`
	Summary                    string                     `json:"summary"`
	StdoutSHA256               string                     `json:"stdout_sha256"`
	StderrSHA256               string                     `json:"stderr_sha256"`
	StdoutExcerpt              string                     `json:"stdout_excerpt,omitempty"`
	StderrExcerpt              string                     `json:"stderr_excerpt,omitempty"`
	OutputTruncated            bool                       `json:"output_truncated"`
	ExitCode                   int                        `json:"exit_code"`
	ElapsedMilliseconds        int64                      `json:"elapsed_milliseconds"`
	ExecutionIsolation         string                     `json:"execution_isolation"`
	ExecutionImage             string                     `json:"execution_image"`
	SandboxExecution           LeanSandboxExecution       `json:"sandbox_execution"`
}

// CheckRandomizedCases evaluates a bounded set of concrete assignments in the
// selected pinned Lean project and persists results for each completed case.
func (v LeanVerifier) CheckRandomizedCases(ctx context.Context, request LeanRandomizedCheckRequest) (LeanRandomizedCheckReceipt, error) {
	if ctx == nil {
		return LeanRandomizedCheckReceipt{}, errors.New("lean randomized checker: context is required")
	}
	if err := validateRandomizedRequest(request); err != nil {
		return LeanRandomizedCheckReceipt{}, err
	}
	imports, err := validateLeanImports(v.Imports)
	if err != nil {
		return LeanRandomizedCheckReceipt{}, err
	}
	runtime, err := v.prepareLeanSnapshotRuntime(ctx, imports)
	if err != nil {
		return LeanRandomizedCheckReceipt{}, err
	}
	toolchain := runtime.Manifest.Toolchain
	statementHash, err := domain.ProblemStatementDigest(request.Problem.ID, request.Problem.Statement, request.Problem.LeanStatement)
	if err != nil {
		return LeanRandomizedCheckReceipt{}, fmt.Errorf("lean randomized checker: hash problem statement: %w", err)
	}
	propositionHash := sha256.Sum256([]byte(request.Problem.LeanStatement))
	evidenceID, err := newLeanEvidenceID()
	if err != nil {
		return LeanRandomizedCheckReceipt{}, fmt.Errorf("lean randomized checker: create evidence ID: %w", err)
	}
	source := generatedRandomizedCheckSource(request, imports)
	sourceHash := sha256.Sum256([]byte(source))

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
		return LeanRandomizedCheckReceipt{}, err
	}
	defer os.RemoveAll(workspace)
	if len(source) > 1<<20 {
		return LeanRandomizedCheckReceipt{}, errors.New("lean randomized checker: generated source exceeds the 1 MiB limit")
	}
	const sourceName = "MathCaseRandomized.lean"
	candidatePath, err := writeLeanCandidateInput(workspace, sourceName, []byte(source))
	if err != nil {
		return LeanRandomizedCheckReceipt{}, fmt.Errorf("lean randomized checker: stage read-only candidate input: %w", err)
	}
	started := now().UTC()
	versionCtx, cancelVersion := newLeanPhaseContext(ctx, timeout)
	leanVersionCheck, err := runLeanSnapshotVersion(versionCtx, runtime, maxOutput)
	cancelVersion()
	if err != nil {
		return LeanRandomizedCheckReceipt{}, fmt.Errorf("lean randomized checker: pinned Lean toolchain unavailable: %w", err)
	}
	artifactRoot, err := prepareLeanArtifactOutput(workspace)
	if err != nil {
		return LeanRandomizedCheckReceipt{}, err
	}
	const artifactName = "MathCaseRandomized.olean"
	proofCtx, cancelProof := newLeanPhaseContext(ctx, timeout)
	stdout, stderr, runErr, sandboxExecution := runLeanSnapshotCommand(proofCtx, runtime, candidatePath, sourceName, hex.EncodeToString(sourceHash[:]), artifactRoot, artifactName, []string{"--root=/mathcase/input", "-o", "/mathcase/output/" + artifactName, "/mathcase/input/" + sourceName}, maxOutput)
	proofContextErr := proofCtx.Err()
	cancelProof()
	compiledArtifact, compiledArtifactStatus, compiledArtifactErr := captureLeanCompiledArtifact(artifactRoot, artifactName)
	ended := now().UTC()
	if ended.Before(started) {
		ended = started
	}
	receipt := LeanRandomizedCheckReceipt{
		SchemaVersion:             leanRandomizedCheckSchema,
		EvidenceID:                evidenceID,
		RecordedAtUTC:             ended,
		ProblemID:                 request.Problem.ID,
		ProblemStatementSHA256:    statementHash,
		PropositionSHA256:         hex.EncodeToString(propositionHash[:]),
		GeneratedSourceSHA256:     hex.EncodeToString(sourceHash[:]),
		ProjectSnapshotSHA256:     runtime.Manifest.ProjectSnapshot.SHA256,
		ProjectSnapshot:           runtime.Manifest.ProjectSnapshot,
		SnapshotID:                runtime.Manifest.SnapshotID,
		SnapshotManifestPath:      runtime.ManifestPath,
		SnapshotManifestSHA256:    runtime.ManifestSHA256,
		SnapshotImageCheck:        runtime.ImageCheck,
		ArtifactSnapshotSchema:    LeanArtifactSnapshotSchemaVersion,
		GeneratedSource:           source,
		CompiledArtifactStatus:    compiledArtifactStatus,
		Toolchain:                 toolchain,
		LeanVersion:               leanVersionCheck.Version,
		LeanVersionCheck:          leanVersionCheck,
		Imports:                   imports,
		Seed:                      request.Seed,
		Binders:                   append([]LeanSampleBinder(nil), request.Binders...),
		ClaimBody:                 request.ClaimBody,
		HypothesesBody:            request.HypothesesBody,
		ImplicationAntecedents:    append([]string(nil), request.ImplicationAntecedents...),
		ConclusionBody:            request.ConclusionBody,
		ConclusionBinderCount:     request.ConclusionBinderCount,
		HasHypotheses:             request.HasHypotheses,
		SampleCount:               len(request.Cases),
		Cases:                     make([]LeanRandomizedCaseResult, len(request.Cases)),
		CounterexampleCaseIndices: []int{},
		Status:                    "INCOMPLETE",
		Summary:                   "Lean did not return a complete result for every randomized assignment.",
		StdoutSHA256:              stdout.SHA256(),
		StderrSHA256:              stderr.SHA256(),
		StdoutExcerpt:             stdout.String(),
		StderrExcerpt:             stderr.String(),
		OutputTruncated:           stdout.truncated || stderr.truncated,
		ExitCode:                  0,
		ElapsedMilliseconds:       ended.Sub(started).Milliseconds(),
		ExecutionIsolation:        leanExecutionIsolation(runtime.Image),
		ExecutionImage:            runtime.Image,
		SandboxExecution:          sandboxExecution,
	}
	if compiledArtifactStatus == "CAPTURED" {
		digest := sha256.Sum256(compiledArtifact)
		receipt.CompiledArtifact = compiledArtifact
		receipt.CompiledArtifactSHA256 = hex.EncodeToString(digest[:])
		receipt.CompiledArtifactSize = int64(len(compiledArtifact))
	} else if compiledArtifactErr != nil {
		receipt.CompiledArtifactStatus = "CAPTURE_FAILED"
		receipt.CompiledArtifactError = compiledArtifactErr.Error()
	}
	for index, values := range request.Cases {
		receipt.Cases[index] = LeanRandomizedCaseResult{Index: index, Values: append([]string(nil), values...)}
	}
	if receipt.OutputTruncated {
		receipt.Status = "OUTPUT_LIMIT"
		receipt.Summary = "Lean output exceeded the configured capture limit; randomized results were not accepted."
		receipt.ExitCode = -1
	} else if proofContextErr != nil {
		receipt.Status = "TIMED_OUT"
		if errors.Is(proofContextErr, context.Canceled) {
			receipt.Status = "CANCELLED"
		}
		receipt.Summary = "Lean randomized checking did not finish within the bounded isolated-container window."
		receipt.ExitCode = -1
	} else if runErr != nil {
		var exitError *exec.ExitError
		if errors.As(runErr, &exitError) && leanContainerRejectedProof(runErr, stdout.String()+"\n"+stderr.String()) {
			receipt.Status = "UNSUPPORTED"
			receipt.Summary = "Lean could not elaborate or execute the requested decidable sample expressions."
			receipt.ExitCode = exitError.ExitCode()
		} else {
			receipt.Status = "EXECUTION_ERROR"
			receipt.Summary = "Lean randomized checking process could not execute."
			receipt.ExitCode = -1
		}
	} else {
		claimResults, hypothesisResults, parseErr := parseRandomizedOutput(stdout.String(), len(request.Cases))
		if parseErr != nil {
			receipt.Status = "INCOMPLETE"
			receipt.Summary = parseErr.Error()
		} else {
			receipt.TestsRun = len(request.Cases)
			receipt.Status = "SAMPLES_PASS"
			receipt.Summary = "All recorded assignments satisfied the candidate; randomized samples do not prove the universal claim."
			for index := range request.Cases {
				claim := claimResults[index]
				hypothesis := hypothesisResults[index]
				receipt.Cases[index].ClaimHolds = &claim
				receipt.Cases[index].HypothesesHold = &hypothesis
				if !claim {
					receipt.CounterexampleCaseIndices = append(receipt.CounterexampleCaseIndices, index)
				}
				if hypothesis && receipt.HypothesisWitnessCaseIndex == nil {
					witnessIndex := index
					receipt.HypothesisWitnessCaseIndex = &witnessIndex
				}
			}
			if len(receipt.CounterexampleCaseIndices) > 0 {
				receipt.Status = "COUNTEREXAMPLE_OBSERVED"
				receipt.Summary = "At least one randomized assignment evaluated the candidate as false; the assignment requires an independent kernel-checked negation proof."
			}
		}
	}
	if (receipt.Status == "SAMPLES_PASS" || receipt.Status == "COUNTEREXAMPLE_OBSERVED") && receipt.CompiledArtifactStatus != "CAPTURED" {
		if receipt.CompiledArtifactStatus == "CAPTURE_FAILED" {
			receipt.Status = "COMPILED_ARTIFACT_CAPTURE_FAILED"
			receipt.Summary = "Lean evaluated the requested samples, but its compiled artifact could not be captured; randomized checking failed closed."
		} else {
			receipt.Status = "COMPILED_ARTIFACT_MISSING"
			receipt.Summary = "Lean evaluated the requested samples but produced no compiled artifact snapshot; randomized checking failed closed."
		}
	}
	if err := v.writeRandomizedCheckReceipt(receipt); err != nil {
		return LeanRandomizedCheckReceipt{}, err
	}
	return receipt, nil
}

func validateRandomizedRequest(request LeanRandomizedCheckRequest) error {
	if err := state.ValidateIdentifier("problem ID", request.Problem.ID); err != nil {
		return err
	}
	if strings.TrimSpace(request.Problem.Statement) == "" {
		return errors.New("lean randomized checker: informal problem statement is required for evidence binding")
	}
	if err := validateRandomizedLeanTerm("formal proposition", request.Problem.LeanStatement); err != nil {
		return err
	}
	if err := validateRandomizedLeanTerm("candidate body", request.ClaimBody); err != nil {
		return err
	}
	if err := validateRandomizedLeanTerm("hypotheses body", request.HypothesesBody); err != nil {
		return err
	}
	if request.ConclusionBinderCount < 0 || request.ConclusionBinderCount > len(request.Binders) {
		return errors.New("lean randomized checker: conclusion binder count is outside the request binder list")
	}
	if request.ConclusionBinderCount > 0 && (!request.HasHypotheses || len(request.ImplicationAntecedents) == 0) {
		return errors.New("lean randomized checker: lifted conclusion binders require an implication chain")
	}
	if request.HasHypotheses {
		if err := validateRandomizedLeanTerm("conclusion body", request.ConclusionBody); err != nil {
			return err
		}
		if len(request.ImplicationAntecedents) > maxRandomizedImplicationAntecedents {
			return fmt.Errorf("lean randomized checker: at most %d implication antecedents are allowed", maxRandomizedImplicationAntecedents)
		}
		for index, antecedent := range request.ImplicationAntecedents {
			if err := validateRandomizedLeanTerm(fmt.Sprintf("implication antecedent %d", index), antecedent); err != nil {
				return err
			}
		}
	} else if request.ConclusionBody != "" || request.HypothesesBody != "True" || len(request.ImplicationAntecedents) != 0 {
		return errors.New("lean randomized checker: hypothesis and conclusion fields do not match the no-hypothesis case")
	}
	if len(request.Seed) != 16 {
		return errors.New("lean randomized checker: seed must be a 16-character hexadecimal value")
	}
	if _, err := hex.DecodeString(request.Seed); err != nil {
		return errors.New("lean randomized checker: seed must be hexadecimal")
	}
	if len(request.Binders) > maxRandomizedBinders {
		return fmt.Errorf("lean randomized checker: at most %d binders are allowed", maxRandomizedBinders)
	}
	seen := make(map[string]struct{}, len(request.Binders))
	for _, binder := range request.Binders {
		if !leanSampleNamePattern.MatchString(binder.Name) {
			return fmt.Errorf("lean randomized checker: binder name %q is unsupported", binder.Name)
		}
		if _, exists := seen[binder.Name]; exists {
			return fmt.Errorf("lean randomized checker: binder name %q is repeated", binder.Name)
		}
		seen[binder.Name] = struct{}{}
		switch binder.LeanType {
		case "Nat", "Int", "Bool":
		default:
			return fmt.Errorf("lean randomized checker: binder type %q is unsupported", binder.LeanType)
		}
	}
	if len(request.Cases) == 0 || len(request.Cases) > maxRandomizedCases {
		return fmt.Errorf("lean randomized checker: sample count must be between 1 and %d", maxRandomizedCases)
	}
	for caseIndex, values := range request.Cases {
		if len(values) != len(request.Binders) {
			return fmt.Errorf("lean randomized checker: case %d has %d values for %d binders", caseIndex, len(values), len(request.Binders))
		}
		for binderIndex, value := range values {
			if !leanSampleValuePattern.MatchString(value) {
				return fmt.Errorf("lean randomized checker: case %d value %q is not a supported literal", caseIndex, value)
			}
			if request.Binders[binderIndex].LeanType == "Nat" && strings.HasPrefix(value, "-") {
				return fmt.Errorf("lean randomized checker: case %d has a negative Nat value", caseIndex)
			}
			if request.Binders[binderIndex].LeanType == "Bool" && value != "true" && value != "false" {
				return fmt.Errorf("lean randomized checker: case %d has a non-boolean Bool value", caseIndex)
			}
			if len(value) > 32 {
				return fmt.Errorf("lean randomized checker: case %d contains an overlong literal", caseIndex)
			}
		}
	}
	return nil
}

// ValidateRandomizedCheckReceipt reopens the captured source, compiled
// artifact, snapshot manifest, isolated process invocation, and parsed output
// for one exact randomized-check request. It does not interpret finite samples
// as proof of the universal proposition.
func ValidateRandomizedCheckReceipt(receipt LeanRandomizedCheckReceipt, problem domain.MathProblem, claimBody string, cases [][]string) error {
	if receipt.SchemaVersion != leanRandomizedCheckSchema || receipt.EvidenceID == "" || receipt.ProblemID != problem.ID {
		return errors.New("lean randomized receipt schema or problem identity is invalid")
	}
	statementDigest, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		return fmt.Errorf("recompute randomized-check statement digest: %w", err)
	}
	propositionDigest := sha256.Sum256([]byte(problem.LeanStatement))
	if receipt.ProblemStatementSHA256 != statementDigest || receipt.PropositionSHA256 != hex.EncodeToString(propositionDigest[:]) {
		return errors.New("lean randomized receipt is not bound to the exact problem statement and proposition")
	}
	if receipt.ClaimBody != claimBody || receipt.HypothesesBody != "True" || receipt.HasHypotheses || len(receipt.ImplicationAntecedents) != 0 || receipt.ConclusionBody != "" || receipt.ConclusionBinderCount != 0 {
		return errors.New("lean randomized receipt request differs from the exact claim and no-hypothesis contract")
	}
	if len(cases) == 0 || receipt.SampleCount != len(cases) || receipt.TestsRun != len(cases) || len(receipt.Cases) != len(cases) ||
		receipt.Status != "SAMPLES_PASS" || receipt.ExitCode != 0 || receipt.OutputTruncated || len(receipt.CounterexampleCaseIndices) != 0 ||
		receipt.CompiledArtifactStatus != "CAPTURED" || receipt.CompiledArtifactError != "" || receipt.ElapsedMilliseconds <= 0 {
		return errors.New("lean randomized receipt is incomplete, unsuccessful, or lacks the compiled artifact")
	}
	if receipt.ExecutionImage == "" || receipt.ExecutionIsolation != leanExecutionIsolation(receipt.ExecutionImage) || receipt.Toolchain != defaultLeanToolchain ||
		receipt.SandboxExecution.ExecutionMode != LeanExecutionModeDirect || receipt.SandboxExecution.ExitCode == nil || *receipt.SandboxExecution.ExitCode != 0 ||
		receipt.SandboxExecution.TimedOut || receipt.SandboxExecution.ContainerName == "" || receipt.SandboxExecution.StartedAtUTC.IsZero() ||
		receipt.SandboxExecution.FinishedAtUTC.Before(receipt.SandboxExecution.StartedAtUTC) || receipt.SandboxExecution.CleanupAttempted {
		return errors.New("lean randomized receipt lacks a successful bounded sandbox execution identity")
	}
	if len(receipt.Binders) != 0 {
		return errors.New("lean randomized receipt has unexpected binders for an exact boundary instance")
	}
	request := LeanRandomizedCheckRequest{
		Problem: problem, Seed: receipt.Seed, Binders: append([]LeanSampleBinder(nil), receipt.Binders...),
		ClaimBody: claimBody, HypothesesBody: "True", Cases: cloneRandomizedCases(cases),
	}
	request.ImplicationAntecedents = append([]string(nil), receipt.ImplicationAntecedents...)
	request.ConclusionBody = receipt.ConclusionBody
	request.ConclusionBinderCount = receipt.ConclusionBinderCount
	request.HasHypotheses = receipt.HasHypotheses
	request.HypothesesBody = receipt.HypothesesBody
	request.Binders = append([]LeanSampleBinder(nil), receipt.Binders...)
	expectedSource, err := ExpectedRandomizedCheckSource(request, receipt.Imports)
	if err != nil {
		return fmt.Errorf("validate retained randomized-check request: %w", err)
	}
	sourceHash := sha256.Sum256([]byte(expectedSource))
	if receipt.GeneratedSource != expectedSource || receipt.GeneratedSourceSHA256 != hex.EncodeToString(sourceHash[:]) {
		return errors.New("lean randomized receipt generated source does not match the exact typed request")
	}
	if err := validateLeanArtifactSnapshot(receipt.ArtifactSnapshotSchema, receipt.GeneratedSource, expectedSource, receipt.GeneratedSourceSHA256,
		receipt.CompiledArtifactStatus, receipt.CompiledArtifact, receipt.CompiledArtifactSHA256, receipt.CompiledArtifactSize, receipt.CompiledArtifactError, true); err != nil {
		return fmt.Errorf("lean randomized receipt source/compiled-artifact snapshot is invalid: %w", err)
	}
	if err := receipt.ProjectSnapshot.Validate(receipt.ProjectSnapshotSHA256); err != nil {
		return fmt.Errorf("lean randomized receipt project snapshot is invalid: %w", err)
	}
	manifest, err := validateReceiptSnapshotLink(receipt.SnapshotID, receipt.SnapshotManifestPath, receipt.SnapshotManifestSHA256, receipt.ExecutionImage, receipt.ProjectSnapshot)
	if err != nil {
		return err
	}
	if manifest.Toolchain != receipt.Toolchain {
		return errors.New("lean randomized receipt toolchain differs from its qualified snapshot")
	}
	if err := validateLeanSnapshotImageCheck(receipt.SnapshotImageCheck, manifest, receipt.ExecutionImage); err != nil {
		return err
	}
	if err := validateLeanSnapshotInvocation(receipt.SandboxExecution, receipt.ExecutionImage, strings.Join(manifest.ModuleSearchPath, ":"), "MathCaseRandomized.lean", "MathCaseRandomized.olean", true); err != nil {
		return fmt.Errorf("lean randomized receipt sandbox invocation is invalid: %w", err)
	}
	if err := validateLeanVersionCheck(receipt.LeanVersionCheck, receipt.LeanVersion, manifest, receipt.ExecutionImage, receipt.SandboxExecution); err != nil {
		return fmt.Errorf("lean randomized receipt version probe is invalid: %w", err)
	}
	if !validReceiptOutputDigest(receipt.StdoutExcerpt, receipt.StdoutSHA256) || !validReceiptOutputDigest(receipt.StderrExcerpt, receipt.StderrSHA256) {
		return errors.New("lean randomized receipt captured output does not match its stdout/stderr digests")
	}
	claimResults, hypothesisResults, err := parseRandomizedOutput(receipt.StdoutExcerpt, len(cases))
	if err != nil {
		return err
	}
	for index, expectedValues := range cases {
		result := receipt.Cases[index]
		if result.Index != index || !sameStrings(result.Values, expectedValues) || result.ClaimHolds == nil || !*result.ClaimHolds || !claimResults[index] ||
			result.HypothesesHold == nil || !*result.HypothesesHold || !hypothesisResults[index] {
			return fmt.Errorf("lean randomized receipt result for case %d does not match its exact input or successful captured output", index)
		}
	}
	if receipt.HypothesisWitnessCaseIndex == nil || *receipt.HypothesisWitnessCaseIndex != 0 {
		return errors.New("lean randomized receipt does not retain the expected no-hypothesis witness index")
	}
	return nil
}

// ExpectedRandomizedCheckSource deterministically reconstructs the exact Lean
// source for a retained randomized-check request. Receipt readers use it to
// ensure the captured bytes implement the typed request rather than merely
// containing its claimed proposition somewhere in the file.
func ExpectedRandomizedCheckSource(request LeanRandomizedCheckRequest, imports []string) (string, error) {
	if err := validateRandomizedRequest(request); err != nil {
		return "", err
	}
	validatedImports, err := validateLeanImports(imports)
	if err != nil {
		return "", err
	}
	return generatedRandomizedCheckSource(request, validatedImports), nil
}

func cloneRandomizedCases(cases [][]string) [][]string {
	cloned := make([][]string, len(cases))
	for index := range cases {
		cloned[index] = append([]string(nil), cases[index]...)
	}
	return cloned
}

func sameStrings(left, right []string) bool {
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

func validateRandomizedLeanTerm(label, term string) error {
	if len(term) == 0 || len(term) > maxLeanTermBytes || strings.TrimSpace(term) == "" || strings.ContainsAny(term, "\x00\r\n") {
		return fmt.Errorf("lean randomized checker: %s must be a bounded single-line Lean term", label)
	}
	if strings.Contains(term, ":=") || strings.Contains(term, "#") || strings.Contains(term, "--") || strings.Contains(term, "/-") || strings.Contains(term, "-/") || unsafeLeanPattern.MatchString(term) {
		return fmt.Errorf("lean randomized checker: %s contains command-like or blocked metaprogramming syntax", label)
	}
	return nil
}

func generatedRandomizedCheckSource(request LeanRandomizedCheckRequest, imports []string) string {
	var source strings.Builder
	for _, importPath := range imports {
		fmt.Fprintf(&source, "import %s\n", importPath)
	}
	if len(imports) > 0 {
		source.WriteByte('\n')
	}
	parameters := make([]string, len(request.Binders))
	for index, binder := range request.Binders {
		parameters[index] = "(" + binder.Name + " : " + binder.LeanType + ")"
	}
	formalTarget := request.ClaimBody
	if len(parameters) > 0 {
		formalTarget = "∀ " + strings.Join(parameters, " ") + ", (" + request.ClaimBody + ")"
	}
	if request.ConclusionBinderCount > 0 {
		writeConclusionUniversalNormalizationCheck(&source, request, formalTarget)
	} else {
		fmt.Fprintf(&source, "example : (%s) ↔ (%s) := by rfl\n", request.Problem.LeanStatement, formalTarget)
	}
	if request.HasHypotheses {
		writeImplicationDecompositionCheck(&source, request, parameters)
	}
	for index, values := range request.Cases {
		claimApplication := sampledLeanExpression(request.ClaimBody, parameters, values)
		hypothesesApplication := sampledLeanExpression(request.HypothesesBody, parameters, values)
		fmt.Fprintf(&source, "#eval IO.println (\"MATHCASE_CLAIM_%03d=\" ++ toString (decide (%s)))\n", index, claimApplication)
		fmt.Fprintf(&source, "#eval IO.println (\"MATHCASE_HYP_%03d=\" ++ toString (decide (%s)))\n", index, hypothesesApplication)
	}
	return source.String()
}

func writeConclusionUniversalNormalizationCheck(source *strings.Builder, request LeanRandomizedCheckRequest, normalizedTarget string) {
	outerBinderCount := len(request.Binders) - request.ConclusionBinderCount
	usedNames := make(map[string]struct{}, len(request.Binders)+len(request.ImplicationAntecedents)+2)
	for _, binder := range request.Binders {
		usedNames[binder.Name] = struct{}{}
	}
	originalName := freshLeanName("mathcase_original", usedNames)
	normalizedName := freshLeanName("mathcase_normalized", usedNames)
	antecedentNames := make([]string, len(request.ImplicationAntecedents))
	for index := range antecedentNames {
		antecedentNames[index] = freshLeanName(fmt.Sprintf("mathcase_assumption_%d", index), usedNames)
	}
	fmt.Fprintf(source, "example : (%s) ↔ (%s) := by\n", request.Problem.LeanStatement, normalizedTarget)
	source.WriteString("  constructor\n")
	fmt.Fprintf(source, "  · intro %s\n", originalName)
	for _, binder := range request.Binders[:outerBinderCount] {
		fmt.Fprintf(source, "    intro %s\n", binder.Name)
	}
	for _, binder := range request.Binders[outerBinderCount:] {
		fmt.Fprintf(source, "    intro %s\n", binder.Name)
	}
	for _, name := range antecedentNames {
		fmt.Fprintf(source, "    intro %s\n", name)
	}
	fmt.Fprintf(source, "    exact %s", originalName)
	for _, binder := range request.Binders[:outerBinderCount] {
		fmt.Fprintf(source, " %s", binder.Name)
	}
	for _, name := range antecedentNames {
		fmt.Fprintf(source, " %s", name)
	}
	for _, binder := range request.Binders[outerBinderCount:] {
		fmt.Fprintf(source, " %s", binder.Name)
	}
	source.WriteByte('\n')
	fmt.Fprintf(source, "  · intro %s\n", normalizedName)
	for _, binder := range request.Binders[:outerBinderCount] {
		fmt.Fprintf(source, "    intro %s\n", binder.Name)
	}
	for _, name := range antecedentNames {
		fmt.Fprintf(source, "    intro %s\n", name)
	}
	for _, binder := range request.Binders[outerBinderCount:] {
		fmt.Fprintf(source, "    intro %s\n", binder.Name)
	}
	fmt.Fprintf(source, "    exact %s", normalizedName)
	for _, binder := range request.Binders[:outerBinderCount] {
		fmt.Fprintf(source, " %s", binder.Name)
	}
	for _, binder := range request.Binders[outerBinderCount:] {
		fmt.Fprintf(source, " %s", binder.Name)
	}
	for _, name := range antecedentNames {
		fmt.Fprintf(source, " %s", name)
	}
	source.WriteByte('\n')
}

func writeImplicationDecompositionCheck(source *strings.Builder, request LeanRandomizedCheckRequest, parameters []string) {
	antecedents := append([]string(nil), request.ImplicationAntecedents...)
	if len(antecedents) == 0 {
		antecedents = []string{request.HypothesesBody}
	}
	antecedentCount := len(antecedents)
	universalPrefix := ""
	if len(parameters) > 0 {
		universalPrefix = "∀ " + strings.Join(parameters, " ") + ", "
	}
	claimChain := nestedImplicationExpression(antecedents, request.ConclusionBody)
	hypothesisConjunction := nestedConjunctionExpression(antecedents)
	writeUniversalReflexivityCheck(source, parameters, request.Binders, request.ClaimBody, claimChain)
	writeUniversalReflexivityCheck(source, parameters, request.Binders, request.HypothesesBody, hypothesisConjunction)
	fmt.Fprintf(source, "example : %s(%s) ↔ ((%s) → (%s)) := by\n", universalPrefix, request.ClaimBody, request.HypothesesBody, request.ConclusionBody)
	for _, binder := range request.Binders {
		fmt.Fprintf(source, "  intro %s\n", binder.Name)
	}
	usedNames := make(map[string]struct{}, len(request.Binders)+antecedentCount+2)
	for _, binder := range request.Binders {
		usedNames[binder.Name] = struct{}{}
	}
	claimName := freshLeanName("mathcase_claim", usedNames)
	combinedName := freshLeanName("mathcase_hypotheses", usedNames)
	source.WriteString("  constructor\n")
	fmt.Fprintf(source, "  · intro %s %s\n    exact %s", claimName, combinedName, claimName)
	for index := 0; index < antecedentCount; index++ {
		fmt.Fprintf(source, " %s", conjunctionProjection(combinedName, index, antecedentCount))
	}
	source.WriteByte('\n')
	fmt.Fprintf(source, "  · intro %s", claimName)
	antecedentNames := make([]string, antecedentCount)
	for index := range antecedentNames {
		antecedentNames[index] = freshLeanName(fmt.Sprintf("mathcase_antecedent_%d", index), usedNames)
		fmt.Fprintf(source, " %s", antecedentNames[index])
	}
	fmt.Fprintf(source, "\n    exact %s %s\n", claimName, nestedConjunctionTerm(antecedentNames))
}

func writeUniversalReflexivityCheck(source *strings.Builder, parameters []string, binders []LeanSampleBinder, left, right string) {
	source.WriteString("example : ")
	if len(parameters) > 0 {
		fmt.Fprintf(source, "∀ %s, ", strings.Join(parameters, " "))
	}
	fmt.Fprintf(source, "(%s) ↔ (%s) := by\n", left, right)
	for _, binder := range binders {
		fmt.Fprintf(source, "  intro %s\n", binder.Name)
	}
	source.WriteString("  rfl\n")
}

func nestedImplicationExpression(antecedents []string, conclusion string) string {
	expression := "(" + conclusion + ")"
	for index := len(antecedents) - 1; index >= 0; index-- {
		expression = "(" + antecedents[index] + ") → " + expression
	}
	return expression
}

func nestedConjunctionExpression(antecedents []string) string {
	if len(antecedents) == 0 {
		return "True"
	}
	expression := antecedents[len(antecedents)-1]
	for index := len(antecedents) - 2; index >= 0; index-- {
		expression = "(" + antecedents[index] + ") ∧ (" + expression + ")"
	}
	return expression
}

func conjunctionProjection(base string, index, count int) string {
	projection := base
	for step := 0; step < index; step++ {
		projection += ".2"
	}
	if index < count-1 {
		projection += ".1"
	}
	return projection
}

func nestedConjunctionTerm(values []string) string {
	if len(values) == 0 {
		return "True.intro"
	}
	term := values[len(values)-1]
	for index := len(values) - 2; index >= 0; index-- {
		term = "⟨" + values[index] + ", " + term + "⟩"
	}
	return term
}

func freshLeanName(base string, used map[string]struct{}) string {
	candidate := base
	for suffix := 1; ; suffix++ {
		if _, exists := used[candidate]; !exists {
			used[candidate] = struct{}{}
			return candidate
		}
		candidate = fmt.Sprintf("%s_%d", base, suffix)
	}
}
func sampledLeanExpression(body string, parameters, values []string) string {
	if len(parameters) == 0 {
		return "(" + body + ")"
	}
	applications := make([]string, len(values))
	for index, value := range values {
		applications[index] = "(" + value + ")"
	}
	return "((fun " + strings.Join(parameters, " ") + " => (" + body + ")) " + strings.Join(applications, " ") + ")"
}

func parseRandomizedOutput(output string, sampleCount int) (map[int]bool, map[int]bool, error) {
	claimResults := make(map[int]bool, sampleCount)
	hypothesisResults := make(map[int]bool, sampleCount)
	scanner := bufio.NewScanner(strings.NewReader(output))
	for scanner.Scan() {
		line := strings.TrimSpace(scanner.Text())
		for index := 0; index < sampleCount; index++ {
			claimMarker := fmt.Sprintf("MATHCASE_CLAIM_%03d=", index)
			if strings.HasPrefix(line, claimMarker) {
				value, ok := parseLeanBool(strings.TrimPrefix(line, claimMarker))
				if !ok {
					return nil, nil, fmt.Errorf("lean randomized checker: Lean returned an invalid claim result for case %d", index)
				}
				if _, exists := claimResults[index]; exists {
					return nil, nil, fmt.Errorf("lean randomized checker: Lean returned duplicate claim results for case %d", index)
				}
				claimResults[index] = value
			}
			hypothesisMarker := fmt.Sprintf("MATHCASE_HYP_%03d=", index)
			if strings.HasPrefix(line, hypothesisMarker) {
				value, ok := parseLeanBool(strings.TrimPrefix(line, hypothesisMarker))
				if !ok {
					return nil, nil, fmt.Errorf("lean randomized checker: Lean returned an invalid hypothesis result for case %d", index)
				}
				if _, exists := hypothesisResults[index]; exists {
					return nil, nil, fmt.Errorf("lean randomized checker: Lean returned duplicate hypothesis results for case %d", index)
				}
				hypothesisResults[index] = value
			}
		}
	}
	if err := scanner.Err(); err != nil {
		return nil, nil, fmt.Errorf("lean randomized checker: read bounded Lean output: %w", err)
	}
	if len(claimResults) != sampleCount || len(hypothesisResults) != sampleCount {
		return nil, nil, errors.New("lean randomized checker: Lean output did not contain one result for every assignment")
	}
	return claimResults, hypothesisResults, nil
}

func parseLeanBool(value string) (bool, bool) {
	switch value {
	case "true":
		return true, true
	case "false":
		return false, true
	default:
		return false, false
	}
}

func (v LeanVerifier) writeRandomizedCheckReceipt(receipt LeanRandomizedCheckReceipt) error {
	if v.ReceiptRoot == "" {
		return errors.New("lean randomized checker: durable receipt root is required")
	}
	root, err := filepath.Abs(v.ReceiptRoot)
	if err != nil {
		return fmt.Errorf("lean randomized checker: resolve receipt root: %w", err)
	}
	if err := os.MkdirAll(root, 0o700); err != nil {
		return fmt.Errorf("lean randomized checker: create receipt root: %w", err)
	}
	data, err := json.MarshalIndent(receipt, "", "  ")
	if err != nil {
		return fmt.Errorf("lean randomized checker: encode receipt: %w", err)
	}
	data = append(data, '\n')
	path := filepath.Join(root, receipt.EvidenceID+".randomized.json")
	file, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o600)
	if err != nil {
		return fmt.Errorf("lean randomized checker: create append-only receipt: %w", err)
	}
	if _, err := file.Write(data); err != nil {
		_ = file.Close()
		return fmt.Errorf("lean randomized checker: write receipt: %w", err)
	}
	if err := file.Sync(); err != nil {
		_ = file.Close()
		return fmt.Errorf("lean randomized checker: flush receipt: %w", err)
	}
	if err := file.Close(); err != nil {
		return fmt.Errorf("lean randomized checker: close receipt: %w", err)
	}
	return nil
}
