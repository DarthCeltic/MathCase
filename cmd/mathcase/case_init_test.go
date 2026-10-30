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
)

func TestCaseInitCreatesUnassessedDossierFromLocalStorageClearedM0Item(t *testing.T) {
	root := t.TempDir()
	snapshotPath, snapshot := writeCaseInitSnapshot(t, root, true, "forall (n : Nat), n = n")
	outputPath := filepath.Join(root, "case-intake.json")
	createdAt := "2026-10-20T20:00:00Z"
	args := []string{"case-init", "--snapshot", snapshotPath, "--problem-id", "problem-refl", "--case-id", "case-refl", "--created-at", createdAt, "--output", outputPath}
	var stdout, stderr bytes.Buffer
	if code := run(args, &stdout, &stderr); code != 0 {
		t.Fatalf("case-init exit=%d stderr=%q", code, stderr.String())
	}

	var summary caseInitOutput
	if err := json.Unmarshal(stdout.Bytes(), &summary); err != nil {
		t.Fatalf("decode case-init summary %q: %v", stdout.String(), err)
	}
	if summary.Status != "CREATED_UNASSESSED" || summary.CaseID != "case-refl" || summary.ProblemID != "problem-refl" ||
		summary.M0Status != string(catalog.StatusProven) || summary.CatalogSnapshotSHA != snapshot.ContentSHA256 ||
		summary.SourceCount != 1 || !summary.LeanStatementLoaded {
		t.Fatalf("case-init summary = %#v", summary)
	}
	data, err := os.ReadFile(outputPath)
	if err != nil {
		t.Fatal(err)
	}
	var dossier domain.Dossier
	if err := json.Unmarshal(data, &dossier); err != nil {
		t.Fatalf("decode intake dossier: %v", err)
	}
	if err := dossier.Validate(); err != nil {
		t.Fatalf("initialized dossier is invalid: %v", err)
	}
	if dossier.CatalogSnapshotSHA256 != snapshot.ContentSHA256 || dossier.Problem.M0Status != string(catalog.StatusProven) ||
		dossier.Problem.Statement != snapshot.Problems[0].InformalStatement || dossier.Problem.LeanStatement != snapshot.Problems[0].LeanStatement {
		t.Fatalf("initialized problem/catalog binding = %#v / %q", dossier.Problem, dossier.CatalogSnapshotSHA256)
	}
	if dossier.Case.Question != snapshot.Problems[0].InformalStatement {
		t.Fatalf("case question = %q; want exact M0 statement %q", dossier.Case.Question, snapshot.Problems[0].InformalStatement)
	}
	if dossier.Case.Phase != domain.PhaseDraft || dossier.Case.Status != domain.CaseStatusActive || dossier.ClaimClass != "" ||
		len(dossier.Evidence) != 0 || len(dossier.Attempts) != 0 || len(dossier.Expositions) != 0 ||
		dossier.AuthorCallAccounting != nil || dossier.AuthorAgentRunReceipt != nil || dossier.Verdict.Status != domain.VerdictUnresolved {
		t.Fatalf("case-init overstated phase/evidence/result: %#v", dossier)
	}
	if len(dossier.Verifications) != 7 {
		t.Fatalf("pending verification count = %d, want seven", len(dossier.Verifications))
	}
	for _, record := range dossier.Verifications {
		if record.Status != domain.VerificationPending || record.RecordedAt.UTC().Format(time.RFC3339) != createdAt {
			t.Fatalf("case-init gate record = %#v; want pending at requested timestamp", record)
		}
	}
	if len(dossier.Sources) != 1 || dossier.Sources[0].FetchStatus != domain.FetchStatusPending || dossier.Sources[0].AuditStatus != domain.AuditStatusUnaudited {
		t.Fatalf("M0 intake source status = %#v; loading a snapshot must not claim a fetch or audit", dossier.Sources)
	}
	metadata := dossier.Sources[0].Metadata
	if metadata["m0_content_sha256"] != snapshot.Sources[0].ContentSHA256 || metadata["m0_rights_evidence_id"] != snapshot.Sources[0].RightsEvidenceID || metadata["m0_allowed_uses"] != "LOCAL_STORAGE" {
		t.Fatalf("source metadata did not preserve the scoped M0 rights/pins: %#v", metadata)
	}

	stdout.Reset()
	stderr.Reset()
	if code := run(args, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("case-init overwrite exit=%d stdout=%q stderr=%q; want no-overwrite refusal", code, stdout.String(), stderr.String())
	}
	unchanged, err := os.ReadFile(outputPath)
	if err != nil {
		t.Fatal(err)
	}
	if !bytes.Equal(data, unchanged) {
		t.Fatal("case-init changed an existing dossier after refusing overwrite")
	}
}

