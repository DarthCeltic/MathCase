package poser

import (
	"reflect"
	"strings"
	"testing"
	"time"
)

func TestBuildRandomizedPlanIsDeterministicAndUsesBoundedTypedCases(t *testing.T) {
	proposal := testProposal()
	first, err := proposal.BuildRandomizedPlan(64)
	if err != nil {
		t.Fatalf("BuildRandomizedPlan() error = %v, want sample plan", err)
	}
	second, err := proposal.BuildRandomizedPlan(64)
	if err != nil {
		t.Fatalf("BuildRandomizedPlan(replay) error = %v, want deterministic sample plan", err)
	}
	if !reflect.DeepEqual(first, second) {
		t.Fatalf("BuildRandomizedPlan(replay) differs: first=%#v second=%#v", first, second)
	}
	if first.SampleCount != 64 || len(first.Cases) != 64 || first.Seed == "" || first.ProposalID != proposal.ID {
		t.Fatalf("BuildRandomizedPlan() metadata = %#v, want bounded reproducible plan", first)
	}
	if len(first.Binders) != 1 || first.Binders[0] != (RandomizedBinder{Name: "n", LeanType: "Nat"}) {
		t.Fatalf("BuildRandomizedPlan() binders = %#v, want explicit Nat binder", first.Binders)
	}
	if len(first.Cases[0]) != 1 || first.Cases[0][0] != "0" || len(first.Cases[1]) != 1 || first.Cases[1][0] != "1" {
		t.Fatalf("BuildRandomizedPlan() edge cases = %#v, want stable 0 and 1 cases", first.Cases[:2])
	}
	if !first.HypothesesTrivial || first.HypothesesBody != "True" {
		t.Fatalf("BuildRandomizedPlan() hypotheses = %q (trivial=%t), want explicit True baseline", first.HypothesesBody, first.HypothesesTrivial)
	}
}

func TestBuildRandomizedPlanIdentifiesOuterHypotheses(t *testing.T) {
	// Exercise the pure witness-plan builder with a synthetic proposal. The
	// production Generate path remains blocked until V3 has authenticated
	// review and exact-instance probe receipts.
	base := testProposal()
	parser := expressionParser{}
	body, err := parser.parse("n ≥ 0 → n ≤ n", 0)
	if err != nil {
		t.Fatalf("parse randomized-plan proposition: %v", err)
	}
	proposal := makeProposal(OperatorRelax, syntaxMutation{
		body: body, path: "root", description: "isolate the implication antecedent",
	}, "(n : Nat)", base.Parents, base.ParentLineageSHA256,
		time.Date(2026, time.October, 20, 16, 0, 0, 0, time.UTC))
	plan, err := proposal.BuildRandomizedPlan(8)
	if err != nil {
		t.Fatalf("BuildRandomizedPlan() error = %v, want implication witness plan", err)
	}
	if !plan.HasHypotheses || plan.HypothesesBody == "" || plan.ConclusionBody == "" || plan.HypothesesTrivial {
		t.Fatalf("BuildRandomizedPlan() implication fields = %#v, want exact antecedent and consequent", plan)
	}
	problem, err := plan.SatisfiabilityProblem()
	if err != nil || !strings.Contains(problem.LeanStatement, "∃ (n : Nat),") {
		t.Fatalf("SatisfiabilityProblem() = %#v, error = %v; want binder witness goal", problem, err)
	}
}

