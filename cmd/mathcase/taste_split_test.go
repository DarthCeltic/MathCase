package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/taste"
)

func tasteSplitFixture(t *testing.T) (catalog.Snapshot, taste.MathlibProofPairDataset, []byte, map[string][]byte) {
	t.Helper()
	now := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	sourceBytes := []byte("Mathlib source fixture\nby\n  simpa [Nat.add_comm]\n")
	source := catalog.SourceVersion{
		ID:               "mathlib-main",
		URL:              "https://github.com/leanprover-community/mathlib4",
		ItemLocator:      "Mathlib/Algebra/Group/Basic.lean",
		Lane:             catalog.LaneMathlibProofPairs,
		Revision:         "revision-test",
		RetrievedAt:      now,
		ContentSHA256:    testSHA256Bytes(sourceBytes),
		AuthorOrHolder:   "Mathlib contributors",
		License:          "Apache-2.0",
		LicenseTermsURL:  "https://www.apache.org/licenses/LICENSE-2.0",
		TermsNote:        "Test fixture for the approved Mathlib training lane.",
		Attribution:      "Mathlib contributors, test fixture.",
		AllowedUses:      []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseTraining},
		RightsReviewerID: "reviewer-test",
		RightsReviewedAt: now.Add(time.Hour),
		RightsEvidenceID: "rights-test",
		Rights:           catalog.RightsCleared,
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, nil)
	if err != nil {
		t.Fatalf("NewSnapshot() error = %v", err)
	}
	evidenceFiles := map[string][]byte{}
	makePair := func(id, theorem, group string) taste.MathlibProofPair {
		before := "by\n  simpa [Nat.add_comm]"
		after := "by\n  simp [Nat.add_comm]"
		beforeTheorem := theorem + "_before"
		afterTheorem := theorem + "_after"
		replaySource := []byte("theorem " + beforeTheorem + " : True := " + before + "\n" + "theorem " + afterTheorem + " : True := " + after + "\n")
		leanOutput := []byte("'" + beforeTheorem + "' does not depend on any axioms\n'" + afterTheorem + "' does not depend on any axioms\n")
		pair := taste.MathlibProofPair{
			PairID:                   id,
			TheoremKey:               theorem,
			LeakageGroupID:           group,
			SourceID:                 source.ID,
			SourceSHA256:             source.ContentSHA256,
			CatalogSnapshotSHA256:    snapshot.ContentSHA256,
			BeforeProof:              before,
			BeforeProofSHA256:        testSHA256(before),
			AfterProof:               after,
			AfterProofSHA256:         testSHA256(after),
			Simplifier:               "Lean simp",
			SimplifierVersion:        "Lean 4.33.1",
			SimplificationEvidenceID: "receipt-" + id,
		}
		receipt := taste.MathlibSimplificationEvidence{
			SchemaVersion:          "mathcase-taste-simplification-evidence-v1",
			EvidenceID:             pair.SimplificationEvidenceID,
			PairID:                 pair.PairID,
			TheoremKey:             pair.TheoremKey,
			SourceID:               pair.SourceID,
			SourcePath:             source.ItemLocator,
			SourceRevision:         source.Revision,
			SourceSHA256:           source.ContentSHA256,
			CatalogSnapshotSHA256:  snapshot.ContentSHA256,
			BeforeProofSHA256:      pair.BeforeProofSHA256,
			AfterProofSHA256:       pair.AfterProofSHA256,
			Simplifier:             pair.Simplifier,
			SimplifierVersion:      pair.SimplifierVersion,
			BeforeTheorem:          beforeTheorem,
			AfterTheorem:           afterTheorem,
			BeforeAxiomOutput:      "'" + beforeTheorem + "' does not depend on any axioms",
			AfterAxiomOutput:       "'" + afterTheorem + "' does not depend on any axioms",
			BeforeAxioms:           []string{},
			AfterAxioms:            []string{},
			AllowedAxioms:          []string{"Classical.choice", "Quot.sound", "propext"},
			ReplaySourcePath:       "replay/" + pair.SimplificationEvidenceID + ".lean",
			BeforeStatus:           "PASSED",
			AfterStatus:            "PASSED",
			BeforeAxiomAuditStatus: "PASSED",
			AfterAxiomAuditStatus:  "PASSED",
			ReplaySourceSHA256:     testSHA256Bytes(replaySource),
			LeanOutputPath:         "output/" + pair.SimplificationEvidenceID + ".txt",
			LeanOutputSHA256:       testSHA256Bytes(leanOutput),
			LeanVersion:            "Lean (version 4.33.1)",
			Command:                "lake env lean replay.lean",
			RecordedAt:             now,
		}
		encodedReceipt, err := json.MarshalIndent(receipt, "", "  ")
		if err != nil {
			t.Fatalf("Marshal simplification receipt: %v", err)
		}
		encodedReceipt = append(encodedReceipt, '\n')
		pair.SimplificationEvidenceSHA256 = testSHA256Bytes(encodedReceipt)
		evidenceFiles[pair.SimplificationEvidenceID+".json"] = encodedReceipt
		evidenceFiles[receipt.ReplaySourcePath] = replaySource
		evidenceFiles[receipt.LeanOutputPath] = leanOutput
		return pair
	}
	dataset := taste.MathlibProofPairDataset{
		SchemaVersion:         "mathcase-taste-proof-pairs-v1",
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		Pairs: []taste.MathlibProofPair{
			makePair("pair-a", "Mathlib.Example.alpha", "family-alpha"),
			makePair("pair-b", "Mathlib.Example.beta", "family-beta"),
		},
	}
	return snapshot, dataset, sourceBytes, evidenceFiles
}

