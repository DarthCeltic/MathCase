package persistence

import (
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestAuditDossierCatalogSnapshotReopensExactM0ProblemAndRightsPins(t *testing.T) {
	path, dossier, snapshot := dossierCatalogSnapshotFixture(t)
	report, err := AuditDossierCatalogSnapshot(path, dossier)
	if err != nil {
		t.Fatalf("AuditDossierCatalogSnapshot() error = %v", err)
	}
	if report.Status != "VERIFIED" || report.ProblemID != dossier.Problem.ID ||
		report.CanonicalSnapshotSHA256 != snapshot.ContentSHA256 || len(report.RawFileSHA256) != 64 ||
		!report.ProblemMatched || !report.ProblemStatementMatched || !report.LeanStatementMatched ||
		!report.SourceIDsMatched || report.SourceRightsMatched != 1 || report.RequiredSourceCount != 1 {
		t.Fatalf("M0 audit = %#v, want exact problem and one source-rights pin verified", report)
	}
}

func TestAuditDossierCatalogSnapshotRefusesMisbindingAndMissingRightsPins(t *testing.T) {
	path, dossier, _ := dossierCatalogSnapshotFixture(t)
	tests := []struct {
		name   string
		mutate func(*domain.Dossier)
		want   string
	}{
		{
			name: "dossier catalog digest",
			mutate: func(d *domain.Dossier) {
				d.CatalogSnapshotSHA256 = strings.Repeat("f", 64)
			},
			want: "digest does not match",
		},
		{
			name: "informal statement",
			mutate: func(d *domain.Dossier) {
				d.Problem.Statement += " altered"
			},
			want: "problem fields do not exactly match",
		},
		{
			name: "lean statement",
			mutate: func(d *domain.Dossier) {
				d.Problem.LeanStatement += " altered"
			},
			want: "problem fields do not exactly match",
		},
		{
			name: "source rights metadata",
			mutate: func(d *domain.Dossier) {
				d.Sources[0].Metadata["m0_rights_status"] = string(catalog.RightsPending)
			},
			want: "does not match its exact M0 rights",
		},
		{
			name: "source omitted",
			mutate: func(d *domain.Dossier) {
				d.Sources = nil
			},
			want: "does not match its exact M0 rights",
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			mutated := dossier
			mutated.Sources = append([]domain.Source(nil), dossier.Sources...)
			if len(dossier.Sources) > 0 {
				mutated.Sources[0].Metadata = cloneStringMap(dossier.Sources[0].Metadata)
			}
			test.mutate(&mutated)
			report, err := AuditDossierCatalogSnapshot(path, mutated)
			if err == nil || !strings.Contains(err.Error(), test.want) {
				t.Fatalf("AuditDossierCatalogSnapshot() error = %v, want %q; report=%#v", err, test.want, report)
			}
			if report.Status == "VERIFIED" {
				t.Fatalf("misbound M0 audit reported VERIFIED: %#v", report)
			}
		})
	}
}

func TestAuditDossierCatalogSnapshotRefusesTamperedAndMissingInput(t *testing.T) {
	path, dossier, _ := dossierCatalogSnapshotFixture(t)
	data, err := os.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	tamperedPath := filepath.Join(t.TempDir(), "catalog.snapshot.json")
	tampered := strings.Replace(string(data), "M0 snapshot source", "altered source", 1)
	if tampered == string(data) {
		t.Fatal("fixture text to tamper was not found")
	}
	if err := os.WriteFile(tamperedPath, []byte(tampered), 0o600); err != nil {
		t.Fatal(err)
	}
	if report, err := AuditDossierCatalogSnapshot(tamperedPath, dossier); err == nil || report.Status == "VERIFIED" {
		t.Fatalf("tampered snapshot audit = %#v, %v; want refusal", report, err)
	}
	if report, err := AuditDossierCatalogSnapshot("", dossier); err == nil || report.Status != "MISSING" {
		t.Fatalf("missing snapshot audit = %#v, %v; want MISSING refusal", report, err)
	}
}

