package poser

import (
	"encoding/json"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/persistence"
)

func TestValidateTheoremAgainstDossierAcceptsExactSyntheticBinding(t *testing.T) {
	theorem := syntheticTrustedParentTheorem(t)
	dossier := syntheticParentDossier(theorem)
	if err := validateTheoremAgainstDossier(theorem, dossier); err != nil {
		t.Fatalf("validateTheoremAgainstDossier(synthetic exact parent) = %v, want accepted binding", err)
	}
}

func TestValidateTheoremAgainstDossierRefusesMismatchedInputs(t *testing.T) {
	tests := []struct {
		name   string
		mutate func(*VerifiedTheorem, *domain.Dossier)
	}{
		{name: "statement", mutate: func(_ *VerifiedTheorem, dossier *domain.Dossier) { dossier.Problem.Statement += " changed" }},
		{name: "Lean proposition", mutate: func(_ *VerifiedTheorem, dossier *domain.Dossier) { dossier.Problem.LeanStatement = "False" }},
		{name: "M0 snapshot", mutate: func(_ *VerifiedTheorem, dossier *domain.Dossier) {
			dossier.CatalogSnapshotSHA256 = strings.Repeat("f", 64)
		}},
		{name: "source identity", mutate: func(_ *VerifiedTheorem, dossier *domain.Dossier) {
			dossier.Problem.SourceIDs = []string{"different-source"}
		}},
		{name: "passing proof", mutate: func(_ *VerifiedTheorem, dossier *domain.Dossier) {
			dossier.Attempts[0].VerifiedProofSHA256 = strings.Repeat("f", 64)
		}},
		{name: "V1 receipt", mutate: func(_ *VerifiedTheorem, dossier *domain.Dossier) {
			dossier.Verifications[0].EvidenceIDs = []string{"changed-v1-evidence"}
		}},
		{name: "V2 receipt", mutate: func(theorem *VerifiedTheorem, _ *domain.Dossier) {
			theorem.V2.EvidenceIDs = []string{"changed-v2-evidence"}
		}},
		{name: "V3 receipt", mutate: func(theorem *VerifiedTheorem, _ *domain.Dossier) { theorem.V3.ReviewerID = "different-reviewer" }},
	}

	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			theorem := syntheticTrustedParentTheorem(t)
			dossier := syntheticParentDossier(theorem)
			test.mutate(&theorem, &dossier)
			if err := validateTheoremAgainstDossier(theorem, dossier); err == nil {
				t.Fatalf("validateTheoremAgainstDossier(%s mismatch) = nil, want refusal", test.name)
			}
		})
	}
}

func TestTrustTheoremFromSignedDossierRefusesCallerAuthoredCapability(t *testing.T) {
	theorem := syntheticTrustedParentTheorem(t)
	dossier := syntheticParentDossier(theorem)
	var forged persistence.VerifiedSignedDossier
	if err := json.Unmarshal([]byte(`{"case_id":"case-synthetic-parent","dossier_sha256":"`+strings.Repeat("a", 64)+`","signer_id":"synthetic-signer"}`), &forged); err != nil {
		t.Fatalf("json.Unmarshal(caller-authored signed-dossier fields) = %v", err)
	}
	if _, err := TrustTheoremFromSignedDossier(theorem, dossier, forged); err == nil || !strings.Contains(err.Error(), "capability") {
		t.Fatalf("TrustTheoremFromSignedDossier(caller-authored capability) error = %v, want capability refusal", err)
	}
}

