package expositor

import (
	"errors"
	"fmt"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

// EvaluateBundle validates all five tier reviews as one unit. Scalar-only
// reviews remain blocked by Evaluate, and no M8 receipts are returned when any
// tier is missing, refused, or reuses another tier's review evidence.
func EvaluateBundle(
	bundle Bundle,
	reviews map[domain.AudienceTier]TierEvaluation,
	policy EvaluationPolicy,
	wordLimits WordLimits,
	recordedAt time.Time,
) ([]domain.ExpositionEvaluation, error) {
	if err := bundle.Validate(wordLimits); err != nil {
		return nil, fmt.Errorf("expositor: validate five-tier bundle: %w", err)
	}
	if err := policy.Validate(); err != nil {
		return nil, err
	}
	if recordedAt.IsZero() {
		return nil, errors.New("expositor: bundle evaluation receipt time is required")
	}
	if len(reviews) != 5 {
		return nil, fmt.Errorf("expositor: exactly five tier reviews are required, got %d", len(reviews))
	}

	tiers := []domain.AudienceTier{
		domain.TierHighSchool,
		domain.TierAssociate,
		domain.TierBachelor,
		domain.TierMaster,
		domain.TierDoctorate,
	}
	receipts := make([]domain.ExpositionEvaluation, 0, len(tiers))
	seenEvidence := make(map[string]domain.AudienceTier, len(tiers)*4)
	for _, tier := range tiers {
		review, ok := reviews[tier]
		if !ok {
			return nil, fmt.Errorf("expositor: missing %s tier review", tier)
		}
		if review.Tier != tier {
			return nil, fmt.Errorf("expositor: review keyed as %s identifies tier %s", tier, review.Tier)
		}
		var output *TierOutput
		for index := range bundle.Tiers {
			if bundle.Tiers[index].Tier == tier {
				output = &bundle.Tiers[index]
				break
			}
		}
		if output == nil {
			return nil, fmt.Errorf("expositor: validated bundle is missing %s tier", tier)
		}
		receipt, err := PersistEvaluation(bundle, *output, review, policy, wordLimits, recordedAt)
		if err != nil {
			return nil, fmt.Errorf("expositor: evaluate %s tier: %w", tier, err)
		}
		if !receipt.Accepted {
			return nil, fmt.Errorf("expositor: %s tier was not accepted: %s", tier, receipt.Refusal)
		}
		for _, evidenceID := range receipt.ReviewEvidenceIDs() {
			if previousTier, exists := seenEvidence[evidenceID]; exists {
				return nil, fmt.Errorf("expositor: review evidence %q is reused across %s and %s tiers", evidenceID, previousTier, tier)
			}
			seenEvidence[evidenceID] = tier
		}
		receipts = append(receipts, receipt)
	}
	return receipts, nil
}

// EvaluateBundleWithEvidence accepts and returns all five M7 tier records as
// one unit. It first reopens every manifest and run receipt, including the
// host-controlled identity registry; no partial tier receipts escape if any
// evidence, identity, independence, or policy check fails.
func EvaluateBundleWithEvidence(
	req M7BundleEvidenceAuditRequest,
	recordedAt time.Time,
) ([]domain.ExpositionEvaluation, M7BundleEvidenceAuditReport, error) {
	var empty []domain.ExpositionEvaluation
	if recordedAt.IsZero() {
		return empty, M7BundleEvidenceAuditReport{}, errors.New("expositor: bundle evaluation receipt time is required")
	}
	audit, err := AuditM7BundleEvidence(req)
	if err != nil {
		return empty, audit, err
	}
	if !audit.IntegrityVerified || !audit.ExternalIdentityAuthenticated || audit.Disposition != M7AuditAuthenticated {
		return empty, audit, errors.New("expositor: complete five-tier M7 evidence and authenticated reviewer identities are required")
	}

	receipts := make([]domain.ExpositionEvaluation, 0, len(m7AudienceTiers))
	seenEvidence := make(map[string]domain.AudienceTier, len(m7AudienceTiers)*4)
	for index, tier := range m7AudienceTiers {
		review, ok := req.Reviews[tier]
		if !ok {
			return empty, audit, fmt.Errorf("expositor: missing %s tier review after bundle audit", tier)
		}
		output, ok := bundleOutputForTier(req.Bundle, tier)
		if !ok {
			return empty, audit, fmt.Errorf("expositor: validated bundle is missing %s tier", tier)
		}
		evaluated, err := evaluate(req.Bundle, output, review, req.Policy, req.WordLimits, true)
		if err != nil {
			return empty, audit, fmt.Errorf("expositor: evaluate %s tier: %w", tier, err)
		}
		if !evaluated.Accepted {
			return empty, audit, fmt.Errorf("expositor: %s tier was not accepted: %s", tier, evaluated.Refusal)
		}
		if index >= len(audit.Tiers) || audit.Tiers[index].Tier != tier {
			return empty, audit, errors.New("expositor: M7 audit did not return tiers in canonical order")
		}
		evaluated.EvidenceManifestPath = audit.Tiers[index].ManifestPath
		evaluated.EvidenceManifestSHA256 = audit.Tiers[index].Audit.ManifestSHA256
		receipt, err := persistEvaluationReceipt(req.Bundle, evaluated, req.Policy, recordedAt.UTC())
		if err != nil {
			return empty, audit, fmt.Errorf("expositor: persist %s tier result: %w", tier, err)
		}
		for _, evidenceID := range receipt.ReviewEvidenceIDs() {
			if previous, exists := seenEvidence[evidenceID]; exists {
				return empty, audit, fmt.Errorf("expositor: review evidence %q is reused across %s and %s tiers", evidenceID, previous, tier)
			}
			seenEvidence[evidenceID] = tier
		}
		receipts = append(receipts, receipt)
	}
	if len(receipts) != len(m7AudienceTiers) {
		return empty, audit, errors.New("expositor: M7 evaluation did not produce exactly five tier receipts")
	}
	return receipts, audit, nil
}
