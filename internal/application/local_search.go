package application

import (
	"context"
	"errors"
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

// LocalSearchConfig combines the existing local toolchain paths with a formal
// target and explicit search bounds.
type LocalSearchConfig struct {
	LocalTools             LocalToolsConfig
	Problem                domain.MathProblem
	LeanProjectRoot        string
	LeanLakeCacheRoot      string
	LeanImports            []string
	RetrievalHints         []string
	RetrievalOutputSHA256  string
	SourceDeclarationHints []string
	SourceContextSHA256    string
	ExpectedToolchain      string
	MaxNodes               int
	MaxDepth               int
	SearchTimeout          time.Duration
	SMTTimeout             time.Duration
	VerificationTimeout    time.Duration
	RandomizedSampleCount  int
}

// LocalSearchRuntime composes bounded Pantograph search with the real Lean
// kernel/axiom verifier, local budget, and durable evidence receipts.
type LocalSearchRuntime struct {
	Cascade               solver.Cascade
	Problem               domain.MathProblem
	StatementChecker      solver.LeanVerifier
	SMTSolver             solver.Z3SMTSearchSolver
	ReceiptRoot           string
	CostJournalPath       string
	BudgetLimits          budget.Limits
	RandomizedSampleCount int
}

// NewLocalSearchRuntime composes bounded local search and verification against
// the Lake project selected for this problem. R0b remains a separate fixture.
func NewLocalSearchRuntime(config LocalSearchConfig) (LocalSearchRuntime, error) {
	if strings.TrimSpace(config.Problem.Statement) == "" || strings.TrimSpace(config.Problem.LeanStatement) == "" {
		return LocalSearchRuntime{}, errors.New("application: informal and Lean problem statements are required")
	}
	if config.LocalTools.RepositoryRoot == "" {
		return LocalSearchRuntime{}, errors.New("application: MathCase repository root is required")
	}
	if strings.TrimSpace(config.LocalTools.LeanSnapshotManifestPath) == "" {
		return LocalSearchRuntime{}, errors.New("application: a qualified Lean snapshot manifest is required for local search")
	}
	repositoryRoot, err := filepath.Abs(config.LocalTools.RepositoryRoot)
	if err != nil {
		return LocalSearchRuntime{}, fmt.Errorf("application: resolve repository root: %w", err)
	}
	repositoryRoot, err = filepath.EvalSymlinks(repositoryRoot)
	if err != nil {
		return LocalSearchRuntime{}, fmt.Errorf("application: resolve repository root: %w", err)
	}
	leanProjectRoot, toolchain, err := resolveLeanProject(config.LeanProjectRoot, config.ExpectedToolchain)
	if err != nil {
		return LocalSearchRuntime{}, fmt.Errorf("application: resolve selected Lean project: %w", err)
	}
	python, err := resolvePython(repositoryRoot, config.LocalTools.PythonExecutable)
	if err != nil {
		return LocalSearchRuntime{}, err
	}
	imports := append([]string(nil), config.LeanImports...)
	if len(imports) == 0 {
		imports = []string{"Init"}
	}
	workspaceRoot := config.LocalTools.WorkspaceRoot
	if workspaceRoot == "" {
		workspaceRoot = filepath.Join(repositoryRoot, "data", "local", "verification", "workspaces")
	}
	workspaceRoot, err = resolveLocalStoragePath(repositoryRoot, workspaceRoot, "verification workspace")
	if err != nil {
		return LocalSearchRuntime{}, err
	}
	receiptRoot := config.LocalTools.ReceiptRoot
	if receiptRoot == "" {
		receiptRoot = filepath.Join(repositoryRoot, "data", "local", "verification", "receipts")
	}
	receiptRoot, err = resolveLocalStoragePath(repositoryRoot, receiptRoot, "verification receipt")
	if err != nil {
		return LocalSearchRuntime{}, err
	}
	costJournalPath := config.LocalTools.CostJournalPath
	if costJournalPath == "" {
		costJournalPath = filepath.Join(filepath.Dir(receiptRoot), "costs", "solver-costs.jsonl")
	}
	costJournalPath, err = resolveLocalStoragePath(repositoryRoot, costJournalPath, "solver cost journal")
	if err != nil {
		return LocalSearchRuntime{}, err
	}
	limits := config.LocalTools.BudgetLimits
	if limits == (budget.Limits{}) {
		limits = budget.Limits{MaxRunMicros: 1, MaxSessionMicros: 1, MaxCandidateMicros: 1}
	}
	controller, err := budget.NewController(limits)
	if err != nil {
		return LocalSearchRuntime{}, fmt.Errorf("application: configure bounded local run budget: %w", err)
	}
	verifier := solver.LeanVerifier{
		DockerExecutable:     config.LocalTools.DockerExecutable,
		SandboxImage:         config.LocalTools.LeanSandboxImage,
		SnapshotManifestPath: config.LocalTools.LeanSnapshotManifestPath,
		WorkspaceRoot:        workspaceRoot,
		ReceiptRoot:          receiptRoot,
		ExpectedToolchain:    toolchain,
		Imports:              imports,
	}
	if err := verifier.ValidateSnapshotConfiguration(imports); err != nil {
		return LocalSearchRuntime{}, fmt.Errorf("application: preflight local Lean verifier environment: %w", err)
	}
	if config.VerificationTimeout > 0 {
		verifier.Timeout = config.VerificationTimeout
	}
	smtSolver := solver.Z3SMTSearchSolver{
		PythonExecutable: python,
		BridgePath:       filepath.Join(repositoryRoot, "scripts", "z3_smt_search.py"),
		ProjectRoot:      repositoryRoot,
		Timeout:          config.SMTTimeout,
	}
	cascade := solver.Cascade{
		Solvers: []solver.Solver{
			solver.PantographSearchSolver{
				PythonExecutable:       python,
				DockerExecutable:       config.LocalTools.DockerExecutable,
				SandboxImage:           pantographSandboxImage(config.LocalTools.PantographSandboxImage),
				ProjectRoot:            repositoryRoot,
				LeanProjectRoot:        leanProjectRoot,
				LeanLakeCacheRoot:      config.LeanLakeCacheRoot,
				Imports:                imports,
				RetrievalHints:         append([]string(nil), config.RetrievalHints...),
				RetrievalOutputSHA256:  config.RetrievalOutputSHA256,
				SourceDeclarationHints: append([]string(nil), config.SourceDeclarationHints...),
				SourceContextSHA256:    config.SourceContextSHA256,
				MaxNodes:               config.MaxNodes,
				MaxDepth:               config.MaxDepth,
				Timeout:                config.SearchTimeout,
			},
		},
		Verifier:     verifier,
		BudgetForRun: controller.RunBudgetFor,
		Toolchain:    toolchain,
	}
	return LocalSearchRuntime{
		Cascade:               cascade,
		Problem:               config.Problem,
		StatementChecker:      verifier,
		SMTSolver:             smtSolver,
		ReceiptRoot:           receiptRoot,
		CostJournalPath:       costJournalPath,
		BudgetLimits:          limits,
		RandomizedSampleCount: config.RandomizedSampleCount,
	}, nil
}

// OpenSession opens the local-only solver route with a locked, durable cost
// journal. Its default journal is stored beside the verification receipt tree.
func (r LocalSearchRuntime) OpenSession() (*SolverSession, error) {
	path, err := prepareLocalCostJournalPath(r.CostJournalPath)
	if err != nil {
		return nil, err
	}
	return OpenSolverSession(SolverSessionConfig{
		CostJournalPath: path,
		BudgetLimits:    r.BudgetLimits,
		Solvers:         r.Cascade.Solvers,
		Verifier:        r.Cascade.Verifier,
		Toolchain:       r.Cascade.Toolchain,
	})
}

func prepareLocalCostJournalPath(path string) (string, error) {
	if strings.TrimSpace(path) == "" || strings.HasPrefix(path, `\\`) || strings.HasPrefix(path, "//") {
		return "", errors.New("application: cost journal must use a local path")
	}
	absolute, err := filepath.Abs(path)
	if err != nil {
		return "", fmt.Errorf("application: resolve cost journal: %w", err)
	}
	if strings.HasPrefix(filepath.VolumeName(absolute), `\\`) {
		return "", errors.New("application: cost journal must use a local filesystem")
	}
	parent := filepath.Dir(absolute)
	if err := os.MkdirAll(parent, 0o700); err != nil {
		return "", fmt.Errorf("application: create cost journal directory: %w", err)
	}
	resolvedParent, err := filepath.EvalSymlinks(parent)
	if err != nil {
		return "", fmt.Errorf("application: resolve cost journal directory: %w", err)
	}
	if strings.HasPrefix(filepath.VolumeName(resolvedParent), `\\`) {
		return "", errors.New("application: cost journal must use a local filesystem")
	}
	return filepath.Join(resolvedParent, filepath.Base(absolute)), nil
}

func resolveLeanProject(projectRoot, expectedToolchain string) (string, string, error) {
	if strings.TrimSpace(projectRoot) == "" {
		return "", "", errors.New("a selected Lean Lake project root is required")
	}
	root, err := filepath.Abs(projectRoot)
	if err != nil {
		return "", "", fmt.Errorf("resolve selected Lean project root: %w", err)
	}
	root, err = filepath.EvalSymlinks(root)
	if err != nil {
		return "", "", fmt.Errorf("resolve selected Lean project root: %w", err)
	}
	info, err := os.Stat(root)
	if err != nil || !info.IsDir() {
		return "", "", errors.New("selected Lean project root is not a directory")
	}
	if _, err := os.Stat(filepath.Join(root, "lean-toolchain")); err != nil {
		return "", "", errors.New("selected Lean project has no lean-toolchain file")
	}
	if _, err := os.Stat(filepath.Join(root, "lake-manifest.json")); err != nil {
		return "", "", errors.New("selected Lean project has no lake-manifest.json")
	}
	if _, tomlErr := os.Stat(filepath.Join(root, "lakefile.toml")); tomlErr != nil {
		if _, leanErr := os.Stat(filepath.Join(root, "lakefile.lean")); leanErr != nil {
			return "", "", errors.New("selected Lean project has no Lake configuration")
		}
	}
	toolchainBytes, err := os.ReadFile(filepath.Join(root, "lean-toolchain"))
	if err != nil {
		return "", "", fmt.Errorf("read selected Lean toolchain: %w", err)
	}
	toolchain := strings.TrimSpace(string(toolchainBytes))
	if toolchain == "" {
		return "", "", errors.New("selected Lean project has an empty toolchain pin")
	}
	if expectedToolchain != "" && toolchain != expectedToolchain {
		return "", "", fmt.Errorf("selected Lean toolchain %q does not match expected %q", toolchain, expectedToolchain)
	}
	return root, toolchain, nil
}

// Solve runs one bounded local search attempt followed by independent Lean
// verification and V2 axiom auditing.
func (r LocalSearchRuntime) Solve(ctx context.Context, runID string) (solver.Result, error) {
	return r.Cascade.Solve(ctx, runID, r.Problem)
}
