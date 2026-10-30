package solver

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

const testLeanSnapshotManifestEnv = "MATHCASE_LEAN_SNAPSHOT_MANIFEST"
const testLeanReceiptRootEnv = "MATHCASE_TEST_LEAN_RECEIPT_ROOT"

func TestLeanVerifierBlocksMetaprogrammingProofText(t *testing.T) {
	for _, proof := range []string{
		"by\n  run_tac do pure ()",
		"by\n  exact (unsafeCast True.intro)",
		"by\n  Lean.Elab.Term.evalTerm True",
	} {
		if _, err := normalizeLeanProof(proof); err == nil {
			t.Errorf("proof containing blocked metaprogramming was accepted: %q", proof)
		}
	}
	if _, err := normalizeLeanProof("by\n  exact True.intro"); err != nil {
		t.Fatalf("ordinary tactic proof was rejected: %v", err)
	}
	if _, err := validateAllowedAxioms([]string{"sorryAx"}); err == nil {
		t.Fatal("the proof-hole axiom was permitted by configuration")
	}
}

func TestLeanVerifierNormalizesOneTheoremHeaderWithoutDroppingBinders(t *testing.T) {
	statement := "theorem agent_add_zero (n : Nat) : n + 0 = n"
	if err := ValidateLeanStatement(statement); err != nil {
		t.Fatalf("ValidateLeanStatement(%q) = %v, want the supported exact theorem-header form", statement, err)
	}
	proposition, theoremSignature, err := normalizeLeanProblemStatement(statement)
	if err != nil {
		t.Fatalf("normalizeLeanProblemStatement(%q) error = %v", statement, err)
	}
	if theoremSignature != "(n : Nat) : n + 0 = n" || proposition != "∀ (n : Nat), n + 0 = n" {
		t.Fatalf("normalized theorem header = signature %q proposition %q, want preserved telescope and quantified target", theoremSignature, proposition)
	}
	proofBody := "exact Nat.add_zero n"
	source := generatedLeanSource(statement, proofBody, []string{"Mathlib.Data.Nat.Basic"})
	if !strings.Contains(source, "theorem mathcase_candidate (n : Nat) : n + 0 = n := by\n  exact Nat.add_zero n") ||
		!strings.Contains(source, "#print axioms mathcase_candidate") {
		t.Fatalf("generated Lean source did not preserve the original binder for a binder-referencing candidate:\n%s", source)
	}
	statementHash, err := domain.ProblemStatementDigest("agent-add-zero", "For any natural number n, adding zero on the right leaves n unchanged.", statement)
	if err != nil {
		t.Fatal(err)
	}
	if statementHash == "" || !strings.Contains(source, "n + 0 = n") {
		t.Fatalf("original declaration identity or normalized candidate source was lost: statement hash %q source %q", statementHash, source)
	}
	for _, unsupported := range []string{
		"theorem broken (n : Nat) : n = n := by rfl",
		"theorem broken (n : Nat : n = n",
		"lemma unsupported : True",
		"theorem broken (n : Nat) : n = n\n#eval 1",
	} {
		if err := ValidateLeanStatement(unsupported); err == nil {
			t.Errorf("ValidateLeanStatement(%q) succeeded, want unsupported declaration syntax rejected before dispatch", unsupported)
		}
	}
}

func TestLeanVerifierRequiresImmutableSandboxImage(t *testing.T) {
	t.Setenv(leanSandboxImageEnv, "")
	docker := filepath.Join(t.TempDir(), "docker.exe")
	if err := os.WriteFile(docker, []byte("test stub"), 0o600); err != nil {
		t.Fatal(err)
	}
	verifier := LeanVerifier{DockerExecutable: docker}
	if _, _, err := verifier.resolveLeanSandbox(); err == nil {
		t.Fatal("Lean execution accepted a missing image identity")
	}
	verifier.SandboxImage = "mathcase/lean-sandbox:4.33.1"
	if _, _, err := verifier.resolveLeanSandbox(); err == nil {
		t.Fatal("Lean execution accepted a mutable image tag")
	}
}

