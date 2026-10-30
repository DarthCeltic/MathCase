// Package application assembles runnable local MathCase routes from the
// verified project components. It does not configure network providers.
package application

import (
	"context"
	"errors"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

const r0bToolchain = "leanprover/lean4:v4.33.1"

// LocalToolsConfig contains local executable and storage locations shared by
// the problem-specific search route and the known-proof acceptance fixture.
type LocalToolsConfig struct {
	RepositoryRoot           string
	DockerExecutable         string
	LeanSandboxImage         string
	LeanSnapshotManifestPath string
	PantographSandboxImage   string
	PythonExecutable         string
	WorkspaceRoot            string
	ReceiptRoot              string
	CostJournalPath          string
	BudgetLimits             budget.Limits
}

// R0bConfig keeps the named acceptance-fixture constructor source-compatible.
type R0bConfig = LocalToolsConfig

// R0bRuntime is the locally composed Pantograph -> Lean -> axiom-audit route.
type R0bRuntime struct {
	Cascade solver.Cascade
	Problem domain.MathProblem
}

// NewR0bRuntime configures the pinned local Pantograph plan and real Lean
// verifier. The returned cascade has no provider solver or network cost path.
func NewR0bRuntime(config R0bConfig) (R0bRuntime, error) {
	if config.RepositoryRoot == "" {
		return R0bRuntime{}, errors.New("application: MathCase repository root is required")
	}
	repositoryRoot, err := filepath.Abs(config.RepositoryRoot)
	if err != nil {
		return R0bRuntime{}, fmt.Errorf("application: resolve repository root: %w", err)
	}
	repositoryRoot, err = filepath.EvalSymlinks(repositoryRoot)
	if err != nil {
		return R0bRuntime{}, fmt.Errorf("application: resolve repository root: %w", err)
	}
	planPath := filepath.Join(repositoryRoot, "proofs", "r0b", "pantograph_plan.json")
	plan, err := solver.ReadTacticPlan(planPath)
	if err != nil {
		return R0bRuntime{}, fmt.Errorf("application: load pinned R0b tactic plan: %w", err)
	}
	pantographImage := pantographSandboxImage(config.PantographSandboxImage)
	python := ""
	if pantographImage == "" {
		python, err = resolvePython(repositoryRoot, config.PythonExecutable)
		if err != nil {
			return R0bRuntime{}, err
		}
	}
	workspaceRoot := config.WorkspaceRoot
	if workspaceRoot == "" {
		workspaceRoot = filepath.Join(repositoryRoot, "data", "local", "verification", "workspaces")
	}
	workspaceRoot, err = resolveLocalStoragePath(repositoryRoot, workspaceRoot, "verification workspace")
	if err != nil {
		return R0bRuntime{}, err
	}
	receiptRoot := config.ReceiptRoot
	if receiptRoot == "" {
		receiptRoot = filepath.Join(repositoryRoot, "data", "local", "verification", "receipts")
	}
	receiptRoot, err = resolveLocalStoragePath(repositoryRoot, receiptRoot, "verification receipt")
	if err != nil {
		return R0bRuntime{}, err
	}
	limits := config.BudgetLimits
	if limits == (budget.Limits{}) {
		limits = budget.Limits{MaxRunMicros: 1, MaxSessionMicros: 1, MaxCandidateMicros: 1}
	}
	controller, err := budget.NewController(limits)
	if err != nil {
		return R0bRuntime{}, fmt.Errorf("application: configure bounded local run budget: %w", err)
	}
	verifier := solver.LeanVerifier{
		DockerExecutable:     config.DockerExecutable,
		SandboxImage:         config.LeanSandboxImage,
		SnapshotManifestPath: config.LeanSnapshotManifestPath,
		WorkspaceRoot:        workspaceRoot,
		ReceiptRoot:          receiptRoot,
		ExpectedToolchain:    r0bToolchain,
	}
	localSolver := solver.PantographTacticSolver{
		PythonExecutable: python,
		DockerExecutable: config.DockerExecutable,
		SandboxImage:     pantographImage,
		ProjectRoot:      repositoryRoot,
		Plan:             plan,
	}
	problem := domain.MathProblem{
		ID:            plan.ProblemID,
		Title:         "Lean core Nat.add_assoc",
		Statement:     "Natural-number addition is associative.",
		LeanStatement: plan.Statement,
	}
	return R0bRuntime{
		Cascade: solver.Cascade{
			Solvers:      []solver.Solver{localSolver},
			Verifier:     verifier,
			BudgetForRun: controller.RunBudgetFor,
			Toolchain:    r0bToolchain,
		},
		Problem: problem,
	}, nil
}

func pantographSandboxImage(configured string) string {
	if configured = strings.TrimSpace(configured); configured != "" {
		return configured
	}
	return strings.TrimSpace(os.Getenv("MATHCASE_PANTOGRAPH_SANDBOX_IMAGE"))
}

// Solve runs the single configured local R0b route for one canonical run ID.
func (r R0bRuntime) Solve(ctx context.Context, runID string) (solver.Result, error) {
	return r.Cascade.Solve(ctx, runID, r.Problem)
}

func resolvePython(repositoryRoot, configured string) (string, error) {
	candidates := []string{configured}
	if configured == "" {
		candidates = append(candidates,
			filepath.Join(repositoryRoot, ".venv", "Scripts", "python.exe"),
			filepath.Join(repositoryRoot, ".venv", "bin", "python3"),
			filepath.Join(repositoryRoot, ".venv", "bin", "python"),
		)
	}
	for _, candidate := range candidates {
		if candidate == "" {
			continue
		}
		path, err := filepath.Abs(candidate)
		if err != nil {
			continue
		}
		info, err := os.Stat(path)
		if err == nil && !info.IsDir() {
			return path, nil
		}
		if configured != "" {
			return "", errors.New("application: configured Python executable is unavailable")
		}
	}
	for _, name := range []string{"python3", "python"} {
		if path, err := exec.LookPath(name); err == nil {
			return path, nil
		}
	}
	return "", errors.New("application: Python executable is required for the local Pantograph route")
}

// R0bConfigSummary reports only fixed local route metadata for UI display.
