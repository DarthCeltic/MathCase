package poser

import (
	"strings"
	"testing"
	"time"
)

func testProposal() Proposal {
	parents := []ParentLineage{{
		ProblemID: "problem-parent", SourceIDs: []string{"source-parent"},
		SnapshotSHA256: strings.Repeat("a", 64), StatementSHA256: strings.Repeat("b", 64), ProofSHA256: strings.Repeat("c", 64),
		SignedDossierCaseID: "case-parent", SignedDossierSHA256: strings.Repeat("d", 64), SignedDossierSignerID: "signer-parent",
		V1EvidenceIDs: []string{"parent-v1"}, V2EvidenceIDs: []string{"parent-v2"},
		V3EvidenceIDs: []string{"parent-v3"}, V3ReviewerID: "reviewer-parent",
	}}
	lineageDigest, _ := parentLineageDigest(parents)
	parser := expressionParser{}
	body, _ := parser.parse("n + 0 = n", 0)
	return makeProposal(OperatorSharpen, syntaxMutation{
		body: body, path: "root", description: "retain the equality relation",
	}, "(n : Nat)", parents, lineageDigest, time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC))
}

func TestProposalRequiresStatementOnlyAndSourceLineage(t *testing.T) {
	proposal := testProposal()
	if err := proposal.Validate(); err != nil {
		t.Fatal(err)
	}
	proposal.LeanStatement += " := by rfl"
	if err := proposal.Validate(); err == nil {
		t.Fatal("proof body in conjecture proposal was accepted")
	}
}

func testSieveEvidence(proposal Proposal) SieveEvidence {
	return SieveEvidence{
		ProposalID: proposal.ID, ParentLineageSHA256: proposal.ParentLineageSHA256,
		TrustedParentsVerified: true, LeanTypechecked: true, CandidateTypecheckEvidenceID: "lean",
		HypothesesPresent: true, HypothesesSatisfiable: true, HypothesisEvidenceID: "hypothesis",
		RandomizedCheckStatus: "SAMPLES_PASS", RandomizedTestsRun: 100, RandomizedEvidenceID: "tests",
		SMTSearchPerformed: true, SMTSearchStatus: "UNSAT", SMTEvidenceID: "smt",
		NegationSearchPerformed: true, NegationSearchStatus: "NO_COUNTEREXAMPLE_FOUND", NegationSearchEvidenceIDs: []string{"negation"},
		EasyBaselineCompleted: true, EasyBaselineEvidenceIDs: []string{"baseline"},
		EvidenceIDs: []string{"lean", "hypothesis", "tests", "smt", "negation", "baseline"},
	}
}

func TestSieveRequiresIndependentChecksAndDoesNotPromoteEasyFacts(t *testing.T) {
	proposal := testProposal()
	evidence := testSieveEvidence(proposal)
	if err := evidence.EligibleForHumanReview(proposal); err != nil {
		t.Fatalf("eligible proposal refused: %v", err)
	}
	evidence.EasyBaselineSolved = true
	if err := evidence.EligibleForHumanReview(proposal); err == nil || !strings.Contains(err.Error(), "easy baseline") {
		t.Fatalf("expected easy-baseline refusal, got %v", err)
	}
	evidence.EasyBaselineSolved = false
	evidence.EasyBaselineCompleted = false
	if err := evidence.EligibleForHumanReview(proposal); err == nil || !strings.Contains(err.Error(), "did not complete") {
		t.Fatalf("expected incomplete easy-baseline refusal, got %v", err)
	}
	evidence.EasyBaselineCompleted = true
	evidence.SMTEvidenceID = "unlinked-smt"
	if err := evidence.EligibleForHumanReview(proposal); err == nil || !strings.Contains(err.Error(), "not linked") {
		t.Fatalf("expected unlinked SMT evidence refusal, got %v", err)
	}
}

