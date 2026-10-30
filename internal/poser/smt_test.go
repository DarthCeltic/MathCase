package poser

import (
	"context"
	"os"
	"os/exec"
	"path/filepath"
	"reflect"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/solver"
)

func proposalForSMTTest(t *testing.T, declaration string) Proposal {
	t.Helper()
	base := testProposal()
	theorem, err := parseTheoremStatement(declaration)
	if err != nil {
		t.Fatal(err)
	}
	return makeProposal(OperatorSharpen, syntaxMutation{
		body: theorem.body, path: "root", description: "bounded SMT translation fixture",
	}, theorem.binders, base.Parents, base.ParentLineageSHA256, time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC))
}

func TestSMTQueryEncodesNatArithmeticAndNegatesCandidate(t *testing.T) {
	proposal := proposalForSMTTest(t, "theorem source (n : Nat) : n + 0 = n")
	query, err := proposal.BuildSMTNegationQuery()
	if err != nil {
		t.Fatal(err)
	}
	for _, want := range []string{
		"(declare-const mc_arg_0 Int)",
		"(assert (>= mc_arg_0 0))",
		"(assert (not (= (+ mc_arg_0 0) mc_arg_0)))",
	} {
		if !strings.Contains(query.SMTLIB, want) {
			t.Fatalf("BuildSMTNegationQuery() = %q, want fragment %q", query.SMTLIB, want)
		}
	}
	if query.ProposalID != proposal.ID || len(query.Binders) != 1 || query.Binders[0].LeanType != "Nat" {
		t.Fatalf("BuildSMTNegationQuery() metadata = %#v, want exact proposal and Nat binder", query)
	}
}

func TestSMTQueryPreservesLeanNaturalSubtraction(t *testing.T) {
	proposal := proposalForSMTTest(t, "theorem source (n : Nat) : n - 1 = 0")
	query, err := proposal.BuildSMTNegationQuery()
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(query.SMTLIB, "(ite (>= mc_arg_0 1) (- mc_arg_0 1) 0)") {
		t.Fatalf("BuildSMTNegationQuery() = %q, want truncated Nat subtraction", query.SMTLIB)
	}
}

func TestSMTQueryTranslatesBoolConnectives(t *testing.T) {
	proposal := proposalForSMTTest(t, "theorem source (b : Bool) : b ∨ ¬ b")
	query, err := proposal.BuildSMTNegationQuery()
	if err != nil {
		t.Fatalf("BuildSMTNegationQuery(%q): %v", proposal.LeanStatement, err)
	}
	if !strings.Contains(query.SMTLIB, "(declare-const mc_arg_0 Bool)") || !strings.Contains(query.SMTLIB, "(assert (not (or mc_arg_0 (not mc_arg_0))))") {
		t.Fatalf("BuildSMTNegationQuery() = %q, want Bool tautology negation", query.SMTLIB)
	}
}

func TestSMTQueryMapsReservedLeanBinderNamesToGeneratedSymbols(t *testing.T) {
	proposal := proposalForSMTTest(t, "theorem source (true : Bool) (assert : Bool) : true ∨ assert")
	query, err := proposal.BuildSMTNegationQuery()
	if err != nil {
		t.Fatalf("BuildSMTNegationQuery(%q): %v", proposal.LeanStatement, err)
	}
	for _, want := range []string{
		"(declare-const mc_arg_0 Bool)",
		"(declare-const mc_arg_1 Bool)",
		"(assert (not (or mc_arg_0 mc_arg_1)))",
	} {
		if !strings.Contains(query.SMTLIB, want) {
			t.Errorf("BuildSMTNegationQuery() = %q, want fragment %q", query.SMTLIB, want)
		}
	}
	if len(query.Binders) != 2 || query.Binders[0].Name != "true" || query.Binders[1].Name != "assert" || !reflect.DeepEqual(query.ModelSymbols, []string{"mc_arg_0", "mc_arg_1"}) {
		t.Fatalf("BuildSMTNegationQuery() binders/symbols = %#v/%#v, want original Lean names mapped to generated symbols", query.Binders, query.ModelSymbols)
	}
}

func TestSMTQueryAlphaRenamesShadowedQuantifierBinders(t *testing.T) {
	proposal := proposalForSMTTest(t, "theorem source (n : Nat) : n = 0 ∧ ∀ (n : Int), n < 0")
	query, err := proposal.BuildSMTNegationQuery()
	if err != nil {
		t.Fatalf("BuildSMTNegationQuery(%q): %v", proposal.LeanStatement, err)
	}
	want := "(assert (not (and (= mc_arg_0 0) (forall ((mc_arg_1 Int)) (< mc_arg_1 0)))))"
	if !strings.Contains(query.SMTLIB, want) {
		t.Fatalf("BuildSMTNegationQuery() = %q, want alpha-renamed nested binder fragment %q", query.SMTLIB, want)
	}
	if !reflect.DeepEqual(query.ModelSymbols, []string{"mc_arg_0"}) {
		t.Fatalf("BuildSMTNegationQuery() model symbols = %#v, want only the outer binder", query.ModelSymbols)
	}
}

