package book

import (
	"fmt"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestScoreRequiresV1V2V5RecordsBoundToTheProof(t *testing.T) {
	proof := proofMetrics("problem-a", "proof-a", strings.Repeat("a", 64), false)
	config := Config{Beta: 1, Eta: 2, Alpha: 0.5}
	result, err := Score(config, proof)
	if err != nil || result.Refusal != "V1 kernel verification is absent" {
		t.Fatalf("Score(config, proof without records) = (%#v, %v), want V1 refusal", result, err)
	}

	proof.VerificationRecords = passedVerificationRecords(proof)
	proof.VerificationRecords = proof.VerificationRecords[:2]
	result, err = Score(config, proof)
	if err != nil || result.Refusal != "V5 essentiality review is absent" {
		t.Fatalf("Score(config, proof without V5) = (%#v, %v), want V5 refusal", result, err)
	}

	proof.VerificationRecords = passedVerificationRecords(proof)
	result, err = Score(config, proof)
	if err != nil || result.Score <= 0 || result.Disposition != ScoreDispositionCandidateOnly || !strings.Contains(result.Refusal, "caller-supplied and unreviewed") {
		t.Fatalf("Score(config, proof with passing records) = (%#v, %v), want explicit candidate-only score pending independent M6 judgment", result, err)
	}
}

func TestScoreRejectsOldVerificationAfterProofChanges(t *testing.T) {
	proof := proofMetrics("problem-a", "proof-a", strings.Repeat("a", 64), true)
	proof.ProofSHA256 = strings.Repeat("f", 64)
	proof.LeanMetricsSourceSHA256 = proof.ProofSHA256
	if _, err := Score(Config{Beta: 1, Eta: 2, Alpha: 0.5}, proof); err == nil || !strings.Contains(err.Error(), "does not match the scored problem, statement, and proof") {
		t.Fatalf("Score() error = %v, want stale V1/V2/V5 evidence rejected for changed proof bytes", err)
	}
}

func TestProofMetricsValidatesExecutionBoundM4ToM6Join(t *testing.T) {
	proof := proofMetrics("problem-a", "proof-a", strings.Repeat("a", 64), false)
	proof.LeanVerificationReceiptSHA256 = strings.Repeat("d", 64)
	proof.LeanProofInputSHA256 = strings.Repeat("e", 64)
	proof.LeanMetricsToolchain = "leanprover/lean4:v4.33.1"
	proof.LeanMetricsLeanVersion = "Lean (version 4.33.1, test build)"
	proof.VerificationRecords = typedM4VerificationRecords(proof, proof.LeanVerificationReceiptSHA256)
	if err := proof.Validate(); err != nil {
		t.Fatalf("ProofMetrics.Validate(valid typed M4/M6 join) error = %v, want nil", err)
	}

	result, err := Score(Config{Beta: 1, Eta: 1, Alpha: 0.5}, proof)
	if err != nil || result.Refusal != "V5 essentiality review is absent" {
		t.Fatalf("Score(valid M4/M6 join without V5) = (%#v, %v), want V5-only block", result, err)
	}

	tests := []struct {
		name    string
		mutate  func(*ProofMetrics)
		wantErr string
	}{
		{
			name: "missing V2 receipt link",
			mutate: func(candidate *ProofMetrics) {
				candidate.VerificationRecords[1].GateReceipt = nil
			},
			wantErr: "V2 is not linked to the typed Lean receipt",
		},
		{
			name: "swapped V1 receipt",
			mutate: func(candidate *ProofMetrics) {
				candidate.VerificationRecords[0].GateReceipt.ReceiptSHA256 = strings.Repeat("f", 64)
			},
			wantErr: "V1 is not linked to the typed Lean receipt",
		},
		{
			name: "missing typed receipt digest",
			mutate: func(candidate *ProofMetrics) {
				candidate.LeanVerificationReceiptSHA256 = ""
			},
			wantErr: "typed Lean verification linkage requires canonical receipt",
		},
		{
			name: "missing M6 toolchain identity",
			mutate: func(candidate *ProofMetrics) {
				candidate.LeanMetricsLeanVersion = ""
			},
			wantErr: "matching full-source metrics and a recorded toolchain identity",
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			candidate := proof
			candidate.VerificationRecords = append([]domain.VerificationRecord(nil), proof.VerificationRecords...)
			for index := range candidate.VerificationRecords {
				candidate.VerificationRecords[index].EvidenceIDs = append([]string(nil), proof.VerificationRecords[index].EvidenceIDs...)
				candidate.VerificationRecords[index].EvidenceArtifacts = append([]domain.EvidenceArtifactRef(nil), proof.VerificationRecords[index].EvidenceArtifacts...)
				if proof.VerificationRecords[index].GateReceipt != nil {
					receipt := *proof.VerificationRecords[index].GateReceipt
					candidate.VerificationRecords[index].GateReceipt = &receipt
				}
			}
			test.mutate(&candidate)
			if err := candidate.Validate(); err == nil || !strings.Contains(err.Error(), test.wantErr) {
				t.Fatalf("ProofMetrics.Validate(%s) error = %v, want error containing %q", test.name, err, test.wantErr)
			}
		})
	}
}

