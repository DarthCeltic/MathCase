package bridge

import (
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
)

type memoryProofStore map[string][]byte

func (store memoryProofStore) ReadProof(reference string) ([]byte, error) {
	data, exists := store[reference]
	if !exists {
		return nil, errors.New("proof reference not found")
	}
	return append([]byte(nil), data...), nil
}

type memorySourceStore map[string][]byte

func (store memorySourceStore) ReadSource(reference string) ([]byte, error) {
	data, exists := store[reference]
	if !exists {
		return nil, errors.New("source reference not found")
	}
	return append([]byte(nil), data...), nil
}

func proofBytesFor(reference string) []byte {
	return []byte("source-backed test proof: " + reference + "\n")
}

func proofDigestFor(reference string) string {
	digest := sha256.Sum256(proofBytesFor(reference))
	return hex.EncodeToString(digest[:])
}

func proofStoreFor(corpus []Skeleton) memoryProofStore {
	store := make(memoryProofStore, len(corpus))
	for _, skeleton := range corpus {
		store[skeleton.ProofRef] = proofBytesFor(skeleton.ProofRef)
	}
	return store
}

func indexedSource(id string, digestByte byte) catalog.SourceVersion {
	now := time.Date(2026, 10, 20, 12, 0, 0, 0, time.UTC)
	return catalog.SourceVersion{
		ID: id, URL: "https://example.test/" + id, ItemLocator: "proof source " + id,
		Lane: catalog.LaneMathlibProofPairs, Revision: "revision-1", RetrievedAt: now,
		ContentSHA256:  strings.Repeat(string(digestByte), 64),
		AuthorOrHolder: "Mathlib contributors", License: "Apache-2.0",
		LicenseTermsURL:  "https://www.apache.org/licenses/LICENSE-2.0",
		TermsNote:        "Apache-2.0 terms reviewed for local indexing.",
		Attribution:      "Mathlib contributors, Apache-2.0.",
		AllowedUses:      []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseIndex},
		RightsReviewerID: "reviewer", RightsReviewedAt: now,
		RightsEvidenceID: "rights-" + id, Rights: catalog.RightsCleared,
	}
}

func referenceOnlySource(id string, digestByte byte) catalog.SourceVersion {
	now := time.Date(2026, 10, 20, 12, 0, 0, 0, time.UTC)
	return catalog.SourceVersion{
		ID: id, URL: "https://arxiv.org/abs/2601.00001", ItemLocator: "paper version 1",
		Lane: catalog.LaneArxivExposition, Revision: "v1", RetrievedAt: now,
		ContentSHA256:  strings.Repeat(string(digestByte), 64),
		AuthorOrHolder: "Paper authors", License: "CC-BY-4.0",
		LicenseTermsURL:  "https://creativecommons.org/licenses/by/4.0/",
		TermsNote:        "Cleared for local storage and human reference only.",
		Attribution:      "Paper authors, CC-BY-4.0.",
		AllowedUses:      []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseReference},
		RightsReviewerID: "reviewer", RightsReviewedAt: now,
		RightsEvidenceID: "rights-" + id, Rights: catalog.RightsCleared,
	}
}

func problemRecord(id string, status catalog.ProblemStatus, sourceID string, tags ...string) catalog.Problem {
	return catalog.Problem{
		ID: id, Title: id, InformalStatement: "A sourced test statement.",
		Status: status, DomainTags: tags, SourceIDs: []string{sourceID},
	}
}

func snapshotForTest(t *testing.T, sources []catalog.SourceVersion, problems []catalog.Problem) catalog.Snapshot {
	t.Helper()
	snapshot, err := catalog.NewSnapshot(time.Date(2026, 10, 20, 12, 0, 0, 0, time.UTC), sources, problems)
	if err != nil {
		t.Fatalf("NewSnapshot() error = %v", err)
	}
	return snapshot
}

