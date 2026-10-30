package catalog

import (
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func fixtureSnapshot(t *testing.T, rights RightsStatus) Snapshot {
	t.Helper()
	now := time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC)
	amount := int64(100)
	source := SourceVersion{
		ID:            "source-bounty",
		URL:           "https://example.test/problem/1",
		Revision:      "commit-a1",
		RetrievedAt:   now,
		ContentSHA256: strings.Repeat("a", 64),
		Rights:        rights,
	}
	if rights == RightsCleared {
		source = clearedBountySource(source.ID, source.URL, source.Revision, source.ContentSHA256,
			UseLocalStorage, UseTraining)
		source.RetrievedAt = now
	}
	sources := []SourceVersion{source}
	problems := []Problem{{
		ID:                "problem-1",
		Title:             "Sample open question",
		InformalStatement: "A test-only mathematical statement.",
		Status:            StatusConjectured,
		DomainTags:        []string{"number theory", "analysis"},
		SourceIDs:         []string{"source-bounty"},
		HistoricalBounty:  &HistoricalBounty{AmountUSD: amount, SourceID: "source-bounty"},
	}}
	snapshot, err := NewSnapshot(now, sources, problems)
	if err != nil {
		t.Fatal(err)
	}
	return snapshot
}

func clearedSource(id, sourceURL, revision, digest string, uses ...SourceUse) SourceVersion {
	return SourceVersion{
		ID:               id,
		URL:              sourceURL,
		ItemLocator:      "records/problem.json",
		Lane:             LaneMathlibProofPairs,
		Revision:         revision,
		RetrievedAt:      time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC),
		ContentSHA256:    digest,
		AuthorOrHolder:   "Test rights holder",
		License:          "Apache-2.0",
		LicenseTermsURL:  "https://www.apache.org/licenses/LICENSE-2.0",
		TermsNote:        "Reviewed for the explicitly listed uses.",
		Attribution:      "Test rights holder, sample record.",
		AllowedUses:      uses,
		RightsReviewerID: "reviewer-test",
		RightsReviewedAt: time.Date(2026, time.October, 19, 13, 0, 0, 0, time.UTC),
		RightsEvidenceID: "rights-evidence-1",
		Rights:           RightsCleared,
	}
}

func clearedBountySource(id, sourceURL, revision, digest string, uses ...SourceUse) SourceVersion {
	source := clearedSource(id, sourceURL, revision, digest, uses...)
	source.Lane = LaneHistoricalBountyValues
	source.License = "CC-BY-4.0"
	source.LicenseTermsURL = "https://creativecommons.org/licenses/by/4.0/"
	return source
}

func TestSnapshotIsContentAddressedAndInputOrderIndependent(t *testing.T) {
	now := time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC)
	sourceA := clearedSource("source-a", "https://example.test/a", "rev-a", strings.Repeat("a", 64), UseTraining, UseLocalStorage)
	sourceA.RetrievedAt = now
	sourceB := clearedSource("source-b", "https://example.test/b", "rev-b", strings.Repeat("b", 64), UseReference, UseLocalStorage)
	sourceB.RetrievedAt = now
	problemA := Problem{ID: "problem-a", Title: "A", InformalStatement: "Statement A", Status: StatusProven, SourceIDs: []string{"source-b", "source-a"}, DomainTags: []string{"zeta", "alpha"}}
	problemB := Problem{ID: "problem-b", Title: "B", InformalStatement: "Statement B", Status: StatusConjectured, SourceIDs: []string{"source-a"}}
	first, err := NewSnapshot(now, []SourceVersion{sourceA, sourceB}, []Problem{problemA, problemB})
	if err != nil {
		t.Fatal(err)
	}
	second, err := NewSnapshot(now, []SourceVersion{sourceB, sourceA}, []Problem{problemB, problemA})
	if err != nil {
		t.Fatal(err)
	}
	if first.ContentSHA256 != second.ContentSHA256 {
		t.Fatalf("snapshot hashes differ by input order: %s != %s", first.ContentSHA256, second.ContentSHA256)
	}
	if got := first.Problems[0].DomainTags[0]; got != "alpha" {
		t.Fatalf("domain tags were not canonicalized: first tag = %q", got)
	}
}

