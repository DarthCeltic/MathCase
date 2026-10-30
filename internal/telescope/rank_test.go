package telescope

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"math"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
)

func TestRankUsesFrozenFormulaInputsAndAudits(t *testing.T) {
	features := Features{
		ProblemID:     "problem-a",
		SourceIDs:     []string{"source-a"},
		TasteScore:    0.5,
		TasteEvidence: testEvidenceRef("taste-a"),
		ConditionalTaste: []ConditionalTasteFeature{
			{ProblemID: "problem-b", Score: 0.2, Evidence: testEvidenceRef("conditional-b")},
			{ProblemID: "problem-c", Score: 0.3, Evidence: testEvidenceRef("conditional-c")},
		},
		BoundaryTension:  0.8,
		BoundaryEvidence: testEvidenceRef("boundary-a"),
		TechniqueCompatibilities: []TechniqueCompatibilityFeature{
			{TechniqueID: "technique-a", Score: 0.2, Evidence: testEvidenceRef("technique-a-evidence")},
			{TechniqueID: "technique-b", Score: 0.7, Evidence: testEvidenceRef("technique-b-evidence")},
		},
		SourceSnapshotSHA256: strings.Repeat("a", 64),
		Rationale:            "Historical reward and recorded technique compatibility support this allocation.",
	}
	result, err := Score(features)
	if err != nil {
		t.Fatal(err)
	}
	if math.Abs(result.Score-0.42) > 1e-12 {
		t.Fatalf("Score() = %.12f, want 0.42", result.Score)
	}
	if err := Audit(result); err != nil {
		t.Fatalf("Audit() error = %v", err)
	}
	result.Score += 0.01
	if err := Audit(result); err == nil || !strings.Contains(err.Error(), "recomputation") {
		t.Fatalf("expected modified score refusal, got %v", err)
	}
}

func TestRankSortsByScoreThenProblemID(t *testing.T) {
	base := Features{
		TasteScore: 0.5, TasteEvidence: testEvidenceRef("taste-base"),
		BoundaryTension: 1, BoundaryEvidence: testEvidenceRef("boundary-base"),
		TechniqueCompatibilities: []TechniqueCompatibilityFeature{{TechniqueID: "technique-a", Score: 1, Evidence: testEvidenceRef("technique-base")}},
		SourceIDs:                []string{"source-a"}, SourceSnapshotSHA256: strings.Repeat("a", 64), Rationale: "same recorded factors",
	}
	first := base
	first.ProblemID = "problem-b"
	second := base
	second.ProblemID = "problem-a"
	results, err := Rank([]Features{first, second})
	if err != nil {
		t.Fatal(err)
	}
	if results[0].Features.ProblemID != "problem-a" {
		t.Fatalf("tie order = %q, want problem-a", results[0].Features.ProblemID)
	}
}

func TestRankRequiresRationaleAndSourceSnapshot(t *testing.T) {
	features := Features{ProblemID: "problem-a", TasteScore: 0.5, BoundaryTension: 1, TechniqueCompatibilities: []TechniqueCompatibilityFeature{{TechniqueID: "technique-a", Score: 1}}}
	if _, err := Score(features); err == nil {
		t.Fatal("expected incomplete ranking inputs to be rejected")
	}
}

func testEvidenceRef(id string) FeatureEvidenceRef {
	return FeatureEvidenceRef{EvidenceID: id, ArtifactSHA256: strings.Repeat("a", 64)}
}

func telescopeSource(id string, digestByte byte, indexed bool) catalog.SourceVersion {
	now := time.Date(2026, 10, 20, 12, 0, 0, 0, time.UTC)
	uses := []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseIndex}
	if !indexed {
		uses = []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseReference}
	}
	return catalog.SourceVersion{
		ID: id, URL: "https://example.test/" + id, ItemLocator: "M0 item " + id,
		Lane: catalog.LaneMathlibProofPairs, Revision: "revision-1", RetrievedAt: now,
		ContentSHA256: strings.Repeat(string(digestByte), 64), AuthorOrHolder: "Mathlib contributors",
		License: "Apache-2.0", LicenseTermsURL: "https://www.apache.org/licenses/LICENSE-2.0",
		TermsNote: "Terms reviewed for the listed uses.", Attribution: "Mathlib contributors, Apache-2.0.",
		AllowedUses: uses, RightsReviewerID: "reviewer", RightsReviewedAt: now,
		RightsEvidenceID: "rights-" + id, Rights: catalog.RightsCleared,
	}
}

