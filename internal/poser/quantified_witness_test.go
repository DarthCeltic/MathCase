package poser

import (
	"context"
	"encoding/hex"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/solver"
)

func requireQuantifiedWitnessLeanSandbox(t *testing.T) {
	t.Helper()
	image := strings.TrimPrefix(os.Getenv("MATHCASE_LEAN_SANDBOX_IMAGE"), "sha256:")
	if len(image) != 64 {
		t.Skip("immutable MATHCASE_LEAN_SANDBOX_IMAGE is not configured")
	}
	if _, err := hex.DecodeString(image); err != nil {
		t.Skip("immutable MATHCASE_LEAN_SANDBOX_IMAGE is not configured")
	}
	if _, err := exec.LookPath("docker"); err != nil {
		t.Skip("Docker is not installed")
	}
	if manifest := os.Getenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST"); manifest == "" {
		t.Skip("qualified MATHCASE_LEAN_SNAPSHOT_MANIFEST is not configured")
	} else if _, err := os.Stat(manifest); err != nil {
		t.Skip("qualified MATHCASE_LEAN_SNAPSHOT_MANIFEST is unavailable")
	}
}

// Leading universal binders are already flattened into the randomized plan.
// This test exercises that actual route with a negative inner Int witness and
// verifies the resulting negation with the local Lean kernel and V2 audit.
func TestNestedUniversalNegativeIntModelPassesLocalLeanAndGoVerifier(t *testing.T) {
	requireQuantifiedWitnessLeanSandbox(t)
	proposal := testProposal()
	parser := expressionParser{}
	body, err := parser.parse("∀ (k : Int), k ≥ 0", 0)
	if err != nil {
		t.Fatal(err)
	}
	proposal = makeProposal(OperatorSharpen, syntaxMutation{body: body, path: "root", description: "negative inner Int counterexample"}, "(n : Nat)", proposal.Parents, proposal.ParentLineageSHA256, time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC))
	plan, err := proposal.BuildRandomizedPlan(1)
	if err != nil {
		t.Fatalf("build randomized plan: %v", err)
	}
	if len(plan.Binders) != 2 || plan.Binders[0] != (RandomizedBinder{Name: "n", LeanType: "Nat"}) || plan.Binders[1] != (RandomizedBinder{Name: "k", LeanType: "Int"}) {
		t.Fatalf("plan binders = %#v, want the declaration and flattened inner universal", plan.Binders)
	}
	proof, err := plan.CounterexampleProofValues([]string{"0", "-1"})
	if err != nil || !strings.Contains(proof, "-1") {
		t.Fatalf("CounterexampleProofValues() = %q, %v; want negative inner Int model", proof, err)
	}
	negation, err := proposal.NegationProblem()
	if err != nil {
		t.Fatal(err)
	}
	tempRoot := t.TempDir()
	verifier := solver.LeanVerifier{
		SnapshotManifestPath: os.Getenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST"),
		WorkspaceRoot:        filepath.Join(tempRoot, "workspaces"), ReceiptRoot: filepath.Join(tempRoot, "receipts"),
		ExpectedToolchain: "leanprover/lean4:v4.33.1", Imports: []string{"Init"}, Timeout: 90 * time.Second,
	}
	checked, err := verifier.Verify(context.Background(), negation, proof)
	if err != nil || !checked.KernelPassed || !checked.AxiomsPassed {
		t.Fatalf("verify nested negative-Int counterexample = %#v, %v; want kernel and axiom pass", checked, err)
	}
}