func testSHA256(value string) string {
	sum := sha256.Sum256([]byte(value))
	return hex.EncodeToString(sum[:])
}

func testSHA256Bytes(value []byte) string {
	sum := sha256.Sum256(value)
	return hex.EncodeToString(sum[:])
}

func writeTasteEvidenceRoots(t *testing.T, snapshot catalog.Snapshot, sourceBytes []byte, evidenceFiles map[string][]byte) (string, string) {
	t.Helper()
	root := t.TempDir()
	sourceRoot := filepath.Join(root, "mathlib")
	evidenceRoot := filepath.Join(root, "evidence")
	if err := os.MkdirAll(filepath.Join(sourceRoot, filepath.Dir(snapshot.Sources[0].ItemLocator)), 0o700); err != nil {
		t.Fatal(err)
	}
	if err := os.MkdirAll(evidenceRoot, 0o700); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(sourceRoot, filepath.FromSlash(snapshot.Sources[0].ItemLocator)), sourceBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	for relativePath, data := range evidenceFiles {
		path := filepath.Join(evidenceRoot, filepath.FromSlash(relativePath))
		if err := os.MkdirAll(filepath.Dir(path), 0o700); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(path, data, 0o600); err != nil {
			t.Fatal(err)
		}
	}
	return sourceRoot, evidenceRoot
}

