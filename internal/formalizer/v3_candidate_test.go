package formalizer

import (
	"context"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestAssessV3CandidateBindsCandidateToSourceOnlyM0WithoutMutation(t *testing.T) {
	t.Parallel()
	snapshot, result, review, rawSourceItem, at := syntheticCandidateAssessmentFixture(t)
	before := snapshot.ContentSHA256
	assessment, err := AssessV3Candidate(snapshot, result, review, rawSourceItem, at)
	if err != nil {
		t.Fatalf("AssessV3Candidate() error = %v, want candidate-only assessment against M0 source", err)
	}
	if assessment.SchemaVersion != CandidateV3AssessmentSchemaVersion || assessment.Status != CandidateV3AssessmentStatus {
		t.Fatalf("candidate assessment identity/status = %q/%q, want %q/%q", assessment.SchemaVersion, assessment.Status, CandidateV3AssessmentSchemaVersion, CandidateV3AssessmentStatus)
	}
	if assessment.V3Record.Gate != domain.GateStatementFidelity || assessment.V3Record.Status == domain.VerificationPassed {
		t.Fatalf("candidate V3 record = %q/%q, want statement-fidelity and never PASSED", assessment.V3Record.Gate, assessment.V3Record.Status)
	}
	if assessment.V3Record.Status != domain.VerificationBlocked {
		t.Fatalf("candidate V3 record status = %q, want BLOCKED pending authenticated review and executed probes", assessment.V3Record.Status)
	}
	if assessment.CatalogSnapshotSHA256 != before || snapshot.ContentSHA256 != before {
		t.Fatal("candidate handoff changed or detached the pinned M0 catalog digest")
	}
	problem := snapshot.Problems[0]
	if problem.LeanStatement != "" || problem.StatementAudit.Passed {
		t.Fatalf("candidate handoff mutated canonical M0 fields: LeanStatement=%q StatementAudit.Passed=%v", problem.LeanStatement, problem.StatementAudit.Passed)
	}
	if assessment.CandidateRevision != result.CandidateRevision || assessment.GenerationReceiptID != result.RunReceipt.ReceiptID || assessment.StatementCheckEvidenceID != result.StatementCheck.EvidenceID {
		t.Fatal("candidate assessment dropped generation or existing Lean checker evidence references")
	}
}

func TestAssessV3CandidateRejectsChangedRawSourceBytes(t *testing.T) {
	t.Parallel()
	snapshot, result, review, rawSourceItem, at := syntheticCandidateAssessmentFixture(t)
	rawSourceItem = append(rawSourceItem, []byte("changed")...)
	if _, err := AssessV3Candidate(snapshot, result, review, rawSourceItem, at); err == nil || !strings.Contains(err.Error(), "source-item bytes") {
		t.Fatalf("AssessV3Candidate(changed source bytes) error = %v, want source digest mismatch", err)
	}
}

func TestAssessV3CandidateRejectsCanonicalM0WithLeanStatement(t *testing.T) {
	t.Parallel()
	snapshot, result, review, rawSourceItem, at := syntheticCandidateAssessmentFixture(t)
	problem := snapshot.Problems[0]
	problem.LeanStatement = "∀ (n : Nat), n = n"
	updated, err := catalog.NewSnapshot(snapshot.CapturedAt, snapshot.Sources, []catalog.Problem{problem})
	if err != nil {
		t.Fatalf("NewSnapshot() with existing formal statement error = %v", err)
	}
	if _, err := AssessV3Candidate(updated, result, review, rawSourceItem, at); err == nil || !strings.Contains(err.Error(), "source-only M0") {
		t.Fatalf("AssessV3Candidate(formalized M0) error = %v, want source-only M0 refusal", err)
	}
}

func TestAssessV3CandidateRequiresReviewPinsToMatchGeneratedCandidate(t *testing.T) {
	t.Parallel()
	snapshot, result, review, rawSourceItem, at := syntheticCandidateAssessmentFixture(t)
	review.Lean.NormalizedStatement = "∀ (n : Nat), n + 0 = n"
	if _, err := AssessV3Candidate(snapshot, result, review, rawSourceItem, at); err == nil || !strings.Contains(err.Error(), "V3 Lean pin") {
		t.Fatalf("AssessV3Candidate(mismatched review) error = %v, want exact candidate pin refusal", err)
	}
}

func syntheticCandidateAssessmentFixture(t *testing.T) (catalog.Snapshot, Result, domain.V3StatementFidelity, []byte, time.Time) {
	t.Helper()
	now := time.Date(2026, time.October, 20, 19, 30, 0, 0, time.UTC)
	statement := "Every natural number equals itself."
	rawSourceItem := []byte("synthetic source item bytes for formalizer unit test\n")
	source := catalog.SourceVersion{
		ID:            "synthetic-source-001",
		URL:           "https://example.invalid/synthetic/problem-001",
		ItemLocator:   "problems/problem-001.txt",
		Revision:      "synthetic-source-revision-001",
		RetrievedAt:   now,
		ContentSHA256: digestBytes(rawSourceItem),
		Rights:        catalog.RightsUnknown,
	}
	problem := catalog.Problem{
		ID:                "synthetic-problem-001",
		Title:             "Synthetic formalizer fixture",
		InformalStatement: statement,
		Status:            catalog.StatusConjectured,
		SourceIDs:         []string{source.ID},
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, []catalog.Problem{problem})
	if err != nil {
		t.Fatalf("NewSnapshot() synthetic fixture error = %v", err)
	}
	sourcePin := domain.V3SourceStatementPin{
		URL:                   source.URL,
		ItemLocator:           source.ItemLocator,
		Revision:              source.Revision,
		RawItemSHA256:         source.ContentSHA256,
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		Statement:             statement,
		EvidenceID:            "synthetic-source-item-evidence",
	}
	request := NewRequest(
		"synthetic-candidate-001",
		problem.ID,
		sourcePin,
		domain.AgentRunInputClearance{
			StatementID:    problem.ID,
			EvidenceID:     "synthetic-clearance-evidence",
			EvidenceSHA256: digestText("synthetic clearance artifact bytes"),
		},
		"synthetic-attackability-label-001",
		"synthetic-agent-run-receipt-001",
	)
	frontend := Frontend{
		Generator:         &fakeGenerator{generation: validGeneration(request)},
		Checker:           newFakeChecker(t),
		ClearanceVerifier: acceptClearance{},
	}
	result, err := frontend.GenerateCandidate(context.Background(), request)
	if err != nil {
		t.Fatalf("GenerateCandidate() synthetic fixture error = %v", err)
	}
	candidate := result.Candidate
	leanBytes := []byte("-- synthetic candidate file; not written or executed\ntheorem candidate_001 : " + candidate.LeanStatement + " := by intro n; rfl\n")
	review := domain.V3StatementFidelity{
		Source: sourcePin,
		Lean: domain.V3LeanStatementPin{
			AuthorID:                  "synthetic-formalizer-author",
			Revision:                  "synthetic-candidate-revision",
			FileLocator:               "synthetic/Candidate.lean",
			DeclarationName:           candidate.DeclarationName,
			SourceFileSHA256:          digestBytes(leanBytes),
			NormalizedStatement:       candidate.LeanStatement,
			NormalizedStatementSHA256: digestText(candidate.LeanStatement),
			EvidenceID:                "synthetic-lean-file-evidence",
		},
		BackTranslation: domain.V3BackTranslation{
			Text:         "For each natural number n, n equals itself.",
			ProducedByID: "synthetic-independent-witness",
			Role:         domain.V3BackTranslationWitnessRole,
			RecordedAt:   now,
			EvidenceID:   "synthetic-back-translation-evidence",
		},
		SemanticComparison: domain.V3SemanticComparison{
			Status:                domain.V3SemanticPass,
			Differences:           []domain.V3SemanticDifference{},
			Rationale:             "Synthetic unit fixture only.",
			UnresolvedAssumptions: []string{},
			ReviewerID:            "synthetic-independent-reviewer",
			HumanSpotReview:       true,
			ReviewerAccepted:      true,
			RecordedAt:            now,
			EvidenceID:            "synthetic-semantic-comparison-evidence",
		},
		NaturalParameterApplicability: domain.V3NaturalParametersPresent,
		MeaningfulNaturalParameters:   []string{"n"},
		EmptyObjectApplicability:      domain.V3EmptyObjectNotApplicable,
		BoundaryProbes: []domain.V3BoundaryProbe{
			{Kind: domain.V3BoundaryNaturalValue, ParameterID: "n", Value: "0", SourceInstance: "synthetic source n=0", LeanInstance: "synthetic Lean n=0", Outcome: domain.V3BoundaryConsistent, Rationale: "Synthetic fixture only.", EvidenceID: "synthetic-boundary-n0-evidence"},
			{Kind: domain.V3BoundaryNaturalValue, ParameterID: "n", Value: "1", SourceInstance: "synthetic source n=1", LeanInstance: "synthetic Lean n=1", Outcome: domain.V3BoundaryConsistent, Rationale: "Synthetic fixture only.", EvidenceID: "synthetic-boundary-n1-evidence"},
			{Kind: domain.V3BoundaryEmptyObject, ParameterID: "empty", Value: "empty", Outcome: domain.V3BoundaryNotApplicable, Rationale: "Synthetic fixture only; empty object does not apply to this statement.", EvidenceID: "synthetic-empty-probe-evidence"},
		},
		IndependentRoute: "synthetic-test-review-route",
	}
	return snapshot, result, review, rawSourceItem, now.Add(time.Minute)
}