func typedM4VerificationRecords(proof ProofMetrics, receiptSHA256 string) []domain.VerificationRecord {
	recordedAt := time.Date(2026, time.October, 23, 12, 0, 0, 0, time.UTC)
	return []domain.VerificationRecord{
		{
			Gate: domain.GateKernelBuild, Status: domain.VerificationPassed, Summary: "typed M4 kernel receipt passed",
			EvidenceIDs: []string{"m4-v1-receipt"}, EvidenceArtifacts: []domain.EvidenceArtifactRef{{EvidenceID: "m4-v1-receipt", ArtifactSHA256: receiptSHA256}},
			GateReceipt: &domain.GateReceiptReference{EvidenceID: "m4-v1-receipt", ReceiptSHA256: receiptSHA256},
			ProblemID:   proof.ProblemID, ProblemStatementSHA256: proof.ProblemStatementSHA256, ProofSHA256: proof.ProofSHA256, RecordedAt: recordedAt,
		},
		{
			Gate: domain.GateAxiomAudit, Status: domain.VerificationPassed, Summary: "typed M4 axiom receipt passed",
			EvidenceIDs: []string{"m4-v2-receipt"}, EvidenceArtifacts: []domain.EvidenceArtifactRef{{EvidenceID: "m4-v2-receipt", ArtifactSHA256: receiptSHA256}},
			GateReceipt: &domain.GateReceiptReference{EvidenceID: "m4-v2-receipt", ReceiptSHA256: receiptSHA256},
			ProblemID:   proof.ProblemID, ProblemStatementSHA256: proof.ProblemStatementSHA256, ProofSHA256: proof.ProofSHA256, RecordedAt: recordedAt,
		},
	}
}

func TestScoreRejectsMismatchedOrReusedVerificationRecords(t *testing.T) {
	proof := proofMetrics("problem-a", "proof-a", strings.Repeat("a", 64), true)
	config := Config{Beta: 1, Eta: 2, Alpha: 0.5}

	tests := []struct {
		name    string
		mutate  func(*ProofMetrics)
		wantErr string
	}{
		{
			name: "statement digest mismatch",
			mutate: func(candidate *ProofMetrics) {
				candidate.VerificationRecords[0].ProblemStatementSHA256 = strings.Repeat("d", 64)
			},
			wantErr: "does not match the scored problem",
		},
		{
			name: "proof digest mismatch",
			mutate: func(candidate *ProofMetrics) {
				candidate.VerificationRecords[0].ProofSHA256 = strings.Repeat("b", 64)
			},
			wantErr: "does not match the scored problem",
		},
		{
			name: "duplicate gate",
			mutate: func(candidate *ProofMetrics) {
				candidate.VerificationRecords = append(candidate.VerificationRecords, candidate.VerificationRecords[0])
			},
			wantErr: "duplicate V1 verification record",
		},
		{
			name: "reused evidence ID",
			mutate: func(candidate *ProofMetrics) {
				candidate.VerificationRecords[1].EvidenceIDs = candidate.VerificationRecords[0].EvidenceIDs
			},
			wantErr: "is reused",
		},
	}

	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			candidate := proof
			candidate.VerificationRecords = append([]domain.VerificationRecord(nil), proof.VerificationRecords...)
			for index := range candidate.VerificationRecords {
				candidate.VerificationRecords[index].EvidenceIDs = append([]string(nil), proof.VerificationRecords[index].EvidenceIDs...)
			}
			test.mutate(&candidate)
			if _, err := Score(config, candidate); err == nil || !strings.Contains(err.Error(), test.wantErr) {
				t.Fatalf("Score(config, mutated proof) error = %v, want error containing %q", err, test.wantErr)
			}
		})
	}
}

