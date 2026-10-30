package taste

import (
	"encoding/json"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
)

func tasteLabelFixture(t *testing.T) (catalog.Snapshot, []MathlibProofPair, map[string][]byte, map[string][]byte) {
	t.Helper()
	now := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	before := "by\n  simpa [Nat.add_comm]"
	after := "by\n  simp [Nat.add_comm]"
	sourceBytes := []byte("theorem Example.test : True := by\n  trivial\n\n-- old proof\n" + before + "\n")
	source := catalog.SourceVersion{
		ID: "mathlib-test", URL: "https://github.com/leanprover-community/mathlib4",
		ItemLocator: "Mathlib/Example.lean", Lane: catalog.LaneMathlibProofPairs,
		Revision: "mathlib-commit-test", RetrievedAt: now,
		ContentSHA256: digestBytes(sourceBytes), AuthorOrHolder: "Mathlib contributors",
		License: "Apache-2.0", LicenseTermsURL: "https://www.apache.org/licenses/LICENSE-2.0",
		TermsNote: "Apache-2.0 item-level training candidate.", Attribution: "Mathlib contributors, pinned test item.",
		AllowedUses:      []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseTraining},
		RightsReviewerID: "reviewer-test", RightsReviewedAt: now.Add(time.Hour),
		RightsEvidenceID: "rights-mathlib-test", Rights: catalog.RightsCleared,
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, nil)
	if err != nil {
		t.Fatalf("NewSnapshot() error = %v", err)
	}
	pair := MathlibProofPair{
		PairID: "pair-label-test", TheoremKey: "Mathlib.Example.test", LeakageGroupID: "example-test",
		SourceID: source.ID, SourceSHA256: source.ContentSHA256, CatalogSnapshotSHA256: snapshot.ContentSHA256,
		BeforeProof: before, BeforeProofSHA256: digestText(before), AfterProof: after, AfterProofSHA256: digestText(after),
		Simplifier: "Lean simp", SimplifierVersion: "Lean 4.33.1", SimplificationEvidenceID: "evidence-pair-label-test",
	}
	replay := []byte("theorem before : True := " + before + "\ntheorem after : True := " + after + "\n")
	leanOutput := []byte("'Mathlib.Example.before' does not depend on any axioms\n'Mathlib.Example.after' does not depend on any axioms\n")
	receipt := MathlibSimplificationEvidence{
		SchemaVersion: simplificationEvidenceSchema, EvidenceID: pair.SimplificationEvidenceID,
		PairID: pair.PairID, TheoremKey: pair.TheoremKey, SourceID: source.ID,
		SourcePath: source.ItemLocator, SourceRevision: source.Revision, SourceSHA256: source.ContentSHA256,
		CatalogSnapshotSHA256: snapshot.ContentSHA256, BeforeProofSHA256: pair.BeforeProofSHA256,
		AfterProofSHA256: pair.AfterProofSHA256, Simplifier: pair.Simplifier, SimplifierVersion: pair.SimplifierVersion,
		BeforeTheorem: "Mathlib.Example.before", AfterTheorem: "Mathlib.Example.after",
		BeforeAxiomOutput: "'Mathlib.Example.before' does not depend on any axioms\n",
		AfterAxiomOutput:  "'Mathlib.Example.after' does not depend on any axioms\n",
		BeforeAxioms:      []string{}, AfterAxioms: []string{},
		AllowedAxioms:    []string{"Classical.choice", "Quot.sound", "propext"},
		ReplaySourcePath: "replay/" + pair.SimplificationEvidenceID + ".lean",
		BeforeStatus:     "PASSED", AfterStatus: "PASSED", BeforeAxiomAuditStatus: "PASSED", AfterAxiomAuditStatus: "PASSED",
		ReplaySourceSHA256: digestBytes(replay), LeanOutputPath: "output/" + pair.SimplificationEvidenceID + ".txt",
		LeanOutputSHA256: digestBytes(leanOutput), LeanVersion: "Lean 4.33.1", Command: "lake env lean Replay.lean",
		RecordedAt: now.Add(2 * time.Hour),
	}
	receiptBytes, err := json.Marshal(receipt)
	if err != nil {
		t.Fatalf("Marshal(receipt) error = %v", err)
	}
	pair.SimplificationEvidenceSHA256 = digestBytes(receiptBytes)
	return snapshot, []MathlibProofPair{pair},
		map[string][]byte{source.ID: sourceBytes},
		map[string][]byte{
			pair.SimplificationEvidenceID + ".json": receiptBytes,
			receipt.ReplaySourcePath:                replay,
			receipt.LeanOutputPath:                  leanOutput,
		}
}