func TestSnapshotValidationRejectsContentChangedAfterHashing(t *testing.T) {
	snapshot := fixtureSnapshot(t, RightsCleared)
	if err := snapshot.Validate(); err != nil {
		t.Fatalf("Snapshot.Validate() error = %v, want valid snapshot", err)
	}
	snapshot.Sources[0].TermsNote = "changed after snapshot"
	if err := snapshot.Validate(); err == nil || !strings.Contains(err.Error(), "does not match") {
		t.Fatalf("Snapshot.Validate() after content mutation error = %v, want digest mismatch", err)
	}
}

func TestNewSnapshotCopiesHistoricalBountyInput(t *testing.T) {
	now := time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC)
	amount := int64(100)
	source := clearedBountySource("source-a", "https://example.test", "rev-a", strings.Repeat("a", 64), UseLocalStorage, UseTraining)
	source.RetrievedAt = now
	snapshot, err := NewSnapshot(now,
		[]SourceVersion{source},
		[]Problem{{ID: "problem-a", Title: "A", InformalStatement: "Statement", Status: StatusConjectured, SourceIDs: []string{"source-a"}, HistoricalBounty: &HistoricalBounty{AmountUSD: amount, SourceID: "source-a"}}},
	)
	if err != nil {
		t.Fatal(err)
	}
	amount = 200
	if snapshot.Problems[0].HistoricalBounty.AmountUSD != 100 {
		t.Fatalf("snapshot bounty after caller mutation = %d, want 100", snapshot.Problems[0].HistoricalBounty.AmountUSD)
	}
	source.AllowedUses[0] = UsePublicExport
	if got, want := snapshot.Sources[0].AllowedUses[0], UseLocalStorage; got != want {
		t.Fatalf("snapshot allowed-use entry after caller mutation = %q, want %q", got, want)
	}
	if err := snapshot.Validate(); err != nil {
		t.Fatalf("Snapshot.Validate() after caller mutation error = %v, want unchanged snapshot", err)
	}
}

func TestSnapshotRejectsMissingSourceAndPassingV3WithoutHumanEvidence(t *testing.T) {
	now := time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC)
	problem := Problem{ID: "problem-a", Title: "A", InformalStatement: "Statement A", Status: StatusProven, SourceIDs: []string{"missing"}}
	if _, err := NewSnapshot(now, nil, []Problem{problem}); err == nil || !strings.Contains(err.Error(), "missing source") {
		t.Fatalf("expected missing-source refusal, got %v", err)
	}
	problem = Problem{ID: "problem-a", Title: "A", InformalStatement: "Statement A", LeanStatement: "theorem A : True", Status: StatusProven, SourceIDs: []string{"source-a"}, StatementAudit: StatementAuditRecord{Passed: true}}
	if err := problem.Validate(); err == nil || !strings.Contains(err.Error(), "passing V3 audit") {
		t.Fatalf("expected incomplete V3 evidence refusal, got %v", err)
	}
}

func TestSourceRightsGateModelUse(t *testing.T) {
	if fixtureSnapshot(t, RightsPending).Sources[0].EligibleForModelUse() {
		t.Fatal("pending source terms must not be eligible for model use")
	}
	if !fixtureSnapshot(t, RightsCleared).Sources[0].EligibleForModelUse() {
		t.Fatal("cleared test source should be eligible")
	}
}