func TestTasteSplitCreatesDigestBoundManifestWithoutCopyingProofText(t *testing.T) {
	snapshot, dataset, sourceBytes, evidenceFiles := tasteSplitFixture(t)
	root := t.TempDir()
	snapshotPath := filepath.Join(root, "catalog.snapshot.json")
	pairsPath := filepath.Join(root, "proof-pairs.json")
	outputPath := filepath.Join(root, "split.json")
	snapshotBytes, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	pairBytes, err := json.Marshal(dataset)
	if err != nil {
		t.Fatal(err)
	}
	for path, data := range map[string][]byte{snapshotPath: snapshotBytes, pairsPath: pairBytes} {
		if err := os.WriteFile(path, data, 0o600); err != nil {
			t.Fatal(err)
		}
	}
	sourceRoot, evidenceRoot := writeTasteEvidenceRoots(t, snapshot, sourceBytes, evidenceFiles)
	args := []string{"taste-split", "--snapshot", snapshotPath, "--pairs", pairsPath, "--source-root", sourceRoot, "--evidence-root", evidenceRoot, "--output", outputPath, "--seed", "taste-v1", "--training-percent", "50"}
	var stdout, stderr bytes.Buffer
	if code := run(args, &stdout, &stderr); code != 0 {
		t.Fatalf("taste-split exit code = %d, stderr=%q", code, stderr.String())
	}
	var output tasteSplitOutput
	if err := json.Unmarshal(stdout.Bytes(), &output); err != nil {
		t.Fatalf("decode taste-split output %q: %v", stdout.String(), err)
	}
	if output.Status != "CREATED" || output.CatalogSnapshotSHA256 != snapshot.ContentSHA256 || output.TrainingPairCount != 1 || output.EvaluationPairCount != 1 {
		t.Fatalf("taste-split summary = %#v, want created exact-snapshot split with both partitions", output)
	}
	if err := output.Manifest.Validate(snapshot, dataset.Pairs); err != nil {
		t.Fatalf("created manifest validation error = %v", err)
	}
	if strings.Contains(stdout.String(), dataset.Pairs[0].BeforeProof) || strings.Contains(stdout.String(), dataset.Pairs[0].AfterProof) {
		t.Fatal("taste-split summary copied proof text instead of emitting a metadata-only manifest")
	}
	original, err := os.ReadFile(outputPath)
	if err != nil {
		t.Fatal(err)
	}
	stdout.Reset()
	stderr.Reset()
	if code := run(args, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("taste-split overwrite exit=%d stdout=%q stderr=%q; want no-overwrite refusal", code, stdout.String(), stderr.String())
	}
	after, err := os.ReadFile(outputPath)
	if err != nil {
		t.Fatal(err)
	}
	if !bytes.Equal(original, after) {
		t.Fatal("taste-split changed an existing manifest after refusing overwrite")
	}
}

func TestTasteSplitRejectsUnknownDatasetFieldsAndHelpIsReadOnly(t *testing.T) {
	var stdout, stderr bytes.Buffer
	if code := run([]string{"taste-split", "--help"}, &stdout, &stderr); code != 0 {
		t.Fatalf("taste-split --help exit code = %d, want 0; stderr=%s", code, stderr.String())
	}
	if stdout.Len() != 0 || !strings.Contains(stderr.String(), "-pairs") || !strings.Contains(stderr.String(), "-source-root") || !strings.Contains(stderr.String(), "-evidence-root") || !strings.Contains(stderr.String(), "-training-percent") {
		t.Fatalf("taste-split --help output = stdout %q, stderr %q; want documented pair and split options", stdout.String(), stderr.String())
	}
	snapshot, dataset, sourceBytes, evidenceFiles := tasteSplitFixture(t)
	root := t.TempDir()
	snapshotPath := filepath.Join(root, "catalog.snapshot.json")
	pairsPath := filepath.Join(root, "proof-pairs.json")
	outputPath := filepath.Join(root, "split.json")
	snapshotBytes, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	pairBytes, err := json.Marshal(dataset)
	if err != nil {
		t.Fatal(err)
	}
	pairBytes = []byte(strings.TrimSuffix(string(pairBytes), "}") + `,"unexpected":"value"}`)
	if err := os.WriteFile(snapshotPath, snapshotBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(pairsPath, pairBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	sourceRoot, evidenceRoot := writeTasteEvidenceRoots(t, snapshot, sourceBytes, evidenceFiles)
	stdout.Reset()
	stderr.Reset()
	if code := run([]string{"taste-split", "--snapshot", snapshotPath, "--pairs", pairsPath, "--source-root", sourceRoot, "--evidence-root", evidenceRoot, "--output", outputPath, "--seed", "taste-v1"}, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("taste-split invalid dataset exit=%d stdout=%q stderr=%q; want strict-field refusal", code, stdout.String(), stderr.String())
	}
	if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
		t.Fatalf("taste-split created output after invalid dataset; stat error=%v", err)
	}
}
