package application

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/persistence"
	"github.com/DarthCeltic/MathCase/internal/poser"
)

func TestSignedPoseParentLoaderRefusesDraftBeforeM8EvidenceReopen(t *testing.T) {
	root := t.TempDir()
	store, err := persistence.NewDossierStore(root)
	if err != nil {
		t.Fatal(err)
	}
	dossier, snapshot, declaration, proof := signedPoseParentFixture(t)
	stored, err := store.Put(context.Background(), dossier)
	if err != nil {
		t.Fatalf("Put() draft dossier: %v", err)
	}
	loader := SignedPoseParentLoader{Dossiers: store}
	reference := SignedPoseParentReference{
		CaseID: dossier.Case.ID, DossierSHA256: stored.ContentSHA256, SignerID: "owner-held-signer",
		CatalogSnapshotPath: "catalog-snapshot.json",
		Catalog:             snapshot, LeanDeclaration: declaration, VerifiedProof: proof,
	}
	if _, err := loader.Load(context.Background(), reference); err == nil || !strings.Contains(err.Error(), "gate V3 has not passed") {
		t.Fatalf("Load() for a synthetic draft = %v, want the unauthenticated V3 refusal before M8", err)
	}
}

func TestSignedPoseParentLoaderCannotTreatDraftAsTrustedParent(t *testing.T) {
	root := t.TempDir()
	store, err := persistence.NewDossierStore(root)
	if err != nil {
		t.Fatal(err)
	}
	dossier, snapshot, declaration, proof := signedPoseParentFixture(t)
	stored, err := store.Put(context.Background(), dossier)
	if err != nil {
		t.Fatalf("Put() draft dossier: %v", err)
	}
	loader := SignedPoseParentLoader{Dossiers: store}
	reference := SignedPoseParentReference{
		CaseID: dossier.Case.ID, DossierSHA256: stored.ContentSHA256, SignerID: "owner-held-signer",
		CatalogSnapshotPath: "catalog-snapshot.json",
		Catalog:             snapshot, LeanDeclaration: declaration, VerifiedProof: proof,
	}
	if _, err := loader.Load(context.Background(), reference); err == nil || !strings.Contains(err.Error(), "gate V3 has not passed") {
		t.Fatalf("Load() accepted a draft without authenticated V3 evidence: %v", err)
	}
}