func TestAcceptRewriteRequiresSameProblemStatementAndImprovement(t *testing.T) {
	config := Config{Beta: 1, Eta: 2, Alpha: 0.5}
	baselineProof := proofMetrics("problem-a", "proof-a", strings.Repeat("a", 64), true)
	baselineProof.GlobalSurprise = 0.3
	baselineProof.LocalObviousness = 0.7
	baselineProof.SurfaceTokens = 30
	baselineProof.ElaboratedExprNodes = 45
	candidateProof := proofMetrics("problem-a", "proof-b", strings.Repeat("b", 64), true)
	candidateProof.GlobalSurprise = 0.3
	candidateProof.LocalObviousness = 0.7
	candidateProof.SurfaceTokens = 15
	candidateProof.ElaboratedExprNodes = 20
	baseline, err := Score(config, baselineProof)
	if err != nil {
		t.Fatal(err)
	}
	candidate, err := Score(config, candidateProof)
	if err != nil {
		t.Fatal(err)
	}
	if err := AcceptRewrite(baseline, candidate); err == nil || !strings.Contains(err.Error(), "independently reviewed M6 quality judgments") {
		t.Fatalf("AcceptRewrite() error = %v, want candidate-only judgment refusal", err)
	}

	candidate.Proof.ProblemID = "problem-b"
	candidate.Proof.VerificationRecords = passedVerificationRecords(candidate.Proof)
	if err := AcceptRewrite(baseline, candidate); err == nil || !strings.Contains(err.Error(), "same problem") {
		t.Fatalf("AcceptRewrite() with a different problem error = %v, want same-problem refusal", err)
	}

	candidate.Proof.ProblemID = "problem-a"
	candidate.Proof.ProblemStatementSHA256 = strings.Repeat("d", 64)
	candidate.Proof.VerificationRecords = passedVerificationRecords(candidate.Proof)
	candidate, err = Score(config, candidate.Proof)
	if err != nil {
		t.Fatal(err)
	}
	if err := AcceptRewrite(baseline, candidate); err == nil || !strings.Contains(err.Error(), "same problem statement") {
		t.Fatalf("AcceptRewrite() with a different statement error = %v, want statement-binding refusal", err)
	}
}

func TestAcceptRewriteRequiresValidPassingBaseline(t *testing.T) {
	config := Config{Beta: 1, Eta: 2, Alpha: 0.5}
	baselineProof := proofMetrics("problem-a", "proof-a", strings.Repeat("a", 64), false)
	candidateProof := proofMetrics("problem-a", "proof-b", strings.Repeat("b", 64), true)
	candidateProof.SurfaceTokens = 15
	candidateProof.ElaboratedExprNodes = 20
	baseline, err := Score(config, baselineProof)
	if err != nil {
		t.Fatal(err)
	}
	candidate, err := Score(config, candidateProof)
	if err != nil {
		t.Fatal(err)
	}
	if err := AcceptRewrite(baseline, candidate); err == nil || !strings.Contains(err.Error(), "baseline") {
		t.Fatalf("AcceptRewrite() with an unverified baseline error = %v, want baseline refusal", err)
	}

	baselineProof.VerificationRecords = passedVerificationRecords(baselineProof)
	baseline, err = Score(config, baselineProof)
	if err != nil {
		t.Fatal(err)
	}
	baseline.Score += 1
	if err := AcceptRewrite(baseline, candidate); err == nil || !strings.Contains(err.Error(), "does not match") {
		t.Fatalf("AcceptRewrite() with a forged baseline score error = %v, want score-integrity refusal", err)
	}
}

