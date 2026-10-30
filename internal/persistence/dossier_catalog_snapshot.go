package persistence

import (
	"errors"
	"fmt"
	"io"
	"sort"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
)

const maxDossierCatalogSnapshotBytes = 16 << 20

// DossierCatalogSnapshotAudit records the exact M0 artifact reopened for an
// M8 dossier. It establishes local content and statement/source consistency;
// it does not independently certify catalog status or rights-review identity.
type DossierCatalogSnapshotAudit struct {
	Status                  string `json:"status"`
	Path                    string `json:"path,omitempty"`
	ProblemID               string `json:"problem_id"`
	CanonicalSnapshotSHA256 string `json:"canonical_snapshot_sha256,omitempty"`
	RawFileSHA256           string `json:"raw_file_sha256,omitempty"`
	ProblemMatched          bool   `json:"problem_matched"`
	ProblemStatementMatched bool   `json:"problem_statement_matched"`
	LeanStatementMatched    bool   `json:"lean_statement_matched"`
	SourceIDsMatched        bool   `json:"source_ids_matched"`
	SourceRightsMatched     int    `json:"source_rights_matched"`
	RequiredSourceCount     int    `json:"required_source_count"`
	Error                   string `json:"error,omitempty"`
}

// AuditDossierCatalogSnapshot reopens the exact M0 snapshot that initialized a
// dossier, verifies its canonical digest, and compares the dossier's copied
// problem and item-level source pins with that snapshot.
func AuditDossierCatalogSnapshot(path string, dossier domain.Dossier) (DossierCatalogSnapshotAudit, error) {
	report := DossierCatalogSnapshotAudit{
		Status:              "MISSING",
		Path:                path,
		ProblemID:           dossier.Problem.ID,
		RequiredSourceCount: len(dossier.Problem.SourceIDs),
	}
	if strings.TrimSpace(path) == "" {
		return report, errors.New("M0 catalog snapshot path is required")
	}
	file, err := openRegular(path)
	if err != nil {
		report.Status = "BLOCKED"
		report.Error = err.Error()
		return report, fmt.Errorf("open M0 catalog snapshot: %w", err)
	}
	data, readErr := io.ReadAll(io.LimitReader(file, maxDossierCatalogSnapshotBytes+1))
	closeErr := file.Close()
	if readErr != nil {
		report.Status = "BLOCKED"
		report.Error = readErr.Error()
		return report, fmt.Errorf("read M0 catalog snapshot: %w", readErr)
	}
	if closeErr != nil {
		report.Status = "BLOCKED"
		report.Error = closeErr.Error()
		return report, fmt.Errorf("close M0 catalog snapshot: %w", closeErr)
	}
	if len(data) == 0 || len(data) > maxDossierCatalogSnapshotBytes {
		err := errors.New("M0 catalog snapshot is empty or exceeds the 16 MiB limit")
		report.Status = "BLOCKED"
		report.Error = err.Error()
		return report, err
	}
	report.RawFileSHA256 = sha256Hex(data)

	var snapshot catalog.Snapshot
	if err := decodeStrictEvidenceJSON(data, &snapshot); err != nil {
		report.Status = "BLOCKED"
		report.Error = err.Error()
		return report, fmt.Errorf("decode M0 catalog snapshot: %w", err)
	}
	if err := snapshot.Validate(); err != nil {
		report.Status = "BLOCKED"
		report.Error = err.Error()
		return report, fmt.Errorf("validate M0 catalog snapshot: %w", err)
	}
	report.CanonicalSnapshotSHA256 = snapshot.ContentSHA256
	if dossier.CatalogSnapshotSHA256 == "" || dossier.CatalogSnapshotSHA256 != snapshot.ContentSHA256 {
		err := errors.New("M0 catalog snapshot digest does not match the dossier pin")
		report.Status = "BLOCKED"
		report.Error = err.Error()
		return report, err
	}

	var selected *catalog.Problem
	for index := range snapshot.Problems {
		if snapshot.Problems[index].ID == dossier.Problem.ID {
			selected = &snapshot.Problems[index]
			break
		}
	}
	if selected == nil {
		err := fmt.Errorf("M0 problem %q is absent from the pinned catalog snapshot", dossier.Problem.ID)
		report.Status = "BLOCKED"
		report.Error = err.Error()
		return report, err
	}
	report.ProblemMatched = true

	statementMatches := dossier.Problem.Title == selected.Title &&
		dossier.Problem.Statement == selected.InformalStatement &&
		dossier.Case.Question == selected.InformalStatement &&
		string(selected.Status) == dossier.Problem.M0Status &&
		equalStringSlices(dossier.Problem.SourceIDs, selected.SourceIDs) &&
		equalHistoricalBounty(dossier.Problem.HistoricalBounty, selected.HistoricalBounty)
	report.ProblemStatementMatched = statementMatches
	report.LeanStatementMatched = dossier.Problem.LeanStatement == selected.LeanStatement
	report.SourceIDsMatched = equalStringSlices(dossier.Problem.SourceIDs, selected.SourceIDs)
	if !statementMatches || !report.LeanStatementMatched {
		err := errors.New("M0 catalog problem fields do not exactly match the dossier statement, status, source IDs, or bounty")
		report.Status = "BLOCKED"
		report.Error = err.Error()
		return report, err
	}

	sources := make(map[string]domain.Source, len(dossier.Sources))
	for _, source := range dossier.Sources {
		sources[source.ID] = source
	}
	versions := make(map[string]catalog.SourceVersion, len(snapshot.Sources))
	for _, source := range snapshot.Sources {
		versions[source.ID] = source
	}
	for _, sourceID := range selected.SourceIDs {
		version, exists := versions[sourceID]
		if !exists {
			err := fmt.Errorf("M0 problem source %q is absent from its catalog snapshot", sourceID)
			report.Status = "BLOCKED"
			report.Error = err.Error()
			return report, err
		}
		if !version.EligibleFor(catalog.UseLocalStorage) {
			err := fmt.Errorf("M0 source %q is no longer cleared for LOCAL_STORAGE", sourceID)
			report.Status = "BLOCKED"
			report.Error = err.Error()
			return report, err
		}
		copied, exists := sources[sourceID]
		if !exists || !dossierSourceMatchesCatalog(copied, version, snapshot.ContentSHA256) {
			err := fmt.Errorf("dossier source %q does not match its exact M0 rights and provenance pins", sourceID)
			report.Status = "BLOCKED"
			report.Error = err.Error()
			return report, err
		}
		report.SourceRightsMatched++
	}
	if !report.SourceIDsMatched || report.SourceRightsMatched != report.RequiredSourceCount {
		err := errors.New("M0 source identities or item-level source rights did not fully match the dossier")
		report.Status = "BLOCKED"
		report.Error = err.Error()
		return report, err
	}
	report.Status = "VERIFIED"
	return report, nil
}