func signedPoseParentFixture(t *testing.T) (domain.Dossier, catalog.Snapshot, string, string) {
	t.Helper()
	now := time.Date(2026, time.October, 20, 17, 0, 0, 0, time.UTC)
	declaration := "theorem source_refl (n : Nat) : n = n"
	formal, err := (poser.VerifiedTheorem{LeanStatement: declaration}).FormalProposition()
	if err != nil {
		t.Fatalf("parse fixture Lean declaration: %v", err)
	}
	statement := "Every natural number equals itself."
	proof := "by\n  rfl\n"
	proofDigest := digestOf(proof)
	statementDigest, err := domain.ProblemStatementDigest("nat-self-eq", statement, formal)
	if err != nil {
		t.Fatal(err)
	}
	catalogSource := catalog.SourceVersion{
		ID: "source-refl", URL: "https://example.test/source-refl", ItemLocator: "theorems/source-refl",
		Lane: catalog.LaneMathlibProofPairs, Revision: "commit-1", RetrievedAt: now,
		ContentSHA256: strings.Repeat("b", 64), AuthorOrHolder: "Test publisher", License: "Apache-2.0",
		LicenseTermsURL: "https://www.apache.org/licenses/LICENSE-2.0", TermsNote: "Reviewed for local storage and derivative use.",
		Attribution: "Test publisher, source-refl", AllowedUses: []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseDerivative},
		RightsReviewerID: "reviewer-rights", RightsReviewedAt: now, RightsEvidenceID: "rights-evidence", Rights: catalog.RightsCleared,
	}
	catalogProblem := catalog.Problem{
		ID: "nat-self-eq", Title: "Natural numbers equal themselves", InformalStatement: statement, LeanStatement: formal,
		Status: catalog.StatusProven, SourceIDs: []string{"source-refl"},
		StatementAudit: catalog.StatementAuditRecord{BackTranslation: statement, ReviewerID: "reviewer-v3", ReviewedAt: now, Passed: true, EvidenceID: "catalog-v3-evidence"},
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{catalogSource}, []catalog.Problem{catalogProblem})
	if err != nil {
		t.Fatalf("NewSnapshot() error = %v", err)
	}
	problem := domain.MathProblem{
		ID: "nat-self-eq", Title: catalogProblem.Title, Statement: statement,
		LeanStatement: formal, SourceIDs: []string{"source-refl"},
	}
	evidence := []domain.Evidence{
		fixtureEvidence("evidence-proof", now),
	}
	expositions := []domain.Exposition{
		{Tier: domain.TierHighSchool, Text: "Every number equals itself.", CoreInsightID: "nat-self-eq-core", CoreInsight: "Use reflexivity.", ProofRef: "proof.lean"},
		{Tier: domain.TierAssociate, Text: "Equality is reflexive for every natural number.", CoreInsightID: "nat-self-eq-core", CoreInsight: "Use reflexivity.", ProofRef: "proof.lean"},
		{Tier: domain.TierBachelor, Text: "The proposition follows from the reflexivity constructor for equality.", CoreInsightID: "nat-self-eq-core", CoreInsight: "Use reflexivity.", ProofRef: "proof.lean"},
		{Tier: domain.TierMaster, Text: "The goal is an instance of the equality relation's reflexivity rule.", CoreInsightID: "nat-self-eq-core", CoreInsight: "Use reflexivity.", ProofRef: "proof.lean"},
		{Tier: domain.TierDoctorate, Text: "For any term, the identity type at that term is inhabited by its reflexivity constructor.", CoreInsightID: "nat-self-eq-core", CoreInsight: "Use reflexivity.", ProofRef: "proof.lean"},
	}
	evaluations, evaluationEvidence := signedPoseEvaluationFixtures(t, expositions, now, proofDigest)
	evidence = append(evidence, evaluationEvidence...)
	verificationRecords := make([]domain.VerificationRecord, 0, 7)
	for _, gate := range []domain.VerificationGate{
		domain.GateKernelBuild, domain.GateAxiomAudit, domain.GateStatementFidelity, domain.GateFalsification,
		domain.GateEssentiality, domain.GateProvenanceLeakage, domain.GateLiteratureAndStatus,
	} {
		record := domain.VerificationRecord{
			Gate: gate, Status: domain.VerificationBlocked, Summary: "Synthetic draft; independent evidence has not been authenticated.",
			ProblemID: "nat-self-eq", ProblemStatementSHA256: statementDigest, RecordedAt: now,
		}
		switch gate {
		case domain.GateKernelBuild:
			record.Status = domain.VerificationPassed
			record.Summary = "Exact proof fields are present as synthetic fixture data."
			record.EvidenceIDs = []string{"evidence-proof"}
			record.ProofSHA256 = proofDigest
			record.LeanToolchain = "leanprover/lean4:v4.33.1"
			record.ExpectedLeanToolchain = record.LeanToolchain
		case domain.GateAxiomAudit:
			record.Status = domain.VerificationPassed
			record.Summary = "Exact proof fields are present as synthetic fixture data."
			record.EvidenceIDs = []string{"evidence-proof"}
			record.ProofSHA256 = proofDigest
		case domain.GateEssentiality:
			record.ProofSHA256 = proofDigest
		case domain.GateProvenanceLeakage:
			record.ArtifactSHA256 = snapshot.ContentSHA256
			record.SourceIDs = []string{"source-refl"}
		}
		if len(record.EvidenceIDs) > 0 && gate != domain.GateKernelBuild && gate != domain.GateAxiomAudit {
			record.EvidenceArtifacts = testEvidenceArtifactRefs(record.EvidenceIDs)
		}
		verificationRecords = append(verificationRecords, record)
	}
	dossier := domain.Dossier{
		SchemaVersion:            domain.DossierSchemaVersion,
		AuthorCallAccounting:     signedParentAccountingFixture(now),
		CatalogSnapshotSHA256:    snapshot.ContentSHA256,
		M4Receipt:                &domain.M4ReceiptReference{EvidenceID: "evidence-proof", ReceiptSHA256: strings.Repeat("e", 64)},
		Case:                     domain.Case{ID: "case-nat-self-eq", Question: statement, Status: domain.CaseStatusCompleted, Phase: domain.PhaseComplete, CreatedAt: now, UpdatedAt: now, Version: 1},
		Problem:                  problem,
		ProvenanceArtifactSHA256: snapshot.ContentSHA256,
		Claims:                   []domain.Claim{{ID: "claim-self-eq", CaseID: "case-nat-self-eq", Text: statement, Importance: domain.PriorityP0, Status: domain.ClaimStatusSupported, Assessment: domain.Assessment{Confidence: 1, Rationale: "Signed fixture."}, EvidenceIDs: []string{"evidence-proof"}, CreatedAt: now, UpdatedAt: now}},
		Sources:                  []domain.Source{{ID: "source-refl", CaseID: "case-nat-self-eq", URL: catalogSource.URL, Title: catalogProblem.Title, SourceType: domain.SourceTypePrimary, Primary: true, FetchStatus: domain.FetchStatusOK, AuditStatus: domain.AuditStatusAudited}},
		Evidence:                 evidence,
		Attempts:                 []domain.SolverAttempt{{ID: "attempt-refl", RunID: "run-refl", ProblemID: "nat-self-eq", CandidateID: "candidate-refl", Stage: domain.SolverStageS0, Toolchain: "leanprover/lean4:v4.33.1", VerifiedProofSHA256: digestOf(proof), Outcome: domain.SolverOutcomePass, StartedAt: now, FinishedAt: now.Add(time.Second), EvidenceIDs: []string{"evidence-proof"}}},
		Argument:                 domain.Argument{ClaimID: "claim-self-eq", CoreInsight: "Equality is reflexive.", Text: "Apply reflexivity to the term.", EvidenceIDs: []string{"evidence-proof"}, CreatedAt: now},
		Verifications:            verificationRecords, Expositions: expositions, ExpositionEvaluations: evaluations,
		Verdict: domain.Verdict{Status: domain.VerdictProven, Summary: "The signed fixture states a proven result.", EvidenceIDs: []string{"evidence-proof"}, RecordedAt: now},
	}
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "gate V3 has not passed") {
		t.Fatalf("synthetic draft readiness = %v, want unauthenticated V3 refusal", err)
	}
	return dossier, snapshot, declaration, proof
}