func TestSMTQueryPreservesNestedFiniteBoolQuantifiers(t *testing.T) {
	tests := []struct {
		declaration string
		want        string
		wantBinders []string
	}{
		{
			declaration: "theorem source (n : Nat) : n = 0 → ∀ (flag : Bool), flag = true",
			want:        "(assert (not (=> (= mc_arg_0 0) (= mc_arg_1 true))))",
			wantBinders: []string{"n", "flag"},
		},
		{
			declaration: "theorem source (flag : Bool) : flag = true → ∃ (left right : Bool), left = right",
			want:        "(assert (not (=> (= mc_arg_0 true) (exists ((mc_arg_1 Bool) (mc_arg_2 Bool)) (= mc_arg_1 mc_arg_2)))))",
			wantBinders: []string{"flag"},
		},
		{
			declaration: "theorem source : ∀ (outer : Bool), ∃ (inner : Bool), inner = outer",
			want:        "(assert (not (exists ((mc_arg_1 Bool)) (= mc_arg_1 mc_arg_0))))",
			wantBinders: []string{"outer"},
		},
	}
	for _, test := range tests {
		proposal := proposalForSMTTest(t, test.declaration)
		query, err := proposal.BuildSMTNegationQuery()
		if err != nil {
			t.Fatalf("BuildSMTNegationQuery(%q): %v", test.declaration, err)
		}
		if query.SchemaVersion != "mathcase-m2-smt-query-v4" {
			t.Errorf("BuildSMTNegationQuery() schema = %q, want v4 symbol-binding record", query.SchemaVersion)
		}
		if !strings.Contains(query.SMTLIB, test.want) {
			t.Errorf("BuildSMTNegationQuery(%q) = %q, want fragment %q", test.declaration, query.SMTLIB, test.want)
		}
		if len(query.Binders) != len(test.wantBinders) {
			t.Errorf("BuildSMTNegationQuery(%q) binders = %#v, want names %v", test.declaration, query.Binders, test.wantBinders)
			continue
		}
		for index, name := range test.wantBinders {
			if query.Binders[index].Name != name {
				t.Errorf("BuildSMTNegationQuery(%q) binder %d = %#v, want %q", test.declaration, index, query.Binders[index], name)
			}
		}
	}
}

func TestSMTQueryTranslatesNestedNumericQuantifiersWithLeanDomains(t *testing.T) {
	tests := []struct {
		declaration string
		want        string
	}{
		{
			declaration: "theorem source (n : Nat) : n = 0 → ∀ (m : Nat), n ≤ m",
			want:        "(assert (not (=> (= mc_arg_0 0) (<= mc_arg_0 mc_arg_1))))",
		},
		{
			declaration: "theorem source : ∃ (n : Nat), n < 0",
			want:        "(exists ((mc_arg_0 Int)) (and (>= mc_arg_0 0) (< mc_arg_0 0)))",
		},
		{
			declaration: "theorem source : ∃ (z : Int), z < 0",
			want:        "(exists ((mc_arg_0 Int)) (< mc_arg_0 0))",
		},
		{
			declaration: "theorem source (flag : Bool) : flag = true → ∀ (n m : Nat), n ≤ m",
			want:        "(assert (not (=> (= mc_arg_0 true) (<= mc_arg_1 mc_arg_2))))",
		},
	}
	for _, test := range tests {
		proposal := proposalForSMTTest(t, test.declaration)
		query, err := proposal.BuildSMTNegationQuery()
		if err != nil {
			t.Fatalf("BuildSMTNegationQuery(%q): %v", test.declaration, err)
		}
		if !strings.Contains(query.SMTLIB, test.want) {
			t.Errorf("BuildSMTNegationQuery(%q) = %q, want fragment %q", test.declaration, query.SMTLIB, test.want)
		}
	}
}

func TestSMTQueryLiftsFinalUniversalBindersIntoModelValues(t *testing.T) {
	proposal := proposalForSMTTest(t, "theorem source (n : Nat) : n = 0 → ∀ (m : Int) (flag : Bool), m < 0 ∧ flag = true")
	query, err := proposal.BuildSMTNegationQuery()
	if err != nil {
		t.Fatalf("BuildSMTNegationQuery(%q): %v", proposal.LeanStatement, err)
	}
	wantBinders := []RandomizedBinder{{Name: "n", LeanType: "Nat"}, {Name: "m", LeanType: "Int"}, {Name: "flag", LeanType: "Bool"}}
	if !reflect.DeepEqual(query.Binders, wantBinders) || query.ConclusionBinderCount != 2 {
		t.Fatalf("BuildSMTNegationQuery() binders/count = %#v/%d, want %#v/2", query.Binders, query.ConclusionBinderCount, wantBinders)
	}
	for _, want := range []string{
		"(declare-const mc_arg_1 Int)",
		"(declare-const mc_arg_2 Bool)",
		"(assert (not (=> (= mc_arg_0 0) (and (< mc_arg_1 0) (= mc_arg_2 true)))))",
	} {
		if !strings.Contains(query.SMTLIB, want) {
			t.Errorf("BuildSMTNegationQuery() = %q, want fragment %q", query.SMTLIB, want)
		}
	}
}