func TestBuildRandomizedPlanCollectsCompleteImplicationChain(t *testing.T) {
	base := testProposal()
	parser := expressionParser{}
	body, err := parser.parse("∀ m : Nat, n > 0 → m < 5 → n + m ≥ 0", 0)
	if err != nil {
		t.Fatalf("parse multi-antecedent theorem body: %v", err)
	}
	proposal := makeProposal(OperatorRelax, syntaxMutation{
		body: body, path: "root", description: "collect all outer implication hypotheses",
	}, "(n : Nat)", base.Parents, base.ParentLineageSHA256, time.Date(2026, time.October, 20, 16, 0, 0, 0, time.UTC))

	plan, err := proposal.BuildRandomizedPlan(8)
	if err != nil {
		t.Fatalf("BuildRandomizedPlan() error = %v", err)
	}
	if plan.SchemaVersion != "mathcase-m2-randomized-plan-v3" || !plan.HasHypotheses || plan.HypothesesTrivial {
		t.Fatalf("BuildRandomizedPlan() metadata = %#v", plan)
	}
	wantBinders := []RandomizedBinder{{Name: "n", LeanType: "Nat"}, {Name: "m", LeanType: "Nat"}}
	if !reflect.DeepEqual(plan.Binders, wantBinders) {
		t.Fatalf("BuildRandomizedPlan() binders = %#v, want leading universal binder included: %#v", plan.Binders, wantBinders)
	}
	if want := []string{"(n > 0)", "(m < 5)"}; !reflect.DeepEqual(plan.ImplicationAntecedents, want) {
		t.Fatalf("BuildRandomizedPlan() antecedents = %#v, want %#v", plan.ImplicationAntecedents, want)
	}
	if plan.HypothesesBody != "(n > 0) ∧ (m < 5)" || plan.ConclusionBody != "(n + m ≥ 0)" {
		t.Fatalf("BuildRandomizedPlan() split = (%q) → (%q), want full conjunction and final conclusion", plan.HypothesesBody, plan.ConclusionBody)
	}
	problem, err := plan.SatisfiabilityProblem()
	if err != nil || !strings.Contains(problem.LeanStatement, "∃ (n : Nat), (∃ (m : Nat), ((n > 0) ∧ (m < 5)))") {
		t.Fatalf("SatisfiabilityProblem() = %#v, error = %v; want existential conjunction witness", problem, err)
	}
	proof, err := plan.SatisfiabilityProof(1)
	if err != nil || strings.Count(proof, "⟨1, ?_⟩") != 2 || !strings.Contains(proof, "decide") {
		t.Fatalf("SatisfiabilityProof() = %q, error = %v; want the sampled witness and decidable conjunction", proof, err)
	}
}

func TestBuildRandomizedPlanLiftsSafeFinalConclusionBinders(t *testing.T) {
	tests := []struct {
		name                string
		declaration         string
		wantBinders         []RandomizedBinder
		wantConclusionCount int
		wantAntecedentCount int
	}{
		{
			name:                "single conclusion binder",
			declaration:         "theorem source (n : Nat) : n = 0 → ∀ (m : Int), m < n",
			wantBinders:         []RandomizedBinder{{Name: "n", LeanType: "Nat"}, {Name: "m", LeanType: "Int"}},
			wantConclusionCount: 1,
			wantAntecedentCount: 1,
		},
		{
			name:                "multiple binders after multiple antecedents",
			declaration:         "theorem source (flag : Bool) : flag = true → flag = true → ∀ (n : Nat) (k : Int), n < k",
			wantBinders:         []RandomizedBinder{{Name: "flag", LeanType: "Bool"}, {Name: "n", LeanType: "Nat"}, {Name: "k", LeanType: "Int"}},
			wantConclusionCount: 2,
			wantAntecedentCount: 2,
		},
		{
			name:                "identifier substring does not count as a reference",
			declaration:         "theorem source (n : Nat) : Nat.max n 1 = n → ∀ (m : Nat), n = 0",
			wantBinders:         []RandomizedBinder{{Name: "n", LeanType: "Nat"}, {Name: "m", LeanType: "Nat"}},
			wantConclusionCount: 1,
			wantAntecedentCount: 1,
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			proposal := proposalForSMTTest(t, test.declaration)
			plan, err := proposal.BuildRandomizedPlan(4)
			if err != nil {
				t.Fatalf("BuildRandomizedPlan(%q) error = %v, want bounded sample plan", test.declaration, err)
			}
			if !reflect.DeepEqual(plan.Binders, test.wantBinders) || plan.ConclusionBinderCount != test.wantConclusionCount || len(plan.ImplicationAntecedents) != test.wantAntecedentCount {
				t.Fatalf("BuildRandomizedPlan(%q) binders/count/antecedents = %#v/%d/%d, want %#v/%d/%d", test.declaration, plan.Binders, plan.ConclusionBinderCount, len(plan.ImplicationAntecedents), test.wantBinders, test.wantConclusionCount, test.wantAntecedentCount)
			}
			if plan.SchemaVersion != "mathcase-m2-randomized-plan-v3" {
				t.Errorf("BuildRandomizedPlan(%q) schema = %q, want v3", test.declaration, plan.SchemaVersion)
			}
		})
	}
}