func TestLeanToolchainProbeFailureReceiptIsInputAndExecutionBound(t *testing.T) {
	problem := domain.MathProblem{
		ID:            "probe-failure-case",
		Statement:     "Truth is true.",
		LeanStatement: "True",
	}
	proof := "by\n  exact True.intro"
	proofDigest := sha256.Sum256([]byte(proof))
	statementDigest, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	proofBody, err := normalizeLeanProof(proof)
	if err != nil {
		t.Fatal(err)
	}
	imports := []string{"Init"}
	generated := generatedLeanSource(problem.LeanStatement, proofBody, imports)
	generatedDigest := sha256.Sum256([]byte(generated))
	base := newTestLeanSnapshot(t)
	image := base.Manifest.ImageDigest
	started := time.Now().UTC().Add(-time.Second)
	finished := started.Add(250 * time.Millisecond)
	exitCode := 1
	stderr := "error: read-only file system\n"
	versionArgs, err := buildLeanSnapshotDockerArgs(image, "mathcase-probe-test", base.Manifest, "", "", "", "", []string{"--version"})
	if err != nil {
		t.Fatal(err)
	}
	argv := append([]string{"docker"}, versionArgs...)
	stdoutSHA := sha256.Sum256(nil)
	stderrSHA := sha256.Sum256([]byte(stderr))
	receipt := LeanToolchainProbeFailureReceipt{
		SchemaVersion:          leanToolchainProbeFailureSchema,
		EvidenceID:             "lean-probe-test",
		RecordedAtUTC:          finished,
		ProblemID:              problem.ID,
		ProblemStatementSHA256: statementDigest,
		ProofSHA256:            hex.EncodeToString(proofDigest[:]),
		GeneratedSourceSHA256:  hex.EncodeToString(generatedDigest[:]),
		ProjectSnapshotSHA256:  base.Manifest.ProjectSnapshot.SHA256,
		ProjectSnapshot:        base.Manifest.ProjectSnapshot,
		SnapshotID:             base.Manifest.SnapshotID,
		SnapshotManifestPath:   base.ManifestPath,
		SnapshotManifestSHA256: base.ManifestSHA256,
		SnapshotImageCheck:     testSnapshotImageCheck(base.Manifest),
		Toolchain:              defaultLeanToolchain,
		ExpectedToolchain:      defaultLeanToolchain,
		Image:                  image,
		Imports:                imports,
		Status:                 "TOOLCHAIN_PROBE_FAILED",
		FailureReason:          "Lean version probe process exited with code 1",
		LeanVersionCheck: LeanVersionCheck{
			StdoutSHA256: hex.EncodeToString(stdoutSHA[:]), StderrSHA256: hex.EncodeToString(stderrSHA[:]),
			StderrExcerpt: stderr,
			Execution: LeanSandboxExecution{
				DockerExecutable: "docker", ContainerName: "mathcase-probe-test", ExecutionMode: LeanExecutionModeDirect, CommandArgv: argv,
				StartedAtUTC: started, FinishedAtUTC: finished, ExitCode: &exitCode,
			},
		},
	}
	if err := ValidateToolchainProbeFailureReceipt(receipt, problem, proof); err != nil {
		t.Fatalf("valid failed pre-proof probe receipt rejected: %v", err)
	}

	tampered := receipt
	tampered.LeanVersionCheck.StderrExcerpt += "forged"
	if err := ValidateToolchainProbeFailureReceipt(tampered, problem, proof); err == nil {
		t.Fatal("tampered probe output passed receipt validation")
	}
	tampered = receipt
	tampered.ProofExecutionStarted = true
	if err := ValidateToolchainProbeFailureReceipt(tampered, problem, proof); err == nil {
		t.Fatal("a receipt claiming proof execution passed pre-proof failure validation")
	}

	outputLimited := receipt
	probe := &outputLimited.LeanVersionCheck
	probe.Version = ""
	versionStdout := newBoundedCapture(8)
	if _, err := versionStdout.Write([]byte("123456789")); err != nil {
		t.Fatalf("bounded version stdout capture Write() error = %v, want nil", err)
	}
	versionStderr := newBoundedCapture(8)
	populateLeanVersionOutputEvidence(probe, versionStdout, versionStderr, 8)
	probe.Execution.ExitCode = nil
	probe.Execution.CleanupAttempted = true
	probe.Execution.CleanupSucceeded = true
	cleanupExitCode := 0
	probe.Execution.CleanupExitCode = &cleanupExitCode
	if err := ValidateToolchainProbeFailureReceipt(outputLimited, problem, proof); err != nil {
		t.Fatalf("ValidateToolchainProbeFailureReceipt(valid output-limit capture) error = %v, want bounded version-probe evidence accepted", err)
	}

	for _, mutate := range []struct {
		name string
		edit func(*LeanToolchainProbeFailureReceipt)
	}{
		{name: "prefix bytes missing", edit: func(r *LeanToolchainProbeFailureReceipt) { r.LeanVersionCheck.StdoutPrefix = nil }},
		{name: "prefix digest misbound", edit: func(r *LeanToolchainProbeFailureReceipt) {
			r.LeanVersionCheck.StdoutCapturedSHA256 = digestHex([]byte("different"))
		}},
		{name: "cleanup missing", edit: func(r *LeanToolchainProbeFailureReceipt) {
			r.LeanVersionCheck.Execution.CleanupAttempted = false
			r.LeanVersionCheck.Execution.CleanupSucceeded = false
			r.LeanVersionCheck.Execution.CleanupExitCode = nil
		}},
	} {
		t.Run(mutate.name, func(t *testing.T) {
			bad := outputLimited
			mutate.edit(&bad)
			if err := ValidateToolchainProbeFailureReceipt(bad, problem, proof); err == nil {
				t.Fatal("ValidateToolchainProbeFailureReceipt(malformed output-limit evidence) error = nil, want refusal")
			}
		})
	}
}