func TestCaseInitDoesNotInventLeanStatement(t *testing.T) {
	root := t.TempDir()
	snapshotPath, _ := writeCaseInitSnapshot(t, root, true, "")
	outputPath := filepath.Join(root, "case-intake.json")
	var stdout, stderr bytes.Buffer
	code := run([]string{"case-init", "--snapshot", snapshotPath, "--problem-id", "problem-refl", "--case-id", "case-refl", "--created-at", "2026-10-20T20:00:00Z", "--output", outputPath}, &stdout, &stderr)
	if code != 0 {
		t.Fatalf("case-init without source Lean statement exit=%d stderr=%q", code, stderr.String())
	}
	var summary caseInitOutput
	if err := json.Unmarshal(stdout.Bytes(), &summary); err != nil {
		t.Fatalf("decode case-init summary: %v", err)
	}
	if summary.LeanStatementLoaded {
		t.Fatalf("case-init summary claims a Lean statement was loaded: %#v", summary)
	}
	var dossier domain.Dossier
	data, err := os.ReadFile(outputPath)
	if err != nil {
		t.Fatal(err)
	}
	if err := json.Unmarshal(data, &dossier); err != nil {
		t.Fatal(err)
	}
	if dossier.Problem.LeanStatement != "" || len(dossier.Verifications) != 7 || dossier.Verifications[2].Status != domain.VerificationPending {
		t.Fatalf("case-init fabricated Lean or passed V3 without an input: %#v", dossier)
	}
}

func TestCaseInitRefusesSourceWithoutLocalStorageRights(t *testing.T) {
	root := t.TempDir()
	snapshotPath, _ := writeCaseInitSnapshot(t, root, false, "forall (n : Nat), n = n")
	outputPath := filepath.Join(root, "case-intake.json")
	var stdout, stderr bytes.Buffer
	code := run([]string{"case-init", "--snapshot", snapshotPath, "--problem-id", "problem-refl", "--case-id", "case-refl", "--created-at", "2026-10-20T20:00:00Z", "--output", outputPath}, &stdout, &stderr)
	if code != 2 || stdout.Len() != 0 || !strings.Contains(stderr.String(), "not cleared for LOCAL_STORAGE") {
		t.Fatalf("case-init uncleared-rights exit=%d stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
	if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
		t.Fatalf("case-init wrote a dossier without local-storage rights; stat error=%v", err)
	}
}

func TestCaseInitPinsUnassessedLocalArithmeticWithoutLean(t *testing.T) {
	root := t.TempDir()
	now := time.Date(2026, time.October, 25, 19, 0, 0, 0, time.UTC)
	source := catalog.SourceVersion{
		ID: "source-local", URL: "local://mathcase-authored/case", ItemLocator: "exact local exercise",
		Lane: catalog.LaneMathCaseAuthored, Revision: "owner-authored-1", RetrievedAt: now,
		ContentSHA256: strings.Repeat("a", 64), AuthorOrHolder: "MathCase owner",
		License: "OWNER_AUTHORIZATION_LOCAL_ONLY", TermsNote: "Local storage and computation only.",
		Attribution: "Original local exercise.", AllowedUses: []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseLocalComputation},
		RightsReviewerID: "owner", RightsReviewedAt: now, RightsEvidenceID: "owner-rights-1", Rights: catalog.RightsCleared,
	}
	problem := catalog.Problem{
		ID: "problem-local", Kind: catalog.ProblemKindLocalArithmeticTask,
		LocalComputationSpec: &domain.LocalComputationSpec{ToolID: domain.LocalComputationTwoCongruenceToolID, Inputs: map[string]string{"residue1": "1", "modulus1": "6", "residue2": "4", "modulus2": "9"}},
		Title:                "Two congruences", InformalStatement: "Find all integer solutions.",
		Status: catalog.StatusUnassessed, SourceIDs: []string{source.ID},
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, []catalog.Problem{problem})
	if err != nil {
		t.Fatalf("create local arithmetic M0 snapshot: %v", err)
	}
	snapshotPath := filepath.Join(root, "snapshot.json")
	data, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(snapshotPath, data, 0o600); err != nil {
		t.Fatal(err)
	}
	outputPath := filepath.Join(root, "case.json")
	base := []string{"case-init", "--snapshot", snapshotPath, "--problem-id", problem.ID, "--case-id", "case-congruence", "--created-at", now.Format(time.RFC3339), "--output", outputPath}
	var stdout, stderr bytes.Buffer
	if code := run(base, &stdout, &stderr); code != 2 || !strings.Contains(stderr.String(), "requires --snapshot-reference") {
		t.Fatalf("local arithmetic case-init without M0 path exit=%d stderr=%q", code, stderr.String())
	}
	args := append(append([]string(nil), base...), "--snapshot-reference", "data/local/staging/local-case/snapshot.json")
	stdout.Reset()
	stderr.Reset()
	if code := run(args, &stdout, &stderr); code != 0 {
		t.Fatalf("local arithmetic case-init exit=%d stderr=%q", code, stderr.String())
	}
	var dossier domain.Dossier
	stored, err := os.ReadFile(outputPath)
	if err != nil {
		t.Fatal(err)
	}
	if err := json.Unmarshal(stored, &dossier); err != nil {
		t.Fatal(err)
	}
	if dossier.Problem.Kind != string(catalog.ProblemKindLocalArithmeticTask) || dossier.Problem.M0Status != string(catalog.StatusUnassessed) || dossier.Problem.LeanStatement != "" || dossier.CatalogSnapshotPath != "data/local/staging/local-case/snapshot.json" || dossier.ValidateReadyForDelivery() == nil {
		t.Fatalf("case-init overstated formal status or failed to pin the exact M0 path: %#v", dossier)
	}
}