func retrievalFixture(t *testing.T) (Query, []Skeleton, catalog.Snapshot) {
	t.Helper()
	sources := []catalog.SourceVersion{
		indexedSource("source-open", 'a'),
		indexedSource("source-same", 'b'),
		indexedSource("source-exact", 'c'),
		indexedSource("source-partial", 'd'),
		indexedSource("source-none", 'e'),
	}
	problems := []catalog.Problem{
		problemRecord("problem-open", catalog.StatusConjectured, "source-open", "number theory", "induction", "recurrence"),
		problemRecord("same-domain", catalog.StatusProven, "source-same", "number theory", "induction", "recurrence"),
		problemRecord("exact-match", catalog.StatusProven, "source-exact", "algebra", "induction", "recurrence"),
		problemRecord("partial-match", catalog.StatusProven, "source-partial", "combinatorics", "induction", "counting"),
		problemRecord("no-match", catalog.StatusProven, "source-none", "analysis", "compactness"),
	}
	snapshot := snapshotForTest(t, sources, problems)
	corpus := []Skeleton{
		{TheoremID: "same-domain", Domain: "Number Theory", Tags: []string{"induction", "recurrence"}, ProofRef: "proof-a", ProofSHA256: proofDigestFor("proof-a"), SourceIDs: []string{"source-same"}, SourceSnapshotSHA256: snapshot.ContentSHA256},
		{TheoremID: "exact-match", Domain: "algebra", Tags: []string{"induction", "recurrence"}, ProofRef: "proof-b", ProofSHA256: proofDigestFor("proof-b"), SourceIDs: []string{"source-exact"}, SourceSnapshotSHA256: snapshot.ContentSHA256},
		{TheoremID: "partial-match", Domain: "combinatorics", Tags: []string{"induction", "counting"}, ProofRef: "proof-c", ProofSHA256: proofDigestFor("proof-c"), SourceIDs: []string{"source-partial"}, SourceSnapshotSHA256: snapshot.ContentSHA256},
		{TheoremID: "no-match", Domain: "analysis", Tags: []string{"compactness"}, ProofRef: "proof-d", ProofSHA256: proofDigestFor("proof-d"), SourceIDs: []string{"source-none"}, SourceSnapshotSHA256: snapshot.ContentSHA256},
	}
	query := Query{
		ProblemID: "problem-open", HomeDomain: "number theory", Tags: []string{"induction", "recurrence"},
		SourceSnapshotSHA256: snapshot.ContentSHA256, Limit: 3,
	}
	return query, corpus, snapshot
}

func TestRetrieveExcludesHomeDomainAndReturnsRankedReasons(t *testing.T) {
	query, corpus, snapshot := retrievalFixture(t)
	matches, err := Retrieve(query, corpus, snapshot, proofStoreFor(corpus))
	if err != nil {
		t.Fatal(err)
	}
	if len(matches) != 2 || matches[0].TheoremID != "exact-match" || matches[1].TheoremID != "partial-match" {
		t.Fatalf("unexpected retrieval results: %#v", matches)
	}
	if !strings.Contains(matches[0].Rationale, "induction, recurrence") {
		t.Fatalf("missing shared-tag rationale: %q", matches[0].Rationale)
	}
	if matches[0].Snapshot != snapshot.ContentSHA256 || len(matches[0].SourceIDs) != 1 || matches[0].SourceIDs[0] != "source-exact" || matches[0].ProofSHA256 != corpus[1].ProofSHA256 {
		t.Fatalf("match lost M0 provenance: %#v", matches[0])
	}
}

func TestRetrieveRequiresOneFrozenSnapshot(t *testing.T) {
	query, corpus, snapshot := retrievalFixture(t)
	corpus[0].SourceSnapshotSHA256 = strings.Repeat("f", 64)
	if _, err := Retrieve(query, corpus, snapshot, proofStoreFor(corpus)); err == nil || !strings.Contains(err.Error(), "different source snapshot") {
		t.Fatalf("expected mixed-snapshot refusal, got %v", err)
	}
}

