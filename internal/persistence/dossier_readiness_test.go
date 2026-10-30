package persistence

import (
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/gateaudit"
)

func TestVerifyDossierLeanReceiptRejectsSameIDDifferentBytes(t *testing.T) {
	const evidenceID = "lean-receipt-m4-test"
	const statement = "For every natural number, n equals n."
	const leanStatement = "forall (n : Nat), n = n"
	proofSHA256 := strings.Repeat("a", 64)
	statementSHA256, err := domain.ProblemStatementDigest("m4-reference-test", statement, leanStatement)
	if err != nil {
		t.Fatalf("ProblemStatementDigest() error = %v", err)
	}

	originalReceiptBytes := []byte(`{"schema_version":"mathcase-lean-verification-v3","evidence_id":"lean-receipt-m4-test"}`)
	tamperedReceiptBytes := []byte(`{"schema_version":"mathcase-lean-verification-v3","evidence_id":"lean-receipt-m4-test","status":"PASSED"}`)
	dossier := domain.Dossier{
		Problem: domain.MathProblem{ID: "m4-reference-test", Statement: statement, LeanStatement: leanStatement},
		M4Receipt: &domain.M4ReceiptReference{
			EvidenceID: evidenceID, ReceiptSHA256: sha256Hex(originalReceiptBytes),
		},
		Verifications: []domain.VerificationRecord{
			{
				Gate: domain.GateKernelBuild, Status: domain.VerificationPassed,
				EvidenceIDs: []string{evidenceID}, ProblemID: "m4-reference-test",
				ProblemStatementSHA256: statementSHA256, ProofSHA256: proofSHA256,
				LeanToolchain: "leanprover/lean4:v4.33.1", ExpectedLeanToolchain: "leanprover/lean4:v4.33.1",
			},
			{
				Gate: domain.GateAxiomAudit, Status: domain.VerificationPassed,
				EvidenceIDs: []string{evidenceID}, ProblemID: "m4-reference-test",
				ProblemStatementSHA256: statementSHA256, ProofSHA256: proofSHA256,
				LeanToolchain: "leanprover/lean4:v4.33.1", ExpectedLeanToolchain: "leanprover/lean4:v4.33.1",
			},
		},
	}
	root := t.TempDir()
	if err := os.WriteFile(filepath.Join(root, evidenceID+".json"), tamperedReceiptBytes, 0o600); err != nil {
		t.Fatalf("WriteFile() tampered M4 receipt: %v", err)
	}

	if _, err := verifyDossierLeanReceipt(root, dossier); err == nil || !strings.Contains(err.Error(), "pinned receipt SHA-256") {
		t.Fatalf("verifyDossierLeanReceipt() for same-ID replacement = %v, want pinned digest refusal", err)
	}
}

func TestVerifyDossierFormalizerCandidateArtifactsFailsClosedWithoutExistingStore(t *testing.T) {
	t.Parallel()
	storeRoot := filepath.Join(t.TempDir(), "formalizer-store-must-not-be-created")
	dossier := domain.Dossier{
		SchemaVersion:         domain.DossierSchemaVersion,
		CatalogSnapshotSHA256: strings.Repeat("a", 64),
		Case:                  domain.Case{ID: "formalizer-readiness-case"},
		Problem:               domain.MathProblem{ID: "formalizer-readiness-problem", Statement: "Synthetic readiness fixture."},
		FormalizerCandidateArtifacts: []domain.FormalizerCandidateArtifactRef{{
			ArtifactSHA256:          strings.Repeat("b", 64),
			CandidateID:             "candidate-readiness-test",
			CandidateRevisionSHA256: strings.Repeat("c", 64),
			GenerationReceiptID:     "generation-readiness-test",
		}},
	}

	count, err := verifyDossierFormalizerCandidateArtifacts(storeRoot, dossier)
	if err == nil || !strings.Contains(err.Error(), "inspect artifact store root") {
		t.Fatalf("verifyDossierFormalizerCandidateArtifacts(missing store) = (%d, %v), want read-only missing-store refusal", count, err)
	}
	if count != 0 {
		t.Errorf("verifyDossierFormalizerCandidateArtifacts(missing store) count = %d, want 0", count)
	}
	if _, err := os.Lstat(storeRoot); !os.IsNotExist(err) {
		t.Fatalf("M8 candidate readiness created a missing artifact store; Lstat error = %v", err)
	}
}

