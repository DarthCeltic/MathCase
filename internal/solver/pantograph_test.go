package solver

import (
	"context"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestPantographTacticSolverReplaysR0bPlanThroughCascade(t *testing.T) {
	root, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	python := filepath.Join(root, ".venv", "Scripts", "python.exe")
	if _, err := os.Stat(python); err != nil {
		t.Skip("local Pantograph integration environment is not installed")
	}
	preflight := exec.Command(python, "-c", "import sys; from pathlib import Path; sys.path.insert(0, str(Path('scripts').resolve())); from pantograph.server import Server; from pantograph_search import resolve_lean_path; from lean_toolchain import resolve_lean_bin_dir; project = Path('proofs/r0b'); resolve_lean_bin_dir((project / 'lean-toolchain').read_text(encoding='utf-8').strip()); resolve_lean_path(project)")
	preflight.Dir = root
	if output, err := preflight.CombinedOutput(); err != nil {
		t.Skipf("local Pantograph replay prerequisites are unavailable: %s", strings.TrimSpace(string(output)))
	}
	plan, err := ReadTacticPlan(filepath.Join(root, "proofs", "r0b", "pantograph_plan.json"))
	if err != nil {
		t.Fatal(err)
	}
	problem := domain.MathProblem{ID: plan.ProblemID, Statement: "Natural-number addition is associative.", LeanStatement: plan.Statement}
	solver := PantographTacticSolver{PythonExecutable: python, ProjectRoot: root, Plan: plan}
	verifier := &scriptedVerifier{results: []Verification{{KernelPassed: true, AxiomsPassed: true, EvidenceID: "evidence-pantograph"}}}
	cascade := testCascade([]Solver{solver}, verifier, nil)
	result, err := cascade.Solve(context.Background(), "r0b-pantograph-run", problem)
	if err != nil {
		t.Fatal(err)
	}
	if !result.Solved || len(result.Attempts) != 1 || result.Attempts[0].Outcome != domain.SolverOutcomePass {
		t.Fatalf("Pantograph candidate did not pass through Cascade: %#v", result)
	}
	if result.Attempts[0].CandidateID != plan.CandidateID || verifier.calls != 1 {
		t.Fatalf("candidate identity or verifier call count is wrong: attempt=%#v verifier calls=%d", result.Attempts[0], verifier.calls)
	}
	trace := result.Attempts[0].LocalProcessTrace
	if trace == nil || trace.ExecutionClass != domain.LocalProcessHostUnisolated || trace.Replayability != domain.LocalProcessCapturedIOOnly {
		t.Fatalf("Pantograph replay process trace = %#v, want explicit host-unisolated captured-I/O trace", trace)
	}
	if trace.RuntimeIdentity == nil || trace.RuntimeIdentity.RuntimeKind != "pantograph-replay" || !trace.RuntimeIdentity.HasArtifactRole("pantograph_backend") {
		t.Fatalf("Pantograph replay runtime identity = %#v, want typed package/toolchain/backend identity", trace.RuntimeIdentity)
	}
	if trace.OutputCaptureLimitBytes != maxSearchOutputBytes || trace.StdoutBytesCaptured > maxSearchOutputBytes || trace.StderrBytesCaptured > maxSearchOutputBytes {
		t.Fatalf("Pantograph replay capture limits = (%d, %d, %d), want <= %d bytes", trace.OutputCaptureLimitBytes, trace.StdoutBytesCaptured, trace.StderrBytesCaptured, maxSearchOutputBytes)
	}
}

func TestPantographTacticSolverRefusesPlanForAnotherStatementBeforeLaunch(t *testing.T) {
	plan := TacticPlan{SchemaVersion: pantographPlanSchema, ProblemID: "problem-a", CandidateID: "candidate-a", Statement: "True", Tactics: []string{"trivial"}}
	solver := PantographTacticSolver{PythonExecutable: "unavailable-python", ProjectRoot: ".", Plan: plan}
	_, err := solver.Solve(context.Background(), domain.MathProblem{ID: "problem-a", LeanStatement: "False"})
	if err == nil || err.Error() != "solver: Pantograph tactic plan does not match the requested problem and statement" {
		t.Fatalf("mismatched tactic plan error = %v", err)
	}
}

func TestPantographTacticSolverPreservesOutputLimitTrace(t *testing.T) {
	root, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	python := filepath.Join(root, ".venv", "Scripts", "python.exe")
	if _, err := os.Stat(python); err != nil {
		t.Skip("local Pantograph integration environment is not installed")
	}
	bridgeRoot := t.TempDir()
	scripts := filepath.Join(bridgeRoot, "scripts")
	if err := os.Mkdir(scripts, 0o700); err != nil {
		t.Fatal(err)
	}
	bridge := "import sys\nsys.stdin.buffer.read()\nsys.stdout.write('x' * (256 * 1024 + 1))\nsys.stdout.flush()\n"
	if err := os.WriteFile(filepath.Join(scripts, "pantograph_replay.py"), []byte(bridge), 0o600); err != nil {
		t.Fatal(err)
	}
	plan := TacticPlan{SchemaVersion: pantographPlanSchema, ProblemID: "problem-output-limit", CandidateID: "candidate-output-limit", Statement: "True", Tactics: []string{"trivial"}}
	runner := PantographTacticSolver{PythonExecutable: python, ProjectRoot: bridgeRoot, Plan: plan, Timeout: 5 * time.Second}
	proposal, err := runner.Solve(context.Background(), domain.MathProblem{ID: plan.ProblemID, LeanStatement: plan.Statement})
	if err == nil {
		t.Fatal("PantographTacticSolver.Solve(output-over-limit bridge) = nil, want an output-limit error")
	}
	if proposal.LocalProcessTrace == nil {
		t.Fatalf("PantographTacticSolver.Solve(output-over-limit bridge) trace = nil, want preserved refusal trace: %v", err)
	}
	if got := proposal.LocalProcessTrace.Termination; got != "OUTPUT_LIMIT" {
		t.Fatalf("PantographTacticSolver.Solve(output-over-limit bridge) termination = %q, want OUTPUT_LIMIT", got)
	}
	if got := proposal.LocalProcessTrace.OutputTruncated; !got {
		t.Fatalf("PantographTacticSolver.Solve(output-over-limit bridge) output_truncated = %t, want true", got)
	}
	if got := proposal.LocalProcessTrace.StdoutBytesCaptured; got != maxSearchOutputBytes {
		t.Fatalf("PantographTacticSolver.Solve(output-over-limit bridge) captured stdout bytes = %d, want %d", got, maxSearchOutputBytes)
	}
}

func TestPantographTacticSolverReplaysR0bPlanInDockerWhenConfigured(t *testing.T) {
	image := strings.TrimSpace(os.Getenv("MATHCASE_PANTOGRAPH_SANDBOX_IMAGE"))
	if image == "" {
		t.Skip("immutable MATHCASE_PANTOGRAPH_SANDBOX_IMAGE is not configured")
	}
	if !validImageDigest(image) {
		t.Fatal("MATHCASE_PANTOGRAPH_SANDBOX_IMAGE must be an immutable sha256 image ID")
	}
	if _, err := exec.LookPath("docker"); err != nil {
		t.Skip("Docker is unavailable")
	}
	root, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	plan, err := ReadTacticPlan(filepath.Join(root, "proofs", "r0b", "pantograph_plan.json"))
	if err != nil {
		t.Fatal(err)
	}
	problem := domain.MathProblem{ID: plan.ProblemID, LeanStatement: plan.Statement}
	proposal, err := (PantographTacticSolver{
		DockerExecutable: "docker", SandboxImage: image, ProjectRoot: root, Plan: plan,
	}).Solve(context.Background(), problem)
	if err != nil {
		t.Fatalf("Docker Pantograph replay failed: %v; trace=%#v", err, proposal.LocalProcessTrace)
	}
	if proposal.Proof == "" || proposal.LocalProcessTrace == nil {
		t.Fatalf("Docker Pantograph replay omitted proof or trace: %#v", proposal)
	}
	trace := proposal.LocalProcessTrace
	if trace.ExecutionClass != domain.LocalProcessDockerNoNetwork || trace.ContainerExecution == nil || trace.ContainerExecution.ImageID != image {
		t.Fatalf("Docker Pantograph replay trace = %#v", trace)
	}
	if trace.RuntimeIdentity == nil || trace.RuntimeIdentity.PythonVersion != "3.12.3" {
		t.Fatalf("Docker Pantograph runtime identity = %#v", trace.RuntimeIdentity)
	}
}

func TestPantographTacticSolverIsFreeAndLocal(t *testing.T) {
	solver := PantographTacticSolver{}
	if !solver.Local() || solver.ProviderID() != "" {
		t.Fatalf("Pantograph replay route must be local and provider-free")
	}
	if amount, known := solver.MaxCostMicros(); amount != 0 || !known {
		t.Fatalf("local cost ceiling = (%d, %t), want (0, true)", amount, known)
	}
	if solver.Stage() != domain.SolverStageS0 {
		t.Fatalf("Pantograph stage = %s, want S0", solver.Stage())
	}
}