func TestBuildMathlibTastePairLabelsRequireReopenedRightsAndVerification(t *testing.T) {
	snapshot, pairs, sources, evidence := tasteLabelFixture(t)
	dataset, err := BuildMathlibTastePairLabels(snapshot, pairs, sources, evidence)
	if err != nil {
		t.Fatalf("BuildMathlibTastePairLabels() error = %v", err)
	}
	if len(dataset.Records) != 1 {
		t.Fatalf("label count = %d, want 1", len(dataset.Records))
	}
	label := dataset.Records[0]
	if label.Preference.PreferredProof != TastePairAfterSimplification || label.Preference.HumanRatingStatus != TastePairHumanNotRated || label.Preference.TrainingStatus != TastePairCandidateOnly {
		t.Fatalf("preference = %+v, want mechanical, unrated, candidate-only label", label.Preference)
	}
	if label.Source.License != "Apache-2.0" || label.Source.RightsEvidenceID == "" || label.Verification.BeforeAxiomAuditStatus != "PASSED" || label.Verification.AfterAxiomAuditStatus != "PASSED" {
		t.Fatalf("rights/evidence provenance is incomplete: %+v", label)
	}
	if err := dataset.Validate(snapshot, sources, evidence); err != nil {
		t.Fatalf("Validate() error = %v, want reopened source and evidence accepted", err)
	}
}

func TestMathlibTastePairLabelsRefuseTamperedEvidenceAndPromotedPreference(t *testing.T) {
	snapshot, pairs, sources, evidence := tasteLabelFixture(t)
	dataset, err := BuildMathlibTastePairLabels(snapshot, pairs, sources, evidence)
	if err != nil {
		t.Fatalf("BuildMathlibTastePairLabels() error = %v", err)
	}
	t.Run("tampered replay", func(t *testing.T) {
		changed := cloneBytesMap(evidence)
		changed["replay/"+pairs[0].SimplificationEvidenceID+".lean"] = []byte("tampered")
		if err := dataset.Validate(snapshot, sources, changed); err == nil || !strings.Contains(err.Error(), "does not match") {
			t.Fatalf("Validate() error = %v, want replay integrity refusal", err)
		}
	})
	t.Run("not a human rating", func(t *testing.T) {
		changed := dataset
		changed.Records = append([]MathlibTastePairLabelRecord(nil), dataset.Records...)
		changed.Records[0].Preference.HumanRatingStatus = "OWNER_RATED"
		if err := changed.Records[0].Validate(snapshot); err == nil || !strings.Contains(err.Error(), "mechanical simplification") {
			t.Fatalf("Validate() error = %v, want distinction between mechanical and human preference", err)
		}
	})
}

func TestMechanicalPreferenceCannotOverrideRejectedAfterProof(t *testing.T) {
	snapshot, pairs, sources, evidence := tasteLabelFixture(t)
	var receipt MathlibSimplificationEvidence
	if err := json.Unmarshal(evidence[pairs[0].SimplificationEvidenceID+".json"], &receipt); err != nil {
		t.Fatal(err)
	}
	// Keep the receipt internally hash-consistent while making the simplifier's
	// claimed winner fail verification. A shorter proof is not a preference
	// signal when its exact Lean result was rejected.
	receipt.AfterStatus = "FAILED"
	receiptBytes, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	pairs[0].SimplificationEvidenceSHA256 = digestBytes(receiptBytes)
	evidence[pairs[0].SimplificationEvidenceID+".json"] = receiptBytes
	if _, err := BuildMathlibTastePairLabels(snapshot, pairs, sources, evidence); err == nil || !strings.Contains(err.Error(), "both proof variants must have passed Lean verification") {
		t.Fatalf("BuildMathlibTastePairLabels() error = %v, want verifier rejection to override mechanical preference", err)
	}
}

func cloneBytesMap(in map[string][]byte) map[string][]byte {
	out := make(map[string][]byte, len(in))
	for key, value := range in {
		out[key] = append([]byte(nil), value...)
	}
	return out
}