func telescopeCatalog(t *testing.T, indexed bool) (catalog.Snapshot, Features, map[string]LoadedFeatureEvidence) {
	t.Helper()
	now := time.Date(2026, 10, 20, 12, 0, 0, 0, time.UTC)
	snapshot, err := catalog.NewSnapshot(now,
		[]catalog.SourceVersion{
			telescopeSource("source-b", 'b', indexed),
			telescopeSource("source-a", 'a', indexed),
			telescopeSource("source-c", 'c', indexed),
		},
		[]catalog.Problem{
			{ID: "problem-a", Title: "A candidate", InformalStatement: "A sourced candidate.", Status: catalog.StatusConjectured, DomainTags: []string{"algebra"}, SourceIDs: []string{"source-b", "source-a"}},
			{ID: "problem-b", Title: "A related problem", InformalStatement: "A related sourced problem.", Status: catalog.StatusConjectured, DomainTags: []string{"algebra"}, SourceIDs: []string{"source-b"}},
		},
	)
	if err != nil {
		t.Fatalf("NewSnapshot() error = %v", err)
	}
	evidence := make(map[string]LoadedFeatureEvidence)
	buildRef := func(id string, kind FeatureEvidenceKind, relatedProblemID, techniqueID string, value float64, sourceIDs ...string) FeatureEvidenceRef {
		t.Helper()
		sources := make([]FeatureEvidenceSource, 0, len(sourceIDs))
		for _, sourceID := range sourceIDs {
			source := telescopeSource(sourceID, sourceID[len(sourceID)-1], indexed)
			sources = append(sources, FeatureEvidenceSource{SourceID: sourceID, SourceSHA256: source.ContentSHA256})
		}
		record := FeatureEvidenceRecord{
			SchemaVersion: FeatureEvidenceSchemaVersion, EvidenceID: id, ProblemID: "problem-a",
			Kind: kind, RelatedProblemID: relatedProblemID, TechniqueID: techniqueID, Value: value,
			CatalogSnapshotSHA256: snapshot.ContentSHA256,
			Sources:               sources,
			Method:                "fixture annotation", Rationale: "A source-linked fixture observation.",
		}
		data, err := json.Marshal(record)
		if err != nil {
			t.Fatalf("json.Marshal() evidence = error %v", err)
		}
		digest := sha256.Sum256(data)
		artifactSHA := hex.EncodeToString(digest[:])
		evidence[id] = LoadedFeatureEvidence{Record: record, ArtifactSHA256: artifactSHA}
		return FeatureEvidenceRef{EvidenceID: id, ArtifactSHA256: artifactSHA}
	}
	features := Features{
		ProblemID: "problem-a", SourceIDs: []string{"source-b", "source-a"}, TasteScore: 0.5,
		TasteEvidence: buildRef("taste-a", FeatureEvidenceTaste, "", "", 0.5, "source-a", "source-b"),
		ConditionalTaste: []ConditionalTasteFeature{{
			ProblemID: "problem-b", Score: 0.2,
			Evidence: buildRef("conditional-b", FeatureEvidenceConditionalTaste, "problem-b", "", 0.2, "source-b"),
		}},
		BoundaryTension:  0.8,
		BoundaryEvidence: buildRef("boundary-a", FeatureEvidenceBoundaryTension, "", "", 0.8, "source-a"),
		TechniqueCompatibilities: []TechniqueCompatibilityFeature{{
			TechniqueID: "technique-a", Score: 0.7,
			Evidence: buildRef("technique-a-evidence", FeatureEvidenceTechniqueCompatibility, "", "technique-a", 0.7, "source-a"),
		}},
		SourceSnapshotSHA256: snapshot.ContentSHA256, Rationale: "Recorded candidate factors support this ranking.",
	}
	return snapshot, features, evidence
}

func TestRankFromCatalogBindsRowsToIndexedProblemSources(t *testing.T) {
	snapshot, features, evidence := telescopeCatalog(t, true)
	results, err := RankFromCatalog(snapshot, []Features{features}, evidence)
	if err != nil {
		t.Fatalf("RankFromCatalog() error = %v", err)
	}
	if len(results) != 1 || results[0].Features.SourceSnapshotSHA256 != snapshot.ContentSHA256 || len(results[0].Features.SourceIDs) != 2 || results[0].Features.SourceIDs[0] != "source-a" || results[0].Features.SourceIDs[1] != "source-b" {
		t.Fatalf("RankFromCatalog() = %#v, want catalog-bound canonical source links", results)
	}
}

func TestRankFromCatalogRejectsMismatchedOrUnindexableInputs(t *testing.T) {
	snapshot, features, evidence := telescopeCatalog(t, true)
	features.SourceSnapshotSHA256 = strings.Repeat("f", 64)
	if _, err := RankFromCatalog(snapshot, []Features{features}, evidence); err == nil || !strings.Contains(err.Error(), "different M0 catalog snapshot") {
		t.Fatalf("RankFromCatalog() with a mismatched snapshot error = %v, want refusal", err)
	}

	snapshot, features, evidence = telescopeCatalog(t, false)
	if _, err := RankFromCatalog(snapshot, []Features{features}, evidence); err == nil || !strings.Contains(err.Error(), "not cleared for INDEX use") {
		t.Fatalf("RankFromCatalog() with reference-only sources error = %v, want rights refusal", err)
	}
}

func TestRankFromCatalogRejectsEvidenceTamperingAndUnlinkedSources(t *testing.T) {
	snapshot, features, evidence := telescopeCatalog(t, true)
	tampered := make(map[string]LoadedFeatureEvidence, len(evidence))
	for id, item := range evidence {
		tampered[id] = item
	}
	loaded := tampered["taste-a"]
	loaded.ArtifactSHA256 = strings.Repeat("f", 64)
	tampered["taste-a"] = loaded
	if _, err := RankFromCatalog(snapshot, []Features{features}, tampered); err == nil || !strings.Contains(err.Error(), "recorded SHA-256") {
		t.Fatalf("RankFromCatalog() with tampered evidence error = %v, want digest refusal", err)
	}

	unlinked := evidence["taste-a"]
	unlinked.Record.Sources[0] = FeatureEvidenceSource{SourceID: "source-c", SourceSHA256: strings.Repeat("c", 64)}
	evidence["taste-a"] = unlinked
	if _, err := RankFromCatalog(snapshot, []Features{features}, evidence); err == nil || !strings.Contains(err.Error(), "not linked to the ranked or related problem") {
		t.Fatalf("RankFromCatalog() with an unlinked source error = %v, want problem-link refusal", err)
	}
}