func testEvidenceArtifactRefs(evidenceIDs []string) []domain.EvidenceArtifactRef {
	refs := make([]domain.EvidenceArtifactRef, 0, len(evidenceIDs))
	for _, evidenceID := range evidenceIDs {
		digest := sha256.Sum256([]byte("MathCase application test evidence artifact\n" + evidenceID))
		refs = append(refs, domain.EvidenceArtifactRef{EvidenceID: evidenceID, ArtifactSHA256: hex.EncodeToString(digest[:])})
	}
	return refs
}

func signedParentAccountingFixture(now time.Time) *budget.CostCallReceipt {
	const callID = "m7call-signed-parent-fixture"
	started := now.UTC()
	start := budget.CostRecord{
		ID: callID, CallState: budget.CallStarted, RunID: "run-signed-parent-fixture",
		ProviderID: "provider-test", AccountProfile: "account-test",
		Model: "author-v1", ModelVersion: "1", TaskID: budget.TaskM7Expositor,
		CandidateID: "nat-self-eq", ProviderCallID: callID, StartedAt: started,
		CostCeilingMicros: 10, EstimatedCostMicros: 10,
	}
	finish := start
	finish.CallState = budget.CallFinished
	finish.FinishedAt = started.Add(time.Second)
	finish.Latency = time.Second
	finish.ProviderOutcome = "returned"
	finish.GenerationOutcome = "complete"
	finish.DecoderOutcome = "accepted"
	prefix := []byte("synthetic signed-parent journal prefix\n")
	return &budget.CostCallReceipt{
		SchemaVersion: budget.CostCallReceiptSchemaVersion,
		CallID:        callID, JournalPrefixSHA256: digestOf(string(prefix)),
		JournalPrefixBytes: int64(len(prefix)), StartEvent: 1, FinishEvent: 2,
		Start: start, Finish: finish,
	}
}