func TestVerifyDossierLeanReceiptRejectsMissingLegacyAndCannedReceipts(t *testing.T) {
	const evidenceID = "lean-receipt-provenance-test"
	problem := domain.MathProblem{
		ID: "lean-receipt-provenance-problem", Statement: "For every natural number, n equals n.",
		LeanStatement: "forall (n : Nat), n = n",
	}
	statementSHA256, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		t.Fatalf("ProblemStatementDigest() error = %v", err)
	}
	proof := "by rfl"
	proofSHA256 := sha256Hex([]byte(proof))
	newDossier := func(receiptBytes []byte) domain.Dossier {
		return domain.Dossier{
			Problem: problem,
			M4Receipt: &domain.M4ReceiptReference{
				EvidenceID: evidenceID, ReceiptSHA256: sha256Hex(receiptBytes),
			},
			Verifications: []domain.VerificationRecord{
				{
					Gate: domain.GateKernelBuild, Status: domain.VerificationPassed,
					EvidenceIDs: []string{evidenceID}, ProblemID: problem.ID,
					ProblemStatementSHA256: statementSHA256, ProofSHA256: proofSHA256,
					LeanToolchain: "leanprover/lean4:v4.33.1", ExpectedLeanToolchain: "leanprover/lean4:v4.33.1",
				},
				{
					Gate: domain.GateAxiomAudit, Status: domain.VerificationPassed,
					EvidenceIDs: []string{evidenceID}, ProblemID: problem.ID,
					ProblemStatementSHA256: statementSHA256, ProofSHA256: proofSHA256,
					LeanToolchain: "leanprover/lean4:v4.33.1", ExpectedLeanToolchain: "leanprover/lean4:v4.33.1",
				},
			},
		}
	}

	root := t.TempDir()
	t.Run("missing", func(t *testing.T) {
		missing := []byte(`{"schema_version":"mathcase-lean-verification-v3"}`)
		if _, err := verifyDossierLeanReceipt(root, newDossier(missing)); err == nil || !strings.Contains(err.Error(), "open M4 receipt") {
			t.Fatalf("verifyDossierLeanReceipt() without receipt = %v, want missing-receipt refusal", err)
		}
	})

	t.Run("legacy", func(t *testing.T) {
		legacy := []byte(`{"schema_version":"mathcase-lean-verification-v2","evidence_id":"lean-receipt-provenance-test"}`)
		if err := os.WriteFile(filepath.Join(root, evidenceID+".json"), legacy, 0o600); err != nil {
			t.Fatal(err)
		}
		if _, err := verifyDossierLeanReceipt(root, newDossier(legacy)); err == nil || !strings.Contains(err.Error(), "lacks the current execution-bound input and sandbox fields") {
			t.Fatalf("verifyDossierLeanReceipt() with legacy receipt = %v, want legacy-schema refusal", err)
		}
	})

	t.Run("canned status payload", func(t *testing.T) {
		cannedReceipt := struct {
			SchemaVersion          string `json:"schema_version"`
			EvidenceID             string `json:"evidence_id"`
			ProblemID              string `json:"problem_id"`
			ProblemStatementSHA256 string `json:"problem_statement_sha256"`
			ProofSHA256            string `json:"proof_sha256"`
			Toolchain              string `json:"toolchain"`
			InputProof             string `json:"input_proof"`
		}{
			SchemaVersion: "mathcase-lean-verification-v3", EvidenceID: evidenceID, ProblemID: problem.ID,
			ProblemStatementSHA256: statementSHA256, ProofSHA256: proofSHA256,
			Toolchain: "leanprover/lean4:v4.33.1", InputProof: proof,
		}
		canned, err := json.Marshal(cannedReceipt)
		if err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(filepath.Join(root, evidenceID+".json"), canned, 0o600); err != nil {
			t.Fatal(err)
		}
		if _, err := verifyDossierLeanReceipt(root, newDossier(canned)); err == nil || strings.Contains(err.Error(), "pinned receipt SHA-256") {
			t.Fatalf("verifyDossierLeanReceipt() with hash-pinned canned status payload = %v, want execution-provenance refusal", err)
		}
	})
}