func TestLeanVerifierCompilesR0bAndAuditsProofAndAxioms(t *testing.T) {
	verifier, available := localLeanVerifier(t)
	if !available {
		t.Skip("pinned local Lake executable is not installed")
	}
	problem := domain.MathProblem{
		ID:            "r0b-nat-add-assoc",
		Statement:     "Natural-number addition is associative.",
		LeanStatement: "forall (n m k : Nat), (n + m) + k = n + (m + k)",
	}
	proof := "by\n  intro n m k\n  induction k with\n  | zero => rfl\n  | succ k ih =>\n    simp only [Nat.add_succ]\n    rw [ih]"
	verification, err := verifier.Verify(context.Background(), problem, proof)
	if err != nil {
		t.Fatal(err)
	}
	if !verification.KernelPassed || !verification.AxiomsPassed || verification.EvidenceID == "" {
		t.Fatalf("R0b verification failed: result=%#v receipt=%#v", verification, readLeanReceipt(t, verifier.ReceiptRoot, verification.EvidenceID))
	}
	receipt := readLeanReceipt(t, verifier.ReceiptRoot, verification.EvidenceID)
	if receipt.Status != "PASSED" || receipt.Toolchain != defaultLeanToolchain || receipt.ProjectSnapshotSHA256 == "" {
		t.Fatalf("R0b receipt is incomplete: %#v", receipt)
	}
	if !strings.Contains(receipt.ExecutionIsolation, "Docker: network disabled") || receipt.ExecutionImage != os.Getenv(leanSandboxImageEnv) {
		t.Fatalf("verification isolation boundary or image is not recorded: isolation=%q image=%q", receipt.ExecutionIsolation, receipt.ExecutionImage)
	}
	if err := ValidateExecutionBoundReceipt(receipt, problem); err != nil {
		t.Fatalf("actual pinned-sandbox receipt did not reconcile to its exact inputs and execution: %v", err)
	}
	if err := validateLeanProjectInvocation(receipt.SandboxExecution, "MathCaseCandidate.lean", "MathCaseCandidate.olean", true); err != nil {
		t.Fatalf("actual R0b Docker argv did not use the in-project source and isolated Lake/output mounts: %v", err)
	}
}