func fixtureEvidence(id string, now time.Time) domain.Evidence {
	return domain.Evidence{ID: id, CaseID: "case-nat-self-eq", ClaimID: "claim-self-eq", SourceID: "source-refl", Summary: "Signed fixture evidence.", Stance: domain.StanceSupports, Strength: 1, Independence: 1, AuditStatus: domain.AuditStatusAudited, AddedByRunID: "run-refl", CreatedAt: now}
}

func signedPoseEvaluationFixtures(t *testing.T, expositions []domain.Exposition, now time.Time, proofDigest string) ([]domain.ExpositionEvaluation, []domain.Evidence) {
	t.Helper()
	policy := domain.ExpositionEvaluationPolicy{Version: "signed-parent-test-v1", MinimumRoundTripScore: 0.7, MinimumCanonScore: 0.7, MaximumNgramOverlap: 0, MaximumStructureOverlap: 0, TransferWeight: 0.7, ProgressWeight: 0.1, LengthExponent: 1}
	policyDigest, err := policy.Digest()
	if err != nil {
		t.Fatal(err)
	}
	moves := domain.RequiredExpositionCanonMoves()
	evaluations := make([]domain.ExpositionEvaluation, 0, len(expositions))
	evidence := make([]domain.Evidence, 0, len(expositions)*4)
	for index, exposition := range expositions {
		prefix := "evidence-m7-" + string(rune('1'+index))
		roundTripID, canonID, leakageID, studentID := prefix+"-roundtrip", prefix+"-canon", prefix+"-leakage", prefix+"-student"
		canonScores := make([]domain.ExpositionMoveScore, 0, len(moves))
		for _, move := range moves {
			canonScores = append(canonScores, domain.ExpositionMoveScore{Move: move, Score: 0.8})
		}
		expositionDigest, err := domain.ExpositionDigest(exposition)
		if err != nil {
			t.Fatal(err)
		}
		wordCount := len(strings.Fields(exposition.Text))
		evaluations = append(evaluations, domain.ExpositionEvaluation{
			Tier: exposition.Tier, AuthorCallID: "m7call-signed-parent-fixture", ProblemID: "nat-self-eq", ProofSHA256: proofDigest,
			ExpositionSHA256: expositionDigest, CanonSnapshotSHA256: strings.Repeat("c", 64), PolicySHA256: policyDigest, Policy: policy,
			AuthorModelID: "author-v1", AuthorModelVersion: "1", RoundTrip: domain.ExpositionRoundTripReview{ModelID: "roundtrip-v1", ModelVersion: "1", Frozen: true, Score: 0.9, RequiredFacts: []string{"statement"}, RecoveredFacts: []string{"statement"}, EvidenceID: roundTripID},
			Canon:    domain.ExpositionCanonReview{ModelID: "canon-v1", ModelVersion: "1", Frozen: true, Scores: canonScores, EvidenceID: canonID},
			Leakage:  domain.ExpositionLeakageAudit{Method: "test", Passed: true, EvidenceID: leakageID},
			Student:  domain.ExpositionStudentLift{ModelID: "student-v1", ModelVersion: "1", Frozen: true, AttemptBudget: 5, TargetBaseline: 0.1, TargetWithExposition: 0.3, TransferBaseline: 0.2, TransferWithExposition: 0.4, ProgressLift: 0.1, EvidenceID: studentID},
			Accepted: true, Score: 0.21 / float64(wordCount), RecordedAt: now,
		})
		for _, evidenceID := range []string{roundTripID, canonID, leakageID, studentID} {
			evidence = append(evidence, fixtureEvidence(evidenceID, now))
		}
	}
	return evaluations, evidence
}

func digestOf(value string) string {
	digest := sha256.Sum256([]byte(value))
	return hex.EncodeToString(digest[:])
}