func TestNestedNumericQuantifiersAreSolvedByLocalZ3(t *testing.T) {
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

	tests := []struct {
		declaration string
		wantStatus  string
	}{
		{
			declaration: "theorem source (n : Nat) : n = 0 → ∀ (m : Nat), m < n",
			wantStatus:  "SAT",
		},
		{
			declaration: "theorem source (n : Nat) : n = 0 → ∃ (m : Nat), n ≤ m",
			wantStatus:  "UNSAT",
		},
		{
			declaration: "theorem source (n : Nat) : n = 0 → ∀ (z : Int), z < 0",
			wantStatus:  "SAT",
		},
		{
			declaration: "theorem source (n : Nat) : n = 0 → ∃ (z : Int), z = 0",
			wantStatus:  "UNSAT",
		},
	}
	search := solver.Z3SMTSearchSolver{
		PythonExecutable: python,
		BridgePath:       filepath.Join(repositoryRoot, "scripts", "z3_smt_search.py"),
		ProjectRoot:      repositoryRoot,
		Timeout:          5 * time.Second,
	}
	for _, test := range tests {
		proposal := proposalForSMTTest(t, test.declaration)
		query, err := proposal.BuildSMTNegationQuery()
		if err != nil {
			t.Fatalf("BuildSMTNegationQuery(%q): %v", test.declaration, err)
		}
		binders := make([]solver.SMTBinder, len(query.Binders))
		for index, binder := range query.Binders {
			binders[index] = solver.SMTBinder{Name: query.ModelSymbols[index], LeanType: binder.LeanType}
		}
		receipt, err := search.Search(context.Background(), query.SMTLIB, binders)
		if err != nil || receipt.Status != test.wantStatus || receipt.SolverVersion == "" {
			t.Errorf("local Z3 for %q = %#v, %v; want %s with a reported solver version", test.declaration, receipt, err, test.wantStatus)
		}
		if receipt.QuerySHA256 == "" {
			t.Errorf("local Z3 for %q returned no query digest", test.declaration)
		}
	}
}

func TestSMTQueryTranslatesUnicodeDisequalityForNumericAndBooleanTerms(t *testing.T) {
	tests := []struct {
		declaration string
		want        string
	}{
		{
			declaration: "theorem source (n : Nat) : n ≠ 0",
			want:        "(assert (not (distinct mc_arg_0 0)))",
		},
		{
			declaration: "theorem source (flag : Bool) : flag ≠ true",
			want:        "(assert (not (distinct mc_arg_0 true)))",
		},
	}
	for _, test := range tests {
		proposal := proposalForSMTTest(t, test.declaration)
		query, err := proposal.BuildSMTNegationQuery()
		if err != nil {
			t.Fatalf("BuildSMTNegationQuery(%q): %v", test.declaration, err)
		}
		if !strings.Contains(query.SMTLIB, test.want) {
			t.Errorf("BuildSMTNegationQuery(%q) = %q, want %q", test.declaration, query.SMTLIB, test.want)
		}
	}
}

func TestSMTQueryExtractsLeadingUniversalBindersAlongsideDeclarationBinders(t *testing.T) {
	proposal := proposalForSMTTest(t, "theorem source (n : Nat) : ∀ m : Nat, n ≠ m")
	query, err := proposal.BuildSMTNegationQuery()
	if err != nil {
		t.Fatalf("BuildSMTNegationQuery(%q): %v", proposal.LeanStatement, err)
	}
	for _, want := range []string{
		"(declare-const mc_arg_0 Int)",
		"(declare-const mc_arg_1 Int)",
		"(assert (>= mc_arg_0 0))",
		"(assert (>= mc_arg_1 0))",
		"(assert (not (distinct mc_arg_0 mc_arg_1)))",
	} {
		if !strings.Contains(query.SMTLIB, want) {
			t.Errorf("BuildSMTNegationQuery() = %q, want fragment %q", query.SMTLIB, want)
		}
	}
	if len(query.Binders) != 2 || query.Binders[0].Name != "n" || query.Binders[1].Name != "m" {
		t.Fatalf("BuildSMTNegationQuery() binders = %#v, want declaration and leading universal binders", query.Binders)
	}
}

func TestSMTQueryFailsClosedOnUnsupportedLeanSyntax(t *testing.T) {
	for _, declaration := range []string{
		"theorem source (n : Nat) : Nat.succ n = n",
		"theorem source (n : Nat) : n ≤ 0 → ∀ (m : Fin 8), n < m.val",
		"theorem source (n : Nat) (i : Int) : n = i",
	} {
		proposal := proposalForSMTTest(t, declaration)
		if _, err := proposal.BuildSMTNegationQuery(); err == nil {
			t.Errorf("BuildSMTNegationQuery() accepted unsupported declaration %q", declaration)
		}
	}
}