func TestAuditDossierCatalogSnapshotRefusesSourceWithoutLocalStorageUse(t *testing.T) {
	path, dossier, snapshot := dossierCatalogSnapshotFixture(t)
	source := snapshot.Sources[0]
	source.Rights = catalog.RightsPending
	source.AllowedUses = nil
	updated, err := catalog.NewSnapshot(snapshot.CapturedAt, []catalog.SourceVersion{source}, snapshot.Problems)
	if err != nil {
		t.Fatalf("catalog.NewSnapshot() with pending source rights error = %v", err)
	}
	dossier.CatalogSnapshotSHA256 = updated.ContentSHA256
	dossier.Sources[0].Metadata["m0_catalog_snapshot_sha256"] = updated.ContentSHA256
	updatedBytes, err := json.Marshal(updated)
	if err != nil {
		t.Fatal(err)
	}
	updatedPath := filepath.Join(filepath.Dir(path), "catalog-rights-pending.json")
	if err := os.WriteFile(updatedPath, updatedBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	report, err := AuditDossierCatalogSnapshot(updatedPath, dossier)
	if err == nil || !strings.Contains(err.Error(), "no longer cleared for LOCAL_STORAGE") || report.Status == "VERIFIED" {
		t.Fatalf("AuditDossierCatalogSnapshot() = %#v, %v; want local-storage rights refusal", report, err)
	}
}

func dossierCatalogSnapshotFixture(t *testing.T) (string, domain.Dossier, catalog.Snapshot) {
	t.Helper()
	now := time.Date(2026, time.October, 22, 12, 0, 0, 0, time.UTC)
	source := catalog.SourceVersion{
		ID: "source-proof", URL: "https://example.test/proof", ItemLocator: "item-1",
		Lane: catalog.LaneMathlibProofPairs, Revision: "fixture-commit", RetrievedAt: now,
		ContentSHA256: strings.Repeat("a", 64), AuthorOrHolder: "Mathlib contributors",
		License: "Apache-2.0", LicenseTermsURL: "https://www.apache.org/licenses/LICENSE-2.0",
		TermsNote: "M0 snapshot source terms.", Attribution: "M0 snapshot attribution.",
		Rights: catalog.RightsCleared, AllowedUses: []catalog.SourceUse{catalog.UseLocalStorage},
		RightsReviewerID: "rights-reviewer", RightsReviewedAt: now, RightsEvidenceID: "rights-proof",
	}
	problem := catalog.Problem{
		ID: "problem-proof", Title: "M0 snapshot source", InformalStatement: "Every natural number equals itself.",
		LeanStatement: "forall (n : Nat), n = n", Status: catalog.StatusProven, SourceIDs: []string{source.ID},
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, []catalog.Problem{problem})
	if err != nil {
		t.Fatalf("catalog.NewSnapshot() error = %v", err)
	}
	encoded, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	path := filepath.Join(t.TempDir(), "catalog.snapshot.json")
	if err := os.WriteFile(path, encoded, 0o600); err != nil {
		t.Fatal(err)
	}
	uses := []string{string(catalog.UseLocalStorage)}
	metadata := map[string]string{
		"m0_catalog_snapshot_sha256": snapshot.ContentSHA256,
		"m0_source_revision":         source.Revision,
		"m0_item_locator":            source.ItemLocator,
		"m0_content_sha256":          source.ContentSHA256,
		"m0_source_lane":             string(source.Lane),
		"m0_retrieved_at":            now.Format(time.RFC3339Nano),
		"m0_author_or_holder":        source.AuthorOrHolder,
		"m0_rights_status":           string(source.Rights),
		"m0_allowed_uses":            strings.Join(uses, ","),
		"m0_rights_evidence_id":      source.RightsEvidenceID,
		"m0_rights_reviewer_id":      source.RightsReviewerID,
		"m0_rights_reviewed_at":      now.Format(time.RFC3339Nano),
		"m0_license":                 source.License,
		"m0_license_terms_url":       source.LicenseTermsURL,
		"m0_terms_note":              source.TermsNote,
		"m0_attribution":             source.Attribution,
		"m0_intake_note":             "Loaded from the validated M0 snapshot only; no live fetch or source audit is asserted.",
	}
	dossier := domain.Dossier{
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		Case:                  domain.Case{ID: "case-proof", Question: problem.InformalStatement},
		Problem: domain.MathProblem{
			ID: problem.ID, Title: problem.Title, Statement: problem.InformalStatement,
			LeanStatement: problem.LeanStatement, M0Status: string(problem.Status),
			SourceIDs: append([]string(nil), problem.SourceIDs...),
		},
		Sources: []domain.Source{{
			ID: source.ID, CaseID: "case-proof", URL: source.URL, Title: source.ID, Author: source.AuthorOrHolder,
			Metadata: metadata,
		}},
	}
	return path, dossier, snapshot
}

func cloneStringMap(values map[string]string) map[string]string {
	copyOfValues := make(map[string]string, len(values))
	for key, value := range values {
		copyOfValues[key] = value
	}
	return copyOfValues
}