func TestVerifyDossierEvidenceRefusesHashOnlyPassedV3ThroughV7(t *testing.T) {
	tests := []struct {
		gate domain.VerificationGate
		want string
	}{
		{gate: domain.GateStatementFidelity, want: "gate-specific typed receipt is missing"},
		{gate: domain.GateFalsification, want: "gate-specific typed receipt is missing"},
		{gate: domain.GateEssentiality, want: "gate-specific typed receipt is missing"},
		{gate: domain.GateProvenanceLeakage, want: "gate-specific typed receipt is missing"},
		{gate: domain.GateLiteratureAndStatus, want: "gate-specific typed receipt is missing"},
	}

	root := t.TempDir()
	for _, test := range tests {
		t.Run(string(test.gate), func(t *testing.T) {
			evidenceID := "caller-authored-" + strings.ToLower(string(test.gate))
			artifactBytes := []byte(`{"authored_by":"caller","claim":"passed"}`)
			if err := os.WriteFile(filepath.Join(root, evidenceID+".artifact"), artifactBytes, 0o600); err != nil {
				t.Fatalf("WriteFile() caller artifact: %v", err)
			}
			dossier := domain.Dossier{Verifications: []domain.VerificationRecord{{
				Gate: test.gate, Status: domain.VerificationPassed,
				EvidenceIDs: []string{evidenceID},
				EvidenceArtifacts: []domain.EvidenceArtifactRef{{
					EvidenceID: evidenceID, ArtifactSHA256: sha256Hex(artifactBytes),
				}},
			}}}
			if _, err := VerifyDossierEvidence(dossier, DossierEvidencePaths{GateEvidenceRoot: root}); err == nil || !strings.Contains(err.Error(), test.want) {
				t.Fatalf("VerifyDossierEvidence() for hash-matched caller-authored %s artifact = %v, want M8 provenance refusal containing %q", test.gate, err, test.want)
			}
		})
	}
}

func TestM8RoutesEveryV3ThroughV7ReceiptThroughItsTypedReader(t *testing.T) {
	tests := []domain.VerificationGate{
		domain.GateStatementFidelity,
		domain.GateFalsification,
		domain.GateEssentiality,
		domain.GateProvenanceLeakage,
		domain.GateLiteratureAndStatus,
	}
	for _, gate := range tests {
		t.Run(string(gate), func(t *testing.T) {
			root := t.TempDir()
			evidenceID := "missing-" + strings.ToLower(string(gate))
			dossier := domain.Dossier{Verifications: []domain.VerificationRecord{{
				Gate: gate, Status: domain.VerificationBlocked,
				GateReceipt: &domain.GateReceiptReference{EvidenceID: evidenceID, ReceiptSHA256: strings.Repeat("a", 64)},
			}}}
			err := verifyDossierTypedGateReceipts(root, dossier, nil)
			if err == nil || !strings.Contains(err.Error(), "reopen "+string(gate)+" typed gate receipt") || !strings.Contains(err.Error(), evidenceID) {
				t.Fatalf("M8 typed-reader dispatch for %s = %v, want the gate-specific reader to refuse the missing receipt", gate, err)
			}
		})
	}
}