func TestLeanVerifierReplaysReflexiveNatEqualityInPinnedSandbox(t *testing.T) {
	verifier, available := localLeanVerifier(t)
	if !available {
		t.Skip("pinned local Lake executable is not installed")
	}
	if receiptRoot := strings.TrimSpace(os.Getenv(testLeanReceiptRootEnv)); receiptRoot != "" {
		absoluteReceiptRoot, err := filepath.Abs(receiptRoot)
		if err != nil {
			t.Fatalf("resolve explicit test receipt root: %v", err)
		}
		if err := os.MkdirAll(absoluteReceiptRoot, 0o700); err != nil {
			t.Fatalf("create explicit test receipt root: %v", err)
		}
		verifier.ReceiptRoot = absoluteReceiptRoot
	}
	verifier.Timeout = 2 * time.Minute
	verifier.Imports = []string{"Mathlib.Data.Nat.Basic"}
	problem := domain.MathProblem{
		ID:            "forall-n-n-eq-n",
		Statement:     "Every natural number equals itself.",
		LeanStatement: "∀ n : Nat, n = n",
	}
	proof := "by intro n; rfl"
	verification, err := verifier.Verify(context.Background(), problem, proof)
	if err != nil {
		t.Fatalf("Verify(saved proof) error = %v; result=%#v", err, verification)
	}
	if !verification.KernelPassed || !verification.AxiomsPassed || verification.EvidenceID == "" {
		t.Fatalf("saved reflexivity proof did not pass kernel and axiom checks: %#v", verification)
	}
	receipt := readLeanReceipt(t, verifier.ReceiptRoot, verification.EvidenceID)
	if receipt.Status != "PASSED" || receipt.InputProof != proof || receipt.Toolchain != defaultLeanToolchain {
		t.Fatalf("saved proof receipt is not bound to the expected proof and toolchain: %#v", receipt)
	}
	if receipt.LeanVersionCheck.Execution.TimedOut || receipt.SandboxExecution.TimedOut {
		t.Fatalf("saved proof receipt records a timed-out isolated phase: probe=%#v proof=%#v", receipt.LeanVersionCheck.Execution, receipt.SandboxExecution)
	}
	if err := ValidateExecutionBoundReceipt(receipt, problem); err != nil {
		t.Fatalf("saved proof receipt failed execution-bound validation: %v", err)
	}
	t.Logf("execution-bound Lean receipt: %s", filepath.Join(verifier.ReceiptRoot, verification.EvidenceID+".json"))
}

func TestLeanVerifierRejectsAxiomAndKernelFailuresWithReceipts(t *testing.T) {
	verifier, available := localLeanVerifier(t)
	if !available {
		t.Skip("pinned local Lake executable is not installed")
	}
	problem := domain.MathProblem{ID: "simple-truth", Statement: "Truth is true.", LeanStatement: "True"}
	axiomResult, err := verifier.Verify(context.Background(), problem, "by\n  exact sorry")
	if err != nil {
		t.Fatal(err)
	}
	if !axiomResult.KernelPassed || axiomResult.AxiomsPassed {
		t.Fatalf("sorry axiom was not rejected by policy: %#v", axiomResult)
	}
	if got := readLeanReceipt(t, verifier.ReceiptRoot, axiomResult.EvidenceID); got.Status != "AXIOM_POLICY_REJECTED" {
		t.Fatalf("wrong axiom rejection status: %#v", got)
	}

	kernelResult, err := verifier.Verify(context.Background(), problem, "by\n  exact False.elim (by trivial)")
	if err != nil {
		t.Fatal(err)
	}
	if kernelResult.KernelPassed || kernelResult.EvidenceID == "" {
		t.Fatalf("invalid proof was not rejected with evidence: %#v", kernelResult)
	}
	if got := readLeanReceipt(t, verifier.ReceiptRoot, kernelResult.EvidenceID); got.Status != "KERNEL_REJECTED" {
		t.Fatalf("wrong kernel rejection status: %#v", got)
	}
}

func TestExecutionBoundAttemptReceiptSeparatesProofAndInfrastructureResults(t *testing.T) {
	tests := []struct {
		name        string
		status      string
		want        LeanAttemptDisposition
		wantOldPass bool
	}{
		{name: "passed proof", status: "PASSED", want: LeanAttemptProofPassed, wantOldPass: true},
		{name: "kernel rejected", status: "KERNEL_REJECTED", want: LeanAttemptRejectedProof},
		{name: "axiom policy rejected", status: "AXIOM_POLICY_REJECTED", want: LeanAttemptRejectedProof},
		{name: "execution failed", status: "EXECUTION_ERROR", want: LeanAttemptInfrastructureFailure},
		{name: "timed out", status: "TIMED_OUT", want: LeanAttemptInfrastructureFailure},
		{name: "output limit", status: "OUTPUT_LIMIT", want: LeanAttemptInfrastructureFailure},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			problem, receipt := newSyntheticExecutionBoundAttemptReceipt(t, test.status)
			got, err := ValidateExecutionBoundAttemptReceipt(receipt, problem)
			if err != nil || got != test.want {
				t.Fatalf("ValidateExecutionBoundAttemptReceipt() = (%q, %v), want (%q, nil)", got, err, test.want)
			}
			passErr := ValidateExecutionBoundReceipt(receipt, problem)
			if test.wantOldPass && passErr != nil {
				t.Fatalf("ValidateExecutionBoundReceipt(passed proof) error = %v", passErr)
			}
			if !test.wantOldPass && passErr == nil {
				t.Fatal("pass-only receipt reader accepted a non-passing attempt")
			}
		})
	}
}