func TestRetrieveRequiresCanonicalSnapshotDigest(t *testing.T) {
	query, _, _ := retrievalFixture(t)
	query.SourceSnapshotSHA256 = "not-a-hash"
	if _, err := Retrieve(query, nil, catalog.Snapshot{}, nil); err == nil || !strings.Contains(err.Error(), "canonical source snapshot") {
		t.Fatalf("Retrieve() with a malformed snapshot digest error = %v, want canonical digest refusal", err)
	}
}

func TestRetrieveRefusesSourcesWithoutIndexRights(t *testing.T) {
	sources := []catalog.SourceVersion{
		indexedSource("source-open", 'a'),
		referenceOnlySource("source-reference", 'b'),
	}
	problems := []catalog.Problem{
		problemRecord("problem-open", catalog.StatusConjectured, "source-open", "number theory", "induction"),
		problemRecord("theorem-reference", catalog.StatusProven, "source-reference", "algebra", "induction"),
	}
	snapshot := snapshotForTest(t, sources, problems)
	query := Query{ProblemID: "problem-open", HomeDomain: "number theory", Tags: []string{"induction"}, SourceSnapshotSHA256: snapshot.ContentSHA256, Limit: 5}
	corpus := []Skeleton{{
		TheoremID: "theorem-reference", Domain: "algebra", Tags: []string{"induction"},
		ProofRef: "reference-only-proof", ProofSHA256: proofDigestFor("reference-only-proof"), SourceIDs: []string{"source-reference"}, SourceSnapshotSHA256: snapshot.ContentSHA256,
	}}
	if _, err := Retrieve(query, corpus, snapshot, proofStoreFor(corpus)); err == nil || !strings.Contains(err.Error(), "not cleared for INDEX use") {
		t.Fatalf("reference-only source entered retrieval, error = %v", err)
	}
}

func TestRetrieveRejectsInventedTagsAndUnprovenTheorems(t *testing.T) {
	query, corpus, snapshot := retrievalFixture(t)
	query.Tags = []string{"invented"}
	if _, err := Retrieve(query, corpus, snapshot, proofStoreFor(corpus)); err == nil || !strings.Contains(err.Error(), "must come from the M0 problem record") {
		t.Fatalf("invented query tag was accepted, error = %v", err)
	}

	query, corpus, snapshot = retrievalFixture(t)
	for index := range snapshot.Problems {
		if snapshot.Problems[index].ID == "exact-match" {
			snapshot.Problems[index].Status = catalog.StatusConjectured
		}
	}
	// Rebuild the digest to create a valid snapshot with a changed epistemic status.
	snapshot = snapshotForTest(t, snapshot.Sources, snapshot.Problems)
	query.SourceSnapshotSHA256 = snapshot.ContentSHA256
	for index := range corpus {
		corpus[index].SourceSnapshotSHA256 = snapshot.ContentSHA256
	}
	if _, err := Retrieve(query, corpus, snapshot, proofStoreFor(corpus)); err == nil || !strings.Contains(err.Error(), "not marked PROVEN") {
		t.Fatalf("unproven theorem was accepted, error = %v", err)
	}
}

func TestRetrieveChecksProofBytesBeforeReturningMatches(t *testing.T) {
	query, corpus, snapshot := retrievalFixture(t)
	proofs := proofStoreFor(corpus)
	proofs[corpus[1].ProofRef] = []byte("modified proof bytes\n")
	if _, err := Retrieve(query, corpus, snapshot, proofs); err == nil || !strings.Contains(err.Error(), "proof content digest does not match") {
		t.Fatalf("modified proof bytes were accepted, error = %v", err)
	}
}

func TestRetrieveRequiresCanonicalProofDigest(t *testing.T) {
	query, corpus, snapshot := retrievalFixture(t)
	corpus[0].ProofSHA256 = ""
	if _, err := Retrieve(query, corpus, snapshot, proofStoreFor(corpus)); err == nil || !strings.Contains(err.Error(), "canonical proof SHA-256") {
		t.Fatalf("Retrieve() without a proof digest error = %v, want refusal", err)
	}
}