func TestBuildRandomizedPlanRefusesConclusionBinderCapture(t *testing.T) {
	for _, declaration := range []string{
		"theorem source (m : Nat) : m = 0 → ∀ (m : Nat), m < 5",
		"theorem source (n : Nat) : (∀ (m : Nat), m = n) → ∀ (m : Nat), m < n",
	} {
		proposal := proposalForSMTTest(t, declaration)
		if _, err := proposal.BuildRandomizedPlan(1); err == nil {
			t.Errorf("BuildRandomizedPlan(%q) accepted a conclusion binder that can be captured", declaration)
		}
		if _, err := proposal.BuildSMTNegationQuery(); err == nil {
			t.Errorf("BuildSMTNegationQuery(%q) accepted a conclusion binder that can be captured", declaration)
		}
	}
}

func TestSampleBinderParserAcceptsOnlySimpleExplicitTypes(t *testing.T) {
	got, err := parseSampleBinders("(n : Nat) (flag : Bool) (x y : Int)")
	if err != nil {
		t.Fatalf("parseSampleBinders() error = %v, want supported explicit binders", err)
	}
	want := []RandomizedBinder{
		{Name: "n", LeanType: "Nat"},
		{Name: "flag", LeanType: "Bool"},
		{Name: "x", LeanType: "Int"},
		{Name: "y", LeanType: "Int"},
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("parseSampleBinders() = %#v, want %#v", got, want)
	}
	for _, unsupported := range []string{"{n : Nat}", "(n : Fin 8)", "(n : Nat) (h : n > 0)"} {
		if _, err := parseSampleBinders(unsupported); err == nil {
			t.Errorf("parseSampleBinders(%q) accepted unsupported binder syntax", unsupported)
		}
	}
}

func TestRandomizedProofBuildersReturnExplicitKernelCheckCandidates(t *testing.T) {
	plan, err := testProposal().BuildRandomizedPlan(3)
	if err != nil {
		t.Fatal(err)
	}
	negationProof, err := plan.CounterexampleProof(0)
	if err != nil {
		t.Fatalf("CounterexampleProof() error = %v", err)
	}
	if !strings.Contains(negationProof, "hnot : ¬") || !strings.Contains(negationProof, "h (0)") {
		t.Fatalf("CounterexampleProof() = %q, want explicit instantiated contradiction", negationProof)
	}
	problem, err := plan.SatisfiabilityProblem()
	if err != nil {
		t.Fatalf("SatisfiabilityProblem() error = %v", err)
	}
	if !strings.Contains(problem.LeanStatement, "∃ (n : Nat), (True)") {
		t.Fatalf("SatisfiabilityProblem() statement = %q, want existential binder-domain witness", problem.LeanStatement)
	}
	satProof, err := plan.SatisfiabilityProof(0)
	if err != nil {
		t.Fatalf("SatisfiabilityProof() error = %v", err)
	}
	if !strings.Contains(satProof, "⟨0, ?_⟩") || !strings.Contains(satProof, "True.intro") {
		t.Fatalf("SatisfiabilityProof() = %q, want a concrete witness proof", satProof)
	}
	if _, err := plan.CounterexampleProof(len(plan.Cases)); err == nil {
		t.Fatal("CounterexampleProof() accepted an out-of-range assignment")
	}
}

func TestCounterexampleProofValuesValidatesExternalSMTModels(t *testing.T) {
	plan, err := testProposal().BuildRandomizedPlan(1)
	if err != nil {
		t.Fatal(err)
	}
	proof, err := plan.CounterexampleProofValues([]string{"42"})
	if err != nil || !strings.Contains(proof, ") (42)") {
		t.Fatalf("CounterexampleProofValues() = %q, %v; want concrete model value", proof, err)
	}
	for _, values := range [][]string{{"-1"}, {"01"}, {"1; sorry"}, {""}, {"99999999999999999999999999999999999999999999999999999999999999999"}, {"42", "0"}} {
		if _, err := plan.CounterexampleProofValues(values); err == nil {
			t.Errorf("CounterexampleProofValues(%q) accepted invalid external model values", values)
		}
	}
}
