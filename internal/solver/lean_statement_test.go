package solver

import (
	"context"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestLeanStatementCheckerElaboratesPropositionAndPersistsReceipt(t *testing.T) {
	verifier, available := localLeanVerifier(t)
	if !available {
		t.Skip("pinned local Lake executable is not installed")
	}
	problem := domain.MathProblem{
		ID:            "m2-statement-check-valid",
		Statement:     "Natural-number addition is associative.",
		LeanStatement: "∀ (n m k : Nat), (n + m) + k = n + (m + k)",
	}
	receipt, err := verifier.CheckProposition(context.Background(), problem)
	if err != nil {
		t.Fatalf("CheckProposition(%q) error = %v, want Lean elaboration receipt", problem.LeanStatement, err)
	}
	if !receipt.TypecheckPassed || receipt.Status != "PASSED" || receipt.EvidenceID == "" {
		t.Fatalf("CheckProposition(%q) receipt = %#v, want a passed proposition typecheck", problem.LeanStatement, receipt)
	}
	data, err := os.ReadFile(filepath.Join(verifier.ReceiptRoot, receipt.EvidenceID+".statement.json"))
	if err != nil {
		t.Fatalf("read statement-check receipt %q: %v", receipt.EvidenceID, err)
	}
	var stored LeanStatementCheckReceipt
	if err := json.Unmarshal(data, &stored); err != nil {
		t.Fatalf("decode statement-check receipt: %v", err)
	}
	if stored.EvidenceID != receipt.EvidenceID || stored.ProblemStatementSHA256 != receipt.ProblemStatementSHA256 || stored.ProjectSnapshotSHA256 == "" {
		t.Fatalf("stored statement-check receipt = %#v, want exact problem and project binding", stored)
	}
}

func TestLeanStatementCheckerRejectsNonPropositionWithReceipt(t *testing.T) {
	verifier, available := localLeanVerifier(t)
	if !available {
		t.Skip("pinned local Lake executable is not installed")
	}
	problem := domain.MathProblem{
		ID:            "m2-statement-check-nonprop",
		Statement:     "This is deliberately not a proposition.",
		LeanStatement: "Nat",
	}
	receipt, err := verifier.CheckProposition(context.Background(), problem)
	if err != nil {
		t.Fatalf("CheckProposition(%q) error = %v, want a recorded Lean rejection", problem.LeanStatement, err)
	}
	if receipt.TypecheckPassed || receipt.Status != "REJECTED" || receipt.EvidenceID == "" {
		t.Fatalf("CheckProposition(%q) receipt = %#v, want a persisted non-Prop rejection", problem.LeanStatement, receipt)
	}
	if _, err := os.Stat(filepath.Join(verifier.ReceiptRoot, receipt.EvidenceID+".statement.json")); err != nil {
		t.Fatalf("non-Prop rejection receipt %q is not persisted: %v", receipt.EvidenceID, err)
	}
}

func TestLeanStatementCheckerBlocksCommandSyntax(t *testing.T) {
	for _, proposition := range []string{
		"True\n#eval IO.println \"no\"",
		"True := by trivial",
		"True -- trailing command",
		"Lean.Elab.Term.evalTerm True",
	} {
		_, err := (LeanVerifier{}).CheckProposition(context.Background(), domain.MathProblem{
			ID: "m2-statement-check-blocked", Statement: "Blocked test.", LeanStatement: proposition,
		})
		if err == nil {
			t.Errorf("CheckProposition(%q) error = nil, want unsafe or multiline input refusal", proposition)
			continue
		}
		if !strings.Contains(err.Error(), "single-line") && !strings.Contains(err.Error(), "command-like or blocked") {
			t.Errorf("CheckProposition(%q) error = %v, want bounded-input or command-syntax refusal", proposition, err)
		}
	}
}