func TestSourceRightsArePerUseAndFailClosed(t *testing.T) {
	source := clearedSource("source-reference", "https://example.test/reference", "rev-1", strings.Repeat("c", 64),
		UseLocalStorage, UseReference, UseIndex)
	if !source.EligibleFor(UseReference) || !source.EligibleFor(UseIndex) {
		t.Fatal("SourceVersion.EligibleFor() refused an explicitly cleared reference or index use")
	}
	if source.EligibleForModelUse() {
		t.Fatal("reference/index-only source became eligible for model training")
	}

	incomplete := source
	incomplete.LicenseTermsURL = "http://example.test/license"
	if err := incomplete.Validate(); err == nil {
		t.Fatal("SourceVersion.Validate() accepted a cleared source without an HTTPS terms URL")
	}
	incomplete = source
	incomplete.AllowedUses = []SourceUse{UseReference}
	if err := incomplete.Validate(); err == nil {
		t.Fatal("SourceVersion.Validate() accepted downstream use without local storage permission")
	}
	pending := source
	pending.Rights = RightsPending
	if err := pending.Validate(); err == nil {
		t.Fatal("SourceVersion.Validate() accepted allowed uses before rights review was cleared")
	}
}

func TestProviderInputRequiresAnExplicitItemUseAndDoesNotGrantTraining(t *testing.T) {
	source := clearedSource("source-m7-anchor", "https://example.test/mil/chapter", "commit-1", strings.Repeat("d", 64),
		UseLocalStorage, UseReference, UseProviderInput)
	source.Lane = LaneM7PedagogicalAnchor
	if !source.EligibleFor(UseProviderInput) {
		t.Fatal("exact M7 source with provider-input clearance should be eligible for that use")
	}
	if source.EligibleFor(UseTraining) || source.EligibleForModelUse() {
		t.Fatal("M7 pedagogical source must not become training-eligible")
	}

	withoutProviderInput := source
	withoutProviderInput.AllowedUses = []SourceUse{UseLocalStorage, UseReference}
	if withoutProviderInput.EligibleFor(UseProviderInput) {
		t.Fatal("reference-only M7 source must not be eligible as provider input")
	}
}

func TestClearedSourceRequiresCompleteRightsEvidence(t *testing.T) {
	base := clearedSource("source-a", "https://example.test/a", "rev-a", strings.Repeat("a", 64),
		UseLocalStorage, UseTraining)
	tests := []struct {
		name   string
		mutate func(*SourceVersion)
	}{
		{name: "item locator", mutate: func(source *SourceVersion) { source.ItemLocator = "" }},
		{name: "rights holder", mutate: func(source *SourceVersion) { source.AuthorOrHolder = "" }},
		{name: "license", mutate: func(source *SourceVersion) { source.License = "" }},
		{name: "license terms URL", mutate: func(source *SourceVersion) { source.LicenseTermsURL = "http://example.test/license" }},
		{name: "terms note", mutate: func(source *SourceVersion) { source.TermsNote = "" }},
		{name: "attribution", mutate: func(source *SourceVersion) { source.Attribution = "" }},
		{name: "reviewer", mutate: func(source *SourceVersion) { source.RightsReviewerID = "" }},
		{name: "review timestamp", mutate: func(source *SourceVersion) { source.RightsReviewedAt = time.Time{} }},
		{name: "evidence ID", mutate: func(source *SourceVersion) { source.RightsEvidenceID = "" }},
		{name: "allowed uses", mutate: func(source *SourceVersion) { source.AllowedUses = nil }},
		{name: "local storage permission", mutate: func(source *SourceVersion) { source.AllowedUses = []SourceUse{UseTraining} }},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			source := base
			source.AllowedUses = append([]SourceUse(nil), base.AllowedUses...)
			test.mutate(&source)
			if err := source.Validate(); err == nil {
				t.Fatalf("SourceVersion.Validate() with missing %s = nil, want refusal", test.name)
			}
		})
	}
}

