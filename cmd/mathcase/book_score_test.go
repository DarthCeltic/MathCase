package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/book"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/gateaudit"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

func TestBindLeanVerificationReceiptLinksM4ToM6ByFullSourceAndTypedReceipt(t *testing.T) {
	problem, request, receipt := scoreProofM4BindingFixture(t)
	receiptSHA := strings.Repeat("d", 64)
	if err := bindLeanVerificationReceipt(&request, problem, receipt, receiptSHA); err != nil {
		t.Fatalf("bindLeanVerificationReceipt(valid M4 receipt) error = %v, want nil", err)
	}
	if request.Proof.ProofSHA256 != receipt.GeneratedSourceSHA256 || request.Proof.LeanProofInputSHA256 != receipt.ProofSHA256 ||
		request.Proof.LeanVerificationReceiptSHA256 != receiptSHA || len(request.Proof.VerificationRecords) != 2 {
		t.Fatalf("bound proof metrics = %#v, want separate full-source, proof-input, and receipt identities", request.Proof)
	}
	for index, gate := range []domain.VerificationGate{domain.GateKernelBuild, domain.GateAxiomAudit} {
		record := request.Proof.VerificationRecords[index]
		if record.Gate != gate || record.Status != domain.VerificationPassed || record.GateReceipt == nil ||
			record.GateReceipt.ReceiptSHA256 != receiptSHA || record.ProofSHA256 != receipt.GeneratedSourceSHA256 {
			t.Fatalf("typed gate record %s = %#v, want full-source-bound M4 receipt", gate, record)
		}
	}

	request.Proof.LeanMetricsReceiptSHA256 = strings.Repeat("a", 64)
	request.Proof.LeanMetricsSourceSHA256 = receipt.GeneratedSourceSHA256
	request.Proof.LeanMetricsToolchain = receipt.Toolchain
	request.Proof.LeanMetricsLeanVersion = receipt.LeanVersion
	request.Proof.ElaboratedExprNodes = 10
	request.Proof.ElaboratedExprDepth = 3
	request.Proof.GlobalSurprise = 0.4
	request.Proof.LocalObviousness = 0.8
	request.Proof.SurfaceTokens = 8
	if err := request.Proof.Validate(); err != nil {
		t.Fatalf("ProofMetrics.Validate(after typed M6 join) error = %v, want nil", err)
	}
	result, err := book.Score(request.Config, request.Proof)
	if err != nil || result.Refusal != "V5 essentiality review is absent" {
		t.Fatalf("Score(bound M4/M6 without V5) = (%#v, %v), want a V5-only block", result, err)
	}
}

func TestAttachLeanVerificationReceiptRefusesHashOnlySubstitute(t *testing.T) {
	problem, request, _ := scoreProofM4BindingFixture(t)
	receiptPath := filepath.Join(t.TempDir(), "m4-receipt.json")
	if err := os.WriteFile(receiptPath, []byte(`{"schema_version":"mathcase-lean-verification-v3","problem_id":"nat-add-assoc","proof_sha256":"`+strings.Repeat("a", 64)+`"}`), 0o600); err != nil {
		t.Fatal(err)
	}
	if _, err := attachLeanVerificationReceipt(&request, problem, receiptPath); err == nil || !strings.Contains(err.Error(), "reopen typed M4 receipt") {
		t.Fatalf("attachLeanVerificationReceipt(hash-only substitute) error = %v, want typed execution-bound refusal", err)
	}
	if len(request.Proof.VerificationRecords) != 0 || request.Proof.LeanVerificationReceiptSHA256 != "" {
		t.Fatalf("hash-only receipt mutated score request: %#v", request.Proof)
	}
}

func TestBindLeanVerificationReceiptRejectsMisbindingAndForgedGateRecords(t *testing.T) {
	tests := []struct {
		name    string
		mutate  func(*domain.MathProblem, *bookScoreRequest, *solver.LeanVerificationReceipt)
		wantErr string
	}{
		{
			name: "changed problem statement",
			mutate: func(problem *domain.MathProblem, _ *bookScoreRequest, _ *solver.LeanVerificationReceipt) {
				problem.Statement = "Changed statement."
			},
			wantErr: "M4 receipt statement, retained proof input, or generated source binding is invalid",
		},
		{
			name: "wrong scored full source",
			mutate: func(_ *domain.MathProblem, request *bookScoreRequest, _ *solver.LeanVerificationReceipt) {
				request.Proof.ProofSHA256 = strings.Repeat("f", 64)
			},
			wantErr: "does not match the scored proof",
		},
		{
			name: "altered generated source bytes",
			mutate: func(_ *domain.MathProblem, _ *bookScoreRequest, receipt *solver.LeanVerificationReceipt) {
				receipt.GeneratedSource += "-- changed\n"
			},
			wantErr: "generated source binding is invalid",
		},
		{
			name: "wrong declaration",
			mutate: func(_ *domain.MathProblem, request *bookScoreRequest, _ *solver.LeanVerificationReceipt) {
				request.Proof.LeanDeclaration = "other_theorem"
			},
			wantErr: "must name the generated mathcase_candidate declaration",
		},
		{
			name: "altered proof fragment identity",
			mutate: func(_ *domain.MathProblem, _ *bookScoreRequest, receipt *solver.LeanVerificationReceipt) {
				receipt.ProofSHA256 = strings.Repeat("0", 64)
			},
			wantErr: "retained proof input",
		},
		{
			name: "non-core import boundary",
			mutate: func(_ *domain.MathProblem, _ *bookScoreRequest, receipt *solver.LeanVerificationReceipt) {
				receipt.Imports = []string{"Mathlib"}
			},
			wantErr: "qualified only for the exact Init-only import boundary",
		},
		{
			name: "caller-authored V1",
			mutate: func(_ *domain.MathProblem, request *bookScoreRequest, _ *solver.LeanVerificationReceipt) {
				request.Proof.VerificationRecords = []domain.VerificationRecord{{Gate: domain.GateKernelBuild}}
			},
			wantErr: "cannot be combined with caller-supplied V1/V2 records",
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			problem, request, receipt := scoreProofM4BindingFixture(t)
			test.mutate(&problem, &request, &receipt)
			if err := bindLeanVerificationReceipt(&request, problem, receipt, strings.Repeat("d", 64)); err == nil || !strings.Contains(err.Error(), test.wantErr) {
				t.Fatalf("bindLeanVerificationReceipt(%s) error = %v, want error containing %q", test.name, err, test.wantErr)
			}
		})
	}
}

func TestValidateM4M6ExecutionJoinRequiresSourceDeclarationAndEnvironmentMatch(t *testing.T) {
	problem, request, receipt := scoreProofM4BindingFixture(t)
	if err := bindLeanVerificationReceipt(&request, problem, receipt, strings.Repeat("d", 64)); err != nil {
		t.Fatal(err)
	}
	m6 := request.Proof
	m6.LeanMetricsSourceSHA256 = receipt.GeneratedSourceSHA256
	m6.LeanMetricsToolchain = receipt.Toolchain
	m6.LeanMetricsLeanVersion = receipt.LeanVersion
	if err := validateM4M6ExecutionJoin(receipt, m6); err != nil {
		t.Fatalf("validateM4M6ExecutionJoin(matching receipts) error = %v, want nil", err)
	}

	tests := []struct {
		name    string
		mutate  func(*solver.LeanVerificationReceipt, *book.ProofMetrics)
		wantErr string
	}{
		{
			name: "different source bytes",
			mutate: func(_ *solver.LeanVerificationReceipt, metrics *book.ProofMetrics) {
				metrics.LeanMetricsSourceSHA256 = strings.Repeat("f", 64)
			},
			wantErr: "exact generated source",
		},
		{
			name: "different declaration",
			mutate: func(_ *solver.LeanVerificationReceipt, metrics *book.ProofMetrics) {
				metrics.LeanDeclaration = "other_theorem"
			},
			wantErr: "does not identify the generated M4 theorem",
		},
		{
			name: "different compiler build",
			mutate: func(_ *solver.LeanVerificationReceipt, metrics *book.ProofMetrics) {
				metrics.LeanMetricsLeanVersion = "Lean (version 4.33.1, another commit)"
			},
			wantErr: "toolchain identities differ",
		},
		{
			name: "different toolchain tag",
			mutate: func(receipt *solver.LeanVerificationReceipt, _ *book.ProofMetrics) {
				receipt.Toolchain = "leanprover/lean4:v4.34.0"
			},
			wantErr: "toolchain identities differ",
		},
		{
			name: "non-core dependency",
			mutate: func(receipt *solver.LeanVerificationReceipt, _ *book.ProofMetrics) {
				receipt.Imports = []string{"Mathlib"}
			},
			wantErr: "Init-only import boundary",
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			candidateReceipt := receipt
			candidateReceipt.Imports = append([]string(nil), receipt.Imports...)
			candidateMetrics := m6
			test.mutate(&candidateReceipt, &candidateMetrics)
			if err := validateM4M6ExecutionJoin(candidateReceipt, candidateMetrics); err == nil || !strings.Contains(err.Error(), test.wantErr) {
				t.Fatalf("validateM4M6ExecutionJoin(%s) error = %v, want error containing %q", test.name, err, test.wantErr)
			}
		})
	}
}

