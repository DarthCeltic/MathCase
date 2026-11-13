package main

import (
	"bytes"
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"os"
	"path/filepath"
	"reflect"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

type importedProofVerifierFunc func(context.Context, domain.MathProblem, string) (solver.Verification, error)

func (f importedProofVerifierFunc) Verify(ctx context.Context, problem domain.MathProblem, proof string) (solver.Verification, error) {
	return f(ctx, problem, proof)
}

func TestVerifyImportedProofRequiresExplicitPinnedInputsWithoutStartingDocker(t *testing.T) {
	var stdout, stderr bytes.Buffer
	if code := run([]string{"verify-imported-proof", "--problem", "missing.json"}, &stdout, &stderr); code != 2 ||
		stdout.Len() != 0 || !strings.Contains(stderr.String(), "--catalog-snapshot") {
		t.Fatalf("missing M0 catalog = code %d stdout=%q stderr=%q; want early catalog refusal", code, stdout.String(), stderr.String())
	}
}

func TestImportedProofPacketBindsRawInputAndNeverTrustsVerifierFlagsWithoutReceipt(t *testing.T) {
	problem := domain.MathProblem{
		ID: "imported-reflexivity", Title: "Reflexivity", Statement: "Every natural number equals itself.",
		LeanStatement: "∀ n : Nat, n = n", M0Status: "UNASSESSED",
	}
	problemBytes := []byte(`{"id":"imported-reflexivity","title":"Reflexivity","statement":"Every natural number equals itself.","lean_statement":"∀ n : Nat, n = n","m0_status":"UNASSESSED"}`)
	proofBytes := []byte("by\n  rfl\n")
	receiptRoot := t.TempDir()
	verifier := importedProofVerifierFunc(func(_ context.Context, got domain.MathProblem, proof string) (solver.Verification, error) {
		if got.ID != problem.ID || proof != string(proofBytes) {
			t.Fatalf("verifier received problem=%q proof=%q; want exact source bytes", got.ID, proof)
		}
		return solver.Verification{KernelPassed: true, AxiomsPassed: true, EvidenceID: "lean-11111111111111111111111111111111", Summary: "synthetic verifier result"}, nil
	})
	catalogDigest := strings.Repeat("9", 64)
	packet := runImportedProofVerification(context.Background(), verifier, problemBytes, problem, proofBytes,
		"Lean Grimoire tutorial 1.1", receiptRoot, catalogDigest, "human-review-evidence", nil)
	problemHash := sha256.Sum256(problemBytes)
	proofHash := sha256.Sum256(proofBytes)
	statementHash, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	if packet.Status != "RECEIPT_MISSING_OR_UNSAFE" || packet.ProblemJSONSHA256 != hex.EncodeToString(problemHash[:]) ||
		packet.ProofSHA256 != hex.EncodeToString(proofHash[:]) || packet.ProblemStatementSHA256 != statementHash {
		t.Fatalf("packet = %#v; want exact raw-byte hashes and failed receipt qualification", packet)
	}
	if packet.RightsStatus != domain.ImportedProofRightsClearedByCatalog || packet.SourceUseAuthorizationStatus != "CLEARED_BY_PINNED_M0_CATALOG" ||
		packet.M0CatalogSnapshotSHA256 != catalogDigest || packet.ExecutionScope != domain.ImportedProofSingleCheckDisposition ||
		packet.NoveltyStatus != "NOT_ASSESSED" || packet.MathCaseDiscoveryClaim || !packet.HumanReviewRequired ||
		packet.ProblemM0StatusInput != "UNASSESSED" || packet.M0AssessmentStatus != "NOT_ASSESSED_OR_CHANGED" ||
		packet.SourceLabelStatus != "OPERATOR_ENTERED_NOT_VERIFIED" ||
		packet.DossierAttachmentStatus != "NOT_ATTACHED" {
		t.Fatalf("import packet overstated rights, M0, novelty, discovery, or dossier status: %#v", packet)
	}
}

func TestImportedProofSourceUseRequiresExactM0ReviewAndAllRequestedUses(t *testing.T) {
	problem := domain.MathProblem{
		ID: "grimoire-intro-pair", Title: "Conjunction introduction", Statement: "From A, B, and C, prove (A and B) and C.",
		LeanStatement: "theorem imported_pair (A B C : Prop) (hA : A) (hB : B) (hC : C) : (A ∧ B) ∧ C",
		M0Status:      "UNASSESSED", SourceIDs: []string{"source-grimoire-lesson"},
	}
	snapshot := importedProofCatalog(t, problem, true, []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseLocalProofAttempt, catalog.UseDerivative})
	evidenceID, err := validateImportedProofSourceUse(snapshot, problem)
	if err != nil || evidenceID != "review-grimoire-statement" {
		t.Fatalf("authorized exact M0 source-use check = %q, %v", evidenceID, err)
	}
	storageOnly := importedProofCatalog(t, problem, true, []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseLocalComputation})
	if _, err := validateImportedProofSourceUse(storageOnly, problem); err == nil || !strings.Contains(err.Error(), "not cleared") {
		t.Fatalf("storage/computation-only source-use policy returned %v; want local proof-attempt refusal", err)
	}
	problemPath := filepath.Join(t.TempDir(), "problem.json")
	problemBytes, err := json.Marshal(problem)
	if err != nil {
		t.Fatal(err)
	}
	catalogPath := filepath.Join(t.TempDir(), "catalog.json")
	catalogBytes, err := json.Marshal(storageOnly)
	if err != nil {
		t.Fatal(err)
	}
	proofPath := filepath.Join(t.TempDir(), "proof.txt")
	packetPath := filepath.Join(t.TempDir(), "packet.json")
	for path, data := range map[string][]byte{problemPath: problemBytes, catalogPath: catalogBytes, proofPath: []byte("by\n  exact And.intro (And.intro hA hB) hC\n")} {
		if err := os.WriteFile(path, data, 0o600); err != nil {
			t.Fatal(err)
		}
	}
	var stdout, stderr bytes.Buffer
	code := run([]string{"verify-imported-proof", "--problem", problemPath, "--catalog-snapshot", catalogPath,
		"--proof-term", proofPath, "--packet-output", packetPath}, &stdout, &stderr)
	if code != 1 {
		t.Fatalf("storage-only CLI import exit=%d stdout=%q stderr=%q; want local-use refusal", code, stdout.String(), stderr.String())
	}
	var blockedPacket importedProofPacket
	if err := json.Unmarshal(stdout.Bytes(), &blockedPacket); err != nil {
		t.Fatalf("decode source-use refusal packet: %v; output=%q", err, stdout.String())
	}
	if blockedPacket.Status != "SOURCE_USE_BLOCKED" || blockedPacket.RightsStatus != domain.ImportedProofRightsUnassessed ||
		blockedPacket.LeanEvidenceID != "" || !strings.Contains(blockedPacket.Summary, "not cleared") {
		t.Fatalf("storage-only CLI import packet = %#v; want blocked without Lean evidence", blockedPacket)
	}
	unreviewed := importedProofCatalog(t, problem, false, []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseLocalProofAttempt, catalog.UseDerivative})
	if _, err := validateImportedProofSourceUse(unreviewed, problem); err == nil || !strings.Contains(err.Error(), "statement review") {
		t.Fatalf("unreviewed exact statement returned %v; want M0 human-review refusal", err)
	}
	changed := problem
	changed.LeanStatement = "theorem imported_pair (A B C : Prop) (hA : A) (hB : B) (hC : C) : (A ∧ B) ∧ C ∧ A"
	if _, err := validateImportedProofSourceUse(snapshot, changed); err == nil || !strings.Contains(err.Error(), "does not exactly match") {
		t.Fatalf("changed formal statement returned %v; want exact M0 binding refusal", err)
	}
}