func TestSieveBlocksUnverifiedCounterexamplesAndIncompleteSearches(t *testing.T) {
	proposal := testProposal()
	t.Run("unverified randomized counterexample", func(t *testing.T) {
		evidence := testSieveEvidence(proposal)
		evidence.RandomizedCheckStatus = "COUNTEREXAMPLE_OBSERVED"
		evidence.RandomizedCounterexampleSeen = true
		if err := evidence.EligibleForHumanReview(proposal); err == nil || !strings.Contains(err.Error(), "not fully kernel/V2 verified") {
			t.Fatalf("unverified sampled counterexample error = %v, want fail-closed refusal", err)
		}
	})
	t.Run("verified randomized counterexample", func(t *testing.T) {
		evidence := testSieveEvidence(proposal)
		evidence.RandomizedCheckStatus = "COUNTEREXAMPLE_OBSERVED"
		evidence.RandomizedCounterexampleSeen = true
		evidence.RandomizedCounterexampleOK = true
		evidence.CounterexampleFound = true
		if err := evidence.EligibleForHumanReview(proposal); err == nil || !strings.Contains(err.Error(), "counterexample") {
			t.Fatalf("verified sampled counterexample error = %v, want rejection", err)
		}
	})
	t.Run("random check incomplete despite positive count", func(t *testing.T) {
		evidence := testSieveEvidence(proposal)
		evidence.RandomizedCheckStatus = "INCOMPLETE"
		if err := evidence.EligibleForHumanReview(proposal); err == nil || !strings.Contains(err.Error(), "did not complete") {
			t.Fatalf("incomplete randomized check error = %v, want fail-closed refusal", err)
		}
	})
	t.Run("no hypotheses is a valid case", func(t *testing.T) {
		evidence := testSieveEvidence(proposal)
		evidence.HypothesesPresent = false
		evidence.HypothesisEvidenceID = evidence.RandomizedEvidenceID
		if err := evidence.EligibleForHumanReview(proposal); err != nil {
			t.Fatalf("unconditional proposition was refused: %v", err)
		}
		evidence.HypothesesSatisfiable = false
		if err := evidence.EligibleForHumanReview(proposal); err == nil || !strings.Contains(err.Error(), "applicability") {
			t.Fatalf("unrecorded no-hypothesis applicability error = %v, want explicit refusal", err)
		}
	})
}

func TestSieveBlocksParentLineageWithoutTrustedDossierVerification(t *testing.T) {
	proposal := testProposal()
	evidence := SieveEvidence{
		ProposalID: proposal.ID, ParentLineageSHA256: proposal.ParentLineageSHA256,
		LeanTypechecked: true, HypothesesSatisfiable: true, RandomizedTestsRun: 100,
		SMTSearchPerformed: true, NegationSearchPerformed: true, EvidenceIDs: []string{"lean", "smt", "tests"},
	}
	if err := evidence.EligibleForHumanReview(proposal); err == nil || !strings.Contains(err.Error(), "trusted signed dossiers") {
		t.Fatalf("EligibleForHumanReview() error = %v, want trusted signed dossier refusal", err)
	}
}

func TestSieveEvidenceMustBindEveryParentLineage(t *testing.T) {
	proposal := testProposal()
	evidence := SieveEvidence{
		ProposalID: proposal.ID, ParentLineageSHA256: strings.Repeat("d", 64),
		LeanTypechecked: true, HypothesesSatisfiable: true, RandomizedTestsRun: 10,
		SMTSearchPerformed: true, NegationSearchPerformed: true, EvidenceIDs: []string{"lean", "smt", "tests"},
	}
	if err := evidence.EligibleForHumanReview(proposal); err == nil || !strings.Contains(err.Error(), "provenance") {
		t.Fatalf("EligibleForHumanReview() error = %v, want parent-lineage provenance refusal", err)
	}
}

func TestProposalIDBindsStatementAndParentLineages(t *testing.T) {
	t.Run("changed claim", func(t *testing.T) {
		proposal := testProposal()
		proposal.LeanStatement = strings.Replace(proposal.LeanStatement, "n + 0", "n + 1", 1)
		if err := proposal.Validate(); err == nil || !strings.Contains(err.Error(), "ID does not bind") {
			t.Fatalf("Proposal.Validate() error = %v, want edited-statement provenance refusal", err)
		}
	})
	t.Run("added hypothesis", func(t *testing.T) {
		proposal := testProposal()
		proposal.LeanStatement = strings.Replace(proposal.LeanStatement, "(n : Nat)", "(n : Nat) (h : n > 0)", 1)
		if err := proposal.Validate(); err == nil || !strings.Contains(err.Error(), "ID does not bind") {
			t.Fatalf("Proposal.Validate() error = %v, want hypothesis edit to invalidate the old target binding", err)
		}
	})
}

func TestHybridProposalRequiresTwoDistinctVerifiedParentLineages(t *testing.T) {
	proposal := testProposal()
	proposal.Operator = OperatorHybrid
	if err := proposal.Validate(); err == nil || !strings.Contains(err.Error(), "require 2 verified parent lineages") {
		t.Fatalf("Proposal.Validate() error = %v, want two-parent hybrid refusal", err)
	}

	proposal.Parents = []ParentLineage{proposal.Parents[0], proposal.Parents[0]}
	proposal.ParentLineageSHA256, _ = parentLineageDigest(proposal.Parents)
	if err := proposal.Validate(); err == nil || !strings.Contains(err.Error(), "distinct source problems") {
		t.Fatalf("Proposal.Validate() error = %v, want duplicate-parent refusal", err)
	}
}