func TestAttachV5VerificationReceiptReopensSyntheticTypedM4M6Chain(t *testing.T) {
	problem, request, receipt, binding, dossierPath, evidenceRoot := syntheticTypedM4V5AdapterFixture(t)
	if err := attachV5VerificationReceipt(&request, &binding.Metrics, dossierPath, evidenceRoot, &binding); err != nil {
		t.Fatalf("attachV5VerificationReceipt(synthetic typed M4/M6 chain) error = %v, want gateaudit receipt acceptance", err)
	}
	if got := len(binding.Metrics.VerificationRecords); got != 3 || binding.Metrics.VerificationRecords[2].Gate != domain.GateEssentiality {
		t.Fatalf("V5 adapter appended %d records, want V1/V2 plus one reopened V5 record", got)
	}
	if request.Proof.VerificationRecords[2].ProofSHA256 != receipt.GeneratedSourceSHA256 ||
		request.Proof.LeanProofInputSHA256 != receipt.ProofSHA256 || request.Proof.ProofSHA256 != receipt.GeneratedSourceSHA256 {
		t.Fatalf("V5 adapter digest roles for %s = %#v, want full generated source and separate retained proof-input digests", problem.ID, request.Proof)
	}
	if request.Proof.VerificationRecords[2].Summary == "" || !strings.Contains(request.Proof.VerificationRecords[2].Summary, "maps the dossier's proof-input digest") {
		t.Fatalf("V5 score projection summary = %q, want an explicit proof-input to generated-source mapping", request.Proof.VerificationRecords[2].Summary)
	}
	result, err := book.Score(request.Config, binding.Metrics)
	if err != nil || result.Disposition != book.ScoreDispositionCandidateOnly || result.Refusal == "" {
		t.Fatalf("Score(synthetic M4/M6/V5 chain) = (%#v, %v), want candidate-only output with the review limitation preserved", result, err)
	}
}