func TestBoundedCaptureRetainsPrefixAndCancelsOnceAtLimit(t *testing.T) {
	capture := newBoundedCapture(5)
	callbacks := 0
	capture.onLimit = func() { callbacks++ }

	for _, chunk := range []string{"abc", "def", "ghi"} {
		if written, err := capture.Write([]byte(chunk)); err != nil || written != len(chunk) {
			t.Fatalf("Write(%q) = (%d, %v), want (%d, nil)", chunk, written, err, len(chunk))
		}
	}
	if got, want := capture.String(), "abcde"; got != want {
		t.Fatalf("captured prefix = %q, want %q", got, want)
	}
	if capture.total != 9 || !capture.truncated {
		t.Fatalf("observed byte count/truncated = (%d, %v), want (9, true)", capture.total, capture.truncated)
	}
	if callbacks != 1 {
		t.Fatalf("output-limit callback count = %d, want 1", callbacks)
	}
	if got, want := capture.CapturedSHA256(), digestHex([]byte("abcde")); got != want {
		t.Fatalf("captured-prefix SHA-256 = %q, want %q", got, want)
	}
	if got, want := capture.SHA256(), digestHex([]byte("abcdefghi")); got != want {
		t.Fatalf("observed-stream SHA-256 = %q, want %q", got, want)
	}
}

func TestExecutionBoundAttemptReceiptReopensOutputLimitAsInfrastructureFailure(t *testing.T) {
	problem, receipt := newSyntheticExecutionBoundAttemptReceipt(t, "OUTPUT_LIMIT")
	data, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	var reopened LeanVerificationReceipt
	if err := json.Unmarshal(data, &reopened); err != nil {
		t.Fatal(err)
	}
	got, err := ValidateExecutionBoundAttemptReceipt(reopened, problem)
	if err != nil || got != LeanAttemptInfrastructureFailure {
		t.Fatalf("ValidateExecutionBoundAttemptReceipt(OUTPUT_LIMIT) = (%q, %v), want (%q, nil)", got, err, LeanAttemptInfrastructureFailure)
	}
	if err := ValidateExecutionBoundReceipt(reopened, problem); err == nil {
		t.Fatal("pass-only reader accepted an OUTPUT_LIMIT infrastructure receipt")
	}

	capturedArtifact := reopened
	capturedArtifact.CompiledArtifactStatus = "CAPTURED"
	capturedArtifact.CompiledArtifact = []byte("synthetic artifact captured before output overflow")
	capturedArtifact.CompiledArtifactSHA256 = digestHex(capturedArtifact.CompiledArtifact)
	capturedArtifact.CompiledArtifactSize = int64(len(capturedArtifact.CompiledArtifact))
	if disposition, err := ValidateExecutionBoundAttemptReceipt(capturedArtifact, problem); err != nil || disposition != LeanAttemptInfrastructureFailure {
		t.Fatalf("OUTPUT_LIMIT receipt with captured pre-overflow artifact = (%q, %v), want infrastructure failure", disposition, err)
	}

	malformed := []struct {
		name   string
		change func(*LeanVerificationReceipt)
	}{
		{name: "hash-only prefix", change: func(r *LeanVerificationReceipt) { r.StdoutPrefix = nil }},
		{name: "misbound prefix digest", change: func(r *LeanVerificationReceipt) { r.StdoutCapturedSHA256 = digestHex([]byte("different")) }},
		{name: "wrong count", change: func(r *LeanVerificationReceipt) { r.StdoutBytesCaptured-- }},
		{name: "missing cleanup", change: func(r *LeanVerificationReceipt) { r.SandboxExecution.CleanupAttempted = false }},
		{name: "cleanup says failure with success code", change: func(r *LeanVerificationReceipt) { r.SandboxExecution.CleanupSucceeded = false }},
		{name: "cap above bound", change: func(r *LeanVerificationReceipt) { r.OutputLimitBytes = defaultOutputLimit + 1 }},
		{name: "proof pass claim", change: func(r *LeanVerificationReceipt) { r.KernelPassed = true }},
		{name: "partial axiom claim", change: func(r *LeanVerificationReceipt) { r.AxiomOutput = "partial" }},
	}
	for _, test := range malformed {
		t.Run(test.name, func(t *testing.T) {
			candidate := reopened
			test.change(&candidate)
			if _, err := ValidateExecutionBoundAttemptReceipt(candidate, problem); err == nil {
				t.Fatal("attempt reader accepted malformed OUTPUT_LIMIT evidence")
			}
		})
	}
}

