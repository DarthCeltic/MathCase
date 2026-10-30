package main

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/bridge"
	"github.com/DarthCeltic/MathCase/internal/catalog"
)

func writeRetrievalFixture(t *testing.T, allowedUses []catalog.SourceUse) (string, string, string, string, catalog.Snapshot) {
	t.Helper()
	root := t.TempDir()
	proofRoot := filepath.Join(root, "proof-root")
	if err := os.MkdirAll(proofRoot, 0o700); err != nil {
		t.Fatal(err)
	}
	proof := []byte("by\n  exact Nat.zero_add _\n")
	proofDigest := sha256.Sum256(proof)
	if err := os.WriteFile(filepath.Join(proofRoot, "group.lean"), proof, 0o600); err != nil {
		t.Fatal(err)
	}
	sourceRoot := filepath.Join(root, "source-root")
	if err := os.MkdirAll(sourceRoot, 0o700); err != nil {
		t.Fatal(err)
	}
	sourceBytes := []byte("theorem Nat.zero_add (n : Nat) : 0 + n = n := by simp\n")
	sourceDigest := sha256.Sum256(sourceBytes)
	if err := os.WriteFile(filepath.Join(sourceRoot, "Group.lean"), sourceBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	now := time.Date(2026, 10, 20, 12, 0, 0, 0, time.UTC)
	source := catalog.SourceVersion{
		ID: "source-proof", URL: "https://example.test/mathlib/group.lean", ItemLocator: "Group.lean",
		Lane: catalog.LaneMathlibProofPairs, Revision: "revision-1", RetrievedAt: now,
		ContentSHA256:  hex.EncodeToString(sourceDigest[:]),
		AuthorOrHolder: "Mathlib contributors", License: "Apache-2.0", LicenseTermsURL: "https://www.apache.org/licenses/LICENSE-2.0",
		TermsNote: "Fixture rights are explicit for this test only.", Attribution: "Mathlib contributors, Apache-2.0.",
		AllowedUses: append([]catalog.SourceUse(nil), allowedUses...), RightsReviewerID: "reviewer",
		RightsReviewedAt: now, RightsEvidenceID: "rights-proof", Rights: catalog.RightsCleared,
	}
	problems := []catalog.Problem{
		{ID: "problem-open", Title: "Group identity query", InformalStatement: "A sourced target statement.", LeanStatement: "True", Status: catalog.StatusConjectured, DomainTags: []string{"algebra", "group"}, SourceIDs: []string{source.ID}},
		{ID: "theorem-proven", Title: "Group identity precedent", InformalStatement: "A proven precedent.", LeanStatement: "forall (n : Nat), 0 + n = n", LeanDeclaration: &catalog.LeanDeclaration{Name: "Nat.zero_add", SourceID: source.ID}, Status: catalog.StatusProven, DomainTags: []string{"group", "identity"}, SourceIDs: []string{source.ID}},
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, problems)
	if err != nil {
		t.Fatal(err)
	}
	snapshotPath := filepath.Join(root, "catalog.snapshot.json")
	snapshotBytes, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(snapshotPath, snapshotBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	request := retrievalRequestFile{
		SchemaVersion: "mathcase-retrieval-request-v2",
		Query: bridge.Query{
			ProblemID: problems[0].ID, HomeDomain: "algebra", Tags: []string{"algebra", "group"},
			SourceSnapshotSHA256: snapshot.ContentSHA256, Limit: 4,
		},
		Corpus: []bridge.Skeleton{{
			TheoremID: problems[1].ID, LeanTheoremName: "Nat.zero_add", Domain: "group",
			Tags: []string{"group", "identity"}, ProofRef: "group.lean", ProofSHA256: hex.EncodeToString(proofDigest[:]),
			SourceIDs: []string{source.ID}, SourceSnapshotSHA256: snapshot.ContentSHA256,
		}},
	}
	requestBytes, err := json.Marshal(request)
	if err != nil {
		t.Fatal(err)
	}
	requestPath := filepath.Join(root, "retrieval.request.json")
	if err := os.WriteFile(requestPath, requestBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	return snapshotPath, requestPath, proofRoot, filepath.Join(root, "retrieval.output.json"), snapshot
}
