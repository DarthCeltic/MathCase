package expositor

import (
	"errors"
	"fmt"
	"io/fs"
	"reflect"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

// M7DossierEvidenceAuditReport summarizes the M7 evidence linked from one M8
// dossier. Integrity and issuer authentication are reported separately.
type M7DossierEvidenceAuditReport struct {
	Disposition                   M7AuditDisposition           `json:"disposition"`
	IntegrityVerified             bool                         `json:"integrity_verified"`
	ExternalIdentityAuthenticated bool                         `json:"external_identity_authenticated"`
	IdentityTrustRegistrySHA256   string                       `json:"identity_trust_registry_sha256,omitempty"`
	LegacyWithoutEvidence         bool                         `json:"legacy_without_evidence"`
	BundleAudit                   *M7BundleEvidenceAuditReport `json:"bundle_audit,omitempty"`
	Reasons                       []string                     `json:"reasons"`
}

// AuditDossierExpositionEvidence reopens the five M7 manifests referenced by
// an M8 dossier and feeds their exact persisted evaluations, outputs, policy,
// proof binding, and caller-pinned limits into the shared typed M7 reader.
// Legacy dossiers without manifest references remain readable but are BLOCKED
// from M7 evidence integrity claims. No identity is authenticated here.
func AuditDossierExpositionEvidence(dossier domain.Dossier, evidenceFS fs.FS) (M7DossierEvidenceAuditReport, error) {
	return AuditDossierExpositionEvidenceWithIdentityTrust(dossier, evidenceFS, nil)
}

// AuditDossierExpositionEvidenceWithIdentityTrust reopens the same M7 dossier
// chain as AuditDossierExpositionEvidence and optionally authenticates every
// role through the host-controlled exact-run identity registry.
func AuditDossierExpositionEvidenceWithIdentityTrust(dossier domain.Dossier, evidenceFS fs.FS, identityTrust *M7IdentityTrustRegistry) (M7DossierEvidenceAuditReport, error) {
	report := M7DossierEvidenceAuditReport{
		Disposition:                   M7AuditBlocked,
		ExternalIdentityAuthenticated: false,
		Reasons:                       []string{},
	}
	hasManifestReference := false
	for _, evaluation := range dossier.ExpositionEvaluations {
		if evaluation.EvidenceManifestPath != "" || evaluation.EvidenceManifestSHA256 != "" {
			hasManifestReference = true
			break
		}
	}
	if !hasManifestReference {
		report.LegacyWithoutEvidence = true
		report.Reasons = []string{"Legacy dossier has no M7 evidence-manifest references; byte integrity is unavailable and the result remains BLOCKED."}
		return report, nil
	}
	if evidenceFS == nil {
		return report, errors.New("expositor: M7 evidence filesystem is required when manifest references are present")
	}
	if dossier.ExpositionWordLimits == nil {
		return report, errors.New("expositor: M7 dossier evidence requires caller-pinned five-tier word limits")
	}
	if err := dossier.ExpositionWordLimits.Validate(); err != nil {
		return report, err
	}
	if len(dossier.ExpositionEvaluations) != len(m7AudienceTiers) || len(dossier.Expositions) != len(m7AudienceTiers) {
		return report, errors.New("expositor: M7 dossier evidence requires exactly five exposition outputs and evaluations")
	}
	if strings.TrimSpace(dossier.Problem.ID) == "" {
		return report, errors.New("expositor: M7 dossier evidence requires a problem ID")
	}

	wordLimits, err := wordLimitsFromDossier(*dossier.ExpositionWordLimits)
	if err != nil {
		return report, err
	}
	outputs := make(map[domain.AudienceTier]domain.Exposition, len(m7AudienceTiers))
	for _, output := range dossier.Expositions {
		if !knownTier(output.Tier) {
			return report, fmt.Errorf("expositor: M7 dossier has unknown exposition tier %q", output.Tier)
		}
		if _, duplicate := outputs[output.Tier]; duplicate {
			return report, fmt.Errorf("expositor: M7 dossier repeats exposition tier %s", output.Tier)
		}
		outputs[output.Tier] = output
	}
	evaluations := make(map[domain.AudienceTier]domain.ExpositionEvaluation, len(m7AudienceTiers))
	manifestPaths := make(map[domain.AudienceTier]string, len(m7AudienceTiers))
	reviews := make(map[domain.AudienceTier]TierEvaluation, len(m7AudienceTiers))
	seenManifestPaths := make(map[string]domain.AudienceTier, len(m7AudienceTiers))
	var commonAuthorCallID, commonProofSHA256, commonCanonSHA256, commonPolicySHA256 string
	var commonPolicy EvaluationPolicy
	var commonAuthorModelID, commonAuthorModelVersion, commonProofRef string
	for index, evaluation := range dossier.ExpositionEvaluations {
		if !knownTier(evaluation.Tier) {
			return report, fmt.Errorf("expositor: M7 dossier has unknown evaluation tier %q", evaluation.Tier)
		}
		if _, duplicate := evaluations[evaluation.Tier]; duplicate {
			return report, fmt.Errorf("expositor: M7 dossier repeats evaluation tier %s", evaluation.Tier)
		}
		if evaluation.EvidenceManifestPath == "" || !validDigest(evaluation.EvidenceManifestSHA256) {
			return report, fmt.Errorf("expositor: %s M7 evaluation lacks a complete evidence-manifest reference", evaluation.Tier)
		}
		if err := validateEvidencePath(evaluation.EvidenceManifestPath); err != nil {
			return report, err
		}
		if previousTier, duplicate := seenManifestPaths[evaluation.EvidenceManifestPath]; duplicate {
			return report, fmt.Errorf("expositor: M7 evidence manifest %q is reused by %s and %s tiers", evaluation.EvidenceManifestPath, previousTier, evaluation.Tier)
		}
		seenManifestPaths[evaluation.EvidenceManifestPath] = evaluation.Tier
		manifestBytes, err := readEvidenceFile(evidenceFS, evaluation.EvidenceManifestPath)
		if err != nil {
			return report, fmt.Errorf("expositor: read %s M7 evidence manifest: %w", evaluation.Tier, err)
		}
		if sha256Hex(manifestBytes) != evaluation.EvidenceManifestSHA256 {
			return report, fmt.Errorf("expositor: %s M7 evidence manifest digest does not match the dossier", evaluation.Tier)
		}
		if evaluation.ProblemID != dossier.Problem.ID {
			return report, fmt.Errorf("expositor: %s M7 evaluation belongs to another problem", evaluation.Tier)
		}
		output, ok := outputs[evaluation.Tier]
		if !ok {
			return report, fmt.Errorf("expositor: M7 dossier is missing the %s exposition", evaluation.Tier)
		}
		if output.ProofRef == "" {
			return report, fmt.Errorf("expositor: %s exposition has no proof reference", evaluation.Tier)
		}
		outputDigest, err := domain.ExpositionDigest(output)
		if err != nil {
			return report, fmt.Errorf("expositor: hash %s M7 exposition: %w", evaluation.Tier, err)
		}
		if outputDigest != evaluation.ExpositionSHA256 {
			return report, fmt.Errorf("expositor: %s M7 evaluation does not bind the exact dossier exposition", evaluation.Tier)
		}
		if index == 0 {
			commonAuthorCallID = evaluation.AuthorCallID
			commonProofSHA256 = evaluation.ProofSHA256
			commonCanonSHA256 = evaluation.CanonSnapshotSHA256
			commonPolicySHA256 = evaluation.PolicySHA256
			commonPolicy = evaluation.Policy
			commonAuthorModelID = evaluation.AuthorModelID
			commonAuthorModelVersion = evaluation.AuthorModelVersion
			commonProofRef = output.ProofRef
		} else if evaluation.AuthorCallID != commonAuthorCallID || evaluation.ProofSHA256 != commonProofSHA256 ||
			evaluation.CanonSnapshotSHA256 != commonCanonSHA256 || evaluation.PolicySHA256 != commonPolicySHA256 ||
			evaluation.Policy != commonPolicy || evaluation.AuthorModelID != commonAuthorModelID ||
			evaluation.AuthorModelVersion != commonAuthorModelVersion || output.ProofRef != commonProofRef {
			return report, errors.New("expositor: M7 dossier tier evaluations do not share one author call, proof, canon, policy, and author identity")
		}
		evaluations[evaluation.Tier] = evaluation
		manifestPaths[evaluation.Tier] = evaluation.EvidenceManifestPath
		review, err := tierReviewFromDomain(evaluation)
		if err != nil {
			return report, fmt.Errorf("expositor: convert %s M7 evaluation: %w", evaluation.Tier, err)
		}
		reviews[evaluation.Tier] = review
	}
	if len(evaluations) != len(m7AudienceTiers) || len(outputs) != len(m7AudienceTiers) {
		return report, errors.New("expositor: M7 dossier does not contain one output and evaluation for each tier")
	}
	if !dossierHasPassingProof(dossier, commonProofSHA256) {
		return report, errors.New("expositor: M7 dossier evaluations do not reference a passing proof attempt")
	}
	policyDigest, err := commonPolicy.Digest()
	if err != nil {
		return report, err
	}
	if policyDigest != commonPolicySHA256 {
		return report, errors.New("expositor: M7 dossier policy digest does not match the shared policy")
	}

	outputTiers := make([]TierOutput, 0, len(m7AudienceTiers))
	for _, tier := range m7AudienceTiers {
		output, err := tierOutputFromDossier(outputs[tier], wordLimits[tier])
		if err != nil {
			return report, fmt.Errorf("expositor: reconstruct %s M7 output: %w", tier, err)
		}
		outputTiers = append(outputTiers, output)
	}
	bundle := Bundle{
		AuthorCallID: commonAuthorCallID, ProblemID: dossier.Problem.ID,
		ProofSHA256: commonProofSHA256, CanonSnapshotSHA256: commonCanonSHA256,
		ExpositorModelID: commonAuthorModelID, ExpositorVersion: commonAuthorModelVersion,
		Tiers: outputTiers,
	}
	bundleAudit, err := AuditM7BundleEvidence(M7BundleEvidenceAuditRequest{
		EvidenceFS: evidenceFS, ManifestPaths: manifestPaths, Bundle: bundle,
		Reviews: reviews, Policy: commonPolicy, WordLimits: wordLimits,
		IdentityTrustRegistry: identityTrust,
	})
	if err != nil {
		return report, err
	}
	if bundleAudit.AuthorCallID != commonAuthorCallID {
		return report, errors.New("expositor: reopened M7 author call ID does not match the M8 dossier")
	}
	if dossier.AuthorCallAccounting != nil {
		accounting := dossier.AuthorCallAccounting
		if err := accounting.Validate(); err != nil {
			return report, fmt.Errorf("expositor: validate M8 author-call accounting: %w", err)
		}
		startProviderCallIDMatches := accounting.Start.ProviderCallID == "" || accounting.Start.ProviderCallID == bundleAudit.AuthorProviderCallID
		if accounting.CallID != bundleAudit.AuthorCallID || !startProviderCallIDMatches ||
			accounting.Finish.ProviderCallID != bundleAudit.AuthorProviderCallID {
			return report, errors.New("expositor: reopened M7 author call/run IDs do not match M8 cost accounting")
		}
	} else if dossier.AuthorAgentRunReceipt != nil {
		receipt := dossier.AuthorAgentRunReceipt
		if err := receipt.Validate(); err != nil {
			return report, fmt.Errorf("expositor: validate M8 author agent-run receipt: %w", err)
		}
		if receipt.AuthorCallID() != bundleAudit.AuthorCallID || (receipt.RunID != nil && *receipt.RunID != bundleAudit.AuthorRunID) {
			return report, errors.New("expositor: reopened M7 author call/run IDs do not match the M8 agent-run receipt")
		}
	} else {
		return report, errors.New("expositor: M8 dossier has no author call/run receipt linking it to the M7 execution")
	}
	expectedDisposition := M7AuditBlocked
	if identityTrust != nil {
		expectedDisposition = M7AuditAuthenticated
	}
	if !bundleAudit.IntegrityVerified || bundleAudit.Disposition != expectedDisposition || bundleAudit.ExternalIdentityAuthenticated != (identityTrust != nil) {
		return report, errors.New("expositor: M7 bundle audit returned an invalid acceptance state")
	}
	identityAuthenticated := bundleAudit.ExternalIdentityAuthenticated && bundleAudit.Disposition == M7AuditAuthenticated
	for index, tier := range m7AudienceTiers {
		stored := evaluations[tier]
		output, ok := bundleOutputForTier(bundle, tier)
		if !ok || index >= len(bundleAudit.Tiers) || bundleAudit.Tiers[index].Tier != tier {
			return report, fmt.Errorf("expositor: M7 result recheck is missing the %s tier", tier)
		}
		computed, err := evaluate(bundle, output, reviews[tier], commonPolicy, wordLimits, identityAuthenticated)
		if err != nil {
			return report, fmt.Errorf("expositor: recompute %s M7 decision: %w", tier, err)
		}
		if !identityAuthenticated && computed.Refusal == "M7 evaluation is blocked: legacy scalar-only reviews have no reopened run receipts or authenticated external reviewer identities" {
			computed.Refusal = m7IdentityBlockedRefusal
		}
		computed.EvidenceManifestPath = manifestPaths[tier]
		computed.EvidenceManifestSHA256 = bundleAudit.Tiers[index].Audit.ManifestSHA256
		recomputed, err := persistEvaluationReceipt(bundle, computed, commonPolicy, stored.RecordedAt)
		if err != nil {
			return report, fmt.Errorf("expositor: assemble recomputed %s M7 decision: %w", tier, err)
		}
		if !reflect.DeepEqual(recomputed, stored) {
			return report, fmt.Errorf("expositor: stored %s M7 decision does not match the recomputed five-tier evidence result", tier)
		}
	}
	report.IntegrityVerified = true
	report.Disposition = bundleAudit.Disposition
	report.ExternalIdentityAuthenticated = bundleAudit.ExternalIdentityAuthenticated
	report.IdentityTrustRegistrySHA256 = bundleAudit.IdentityTrustRegistrySHA256
	report.BundleAudit = &bundleAudit
	report.Reasons = append([]string(nil), bundleAudit.Reasons...)
	return report, nil
}

func wordLimitsFromDossier(source domain.ExpositionWordLimits) (WordLimits, error) {
	if err := source.Validate(); err != nil {
		return nil, err
	}
	limits := make(WordLimits, len(m7AudienceTiers))
	for _, tier := range m7AudienceTiers {
		limit, ok := source.ForTier(tier)
		if !ok {
			return nil, fmt.Errorf("expositor: dossier has no word limit for %s", tier)
		}
		limits[tier] = limit
	}
	return limits, nil
}

func tierReviewFromDomain(evaluation domain.ExpositionEvaluation) (TierEvaluation, error) {
	canonScores := make([]MoveScore, len(evaluation.Canon.Scores))
	for index, score := range evaluation.Canon.Scores {
		canonScores[index] = MoveScore{Move: score.Move, Score: score.Score}
	}
	return TierEvaluation{
		Tier: evaluation.Tier, ProblemID: evaluation.ProblemID, ProofSHA256: evaluation.ProofSHA256,
		ExpositionSHA256: evaluation.ExpositionSHA256, CanonSnapshotSHA256: evaluation.CanonSnapshotSHA256,
		PolicySHA256: evaluation.PolicySHA256, AuthorModelID: evaluation.AuthorModelID,
		RoundTrip: RoundTripReview{
			ModelID: evaluation.RoundTrip.ModelID, ModelVersion: evaluation.RoundTrip.ModelVersion,
			ExpositionSHA256: evaluation.ExpositionSHA256, Frozen: evaluation.RoundTrip.Frozen,
			Score: evaluation.RoundTrip.Score, RequiredFacts: append([]string(nil), evaluation.RoundTrip.RequiredFacts...),
			RecoveredFacts: append([]string(nil), evaluation.RoundTrip.RecoveredFacts...), EvidenceID: evaluation.RoundTrip.EvidenceID,
		},
		Canon: CanonReview{
			ModelID: evaluation.Canon.ModelID, ModelVersion: evaluation.Canon.ModelVersion, Frozen: evaluation.Canon.Frozen,
			ExpositionSHA256: evaluation.ExpositionSHA256, CanonSnapshotSHA256: evaluation.CanonSnapshotSHA256,
			Scores: canonScores, EvidenceID: evaluation.Canon.EvidenceID,
		},
		Leakage: LeakageAudit{
			ProofSHA256: evaluation.ProofSHA256, ExpositionSHA256: evaluation.ExpositionSHA256,
			Method: evaluation.Leakage.Method, NgramOverlap: evaluation.Leakage.NgramOverlap,
			StructureOverlap: evaluation.Leakage.StructureOverlap, Passed: evaluation.Leakage.Passed,
			EvidenceID: evaluation.Leakage.EvidenceID,
		},
		Student: StudentLift{
			ModelID: evaluation.Student.ModelID, ModelVersion: evaluation.Student.ModelVersion, Frozen: evaluation.Student.Frozen,
			ExpositionSHA256: evaluation.ExpositionSHA256, AttemptBudget: evaluation.Student.AttemptBudget,
			TargetBaseline: evaluation.Student.TargetBaseline, TargetWithExposition: evaluation.Student.TargetWithExposition,
			TransferBaseline: evaluation.Student.TransferBaseline, TransferWithExposition: evaluation.Student.TransferWithExposition,
			ProgressLift: evaluation.Student.ProgressLift, EvidenceID: evaluation.Student.EvidenceID,
		},
		Accepted: evaluation.Accepted, Score: evaluation.Score, Refusal: evaluation.Refusal,
	}, nil
}

func tierOutputFromDossier(exposition domain.Exposition, wordLimit int) (TierOutput, error) {
	parts := strings.Split(exposition.Text, "\n\n")
	expectedParts := 7
	switch exposition.Tier {
	case domain.TierBachelor, domain.TierMaster, domain.TierDoctorate:
		expectedParts = 8
	case domain.TierAssociate, domain.TierHighSchool:
	default:
		return TierOutput{}, fmt.Errorf("unknown audience tier %q", exposition.Tier)
	}
	if len(parts) != expectedParts {
		return TierOutput{}, fmt.Errorf("persisted text has %d unambiguous sections, want %d", len(parts), expectedParts)
	}
	for index, part := range parts {
		if strings.TrimSpace(part) == "" {
			return TierOutput{}, fmt.Errorf("persisted text section %d is empty", index+1)
		}
	}
	output := TierOutput{
		Tier: exposition.Tier, AssumedBackground: []string{"M8 persisted exposition"},
		CoreInsightID: exposition.CoreInsightID, Motivation: parts[0], WhyNotObvious: parts[1],
		CoreInsightSentence: exposition.CoreInsight, ProofNarrative: parts[3], Example: parts[4],
		StoppingPoint: parts[len(parts)-1],
	}
	if parts[2] != exposition.CoreInsight {
		return TierOutput{}, errors.New("persisted core insight does not match the exact rendered text")
	}
	switch exposition.Tier {
	case domain.TierHighSchool:
		output.AssertedSteps = []string{parts[5]}
	case domain.TierAssociate:
		output.WorkedVariant = parts[5]
	case domain.TierBachelor:
		output.BoundaryCase, output.MissingHypothesis = parts[5], parts[6]
	case domain.TierMaster:
		output.PreciseLemmas, output.TextbookComparison = []string{parts[5]}, parts[6]
	case domain.TierDoctorate:
		output.AlternativesRejected, output.TransferTargets = []string{parts[5]}, []string{parts[6]}
	}
	if output.Render() != exposition.Text {
		return TierOutput{}, errors.New("persisted exposition text does not round-trip through the M7 tier renderer")
	}
	if err := output.validate(wordLimit); err != nil {
		return TierOutput{}, err
	}
	return output, nil
}

func dossierHasPassingProof(dossier domain.Dossier, proofSHA256 string) bool {
	for _, attempt := range dossier.Attempts {
		if attempt.ProblemID == dossier.Problem.ID && attempt.Outcome == domain.SolverOutcomePass && attempt.VerifiedProofSHA256 == proofSHA256 {
			return true
		}
	}
	return false
}