func dossierSourceMatchesCatalog(copied domain.Source, source catalog.SourceVersion, snapshotSHA256 string) bool {
	allowedUses := make([]string, 0, len(source.AllowedUses))
	for _, use := range source.AllowedUses {
		allowedUses = append(allowedUses, string(use))
	}
	sort.Strings(allowedUses)
	reviewedAt := ""
	if !source.RightsReviewedAt.IsZero() {
		reviewedAt = source.RightsReviewedAt.UTC().Format("2006-01-02T15:04:05.999999999Z07:00")
	}
	expected := map[string]string{
		"m0_catalog_snapshot_sha256": snapshotSHA256,
		"m0_source_revision":         source.Revision,
		"m0_item_locator":            source.ItemLocator,
		"m0_content_sha256":          source.ContentSHA256,
		"m0_source_lane":             string(source.Lane),
		"m0_retrieved_at":            source.RetrievedAt.UTC().Format("2006-01-02T15:04:05.999999999Z07:00"),
		"m0_author_or_holder":        source.AuthorOrHolder,
		"m0_rights_status":           string(source.Rights),
		"m0_allowed_uses":            strings.Join(allowedUses, ","),
		"m0_rights_evidence_id":      source.RightsEvidenceID,
		"m0_rights_reviewer_id":      source.RightsReviewerID,
		"m0_rights_reviewed_at":      reviewedAt,
		"m0_license":                 source.License,
		"m0_license_terms_url":       source.LicenseTermsURL,
		"m0_terms_note":              source.TermsNote,
		"m0_attribution":             source.Attribution,
		"m0_intake_note":             "Loaded from the validated M0 snapshot only; no live fetch or source audit is asserted.",
	}
	if copied.ID != source.ID || copied.URL != source.URL {
		return false
	}
	// Older case snapshots copied the core source pins under short metadata
	// names. Newer producers may copy the full M0-prefixed set. Accept either
	// representation, but require exact ID, URL, revision, content hash, and
	// license binding; any optional expanded M0 field must also be exact.
	corePins := map[string][2]string{
		"revision": {source.Revision, "m0_source_revision"},
		"sha256":   {source.ContentSHA256, "m0_content_sha256"},
		"license":  {source.License, "m0_license"},
	}
	for legacyKey, pin := range corePins {
		actual, exists := copied.Metadata[legacyKey]
		if !exists {
			actual, exists = copied.Metadata[pin[1]]
		}
		if !exists || actual != pin[0] {
			return false
		}
	}
	if source.AuthorOrHolder != "" && copied.Author != source.AuthorOrHolder {
		return false
	}
	for key, value := range expected {
		if actual, exists := copied.Metadata[key]; exists && actual != value {
			return false
		}
	}
	return true
}

func equalHistoricalBounty(dossierValue *int64, catalogValue *catalog.HistoricalBounty) bool {
	if dossierValue == nil || catalogValue == nil {
		return dossierValue == nil && catalogValue == nil
	}
	return *dossierValue == catalogValue.AmountUSD
}

func equalStringSlices(left, right []string) bool {
	if len(left) != len(right) {
		return false
	}
	for index := range left {
		if left[index] != right[index] {
			return false
		}
	}
	return true
}