func TestAcceptRewriteRequiresSharedScoreConfigAndDistinctEvidence(t *testing.T) {
	config := Config{Beta: 1, Eta: 2, Alpha: 0.5}
	baselineProof := proofMetrics("problem-a", "proof-a", strings.Repeat("a", 64), true)
	candidateProof := proofMetrics("problem-a", "proof-b", strings.Repeat("b", 64), true)
	baseline, err := Score(config, baselineProof)
	if err != nil {
		t.Fatal(err)
	}
	candidate, err := Score(config, candidateProof)
	if err != nil {
		t.Fatal(err)
	}

	candidate.Proof.VerificationRecords[0].EvidenceIDs[0] = baseline.Proof.VerificationRecords[0].EvidenceIDs[0]
	candidate, err = Score(config, candidate.Proof)
	if err != nil {
		t.Fatal(err)
	}
	if err := AcceptRewrite(baseline, candidate); err == nil || !strings.Contains(err.Error(), "reuse verification evidence") {
		t.Fatalf("AcceptRewrite() with reused evidence error = %v, want evidence-reuse refusal", err)
	}

	candidateProof = proofMetrics("problem-a", "proof-b", strings.Repeat("b", 64), true)
	otherConfig := config
	otherConfig.Beta += 1
	candidate, err = Score(otherConfig, candidateProof)
	if err != nil {
		t.Fatal(err)
	}
	if err := AcceptRewrite(baseline, candidate); err == nil || !strings.Contains(err.Error(), "same score configuration") {
		t.Fatalf("AcceptRewrite() with a different score config error = %v, want config-binding refusal", err)
	}
}

func proofMetrics(problemID, proofID, proofSHA string, verified bool) ProofMetrics {
	proof := ProofMetrics{
		ProblemID:                problemID,
		ProblemStatementSHA256:   strings.Repeat("c", 64),
		ProofID:                  proofID,
		ProofSHA256:              proofSHA,
		LeanMetricsReceiptSHA256: strings.Repeat("e", 64),
		LeanMetricsSourceSHA256:  proofSHA,
		LeanDeclaration:          "MathCase.theorem",
		GlobalSurprise:           0.5,
		LocalObviousness:         0.8,
		SurfaceTokens:            20,
		ElaboratedExprNodes:      40,
		ElaboratedExprDepth:      8,
		BinderNodes:              3,
		ConstantReferenceNodes:   6,
	}
	if verified {
		proof.VerificationRecords = passedVerificationRecords(proof)
	}
	return proof
}

func passedVerificationRecords(proof ProofMetrics) []domain.VerificationRecord {
	recordedAt := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	gates := []domain.VerificationGate{
		domain.GateKernelBuild,
		domain.GateAxiomAudit,
		domain.GateEssentiality,
	}
	records := make([]domain.VerificationRecord, 0, len(gates))
	for _, gate := range gates {
		evidenceID := fmt.Sprintf("evidence-%s-%s", proof.ProofID, strings.ToLower(string(gate)))
		records = append(records, domain.VerificationRecord{
			Gate:                   gate,
			Status:                 domain.VerificationPassed,
			Summary:                "verified test evidence",
			EvidenceIDs:            []string{evidenceID},
			ProblemID:              proof.ProblemID,
			ProblemStatementSHA256: proof.ProblemStatementSHA256,
			ProofSHA256:            proof.ProofSHA256,
			RecordedAt:             recordedAt,
		})
	}
	return records
}