func TestExecutionBoundAttemptReceiptRefusesMisboundAndHashOnlyEvidence(t *testing.T) {
	problem, receipt := newSyntheticExecutionBoundAttemptReceipt(t, "PASSED")

	tampered := receipt
	tampered.ProblemStatementSHA256 = digestHex([]byte("different statement"))
	if _, err := ValidateExecutionBoundAttemptReceipt(tampered, problem); err == nil {
		t.Fatal("attempt reader accepted a receipt bound to a different statement")
	}

	tampered = receipt
	tampered.InputProof = "by\n  exact False.elim (by trivial)"
	if _, err := ValidateExecutionBoundAttemptReceipt(tampered, problem); err == nil {
		t.Fatal("attempt reader accepted a changed proof with the old proof digest")
	}

	tampered = receipt
	tampered.StdoutSHA256 = digestHex([]byte("hash-only substitute"))
	if _, err := ValidateExecutionBoundAttemptReceipt(tampered, problem); err == nil {
		t.Fatal("attempt reader accepted an output hash that does not match the retained output bytes")
	}

	tampered = receipt
	tampered.Status = "OUTPUT_LIMIT"
	tampered.OutputTruncated = true
	if _, err := ValidateExecutionBoundAttemptReceipt(tampered, problem); err == nil {
		t.Fatal("attempt reader accepted truncated output without bounded prefix evidence")
	}

	tampered = receipt
	tampered.SandboxExecution.CommandArgv = append([]string(nil), receipt.SandboxExecution.CommandArgv...)
	for index, arg := range tampered.SandboxExecution.CommandArgv {
		if arg == "--network=none" {
			tampered.SandboxExecution.CommandArgv = append(tampered.SandboxExecution.CommandArgv[:index], tampered.SandboxExecution.CommandArgv[index+1:]...)
			break
		}
	}
	if _, err := ValidateExecutionBoundAttemptReceipt(tampered, problem); err == nil {
		t.Fatal("attempt reader accepted a sandbox receipt missing the network isolation argument")
	}
}