func TestM8TypedGateReaderAcceptsV4ExecutionBoundReceipt(t *testing.T) {
	const problemID = "m8-v4-reader-fixture"
	const statement = "For every natural number n, n + 0 = n."
	const leanStatement = "\u2200 n : Nat, n + 0 = n"
	now := time.Date(2026, 10, 21, 4, 30, 0, 0, time.UTC)
	statementSHA, err := domain.ProblemStatementDigest(problemID, statement, leanStatement)
	if err != nil {
		t.Fatal(err)
	}
	root := t.TempDir()
	audit := domain.V4FalsificationAudit{
		HypothesesSatisfiable: true, HypothesisEvidenceID: "v4-random", RandomizedCheckStatus: domain.V4RandomizedSamplesPass,
		RandomizedTestsRun: 2, RandomizedEvidenceID: "v4-random", SMTSearchStatus: domain.V4SMTUnsat,
		SMTEvidenceID: "v4-smt", NegationSearchStatus: domain.V4NegationNoCounterexample,
		NegationSearchEvidenceIDs: []string{"v4-negation"},
	}
	var runs []gateaudit.ProcessReceipt
	for _, item := range []struct{ id, kind string }{{"v4-random", "RANDOMIZED"}, {"v4-smt", "SMT"}, {"v4-negation", "NEGATION"}} {
		input, output := []byte("input:"+item.id), []byte("output:"+item.id)
		inputPath, outputPath := item.id+".input", item.id+".output"
		if err := os.WriteFile(filepath.Join(root, inputPath), input, 0o600); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(filepath.Join(root, outputPath), output, 0o600); err != nil {
			t.Fatal(err)
		}
		runs = append(runs, gateaudit.ProcessReceipt{EvidenceID: item.id, Kind: item.kind, ProblemID: problemID,
			ProblemStatementSHA256: statementSHA, RunID: "run-" + item.id, StartedAt: now.Add(-time.Minute),
			FinishedAt: now, ExitCode: 0, InputSHA256: sha256Hex(input), InputPath: inputPath,
			OutputPath: outputPath, OutputSHA256: sha256Hex(output), Outcome: "COMPLETED"})
	}
	receipt := gateaudit.V4Receipt{Header: gateaudit.Header{SchemaVersion: gateaudit.V4ReceiptSchema,
		EvidenceID: "v4-gate-receipt", Gate: domain.GateFalsification, ProblemID: problemID,
		ProblemStatementSHA256: statementSHA, RecordedAt: now}, Audit: audit, Executions: runs}
	receiptBytes, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(root, receipt.Header.EvidenceID+".gate.json"), receiptBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	dossier := domain.Dossier{
		Case:    domain.Case{ID: "m8-v4-reader-case", CreatedAt: now.Add(-time.Hour)},
		Problem: domain.MathProblem{ID: problemID, Statement: statement, LeanStatement: leanStatement},
		Verifications: []domain.VerificationRecord{{Gate: domain.GateFalsification, Status: domain.VerificationPassed,
			Summary: "V4 passed by its typed gate reader.", EvidenceIDs: audit.EvidenceIDs(), ProblemID: problemID,
			ProblemStatementSHA256: statementSHA, Falsification: &audit, RecordedAt: now,
			GateReceipt: &domain.GateReceiptReference{EvidenceID: receipt.Header.EvidenceID, ReceiptSHA256: sha256Hex(receiptBytes)}}},
	}
	if err := verifyDossierTypedGateReceipts(root, dossier, nil); err != nil {
		t.Fatalf("M8 typed V4 receipt reader rejected accepted execution evidence: %v", err)
	}
}

func TestVerifyDossierM7EvidenceRequiresRawManifestsForReadiness(t *testing.T) {
	if _, err := verifyDossierM7Evidence("", domain.Dossier{}, nil); err == nil || !strings.Contains(err.Error(), "incomplete or reviewer identity is not authenticated") {
		t.Fatalf("verifyDossierM7Evidence() for legacy dossier = %v; want fail-closed readiness result", err)
	}

	dossier := domain.Dossier{ExpositionEvaluations: []domain.ExpositionEvaluation{{
		Tier: domain.TierHighSchool, EvidenceManifestPath: "m7/high-school.json",
	}}}
	if _, err := verifyDossierM7Evidence("", dossier, nil); err == nil || !strings.Contains(err.Error(), "M7 evidence root is required") {
		t.Fatalf("verifyDossierM7Evidence() without raw evidence root = %v; want explicit M7 root requirement", err)
	}
}
