package taste

import (
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
)

func mathlibTrainingSnapshot(t *testing.T, uses ...catalog.SourceUse) catalog.Snapshot {
	t.Helper()
	if len(uses) == 0 {
		uses = []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseTraining}
	}
	now := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	source := catalog.SourceVersion{
		ID:               "mathlib-main",
		URL:              "https://github.com/leanprover-community/mathlib4",
		ItemLocator:      "Mathlib/Algebra/Group/Basic.lean",
		Lane:             catalog.LaneMathlibProofPairs,
		Revision:         "rev-mathlib-pinned",
		RetrievedAt:      now,
		ContentSHA256:    strings.Repeat("a", 64),
		AuthorOrHolder:   "Mathlib contributors",
		License:          "Apache-2.0",
		LicenseTermsURL:  "https://www.apache.org/licenses/LICENSE-2.0",
		TermsNote:        "Test fixture: reviewed Mathlib source version.",
		Attribution:      "Mathlib contributors, exact source version.",
		AllowedUses:      uses,
		RightsReviewerID: "reviewer-test",
		RightsReviewedAt: now.Add(time.Hour),
		RightsEvidenceID: "rights-mathlib-test",
		Rights:           catalog.RightsCleared,
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, nil)
	if err != nil {
		t.Fatalf("NewSnapshot() error = %v", err)
	}
	return snapshot
}

func mathlibPair(snapshot catalog.Snapshot, pairID, theoremKey, groupID string) MathlibProofPair {
	before := "by\n  simpa [Nat.add_comm]"
	after := "by\n  simp [Nat.add_comm]"
	return MathlibProofPair{
		PairID:                       pairID,
		TheoremKey:                   theoremKey,
		LeakageGroupID:               groupID,
		SourceID:                     "mathlib-main",
		SourceSHA256:                 snapshot.Sources[0].ContentSHA256,
		CatalogSnapshotSHA256:        snapshot.ContentSHA256,
		BeforeProof:                  before,
		BeforeProofSHA256:            digestText(before),
		AfterProof:                   after,
		AfterProofSHA256:             digestText(after),
		Simplifier:                   "Lean simp",
		SimplifierVersion:            "Lean 4.33.1",
		SimplificationEvidenceID:     "receipt-" + pairID,
		SimplificationEvidenceSHA256: digestText("receipt bytes for " + pairID),
	}
}

func TestMathlibProofPairSplitIsDeterministicAndGroupsRows(t *testing.T) {
	snapshot := mathlibTrainingSnapshot(t)
	pairs := []MathlibProofPair{
		mathlibPair(snapshot, "pair-a1", "Mathlib.Example.alpha", "family-alpha"),
		mathlibPair(snapshot, "pair-a2", "Mathlib.Example.alpha_variant", "family-alpha"),
		mathlibPair(snapshot, "pair-b", "Mathlib.Example.beta", "family-beta"),
		mathlibPair(snapshot, "pair-c", "Mathlib.Example.gamma", "family-gamma"),
		mathlibPair(snapshot, "pair-d", "Mathlib.Example.delta", "family-delta"),
	}
	config := MathlibProofPairSplitConfig{TrainingPercent: 80, Seed: "taste-v1"}
	first, err := BuildMathlibProofPairSplit(snapshot, pairs, config)
	if err != nil {
		t.Fatalf("BuildMathlibProofPairSplit() error = %v", err)
	}
	reversed := append([]MathlibProofPair(nil), pairs...)
	for i, j := 0, len(reversed)-1; i < j; i, j = i+1, j-1 {
		reversed[i], reversed[j] = reversed[j], reversed[i]
	}
	second, err := BuildMathlibProofPairSplit(snapshot, reversed, config)
	if err != nil {
		t.Fatalf("BuildMathlibProofPairSplit() for reversed rows error = %v", err)
	}
	if first.ContentSHA256 != second.ContentSHA256 {
		t.Fatalf("split digest changed with input order: %s vs %s", first.ContentSHA256, second.ContentSHA256)
	}
	partitions, err := first.Partition(snapshot, pairs)
	if err != nil {
		t.Fatalf("Partition() error = %v", err)
	}
	if len(partitions.Training) == 0 || len(partitions.Evaluation) == 0 {
		t.Fatalf("split must populate both partitions, got training=%d evaluation=%d", len(partitions.Training), len(partitions.Evaluation))
	}
	seen := make(map[string]TasteDataSplit)
	for _, pair := range partitions.Training {
		seen[pair.LeakageGroupID] = TasteSplitTraining
	}
	for _, pair := range partitions.Evaluation {
		if assigned, exists := seen[pair.LeakageGroupID]; exists && assigned != TasteSplitEvaluation {
			t.Fatalf("leakage group %q appears in both %q and evaluation", pair.LeakageGroupID, assigned)
		}
		seen[pair.LeakageGroupID] = TasteSplitEvaluation
	}
	if seen["family-alpha"] == "" {
		t.Fatal("expected the shared theorem family to be assigned")
	}
}