func TestImportedProofSourceUseBlockPreventsVerifierCall(t *testing.T) {
	called := false
	verifier := importedProofVerifierFunc(func(context.Context, domain.MathProblem, string) (solver.Verification, error) {
		called = true
		return solver.Verification{KernelPassed: true, AxiomsPassed: true}, nil
	})
	packet := runImportedProofVerification(context.Background(), verifier,
		[]byte(`{"problem":"input"}`), domain.MathProblem{ID: "imported-reflexivity", Statement: "reflexivity", LeanStatement: "True"},
		[]byte("by trivial"), "unreviewed source", t.TempDir(), strings.Repeat("9", 64), "", errors.New("source use not cleared"))
	if called || packet.Status != "SOURCE_USE_BLOCKED" || packet.RightsStatus != domain.ImportedProofRightsUnassessed ||
		packet.SourceUseAuthorizationStatus != "BLOCKED_NO_LEAN_RUN" || packet.LeanEvidenceID != "" {
		t.Fatalf("blocked proof-import result = %#v, verifier-called=%t; want no Lean run and no evidence", packet, called)
	}
}

func TestImportedProofCandidateRevisionKeepsM4AndIndependentGatesUntouched(t *testing.T) {
	dossier := importedProofTestDossier()
	statementHash, err := domain.ProblemStatementDigest(dossier.Problem.ID, dossier.Problem.Statement, dossier.Problem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	proofHash := sha256.Sum256([]byte("by rfl"))
	packetBytes := []byte(`{"synthetic":"packet"}`)
	packetHash := sha256.Sum256(packetBytes)
	receiptHash := strings.Repeat("b", 64)
	packet := importedProofPacket{
		SchemaVersion: importedProofSchema, Status: "VERIFIED_FOR_EXACT_FORMAL_STATEMENT",
		ProblemID: dossier.Problem.ID, ProblemStatementSHA256: statementHash,
		ProofSHA256: hex.EncodeToString(proofHash[:]), RightsStatus: domain.ImportedProofRightsClearedByCatalog,
		M0CatalogSnapshotSHA256: dossier.CatalogSnapshotSHA256, M0StatementAuditEvidenceID: "human-review-evidence",
		ProblemM0StatusInput: dossier.Problem.M0Status, SourceUseAuthorizationStatus: "CLEARED_BY_PINNED_M0_CATALOG",
		SourceLabelStatus: "OPERATOR_ENTERED_NOT_VERIFIED",
		ExecutionScope:    domain.ImportedProofSingleCheckDisposition, NoveltyStatus: "NOT_ASSESSED",
		MathCaseDiscoveryClaim: false, HumanReviewRequired: true,
		LeanEvidenceID: "lean-22222222222222222222222222222222", LeanReceiptFile: "lean-22222222222222222222222222222222.json",
		LeanReceiptSHA256: receiptHash, LeanStatus: "PASSED", KernelPassed: true, AxiomsPassed: true,
		DossierAttachmentStatus: "NOT_ATTACHED",
	}
	info := importedProofReceiptInfo{
		EvidenceID: packet.LeanEvidenceID, ReceiptSHA256: receiptHash, ProblemID: dossier.Problem.ID,
		StatementSHA256: statementHash, ProofSHA256: packet.ProofSHA256,
	}
	dossierBytes, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	prepared, err := prepareImportedProofCandidateRevision(dossier, dossierBytes, packet, hex.EncodeToString(packetHash[:]), info)
	if err != nil {
		t.Fatalf("prepareImportedProofCandidateRevision() error = %v", err)
	}
	if prepared.revision.Case.Version != dossier.Case.Version+1 || prepared.revision.M4Receipt != nil ||
		len(prepared.revision.ImportedProofCandidates) != 1 || prepared.reference.Status != domain.ImportedProofCandidateOnlyStatus ||
		prepared.reference.RightsStatus != domain.ImportedProofRightsClearedByCatalog || prepared.reference.SourceUseDisposition != domain.ImportedProofSingleCheckDisposition {
		t.Fatalf("candidate revision = %#v; want one candidate ref, no M4, and only the pinned catalog's existing clearance", prepared)
	}
	if len(prepared.revision.Verifications) != len(dossier.Verifications) {
		t.Fatal("candidate attachment changed the number of dossier gates")
	}
	for index := range dossier.Verifications {
		if !reflect.DeepEqual(prepared.revision.Verifications[index], dossier.Verifications[index]) {
			t.Fatalf("candidate attachment changed verification gate %d", index)
		}
	}
	if err := prepared.revision.Validate(); err != nil {
		t.Fatalf("candidate-only dossier revision does not validate: %v", err)
	}
}

func TestImportedProofCandidateRevisionRejectsRightsGrantAndExistingM4(t *testing.T) {
	dossier := importedProofTestDossier()
	statementHash, _ := domain.ProblemStatementDigest(dossier.Problem.ID, dossier.Problem.Statement, dossier.Problem.LeanStatement)
	proofHash := sha256.Sum256([]byte("by rfl"))
	packet := importedProofPacket{
		SchemaVersion: importedProofSchema, Status: "VERIFIED_FOR_EXACT_FORMAL_STATEMENT",
		ProblemID: dossier.Problem.ID, ProblemStatementSHA256: statementHash,
		ProofSHA256: hex.EncodeToString(proofHash[:]), RightsStatus: domain.ImportedProofRightsClearedByCatalog,
		M0CatalogSnapshotSHA256: dossier.CatalogSnapshotSHA256, M0StatementAuditEvidenceID: "human-review-evidence",
		ProblemM0StatusInput: dossier.Problem.M0Status, SourceUseAuthorizationStatus: "CLEARED_BY_PINNED_M0_CATALOG",
		SourceLabelStatus: "OPERATOR_ENTERED_NOT_VERIFIED",
		ExecutionScope:    domain.ImportedProofSingleCheckDisposition, NoveltyStatus: "NOT_ASSESSED",
		HumanReviewRequired: true, LeanEvidenceID: "lean-33333333333333333333333333333333",
		LeanReceiptFile: "lean-33333333333333333333333333333333.json", LeanReceiptSHA256: strings.Repeat("c", 64),
		LeanStatus: "PASSED", KernelPassed: true, AxiomsPassed: true, DossierAttachmentStatus: "NOT_ATTACHED",
	}
	info := importedProofReceiptInfo{EvidenceID: packet.LeanEvidenceID, ReceiptSHA256: packet.LeanReceiptSHA256,
		ProblemID: packet.ProblemID, StatementSHA256: statementHash, ProofSHA256: packet.ProofSHA256}
	dossierBytes, _ := json.Marshal(dossier)
	packetHash := strings.Repeat("d", 64)
	packet.RightsStatus = "CLEARED_FOR_PROOF_USE"
	if _, err := prepareImportedProofCandidateRevision(dossier, dossierBytes, packet, packetHash, info); err == nil {
		t.Fatal("attachment accepted a packet that asserts a source-rights grant")
	}
	packet.RightsStatus = domain.ImportedProofRightsClearedByCatalog
	dossier.M4Receipt = &domain.M4ReceiptReference{EvidenceID: "existing-m4", ReceiptSHA256: strings.Repeat("e", 64)}
	dossierBytes, _ = json.Marshal(dossier)
	if _, err := prepareImportedProofCandidateRevision(dossier, dossierBytes, packet, packetHash, info); err == nil || !strings.Contains(err.Error(), "already has an M4 receipt") {
		t.Fatalf("existing M4 refusal = %v; want first-attachment-only refusal", err)
	}
}

func TestImportedProofArtifactStoreIsImmutableAndReusesExactBytes(t *testing.T) {
	root := t.TempDir()
	packetBytes := []byte("packet bytes")
	receiptBytes := []byte("receipt bytes")
	packetDigest := sha256.Sum256(packetBytes)
	receiptDigest := sha256.Sum256(receiptBytes)
	packetRelative := "cases/case-draft/imported-proof-candidates/" + hex.EncodeToString(packetDigest[:]) + ".packet.json"
	receiptRelative := "cases/case-draft/imported-proof-candidates/" + hex.EncodeToString(receiptDigest[:]) + ".lean-receipt.json"
	if err := ensureImportedProofArtifactFiles(root, "case-draft", packetRelative, packetBytes, receiptRelative, receiptBytes); err != nil {
		t.Fatalf("write candidate artifacts: %v", err)
	}
	if err := ensureImportedProofArtifactFiles(root, "case-draft", packetRelative, packetBytes, receiptRelative, receiptBytes); err != nil {
		t.Fatalf("replay exact candidate artifacts: %v", err)
	}
	packetPath := filepath.Join(root, filepath.FromSlash(packetRelative))
	if err := os.WriteFile(packetPath, []byte("changed"), 0o600); err != nil {
		t.Fatal(err)
	}
	if err := ensureImportedProofArtifactFiles(root, "case-draft", packetRelative, packetBytes, receiptRelative, receiptBytes); err == nil || !strings.Contains(err.Error(), "different bytes") {
		t.Fatalf("changed content-addressed artifact error = %v; want immutability refusal", err)
	}
}

func importedProofTestDossier() domain.Dossier {
	dossier := minimalDossierForCLI()
	dossier.Case.Version = 4
	dossier.CatalogSnapshotSHA256 = strings.Repeat("9", 64)
	dossier.Problem = domain.MathProblem{
		ID: "problem-draft", Title: "Reflexivity", Statement: "Every natural number equals itself.",
		LeanStatement: "∀ n : Nat, n = n", M0Status: "UNASSESSED",
	}
	now := time.Date(2026, time.November, 12, 12, 0, 0, 0, time.UTC)
	dossier.Verifications = make([]domain.VerificationRecord, 0, 7)
	for _, gate := range []domain.VerificationGate{
		domain.GateKernelBuild, domain.GateAxiomAudit, domain.GateStatementFidelity,
		domain.GateFalsification, domain.GateEssentiality, domain.GateProvenanceLeakage,
		domain.GateLiteratureAndStatus,
	} {
		dossier.Verifications = append(dossier.Verifications, domain.VerificationRecord{
			Gate: gate, Status: domain.VerificationPending, Summary: "Not yet assessed.", RecordedAt: now,
		})
	}
	return dossier
}

func importedProofCatalog(t *testing.T, problem domain.MathProblem, statementAuditPassed bool, allowedUses []catalog.SourceUse) catalog.Snapshot {
	t.Helper()
	now := time.Date(2026, time.November, 12, 12, 0, 0, 0, time.UTC)
	source := catalog.SourceVersion{
		ID: problem.SourceIDs[0], URL: "https://example.invalid/grimoire-tutorial",
		ItemLocator: "tutorial/1.1", Lane: catalog.LaneMathlibProofPairs, Revision: "fixture-revision",
		RetrievedAt: now, ContentSHA256: strings.Repeat("a", 64), AuthorOrHolder: "Synthetic rights holder",
		License: "Apache-2.0", LicenseTermsURL: "https://www.apache.org/licenses/LICENSE-2.0",
		TermsNote: "Synthetic test permission only.", Attribution: "Synthetic fixture attribution.",
		RightsReviewerID: "synthetic-reviewer", RightsReviewedAt: now, RightsEvidenceID: "synthetic-rights-evidence",
		Rights: catalog.RightsCleared, AllowedUses: append([]catalog.SourceUse(nil), allowedUses...),
	}
	problemRecord := catalog.Problem{
		ID: problem.ID, Title: problem.Title, InformalStatement: problem.Statement, LeanStatement: problem.LeanStatement,
		Status: catalog.StatusUnassessed, SourceIDs: append([]string(nil), problem.SourceIDs...),
		StatementAudit: catalog.StatementAuditRecord{
			BackTranslation: "Synthetic exact back-translation.", ReviewerID: "synthetic-human-reviewer",
			ReviewedAt: now, Passed: statementAuditPassed, EvidenceID: "review-grimoire-statement",
		},
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, []catalog.Problem{problemRecord})
	if err != nil {
		t.Fatalf("construct synthetic M0 catalog snapshot: %v", err)
	}
	return snapshot
}