func TestCaseInitHelpDoesNotLoadOrWrite(t *testing.T) {
	var stdout, stderr bytes.Buffer
	if code := run([]string{"case-init", "--help"}, &stdout, &stderr); code != 0 {
		t.Fatalf("case-init --help exit=%d stderr=%q", code, stderr.String())
	}
	if stdout.Len() != 0 || !strings.Contains(stderr.String(), "-snapshot") || !strings.Contains(stderr.String(), "-output") {
		t.Fatalf("case-init help output = stdout %q stderr %q", stdout.String(), stderr.String())
	}
}

func writeCaseInitSnapshot(t *testing.T, root string, clearLocalStorage bool, leanStatement string) (string, catalog.Snapshot) {
	t.Helper()
	now := time.Date(2026, time.October, 20, 19, 0, 0, 0, time.UTC)
	source := catalog.SourceVersion{
		ID: "source-refl", URL: "https://example.test/source-refl", ItemLocator: "Mathlib/Logic/Basic.lean",
		Lane: catalog.LaneMathlibProofPairs, Revision: "fixture-commit", RetrievedAt: now,
		ContentSHA256: strings.Repeat("a", 64), AuthorOrHolder: "Fixture rights holder",
		License: "Apache-2.0", LicenseTermsURL: "https://www.apache.org/licenses/LICENSE-2.0",
		TermsNote: "Fixture source licensed under Apache-2.0.", Attribution: "Fixture source attribution.",
		Rights: catalog.RightsPending,
	}
	if clearLocalStorage {
		source.Rights = catalog.RightsCleared
		source.AllowedUses = []catalog.SourceUse{catalog.UseLocalStorage}
		source.RightsReviewerID = "fixture-reviewer"
		source.RightsReviewedAt = now
		source.RightsEvidenceID = "rights-source-refl"
	}
	problem := catalog.Problem{
		ID: "problem-refl", Title: "Natural number reflexivity",
		InformalStatement: "Every natural number equals itself.", LeanStatement: leanStatement,
		Status: catalog.StatusProven, SourceIDs: []string{"source-refl"},
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, []catalog.Problem{problem})
	if err != nil {
		t.Fatalf("build case-init fixture snapshot: %v", err)
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