func TestRetrieveCarriesOnlySafeLeanDeclarationHints(t *testing.T) {
	query, corpus, snapshot := retrievalFixture(t)
	sourceBytes := []byte("theorem Algebra.Group.mul_assoc (n : Nat) : n = n := rfl\n")
	sourceDigest := sha256.Sum256(sourceBytes)
	for index := range snapshot.Problems {
		if snapshot.Problems[index].ID == "exact-match" {
			snapshot.Problems[index].LeanStatement = "forall (n : Nat), n = n"
			snapshot.Problems[index].LeanDeclaration = &catalog.LeanDeclaration{Name: "Algebra.Group.mul_assoc", SourceID: "source-exact"}
		}
	}
	for index := range snapshot.Sources {
		if snapshot.Sources[index].ID == "source-exact" {
			snapshot.Sources[index].ItemLocator = "Exact.lean"
			snapshot.Sources[index].ContentSHA256 = hex.EncodeToString(sourceDigest[:])
		}
	}
	snapshot = snapshotForTest(t, snapshot.Sources, snapshot.Problems)
	query.SourceSnapshotSHA256 = snapshot.ContentSHA256
	for index := range corpus {
		corpus[index].SourceSnapshotSHA256 = snapshot.ContentSHA256
	}
	corpus[1].LeanTheoremName = "Algebra.Group.mul_assoc"
	sourceStore := memorySourceStore{"Exact.lean": sourceBytes}
	matches, err := RetrieveWithSources(query, corpus, snapshot, proofStoreFor(corpus), sourceStore)
	if err != nil {
		t.Fatal(err)
	}
	if len(matches) == 0 || matches[0].LeanTheoremName != "Algebra.Group.mul_assoc" || len(matches[0].Tags) == 0 {
		t.Fatalf("retrieval match lost its optional bounded solver hint or tags: %#v", matches)
	}
	corpus[1].LeanTheoremName = "by simp\nunsafeCast"
	if _, err := RetrieveWithSources(query, corpus, snapshot, proofStoreFor(corpus), sourceStore); err == nil || !strings.Contains(err.Error(), "qualified declaration name") {
		t.Fatalf("unsafe Lean tactic text was accepted as a declaration hint: %v", err)
	}

	// Rebinding both request and M0 metadata to a syntactically valid but absent
	// declaration must still fail against the unchanged pinned source bytes.
	corpus[1].LeanTheoremName = "Nat.add_assoc"
	for index := range snapshot.Problems {
		if snapshot.Problems[index].ID == "exact-match" {
			snapshot.Problems[index].LeanDeclaration.Name = "Nat.add_assoc"
		}
	}
	snapshot = snapshotForTest(t, snapshot.Sources, snapshot.Problems)
	query.SourceSnapshotSHA256 = snapshot.ContentSHA256
	for index := range corpus {
		corpus[index].SourceSnapshotSHA256 = snapshot.ContentSHA256
	}
	if _, err := RetrieveWithSources(query, corpus, snapshot, proofStoreFor(corpus), sourceStore); err == nil || !strings.Contains(err.Error(), "do not match its pinned source item") {
		t.Fatalf("valid M0/request theorem-name substitution was accepted without a matching source declaration: %v", err)
	}
}

func TestRetrieveRejectsQueryTargetAsHint(t *testing.T) {
	query, corpus, snapshot := retrievalFixture(t)
	corpus[0].TheoremID = query.ProblemID
	if _, err := Retrieve(query, corpus[:1], snapshot, proofStoreFor(corpus[:1])); err == nil || !strings.Contains(err.Error(), "cannot appear as a retrieval hint") {
		t.Fatalf("query target was accepted as a retrieval hint: %v", err)
	}
}

func TestRetrieveRequiresProofReaderForNonEmptyCorpus(t *testing.T) {
	query, corpus, snapshot := retrievalFixture(t)
	if _, err := Retrieve(query, corpus, snapshot, nil); err == nil || !strings.Contains(err.Error(), "proof reader is required") {
		t.Fatalf("Retrieve() without a proof reader error = %v, want refusal", err)
	}
}
