package poser

import (
	"strings"
	"testing"
)

func TestProposalBuildsBoundedTypecheckAndNegationProblems(t *testing.T) {
	proposal := testProposal()
	proposition, err := proposal.FormalProposition()
	if err != nil {
		t.Fatalf("FormalProposition() error = %v, want a proposition with preserved binders", err)
	}
	if !strings.Contains(proposition, "∀ (n : Nat),") || !strings.Contains(proposition, "n + 0 = n") {
		t.Fatalf("FormalProposition() = %q, want the full theorem proposition and binder", proposition)
	}

	typecheckProblem, err := proposal.TypecheckProblem()
	if err != nil {
		t.Fatalf("TypecheckProblem() error = %v, want a Lean Prop-check target", err)
	}
	if typecheckProblem.ID != "m2-statement-"+strings.TrimPrefix(proposal.ID, "proposal-") || typecheckProblem.LeanStatement != proposition {
		t.Fatalf("TypecheckProblem() = %#v, want proposal-bound proposition", typecheckProblem)
	}

	negationProblem, err := proposal.NegationProblem()
	if err != nil {
		t.Fatalf("NegationProblem() error = %v, want a negation-search target", err)
	}
	if negationProblem.ID != "m2-negation-"+strings.TrimPrefix(proposal.ID, "proposal-") || negationProblem.LeanStatement != "¬ ("+proposition+")" {
		t.Fatalf("NegationProblem() = %#v, want a proposal-bound negation of the whole theorem", negationProblem)
	}
}

func TestProposalProblemBuildersRejectEditedStatements(t *testing.T) {
	proposal := testProposal()
	proposal.LeanStatement = strings.Replace(proposal.LeanStatement, "n + 0", "n + 1", 1)
	if _, err := proposal.TypecheckProblem(); err == nil {
		t.Fatal("TypecheckProblem() accepted a statement that no longer matches its proposal ID")
	}
	if _, err := proposal.NegationProblem(); err == nil {
		t.Fatal("NegationProblem() accepted a statement that no longer matches its proposal ID")
	}
}