func TestSourceUsesRejectUnknownAndDuplicatePermissions(t *testing.T) {
	for _, test := range []struct {
		name string
		uses []SourceUse
	}{
		{name: "unknown", uses: []SourceUse{UseLocalStorage, SourceUse("COPY_EVERYTHING")}},
		{name: "duplicate", uses: []SourceUse{UseLocalStorage, UseTraining, UseTraining}},
	} {
		t.Run(test.name, func(t *testing.T) {
			source := clearedSource("source-a", "https://example.test/a", "rev-a", strings.Repeat("a", 64), test.uses...)
			if err := source.Validate(); err == nil {
				t.Fatalf("SourceVersion.Validate() with %s use permissions = nil, want refusal", test.name)
			}
		})
	}
}

func TestMathCaseAuthoredSourceHasExactLocalComputationScope(t *testing.T) {
	now := time.Date(2026, time.October, 25, 12, 0, 0, 0, time.UTC)
	source := SourceVersion{
		ID: "source-authored-case", URL: "local://mathcase-authored/case", ItemLocator: "exact local problem",
		Lane: LaneMathCaseAuthored, Revision: "owner-authored-1", RetrievedAt: now,
		ContentSHA256: strings.Repeat("a", 64), AuthorOrHolder: "MathCase owner",
		License: "OWNER_AUTHORIZATION_LOCAL_ONLY", TermsNote: "Only local storage and computation are authorized.",
		Attribution: "Original local exercise.", AllowedUses: []SourceUse{UseLocalStorage, UseLocalComputation},
		RightsReviewerID: "owner", RightsReviewedAt: now, RightsEvidenceID: "owner-rights-1", Rights: RightsCleared,
	}
	if err := source.Validate(); err != nil {
		t.Fatalf("owner-cleared exact local scope rejected: %v", err)
	}
	if !source.EligibleFor(UseLocalComputation) || source.EligibleFor(UseProviderInput) || source.EligibleFor(UseLocalProofAttempt) || source.EligibleFor(UseTraining) || source.EligibleFor(UsePublicExport) {
		t.Fatal("owner-cleared local exercise acquired a use outside local storage and computation")
	}
	for _, use := range []SourceUse{UseProviderInput, UseLocalProofAttempt, UseTraining, UsePublicExport} {
		broader := source
		broader.AllowedUses = append(append([]SourceUse(nil), source.AllowedUses...), use)
		if err := broader.Validate(); err == nil {
			t.Fatalf("MathCase-authored local source accepted extra permission %q", use)
		}
	}
}

func TestLocalArithmeticTaskRemainsUnassessedAndNonformal(t *testing.T) {
	now := time.Date(2026, time.October, 25, 12, 0, 0, 0, time.UTC)
	source := SourceVersion{
		ID: "source-authored-case", URL: "local://mathcase-authored/case", ItemLocator: "exact local problem",
		Lane: LaneMathCaseAuthored, Revision: "owner-authored-1", RetrievedAt: now,
		ContentSHA256: strings.Repeat("a", 64), AuthorOrHolder: "MathCase owner",
		License: "OWNER_AUTHORIZATION_LOCAL_ONLY", TermsNote: "Local computation only.", Attribution: "Original local exercise.",
		AllowedUses: []SourceUse{UseLocalStorage, UseLocalComputation}, RightsReviewerID: "owner", RightsReviewedAt: now,
		RightsEvidenceID: "owner-rights-1", Rights: RightsCleared,
	}
	problem := Problem{
		ID: "problem-arithmetic", Kind: ProblemKindLocalArithmeticTask,
		LocalComputationSpec: &domain.LocalComputationSpec{ToolID: domain.LocalComputationTwoCongruenceToolID, Inputs: map[string]string{"residue1": "1", "modulus1": "6", "residue2": "4", "modulus2": "9"}},
		Title:                "Two congruences", InformalStatement: "Find all solutions.", Status: StatusUnassessed, SourceIDs: []string{source.ID},
	}
	if _, err := NewSnapshot(now, []SourceVersion{source}, []Problem{problem}); err != nil {
		t.Fatalf("valid unassessed local arithmetic M0 task rejected: %v", err)
	}
	problem.Status = StatusProven
	if err := problem.Validate(); err == nil {
		t.Fatal("local arithmetic M0 task accepted a proven epistemic status")
	}
	problem.Status = StatusUnassessed
	problem.LeanStatement = "theorem invented : True"
	if err := problem.Validate(); err == nil {
		t.Fatal("local arithmetic M0 task accepted a Lean statement")
	}
}

