package main

import (
	"bytes"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

func TestDossierReviseM4RejectsNonExecutionReceiptWithoutWritingRevision(t *testing.T) {
	dossier := syntheticReadyDossierForCLI()
	root := t.TempDir()
	snapshotPath, snapshot := writeSyntheticCLIM0Snapshot(t, root)
	dossier.CatalogSnapshotSHA256 = snapshot.ContentSHA256
	dossierBytes, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	dossierPath := filepath.Join(t.TempDir(), "dossier.json")
	if err := os.WriteFile(dossierPath, dossierBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	legacyReceiptPath := filepath.Join(t.TempDir(), "legacy-receipt.json")
	if err := os.WriteFile(legacyReceiptPath, []byte(`{"schema_version":"mathcase-lean-verification-v3","evidence_id":"synthetic-receipt","problem_id":"synthetic-cli-problem"}`), 0o600); err != nil {
		t.Fatal(err)
	}
	outputPath := filepath.Join(t.TempDir(), "dossier-revision-v2.json")
	var stdout, stderr bytes.Buffer
	code := run([]string{
		"dossier-revise-m4", "--dossier", dossierPath,
		"--lean-receipt", legacyReceiptPath, "--catalog-snapshot", snapshotPath, "--output", outputPath,
	}, &stdout, &stderr)
	if code != 1 || stdout.Len() != 0 || !strings.Contains(stderr.String(), "not execution-bound") {
		t.Fatalf("dossier-revise-m4 exit=%d stdout=%q stderr=%q; want receipt refusal", code, stdout.String(), stderr.String())
	}
	if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
		t.Fatalf("failed receipt created dossier revision; stat err=%v", err)
	}
	unchanged, err := os.ReadFile(dossierPath)
	if err != nil {
		t.Fatal(err)
	}
	if !bytes.Equal(unchanged, dossierBytes) {
		t.Fatal("receipt refusal modified the input dossier")
	}
}

func TestDossierM0StatusComesFromExactPinnedSnapshot(t *testing.T) {
	root := t.TempDir()
	_, snapshot := writeSyntheticCLIM0Snapshot(t, root)
	dossier := syntheticReadyDossierForCLI()
	dossier.CatalogSnapshotSHA256 = snapshot.ContentSHA256
	if dossier.Problem.M0Status != "" {
		t.Fatalf("fixture unexpectedly starts with M0 status %q", dossier.Problem.M0Status)
	}
	if err := validateM4ReplayProblemBinding(dossier, snapshot); err != nil {
		t.Fatalf("exact catalog binding rejected legacy dossier: %v", err)
	}
	status, err := catalogProblemStatus(snapshot, dossier.Problem.ID)
	if err != nil || status != string(catalog.StatusProven) {
		t.Fatalf("catalog status = %q, err=%v; want PROVEN", status, err)
	}

	dossier.CatalogSnapshotSHA256 = strings.Repeat("0", 64)
	if err := validateM4ReplayProblemBinding(dossier, snapshot); err == nil || !strings.Contains(err.Error(), "snapshot digest") {
		t.Fatalf("mismatched snapshot binding error = %v, want digest refusal", err)
	}
	dossier.CatalogSnapshotSHA256 = snapshot.ContentSHA256
	dossier.Problem.Statement += " altered"
	if err := validateM4ReplayProblemBinding(dossier, snapshot); err == nil || !strings.Contains(err.Error(), "problem text") {
		t.Fatalf("mismatched statement binding error = %v, want exact-text refusal", err)
	}
}

func writeSyntheticCLIM0Snapshot(t *testing.T, root string) (string, catalog.Snapshot) {
	t.Helper()
	now := time.Date(2026, time.October, 20, 19, 0, 0, 0, time.UTC)
	source := catalog.SourceVersion{
		ID: "synthetic-cli-source", URL: "https://example.test/synthetic-cli-source",
		ItemLocator: "synthetic-cli-problem", Lane: catalog.LaneMathlibProofPairs, Revision: "fixture-commit",
		RetrievedAt: now, ContentSHA256: strings.Repeat("a", 64), AuthorOrHolder: "Fixture rights holder",
		License: "Apache-2.0", LicenseTermsURL: "https://www.apache.org/licenses/LICENSE-2.0",
		TermsNote: "Fixture source licensed under Apache-2.0.", Attribution: "Fixture source attribution.",
		Rights: catalog.RightsCleared, AllowedUses: []catalog.SourceUse{catalog.UseLocalStorage},
		RightsReviewerID: "fixture-reviewer", RightsReviewedAt: now, RightsEvidenceID: "fixture-source-rights",
	}
	problem := catalog.Problem{
		ID: "synthetic-cli-problem", Title: "Synthetic CLI fixture",
		InformalStatement: "Synthetic fixture statement: every natural number equals itself.",
		LeanStatement:     "forall (n : Nat), n = n", Status: catalog.StatusProven,
		SourceIDs: []string{"synthetic-cli-source"},
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, []catalog.Problem{problem})
	if err != nil {
		t.Fatalf("build synthetic M0 snapshot: %v", err)
	}
	data, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	path := filepath.Join(root, "catalog.snapshot.json")
	if err := os.WriteFile(path, data, 0o600); err != nil {
		t.Fatal(err)
	}
	return path, snapshot
}

func TestDossierRevisionSequenceRequiresCurrentTipAndCanonicalName(t *testing.T) {
	bundle := t.TempDir()
	predecessor := syntheticReadyDossierForCLI()
	predecessor.Case.Version = 1
	predecessorPath := filepath.Join(bundle, "dossier.json")
	predecessorBytes := writeDossierFixture(t, predecessorPath, predecessor)
	canonicalNext := filepath.Join(bundle, "dossier-revision-v2.json")
	if err := validateDossierRevisionSequence(predecessorPath, canonicalNext, predecessor, predecessorBytes); err != nil {
		t.Fatalf("initial canonical revision was rejected: %v", err)
	}
	if err := validateDossierRevisionSequence(predecessorPath, filepath.Join(bundle, "alternate-v2.json"), predecessor, predecessorBytes); err == nil || !strings.Contains(err.Error(), "canonical next revision") {
		t.Fatalf("alternate output name error = %v, want deterministic-name refusal", err)
	}

	firstRevision := predecessor
	firstRevision.Case.Version++
	firstRevisionBytes := writeDossierFixture(t, canonicalNext, firstRevision)
	if err := validateDossierRevisionSequence(predecessorPath, canonicalNext, predecessor, predecessorBytes); err == nil || !strings.Contains(err.Error(), "stale") {
		t.Fatalf("branch from old predecessor error = %v, want stale-predecessor refusal", err)
	}
	if err := validateDossierRevisionSequence(canonicalNext, canonicalNext, firstRevision, firstRevisionBytes); err == nil || !strings.Contains(err.Error(), `dossier-revision-v3.json`) {
		t.Fatalf("same-path successor error = %v, want canonical v3 path refusal", err)
	}

	canonicalFollowing := filepath.Join(bundle, "dossier-revision-v3.json")
	if err := validateDossierRevisionSequence(canonicalNext, canonicalFollowing, firstRevision, firstRevisionBytes); err != nil {
		t.Fatalf("current tip could not advance to its one canonical successor: %v", err)
	}
}

func TestDossierM4RebindingLeavesExpositionProofReferencesUnchanged(t *testing.T) {
	const expositionProofRef = "receipts/original-exposition-proof.json"
	revision := domain.Dossier{
		Verifications: []domain.VerificationRecord{
			{Gate: domain.GateKernelBuild},
			{Gate: domain.GateAxiomAudit},
			{Gate: domain.GateFalsification},
		},
		Expositions:           []domain.Exposition{{Tier: domain.TierHighSchool, ProofRef: expositionProofRef}},
		ExpositionEvaluations: []domain.ExpositionEvaluation{{ProofSHA256: strings.Repeat("a", 64)}},
	}
	receipt := solver.LeanVerificationReceipt{
		EvidenceID: "lean-fresh-test", RecordedAtUTC: time.Date(2026, time.October, 20, 0, 0, 0, 0, time.UTC),
	}
	const receiptSHA256 = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	updateDossierM4VerificationRecords(&revision, receipt, receiptSHA256, false)
	if revision.Expositions[0].ProofRef != expositionProofRef {
		t.Fatalf("M4 revision redirected exposition proof ref to %q", revision.Expositions[0].ProofRef)
	}
	if revision.ExpositionEvaluations[0].ProofSHA256 != strings.Repeat("a", 64) {
		t.Fatal("M4 revision changed the independent exposition evaluation's proof binding")
	}
	if revision.Verifications[0].EvidenceIDs[0] != receipt.EvidenceID || revision.Verifications[1].EvidenceIDs[0] != receipt.EvidenceID {
		t.Fatal("M4 revision did not link both V1 and V2 to the validated receipt")
	}
	if revision.M4Receipt == nil || revision.M4Receipt.EvidenceID != receipt.EvidenceID || revision.M4Receipt.ReceiptSHA256 != receiptSHA256 {
		t.Fatalf("M4 receipt reference = %#v, want exact receipt ID and digest", revision.M4Receipt)
	}
	if len(revision.Verifications[2].EvidenceIDs) != 0 {
		t.Fatal("M4 revision modified the unrelated V4 gate")
	}
}

func TestDossierM4PinExistingReceiptPreservesExistingRunEvidence(t *testing.T) {
	const receiptID = "lean-existing-receipt"
	recordedAt := time.Date(2026, time.October, 20, 21, 16, 0, 0, time.UTC)
	revision := domain.Dossier{
		Evidence: []domain.Evidence{{ID: receiptID}},
		Attempts: []domain.SolverAttempt{{ID: "existing-attempt", EvidenceIDs: []string{receiptID}}},
		Verifications: []domain.VerificationRecord{
			{Gate: domain.GateKernelBuild, EvidenceIDs: []string{receiptID}, RecordedAt: recordedAt},
			{Gate: domain.GateAxiomAudit, EvidenceIDs: []string{receiptID}, RecordedAt: recordedAt},
		},
	}
	receipt := solver.LeanVerificationReceipt{EvidenceID: receiptID, RecordedAtUTC: recordedAt.Add(-time.Minute)}
	const receiptSHA256 = "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"

	updateDossierM4VerificationRecords(&revision, receipt, receiptSHA256, true)

	if revision.M4Receipt == nil || revision.M4Receipt.EvidenceID != receiptID || revision.M4Receipt.ReceiptSHA256 != receiptSHA256 {
		t.Fatalf("M4 receipt reference = %#v, want exact current receipt ID and digest", revision.M4Receipt)
	}
	if len(revision.Evidence) != 1 || revision.Evidence[0].ID != receiptID || len(revision.Attempts) != 1 || revision.Attempts[0].ID != "existing-attempt" {
		t.Fatal("pinning the existing receipt duplicated evidence or solver attempts")
	}
	for _, record := range revision.Verifications {
		if len(record.EvidenceIDs) != 1 || record.EvidenceIDs[0] != receiptID || !record.RecordedAt.Equal(recordedAt) {
			t.Fatalf("pinning changed the existing %s execution record: %#v", record.Gate, record)
		}
	}
}

func TestDossierM4SummaryReflectsPinnedMathlibSnapshot(t *testing.T) {
	revision := domain.Dossier{
		Verifications: []domain.VerificationRecord{
			{Gate: domain.GateKernelBuild},
			{Gate: domain.GateAxiomAudit},
		},
	}
	receipt := solver.LeanVerificationReceipt{
		EvidenceID:     "lean-mathlib-snapshot",
		Imports:        []string{"Mathlib.Data.Nat.Basic"},
		SnapshotID:     "snapshot-abc123",
		ExecutionImage: "sha256:" + strings.Repeat("a", 64),
	}
	updateDossierM4VerificationRecords(&revision, receipt, strings.Repeat("b", 64), false)

	summary := revision.Verifications[0].Summary
	for _, expected := range []string{"Mathlib.Data.Nat.Basic", "snapshot-abc123", receipt.ExecutionImage, "not a Lake-project build"} {
		if !strings.Contains(summary, expected) {
			t.Fatalf("V1 summary %q does not contain %q", summary, expected)
		}
	}
	if strings.Contains(summary, "import Init") {
		t.Fatalf("V1 summary misdescribes Mathlib replay as an Init proof: %q", summary)
	}
}

func writeDossierFixture(t *testing.T, path string, dossier domain.Dossier) []byte {
	t.Helper()
	data, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(path, data, 0o600); err != nil {
		t.Fatal(err)
	}
	return data
}