func TestGenerateAcceptsSyntheticTrustedParentCandidate(t *testing.T) {
	theorem := syntheticTrustedParentTheorem(t)
	// This package-internal marker is fixture-only. Production obtains it only
	// through TrustTheoremFromSignedDossier after the M8 reader and signature
	// verifier have reopened the exact dossier. This test performs no signing.
	setSyntheticTrustBinding(t, &theorem)
	if err := theorem.Validate(); err != nil {
		t.Fatalf("VerifiedTheorem.Validate(synthetic trusted fixture) = %v, want valid parent", err)
	}
	result, err := Generate(GenerationRequest{
		Primary: theorem, Operators: []Operator{OperatorRelax},
		GeneratedAt: time.Date(2026, time.October, 23, 12, 0, 0, 0, time.UTC),
	})
	if err != nil {
		t.Fatalf("Generate(synthetic trusted parent) error = %v, want candidate proposals", err)
	}
	if len(result.Proposals) == 0 {
		t.Fatalf("Generate(synthetic trusted parent) proposals = %#v, want at least one structural candidate", result.Proposals)
	}
}

func TestGenerateRefusesTrustedParentChangedAfterBinding(t *testing.T) {
	theorem := syntheticTrustedParentTheorem(t)
	setSyntheticTrustBinding(t, &theorem)
	theorem.V3.Summary += " changed after reopen"
	if _, err := Generate(GenerationRequest{
		Primary: theorem, Operators: []Operator{OperatorRelax},
		GeneratedAt: time.Date(2026, time.October, 23, 12, 0, 0, 0, time.UTC),
	}); err == nil || !strings.Contains(err.Error(), "changed after they were bound") {
		t.Fatalf("Generate(mutated trusted parent) error = %v, want post-binding mutation refusal", err)
	}
}

func TestGenerateStillRefusesSerializedTrustedMarker(t *testing.T) {
	theorem := syntheticTrustedParentTheorem(t)
	setSyntheticTrustBinding(t, &theorem)
	data, err := json.Marshal(theorem)
	if err != nil {
		t.Fatalf("json.Marshal(synthetic trusted theorem) = %v", err)
	}
	var reopened VerifiedTheorem
	if err := json.Unmarshal(data, &reopened); err != nil {
		t.Fatalf("json.Unmarshal(synthetic theorem) = %v", err)
	}
	if _, err := Generate(GenerationRequest{Primary: reopened, GeneratedAt: time.Date(2026, time.October, 23, 12, 0, 0, 0, time.UTC)}); err == nil || !strings.Contains(err.Error(), "builder-authored claims") {
		t.Fatalf("Generate(serialized trust marker) error = %v, want caller-authored V3 refusal", err)
	}
}

func setSyntheticTrustBinding(t *testing.T, theorem *VerifiedTheorem) {
	t.Helper()
	theorem.trustedDossierSHA256 = theorem.SignedDossierSHA256
	digest, err := trustedParentPayloadSHA256(*theorem)
	if err != nil {
		t.Fatalf("trustedParentPayloadSHA256(synthetic fixture) error = %v", err)
	}
	theorem.trustedTheoremSHA256 = digest
}

func syntheticTrustedParentTheorem(t *testing.T) VerifiedTheorem {
	t.Helper()
	theorem := verifiedTheorem(t, "parent-trust-fixture", "theorem source_fact (a b c : Nat) : a ≤ b ∧ b < c", 'a', 'b')
	theorem.SignedDossierCaseID = "case-synthetic-parent"
	theorem.SignedDossierSHA256 = strings.Repeat("a", 64)
	theorem.SignedDossierSignerID = "synthetic-signer"
	return theorem
}

func syntheticParentDossier(theorem VerifiedTheorem) domain.Dossier {
	proposition, _ := theorem.FormalProposition()
	return domain.Dossier{
		Case: domain.Case{ID: theorem.SignedDossierCaseID, Question: theorem.InformalStatement},
		Problem: domain.MathProblem{
			ID: theorem.ProblemID, Statement: theorem.InformalStatement,
			LeanStatement: proposition, SourceIDs: append([]string(nil), theorem.SourceIDs...),
		},
		CatalogSnapshotSHA256: theorem.SourceSnapshotSHA256,
		Attempts: []domain.SolverAttempt{{
			ProblemID: theorem.ProblemID, Outcome: domain.SolverOutcomePass,
			VerifiedProofSHA256: theorem.ProofSHA256,
		}},
		Verifications: []domain.VerificationRecord{theorem.V1, theorem.V2, theorem.V3},
	}
}
