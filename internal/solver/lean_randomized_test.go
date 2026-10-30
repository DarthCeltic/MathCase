package solver

import (
	"context"
	"encoding/json"
	"os"
	"path/filepath"
	"reflect"
	"strings"
	"testing"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestLeanRandomizedCheckerRecordsConcreteInstancesAndCounterexample(t *testing.T) {
	verifier, available := localLeanVerifier(t)
	if !available {
		t.Skip("pinned local Lake executable is not installed")
	}
	request := LeanRandomizedCheckRequest{
		Problem: domain.MathProblem{
			ID:            "m2-randomized-nat-strict-self",
			Statement:     "Every natural number is strictly less than itself.",
			LeanStatement: "∀ (n : Nat), n < n",
		},
		Seed:           "0123456789abcdef",
		Binders:        []LeanSampleBinder{{Name: "n", LeanType: "Nat"}},
		ClaimBody:      "n < n",
		HypothesesBody: "True",
		Cases:          [][]string{{"0"}, {"1"}},
	}
	receipt, err := verifier.CheckRandomizedCases(context.Background(), request)
	if err != nil {
		t.Fatalf("CheckRandomizedCases() error = %v, want local Lean sample receipt", err)
	}
	if receipt.Status != "COUNTEREXAMPLE_OBSERVED" || receipt.TestsRun != 2 || !reflectCaseValue(receipt.Cases[0].ClaimHolds, false) || !reflectCaseValue(receipt.Cases[1].ClaimHolds, false) {
		t.Fatalf("CheckRandomizedCases() receipt = %#v, want two evaluated false instances", receipt)
	}
	if receipt.HypothesisWitnessCaseIndex == nil || *receipt.HypothesisWitnessCaseIndex != 0 || !reflectCaseValue(receipt.Cases[0].HypothesesHold, true) {
		t.Fatalf("CheckRandomizedCases() hypothesis witness = %#v, want case 0 with satisfiable True", receipt.HypothesisWitnessCaseIndex)
	}
	if len(receipt.CounterexampleCaseIndices) != 2 || receipt.EvidenceID == "" || receipt.GeneratedSourceSHA256 == "" || receipt.ProjectSnapshotSHA256 == "" {
		t.Fatalf("CheckRandomizedCases() evidence = %#v, want bound immutable result", receipt)
	}
	data, err := os.ReadFile(filepath.Join(verifier.ReceiptRoot, receipt.EvidenceID+".randomized.json"))
	if err != nil {
		t.Fatalf("read randomized receipt: %v", err)
	}
	var stored LeanRandomizedCheckReceipt
	if err := json.Unmarshal(data, &stored); err != nil {
		t.Fatalf("decode randomized receipt: %v", err)
	}
	if stored.EvidenceID != receipt.EvidenceID || stored.Seed != request.Seed || stored.TestsRun != 2 {
		t.Fatalf("stored randomized receipt = %#v, want exact seed and case count", stored)
	}
}

func TestLeanRandomizedCheckerRejectsInjectedCaseValues(t *testing.T) {
	request := LeanRandomizedCheckRequest{
		Problem: domain.MathProblem{ID: "m2-randomized-input", Statement: "A sample check.", LeanStatement: "True"},
		Seed:    "0123456789abcdef", Binders: []LeanSampleBinder{{Name: "n", LeanType: "Nat"}},
		ClaimBody: "True", HypothesesBody: "True", Cases: [][]string{{"0)\n#eval IO.println 1"}},
	}
	_, err := (LeanVerifier{}).CheckRandomizedCases(context.Background(), request)
	if err == nil || !strings.Contains(err.Error(), "not a supported literal") {
		t.Fatalf("CheckRandomizedCases() error = %v, want assignment injection refusal", err)
	}
}

func TestLeanRandomizedCheckerEvaluatesImplicationHypothesisAndWitness(t *testing.T) {
	verifier, available := localLeanVerifier(t)
	if !available {
		t.Skip("pinned local Lake executable is not installed")
	}
	request := LeanRandomizedCheckRequest{
		Problem: domain.MathProblem{
			ID:            "m2-randomized-implication-hypothesis",
			Statement:     "For natural numbers, nonnegativity implies reflexivity.",
			LeanStatement: "∀ (n : Nat), n ≥ 0 → n ≤ n",
		},
		Seed:           "fedcba9876543210",
		Binders:        []LeanSampleBinder{{Name: "n", LeanType: "Nat"}},
		ClaimBody:      "n ≥ 0 → n ≤ n",
		HypothesesBody: "n ≥ 0",
		ConclusionBody: "n ≤ n",
		HasHypotheses:  true,
		Cases:          [][]string{{"1"}, {"0"}},
	}
	receipt, err := verifier.CheckRandomizedCases(context.Background(), request)
	if err != nil {
		t.Fatalf("CheckRandomizedCases() error = %v, want evaluated implication cases", err)
	}
	if receipt.Status != "SAMPLES_PASS" || receipt.TestsRun != 2 || receipt.HypothesisWitnessCaseIndex == nil || *receipt.HypothesisWitnessCaseIndex != 0 || !reflectCaseValue(receipt.Cases[0].HypothesesHold, true) || !reflectCaseValue(receipt.Cases[1].HypothesesHold, true) {
		t.Fatalf("CheckRandomizedCases() receipt = %#v, want true samples and case 0 hypothesis witness", receipt)
	}
	satisfiabilityProblem := domain.MathProblem{
		ID: "m2-randomized-hypothesis-witness", Statement: "There is a natural number satisfying the antecedent.",
		LeanStatement: "∃ (n : Nat), n ≥ 0",
	}
	verification, err := verifier.Verify(context.Background(), satisfiabilityProblem, "by\n  refine ⟨0, ?_⟩\n  decide")
	if err != nil || !verification.KernelPassed || !verification.AxiomsPassed {
		t.Fatalf("Verify(sampled hypothesis witness) = %#v, error = %v; want kernel and axiom pass", verification, err)
	}
}

func TestLeanRandomizedCheckerHandlesAndVerifiesCompleteImplicationChain(t *testing.T) {
	verifier, available := localLeanVerifier(t)
	if !available {
		t.Skip("pinned local Lake executable is not installed")
	}
	request := LeanRandomizedCheckRequest{
		Problem: domain.MathProblem{
			ID: "m2-randomized-multi-antecedent", Statement: "Positive natural numbers below five are nonnegative.",
			LeanStatement: "∀ (n : Nat), ∀ (m : Nat), n > 0 → m < 5 → n + m ≥ 0",
		},
		Seed: "0123456789abcdef", Binders: []LeanSampleBinder{{Name: "n", LeanType: "Nat"}, {Name: "m", LeanType: "Nat"}},
		ClaimBody: "n > 0 → m < 5 → n + m ≥ 0", HypothesesBody: "(n > 0) ∧ (m < 5)",
		ImplicationAntecedents: []string{"n > 0", "m < 5"}, ConclusionBody: "n + m ≥ 0", HasHypotheses: true,
		Cases: [][]string{{"0", "0"}, {"1", "1"}, {"5", "5"}},
	}
	receipt, err := verifier.CheckRandomizedCases(context.Background(), request)
	if err != nil {
		t.Fatalf("CheckRandomizedCases() error = %v", err)
	}
	if receipt.SchemaVersion != "mathcase-lean-randomized-check-v4" || receipt.Status != "SAMPLES_PASS" || receipt.TestsRun != 3 || receipt.HypothesisWitnessCaseIndex == nil || *receipt.HypothesisWitnessCaseIndex != 1 {
		t.Fatalf("CheckRandomizedCases() receipt = %#v, want full-chain split and a witness at n=1", receipt)
	}
	if !reflect.DeepEqual(receipt.ImplicationAntecedents, request.ImplicationAntecedents) {
		t.Fatalf("CheckRandomizedCases() antecedents = %#v, want %#v", receipt.ImplicationAntecedents, request.ImplicationAntecedents)
	}

	witnessProblem := domain.MathProblem{
		ID: "m2-randomized-multi-antecedent-witness", Statement: "A natural number satisfies both hypotheses.",
		LeanStatement: "∃ (n : Nat), ∃ (m : Nat), (n > 0) ∧ (m < 5)",
	}
	verification, err := verifier.Verify(context.Background(), witnessProblem, "by\n  refine ⟨1, ?_⟩\n  refine ⟨1, ?_⟩\n  decide")
	if err != nil || !verification.KernelPassed || !verification.AxiomsPassed {
		t.Fatalf("Verify(multiple-hypothesis witness) = %#v, error = %v", verification, err)
	}

	badRequest := request
	badRequest.Problem.ID = "m2-randomized-mismatched-hypotheses"
	badRequest.HypothesesBody = "(n = 0) ∧ (m = 5)"
	badReceipt, err := verifier.CheckRandomizedCases(context.Background(), badRequest)
	if err != nil || badReceipt.Status != "UNSUPPORTED" || badReceipt.TestsRun != 0 || badReceipt.HypothesisWitnessCaseIndex != nil {
		t.Fatalf("CheckRandomizedCases(mismatched hypothesis decomposition) = %#v, error = %v; want fail-closed Lean rejection", badReceipt, err)
	}

	badAntecedentRequest := request
	badAntecedentRequest.Problem.ID = "m2-randomized-mismatched-antecedent-list"
	badAntecedentRequest.ImplicationAntecedents = []string{"n = 0", "m = 5"}
	badAntecedentReceipt, err := verifier.CheckRandomizedCases(context.Background(), badAntecedentRequest)
	if err != nil || badAntecedentReceipt.Status != "UNSUPPORTED" || badAntecedentReceipt.TestsRun != 0 {
		t.Fatalf("CheckRandomizedCases(mismatched antecedent list) = %#v, error = %v; want fail-closed Lean rejection", badAntecedentReceipt, err)
	}
}

func TestLeanRandomizedCheckerNormalizesMultipleFinalConclusionBinders(t *testing.T) {
	verifier, available := localLeanVerifier(t)
	if !available {
		t.Skip("pinned local Lake executable is not installed")
	}
	request := LeanRandomizedCheckRequest{
		Problem: domain.MathProblem{
			ID: "m2-randomized-final-binders", Statement: "The implication has two sampleable final-conclusion binders.",
			LeanStatement: "∀ (flag : Bool), flag = true → flag = true → ∀ (n : Nat) (k : Int), n < k",
		},
		Seed: "0123456789abcdef",
		Binders: []LeanSampleBinder{
			{Name: "flag", LeanType: "Bool"}, {Name: "n", LeanType: "Nat"}, {Name: "k", LeanType: "Int"},
		},
		ClaimBody: "flag = true → flag = true → n < k", HypothesesBody: "(flag = true) ∧ (flag = true)",
		ImplicationAntecedents: []string{"flag = true", "flag = true"}, ConclusionBody: "n < k",
		ConclusionBinderCount: 2, HasHypotheses: true,
		Cases: [][]string{{"true", "0", "0"}, {"false", "1", "0"}},
	}
	receipt, err := verifier.CheckRandomizedCases(context.Background(), request)
	if err != nil || receipt.Status != "COUNTEREXAMPLE_OBSERVED" || receipt.ConclusionBinderCount != 2 || receipt.HypothesisWitnessCaseIndex == nil || *receipt.HypothesisWitnessCaseIndex != 0 {
		t.Fatalf("CheckRandomizedCases(multiple final binders) = %#v, %v; want Lean-checked normalization and case 0", receipt, err)
	}
}

func reflectCaseValue(value *bool, want bool) bool {
	return value != nil && *value == want
}
