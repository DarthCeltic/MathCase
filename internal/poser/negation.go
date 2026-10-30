package poser

import (
	"fmt"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

// FormalProposition returns the proposition denoted by the generated theorem
// declaration, including its binders. It is a syntax transformation only; a
// caller must still elaborate the result in the selected Lean project.
func (p Proposal) FormalProposition() (string, error) {
	if err := p.Validate(); err != nil {
		return "", err
	}
	parsed, err := parseTheoremStatement(p.LeanStatement)
	if err != nil {
		return "", err
	}
	return renderFormalProposition(parsed), nil
}

// TypecheckProblem binds Lean elaboration of a candidate proposition to its
// proposal identity without claiming the proposition is true.
func (p Proposal) TypecheckProblem() (domain.MathProblem, error) {
	proposition, err := p.FormalProposition()
	if err != nil {
		return domain.MathProblem{}, err
	}
	problemID := "m2-statement-" + strings.TrimPrefix(p.ID, "proposal-")
	return domain.MathProblem{
		ID:            problemID,
		Title:         "M2 candidate proposition typecheck",
		Statement:     fmt.Sprintf("Type-check the generated proposition for MathCase proposal %s.", p.ID),
		LeanStatement: proposition,
	}, nil
}

// NegationProblem turns a candidate theorem into a bounded local search target
// for a kernel-checked proof of its negation. Such a proof falsifies the
// candidate; failure to find one does not establish that the candidate is true.
func (p Proposal) NegationProblem() (domain.MathProblem, error) {
	proposition, err := p.FormalProposition()
	if err != nil {
		return domain.MathProblem{}, err
	}
	problemID := "m2-negation-" + strings.TrimPrefix(p.ID, "proposal-")
	return domain.MathProblem{
		ID:            problemID,
		Title:         "M2 candidate negation search",
		Statement:     fmt.Sprintf("Search for a kernel-checked refutation of MathCase proposal %s.", p.ID),
		LeanStatement: "¬ (" + proposition + ")",
	}, nil
}
