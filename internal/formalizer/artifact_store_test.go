package formalizer

import (
	"context"
	"encoding/json"
	"errors"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestDurableArtifactStoreReopensExactM0ClearanceAndV3Handoff(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	frontend := Frontend{
		Generator:         &fakeGenerator{generation: validGeneration(request)},
		Checker:           newFakeChecker(t),
		ClearanceVerifier: preflight,
	}
	snapshotBytes, err := json.Marshal(preflight.Snapshot)
	if err != nil {
		t.Fatalf("marshal exact fixture M0 snapshot: %v", err)
	}
	store, err := NewArtifactStore(filepath.Join(t.TempDir(), "formalizer-artifacts"))
	if err != nil {
		t.Fatalf("NewArtifactStore() error = %v", err)
	}
	evidence := ArtifactEvidenceInputs{
		CatalogSnapshotBytes:   snapshotBytes,
		SourceItemBytes:        preflight.SourceItemBytes["source-001"],
		ClearanceRegisterBytes: preflight.ClearanceRegisterBytes,
	}
	result, first, err := frontend.GenerateAndPersist(context.Background(), request, store, evidence)
	if err != nil {
		t.Fatalf("GenerateAndPersist() error = %v", err)
	}
	second, err := store.Put(context.Background(), NewDurableArtifact(result, snapshotBytes, evidence.SourceItemBytes, evidence.ClearanceRegisterBytes))
	if err != nil || first != second {
		t.Fatalf("idempotent Put() = (%#v, %v), want identical receipt %#v", second, err, first)
	}

	reopened, receipt, err := store.Get(context.Background(), first.ArtifactSHA256)
	if err != nil {
		t.Fatalf("Get() error = %v", err)
	}
	if receipt != first || string(reopened.CatalogSnapshotBytes) != string(snapshotBytes) ||
		string(reopened.SourceItemBytes) != string(evidence.SourceItemBytes) ||
		string(reopened.ClearanceRegisterBytes) != string(evidence.ClearanceRegisterBytes) ||
		reopened.Result.GenerationResponse != result.GenerationResponse {
		t.Fatal("Get() did not preserve the exact M0, source, clearance, and generator-response bytes")
	}

	handoff, err := store.OpenV3(context.Background(), first.ArtifactSHA256)
	if err != nil {
		t.Fatalf("OpenV3() error = %v", err)
	}
	if handoff.Artifact.ArtifactSHA256 != first.ArtifactSHA256 || handoff.Seed.LeanCandidate != result.Candidate ||
		handoff.Seed.CandidateRevision != result.CandidateRevision || handoff.Snapshot.ContentSHA256 != request.Source.CatalogSnapshotSHA256 ||
		handoff.Result.Status != statusPropositionPass {
		t.Fatalf("OpenV3() handoff = %#v, want exact persisted candidate with a non-passing V3 seed", handoff)
	}
	if handoff.Seed.BackTranslationIsGroundTruth {
		t.Fatal("OpenV3() treated the later back-translation as ground truth")
	}
}

func TestFormalizerCandidateAttachesToM8AndReopensWithoutPassingV3(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	snapshotBytes, err := json.Marshal(preflight.Snapshot)
	if err != nil {
		t.Fatalf("marshal exact fixture M0 snapshot: %v", err)
	}
	storeRoot := filepath.Join(t.TempDir(), "formalizer-artifacts")
	store, err := NewArtifactStore(storeRoot)
	if err != nil {
		t.Fatalf("NewArtifactStore() error = %v", err)
	}
	result, receipt, err := (Frontend{
		Generator:         &fakeGenerator{generation: validGeneration(request)},
		Checker:           newFakeChecker(t),
		ClearanceVerifier: preflight,
	}).GenerateAndPersist(context.Background(), request, store, ArtifactEvidenceInputs{
		CatalogSnapshotBytes:   snapshotBytes,
		SourceItemBytes:        preflight.SourceItemBytes["source-001"],
		ClearanceRegisterBytes: preflight.ClearanceRegisterBytes,
	})
	if err != nil || result.Status != statusPropositionPass || receipt.ArtifactSHA256 == "" {
		t.Fatalf("GenerateAndPersist() = (%#v, %#v, %v)", result, receipt, err)
	}

	dossier := formalizerCandidateDossierFixture(preflight, request)
	if err := dossier.Validate(); err != nil {
		t.Fatalf("validate starting M8 draft: %v", err)
	}
	updated, handoff, err := store.AttachCandidateToDossier(context.Background(), dossier, receipt.ArtifactSHA256)
	if err != nil {
		t.Fatalf("AttachCandidateToDossier() error = %v", err)
	}
	if len(updated.FormalizerCandidateArtifacts) != 1 || updated.FormalizerCandidateArtifacts[0] != (domain.FormalizerCandidateArtifactRef{
		ArtifactSHA256: receipt.ArtifactSHA256, CandidateID: result.Candidate.CandidateID,
		CandidateRevisionSHA256: result.CandidateRevision.SHA256, GenerationReceiptID: result.RunReceipt.ReceiptID,
	}) {
		t.Fatalf("attached M8 candidate reference = %#v", updated.FormalizerCandidateArtifacts)
	}
	if updated.Problem.LeanStatement != dossier.Problem.LeanStatement || handoff.Seed.LeanCandidate != result.Candidate ||
		updated.Verifications[2].Status != domain.VerificationPending {
		t.Fatal("candidate attachment changed M0 or advanced V3")
	}
	if err := updated.Validate(); err != nil {
		t.Fatalf("validate candidate-linked M8 revision: %v", err)
	}

	reopenedStore, err := OpenArtifactStore(storeRoot)
	if err != nil {
		t.Fatalf("OpenArtifactStore() error = %v", err)
	}
	report, err := reopenedStore.AuditDossierCandidateArtifacts(context.Background(), updated)
	if err != nil || report.Status != "REOPENED_ALL" || report.CandidateCount != 1 || report.Candidates[0].GenerationReceiptID != result.RunReceipt.ReceiptID {
		t.Fatalf("AuditDossierCandidateArtifacts() = (%#v, %v), want one fully reopened candidate", report, err)
	}
	if _, _, err := store.AttachCandidateToDossier(context.Background(), updated, receipt.ArtifactSHA256); err == nil || !strings.Contains(err.Error(), "already attached") {
		t.Fatalf("duplicate candidate attachment error = %v, want refusal", err)
	}

	misbound := updated
	misbound.FormalizerCandidateArtifacts = append([]domain.FormalizerCandidateArtifactRef(nil), updated.FormalizerCandidateArtifacts...)
	misbound.FormalizerCandidateArtifacts[0].CandidateRevisionSHA256 = strings.Repeat("0", 64)
	if _, err := reopenedStore.AuditDossierCandidateArtifacts(context.Background(), misbound); err == nil || !strings.Contains(err.Error(), "does not match") {
		t.Fatalf("misbound candidate reference audit error = %v, want identity refusal", err)
	}
}

func TestDurableV3CandidateHandoffAssessesPersistedCandidateWithoutPassingV3(t *testing.T) {
	t.Parallel()
	preflight, request := pinnedPreflightFixture(t)
	snapshotBytes, err := json.Marshal(preflight.Snapshot)
	if err != nil {
		t.Fatalf("Marshal(pinned M0 snapshot) error = %v", err)
	}
	store, err := NewArtifactStore(filepath.Join(t.TempDir(), "formalizer-artifacts"))
	if err != nil {
		t.Fatalf("NewArtifactStore() error = %v", err)
	}
	frontend := Frontend{
		Generator:         &fakeGenerator{generation: validGeneration(request)},
		Checker:           newFakeChecker(t),
		ClearanceVerifier: preflight,
	}
	result, err := frontend.GenerateCandidate(context.Background(), request)
	if err != nil {
		t.Fatalf("GenerateCandidate() error = %v", err)
	}
	artifact := NewDurableArtifact(result, snapshotBytes, preflight.SourceItemBytes["source-001"], preflight.ClearanceRegisterBytes)
	artifactReceipt, err := store.Put(context.Background(), artifact)
	if err != nil {
		t.Fatalf("Put(durable source-only formalizer candidate) error = %v", err)
	}
	handoff, err := store.OpenV3(context.Background(), artifactReceipt.ArtifactSHA256)
	if err != nil {
		t.Fatalf("OpenV3(%q) error = %v", artifactReceipt.ArtifactSHA256, err)
	}
	statementFile := []byte("-- synthetic candidate source; not executed\ntheorem candidate_001 : " + result.Candidate.LeanStatement + " := by intro n; rfl\n")
	at := time.Date(2026, time.October, 21, 7, 0, 0, 0, time.UTC)
	review := domain.V3StatementFidelity{
		Source: request.Source,
		Lean: domain.V3LeanStatementPin{
			AuthorID: "synthetic-formalizer-author", Revision: "synthetic-candidate-revision",
			FileLocator: "synthetic/Candidate.lean", DeclarationName: result.Candidate.DeclarationName,
			SourceFileSHA256: digestBytes(statementFile), NormalizedStatement: result.Candidate.LeanStatement,
			NormalizedStatementSHA256: digestText(result.Candidate.LeanStatement), EvidenceID: "synthetic-lean-file-evidence",
		},
		BackTranslation: domain.V3BackTranslation{
			Text: "For each natural number n, n equals itself.", ProducedByID: "synthetic-independent-witness",
			Role: domain.V3BackTranslationWitnessRole, RecordedAt: at, EvidenceID: "synthetic-back-translation-evidence",
		},
		SemanticComparison: domain.V3SemanticComparison{
			Status: domain.V3SemanticPass, Differences: []domain.V3SemanticDifference{}, Rationale: "Synthetic unit fixture only.",
			UnresolvedAssumptions: []string{}, ReviewerID: "synthetic-independent-reviewer", HumanSpotReview: true,
			ReviewerAccepted: true, RecordedAt: at, EvidenceID: "synthetic-semantic-comparison-evidence",
		},
		NaturalParameterApplicability: domain.V3NaturalParametersPresent,
		MeaningfulNaturalParameters:   []string{"n"},
		EmptyObjectApplicability:      domain.V3EmptyObjectNotApplicable,
		BoundaryProbes: []domain.V3BoundaryProbe{
			{Kind: domain.V3BoundaryNaturalValue, ParameterID: "n", Value: "0", SourceInstance: "synthetic source n=0", LeanInstance: "synthetic Lean n=0", Outcome: domain.V3BoundaryConsistent, Rationale: "Synthetic fixture only.", EvidenceID: "synthetic-boundary-n0-evidence"},
			{Kind: domain.V3BoundaryNaturalValue, ParameterID: "n", Value: "1", SourceInstance: "synthetic source n=1", LeanInstance: "synthetic Lean n=1", Outcome: domain.V3BoundaryConsistent, Rationale: "Synthetic fixture only.", EvidenceID: "synthetic-boundary-n1-evidence"},
			{Kind: domain.V3BoundaryEmptyObject, ParameterID: "empty", Value: "empty", Outcome: domain.V3BoundaryNotApplicable, Rationale: "Synthetic fixture only; empty object does not apply to this statement.", EvidenceID: "synthetic-empty-probe-evidence"},
		},
		IndependentRoute: "synthetic-test-review-route",
	}
	assessment, err := handoff.Assess(review, at.Add(time.Minute))
	if err != nil {
		t.Fatalf("V3CandidateHandoff.Assess(%q) error = %v", artifactReceipt.ArtifactSHA256, err)
	}
	if assessment.Status != CandidateV3AssessmentStatus || assessment.CandidateID != result.Candidate.CandidateID || assessment.V3Record.Status == domain.VerificationPassed {
		t.Errorf("Assess(%q) identity/status = (%q, %q, %q), want exact reopened candidate, CANDIDATE_ONLY, and non-passing V3", artifactReceipt.ArtifactSHA256, assessment.CandidateID, assessment.Status, assessment.V3Record.Status)
	}
	if assessment.CatalogSnapshotSHA256 != preflight.Snapshot.ContentSHA256 || assessment.GenerationReceiptID != result.RunReceipt.ReceiptID ||
		assessment.StatementCheckEvidenceID != result.StatementCheck.EvidenceID {
		t.Errorf("Assess(%q) evidence pins = (%q, %q, %q), want the persisted M0, generation, and proposition-check identities", artifactReceipt.ArtifactSHA256, assessment.CatalogSnapshotSHA256, assessment.GenerationReceiptID, assessment.StatementCheckEvidenceID)
	}
	if handoff.Snapshot.Problems[0].LeanStatement != "" || handoff.Snapshot.Problems[0].StatementAudit.Passed {
		t.Error("Assess() mutated the reopened M0 snapshot; want source-only M0 unchanged")
	}
}

func TestDurableArtifactStoreReopensOutputLimitAsInfrastructureFailure(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	candidate := validCandidate(request)
	check := outputLimitedStatementCheck(checkReceipt(t, request, candidate, false, "OUTPUT_LIMIT"))
	snapshotBytes, err := json.Marshal(preflight.Snapshot)
	if err != nil {
		t.Fatalf("marshal exact M0 snapshot: %v", err)
	}
	store, err := NewArtifactStore(filepath.Join(t.TempDir(), "formalizer-artifacts"))
	if err != nil {
		t.Fatal(err)
	}
	frontend := Frontend{
		Generator:         &fakeGenerator{generation: validGeneration(request)},
		Checker:           &fakeChecker{t: t, receipt: check},
		ClearanceVerifier: preflight,
	}
	result, receipt, err := frontend.GenerateAndPersist(context.Background(), request, store, ArtifactEvidenceInputs{
		CatalogSnapshotBytes:   snapshotBytes,
		SourceItemBytes:        preflight.SourceItemBytes["source-001"],
		ClearanceRegisterBytes: preflight.ClearanceRegisterBytes,
	})
	if err != nil || receipt.ArtifactSHA256 == "" || result.Status != statusCheckerError || result.FailureClass != infrastructureFailureClass {
		t.Fatalf("GenerateAndPersist(OUTPUT_LIMIT) = (%#v, %#v, %v), want a stored infrastructure result", result, receipt, err)
	}
	reopened, _, err := store.Get(context.Background(), receipt.ArtifactSHA256)
	if err != nil {
		t.Fatalf("Get(OUTPUT_LIMIT artifact) error = %v", err)
	}
	if reopened.Result.StatementCheck == nil || reopened.Result.StatementCheck.Status != "OUTPUT_LIMIT" ||
		reopened.Result.StatementCheck.OutputLimitBytes != 8 || string(reopened.Result.StatementCheck.StdoutPrefix) != "12345678" {
		t.Fatalf("reopened statement-check receipt = %#v, want raw bounded prefix and cap", reopened.Result.StatementCheck)
	}
	if _, err := store.OpenV3(context.Background(), receipt.ArtifactSHA256); err == nil {
		t.Fatal("OpenV3 accepted an OUTPUT_LIMIT checker result as an elaborated candidate")
	}

	misbound := reopened
	misbound.Result.StatementCheck.StdoutCapturedSHA256 = testDigestText("different")
	if err := misbound.Validate(context.Background()); err == nil {
		t.Fatal("durable artifact validator accepted a misbound OUTPUT_LIMIT prefix digest")
	}
}

func TestDurableArtifactStoreReopensVersionProbeOutputLimitAsInfrastructureFailure(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	candidate := validCandidate(request)
	check := outputLimitedToolchainProbeStatementCheck(checkReceipt(t, request, candidate, false, "EXECUTION_ERROR"))
	snapshotBytes, err := json.Marshal(preflight.Snapshot)
	if err != nil {
		t.Fatalf("marshal exact M0 snapshot: %v", err)
	}
	store, err := NewArtifactStore(filepath.Join(t.TempDir(), "formalizer-artifacts"))
	if err != nil {
		t.Fatal(err)
	}
	frontend := Frontend{
		Generator:         &fakeGenerator{generation: validGeneration(request)},
		Checker:           &fakeChecker{t: t, receipt: check, err: errors.New("synthetic version probe output cap")},
		ClearanceVerifier: preflight,
	}
	result, receipt, err := frontend.GenerateAndPersist(context.Background(), request, store, ArtifactEvidenceInputs{
		CatalogSnapshotBytes:   snapshotBytes,
		SourceItemBytes:        preflight.SourceItemBytes["source-001"],
		ClearanceRegisterBytes: preflight.ClearanceRegisterBytes,
	})
	if err == nil || receipt.ArtifactSHA256 == "" || result.Status != statusCheckerError || result.FailureClass != infrastructureFailureClass || result.StatementCheck == nil || result.StatementCheck.Status != "TOOLCHAIN_PROBE_FAILED" {
		t.Fatalf("GenerateAndPersist(version output limit) = (%#v, %#v, %v), want a durable infrastructure result plus checker error", result, receipt, err)
	}
	reopened, _, err := store.Get(context.Background(), receipt.ArtifactSHA256)
	if err != nil {
		t.Fatalf("Get(version output-limit artifact) error = %v, want full receipt chain reopened", err)
	}
	versionCheck := reopened.Result.StatementCheck.LeanVersionCheck
	if !versionCheck.OutputTruncated || versionCheck.OutputLimitBytes != 8 || string(versionCheck.StdoutPrefix) != "12345678" ||
		versionCheck.Execution.CleanupAttempted != true || versionCheck.Execution.ExitCode != nil {
		t.Fatalf("reopened version-probe receipt = %#v, want bounded raw prefix, cap, and cleanup evidence", versionCheck)
	}

	misbound := reopened
	misbound.Result.StatementCheck.LeanVersionCheck.StdoutCapturedSHA256 = testDigestText("different")
	if err := misbound.Validate(context.Background()); err == nil {
		t.Fatal("DurableArtifact.Validate accepted a misbound version-probe prefix digest")
	}
	hashOnly := reopened
	hashOnly.Result.StatementCheck.LeanVersionCheck.StdoutPrefix = nil
	if err := hashOnly.Validate(context.Background()); err == nil {
		t.Fatal("DurableArtifact.Validate accepted hash-only version-probe output")
	}
}

func TestOpenArtifactStoreDoesNotCreateMissingRoot(t *testing.T) {
	root := filepath.Join(t.TempDir(), "must-remain-absent")
	if _, err := OpenArtifactStore(root); err == nil {
		t.Fatal("OpenArtifactStore(missing) succeeded, want read-only refusal")
	}
	if _, err := os.Lstat(root); !os.IsNotExist(err) {
		t.Fatalf("read-only store open created its root; Lstat error = %v", err)
	}
}

func formalizerCandidateDossierFixture(preflight PinnedProviderInputPreflight, request Request) domain.Dossier {
	now := time.Date(2026, time.October, 21, 7, 0, 0, 0, time.UTC)
	problem := preflight.Snapshot.Problems[0]
	gates := []domain.VerificationGate{
		domain.GateKernelBuild, domain.GateAxiomAudit, domain.GateStatementFidelity,
		domain.GateFalsification, domain.GateEssentiality, domain.GateProvenanceLeakage,
		domain.GateLiteratureAndStatus,
	}
	verifications := make([]domain.VerificationRecord, 0, len(gates))
	for _, gate := range gates {
		verifications = append(verifications, domain.VerificationRecord{
			Gate: gate, Status: domain.VerificationPending, Summary: "Initialized pending; no gate evidence assessed.", RecordedAt: now,
		})
	}
	sourceID := problem.SourceIDs[0]
	return domain.Dossier{
		SchemaVersion:         domain.DossierSchemaVersion,
		CatalogSnapshotSHA256: preflight.Snapshot.ContentSHA256,
		Case: domain.Case{
			ID: "case-formalizer", Question: problem.InformalStatement, Status: domain.CaseStatusActive,
			Phase: domain.PhaseDraft, CreatedAt: now, UpdatedAt: now, Version: 1,
		},
		Problem: domain.MathProblem{
			ID: request.ProblemID, Title: problem.Title, Statement: problem.InformalStatement,
			M0Status: string(problem.Status), SourceIDs: append([]string(nil), problem.SourceIDs...),
		},
		Sources: []domain.Source{{
			ID: sourceID, CaseID: "case-formalizer", URL: "https://example.invalid/source-001",
			SourceType: domain.SourceTypeOther, FetchStatus: domain.FetchStatusPending,
			AuditStatus: domain.AuditStatusUnaudited,
		}},
		Verifications: verifications,
		Verdict: domain.Verdict{
			Status: domain.VerdictUnresolved, Summary: "M0 intake only; no mathematical conclusion assessed.", RecordedAt: now,
		},
	}
}

func TestDurableArtifactValidationRejectsChangedEvidenceBindings(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	frontend := Frontend{
		Generator:         &fakeGenerator{generation: validGeneration(request)},
		Checker:           newFakeChecker(t),
		ClearanceVerifier: preflight,
	}
	result, err := frontend.GenerateCandidate(context.Background(), request)
	if err != nil {
		t.Fatalf("GenerateCandidate() error = %v", err)
	}
	snapshotBytes, err := json.Marshal(preflight.Snapshot)
	if err != nil {
		t.Fatalf("marshal exact fixture M0 snapshot: %v", err)
	}
	valid := NewDurableArtifact(result, snapshotBytes, preflight.SourceItemBytes["source-001"], preflight.ClearanceRegisterBytes)

	for _, test := range []struct {
		name   string
		mutate func(*DurableArtifact)
		want   string
	}{
		{
			name: "snapshot file bytes",
			mutate: func(artifact *DurableArtifact) {
				artifact.CatalogSnapshotBytes = append(artifact.CatalogSnapshotBytes, '\n')
			},
			want: "exact embedded M0 snapshot bytes",
		},
		{
			name: "raw source item",
			mutate: func(artifact *DurableArtifact) {
				artifact.SourceItemBytes = append(artifact.SourceItemBytes, []byte("changed")...)
			},
			want: "raw M0 source bytes",
		},
		{
			name: "clearance register",
			mutate: func(artifact *DurableArtifact) {
				artifact.ClearanceRegisterBytes = append(artifact.ClearanceRegisterBytes, []byte("changed")...)
			},
			want: "clearance bytes",
		},
		{
			name: "model response",
			mutate: func(artifact *DurableArtifact) {
				artifact.Result.GenerationResponse += " "
			},
			want: "raw model response",
		},
	} {
		t.Run(test.name, func(t *testing.T) {
			candidate := valid
			test.mutate(&candidate)
			err := candidate.Validate(context.Background())
			if err == nil || !strings.Contains(err.Error(), test.want) {
				t.Fatalf("Validate() error = %v, want refusal containing %q", err, test.want)
			}
		})
	}
}

func TestGenerateAndPersistRefusesBeforeDispatchWithoutExactClearanceBytes(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	generator := &fakeGenerator{generation: validGeneration(request)}
	store, err := NewArtifactStore(filepath.Join(t.TempDir(), "formalizer-artifacts"))
	if err != nil {
		t.Fatalf("NewArtifactStore() error = %v", err)
	}
	snapshotBytes, err := json.Marshal(preflight.Snapshot)
	if err != nil {
		t.Fatalf("marshal exact fixture M0 snapshot: %v", err)
	}
	frontend := Frontend{Generator: generator, Checker: newFakeChecker(t), ClearanceVerifier: preflight}
	evidence := ArtifactEvidenceInputs{
		CatalogSnapshotBytes:   snapshotBytes,
		SourceItemBytes:        append(append([]byte(nil), preflight.SourceItemBytes["source-001"]...), []byte("altered")...),
		ClearanceRegisterBytes: preflight.ClearanceRegisterBytes,
	}
	if _, _, err := frontend.GenerateAndPersist(context.Background(), request, store, evidence); err == nil || !strings.Contains(err.Error(), "raw M0 source bytes") {
		t.Fatalf("GenerateAndPersist(changed source) error = %v, want fail-closed clearance rejection", err)
	}
	if generator.calls != 0 {
		t.Fatalf("generator calls = %d, want 0 before exact source and clearance validation", generator.calls)
	}
}

func TestGenerateAndPersistRetainsRejectedRawResponseWithoutV3Handoff(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	snapshotBytes, err := json.Marshal(preflight.Snapshot)
	if err != nil {
		t.Fatalf("marshal exact fixture M0 snapshot: %v", err)
	}
	generation := validGeneration(request)
	generation.RawResponse = "{malformed model output"
	store, err := NewArtifactStore(filepath.Join(t.TempDir(), "formalizer-artifacts"))
	if err != nil {
		t.Fatalf("NewArtifactStore() error = %v", err)
	}
	frontend := Frontend{
		Generator:         &fakeGenerator{generation: generation},
		Checker:           newFakeChecker(t),
		ClearanceVerifier: preflight,
	}
	result, receipt, runErr := frontend.GenerateAndPersist(context.Background(), request, store, ArtifactEvidenceInputs{
		CatalogSnapshotBytes:   snapshotBytes,
		SourceItemBytes:        preflight.SourceItemBytes["source-001"],
		ClearanceRegisterBytes: preflight.ClearanceRegisterBytes,
	})
	if runErr == nil || result.Status != statusGenerationRejected || result.GenerationResponse != generation.RawResponse || receipt.ArtifactSHA256 == "" {
		t.Fatalf("GenerateAndPersist(malformed output) = (%#v, %#v, %v), want a saved failure-classified raw response", result, receipt, runErr)
	}
	reopened, _, err := store.Get(context.Background(), receipt.ArtifactSHA256)
	if err != nil || reopened.Result.GenerationResponse != generation.RawResponse || reopened.Result.FailureClass != formalizationFailureClass {
		t.Fatalf("Get(malformed output) = (%#v, %v), want exact response and FORMALIZATION_FAILURE", reopened.Result, err)
	}
	if _, err := store.OpenV3(context.Background(), receipt.ArtifactSHA256); err == nil || !strings.Contains(err.Error(), "not ready for V3 handoff") {
		t.Fatalf("OpenV3(rejected output) error = %v, want refusal", err)
	}
}

func TestGenerateAndPersistRetainsGeneratorInfrastructureFailure(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	snapshotBytes, err := json.Marshal(preflight.Snapshot)
	if err != nil {
		t.Fatalf("marshal exact fixture M0 snapshot: %v", err)
	}
	store, err := NewArtifactStore(filepath.Join(t.TempDir(), "formalizer-artifacts"))
	if err != nil {
		t.Fatalf("NewArtifactStore() error = %v", err)
	}
	frontend := Frontend{
		Generator:         failingCandidateGenerator{err: errors.New("synthetic transport failure")},
		Checker:           newFakeChecker(t),
		ClearanceVerifier: preflight,
	}
	result, receipt, runErr := frontend.GenerateAndPersist(context.Background(), request, store, ArtifactEvidenceInputs{
		CatalogSnapshotBytes:   snapshotBytes,
		SourceItemBytes:        preflight.SourceItemBytes["source-001"],
		ClearanceRegisterBytes: preflight.ClearanceRegisterBytes,
	})
	if runErr == nil || result.SchemaVersion != "" || receipt.ArtifactSHA256 != "" {
		t.Fatalf("GenerateAndPersist(pre-dispatch generator refusal) = (%#v, %#v, %v), want refusal without a fabricated run artifact", result, receipt, runErr)
	}
}

type failingCandidateGenerator struct {
	generation Generation
	err        error
}

func (g failingCandidateGenerator) GenerateCandidate(context.Context, Request) (Generation, error) {
	return g.generation, g.err
}

func TestDurableArtifactReaderRejectsModifiedStoredBytes(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	frontend := Frontend{
		Generator:         &fakeGenerator{generation: validGeneration(request)},
		Checker:           newFakeChecker(t),
		ClearanceVerifier: preflight,
	}
	result, err := frontend.GenerateCandidate(context.Background(), request)
	if err != nil {
		t.Fatalf("GenerateCandidate() error = %v", err)
	}
	snapshotBytes, err := json.Marshal(preflight.Snapshot)
	if err != nil {
		t.Fatalf("marshal exact fixture M0 snapshot: %v", err)
	}
	artifact := NewDurableArtifact(result, snapshotBytes, preflight.SourceItemBytes["source-001"], preflight.ClearanceRegisterBytes)
	store, err := NewArtifactStore(filepath.Join(t.TempDir(), "formalizer-artifacts"))
	if err != nil {
		t.Fatalf("NewArtifactStore() error = %v", err)
	}
	receipt, err := store.Put(context.Background(), artifact)
	if err != nil {
		t.Fatalf("Put() error = %v", err)
	}
	path := filepath.Join(store.root, filepath.FromSlash(receipt.RelativePath))
	if err := os.WriteFile(path, []byte("tampered"), 0o600); err != nil {
		t.Fatalf("tamper stored artifact fixture: %v", err)
	}
	if _, _, err := store.Get(context.Background(), receipt.ArtifactSHA256); err == nil || !strings.Contains(err.Error(), "content address") {
		t.Fatalf("Get(tampered bytes) error = %v, want content-address refusal", err)
	}
}
