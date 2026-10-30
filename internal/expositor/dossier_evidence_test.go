package expositor

import (
	"strings"
	"testing"
	"testing/fstest"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestAuditDossierExpositionEvidenceReopensFiveTierManifestsAndStaysBlocked(t *testing.T) {
	dossier, files := syntheticM7Dossier(t)
	report, err := AuditDossierExpositionEvidence(dossier, files)
	if err != nil {
		t.Fatalf("AuditDossierExpositionEvidence() error = %v", err)
	}
	if !report.IntegrityVerified || report.Disposition != M7AuditBlocked || report.ExternalIdentityAuthenticated ||
		report.LegacyWithoutEvidence || report.BundleAudit == nil || len(report.BundleAudit.Tiers) != 5 {
		t.Fatalf("M8-facing M7 audit = %#v; want five-tier integrity and BLOCKED identity state", report)
	}
}

func TestAuditDossierExpositionEvidenceRecomputesAuthenticatedFiveTierDecision(t *testing.T) {
	dossier, files := syntheticM7Dossier(t)
	wordLimits := testWordLimits()
	manifestPaths := make(map[domain.AudienceTier]string, len(m7AudienceTiers))
	reviews := make(map[domain.AudienceTier]TierEvaluation, len(m7AudienceTiers))
	bundle := Bundle{
		AuthorCallID:        dossier.ExpositionEvaluations[0].AuthorCallID,
		ProblemID:           dossier.Problem.ID,
		ProofSHA256:         dossier.ExpositionEvaluations[0].ProofSHA256,
		CanonSnapshotSHA256: dossier.ExpositionEvaluations[0].CanonSnapshotSHA256,
		ExpositorModelID:    dossier.ExpositionEvaluations[0].AuthorModelID,
		ExpositorVersion:    dossier.ExpositionEvaluations[0].AuthorModelVersion,
	}
	for _, evaluation := range dossier.ExpositionEvaluations {
		manifestPaths[evaluation.Tier] = evaluation.EvidenceManifestPath
		review, err := tierReviewFromDomain(evaluation)
		if err != nil {
			t.Fatalf("reopen %s review fixture: %v", evaluation.Tier, err)
		}
		reviews[evaluation.Tier] = review
	}
	for _, exposition := range dossier.Expositions {
		output, err := tierOutputFromDossier(exposition, wordLimits[exposition.Tier])
		if err != nil {
			t.Fatalf("reopen %s exposition fixture: %v", exposition.Tier, err)
		}
		bundle.Tiers = append(bundle.Tiers, output)
	}
	manifestList := make([]string, 0, len(m7AudienceTiers))
	for _, tier := range m7AudienceTiers {
		manifestList = append(manifestList, manifestPaths[tier])
	}
	trust := loadSyntheticM7IdentityTrustRegistry(t, files, manifestList...)
	policy := dossier.ExpositionEvaluations[0].Policy
	accepted, _, err := EvaluateBundleWithEvidence(M7BundleEvidenceAuditRequest{
		EvidenceFS: files, ManifestPaths: manifestPaths, Bundle: bundle,
		Reviews: reviews, Policy: policy, WordLimits: wordLimits, IdentityTrustRegistry: trust,
	}, testEvidenceTime())
	if err != nil {
		t.Fatalf("evaluate authenticated M7 bundle fixture: %v", err)
	}
	dossier.ExpositionEvaluations = accepted
	report, err := AuditDossierExpositionEvidenceWithIdentityTrust(dossier, files, trust)
	if err != nil {
		t.Fatalf("audit authenticated five-tier M7 dossier fixture: %v", err)
	}
	if report.Disposition != M7AuditAuthenticated || !report.IntegrityVerified || !report.ExternalIdentityAuthenticated ||
		report.BundleAudit == nil || len(report.BundleAudit.Tiers) != 5 {
		t.Fatalf("authenticated five-tier M7 dossier report = %#v; want full evidence and identity audit", report)
	}
	for _, evaluation := range accepted {
		if !evaluation.Accepted || evaluation.Score <= 0 {
			t.Fatalf("bundle evaluation %s = %#v; want recomputed accepted tier", evaluation.Tier, evaluation)
		}
	}
}

func TestAuditDossierExpositionEvidenceBindsM7RunToM8Receipt(t *testing.T) {
	dossier, files := syntheticM7Dossier(t)
	wrongCall := *dossier.AuthorAgentRunReceipt
	wrongCall.ReceiptID = "other-author"
	dossier.AuthorAgentRunReceipt = &wrongCall
	if _, err := AuditDossierExpositionEvidence(dossier, files); err == nil || !strings.Contains(err.Error(), "do not match the M8 agent-run receipt") {
		t.Fatalf("AuditDossierExpositionEvidence() with another author call error = %v, want M8 call-link refusal", err)
	}

	dossier, files = syntheticM7Dossier(t)
	wrongRun := *dossier.AuthorAgentRunReceipt
	otherProviderRun := "provider-run-other"
	wrongRun.RunID = &otherProviderRun
	dossier.AuthorAgentRunReceipt = &wrongRun
	if _, err := AuditDossierExpositionEvidence(dossier, files); err == nil || !strings.Contains(err.Error(), "do not match the M8 agent-run receipt") {
		t.Fatalf("AuditDossierExpositionEvidence() with another provider run ID error = %v, want M8 run-link refusal", err)
	}
}

func TestAuditDossierExpositionEvidencePreservesLegacyAbsenceAndFailsClosedOnPartialEvidence(t *testing.T) {
	legacy := domain.Dossier{Problem: domain.MathProblem{ID: "problem-a"}}
	report, err := AuditDossierExpositionEvidence(legacy, fstest.MapFS{})
	if err != nil {
		t.Fatalf("AuditDossierExpositionEvidence() for legacy dossier error = %v", err)
	}
	if !report.LegacyWithoutEvidence || report.IntegrityVerified || report.Disposition != M7AuditBlocked {
		t.Fatalf("legacy M7 report = %#v; want BLOCKED without evidence", report)
	}

	dossier, files := syntheticM7Dossier(t)
	dossier.ExpositionWordLimits = nil
	if _, err := AuditDossierExpositionEvidence(dossier, files); err == nil ||
		!strings.Contains(err.Error(), "caller-pinned five-tier word limits") {
		t.Fatalf("AuditDossierExpositionEvidence() without word limits error = %v, want fail-closed refusal", err)
	}

	dossier, files = syntheticM7Dossier(t)
	dossier.ExpositionEvaluations[4].EvidenceManifestPath = ""
	if _, err := AuditDossierExpositionEvidence(dossier, files); err == nil ||
		!strings.Contains(err.Error(), "lacks a complete evidence-manifest reference") {
		t.Fatalf("AuditDossierExpositionEvidence() with partial manifests error = %v, want fail-closed refusal", err)
	}
}

func TestAuditDossierExpositionEvidenceRechecksManifestDigestAndExactOutput(t *testing.T) {
	dossier, files := syntheticM7Dossier(t)
	t.Run("manifest digest", func(t *testing.T) {
		bad := dossier
		bad.ExpositionEvaluations = append([]domain.ExpositionEvaluation(nil), dossier.ExpositionEvaluations...)
		bad.ExpositionEvaluations[0].EvidenceManifestSHA256 = strings.Repeat("0", 64)
		if _, err := AuditDossierExpositionEvidence(bad, files); err == nil ||
			!strings.Contains(err.Error(), "manifest digest does not match the dossier") {
			t.Fatalf("AuditDossierExpositionEvidence() with changed manifest digest error = %v, want digest refusal", err)
		}
	})
	t.Run("stored exposition", func(t *testing.T) {
		bad := dossier
		bad.Expositions = append([]domain.Exposition(nil), dossier.Expositions...)
		bad.Expositions[0].Text += "\n\nsubstituted text"
		if _, err := AuditDossierExpositionEvidence(bad, files); err == nil ||
			!strings.Contains(err.Error(), "exact dossier exposition") {
			t.Fatalf("AuditDossierExpositionEvidence() with changed M8 exposition error = %v, want exact-output refusal", err)
		}
	})
}

func TestAuditDossierExpositionEvidenceRejectsCallerAuthoredAcceptedScore(t *testing.T) {
	dossier, files := syntheticM7Dossier(t)
	dossier.ExpositionEvaluations = append([]domain.ExpositionEvaluation(nil), dossier.ExpositionEvaluations...)
	dossier.ExpositionEvaluations[0].Accepted = true
	dossier.ExpositionEvaluations[0].Score = 1
	dossier.ExpositionEvaluations[0].Refusal = ""
	if _, err := AuditDossierExpositionEvidence(dossier, files); err == nil ||
		!strings.Contains(err.Error(), "does not match the recomputed five-tier evidence result") {
		t.Fatalf("M7 dossier audit with caller-authored accepted score = %v; want refusal after recomputation", err)
	}
}

func syntheticM7Dossier(t *testing.T) (domain.Dossier, fstest.MapFS) {
	t.Helper()
	bundle := testBundle()
	bundle.AuthorCallID = "agent-run-synthetic-m7-author"
	policy := testPolicy()
	wordLimits := testWordLimits()
	files := fstest.MapFS{}
	dossier := domain.Dossier{
		Problem: domain.MathProblem{ID: bundle.ProblemID},
		Attempts: []domain.SolverAttempt{{
			ID: "attempt-m7-proof", ProblemID: bundle.ProblemID, VerifiedProofSHA256: bundle.ProofSHA256,
			Outcome: domain.SolverOutcomePass,
		}},
		ExpositionWordLimits: &domain.ExpositionWordLimits{
			HighSchool: wordLimits[domain.TierHighSchool], Associate: wordLimits[domain.TierAssociate],
			Bachelor: wordLimits[domain.TierBachelor], Master: wordLimits[domain.TierMaster],
			Doctorate: wordLimits[domain.TierDoctorate],
		},
	}
	providerRunID := "provider-run-" + bundle.AuthorCallID
	dossier.AuthorAgentRunReceipt = &domain.AgentRunReceipt{
		SchemaVersion: domain.AgentRunReceiptSchemaVersion, ReceiptID: "synthetic-m7-author",
		RecordedAtUTC: time.Date(2026, time.October, 20, 19, 1, 0, 0, time.UTC), RunID: &providerRunID,
		Surface: "synthetic-agent-surface", Model: bundle.ExpositorModelID,
		Target: domain.AgentRunTarget{ProblemID: bundle.ProblemID, StatementID: "statement-m7",
			CatalogSnapshotSHA256: strings.Repeat("1", 64)},
		Purpose: "m7-exposition", Verdict: "CALIBRATION_FIXTURE",
		InputClearance: []domain.AgentRunInputClearance{{StatementID: "statement-m7", EvidenceID: "clearance-m7"}},
	}
	for _, tier := range m7AudienceTiers {
		output, ok := bundleOutputForTier(bundle, tier)
		if !ok {
			t.Fatalf("testBundle() is missing %s", tier)
		}
		exposition := domain.Exposition{
			Tier: output.Tier, Text: output.Render(), CoreInsightID: output.CoreInsightID,
			CoreInsight: output.CoreInsightSentence, ProofRef: "proofs/associativity.lean",
		}
		dossier.Expositions = append(dossier.Expositions, exposition)
		review := testEvaluation(bundle, output, policy)
		review.Tier = tier
		review.RoundTrip.EvidenceID = "roundtrip-" + strings.ToLower(string(tier))
		review.Canon.EvidenceID = "canon-" + strings.ToLower(string(tier))
		review.Leakage.EvidenceID = "leakage-" + strings.ToLower(string(tier))
		review.Student.EvidenceID = "student-" + strings.ToLower(string(tier))
		prefix := "tiers/" + strings.ToLower(string(tier)) + "/"
		tierFiles, manifestPath := syntheticM7Evidence(t, bundle, output, review, policy, false, prefix)
		for name, file := range tierFiles {
			files[name] = file
		}
		persisted, _, err := PersistEvaluationWithEvidence(
			bundle, output, review, policy, wordLimits, testEvidenceTime(), tierFiles, manifestPath,
		)
		if err != nil {
			t.Fatalf("PersistEvaluationWithEvidence(%s) error = %v", tier, err)
		}
		dossier.ExpositionEvaluations = append(dossier.ExpositionEvaluations, persisted)
	}
	return dossier, files
}