func TestAttachV5VerificationReceiptUsesPersistedDossierProofInputShapeThenRefusesMissingV5(t *testing.T) {
	problem, request, receipt := scoreProofM4BindingFixture(t)
	receiptBytes, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	receiptPath := filepath.Join(t.TempDir(), "m4-receipt.json")
	if err := os.WriteFile(receiptPath, receiptBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	receiptSHA := bookScoreTestSHA256(receiptBytes)
	if err := bindLeanVerificationReceipt(&request, problem, receipt, receiptSHA); err != nil {
		t.Fatal(err)
	}
	statementSHA := receipt.ProblemStatementSHA256
	metrics := request.Proof
	metrics.LeanMetricsSourceSHA256 = receipt.GeneratedSourceSHA256
	metrics.LeanMetricsToolchain = receipt.Toolchain
	metrics.LeanMetricsLeanVersion = receipt.LeanVersion
	dossier := domain.Dossier{
		SchemaVersion: domain.DossierSchemaVersion,
		Case:          domain.Case{ID: "nat-add-assoc", CreatedAt: time.Date(2026, time.October, 23, 17, 11, 38, 0, time.UTC)},
		Problem:       problem,
		M4Receipt:     &domain.M4ReceiptReference{EvidenceID: receipt.EvidenceID, ReceiptSHA256: receiptSHA},
		Verifications: []domain.VerificationRecord{
			{Gate: domain.GateKernelBuild, Status: domain.VerificationPassed, EvidenceIDs: []string{receipt.EvidenceID}, ProblemID: problem.ID, ProblemStatementSHA256: statementSHA, ProofSHA256: receipt.ProofSHA256},
			{Gate: domain.GateAxiomAudit, Status: domain.VerificationPassed, EvidenceIDs: []string{receipt.EvidenceID}, ProblemID: problem.ID, ProblemStatementSHA256: statementSHA, ProofSHA256: receipt.ProofSHA256},
			{Gate: domain.GateEssentiality, Status: domain.VerificationBlocked, ProblemID: problem.ID, ProblemStatementSHA256: statementSHA},
		},
	}
	dossierPath := filepath.Join(t.TempDir(), "saved-shape-dossier.json")
	dossierBytes, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(dossierPath, dossierBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	binding := v5M4Binding{Problem: problem, Receipt: receipt, ReceiptPath: receiptPath, ReceiptSHA256: receiptSHA, Metrics: metrics}
	if err := validateV5M4Binding(&request, dossier, binding); err != nil {
		t.Fatalf("validateV5M4Binding(persisted Nat dossier V1/V2 proof-input shape) error = %v, want exact M4 proof-input linkage", err)
	}
	if err := attachV5VerificationReceipt(&request, &metrics, dossierPath, t.TempDir(), &binding); err == nil || !strings.Contains(err.Error(), "no typed essentiality receipt reference") {
		t.Fatalf("attachV5VerificationReceipt(persisted Nat dossier shape) error = %v, want the genuine missing-V5 refusal", err)
	}
}

func TestScoreProofTypedV5AdapterReachesMissingV5ForPersistedNatCase(t *testing.T) {
	projectRoot, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	handoffPath := filepath.Join(projectRoot, "data", "local", "staging", "nat-add-assoc-case-handoff-r1", "handoff-record-r2.json")
	handoffBytes, err := os.ReadFile(handoffPath)
	if err != nil {
		if os.IsNotExist(err) {
			t.Skip("local persisted Nat handoff is not present in this checkout")
		}
		t.Fatal(err)
	}
	var handoff struct {
		Dossier struct {
			Path   string `json:"path"`
			SHA256 string `json:"sha256"`
		} `json:"dossier"`
		M4Receipt struct {
			Path   string `json:"path"`
			SHA256 string `json:"sha256"`
		} `json:"m4_receipt"`
		M6MetricsReceipt struct {
			Path   string `json:"path"`
			SHA256 string `json:"sha256"`
		} `json:"m6_metrics_receipt"`
	}
	if err := json.Unmarshal(handoffBytes, &handoff); err != nil {
		t.Fatalf("decode persisted Nat handoff: %v", err)
	}
	dossierPath := filepath.Join(projectRoot, filepath.FromSlash(handoff.Dossier.Path))
	m4Path := filepath.Join(projectRoot, filepath.FromSlash(handoff.M4Receipt.Path))
	m6Path := filepath.Join(projectRoot, filepath.FromSlash(handoff.M6MetricsReceipt.Path))
	for _, path := range []string{dossierPath, m4Path, m6Path} {
		if _, err := os.Stat(path); err != nil {
			if os.IsNotExist(err) {
				t.Skipf("persisted Nat artifact %s is not present in this checkout", path)
			}
			t.Fatal(err)
		}
	}
	dossierBytes, err := readRegularInput(dossierPath, "persisted Nat dossier", maxProblemFileBytes)
	if err != nil {
		t.Fatal(err)
	}
	if bookScoreTestSHA256(dossierBytes) != handoff.Dossier.SHA256 {
		t.Fatal("persisted Nat dossier bytes do not match the handoff digest")
	}
	var dossier domain.Dossier
	if err := decodeStrictJSON(dossierBytes, &dossier, "persisted Nat dossier"); err != nil {
		t.Fatal(err)
	}
	m4Bytes, err := readRegularInput(m4Path, "persisted Nat M4 receipt", 1<<20)
	if err != nil {
		t.Fatal(err)
	}
	if bookScoreTestSHA256(m4Bytes) != handoff.M4Receipt.SHA256 || dossier.M4Receipt == nil || dossier.M4Receipt.ReceiptSHA256 != handoff.M4Receipt.SHA256 {
		t.Fatal("persisted Nat M4 bytes do not match the handoff and dossier receipt digests")
	}
	var m4Receipt solver.LeanVerificationReceipt
	if err := decodeStrictJSON(m4Bytes, &m4Receipt, "persisted Nat M4 receipt"); err != nil {
		t.Fatal(err)
	}
	if err := solver.ValidateExecutionBoundReceipt(m4Receipt, dossier.Problem); err != nil {
		t.Fatalf("validateExecutionBoundReceipt(persisted Nat receipt) error = %v, want the existing M4 receipt to reopen", err)
	}
	for _, gate := range []domain.VerificationGate{domain.GateKernelBuild, domain.GateAxiomAudit} {
		found := false
		for _, record := range dossier.Verifications {
			if record.Gate != gate {
				continue
			}
			found = record.ProofSHA256 == m4Receipt.ProofSHA256 && len(record.EvidenceIDs) == 1 && record.EvidenceIDs[0] == m4Receipt.EvidenceID
		}
		if !found {
			t.Fatalf("persisted Nat dossier %s record does not use the M4 retained proof-input digest", gate)
		}
	}
	statementSHA, err := domain.ProblemStatementDigest(dossier.Problem.ID, dossier.Problem.Statement, dossier.Problem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	request := bookScoreRequest{
		SchemaVersion: "mathcase-m6-score-request-v1", Config: book.Config{Beta: 1, Eta: 1, Alpha: 0.5},
		Proof: book.ProofMetrics{
			ProblemID: dossier.Problem.ID, ProblemStatementSHA256: statementSHA,
			ProofID: "persisted-nat-m4-source", ProofSHA256: m4Receipt.GeneratedSourceSHA256,
			LeanDeclaration: "mathcase_candidate",
		},
	}
	if _, err := attachLeanVerificationReceipt(&request, dossier.Problem, m4Path); err != nil {
		t.Fatalf("attachLeanVerificationReceipt(persisted Nat M4) error = %v, want exact M4 binding", err)
	}
	m6Bytes, err := readRegularInput(m6Path, "persisted Nat M6 metrics", maxProblemFileBytes)
	if err != nil {
		t.Fatal(err)
	}
	if bookScoreTestSHA256(m6Bytes) != handoff.M6MetricsReceipt.SHA256 {
		t.Fatal("persisted Nat M6 metrics bytes do not match the handoff digest")
	}
	m6Dir := filepath.Dir(m6Path)
	runReceipt, err := readRegularInput(filepath.Join(m6Dir, "run-receipt.json"), "persisted Nat M6 run receipt", maxProblemFileBytes)
	if err != nil {
		t.Fatal(err)
	}
	runRequest, err := readM6RawOutput(filepath.Join(m6Dir, "run-request.json"), "persisted Nat M6 run request", maxProblemFileBytes)
	if err != nil {
		t.Fatal(err)
	}
	snapshot, err := readRegularInput(filepath.Join(m6Dir, "snapshot", "snapshot-manifest.json"), "persisted Nat M6 snapshot", 4<<20)
	if err != nil {
		t.Fatal(err)
	}
	stdout, err := readM6RawOutput(filepath.Join(m6Dir, "stdout.bin"), "persisted Nat M6 stdout", maxProblemFileBytes)
	if err != nil {
		t.Fatal(err)
	}
	stderr, err := readM6RawOutput(filepath.Join(m6Dir, "stderr.bin"), "persisted Nat M6 stderr", maxProblemFileBytes)
	if err != nil {
		t.Fatal(err)
	}
	proof, err := book.AttachLeanMetricsArtifacts(request.Proof, m6Bytes, runReceipt, runRequest, snapshot, stdout, stderr)
	if err != nil {
		t.Fatalf("AttachLeanMetricsArtifacts(persisted Nat M6) error = %v, want exact M6 binding", err)
	}
	if err := validateM4M6ExecutionJoin(m4Receipt, proof); err != nil {
		t.Fatalf("validateM4M6ExecutionJoin(persisted Nat case) error = %v, want the existing M4/M6 source join", err)
	}
	binding := v5M4Binding{
		Problem: dossier.Problem, Receipt: m4Receipt, ReceiptPath: m4Path,
		ReceiptSHA256: handoff.M4Receipt.SHA256, Metrics: proof,
	}
	if err := attachV5VerificationReceipt(&request, &proof, dossierPath, t.TempDir(), &binding); err == nil || !strings.Contains(err.Error(), "no typed essentiality receipt reference") {
		t.Fatalf("attachV5VerificationReceipt(persisted Nat case) error = %v, want the exact missing-V5 refusal", err)
	}
}

func TestAttachV5VerificationReceiptRejectsSyntheticM4M6Misbinding(t *testing.T) {
	tests := []struct {
		name   string
		mutate func(*bookScoreRequest, *v5M4Binding, string)
		want   string
	}{
		{
			name: "swapped proof digest roles",
			mutate: func(request *bookScoreRequest, binding *v5M4Binding, _ string) {
				request.Proof.ProofSHA256 = binding.Receipt.ProofSHA256
			},
			want: "V5 proof digest roles",
		},
		{
			name: "stale M4 receipt bytes",
			mutate: func(_ *bookScoreRequest, binding *v5M4Binding, _ string) {
				if err := os.WriteFile(binding.ReceiptPath, []byte(`{"schema_version":"stale"}`), 0o600); err != nil {
					t.Fatal(err)
				}
			},
			want: "M4 receipt bytes changed",
		},
		{
			name: "M4 reference has a stale digest",
			mutate: func(_ *bookScoreRequest, binding *v5M4Binding, dossierPath string) {
				var dossier domain.Dossier
				data, err := os.ReadFile(dossierPath)
				if err != nil {
					t.Fatal(err)
				}
				if err := json.Unmarshal(data, &dossier); err != nil {
					t.Fatal(err)
				}
				dossier.M4Receipt.ReceiptSHA256 = strings.Repeat("0", 64)
				updated, err := json.Marshal(dossier)
				if err != nil {
					t.Fatal(err)
				}
				if err := os.WriteFile(dossierPath, updated, 0o600); err != nil {
					t.Fatal(err)
				}
				_ = binding
			},
			want: "M4 receipt reference does not match",
		},
		{
			name: "dossier V1/V2 use generated-source digest instead of proof input",
			mutate: func(_ *bookScoreRequest, binding *v5M4Binding, dossierPath string) {
				var dossier domain.Dossier
				data, err := os.ReadFile(dossierPath)
				if err != nil {
					t.Fatal(err)
				}
				if err := json.Unmarshal(data, &dossier); err != nil {
					t.Fatal(err)
				}
				for index := range dossier.Verifications {
					if dossier.Verifications[index].Gate == domain.GateKernelBuild || dossier.Verifications[index].Gate == domain.GateAxiomAudit {
						dossier.Verifications[index].ProofSHA256 = binding.Receipt.GeneratedSourceSHA256
					}
				}
				updated, err := json.Marshal(dossier)
				if err != nil {
					t.Fatal(err)
				}
				if err := os.WriteFile(dossierPath, updated, 0o600); err != nil {
					t.Fatal(err)
				}
			},
			want: "V5 dossier V1 record is not bound",
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			_, request, _, binding, dossierPath, evidenceRoot := syntheticTypedM4V5AdapterFixture(t)
			test.mutate(&request, &binding, dossierPath)
			if err := attachV5VerificationReceipt(&request, &binding.Metrics, dossierPath, evidenceRoot, &binding); err == nil || !strings.Contains(err.Error(), test.want) {
				t.Fatalf("attachV5VerificationReceipt(%s) error = %v, want error containing %q", test.name, err, test.want)
			}
		})
	}
}

// syntheticTypedM4V5AdapterFixture models a producer-validated M4 receipt and
// a synthetic V5 receipt. It exercises only identity joining and receipt
// reopening; it is not an experiment or mathematical evidence.
func syntheticTypedM4V5AdapterFixture(t *testing.T) (domain.MathProblem, bookScoreRequest, solver.LeanVerificationReceipt, v5M4Binding, string, string) {
	t.Helper()
	problem, request, receipt := scoreProofM4BindingFixture(t)
	receiptBytes, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	receiptPath := filepath.Join(t.TempDir(), "m4-receipt.json")
	if err := os.WriteFile(receiptPath, receiptBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	receiptSHA := bookScoreTestSHA256(receiptBytes)
	if err := bindLeanVerificationReceipt(&request, problem, receipt, receiptSHA); err != nil {
		t.Fatal(err)
	}
	metrics := request.Proof
	metrics.LeanMetricsReceiptSHA256 = strings.Repeat("a", 64)
	metrics.LeanMetricsSourceSHA256 = receipt.GeneratedSourceSHA256
	metrics.LeanMetricsToolchain = receipt.Toolchain
	metrics.LeanMetricsLeanVersion = receipt.LeanVersion
	metrics.ElaboratedExprNodes = 10
	metrics.ElaboratedExprDepth = 3
	metrics.GlobalSurprise = 0.4
	metrics.LocalObviousness = 0.8
	metrics.SurfaceTokens = 8
	if err := validateM4M6ExecutionJoin(receipt, metrics); err != nil {
		t.Fatalf("validate synthetic M4/M6 adapter identity: %v", err)
	}
	m4Ref := &domain.M4ReceiptReference{EvidenceID: receipt.EvidenceID, ReceiptSHA256: receiptSHA}
	m4Records := []domain.VerificationRecord{
		{Gate: domain.GateKernelBuild, Status: domain.VerificationPassed, EvidenceIDs: []string{receipt.EvidenceID}, ProblemID: problem.ID, ProblemStatementSHA256: receipt.ProblemStatementSHA256, ProofSHA256: receipt.ProofSHA256, RecordedAt: receipt.RecordedAtUTC},
		{Gate: domain.GateAxiomAudit, Status: domain.VerificationPassed, EvidenceIDs: []string{receipt.EvidenceID}, ProblemID: problem.ID, ProblemStatementSHA256: receipt.ProblemStatementSHA256, ProofSHA256: receipt.ProofSHA256, RecordedAt: receipt.RecordedAtUTC},
	}
	dossierPath, evidenceRoot := writeScoreV5ReceiptFixtureForProblem(t, t.TempDir(), problem, receipt.ProofSHA256, m4Ref, m4Records)
	binding := v5M4Binding{
		Problem: problem, Receipt: receipt, ReceiptPath: receiptPath,
		ReceiptSHA256: receiptSHA, Metrics: metrics,
	}
	return problem, request, receipt, binding, dossierPath, evidenceRoot
}

func scoreProofM4BindingFixture(t *testing.T) (domain.MathProblem, bookScoreRequest, solver.LeanVerificationReceipt) {
	t.Helper()
	problem := domain.MathProblem{
		ID: "nat-add-assoc", Title: "Associativity of natural-number addition",
		Statement:     "For all natural numbers n, m, and k, (n + m) + k = n + (m + k).",
		LeanStatement: "forall (n m k : Nat), (n + m) + k = n + (m + k)",
	}
	inputProof := "by\n  intro\n  omega"
	source := "import Init\n\ntheorem mathcase_candidate : (" + problem.LeanStatement + ") := by\n  intro\n  omega\n\n#print axioms mathcase_candidate\n"
	proofInputSHA := bookScoreTestSHA256([]byte(inputProof))
	generatedSourceSHA := bookScoreTestSHA256([]byte(source))
	statementSHA, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	leanVersion := "Lean (version 4.33.1, x86_64-unknown-linux-gnu, commit test, Release)"
	receipt := solver.LeanVerificationReceipt{
		SchemaVersion: "mathcase-lean-verification-v3", EvidenceID: "m4-test-receipt",
		RecordedAtUTC: time.Date(2026, time.October, 23, 12, 0, 0, 0, time.UTC),
		ProblemID:     problem.ID, InputProof: inputProof, ProblemStatementSHA256: statementSHA,
		ProofSHA256: proofInputSHA, GeneratedSourceSHA256: generatedSourceSHA, GeneratedSource: source,
		Toolchain: r0bScoreToolchain, LeanVersion: leanVersion, Imports: []string{"Init"},
		KernelPassed: true, AxiomsPassed: true, Status: "PASSED",
	}
	request := bookScoreRequest{
		SchemaVersion: "mathcase-m6-score-request-v1", Config: book.Config{Beta: 1, Eta: 1, Alpha: 0.5},
		Proof: book.ProofMetrics{
			ProblemID: problem.ID, ProblemStatementSHA256: statementSHA, ProofID: "m4-generated-source",
			ProofSHA256: generatedSourceSHA, LeanDeclaration: "mathcase_candidate",
		},
	}
	return problem, request, receipt
}

func TestScoreProofCommandBindsLeanReceiptAndPreservesV5Refusal(t *testing.T) {
	root := t.TempDir()
	sourceSHA := strings.Repeat("a", 64)
	metricsPath := scoreProofTestMetricsArtifacts(t, root, sourceSHA)
	metricsBytes, err := os.ReadFile(metricsPath)
	if err != nil {
		t.Fatal(err)
	}
	statementSHA := strings.Repeat("b", 64)
	request := bookScoreRequest{
		SchemaVersion: "mathcase-m6-score-request-v1",
		Config:        book.Config{Beta: 1, Eta: 1, Alpha: 0.5},
		Proof: book.ProofMetrics{
			ProblemID: "problem-r0b", ProblemStatementSHA256: statementSHA,
			ProofID: "proof-r0b", ProofSHA256: sourceSHA,
			GlobalSurprise: 0.4, LocalObviousness: 0.8, SurfaceTokens: 30,
			VerificationRecords: []domain.VerificationRecord{
				scoreProofTestVerification(domain.GateKernelBuild, "v1-evidence", "problem-r0b", statementSHA, sourceSHA),
				scoreProofTestVerification(domain.GateAxiomAudit, "v2-evidence", "problem-r0b", statementSHA, sourceSHA),
			},
		},
	}
	requestBytes, err := json.Marshal(request)
	if err != nil {
		t.Fatal(err)
	}
	requestPath := filepath.Join(root, "request.json")
	if err := os.WriteFile(requestPath, requestBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	outputPath := filepath.Join(root, "score.json")
	var stdout, stderr bytes.Buffer
	code := run([]string{"score-proof", "--request", requestPath, "--metrics-receipt", metricsPath, "--output", outputPath}, &stdout, &stderr)
	if code != 1 {
		t.Fatalf("score-proof exit code = %d, want V5 refusal code 1; stderr=%s", code, stderr.String())
	}
	var result book.Result
	if err := json.Unmarshal(stdout.Bytes(), &result); err != nil {
		t.Fatalf("decode score-proof output: %v; output=%s", err, stdout.String())
	}
	if result.Refusal != "V5 essentiality review is absent" || result.Proof.ElaboratedExprNodes != 6 || result.Proof.ElaboratedExprDepth != 3 {
		t.Fatalf("score-proof result = %#v, want receipt-populated metrics and explicit V5 refusal", result)
	}
	digest := sha256.Sum256(metricsBytes)
	if result.Proof.LeanMetricsReceiptSHA256 != hex.EncodeToString(digest[:]) || result.Proof.LeanMetricsSourceSHA256 != sourceSHA {
		t.Fatalf("score-proof provenance = %#v, want exact metric receipt and source digests", result.Proof)
	}
	if _, err := os.Stat(outputPath); err != nil {
		t.Fatalf("score-proof refusal receipt was not persisted: %v", err)
	}
}

func TestScoreProofCommandReopensR0BReceiptAndAdvancesToV5Refusal(t *testing.T) {
	root := t.TempDir()
	sourceBytes := []byte("theorem mathcaseNatAddAssoc : True := by trivial\n")
	sourceDigest := sha256.Sum256(sourceBytes)
	sourceSHA := hex.EncodeToString(sourceDigest[:])
	metricsPath := scoreProofTestMetricsArtifacts(t, root, sourceSHA)
	statementDigest := sha256.Sum256([]byte(r0bScoreLeanStatement))
	rawStatementSHA := hex.EncodeToString(statementDigest[:])
	statementSHA, err := domain.ProblemStatementDigest(r0bScoreProblemID, r0bScoreStatement, r0bScoreLeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	request := bookScoreRequest{
		SchemaVersion: "mathcase-m6-score-request-v1",
		Config:        book.Config{Beta: 1, Eta: 1, Alpha: 0.5},
		Proof: book.ProofMetrics{
			ProblemID: r0bScoreProblemID, ProblemStatementSHA256: statementSHA,
			ProofID: r0bScoreProofID, ProofSHA256: sourceSHA,
			GlobalSurprise: 0.4, LocalObviousness: 0.8, SurfaceTokens: 30,
			LeanDeclaration: r0bScoreTheorem,
		},
	}
	requestPath := filepath.Join(root, "request.json")
	writeScoreRequest(t, requestPath, request)
	r0bPath := writeScoreR0BReceipt(t, root, sourceBytes, r0bScoreLeanStatement, rawStatementSHA)
	outputPath := filepath.Join(root, "score.json")
	var stdout, stderr bytes.Buffer
	code := run([]string{"score-proof", "--request", requestPath, "--metrics-receipt", metricsPath, "--r0b-verification-receipt", r0bPath, "--output", outputPath}, &stdout, &stderr)
	if code != 1 {
		t.Fatalf("score-proof exit code = %d, want V5 refusal code 1; stderr=%s", code, stderr.String())
	}
	var result book.Result
	if err := json.Unmarshal(stdout.Bytes(), &result); err != nil {
		t.Fatalf("decode score-proof output: %v; output=%s", err, stdout.String())
	}
	if result.Refusal != "V5 essentiality review is absent" || len(result.Proof.VerificationRecords) != 2 {
		t.Fatalf("score-proof result = %#v, want receipt-bound V1/V2 and explicit V5 refusal", result)
	}
	for _, record := range result.Proof.VerificationRecords {
		if record.Status != domain.VerificationPassed || record.GateReceipt == nil || record.GateReceipt.ReceiptSHA256 == "" ||
			len(record.EvidenceArtifacts) != 1 || record.EvidenceArtifacts[0].ArtifactSHA256 != record.GateReceipt.ReceiptSHA256 {
			t.Fatalf("R0b record is not bound to its reopened receipt: %#v", record)
		}
	}
}

func TestScoreProofCommandRejectsCallerAuthoredV5PassEvenWithHashPin(t *testing.T) {
	root := t.TempDir()
	sourceSHA := strings.Repeat("a", 64)
	statementSHA := strings.Repeat("b", 64)
	metricsPath := scoreProofTestMetricsArtifacts(t, root, sourceSHA)
	request := bookScoreRequest{
		SchemaVersion: "mathcase-m6-score-request-v1",
		Config:        book.Config{Beta: 1, Eta: 1, Alpha: 0.5},
		Proof: book.ProofMetrics{
			ProblemID: "problem-r0b", ProblemStatementSHA256: statementSHA,
			ProofID: "proof-r0b", ProofSHA256: sourceSHA,
			GlobalSurprise: 0.4, LocalObviousness: 0.8, SurfaceTokens: 30,
			VerificationRecords: []domain.VerificationRecord{
				scoreProofTestVerification(domain.GateKernelBuild, "v1-evidence", "problem-r0b", statementSHA, sourceSHA),
				scoreProofTestVerification(domain.GateAxiomAudit, "v2-evidence", "problem-r0b", statementSHA, sourceSHA),
				func() domain.VerificationRecord {
					record := scoreProofTestVerification(domain.GateEssentiality, "v5-evidence", "problem-r0b", statementSHA, sourceSHA)
					record.GateReceipt = &domain.GateReceiptReference{EvidenceID: "v5-evidence", ReceiptSHA256: strings.Repeat("c", 64)}
					return record
				}(),
			},
		},
	}
	requestPath := filepath.Join(root, "request.json")
	writeScoreRequest(t, requestPath, request)
	outputPath := filepath.Join(root, "score.json")
	var stdout, stderr bytes.Buffer
	code := run([]string{"score-proof", "--request", requestPath, "--metrics-receipt", metricsPath, "--output", outputPath}, &stdout, &stderr)
	if code != 2 || !strings.Contains(stderr.String(), "caller-supplied V5 records") {
		t.Fatalf("score-proof caller-authored V5 pass code/stderr = %d/%s, want fail-closed typed-receipt refusal", code, stderr.String())
	}
	if stdout.Len() != 0 {
		t.Fatalf("score-proof emitted score output for a caller-authored V5 pass: %s", stdout.String())
	}
	if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
		t.Fatalf("score-proof wrote output for an unreopened V5 pass: stat err=%v", err)
	}
}

func TestScoreProofCommandRequiresReopenedVerifierBeforeConsumingV5(t *testing.T) {
	root := t.TempDir()
	sourceBytes := []byte("theorem mathcaseNatAddAssoc : True := by trivial\n")
	sourceSHA := bookScoreTestSHA256(sourceBytes)
	metricsPath := scoreProofTestMetricsArtifacts(t, root, sourceSHA)
	statementSHA, err := domain.ProblemStatementDigest(r0bScoreProblemID, r0bScoreStatement, r0bScoreLeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	request := bookScoreRequest{
		SchemaVersion: "mathcase-m6-score-request-v1",
		Config:        book.Config{Beta: 1, Eta: 1, Alpha: 0.5},
		Proof: book.ProofMetrics{
			ProblemID: r0bScoreProblemID, ProblemStatementSHA256: statementSHA,
			ProofID: r0bScoreProofID, ProofSHA256: sourceSHA, LeanDeclaration: r0bScoreTheorem,
			GlobalSurprise: 0.4, LocalObviousness: 0.8, SurfaceTokens: 30,
			VerificationRecords: []domain.VerificationRecord{
				scoreProofTestVerification(domain.GateKernelBuild, "caller-v1", r0bScoreProblemID, statementSHA, sourceSHA),
				scoreProofTestVerification(domain.GateAxiomAudit, "caller-v2", r0bScoreProblemID, statementSHA, sourceSHA),
			},
		},
	}
	requestPath := filepath.Join(root, "request.json")
	writeScoreRequest(t, requestPath, request)
	dossierPath, evidenceRoot := writeScoreV5ReceiptFixture(t, root, sourceSHA)
	outputPath := filepath.Join(root, "score.json")
	var stdout, stderr bytes.Buffer
	code := run([]string{
		"score-proof", "--request", requestPath, "--metrics-receipt", metricsPath,
		"--v5-dossier", dossierPath, "--v5-evidence-root", evidenceRoot,
		"--output", outputPath,
	}, &stdout, &stderr)
	if code != 2 || !strings.Contains(stderr.String(), "--v5-dossier requires an opened") {
		t.Fatalf("score-proof without a reopened verifier code/stderr = %d/%s, want a fail-closed V1/V2 reader requirement", code, stderr.String())
	}
	if stdout.Len() != 0 {
		t.Fatalf("score-proof emitted a score without reopening V1/V2 evidence: %s", stdout.String())
	}
	if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
		t.Fatalf("score-proof wrote a score without reopening V1/V2 evidence: stat err=%v", err)
	}
}

func TestScoreProofCommandReopensTypedV5AndMarksQualityScoreCandidateOnly(t *testing.T) {
	root := t.TempDir()
	sourceBytes := []byte("theorem mathcaseNatAddAssoc : True := by trivial\n")
	sourceSHA := bookScoreTestSHA256(sourceBytes)
	metricsPath := scoreProofTestMetricsArtifacts(t, root, sourceSHA)
	canonicalStatementSHA, err := domain.ProblemStatementDigest(r0bScoreProblemID, r0bScoreStatement, r0bScoreLeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	request := bookScoreRequest{
		SchemaVersion: "mathcase-m6-score-request-v1",
		Config:        book.Config{Beta: 1, Eta: 1, Alpha: 0.5},
		Proof: book.ProofMetrics{
			ProblemID: r0bScoreProblemID, ProblemStatementSHA256: canonicalStatementSHA,
			ProofID: r0bScoreProofID, ProofSHA256: sourceSHA, LeanDeclaration: r0bScoreTheorem,
			GlobalSurprise: 0.4, LocalObviousness: 0.8, SurfaceTokens: 30,
		},
	}
	requestPath := filepath.Join(root, "request.json")
	writeScoreRequest(t, requestPath, request)
	rawStatementSHA := bookScoreTestSHA256([]byte(r0bScoreLeanStatement))
	r0bPath := writeScoreR0BReceipt(t, root, sourceBytes, r0bScoreLeanStatement, rawStatementSHA)
	dossierPath, evidenceRoot := writeScoreV5ReceiptFixture(t, root, sourceSHA)
	outputPath := filepath.Join(root, "score.json")
	var stdout, stderr bytes.Buffer
	code := run([]string{
		"score-proof", "--request", requestPath, "--metrics-receipt", metricsPath,
		"--r0b-verification-receipt", r0bPath, "--v5-dossier", dossierPath,
		"--v5-evidence-root", evidenceRoot, "--output", outputPath,
	}, &stdout, &stderr)
	if code != 1 {
		t.Fatalf("score-proof exit code = %d, want candidate-only judgment refusal code 1; stderr=%s", code, stderr.String())
	}
	var result book.Result
	if err := json.Unmarshal(stdout.Bytes(), &result); err != nil {
		t.Fatalf("decode score-proof output: %v; output=%s", err, stdout.String())
	}
	if result.Disposition != book.ScoreDispositionCandidateOnly || result.Refusal != "M6 quality ratings are caller-supplied and unreviewed; this candidate score cannot accept a rewrite" || result.Score <= 0 {
		t.Fatalf("score-proof result = %#v, want reopened V5 plus explicitly candidate-only unreviewed score", result)
	}
	if len(result.Proof.VerificationRecords) != 3 || result.Proof.VerificationRecords[2].Gate != domain.GateEssentiality || result.Proof.VerificationRecords[2].GateReceipt == nil {
		t.Fatalf("score-proof records = %#v, want receipt-bound V1/V2/V5", result.Proof.VerificationRecords)
	}
	if _, err := os.Stat(outputPath); err != nil {
		t.Fatalf("candidate-only score refusal was not persisted: %v", err)
	}
}

func TestScoreProofCommandRejectsMisboundTypedV5Receipt(t *testing.T) {
	root := t.TempDir()
	sourceBytes := []byte("theorem mathcaseNatAddAssoc : True := by trivial\n")
	sourceSHA := bookScoreTestSHA256(sourceBytes)
	metricsPath := scoreProofTestMetricsArtifacts(t, root, sourceSHA)
	canonicalStatementSHA, err := domain.ProblemStatementDigest(r0bScoreProblemID, r0bScoreStatement, r0bScoreLeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	request := bookScoreRequest{
		SchemaVersion: "mathcase-m6-score-request-v1",
		Config:        book.Config{Beta: 1, Eta: 1, Alpha: 0.5},
		Proof: book.ProofMetrics{
			ProblemID: r0bScoreProblemID, ProblemStatementSHA256: canonicalStatementSHA,
			ProofID: r0bScoreProofID, ProofSHA256: sourceSHA, LeanDeclaration: r0bScoreTheorem,
			GlobalSurprise: 0.4, LocalObviousness: 0.8, SurfaceTokens: 30,
		},
	}
	requestPath := filepath.Join(root, "request.json")
	writeScoreRequest(t, requestPath, request)
	r0bPath := writeScoreR0BReceipt(t, root, sourceBytes, r0bScoreLeanStatement, bookScoreTestSHA256([]byte(r0bScoreLeanStatement)))
	dossierPath, evidenceRoot := writeScoreV5ReceiptFixture(t, root, sourceSHA)
	var dossier domain.Dossier
	dossierBytes, err := os.ReadFile(dossierPath)
	if err != nil {
		t.Fatal(err)
	}
	if err := json.Unmarshal(dossierBytes, &dossier); err != nil {
		t.Fatal(err)
	}
	dossier.Verifications[0].GateReceipt.ReceiptSHA256 = strings.Repeat("0", 64)
	badDossier, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(dossierPath, badDossier, 0o600); err != nil {
		t.Fatal(err)
	}
	outputPath := filepath.Join(root, "score.json")
	var stdout, stderr bytes.Buffer
	code := run([]string{
		"score-proof", "--request", requestPath, "--metrics-receipt", metricsPath,
		"--r0b-verification-receipt", r0bPath, "--v5-dossier", dossierPath,
		"--v5-evidence-root", evidenceRoot, "--output", outputPath,
	}, &stdout, &stderr)
	if code != 2 || !strings.Contains(stderr.String(), "SHA-256 differs from the dossier reference") {
		t.Fatalf("score-proof misbound V5 code/stderr = %d/%s, want typed receipt hash refusal", code, stderr.String())
	}
	if stdout.Len() != 0 {
		t.Fatalf("score-proof emitted output for a misbound V5 receipt: %s", stdout.String())
	}
	if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
		t.Fatalf("score-proof wrote output for a misbound V5 receipt: stat err=%v", err)
	}
}

func TestScoreProofCommandRejectsMissingOrMalformedTypedV5ReceiptPin(t *testing.T) {
	for _, test := range []struct {
		name string
		pin  string
	}{
		{name: "missing pin", pin: ""},
		{name: "malformed pin", pin: "not-a-sha256"},
	} {
		t.Run(test.name, func(t *testing.T) {
			root := t.TempDir()
			sourceBytes := []byte("theorem mathcaseNatAddAssoc : True := by trivial\n")
			sourceSHA := bookScoreTestSHA256(sourceBytes)
			metricsPath := scoreProofTestMetricsArtifacts(t, root, sourceSHA)
			statementSHA, err := domain.ProblemStatementDigest(r0bScoreProblemID, r0bScoreStatement, r0bScoreLeanStatement)
			if err != nil {
				t.Fatal(err)
			}
			request := bookScoreRequest{
				SchemaVersion: "mathcase-m6-score-request-v1",
				Config:        book.Config{Beta: 1, Eta: 1, Alpha: 0.5},
				Proof: book.ProofMetrics{
					ProblemID: r0bScoreProblemID, ProblemStatementSHA256: statementSHA,
					ProofID: r0bScoreProofID, ProofSHA256: sourceSHA, LeanDeclaration: r0bScoreTheorem,
					GlobalSurprise: 0.4, LocalObviousness: 0.8, SurfaceTokens: 30,
				},
			}
			requestPath := filepath.Join(root, "request.json")
			writeScoreRequest(t, requestPath, request)
			r0bPath := writeScoreR0BReceipt(t, root, sourceBytes, r0bScoreLeanStatement, bookScoreTestSHA256([]byte(r0bScoreLeanStatement)))
			dossierPath, evidenceRoot := writeScoreV5ReceiptFixture(t, root, sourceSHA)
			var dossier domain.Dossier
			dossierBytes, err := os.ReadFile(dossierPath)
			if err != nil {
				t.Fatal(err)
			}
			if err := json.Unmarshal(dossierBytes, &dossier); err != nil {
				t.Fatal(err)
			}
			dossier.Verifications[0].GateReceipt.ReceiptSHA256 = test.pin
			badDossier, err := json.Marshal(dossier)
			if err != nil {
				t.Fatal(err)
			}
			if err := os.WriteFile(dossierPath, badDossier, 0o600); err != nil {
				t.Fatal(err)
			}
			outputPath := filepath.Join(root, "score.json")
			var stdout, stderr bytes.Buffer
			code := run([]string{
				"score-proof", "--request", requestPath, "--metrics-receipt", metricsPath,
				"--r0b-verification-receipt", r0bPath, "--v5-dossier", dossierPath,
				"--v5-evidence-root", evidenceRoot, "--output", outputPath,
			}, &stdout, &stderr)
			if code != 2 || !strings.Contains(stderr.String(), "nonempty canonical SHA-256") {
				t.Fatalf("score-proof %s code/stderr = %d/%s, want V5 receipt-pin refusal", test.name, code, stderr.String())
			}
			if stdout.Len() != 0 {
				t.Fatalf("score-proof emitted output for a %s: %s", test.name, stdout.String())
			}
			if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
				t.Fatalf("score-proof wrote output for a %s: stat err=%v", test.name, err)
			}
		})
	}
}

func writeScoreV5ReceiptFixture(t *testing.T, root, proofSHA string) (string, string) {
	t.Helper()
	problem := domain.MathProblem{ID: r0bScoreProblemID, Statement: r0bScoreStatement, LeanStatement: r0bScoreLeanStatement}
	return writeScoreV5ReceiptFixtureForProblem(t, root, problem, proofSHA, nil, nil)
}

func writeScoreV5ReceiptFixtureForProblem(t *testing.T, root string, problem domain.MathProblem, proofSHA string, m4Ref *domain.M4ReceiptReference, m4Records []domain.VerificationRecord) (string, string) {
	t.Helper()
	evidenceRoot := filepath.Join(root, "v5-evidence")
	for _, dir := range []string{"inputs", "raw"} {
		if err := os.MkdirAll(filepath.Join(evidenceRoot, dir), 0o700); err != nil {
			t.Fatal(err)
		}
	}
	now := time.Date(2026, time.October, 22, 12, 0, 0, 0, time.UTC)
	statementSHA, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	input := []byte("synthetic exact-proof V5 ablation request")
	ablatedSource := []byte("theorem mathcaseNatAddAssoc_without_lemma : True := by trivial\n")
	output := []byte("bounded ablation search completed; proof did not close")
	for name, contents := range map[string][]byte{
		"inputs/v5.json": input, "raw/ablated.lean": ablatedSource, "raw/v5-output.txt": output,
	} {
		if err := os.WriteFile(filepath.Join(evidenceRoot, filepath.FromSlash(name)), contents, 0o600); err != nil {
			t.Fatal(err)
		}
	}
	evidenceID := "v5-ablation-" + problem.ID
	receiptID := "v5-receipt-" + problem.ID
	audit := domain.V5EssentialityAudit{Ablations: []domain.V5LemmaAblation{{
		LemmaID: "main-lemma", Attempted: true, SearchCompleted: true,
		AblatedProofClosed: false, AblatedSourceSHA256: bookScoreTestSHA256(ablatedSource), EvidenceID: evidenceID,
	}}}
	receipt := gateaudit.V5Receipt{
		Header: gateaudit.Header{
			SchemaVersion: gateaudit.V5ReceiptSchema, EvidenceID: receiptID,
			Gate: domain.GateEssentiality, ProblemID: problem.ID,
			ProblemStatementSHA256: statementSHA, ProofSHA256: proofSHA, RecordedAt: now,
		},
		Audit: audit,
		Ablations: []gateaudit.V5AblationReceipt{{
			LemmaID: "main-lemma", EvidenceID: evidenceID, ProblemID: problem.ID,
			ProblemStatementSHA256: statementSHA, ProofSHA256: proofSHA, RunID: "run-v5-r0b",
			StartedAt: now.Add(-time.Minute), FinishedAt: now, ExitCode: 0,
			InputSHA256: bookScoreTestSHA256(input), InputPath: "inputs/v5.json",
			AblatedSourceSHA256: bookScoreTestSHA256(ablatedSource), AblatedSourcePath: "raw/ablated.lean",
			OutputPath: "raw/v5-output.txt", OutputSHA256: bookScoreTestSHA256(output),
			SearchCompleted: true, AblatedProofClosed: false,
		}},
	}
	receiptBytes, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(evidenceRoot, receiptID+".gate.json"), receiptBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	record := domain.VerificationRecord{
		Gate: domain.GateEssentiality, Status: domain.VerificationPassed,
		Summary: "synthetic typed V5 receipt fixture", EvidenceIDs: audit.EvidenceIDs(),
		GateReceipt: &domain.GateReceiptReference{EvidenceID: receiptID, ReceiptSHA256: bookScoreTestSHA256(receiptBytes)},
		ProblemID:   problem.ID, ProblemStatementSHA256: statementSHA, ProofSHA256: proofSHA,
		Essentiality: &audit, RecordedAt: now,
	}
	dossier := domain.Dossier{
		SchemaVersion: domain.DossierSchemaVersion,
		Case:          domain.Case{ID: "case-v5-" + problem.ID, CreatedAt: now.Add(-time.Hour)},
		Problem:       problem,
		M4Receipt:     m4Ref,
		Verifications: append(append([]domain.VerificationRecord(nil), m4Records...), record),
	}
	dossierBytes, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	dossierPath := filepath.Join(root, "v5-dossier.json")
	if err := os.WriteFile(dossierPath, dossierBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	return dossierPath, evidenceRoot
}

func TestScoreProofCommandRejectsMisboundR0BReceipt(t *testing.T) {
	root := t.TempDir()
	sourceBytes := []byte("theorem mathcaseNatAddAssoc : True := by trivial\n")
	sourceDigest := sha256.Sum256(sourceBytes)
	sourceSHA := hex.EncodeToString(sourceDigest[:])
	metricsPath := scoreProofTestMetricsArtifacts(t, root, sourceSHA)
	statementDigest := sha256.Sum256([]byte(r0bScoreLeanStatement))
	rawStatementSHA := hex.EncodeToString(statementDigest[:])
	statementSHA, err := domain.ProblemStatementDigest(r0bScoreProblemID, r0bScoreStatement, r0bScoreLeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	request := bookScoreRequest{
		SchemaVersion: "mathcase-m6-score-request-v1",
		Config:        book.Config{Beta: 1, Eta: 1, Alpha: 0.5},
		Proof: book.ProofMetrics{
			ProblemID: r0bScoreProblemID, ProblemStatementSHA256: statementSHA,
			ProofID: r0bScoreProofID, ProofSHA256: strings.Repeat("b", 64),
			GlobalSurprise: 0.4, LocalObviousness: 0.8, SurfaceTokens: 30,
			LeanDeclaration: r0bScoreTheorem,
		},
	}
	requestPath := filepath.Join(root, "request.json")
	writeScoreRequest(t, requestPath, request)
	r0bPath := writeScoreR0BReceipt(t, root, sourceBytes, r0bScoreLeanStatement, rawStatementSHA)
	outputPath := filepath.Join(root, "score.json")
	var stdout, stderr bytes.Buffer
	code := run([]string{"score-proof", "--request", requestPath, "--metrics-receipt", metricsPath, "--r0b-verification-receipt", r0bPath, "--output", outputPath}, &stdout, &stderr)
	if code != 2 || !strings.Contains(stderr.String(), "does not match the exact scored proof") {
		t.Fatalf("score-proof misbound R0b receipt code/stderr = %d/%s, want exact-proof refusal", code, stderr.String())
	}
	if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
		t.Fatalf("score-proof wrote output for misbound R0b receipt: stat err=%v", err)
	}
}

func writeScoreRequest(t *testing.T, path string, request bookScoreRequest) {
	t.Helper()
	data, err := json.Marshal(request)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(path, data, 0o600); err != nil {
		t.Fatal(err)
	}
}

func writeScoreR0BReceipt(t *testing.T, root string, sourceBytes []byte, statement, statementSHA string) string {
	t.Helper()
	proofDigest := sha256.Sum256(sourceBytes)
	proofSHA := hex.EncodeToString(proofDigest[:])
	receipt := r0bScoreReceipt{
		SchemaVersion: "mathcase-r0b-verification-v2", RecordedAtUTC: time.Now().UTC().Add(-time.Second),
		Problem: r0bScoreProblem, Theorem: r0bScoreTheorem, Statement: statement,
		StatementSHA256: statementSHA, ProofSHA256: proofSHA, Toolchain: r0bScoreToolchain,
		LeanVersion:   "Lean (version 4.33.1, x86_64-w64-mingw32, commit test, Release)",
		AxiomOutput:   "'mathcaseNatAddAssoc' does not depend on any axioms",
		BuildExitCode: 0, AxiomCommandExitCode: 0, PrimaryWorktreeUnchanged: true,
		CleanSourceSnapshotRebuild: true, AxiomAuditPassed: true,
		CleanSourceSnapshotSHA256: strings.Repeat("c", 64), CleanSnapshotProofMatchesWorktree: true,
		FullR0BClosed: true, R0BGateStatus: "PASSED", RemainingR0BWork: []string{},
	}
	receipt.Gates.V1 = "PASSED"
	receipt.Gates.V2 = "PASSED"
	data, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	path := filepath.Join(root, "r0b-verification-receipt.json")
	if err := os.WriteFile(path, data, 0o600); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(root, "MathCaseR0b.lean"), sourceBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	return path
}

func TestScoreProofCommandRejectsMetricsForDifferentProofSource(t *testing.T) {
	root := t.TempDir()
	metricsPath := scoreProofTestMetricsArtifacts(t, root, strings.Repeat("a", 64))
	request := bookScoreRequest{
		SchemaVersion: "mathcase-m6-score-request-v1",
		Config:        book.Config{Beta: 1, Eta: 1, Alpha: 0.5},
		Proof: book.ProofMetrics{
			ProblemID: "problem-r0b", ProblemStatementSHA256: strings.Repeat("b", 64),
			ProofID: "proof-r0b", ProofSHA256: strings.Repeat("c", 64),
			GlobalSurprise: 0.4, LocalObviousness: 0.8, SurfaceTokens: 30,
		},
	}
	requestBytes, err := json.Marshal(request)
	if err != nil {
		t.Fatal(err)
	}
	requestPath := filepath.Join(root, "request.json")
	if err := os.WriteFile(requestPath, requestBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	outputPath := filepath.Join(root, "score.json")
	var stdout, stderr bytes.Buffer
	code := run([]string{"score-proof", "--request", requestPath, "--metrics-receipt", metricsPath, "--output", outputPath}, &stdout, &stderr)
	if code != 2 || !strings.Contains(stderr.String(), "does not match") {
		t.Fatalf("score-proof with mismatched source code/stderr = %d/%s, want source mismatch refusal", code, stderr.String())
	}
	if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
		t.Fatalf("score-proof wrote an output for mismatched metrics: stat err=%v", err)
	}
}

func scoreProofTestMetricsArtifacts(t *testing.T, root, sourceSHA string) string {
	t.Helper()
	const declaration = "MathCase.mathcaseNatAddAssoc"
	const projectManifestSHA = "cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc"
	const mathlibManifestSHA = "dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"
	const helperSHA = "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
	const instrumentedSHA = "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
	const lakefileSHA = "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"
	const toolchainSHA = "2222222222222222222222222222222222222222222222222222222222222222"
	const runnerSHA = "4444444444444444444444444444444444444444444444444444444444444444"
	const orchestratorSHA = "abababababababababababababababababababababababababababababababab"
	const cacheReceiptSHA = "5555555555555555555555555555555555555555555555555555555555555555"
	const inventorySHA = "6666666666666666666666666666666666666666666666666666666666666666"
	const prepSHA = "7777777777777777777777777777777777777777777777777777777777777777"
	const verifySHA = "8888888888888888888888888888888888888888888888888888888888888888"
	metrics := map[string]any{
		"schema": "mathcase-lean-expr-metrics-v2", "declaration": declaration,
		"core_expr_nodes": 6, "core_expr_depth": 3,
		"core_expr_nodes_by_kind": map[string]int{
			"applications": 2, "lambdas": 1, "forall_expressions": 1, "let_expressions": 0,
			"metadata": 0, "projections": 0, "bound_variables": 0, "free_variables": 0,
			"metavariables": 0, "sorts": 0, "constants": 2, "literals": 0,
		},
		"binder_nodes": 2, "constant_reference_nodes": 2,
	}
	metricJSON, err := json.Marshal(metrics)
	if err != nil {
		t.Fatal(err)
	}
	stdout := []byte("info: MATHCASE_EXPR_METRICS " + string(metricJSON) + "\n'" + declaration + "' does not depend on any axioms\n")
	stderr := []byte{}
	stdoutSHA := bookScoreTestSHA256(stdout)
	stderrSHA := bookScoreTestSHA256(stderr)
	axioms := map[string][]string{declaration: {}}
	files := []map[string]any{
		{"path": "instrumented.lean", "bytes": 80, "sha256": instrumentedSHA},
		{"path": "lake-manifest.json", "bytes": 40, "sha256": projectManifestSHA},
		{"path": "lakefile.toml", "bytes": 30, "sha256": lakefileSHA},
		{"path": "lean-toolchain", "bytes": 31, "sha256": toolchainSHA},
		{"path": "metrics-helper.lean", "bytes": 128, "sha256": helperSHA},
		{"path": "source.lean", "bytes": 64, "sha256": sourceSHA},
	}
	sort.Slice(files, func(i, j int) bool { return files[i]["path"].(string) < files[j]["path"].(string) })
	var canonical strings.Builder
	for _, file := range files {
		fmt.Fprintf(&canonical, "%s\x00%d\x00%s\n", file["path"], file["bytes"], file["sha256"])
	}
	snapshotID := bookScoreTestSHA256([]byte(canonical.String()))
	manifest := map[string]any{
		"schema_version": "mathcase-m6-source-snapshot-v1", "snapshot_id": snapshotID,
		"source_path": "MathCaseR0b.lean", "declaration": declaration, "files": files,
		"identity_rule": "SHA-256 of canonical sorted path/byte-count/SHA-256 rows",
	}
	manifestBytes, err := json.Marshal(manifest)
	if err != nil {
		t.Fatal(err)
	}
	manifestSHA := bookScoreTestSHA256(manifestBytes)
	imageID := "sha256:" + strings.Repeat("a", 64)
	now := time.Date(2026, 10, 22, 12, 0, 0, 0, time.UTC)
	configuration := map[string]any{
		"image_id": imageID, "lean_toolchain": "Lean 4.33.1", "mathlib_revision": "0123456789abcdef0123456789abcdef01234567",
		"project_lake_manifest_sha256": projectManifestSHA, "mathlib_lake_manifest_sha256": mathlibManifestSHA,
		"network_mode": "none", "container_root_read_only": true, "cache_volume": "mathcase-m3-cache-control-r1", "cache_volume_read_only": true,
		"cpu_limit": 2, "memory_limit": "4g", "pids_limit": 128, "timeout_seconds": 180, "tmpfs": "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"proof_scope": "One known-result expression-metrics probe", "mounts": []map[string]any{},
	}
	cacheModules := make([]map[string]string, 5)
	for i := range cacheModules {
		cacheModules[i] = map[string]string{"module": fmt.Sprintf("Mathlib.Module%d", i), "relative_path": fmt.Sprintf("build/Module%d.olean", i), "sha256": strings.Repeat("9", 64)}
	}
	runRequest := map[string]any{
		"schema_version": "mathcase-m6-pinned-lean-run-request-v2", "snapshot_id": snapshotID,
		"snapshot_manifest_sha256": manifestSHA, "declaration": declaration, "source_path": "MathCaseR0b.lean", "source_sha256": sourceSHA,
		"instrumented_source_sha256": instrumentedSHA, "metrics_helper_sha256": helperSHA, "project_lakefile_sha256": lakefileSHA,
		"project_lake_manifest_sha256": projectManifestSHA, "mathlib_lake_manifest_sha256": mathlibManifestSHA,
		"lean_toolchain_sha256": toolchainSHA, "orchestrator_script_sha256": orchestratorSHA, "runtime_script_sha256": runnerSHA,
		"runner_script_sha256": runnerSHA, "configuration": configuration,
	}
	runRequestBytes, err := json.Marshal(runRequest)
	if err != nil {
		t.Fatal(err)
	}
	runRequestSHA := bookScoreTestSHA256(runRequestBytes)
	runReceipt := map[string]any{
		"schema_version": "mathcase-m6-pinned-lean-run-v2", "evidence_class": "PINNED_ISOLATED_EXECUTION", "status": "EXECUTED_PASS",
		"recorded_at_utc": now, "snapshot_id": snapshotID, "snapshot_manifest_path": "snapshot/snapshot-manifest.json", "snapshot_manifest_sha256": manifestSHA,
		"source_path": "MathCaseR0b.lean", "source_sha256": sourceSHA, "instrumented_source_sha256": instrumentedSHA,
		"metrics_helper_sha256": helperSHA, "declaration": declaration, "run_request_path": "run-request.json", "run_request_sha256": runRequestSHA,
		"runner_script_sha256": runnerSHA, "runner_script_path": "scripts/m6_pinned_lean_runtime.py", "python_executable": "C:/python.exe", "python_version": "3.11.9",
		"orchestrator_script_sha256": orchestratorSHA, "orchestrator_script_path": "scripts/lean_expr_metrics.py",
		"runtime_script_sha256": runnerSHA, "runtime_script_path": "scripts/m6_pinned_lean_runtime.py",
		"working_tree_identity": map[string]any{"status": "CAPTURED"},
		"configuration":         configuration,
		"cache_provenance": map[string]any{
			"schema_version": "mathcase-m3-cache-provenance-v1", "cache_root_path": "C:/cache", "cache_mount_path": "/mathcase/cache",
			"provenance_class": "MIXED_CACHE_PROVENANCE", "mathlib_revision": "0123456789abcdef0123456789abcdef01234567", "lean_toolchain": "Lean 4.33.1",
			"lake_manifest_sha256": mathlibManifestSHA, "cache_run_receipt_path": "cache-receipt.json", "cache_run_receipt_sha256": cacheReceiptSHA,
			"inventory_path": "cache-inventory.jsonl", "inventory_sha256": inventorySHA, "cache_mount_read_only": true,
			"target_modules": cacheModules, "module_olean": map[string]string{"module": "Mathlib.Data.Nat.Basic", "relative_path": "build/Nat/Basic.olean", "sha256": strings.Repeat("9", 64)},
		},
		"cache_volume_provenance": map[string]any{
			"schema_version": "mathcase-m3-cache-volume-provenance-v1", "volume": "mathcase-m3-cache-control-r1", "cache_inventory_sha256": inventorySHA,
			"volume_prep_receipt_sha256": prepSHA, "volume_verification_receipt_sha256": verifySHA,
			"read_only_during_replay": true, "network_none_during_copy_and_verification": true, "checks": map[string]bool{"volume_verified": true},
		},
		"container_name": "mathcase-m6-metrics-test", "command_argv": []string{"docker", "run", "--network=none", "--read-only", "--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128", imageID},
		"docker_executable": "docker", "docker_server_version": "29.9.2", "image_probe": map[string]any{"exit_code": 0},
		"lean_version_preflight_path": "lean-version-preflight.json", "lean_version_preflight_sha256": strings.Repeat("a", 64),
		"preflight_evidence": map[string]any{"status": "PASS"}, "lean_version": "Lean (version 4.33.1)",
		"started_at_utc": now, "finished_at_utc": now.Add(time.Second), "elapsed_ms": 1000, "exit_code": 0, "timed_out": false,
		"container_absent_after_cleanup": true, "cleanup_actions": []map[string]any{}, "stdout_path": "stdout.bin", "stdout_bytes": len(stdout), "stdout_sha256": stdoutSHA,
		"stderr_path": "stderr.bin", "stderr_bytes": len(stderr), "stderr_sha256": stderrSHA, "metrics_parse_status": "PASS", "metrics_parse_error": nil,
		"metrics_payload_sha256": bookScoreTestSHA256(metricJSON), "axiom_observations": axioms,
		"phase_marker_status": "NOT_INSTRUMENTED_FOR_SINGLE_PASS_EXPRESSION_METRICS", "marker_times_ms": map[string]float64{},
	}
	runBytes, err := json.Marshal(runReceipt)
	if err != nil {
		t.Fatal(err)
	}
	metricsReceipt := map[string]any{
		"schema_version": "mathcase-m6-lean-expr-metrics-v4", "status": "METRICS_RECORDED", "evidence_class": "PINNED_ISOLATED_EXECUTION",
		"recorded_at_utc": now, "source_path": "MathCaseR0b.lean", "source_sha256": sourceSHA, "declaration": declaration,
		"project_lakefile_path": "lakefile.toml", "project_lakefile_sha256": lakefileSHA, "lake_manifest_sha256": projectManifestSHA,
		"lean_toolchain": "leanprover/lean4:v4.33.1", "lean_toolchain_sha256": toolchainSHA, "lean_version": "Lean (version 4.33.1)",
		"metrics_helper_sha256": helperSHA, "orchestrator_script_sha256": orchestratorSHA, "runtime_script_sha256": runnerSHA,
		"instrumented_source_path": "snapshot/instrumented.lean", "instrumented_source_sha256": instrumentedSHA,
		"snapshot_id": snapshotID, "snapshot_manifest_path": "snapshot/snapshot-manifest.json", "snapshot_manifest_sha256": manifestSHA,
		"run_request_path": "run-request.json", "run_request_sha256": runRequestSHA,
		"run_receipt_path": "run-receipt.json", "run_receipt_sha256": bookScoreTestSHA256(runBytes),
		"stdout_path": "stdout.bin", "stdout_sha256": stdoutSHA, "stderr_path": "stderr.bin", "stderr_sha256": stderrSHA,
		"axiom_observations": axioms, "metrics": metrics, "scope_note": "Expression shape only; no proof improvement or V5 result.",
	}
	metricsBytes, err := json.Marshal(metricsReceipt)
	if err != nil {
		t.Fatal(err)
	}
	for name, content := range map[string][]byte{
		"metrics-receipt.json": metricsBytes, "run-receipt.json": runBytes, "run-request.json": runRequestBytes, "stdout.bin": stdout, "stderr.bin": stderr,
	} {
		if err := os.WriteFile(filepath.Join(root, name), content, 0o600); err != nil {
			t.Fatal(err)
		}
	}
	if err := os.MkdirAll(filepath.Join(root, "snapshot"), 0o700); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(root, "snapshot", "snapshot-manifest.json"), manifestBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	return filepath.Join(root, "metrics-receipt.json")
}

func bookScoreTestSHA256(raw []byte) string {
	digest := sha256.Sum256(raw)
	return hex.EncodeToString(digest[:])
}

func scoreProofTestVerification(gate domain.VerificationGate, evidenceID, problemID, statementSHA, proofSHA string) domain.VerificationRecord {
	return domain.VerificationRecord{
		Gate: gate, Status: domain.VerificationPassed, Summary: "synthetic command fixture",
		EvidenceIDs: []string{evidenceID}, ProblemID: problemID,
		ProblemStatementSHA256: statementSHA, ProofSHA256: proofSHA,
		RecordedAt: time.Date(2026, 10, 20, 12, 0, 0, 0, time.UTC),
	}
}
