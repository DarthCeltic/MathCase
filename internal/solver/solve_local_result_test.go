package solver

import (
	"bytes"
	"context"
	"encoding/json"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestValidateSolveLocalOutputReopensTypedReceiptForExactProofRunAndImages(t *testing.T) {
	fixture := newQueueSolveValidationFixture(t, "PASSED")
	validated, err := ValidateSolveLocalOutput(fixture.outputBytes, fixture.problem, fixture.receiptRoot, fixture.expectation)
	if err != nil {
		t.Fatalf("ValidateSolveLocalOutput() error = %v", err)
	}
	if validated.Status != "VALIDATED" || validated.RunID != fixture.expectation.RunID ||
		validated.ProblemID != fixture.problem.ID || validated.ProofSHA256 != digestHex([]byte(fixture.proof)) ||
		validated.EvidenceID != fixture.receipt.EvidenceID || validated.ReceiptSHA256 == "" ||
		validated.SnapshotManifestSHA256 != fixture.receipt.SnapshotManifestSHA256 ||
		validated.SnapshotID != fixture.receipt.SnapshotID || validated.LeanImage != fixture.receipt.ExecutionImage ||
		validated.PantographImage != fixture.expectation.PantographSandboxImage {
		t.Fatalf("validated output = %#v; exact proof, run, image, and snapshot bindings expected", validated)
	}
}

func TestValidateSolveLocalOutputRejectsMissingReceiptAndAlteredProof(t *testing.T) {
	t.Run("missing receipt", func(t *testing.T) {
		fixture := newQueueSolveValidationFixture(t, "PASSED")
		if err := os.Remove(filepath.Join(fixture.receiptRoot, fixture.receipt.EvidenceID+".json")); err != nil {
			t.Fatal(err)
		}
		if _, err := ValidateSolveLocalOutput(fixture.outputBytes, fixture.problem, fixture.receiptRoot, fixture.expectation); err == nil || !strings.Contains(err.Error(), "missing, oversized, or unsafe") {
			t.Fatalf("missing M4 receipt error = %v", err)
		}
	})
	t.Run("altered proof bytes", func(t *testing.T) {
		fixture := newQueueSolveValidationFixture(t, "PASSED")
		var output map[string]any
		if err := json.Unmarshal(fixture.outputBytes, &output); err != nil {
			t.Fatal(err)
		}
		output["proof"] = "by\n  exact True.intro\n-- altered after verification"
		altered, err := json.Marshal(output)
		if err != nil {
			t.Fatal(err)
		}
		if _, err := ValidateSolveLocalOutput(altered, fixture.problem, fixture.receiptRoot, fixture.expectation); err == nil || !strings.Contains(err.Error(), "exact returned proof") {
			t.Fatalf("altered proof error = %v", err)
		}
	})
}

func TestValidateSolveLocalOutputRejectsSorryAxReceipt(t *testing.T) {
	fixture := newQueueSolveValidationFixture(t, "AXIOM_POLICY_REJECTED")
	if _, err := ValidateSolveLocalOutput(fixture.outputBytes, fixture.problem, fixture.receiptRoot, fixture.expectation); err == nil {
		t.Fatal("validator accepted a typed receipt that records sorryAx")
	}
}

func TestValidateSolveLocalOutputRejectsGeneratorClaimWhenVerifierFails(t *testing.T) {
	fixture := newQueueSolveValidationFixture(t, "AXIOM_POLICY_REJECTED")
	if _, err := ValidateSolveLocalOutput(fixture.outputBytes, fixture.problem, fixture.receiptRoot, fixture.expectation); err == nil {
		t.Fatal("validator accepted solved=true when the reopened M4 verifier receipt says FAILED")
	}
}

func TestValidateSolveLocalOutputBindsRetrievalHintBytes(t *testing.T) {
	fixture := newQueueSolveValidationFixture(t, "PASSED")
	var output solveLocalOutputForValidation
	if err := json.Unmarshal(fixture.outputBytes, &output); err != nil {
		t.Fatal(err)
	}
	output.RetrievalOutputSHA256 = digestHex([]byte("retrieval-result"))
	output.RetrievalHintCount = 1
	outputBytes, err := json.Marshal(output)
	if err != nil {
		t.Fatal(err)
	}
	if _, err := ValidateSolveLocalOutput(outputBytes, fixture.problem, fixture.receiptRoot, fixture.expectation); err == nil || !strings.Contains(err.Error(), "claims retrieval use without an expected retrieval input") {
		t.Fatalf("unbound retrieval output error = %v, want fail-closed refusal", err)
	}

	wrong := fixture.expectation
	wrong.RetrievalOutputSHA256 = digestHex([]byte("different retrieval-result"))
	if _, err := ValidateSolveLocalOutput(outputBytes, fixture.problem, fixture.receiptRoot, wrong); err == nil || !strings.Contains(err.Error(), "exact retrieval bytes") {
		t.Fatalf("mismatched retrieval output error = %v, want exact-byte binding refusal", err)
	}
}

type queueSolveValidationFixture struct {
	problem     domain.MathProblem
	receipt     LeanVerificationReceipt
	receiptRoot string
	proof       string
	outputBytes []byte
	expectation SolveLocalValidationExpectation
}

func newQueueSolveValidationFixture(t *testing.T, status string) queueSolveValidationFixture {
	t.Helper()
	runID := "queue-attempt-001"
	t.Setenv("MATHCASE_QUEUE_RUN_ID", runID)
	problem, receipt := newSyntheticExecutionBoundAttemptReceipt(t, status)
	proof := receipt.InputProof
	proofDigest := digestHex([]byte(proof))
	pantographImage := "sha256:" + strings.Repeat("b", 64)
	pantographContainer := "mathcase-pantograph-test"
	pantographArgs := []string{
		"run", "--interactive", "--rm", "--name", pantographContainer,
		"--label", queueRunContainerLabel + "=" + runID,
		"--pull=never", "--network=none", "--read-only", "--user=65532:65532",
		"--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128",
		pantographImage, "/mathcase/app/scripts/pantograph_search.py",
	}
	started := time.Now().UTC().Add(-time.Second)
	finished := started.Add(500 * time.Millisecond)
	stdout := []byte("{\"phase\":\"request\",\"event\":\"received\"}\n")
	trace := domain.LocalProcessTrace{
		SchemaVersion: domain.LocalProcessTraceSchemaV2, ExecutionClass: domain.LocalProcessDockerNoNetwork,
		Replayability: domain.LocalProcessCapturedIOOnly, ExecutablePath: "docker",
		ExecutableSHA256: digestHex([]byte("docker")), ExecutableSHA256After: digestHex([]byte("docker")),
		BridgePath: "C:/MathCase/scripts/pantograph_search.py", BridgeSHA256: digestHex([]byte("bridge")),
		BridgeSHA256After: digestHex([]byte("bridge")), WorkingDirectory: "C:/MathCase", Arguments: pantographArgs,
		ProcessID: 12345, StartedAt: started, FinishedAt: finished, HostTimeoutNanos: int64(time.Minute),
		HostElapsedNanos: int64(500 * time.Millisecond), HostContextEnd: "NONE", Termination: "EXITED", ExitCode: 0,
		InputBase64: []byte("{}"), InputSHA256: digestHex([]byte("{}")),
		StdoutPrefixBase64: stdout, StdoutSHA256: digestHex(stdout), StdoutCapturedSHA256: digestHex(stdout),
		StdoutBytesObserved: int64(len(stdout)), StdoutBytesCaptured: int64(len(stdout)),
		StderrPrefixBase64: []byte{}, StderrSHA256: digestHex(nil), StderrCapturedSHA256: digestHex(nil),
		StderrBytesObserved: 0, StderrBytesCaptured: 0, OutputCaptureLimitBytes: 4096,
		ContainerExecution: &domain.ContainerExecutionIdentity{
			ImageID: pantographImage, ContainerName: pantographContainer, NetworkMode: "none", PullPolicy: "never",
			ReadOnlyRoot: true, User: "65532:65532", DroppedAllCapabilities: true, NoNewPrivileges: true,
			CPULimit: "2", MemoryLimit: "4g", PidsLimit: 128,
		},
	}
	trace.CodeIdentityMatchesBeforeAfter = true
	attempt := domain.SolverAttempt{
		ID: "attempt-queue-validation", RunID: runID, ProblemID: problem.ID, Stage: domain.SolverStageS0,
		ModelID: pantographSearchEngine, Toolchain: receipt.Toolchain, CandidateSHA256: proofDigest,
		VerifiedProofSHA256: proofDigest, Outcome: domain.SolverOutcomePass,
		StartedAt: started, FinishedAt: finished, EvidenceIDs: []string{receipt.EvidenceID},
		SearchMetrics:     &domain.SearchMetrics{Engine: "pantograph-search", NodesExpanded: 1, TacticAttempts: 1, MaxDepth: 1, StopReason: "solved"},
		LocalProcessTrace: &trace,
	}
	output := struct {
		RunID     string                 `json:"run_id"`
		ProblemID string                 `json:"problem_id"`
		Solved    bool                   `json:"solved"`
		Proof     string                 `json:"proof,omitempty"`
		Attempts  []domain.SolverAttempt `json:"attempts"`
	}{RunID: runID, ProblemID: problem.ID, Solved: true, Proof: proof, Attempts: []domain.SolverAttempt{attempt}}
	outputBytes, err := json.Marshal(output)
	if err != nil {
		t.Fatal(err)
	}
	receiptRoot := t.TempDir()
	receiptBytes, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(receiptRoot, receipt.EvidenceID+".json"), receiptBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	return queueSolveValidationFixture{
		problem: problem, receipt: receipt, receiptRoot: receiptRoot, proof: proof, outputBytes: outputBytes,
		expectation: SolveLocalValidationExpectation{
			RunID: runID, LeanSandboxImage: receipt.ExecutionImage, PantographSandboxImage: pantographImage,
			SnapshotManifestSHA256: receipt.SnapshotManifestSHA256, SnapshotID: receipt.SnapshotID,
			DockerExecutable: "docker",
		},
	}
}

func TestValidateSolveLocalOutputRefusesWrongPinnedImageAndSnapshot(t *testing.T) {
	fixture := newQueueSolveValidationFixture(t, "PASSED")
	wrong := fixture.expectation
	wrong.LeanSandboxImage = "sha256:" + strings.Repeat("c", 64)
	if _, err := ValidateSolveLocalOutput(fixture.outputBytes, fixture.problem, fixture.receiptRoot, wrong); err == nil {
		t.Fatal("validator accepted an M4 receipt from a different Lean image")
	}
	wrong = fixture.expectation
	wrong.SnapshotManifestSHA256 = digestHex([]byte("different snapshot"))
	if _, err := ValidateSolveLocalOutput(fixture.outputBytes, fixture.problem, fixture.receiptRoot, wrong); err == nil {
		t.Fatal("validator accepted an M4 receipt from a different Lean snapshot")
	}
}

func TestDossierAttachQueueM4CommandCreatesReplayableImmutableSuccessor(t *testing.T) {
	fixture := newQueueSolveValidationFixture(t, "PASSED")
	const sourceID = "synthetic-command-source"
	const caseID = "synthetic-command-case"
	const snapshotReference = "data/local/test-fixtures/queue-attach/catalog.snapshot.json"
	now := time.Now().UTC().Truncate(time.Second)

	fixture.problem.Title = "Synthetic command attachment fixture"
	fixture.problem.M0Status = string(catalog.StatusUnassessed)
	fixture.problem.SourceIDs = []string{sourceID}
	problemBytes, err := json.Marshal(fixture.problem)
	if err != nil {
		t.Fatal(err)
	}
	testRoot := t.TempDir()
	problemPath := filepath.Join(testRoot, "problem.json")
	if err := os.WriteFile(problemPath, problemBytes, 0o600); err != nil {
		t.Fatal(err)
	}

	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{{
		ID: sourceID, URL: "https://example.invalid/synthetic-source", ItemLocator: "Synthetic/Test.lean",
		Lane: catalog.LaneMathlibProofPairs, Revision: "synthetic-test-revision", RetrievedAt: now,
		ContentSHA256: digestHex([]byte("synthetic source bytes")), AuthorOrHolder: "Synthetic test rights holder",
		License: "Apache-2.0", LicenseTermsURL: "https://www.apache.org/licenses/LICENSE-2.0",
		TermsNote:   "Synthetic test fixture only; this is not a real rights review.",
		Attribution: "Synthetic test fixture only.", RightsReviewerID: "synthetic-rights-reviewer",
		RightsReviewedAt: now, RightsEvidenceID: "synthetic-rights-evidence", Rights: catalog.RightsCleared,
		AllowedUses: []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseLocalProofAttempt},
	}}, []catalog.Problem{{
		ID: fixture.problem.ID, Title: fixture.problem.Title, InformalStatement: fixture.problem.Statement,
		LeanStatement: fixture.problem.LeanStatement, Status: catalog.StatusUnassessed, SourceIDs: []string{sourceID},
		StatementAudit: catalog.StatementAuditRecord{
			BackTranslation: "Synthetic fixture paraphrase for command-path validation only.",
			ReviewerID:      "synthetic-statement-reviewer", ReviewedAt: now, Passed: true,
			EvidenceID: "synthetic-statement-review-evidence",
		},
	}})
	if err != nil {
		t.Fatalf("catalog.NewSnapshot(synthetic fixture) error = %v", err)
	}
	snapshotBytes, err := json.MarshalIndent(snapshot, "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	snapshotBytes = append(snapshotBytes, '\n')
	snapshotPath := filepath.Join(testRoot, "catalog.snapshot.json")
	if err := os.WriteFile(snapshotPath, snapshotBytes, 0o600); err != nil {
		t.Fatal(err)
	}

	repoRoot := mathCaseRepositoryRoot(t)
	binaryName := "mathcase"
	if runtime.GOOS == "windows" {
		binaryName += ".exe"
	}
	binaryPath := filepath.Join(testRoot, binaryName)
	buildContext, cancelBuild := context.WithTimeout(context.Background(), 2*time.Minute)
	defer cancelBuild()
	build := exec.CommandContext(buildContext, "go", "build", "-o", binaryPath, "./cmd/mathcase")
	build.Dir = repoRoot
	build.Env = append(os.Environ(), "GOPROXY=off", "GOSUMDB=off", "GOTOOLCHAIN=local")
	if output, err := build.CombinedOutput(); err != nil {
		t.Fatalf("go build ./cmd/mathcase for synthetic command fixture failed: %v\n%s", err, output)
	}

	commandContext, cancelCommands := context.WithTimeout(context.Background(), 2*time.Minute)
	defer cancelCommands()
	runCommand := func(args ...string) ([]byte, error) {
		t.Helper()
		command := exec.CommandContext(commandContext, binaryPath, args...)
		command.Dir = repoRoot
		return command.CombinedOutput()
	}
	caseWorkspace := filepath.Join(testRoot, "case-workspace")
	dossierPath := filepath.Join(caseWorkspace, "dossier.json")
	if err := os.MkdirAll(caseWorkspace, 0o700); err != nil {
		t.Fatal(err)
	}
	caseInitOutput, err := runCommand(
		"case-init", "--snapshot", snapshotPath, "--snapshot-reference", snapshotReference,
		"--problem-id", fixture.problem.ID, "--case-id", caseID,
		"--created-at", now.Format(time.RFC3339Nano), "--output", dossierPath,
	)
	if err != nil {
		t.Fatalf("mathcase case-init for synthetic command fixture failed: %v\n%s", err, caseInitOutput)
	}
	parentBytes, err := os.ReadFile(dossierPath)
	if err != nil {
		t.Fatal(err)
	}
	resultPath := filepath.Join(testRoot, "solve-result.json")
	if err := os.WriteFile(resultPath, fixture.outputBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	outputPath := filepath.Join(caseWorkspace, "dossier-revision-v2.json")
	commandArgs := []string{
		"dossier-attach-queue-m4", "--dossier", dossierPath, "--problem", problemPath,
		"--solve-result", resultPath, "--receipt-root", fixture.receiptRoot,
		"--catalog-snapshot", snapshotPath, "--output", outputPath,
		"--run-id", fixture.expectation.RunID, "--queue-item-id", "synthetic-queue-item",
		"--plan-id", "synthetic-queue-plan", "--queue-attempt-id", "synthetic-queue-attempt",
		"--lean-image", fixture.expectation.LeanSandboxImage,
		"--pantograph-image", fixture.expectation.PantographSandboxImage,
		"--snapshot-manifest-sha256", fixture.expectation.SnapshotManifestSHA256,
		"--snapshot-id", fixture.expectation.SnapshotID,
		"--docker-executable", fixture.expectation.DockerExecutable,
	}
	type attachmentSummary struct {
		Status                string   `json:"status"`
		RemainingPendingGates []string `json:"remaining_pending_gates"`
		DeliveryReadiness     string   `json:"delivery_readiness"`
	}
	readSummary := func(output []byte) attachmentSummary {
		t.Helper()
		var summary attachmentSummary
		if err := json.Unmarshal(output, &summary); err != nil {
			t.Fatalf("decode mathcase dossier-attach-queue-m4 output %q: %v", output, err)
		}
		return summary
	}

	firstOutput, err := runCommand(commandArgs...)
	if err != nil {
		t.Fatalf("mathcase dossier-attach-queue-m4 synthetic result failed: %v\n%s", err, firstOutput)
	}
	first := readSummary(firstOutput)
	if first.Status != "REVISION_WRITTEN_NOT_READY" || first.DeliveryReadiness != "NOT_READY" ||
		strings.Join(first.RemainingPendingGates, ",") != "V3,V4,V5,V6,V7" {
		t.Fatalf("mathcase dossier-attach-queue-m4 first result = %+v, want immutable not-ready revision with V3-V7 pending", first)
	}
	firstSuccessor, err := os.ReadFile(outputPath)
	if err != nil {
		t.Fatal(err)
	}
	receiptPath := filepath.Join(caseWorkspace, "receipts", fixture.receipt.EvidenceID+".json")
	receiptCopy, err := os.ReadFile(receiptPath)
	if err != nil {
		t.Fatal(err)
	}
	exactReceipt, err := os.ReadFile(filepath.Join(fixture.receiptRoot, fixture.receipt.EvidenceID+".json"))
	if err != nil {
		t.Fatal(err)
	}
	if !bytes.Equal(receiptCopy, exactReceipt) {
		t.Fatal("mathcase dossier-attach-queue-m4 receipt copy differs from the exact synthetic receipt bytes")
	}
	if currentParent, err := os.ReadFile(dossierPath); err != nil || !bytes.Equal(currentParent, parentBytes) {
		t.Fatalf("mathcase dossier-attach-queue-m4 changed immutable parent dossier: err=%v", err)
	}

	var successor domain.Dossier
	if err := json.Unmarshal(firstSuccessor, &successor); err != nil {
		t.Fatal(err)
	}
	if err := successor.Validate(); err != nil {
		t.Fatalf("reopened synthetic successor dossier is invalid: %v", err)
	}
	if successor.Case.Version != 2 || len(successor.Attempts) != 1 || successor.M4Receipt == nil {
		t.Fatalf("reopened synthetic successor = version %d, attempts %d, M4 receipt %v; want version 2, one attempt, exact receipt", successor.Case.Version, len(successor.Attempts), successor.M4Receipt)
	}
	gateStates := make(map[domain.VerificationGate]domain.VerificationStatus, len(successor.Verifications))
	for _, record := range successor.Verifications {
		gateStates[record.Gate] = record.Status
	}
	for _, gate := range []domain.VerificationGate{domain.GateKernelBuild, domain.GateAxiomAudit} {
		if gateStates[gate] != domain.VerificationPassed {
			t.Errorf("reopened synthetic successor gate %s = %q, want PASSED", gate, gateStates[gate])
		}
	}
	for _, gate := range []domain.VerificationGate{
		domain.GateStatementFidelity, domain.GateFalsification, domain.GateEssentiality,
		domain.GateProvenanceLeakage, domain.GateLiteratureAndStatus,
	} {
		if gateStates[gate] != domain.VerificationPending {
			t.Errorf("reopened synthetic successor gate %s = %q, want PENDING", gate, gateStates[gate])
		}
	}

	secondOutput, err := runCommand(commandArgs...)
	if err != nil {
		t.Fatalf("mathcase dossier-attach-queue-m4 idempotent reopen failed: %v\n%s", err, secondOutput)
	}
	second := readSummary(secondOutput)
	if second.Status != "REVISION_ALREADY_ATTACHED" {
		t.Fatalf("mathcase dossier-attach-queue-m4 idempotent replay status = %q, want REVISION_ALREADY_ATTACHED", second.Status)
	}
	secondSuccessor, err := os.ReadFile(outputPath)
	if err != nil || !bytes.Equal(firstSuccessor, secondSuccessor) {
		t.Fatalf("mathcase dossier-attach-queue-m4 idempotent replay changed successor bytes: err=%v", err)
	}

	beforeMismatchParent := append([]byte(nil), parentBytes...)
	beforeMismatchSuccessor := append([]byte(nil), firstSuccessor...)
	beforeMismatchReceipt := append([]byte(nil), receiptCopy...)
	changedProblem := fixture.problem
	changedProblem.Statement = "Changed synthetic statement."
	changedProblemBytes, err := json.Marshal(changedProblem)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(problemPath, changedProblemBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	changedProblemOutput, changedProblemErr := runCommand(commandArgs...)
	if changedProblemErr == nil || !strings.Contains(string(changedProblemOutput), "exact frozen solver problem differs") {
		t.Fatalf("mathcase dossier-attach-queue-m4 changed problem result = %v, output %q; want exact-binding refusal", changedProblemErr, changedProblemOutput)
	}
	if err := os.WriteFile(problemPath, problemBytes, 0o600); err != nil {
		t.Fatal(err)
	}

	var changedSolveResult map[string]json.RawMessage
	if err := json.Unmarshal(fixture.outputBytes, &changedSolveResult); err != nil {
		t.Fatal(err)
	}
	changedProof, _ := json.Marshal("by\n  exact True.intro\n-- changed after receipt")
	changedSolveResult["proof"] = changedProof
	changedSolveBytes, err := json.Marshal(changedSolveResult)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(resultPath, changedSolveBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	changedProofOutput, changedProofErr := runCommand(commandArgs...)
	if changedProofErr == nil || !strings.Contains(string(changedProofOutput), "exact returned proof") {
		t.Fatalf("mathcase dossier-attach-queue-m4 changed proof result = %v, output %q; want receipt-binding refusal", changedProofErr, changedProofOutput)
	}
	for _, check := range []struct {
		name string
		path string
		want []byte
	}{{"parent dossier", dossierPath, beforeMismatchParent}, {"successor", outputPath, beforeMismatchSuccessor}, {"receipt copy", receiptPath, beforeMismatchReceipt}} {
		got, err := os.ReadFile(check.path)
		if err != nil || !bytes.Equal(got, check.want) {
			t.Errorf("mathcase dossier-attach-queue-m4 mismatch modified %s: err=%v", check.name, err)
		}
	}
	successors, err := filepath.Glob(filepath.Join(caseWorkspace, "dossier-revision-v*.json"))
	if err != nil || len(successors) != 1 || successors[0] != outputPath {
		t.Fatalf("synthetic command fixture successors = %v, err=%v; want exactly one immutable revision", successors, err)
	}
}

func mathCaseRepositoryRoot(t *testing.T) string {
	t.Helper()
	_, sourceFile, _, ok := runtime.Caller(0)
	if !ok {
		t.Fatal("runtime.Caller(0) could not locate the synthetic command test source")
	}
	root, err := filepath.Abs(filepath.Join(filepath.Dir(sourceFile), "..", ".."))
	if err != nil {
		t.Fatalf("resolve MathCase repository root from %q: %v", sourceFile, err)
	}
	return root
}
