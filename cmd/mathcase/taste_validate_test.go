package main

import (
	"bytes"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/DarthCeltic/MathCase/internal/taste"
)

func TestTasteValidateChecksSourceAndReceiptBytesWithoutDeclaringTrainingReady(t *testing.T) {
	snapshot, dataset, sourceBytes, evidenceFiles := tasteSplitFixture(t)
	root := t.TempDir()
	snapshotPath := filepath.Join(root, "catalog.snapshot.json")
	pairsPath := filepath.Join(root, "proof-pairs.json")
	snapshotBytes, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	pairBytes, err := json.Marshal(dataset)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(snapshotPath, snapshotBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(pairsPath, pairBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	sourceRoot, evidenceRoot := writeTasteEvidenceRoots(t, snapshot, sourceBytes, evidenceFiles)
	args := []string{"taste-validate", "--snapshot", snapshotPath, "--pairs", pairsPath, "--source-root", sourceRoot, "--evidence-root", evidenceRoot}
	var stdout, stderr bytes.Buffer
	if code := run(args, &stdout, &stderr); code != 0 {
		t.Fatalf("taste-validate exit code = %d, stderr=%q", code, stderr.String())
	}
	var output tasteValidationOutput
	if err := json.Unmarshal(stdout.Bytes(), &output); err != nil {
		t.Fatalf("decode taste validation output %q: %v", stdout.String(), err)
	}
	if output.Status != "CONTENT_VALIDATED_EXECUTION_UNVERIFIED" || output.EvidenceClass != "HASH_AND_CLAIM_CONSISTENCY" || output.ExecutionStatus != "NOT_AUDITED" || output.PairCount != 2 || output.LeakageGroupCount != 2 || output.EvidenceCount != 2 || output.TrainingReady {
		t.Fatalf("taste validation output = %#v, want content-only validation with execution explicitly unaudited", output)
	}
	if !strings.Contains(output.TrainingReadinessNote, "does not launch Lean") || !strings.Contains(output.TrainingReadinessNote, "bounty labels") || !strings.Contains(output.TrainingReadinessNote, "frozen group split") {
		t.Fatalf("training-readiness note = %q, want execution, bounty, and split limitations", output.TrainingReadinessNote)
	}
}

func TestTasteValidateRejectsChangedReceiptBytes(t *testing.T) {
	snapshot, dataset, sourceBytes, evidenceFiles := tasteSplitFixture(t)
	root := t.TempDir()
	snapshotPath := filepath.Join(root, "catalog.snapshot.json")
	pairsPath := filepath.Join(root, "proof-pairs.json")
	snapshotBytes, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	pairBytes, err := json.Marshal(dataset)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(snapshotPath, snapshotBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(pairsPath, pairBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	sourceRoot, evidenceRoot := writeTasteEvidenceRoots(t, snapshot, sourceBytes, evidenceFiles)
	if err := os.WriteFile(filepath.Join(evidenceRoot, dataset.Pairs[0].SimplificationEvidenceID+".json"), []byte("{}\n"), 0o600); err != nil {
		t.Fatal(err)
	}
	var stdout, stderr bytes.Buffer
	args := []string{"taste-validate", "--snapshot", snapshotPath, "--pairs", pairsPath, "--source-root", sourceRoot, "--evidence-root", evidenceRoot}
	if code := run(args, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("tampered receipt validation exit=%d stdout=%q stderr=%q; want closed refusal", code, stdout.String(), stderr.String())
	}
	if !strings.Contains(stderr.String(), "does not match its recorded SHA-256") {
		t.Fatalf("tampered receipt error = %q, want receipt digest mismatch", stderr.String())
	}
}

func TestTasteValidateRejectsChangedLeanOutputArtifact(t *testing.T) {
	snapshot, dataset, sourceBytes, evidenceFiles := tasteSplitFixture(t)
	outputPath := "output/" + dataset.Pairs[0].SimplificationEvidenceID + ".txt"
	evidenceFiles[outputPath] = append(evidenceFiles[outputPath], []byte("tampered\n")...)
	root := t.TempDir()
	snapshotPath := filepath.Join(root, "catalog.snapshot.json")
	pairsPath := filepath.Join(root, "proof-pairs.json")
	snapshotBytes, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	pairBytes, err := json.Marshal(dataset)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(snapshotPath, snapshotBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(pairsPath, pairBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	sourceRoot, evidenceRoot := writeTasteEvidenceRoots(t, snapshot, sourceBytes, evidenceFiles)
	var stdout, stderr bytes.Buffer
	args := []string{"taste-validate", "--snapshot", snapshotPath, "--pairs", pairsPath, "--source-root", sourceRoot, "--evidence-root", evidenceRoot}
	if code := run(args, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("taste-validate changed output exit=%d stdout=%q stderr=%q; want closed refusal", code, stdout.String(), stderr.String())
	}
	if !strings.Contains(stderr.String(), "Lean output artifact") || !strings.Contains(stderr.String(), "does not match its recorded SHA-256") {
		t.Fatalf("changed Lean output error = %q, want artifact digest mismatch", stderr.String())
	}
}

func TestTasteValidateRejectsUnapprovedAxiomEvenWhenReceiptMatchesRawOutput(t *testing.T) {
	snapshot, dataset, sourceBytes, evidenceFiles := tasteSplitFixture(t)
	firstPair := &dataset.Pairs[0]
	var receipt taste.MathlibSimplificationEvidence
	if err := json.Unmarshal(evidenceFiles[firstPair.SimplificationEvidenceID+".json"], &receipt); err != nil {
		t.Fatalf("decode test receipt: %v", err)
	}
	receipt.AfterAxiomOutput = "'" + receipt.AfterTheorem + "' depends on axioms: [custom_axiom]"
	receipt.AfterAxioms = []string{"custom_axiom"}
	leanOutput := []byte(receipt.BeforeAxiomOutput + "\n" + receipt.AfterAxiomOutput + "\n")
	receipt.LeanOutputSHA256 = testSHA256Bytes(leanOutput)
	evidenceFiles[receipt.LeanOutputPath] = leanOutput
	encodedReceipt, err := json.MarshalIndent(receipt, "", "  ")
	if err != nil {
		t.Fatalf("encode test receipt: %v", err)
	}
	encodedReceipt = append(encodedReceipt, '\n')
	firstPair.SimplificationEvidenceSHA256 = testSHA256Bytes(encodedReceipt)
	evidenceFiles[firstPair.SimplificationEvidenceID+".json"] = encodedReceipt

	root := t.TempDir()
	snapshotPath := filepath.Join(root, "catalog.snapshot.json")
	pairsPath := filepath.Join(root, "proof-pairs.json")
	snapshotBytes, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	pairBytes, err := json.Marshal(dataset)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(snapshotPath, snapshotBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(pairsPath, pairBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	sourceRoot, evidenceRoot := writeTasteEvidenceRoots(t, snapshot, sourceBytes, evidenceFiles)
	var stdout, stderr bytes.Buffer
	args := []string{"taste-validate", "--snapshot", snapshotPath, "--pairs", pairsPath, "--source-root", sourceRoot, "--evidence-root", evidenceRoot}
	if code := run(args, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("taste-validate unapproved axiom exit=%d stdout=%q stderr=%q; want closed refusal", code, stdout.String(), stderr.String())
	}
	if !strings.Contains(stderr.String(), "outside the recorded standard policy") {
		t.Fatalf("unapproved axiom error = %q, want standard-policy rejection", stderr.String())
	}
}