func TestTrainingIsLimitedToApprovedLanesAndLicenses(t *testing.T) {
	tests := []struct {
		name    string
		lane    SourceLane
		license string
	}{
		{name: "Tao reference", lane: LaneTaoReference, license: "CC-BY-4.0"},
		{name: "OpenStax internal", lane: LaneOpenStaxInternal, license: "CC-BY-NC-SA-4.0"},
		{name: "MIT OCW internal", lane: LaneMITOCWInternal, license: "CC-BY-NC-SA-4.0"},
		{name: "arXiv exposition", lane: LaneArxivExposition, license: "CC-BY-4.0"},
		{name: "formal conjecture", lane: LaneFormalConjectures, license: "CC-BY-4.0"},
		{name: "Sun award record", lane: LaneSunPrizeAwards, license: "CC-BY-4.0"},
		{name: "M7 pedagogical anchor", lane: LaneM7PedagogicalAnchor, license: "Apache-2.0"},
		{name: "Mathlib with wrong license", lane: LaneMathlibProofPairs, license: "CC-BY-4.0"},
		{name: "bounty label with wrong license", lane: LaneHistoricalBountyValues, license: "Apache-2.0"},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			source := clearedSource("source-a", "https://example.test/a", "rev-a", strings.Repeat("a", 64),
				UseLocalStorage, UseTraining)
			source.Lane = test.lane
			source.License = test.license
			if err := source.Validate(); err == nil {
				t.Fatalf("SourceVersion.Validate() for %s with training permission = nil, want refusal", test.name)
			}
		})
	}
}

func TestInternalAndReferenceLanesRefusePublicCorpusExport(t *testing.T) {
	for _, test := range []struct {
		name string
		lane SourceLane
	}{
		{name: "OpenStax", lane: LaneOpenStaxInternal},
		{name: "MIT OCW", lane: LaneMITOCWInternal},
		{name: "Tao excerpt", lane: LaneTaoReference},
	} {
		t.Run(test.name, func(t *testing.T) {
			source := clearedSource("source-a", "https://example.test/a", "rev-a", strings.Repeat("a", 64),
				UseLocalStorage, UseReference, UsePublicExport)
			source.Lane = test.lane
			source.License = "CC-BY-NC-SA-4.0"
			source.LicenseTermsURL = "https://creativecommons.org/licenses/by-nc-sa/4.0/"
			if err := source.Validate(); err == nil {
				t.Fatalf("SourceVersion.Validate() for %s public corpus export = nil, want refusal", test.name)
			}
		})
	}
}

func TestNewSnapshotCanonicalizesAllowedUses(t *testing.T) {
	now := time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC)
	source := clearedSource("source-a", "https://example.test/a", "rev-a", strings.Repeat("a", 64),
		UseTraining, UsePublicExport, UseLocalProofAttempt, UseLocalStorage)
	source.RetrievedAt = now
	snapshot, err := NewSnapshot(now, []SourceVersion{source}, nil)
	if err != nil {
		t.Fatalf("NewSnapshot() error = %v, want valid cleared source", err)
	}
	got := snapshot.Sources[0].AllowedUses
	want := []SourceUse{UseLocalProofAttempt, UseLocalStorage, UsePublicExport, UseTraining}
	if len(got) != len(want) {
		t.Fatalf("NewSnapshot() allowed uses = %v, want %v", got, want)
	}
	for index := range want {
		if got[index] != want[index] {
			t.Fatalf("NewSnapshot() allowed uses = %v, want %v", got, want)
		}
	}
}