func TestMathlibProofPairsRequireExplicitTrainingRightsAndMathlibLane(t *testing.T) {
	t.Run("reference only", func(t *testing.T) {
		snapshot := mathlibTrainingSnapshot(t, catalog.UseLocalStorage, catalog.UseReference)
		pair := mathlibPair(snapshot, "pair-a", "Mathlib.Example.alpha", "family-alpha")
		if err := ValidateMathlibProofPairs(snapshot, []MathlibProofPair{pair}); err == nil || !strings.Contains(err.Error(), "TRAINING permission") {
			t.Fatalf("ValidateMathlibProofPairs() error = %v, want explicit training-permission refusal", err)
		}
	})

	t.Run("other approved training lane", func(t *testing.T) {
		snapshot := mathlibTrainingSnapshot(t)
		source := snapshot.Sources[0]
		source.Lane = catalog.LaneHistoricalBountyValues
		source.License = "CC-BY-4.0"
		source.LicenseTermsURL = "https://creativecommons.org/licenses/by/4.0/"
		snapshot, err := catalog.NewSnapshot(snapshot.CapturedAt, []catalog.SourceVersion{source}, nil)
		if err != nil {
			t.Fatalf("NewSnapshot() with valid bounty source error = %v", err)
		}
		pair := mathlibPair(snapshot, "pair-a", "Mathlib.Example.alpha", "family-alpha")
		if err := ValidateMathlibProofPairs(snapshot, []MathlibProofPair{pair}); err == nil || !strings.Contains(err.Error(), "outside the Mathlib proof-pair lane") {
			t.Fatalf("ValidateMathlibProofPairs() error = %v, want Mathlib-lane refusal", err)
		}
	})
}

func TestMathlibProofPairRejectsSnapshotSourceAndProofDigestDrift(t *testing.T) {
	snapshot := mathlibTrainingSnapshot(t)
	base := mathlibPair(snapshot, "pair-a", "Mathlib.Example.alpha", "family-alpha")
	tests := []struct {
		name   string
		mutate func(*MathlibProofPair)
		want   string
	}{
		{name: "snapshot", mutate: func(pair *MathlibProofPair) { pair.CatalogSnapshotSHA256 = strings.Repeat("b", 64) }, want: "different catalog snapshot"},
		{name: "source", mutate: func(pair *MathlibProofPair) { pair.SourceSHA256 = strings.Repeat("b", 64) }, want: "source digest does not match"},
		{name: "proof text", mutate: func(pair *MathlibProofPair) { pair.BeforeProof += "\n-- changed" }, want: "before-proof digest does not match"},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			pair := base
			test.mutate(&pair)
			if err := ValidateMathlibProofPairs(snapshot, []MathlibProofPair{pair}); err == nil || !strings.Contains(err.Error(), test.want) {
				t.Fatalf("ValidateMathlibProofPairs() error = %v, want %q", err, test.want)
			}
		})
	}
}

func TestMathlibProofPairRejectsDuplicateIDsAndDuplicateProofContent(t *testing.T) {
	snapshot := mathlibTrainingSnapshot(t)
	first := mathlibPair(snapshot, "pair-a", "Mathlib.Example.alpha", "family-alpha")
	duplicateID := mathlibPair(snapshot, "pair-a", "Mathlib.Example.beta", "family-beta")
	if err := ValidateMathlibProofPairs(snapshot, []MathlibProofPair{first, duplicateID}); err == nil || !strings.Contains(err.Error(), "duplicate Mathlib proof-pair ID") {
		t.Fatalf("ValidateMathlibProofPairs() duplicate ID error = %v", err)
	}
	duplicateContent := first
	duplicateContent.PairID = "pair-b"
	duplicateContent.LeakageGroupID = "family-beta"
	if err := ValidateMathlibProofPairs(snapshot, []MathlibProofPair{first, duplicateContent}); err == nil || !strings.Contains(err.Error(), "duplicate before/after proof content") {
		t.Fatalf("ValidateMathlibProofPairs() duplicate content error = %v", err)
	}
}