// newSyntheticExecutionBoundAttemptReceipt builds internally consistent
// receipt bytes and invocation metadata for reader tests. It does not execute
// Docker or Lean and is not runtime evidence.
func newSyntheticExecutionBoundAttemptReceipt(t *testing.T, status string) (domain.MathProblem, LeanVerificationReceipt) {
	t.Helper()
	problem := domain.MathProblem{ID: "synthetic-attempt", Statement: "Truth is true.", LeanStatement: "True"}
	proof := "by\n  exact True.intro"
	proofBody, err := normalizeLeanProof(proof)
	if err != nil {
		t.Fatal(err)
	}
	imports := []string{"Init"}
	source := generatedLeanSource(problem.LeanStatement, proofBody, imports)
	base := newTestLeanSnapshot(t)
	image := base.Manifest.ImageDigest
	now := time.Now().UTC()
	started := now.Add(-500 * time.Millisecond)
	finished := started.Add(100 * time.Millisecond)
	containerName := "mathcase-synthetic-attempt"

	versionArgs, err := buildLeanSnapshotDockerArgs(image, "mathcase-synthetic-version", base.Manifest, "", "", "", "", []string{"--version"})
	if err != nil {
		t.Fatal(err)
	}
	versionText := "Lean (version 4.33.1, synthetic fixture)"
	versionStdout := versionText + "\n"
	versionCode := 0
	versionStart := started.Add(-300 * time.Millisecond)
	versionFinished := started.Add(-200 * time.Millisecond)
	versionCheck := LeanVersionCheck{
		Version: versionText, StdoutSHA256: digestHex([]byte(versionStdout)), StderrSHA256: digestHex(nil), StdoutExcerpt: versionStdout,
		Execution: LeanSandboxExecution{
			DockerExecutable: "docker", ExecutionMode: LeanExecutionModeDirect, ContainerName: "mathcase-synthetic-version",
			CommandArgv: append([]string{"docker"}, versionArgs...), StartedAtUTC: versionStart, FinishedAtUTC: versionFinished, ExitCode: &versionCode,
		},
	}

	inputRoot := t.TempDir()
	candidatePath := filepath.Join(inputRoot, "MathCaseCandidate.lean")
	if err := os.WriteFile(candidatePath, []byte(source), 0o600); err != nil {
		t.Fatal(err)
	}
	artifactRoot, err := prepareLeanArtifactOutput(t.TempDir())
	if err != nil {
		t.Fatal(err)
	}
	proofArgs, err := buildLeanSnapshotDockerArgs(image, containerName, base.Manifest, candidatePath, "MathCaseCandidate.lean", artifactRoot, "MathCaseCandidate.olean", []string{"--root=/mathcase/input", "-o", "/mathcase/output/MathCaseCandidate.olean", "/mathcase/input/MathCaseCandidate.lean"})
	if err != nil {
		t.Fatal(err)
	}
	stdout := ""
	stderr := ""
	observed := []string(nil)
	compiledStatus := "NOT_PRODUCED"
	compiledArtifact := []byte(nil)
	receiptExitCode := -1
	var sandboxExitCode *int
	timedOut := false
	cleanupAttempted := false
	switch status {
	case "PASSED":
		stdout = "'mathcase_candidate' depends on axioms: [propext]\n"
		observed = []string{"propext"}
		compiledStatus = "CAPTURED"
		compiledArtifact = []byte("synthetic compiled artifact bytes")
		receiptExitCode = 0
		code := 0
		sandboxExitCode = &code
	case "KERNEL_REJECTED":
		stderr = "error: unsolved goals\n"
		receiptExitCode = 1
		code := 1
		sandboxExitCode = &code
	case "AXIOM_POLICY_REJECTED":
		stdout = "'mathcase_candidate' depends on axioms: [sorryAx]\n"
		observed = []string{"sorryAx"}
		compiledStatus = "CAPTURED"
		compiledArtifact = []byte("synthetic compiled artifact bytes")
		receiptExitCode = 0
		code := 0
		sandboxExitCode = &code
	case "EXECUTION_ERROR":
		code := 125
		sandboxExitCode = &code
	case "TIMED_OUT":
		timedOut = true
		cleanupAttempted = true
	case "OUTPUT_LIMIT":
		stdout = "12345678"
		cleanupAttempted = true
	default:
		t.Fatalf("unsupported synthetic receipt status %q", status)
	}
	compiledArtifactSHA := ""
	compiledArtifactSize := int64(0)
	if compiledStatus == "CAPTURED" {
		compiledArtifactSHA = digestHex(compiledArtifact)
		compiledArtifactSize = int64(len(compiledArtifact))
	}
	cleanupExitCode := 0
	var cleanupExit *int
	if cleanupAttempted {
		cleanupExit = &cleanupExitCode
	}
	statementDigest, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	proofSHA := digestHex([]byte(proof))
	sourceSHA := digestHex([]byte(source))
	receipt := LeanVerificationReceipt{
		SchemaVersion: leanVerifierSchema, EvidenceID: "synthetic-attempt-receipt", RecordedAtUTC: now, ProblemID: problem.ID,
		InputProof: proof, ProblemStatementSHA256: statementDigest, ProofSHA256: proofSHA, GeneratedSourceSHA256: sourceSHA,
		ArtifactSnapshotSchema: LeanArtifactSnapshotSchemaVersion, GeneratedSource: source,
		CompiledArtifactStatus: compiledStatus, CompiledArtifact: compiledArtifact, CompiledArtifactSHA256: compiledArtifactSHA,
		CompiledArtifactSize: compiledArtifactSize, ProjectSnapshotSHA256: base.Manifest.ProjectSnapshot.SHA256,
		ProjectSnapshot: base.Manifest.ProjectSnapshot, SnapshotID: base.Manifest.SnapshotID, SnapshotManifestPath: base.ManifestPath,
		SnapshotManifestSHA256: base.ManifestSHA256, SnapshotImageCheck: testSnapshotImageCheck(base.Manifest), Toolchain: defaultLeanToolchain,
		LeanVersion: versionText, LeanVersionCheck: versionCheck, Imports: imports,
		AllowedAxioms: []string{"Classical.choice", "Quot.sound", "propext"}, ObservedAxioms: observed,
		KernelPassed: status == "PASSED" || status == "AXIOM_POLICY_REJECTED", AxiomsPassed: status == "PASSED", Status: status,
		AxiomOutput: stdout, StdoutSHA256: digestHex([]byte(stdout)), StderrSHA256: digestHex([]byte(stderr)),
		StdoutExcerpt: stdout, StderrExcerpt: stderr, ExitCode: receiptExitCode, ElapsedMilliseconds: 100,
		ExecutionIsolation: leanExecutionIsolation(image), ExecutionImage: image,
		SandboxExecution: LeanSandboxExecution{
			DockerExecutable: "docker", ExecutionMode: LeanExecutionModeDirect, ContainerName: containerName,
			CommandArgv: append([]string{"docker"}, proofArgs...), StartedAtUTC: started, FinishedAtUTC: finished,
			ExitCode: sandboxExitCode, TimedOut: timedOut, CleanupAttempted: cleanupAttempted, CleanupSucceeded: cleanupAttempted,
			CleanupExitCode: cleanupExit,
		},
	}
	if status == "OUTPUT_LIMIT" {
		receipt.StdoutSHA256 = ""
		receipt.StderrSHA256 = ""
		receipt.StdoutCapturedSHA256 = digestHex([]byte(stdout))
		receipt.StderrCapturedSHA256 = digestHex(nil)
		receipt.StdoutPrefix = []byte(stdout)
		receipt.StdoutBytesObserved = int64(len(stdout) + 1)
		receipt.StdoutBytesCaptured = int64(len(stdout))
		receipt.OutputLimitBytes = int64(len(stdout))
		receipt.OutputTruncated = true
		receipt.KernelPassed = false
		receipt.AxiomsPassed = false
		receipt.AxiomOutput = ""
		receipt.ObservedAxioms = nil
		receipt.SandboxExecution.ExitCode = nil
	}
	return problem, receipt
}

