package taste

import (
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
)

func clearedCatalogSnapshot(t *testing.T) catalog.Snapshot {
	t.Helper()
	now := time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC)
	amount := int64(100)
	source := catalog.SourceVersion{
		ID:               "source-a",
		URL:              "https://example.test/problem/1",
		ItemLocator:      "records/problem-a.json",
		Lane:             catalog.LaneHistoricalBountyValues,
		Revision:         "rev-1",
		RetrievedAt:      now,
		ContentSHA256:    strings.Repeat("a", 64),
		AuthorOrHolder:   "Test rights holder",
		License:          "CC-BY-4.0",
		LicenseTermsURL:  "https://creativecommons.org/licenses/by/4.0/",
		TermsNote:        "Test source cleared for explicit model training.",
		Attribution:      "Test rights holder, problem-a record.",
		AllowedUses:      []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseTraining},
		RightsReviewerID: "reviewer-test",
		RightsReviewedAt: now.Add(time.Hour),
		RightsEvidenceID: "rights-evidence-1",
		Rights:           catalog.RightsCleared,
	}
	snapshot, err := catalog.NewSnapshot(now,
		[]catalog.SourceVersion{source},
		[]catalog.Problem{{ID: "problem-a", Title: "A", InformalStatement: "Statement", Status: catalog.StatusConjectured, SourceIDs: []string{"source-a"}, HistoricalBounty: &catalog.HistoricalBounty{AmountUSD: amount, SourceID: "source-a"}}},
	)
	if err != nil {
		t.Fatal(err)
	}
	return snapshot
}

func TestHistoricalBountiesProduceCardinalPreferencePairs(t *testing.T) {
	labels := []BountyLabel{
		{ProblemID: "problem-a", AmountUSD: 25, SourceID: "source-a", SourceSHA256: strings.Repeat("a", 64)},
		{ProblemID: "problem-b", AmountUSD: 250, SourceID: "source-b", SourceSHA256: strings.Repeat("b", 64)},
		{ProblemID: "problem-c", AmountUSD: 250, SourceID: "source-c", SourceSHA256: strings.Repeat("c", 64)},
	}
	pairs, err := PairwisePreferences(labels)
	if err != nil {
		t.Fatal(err)
	}
	if len(pairs) != 2 {
		t.Fatalf("got %d preference pairs, want two; tied bounties must be unlabeled", len(pairs))
	}
	for _, pair := range pairs {
		if pair.PreferredProblemID == "problem-a" || pair.RewardDifference != 225 {
			t.Fatalf("pair lost historical ordering or cardinal difference: %#v", pair)
		}
	}
}

func TestHistoricalLabelsRequireClearedSourceRights(t *testing.T) {
	now := time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC)
	snapshot, err := catalog.NewSnapshot(now,
		[]catalog.SourceVersion{{ID: "source-a", URL: "https://example.test", Revision: "r1", RetrievedAt: now, ContentSHA256: strings.Repeat("a", 64), Rights: catalog.RightsPending}},
		[]catalog.Problem{{ID: "problem-a", Title: "A", InformalStatement: "Statement", Status: catalog.StatusConjectured, SourceIDs: []string{"source-a"}, HistoricalBounty: &catalog.HistoricalBounty{AmountUSD: 100, SourceID: "source-a"}}},
	)
	if err != nil {
		t.Fatal(err)
	}
	labels, err := HistoricalLabels(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	if len(labels) != 0 {
		t.Fatalf("got %d labels from a source with pending terms", len(labels))
	}
}

func TestHistoricalLabelsExcludeReferenceOnlySource(t *testing.T) {
	snapshot := clearedCatalogSnapshot(t)
	source := snapshot.Sources[0]
	source.AllowedUses = []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseReference}
	snapshot, err := catalog.NewSnapshot(snapshot.CapturedAt, []catalog.SourceVersion{source}, snapshot.Problems)
	if err != nil {
		t.Fatalf("NewSnapshot() with reference-only permission error = %v, want valid source", err)
	}
	labels, err := HistoricalLabels(snapshot)
	if err != nil {
		t.Fatalf("HistoricalLabels() error = %v, want reference-only source skipped", err)
	}
	if len(labels) != 0 {
		t.Fatalf("HistoricalLabels() returned %d labels from a reference-only source, want zero", len(labels))
	}
}

func TestBaselineScoresAreMonotoneAndBounded(t *testing.T) {
	scores, err := BaselineScores([]BountyLabel{
		{ProblemID: "small", AmountUSD: 25, SourceID: "source-a", SourceSHA256: strings.Repeat("a", 64)},
		{ProblemID: "large", AmountUSD: 10000, SourceID: "source-b", SourceSHA256: strings.Repeat("b", 64)},
	})
	if err != nil {
		t.Fatal(err)
	}
	if scores["small"] <= 0 || scores["small"] >= scores["large"] || scores["large"] != 1 {
		t.Fatalf("unexpected baseline scores: %#v", scores)
	}
}

func TestTasteRejectsTamperedSnapshotAndUnprovenancedLabels(t *testing.T) {
	snapshot := clearedCatalogSnapshot(t)
	snapshot.Problems[0].HistoricalBounty.AmountUSD++
	if _, err := HistoricalLabels(snapshot); err == nil || !strings.Contains(err.Error(), "snapshot content") {
		t.Fatalf("HistoricalLabels() on a tampered snapshot error = %v, want snapshot digest refusal", err)
	}
	if _, err := PairwisePreferences([]BountyLabel{{ProblemID: "problem-a", AmountUSD: 10}}); err == nil || !strings.Contains(err.Error(), "source ID") {
		t.Fatalf("PairwisePreferences() without source provenance error = %v, want provenance refusal", err)
	}
}
