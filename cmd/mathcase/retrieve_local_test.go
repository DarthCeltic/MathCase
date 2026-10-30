package main

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/bridge"
	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestLoadValidatedRetrievalHintsReopensRightsAndProofBindings(t *testing.T) {
	root := t.TempDir()
	proofRoot := filepath.Join(root, "proofs")
	if err := os.MkdirAll(proofRoot, 0o700); err != nil {
		t.Fatal(err)
	}
	proofBytes := []byte("by\n  exact Nat.zero_add _\n")
	proofPath := filepath.Join(proofRoot, "group.lean")
	if err := os.WriteFile(proofPath, proofBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	proofDigest := sha256.Sum256(proofBytes)
	sourceBytes := []byte("theorem Nat.zero_add (n : Nat) : 0 + n = n := by simp\n")
	sourceDigest := sha256.Sum256(sourceBytes)
	sourceRoot := filepath.Join(root, "sources")
	if err := os.MkdirAll(sourceRoot, 0o700); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(sourceRoot, "candidate.lean"), sourceBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	now := time.Date(2026, 10, 25, 12, 0, 0, 0, time.UTC)
	source := func(id string, marker byte) catalog.SourceVersion {
		locator := "exact theorem source " + id
		contentDigest := strings.Repeat(string(marker), 64)
		if id == "source-candidate" {
			locator = "candidate.lean"
			contentDigest = hex.EncodeToString(sourceDigest[:])
		}
		return catalog.SourceVersion{
			ID: id, URL: "https://example.test/" + id, ItemLocator: locator,
			Lane: catalog.LaneMathlibProofPairs, Revision: "revision-1", RetrievedAt: now,
			ContentSHA256: contentDigest, AuthorOrHolder: "Mathlib contributors",
			License: "Apache-2.0", LicenseTermsURL: "https://www.apache.org/licenses/LICENSE-2.0",
			TermsNote: "Reviewed for local indexing.", Attribution: "Mathlib contributors, Apache-2.0.",
			AllowedUses:      []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseIndex},
			RightsReviewerID: "reviewer", RightsReviewedAt: now, RightsEvidenceID: "rights-" + id,
			Rights: catalog.RightsCleared,
		}
	}
	queryProblem := catalog.Problem{
		ID: "query-problem", Title: "Group identity", InformalStatement: "A sourced target statement.",
		LeanStatement: "True", Status: catalog.StatusConjectured, DomainTags: []string{"algebra", "group"},
		SourceIDs: []string{"source-query"},
	}
	candidateProblem := catalog.Problem{
		ID: "candidate-problem", Title: "Group law", InformalStatement: "A proven precedent.",
		LeanStatement: "forall (n : Nat), 0 + n = n", LeanDeclaration: &catalog.LeanDeclaration{Name: "Nat.zero_add", SourceID: "source-candidate"},
		Status: catalog.StatusProven, DomainTags: []string{"group", "identity"},
		SourceIDs: []string{"source-candidate"},
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source("source-query", 'a'), source("source-candidate", 'b')}, []catalog.Problem{queryProblem, candidateProblem})
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
	query := bridge.Query{ProblemID: queryProblem.ID, HomeDomain: "algebra", Tags: []string{"algebra", "group"}, SourceSnapshotSHA256: snapshot.ContentSHA256, Limit: 4}
	skeleton := bridge.Skeleton{
		TheoremID: candidateProblem.ID, LeanTheoremName: "Nat.zero_add", Domain: "group",
		Tags: []string{"group", "identity"}, ProofRef: "group.lean", ProofSHA256: hex.EncodeToString(proofDigest[:]),
		SourceIDs: candidateProblem.SourceIDs, SourceSnapshotSHA256: snapshot.ContentSHA256,
	}
	proofStore, err := bridge.NewLocalProofStore(proofRoot)
	if err != nil {
		t.Fatal(err)
	}
	sourceStore, err := bridge.NewLocalProofStore(sourceRoot)
	if err != nil {
		t.Fatal(err)
	}
	matches, err := bridge.RetrieveWithSources(query, []bridge.Skeleton{skeleton}, snapshot, proofStore, sourceStore)
	if err != nil {
		t.Fatal(err)
	}
	output := retrievalOutputFile{
		SchemaVersion: "mathcase-retrieval-output-v2", Status: "COMPLETED", Query: query,
		CatalogSnapshotSHA256: snapshot.ContentSHA256, MatchCount: len(matches), Matches: matches,
	}
	outputBytes, err := json.MarshalIndent(output, "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	outputPath := filepath.Join(root, "retrieval.output.json")
	if err := os.WriteFile(outputPath, append(outputBytes, '\n'), 0o600); err != nil {
		t.Fatal(err)
	}
	target := domain.MathProblem{ID: queryProblem.ID, Statement: queryProblem.InformalStatement, LeanStatement: queryProblem.LeanStatement}
	hints, digest, err := loadValidatedRetrievalHints(outputPath, snapshotPath, proofRoot, sourceRoot, target)
	if err != nil {
		t.Fatal(err)
	}
	if len(hints) != 1 || hints[0] != "Nat.zero_add" || len(digest) != 64 {
		t.Fatalf("validated retrieval hints = %v, digest %q", hints, digest)
	}

	if err := json.Unmarshal(outputBytes, &output); err != nil {
		t.Fatal(err)
	}
	output.Matches[0].LeanTheoremName = "Nat.add_assoc"
	tamperedName, err := json.Marshal(output)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(outputPath, tamperedName, 0o600); err != nil {
		t.Fatal(err)
	}
	if _, _, err := loadValidatedRetrievalHints(outputPath, snapshotPath, proofRoot, sourceRoot, target); err == nil || !strings.Contains(err.Error(), "declaration name is not bound") {
		t.Fatalf("valid but substituted theorem name was accepted: %v", err)
	}

	output.Matches[0].LeanTheoremName = "Nat.zero_add"
	output.Matches[0].TheoremID = queryProblem.ID
	targetAsHint, err := json.Marshal(output)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(outputPath, targetAsHint, 0o600); err != nil {
		t.Fatal(err)
	}
	if _, _, err := loadValidatedRetrievalHints(outputPath, snapshotPath, proofRoot, sourceRoot, target); err == nil || !strings.Contains(err.Error(), "cannot appear as a retrieval hint") {
		t.Fatalf("query target was accepted as its own retrieval hint: %v", err)
	}
	if err := os.WriteFile(outputPath, append(outputBytes, '\n'), 0o600); err != nil {
		t.Fatal(err)
	}

	if err := os.WriteFile(proofPath, []byte("changed proof\n"), 0o600); err != nil {
		t.Fatal(err)
	}
	if _, _, err := loadValidatedRetrievalHints(outputPath, snapshotPath, proofRoot, sourceRoot, target); err == nil || !strings.Contains(err.Error(), "proof content digest") {
		t.Fatalf("changed retrieved proof was accepted: %v", err)
	}
}