func localLeanVerifier(t *testing.T) (LeanVerifier, bool) {
	t.Helper()
	image := os.Getenv(leanSandboxImageEnv)
	manifest := os.Getenv(testLeanSnapshotManifestEnv)
	if !leanSandboxImagePattern.MatchString(image) || manifest == "" {
		return LeanVerifier{}, false
	}
	if _, err := os.Stat(manifest); err != nil {
		return LeanVerifier{}, false
	}
	docker, err := exec.LookPath("docker")
	if err != nil {
		return LeanVerifier{}, false
	}
	temp := t.TempDir()
	return LeanVerifier{
		DockerExecutable:     docker,
		SandboxImage:         image,
		SnapshotManifestPath: manifest,
		WorkspaceRoot:        filepath.Join(temp, "workspaces"),
		ReceiptRoot:          filepath.Join(temp, "receipts"),
		ExpectedToolchain:    defaultLeanToolchain,
		Timeout:              90 * time.Second,
		Now:                  time.Now,
	}, true
}

func readLeanReceipt(t *testing.T, root, evidenceID string) LeanVerificationReceipt {
	t.Helper()
	data, err := os.ReadFile(filepath.Join(root, evidenceID+".json"))
	if err != nil {
		t.Fatal(err)
	}
	var receipt LeanVerificationReceipt
	if err := json.Unmarshal(data, &receipt); err != nil {
		t.Fatal(err)
	}
	if !strings.HasPrefix(receipt.SchemaVersion, "mathcase-lean-verification-") {
		t.Fatalf("unexpected Lean verification receipt schema %q", receipt.SchemaVersion)
	}
	return receipt
}