func TestMathlibProofPairAcceptsPrimeMarkedLeanDeclarationKey(t *testing.T) {
	snapshot := mathlibTrainingSnapshot(t)
	pair := mathlibPair(snapshot, "pair-prime", "Mathlib.Data.Option.guard_eq_some'", "family-prime")
	if err := ValidateMathlibProofPairs(snapshot, []MathlibProofPair{pair}); err != nil {
		t.Fatalf("ValidateMathlibProofPairs() prime-marked Lean declaration error = %v", err)
	}

	for _, invalid := range []string{"Mathlib.Data/Option.guard", "Mathlib Data.Option.guard", "'''"} {
		pair.TheoremKey = invalid
		if err := pair.Validate(); err == nil {
			t.Errorf("MathlibProofPair.Validate() accepted unsafe Lean declaration key %q", invalid)
		}
	}
}

func TestMathlibProofPairSplitRequiresTwoGroupsAndRejectsManifestTampering(t *testing.T) {
	snapshot := mathlibTrainingSnapshot(t)
	config := MathlibProofPairSplitConfig{TrainingPercent: 80, Seed: "taste-v1"}
	oneGroup := []MathlibProofPair{mathlibPair(snapshot, "pair-a", "Mathlib.Example.alpha", "family-alpha")}
	if _, err := BuildMathlibProofPairSplit(snapshot, oneGroup, config); err == nil || !strings.Contains(err.Error(), "at least two independent leakage groups") {
		t.Fatalf("BuildMathlibProofPairSplit() one-group error = %v", err)
	}
	pairs := []MathlibProofPair{
		mathlibPair(snapshot, "pair-a", "Mathlib.Example.alpha", "family-alpha"),
		mathlibPair(snapshot, "pair-b", "Mathlib.Example.beta", "family-beta"),
	}
	manifest, err := BuildMathlibProofPairSplit(snapshot, pairs, config)
	if err != nil {
		t.Fatalf("BuildMathlibProofPairSplit() error = %v", err)
	}
	if manifest.Assignments[0].Split == TasteSplitTraining {
		manifest.Assignments[0].Split = TasteSplitEvaluation
	} else {
		manifest.Assignments[0].Split = TasteSplitTraining
	}
	manifest.ContentSHA256, err = splitManifestDigest(manifest)
	if err != nil {
		t.Fatal(err)
	}
	if err := manifest.Validate(snapshot, pairs); err == nil || !strings.Contains(err.Error(), "does not match deterministic group assignment") {
		t.Fatalf("Validate() tampered manifest error = %v, want deterministic-assignment refusal", err)
	}
}

func TestMathlibProofPairSplitBindsExactPairSet(t *testing.T) {
	snapshot := mathlibTrainingSnapshot(t)
	pairs := []MathlibProofPair{
		mathlibPair(snapshot, "pair-a", "Mathlib.Example.alpha", "family-alpha"),
		mathlibPair(snapshot, "pair-b", "Mathlib.Example.beta", "family-beta"),
	}
	manifest, err := BuildMathlibProofPairSplit(snapshot, pairs, MathlibProofPairSplitConfig{TrainingPercent: 50, Seed: "taste-v1"})
	if err != nil {
		t.Fatalf("BuildMathlibProofPairSplit() error = %v", err)
	}
	changed := append([]MathlibProofPair(nil), pairs...)
	newPair := mathlibPair(snapshot, "pair-c", "Mathlib.Example.alpha_variant", "family-alpha")
	newPair.AfterProof = "by\n  exact Nat.add_comm _ _"
	newPair.AfterProofSHA256 = digestText(newPair.AfterProof)
	changed = append(changed, newPair)
	if err := manifest.Validate(snapshot, changed); err == nil || !strings.Contains(err.Error(), "different pair set") {
		t.Fatalf("Validate() changed pair-set error = %v, want exact-dataset refusal", err)
	}
}
