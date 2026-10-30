package domain

import (
	"strings"
	"testing"
	"time"
)

func validExpositionPairRecord() ExpositionPairRecord {
	scores := make([]ExpositionMoveScore, 0, 6)
	for _, move := range RequiredExpositionCanonMoves() {
		scores = append(scores, ExpositionMoveScore{Move: move, Score: 0.8})
	}
	candidate := func(id, expositionHash, authorRun, authorModel string) ExpositionPairCandidate {
		return ExpositionPairCandidate{
			CandidateID:        id,
			ExpositionSHA256:   expositionHash,
			AuthorRunReceiptID: authorRun,
			AuthorModelID:      authorModel,
			AuthorModelVersion: "author-version-1",
			RoundTrip: ExpositionPairRoundTrip{
				Score: 0.9, RequiredFacts: []string{"fact-1"}, RecoveredFacts: []string{"fact-1"},
				ModelID: "frozen-roundtrip-reviewer", ModelVersion: "2026-10-20", Frozen: true,
				EvidenceID: "roundtrip-" + id, EvidenceSHA256: strings.Repeat("c", 64), RunReceiptID: "roundtrip-run-" + id,
			},
			Canon: ExpositionPairCanon{
				Scores: scores, ModelID: "frozen-canon-reviewer", ModelVersion: "2026-10-20", Frozen: true,
				EvidenceID: "canon-" + id, EvidenceSHA256: strings.Repeat("d", 64), RunReceiptID: "canon-run-" + id,
			},
		}
	}
	return ExpositionPairRecord{
		SchemaVersion:         ExpositionPairRecordSchemaVersion,
		RecordID:              "exposition-pair-record-001",
		ProblemID:             "mathlib_list_mem_pair_v4331",
		Tier:                  TierBachelor,
		CatalogSnapshotSHA256: strings.Repeat("a", 64), ProofSHA256: strings.Repeat("b", 64),
		CanonSnapshotSHA256: strings.Repeat("e", 64), EvaluationPolicySHA256: strings.Repeat("f", 64),
		CandidateX:         candidate("candidate-x", strings.Repeat("1", 64), "author-x-run", "author-model-x"),
		CandidateY:         candidate("candidate-y", strings.Repeat("2", 64), "author-y-run", "author-model-y"),
		PreferredCandidate: "UNRATED", RecordedAtUTC: time.Date(2026, time.October, 20, 16, 0, 0, 0, time.UTC),
	}
}

func TestExpositionPairRequiresRoundTripAndCanonScoresForBothCandidates(t *testing.T) {
	record := validExpositionPairRecord()
	if err := record.Validate(); err != nil {
		t.Fatalf("Validate() error = %v, want a scored but unrated pair", err)
	}
	record.CandidateY.Canon.Scores = record.CandidateY.Canon.Scores[:5]
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "all six") {
		t.Fatalf("Validate() error = %v, want incomplete canon rubric refusal", err)
	}
}

func TestExpositionPairKeepsPreferenceDecisionExplicit(t *testing.T) {
	record := validExpositionPairRecord()
	record.PreferredCandidate = "X"
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "decision method") {
		t.Fatalf("Validate() error = %v, want decision-method refusal", err)
	}
	record.DecisionMethod = "owner-adjudication"
	record.DecisionEvidenceID = "owner-review-evidence"
	if err := record.Validate(); err != nil {
		t.Fatalf("Validate() error = %v, want explicit adjudicated preference", err)
	}
}

func TestExpositionPairRequiresIndependentAndComparableReviewers(t *testing.T) {
	record := validExpositionPairRecord()
	record.CandidateY.RoundTrip.ModelID = "different-roundtrip-reviewer"
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "same round-trip") {
		t.Fatalf("Validate() error = %v, want non-comparable reviewer refusal", err)
	}
	record = validExpositionPairRecord()
	record.CandidateX.Canon.ModelID = record.CandidateX.RoundTrip.ModelID
	record.CandidateY.Canon.ModelID = record.CandidateY.RoundTrip.ModelID
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "independent models") {
		t.Fatalf("Validate() error = %v, want reviewer independence refusal", err)
	}
}