func TestFinalConclusionSMTWitnessPassesRandomizedLeanAndGoVerifier(t *testing.T) {
	requireQuantifiedWitnessLeanSandbox(t)
	repositoryRoot, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	python := filepath.Join(repositoryRoot, ".venv", "Scripts", "python.exe")
	if _, err := os.Stat(python); err != nil {
		python = filepath.Join(repositoryRoot, ".venv", "bin", "python")
		if _, err := os.Stat(python); err != nil {
			t.Skip("local Python environment is not installed")
		}
	}
	if err := exec.Command(python, "-c", "import z3").Run(); err != nil {
		t.Skip("optional local z3-solver dependency is not installed")
	}

	base := testProposal()
	parser := expressionParser{}
	parsedBody, err := parser.parse("n = 0 → ∀ (k : Int), k > 0", 0)
	if err != nil {
		t.Fatalf("parse final-universal implication: %v", err)
	}
	proposal := makeProposal(OperatorSharpen, syntaxMutation{
		body: parsedBody, path: "root", description: "counterexample in a universal implication conclusion",
	}, "(n : Nat)", base.Parents, base.ParentLineageSHA256, time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC))
	plan, err := proposal.BuildRandomizedPlan(4)
	if err != nil {
		t.Fatalf("BuildRandomizedPlan() error = %v", err)
	}
	if plan.ConclusionBinderCount != 1 || len(plan.Binders) != 2 || plan.Binders[0] != (RandomizedBinder{Name: "n", LeanType: "Nat"}) || plan.Binders[1] != (RandomizedBinder{Name: "k", LeanType: "Int"}) {
		t.Fatalf("BuildRandomizedPlan() binder metadata = %#v, conclusion count %d; want outer n plus final-conclusion k", plan.Binders, plan.ConclusionBinderCount)
	}

	tempRoot := t.TempDir()
	verifier := solver.LeanVerifier{
		SnapshotManifestPath: os.Getenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST"),
		WorkspaceRoot:        filepath.Join(tempRoot, "workspaces"), ReceiptRoot: filepath.Join(tempRoot, "receipts"),
		ExpectedToolchain: "leanprover/lean4:v4.33.1", Imports: []string{"Init"}, Timeout: 90 * time.Second,
	}
	problem, err := proposal.TypecheckProblem()
	if err != nil {
		t.Fatalf("TypecheckProblem() error = %v", err)
	}
	problem.ID = "m2-final-conclusion-universal-witness"
	problem.Statement = "An implication with a universally quantified final conclusion has a concrete counterexample."
	randomizedBinders := make([]solver.LeanSampleBinder, len(plan.Binders))
	for index, binder := range plan.Binders {
		randomizedBinders[index] = solver.LeanSampleBinder{Name: binder.Name, LeanType: binder.LeanType}
	}
	randomized, err := verifier.CheckRandomizedCases(context.Background(), solver.LeanRandomizedCheckRequest{
		Problem: problem, Seed: plan.Seed, Binders: randomizedBinders, ClaimBody: plan.Body,
		HypothesesBody: plan.HypothesesBody, ImplicationAntecedents: plan.ImplicationAntecedents,
		ConclusionBody: plan.ConclusionBody, ConclusionBinderCount: plan.ConclusionBinderCount,
		HasHypotheses: plan.HasHypotheses, Cases: plan.Cases,
	})
	if err != nil || randomized.Status != "COUNTEREXAMPLE_OBSERVED" || randomized.ConclusionBinderCount != 1 {
		t.Fatalf("CheckRandomizedCases() = %#v, %v; want verified normalization and a sampled counterexample", randomized, err)
	}

	query, err := proposal.BuildSMTNegationQuery()
	if err != nil {
		t.Fatalf("BuildSMTNegationQuery() error = %v", err)
	}
	if query.ConclusionBinderCount != plan.ConclusionBinderCount || len(query.Binders) != len(plan.Binders) || len(query.ModelSymbols) != len(query.Binders) {
		t.Fatalf("SMT query binders/count/symbols = %#v/%d/%#v; randomized plan has %#v/%d", query.Binders, query.ConclusionBinderCount, query.ModelSymbols, plan.Binders, plan.ConclusionBinderCount)
	}
	smtBinders := make([]solver.SMTBinder, len(query.Binders))
	for index, binder := range query.Binders {
		smtBinders[index] = solver.SMTBinder{Name: query.ModelSymbols[index], LeanType: binder.LeanType}
	}
	smtSearch := solver.Z3SMTSearchSolver{
		PythonExecutable: python, BridgePath: filepath.Join(repositoryRoot, "scripts", "z3_smt_search.py"),
		ProjectRoot: repositoryRoot, Timeout: 5 * time.Second,
	}
	smtReceipt, err := smtSearch.Search(context.Background(), query.SMTLIB, smtBinders)
	if err != nil || smtReceipt.Status != "SAT" || smtReceipt.CounterexampleValues[query.ModelSymbols[0]] != "0" || smtReceipt.CounterexampleValues[query.ModelSymbols[1]] != "0" {
		t.Fatalf("Z3 final-conclusion query = %#v, %v; want SAT model n=0 and k=0", smtReceipt, err)
	}
	modelValues := make([]string, len(plan.Binders))
	for index := range plan.Binders {
		modelValues[index] = smtReceipt.CounterexampleValues[query.ModelSymbols[index]]
	}
	proof, err := plan.CounterexampleProofValues(modelValues)
	if err != nil {
		t.Fatalf("CounterexampleProofValues() error = %v", err)
	}
	negation, err := proposal.NegationProblem()
	if err != nil {
		t.Fatalf("NegationProblem() error = %v", err)
	}
	checked, err := verifier.Verify(context.Background(), negation, proof)
	if err != nil || !checked.KernelPassed || !checked.AxiomsPassed {
		t.Fatalf("Verify(final-conclusion SMT witness) = %#v, %v; want Lean kernel and V2 axiom pass", checked, err)
	}
}
