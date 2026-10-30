package application

import (
	"context"
	"encoding/json"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

func TestNewLocalSearchRuntimeRequiresExplicitSnapshotManifest(t *testing.T) {
	_, err := NewLocalSearchRuntime(LocalSearchConfig{
		LocalTools: LocalToolsConfig{RepositoryRoot: filepath.Join("..", "..")},
		Problem: domain.MathProblem{
			ID: "manifest-required-control", Statement: "Every natural number equals itself.",
			LeanStatement: "∀ n : Nat, n = n",
		},
		LeanProjectRoot: filepath.Join("..", "..", "proofs", "r0b"),
	})
	if err == nil || !strings.Contains(err.Error(), "qualified Lean snapshot manifest is required") {
		t.Fatalf("NewLocalSearchRuntime() error = %v, want refusal before execution without an explicit snapshot manifest", err)
	}
}

func TestEnsureLocalCostJournalParentRejectsNetworkPaths(t *testing.T) {
	for _, path := range []string{`\\server\share\solver-costs.jsonl`, "//server/share/solver-costs.jsonl"} {
		if resolved, err := prepareLocalCostJournalPath(path); err == nil {
			t.Errorf("prepareLocalCostJournalPath(%q) = %q, want a local-path error", path, resolved)
		}
	}
}

func TestLocalSearchRuntimeUsesSelectedProjectAndImports(t *testing.T) {
	repositoryRoot, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	docker, err := exec.LookPath("docker")
	image := os.Getenv("MATHCASE_LEAN_SANDBOX_IMAGE")
	pantographImage := os.Getenv("MATHCASE_PANTOGRAPH_SANDBOX_IMAGE")
	manifest := os.Getenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST")
	if err != nil || image == "" || manifest == "" {
		t.Skip("pinned Lean Docker sandbox is not configured")
	}
	if _, err := os.Stat(manifest); err != nil {
		t.Skip("qualified Lean snapshot manifest is not available")
	}
	python := filepath.Join(repositoryRoot, ".venv", "Scripts", "python.exe")
	if _, err := os.Stat(python); err != nil {
		python = filepath.Join(repositoryRoot, ".venv", "bin", "python")
		if _, err := os.Stat(python); err != nil {
			t.Skip("local Pantograph Python environment is not installed")
		}
	}
	tempRoot := t.TempDir()
	leanProjectRoot := filepath.Join(repositoryRoot, "proofs", "r0b")
	problem := domain.MathProblem{
		ID:            "local-search-selected-project",
		Title:         "A reflexive natural-number equality",
		Statement:     "Every natural number equals itself.",
		LeanStatement: "∀ n : Nat, n = n",
	}
	workspaceRoot, err := filepath.Rel(repositoryRoot, filepath.Join(tempRoot, "workspaces"))
	if err != nil {
		t.Fatal(err)
	}
	receiptRoot, err := filepath.Rel(repositoryRoot, filepath.Join(tempRoot, "receipts"))
	if err != nil {
		t.Fatal(err)
	}
	costJournalPath, err := filepath.Rel(repositoryRoot, filepath.Join(tempRoot, "accounting", "solver-costs.jsonl"))
	if err != nil {
		t.Fatal(err)
	}
	runtime, err := NewLocalSearchRuntime(LocalSearchConfig{
		LocalTools: LocalToolsConfig{
			RepositoryRoot:           repositoryRoot,
			DockerExecutable:         docker,
			LeanSandboxImage:         image,
			PantographSandboxImage:   pantographImage,
			LeanSnapshotManifestPath: manifest,
			PythonExecutable:         python,
			WorkspaceRoot:            workspaceRoot,
			ReceiptRoot:              receiptRoot,
			CostJournalPath:          costJournalPath,
		},
		Problem:         problem,
		LeanProjectRoot: leanProjectRoot,
		LeanImports:     []string{"Init"},
		MaxNodes:        64,
		MaxDepth:        4,
	})
	if err != nil {
		t.Fatal(err)
	}
	session, err := runtime.OpenSession()
	if err != nil {
		t.Fatal(err)
	}
	result, solveErr := session.Solve(context.Background(), "local-search-selected-project-run", runtime.Problem)
	closeErr := session.Close()
	if solveErr != nil {
		t.Fatal(solveErr)
	}
	if closeErr != nil {
		t.Fatal(closeErr)
	}
	var processDetails string
	if len(result.Attempts) == 1 && result.Attempts[0].LocalProcessTrace != nil {
		trace := result.Attempts[0].LocalProcessTrace
		traceJSON, traceErr := json.Marshal(trace)
		if traceErr != nil {
			t.Fatalf("process trace marshal failed: %v", traceErr)
		}
		processDetails = fmt.Sprintf("; process trace=%s", traceJSON)
		t.Logf("LOCAL_PROCESS_TRACE=%s", traceJSON)
	}
	if _, err := os.Stat(filepath.Join(tempRoot, "accounting", "solver-costs.jsonl")); err != nil {
		t.Fatalf("durable local solver cost journal: %v", err)
	}
	if !result.Solved || len(result.Attempts) != 1 {
		t.Fatalf("LocalSearchRuntime.Solve(selected project) = %#v, want one verified solution%s", result, processDetails)
	}
	if result.Proof == "" {
		t.Fatalf("LocalSearchRuntime.Solve(selected project) returned an empty proof")
	}
	attempt := result.Attempts[0]
	if attempt.Outcome != domain.SolverOutcomePass || attempt.ProviderID != "" || attempt.CostMicros != 0 || len(attempt.EvidenceIDs) != 1 {
		t.Fatalf("LocalSearchRuntime.Solve(selected project) attempt = %#v, want provider-free verified receipt", attempt)
	}
	if attempt.SearchMetrics == nil || attempt.SearchMetrics.Engine != "pantograph-local-bfs-v2" || attempt.SearchMetrics.StopReason != "solved" {
		t.Fatalf("LocalSearchRuntime.Solve(selected project) metrics = %#v, want recorded solved search metrics", attempt.SearchMetrics)
	}
	if attempt.SearchMetrics.TacticAttempts == 0 || attempt.SearchMetrics.MaxDepth == 0 {
		t.Fatalf("LocalSearchRuntime.Solve(selected project) metrics = %#v, want nonzero search work", attempt.SearchMetrics)
	}
	if pantographImage != "" {
		if attempt.LocalProcessTrace == nil || attempt.LocalProcessTrace.ExecutionClass != domain.LocalProcessDockerNoNetwork || attempt.LocalProcessTrace.ContainerExecution == nil || attempt.LocalProcessTrace.ContainerExecution.ImageID != pantographImage {
			t.Fatalf("Pantograph search trace = %#v, want the configured network-disabled Docker image", attempt.LocalProcessTrace)
		}
	} else if attempt.LocalProcessTrace == nil || attempt.LocalProcessTrace.ExecutionClass != domain.LocalProcessHostUnisolated {
		t.Fatalf("Pantograph search trace = %#v, want the explicitly unisolated host route", attempt.LocalProcessTrace)
	}
	data, err := os.ReadFile(filepath.Join(runtime.Cascade.Verifier.(solver.LeanVerifier).ReceiptRoot, attempt.EvidenceIDs[0]+".json"))
	if err != nil {
		t.Fatal(err)
	}
	var receipt solver.LeanVerificationReceipt
	if err := json.Unmarshal(data, &receipt); err != nil {
		t.Fatal(err)
	}
	if receipt.Status != "PASSED" || !receipt.KernelPassed || !receipt.AxiomsPassed || receipt.ProofSHA256 != attempt.VerifiedProofSHA256 {
		t.Fatalf("local search receipt = %#v, want matching kernel and axiom pass", receipt)
	}
}
