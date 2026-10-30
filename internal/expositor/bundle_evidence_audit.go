package expositor

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io/fs"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

// M7BundleEvidenceAuditRequest supplies the caller-pinned five-tier inputs and
// one reopened evidence manifest for each audience tier.
type M7BundleEvidenceAuditRequest struct {
	EvidenceFS            fs.FS
	ManifestPaths         map[domain.AudienceTier]string
	Bundle                Bundle
	Reviews               map[domain.AudienceTier]TierEvaluation
	Policy                EvaluationPolicy
	WordLimits            WordLimits
	IdentityTrustRegistry *M7IdentityTrustRegistry
}

// M7TierEvidenceAuditReport preserves the exact per-tier manifest and audit
// result in stable audience-tier order.
type M7TierEvidenceAuditReport struct {
	Tier         domain.AudienceTier   `json:"tier"`
	ManifestPath string                `json:"manifest_path"`
	Audit        M7EvidenceAuditReport `json:"audit"`
}

// M7BundleEvidenceAuditReport summarizes integrity across all five tiers.
// External identity authentication remains false until an authorized issuer
// verifier exists, so this API can never mark the bundle accepted.
type M7BundleEvidenceAuditReport struct {
	Disposition                   M7AuditDisposition          `json:"disposition"`
	IntegrityVerified             bool                        `json:"integrity_verified"`
	ExternalIdentityAuthenticated bool                        `json:"external_identity_authenticated"`
	IdentityTrustRegistrySHA256   string                      `json:"identity_trust_registry_sha256,omitempty"`
	WordLimitsSHA256              string                      `json:"word_limits_sha256"`
	AuthorCallID                  string                      `json:"author_call_id"`
	AuthorRunID                   string                      `json:"author_run_id"`
	AuthorProviderCallID          string                      `json:"author_provider_call_id,omitempty"`
	AuthorOutputSHA256            string                      `json:"author_output_sha256"`
	AuthorModelIdentitySHA256     string                      `json:"author_model_identity_sha256"`
	Tiers                         []M7TierEvidenceAuditReport `json:"tiers"`
	Reasons                       []string                    `json:"reasons"`
}

var m7AudienceTiers = []domain.AudienceTier{
	domain.TierHighSchool,
	domain.TierAssociate,
	domain.TierBachelor,
	domain.TierMaster,
	domain.TierDoctorate,
}

// Validate requires exactly one positive frozen limit for each M7 audience tier.
func (limits WordLimits) Validate() error {
	if len(limits) != len(m7AudienceTiers) {
		return fmt.Errorf("expositor: exactly five frozen word limits are required, got %d", len(limits))
	}
	for _, tier := range m7AudienceTiers {
		limit, ok := limits[tier]
		if !ok || limit <= 0 {
			return fmt.Errorf("expositor: positive frozen word limit is required for %s", tier)
		}
	}
	for tier := range limits {
		if !knownTier(tier) {
			return fmt.Errorf("expositor: unknown frozen word-limit tier %q", tier)
		}
	}
	return nil
}

// Digest returns the canonical SHA-256 binding for all five frozen word limits.
func (limits WordLimits) Digest() (string, error) {
	if err := limits.Validate(); err != nil {
		return "", err
	}
	canonical := struct {
		HighSchool int `json:"high_school"`
		Associate  int `json:"associate"`
		Bachelor   int `json:"bachelor"`
		Master     int `json:"master"`
		Doctorate  int `json:"doctorate"`
	}{
		HighSchool: limits[domain.TierHighSchool],
		Associate:  limits[domain.TierAssociate],
		Bachelor:   limits[domain.TierBachelor],
		Master:     limits[domain.TierMaster],
		Doctorate:  limits[domain.TierDoctorate],
	}
	data, err := json.Marshal(canonical)
	if err != nil {
		return "", err
	}
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:]), nil
}

// AuditM7BundleEvidence reopens and validates all five tier manifests against
// one exact bundle, policy, and caller-pinned frozen word-limit set. It checks
// that every tier refers to the same author call, input, complete author output,
// and model-identity claim. The result remains BLOCKED without external identity
// authentication.
func AuditM7BundleEvidence(req M7BundleEvidenceAuditRequest) (M7BundleEvidenceAuditReport, error) {
	report := M7BundleEvidenceAuditReport{
		Disposition:                   M7AuditBlocked,
		ExternalIdentityAuthenticated: false,
		Tiers:                         []M7TierEvidenceAuditReport{},
	}
	if req.EvidenceFS == nil {
		return report, errors.New("expositor: M7 evidence filesystem is required")
	}
	if err := req.WordLimits.Validate(); err != nil {
		return report, err
	}
	if err := req.Bundle.Validate(req.WordLimits); err != nil {
		return report, fmt.Errorf("expositor: validate five-tier M7 bundle: %w", err)
	}
	if err := req.Policy.Validate(); err != nil {
		return report, err
	}
	if err := validateTierKeySet("manifest paths", req.ManifestPaths); err != nil {
		return report, err
	}
	if err := validateReviewTierKeySet(req.Reviews); err != nil {
		return report, err
	}
	wordLimitsSHA, err := req.WordLimits.Digest()
	if err != nil {
		return report, err
	}
	report.WordLimitsSHA256 = wordLimitsSHA

	var firstAuthor M7EvidenceAuditReport
	seenReviewEvidence := make(map[string]domain.AudienceTier, len(m7AudienceTiers)*4)
	for index, tier := range m7AudienceTiers {
		manifestPath := req.ManifestPaths[tier]
		if manifestPath == "" {
			return report, fmt.Errorf("expositor: missing %s tier evidence manifest path", tier)
		}
		review := req.Reviews[tier]
		if review.Tier != tier {
			return report, fmt.Errorf("expositor: review keyed as %s identifies tier %s", tier, review.Tier)
		}
		output, ok := bundleOutputForTier(req.Bundle, tier)
		if !ok {
			return report, fmt.Errorf("expositor: validated bundle is missing %s tier", tier)
		}
		audit, err := AuditM7Evidence(req.EvidenceFS, manifestPath, req.Bundle, output, review, req.Policy, req.WordLimits, req.IdentityTrustRegistry)
		if err != nil {
			return report, fmt.Errorf("expositor: audit %s tier: %w", tier, err)
		}
		expectedDisposition := M7AuditBlocked
		if req.IdentityTrustRegistry != nil {
			expectedDisposition = M7AuditAuthenticated
		}
		if !audit.IntegrityVerified || audit.Disposition != expectedDisposition || audit.ExternalIdentityAuthenticated != (req.IdentityTrustRegistry != nil) {
			return report, fmt.Errorf("expositor: %s tier audit returned an invalid acceptance state", tier)
		}
		if index == 0 {
			firstAuthor = audit
		} else if !sameAuthorExecution(firstAuthor, audit) {
			return report, errors.New("expositor: M7 tier manifests do not bind the same author run, inputs, complete output, and identity claim")
		}
		for _, evidenceID := range tierReviewEvidenceIDs(review) {
			if previousTier, exists := seenReviewEvidence[evidenceID]; exists {
				return report, fmt.Errorf("expositor: M7 review evidence %q is reused across %s and %s tiers", evidenceID, previousTier, tier)
			}
			seenReviewEvidence[evidenceID] = tier
		}
		report.Tiers = append(report.Tiers, M7TierEvidenceAuditReport{
			Tier: tier, ManifestPath: manifestPath, Audit: audit,
		})
	}
	report.IntegrityVerified = true
	report.AuthorCallID = firstAuthor.AuthorCallID
	report.AuthorRunID = firstAuthor.AuthorRunID
	report.AuthorProviderCallID = firstAuthor.AuthorProviderCallID
	report.AuthorOutputSHA256 = firstAuthor.AuthorOutputSHA256
	report.AuthorModelIdentitySHA256 = firstAuthor.AuthorModelIdentitySHA256
	if req.IdentityTrustRegistry != nil {
		report.IdentityTrustRegistrySHA256 = req.IdentityTrustRegistry.SHA256()
		report.ExternalIdentityAuthenticated = true
		report.Disposition = M7AuditAuthenticated
	}
	report.Reasons = []string{
		"All five tier manifests reopen against the exact bundle, shared author execution, policy, and caller-pinned word-limit set.",
	}
	if req.IdentityTrustRegistry == nil {
		report.Reasons = append(report.Reasons, "External identity and reviewer independence remain unauthenticated; the aggregate result remains BLOCKED.")
	} else {
		report.Reasons = append(report.Reasons, "Every role identity is reopened through the host-controlled run-receipt registry; this registry does not verify provider-issued signature envelopes.")
	}
	return report, nil
}

func validateTierKeySet(name string, values map[domain.AudienceTier]string) error {
	if len(values) != len(m7AudienceTiers) {
		return fmt.Errorf("expositor: exactly five %s are required, got %d", name, len(values))
	}
	for _, tier := range m7AudienceTiers {
		if _, ok := values[tier]; !ok {
			return fmt.Errorf("expositor: %s are missing %s", name, tier)
		}
	}
	for tier := range values {
		if !knownTier(tier) {
			return fmt.Errorf("expositor: %s contain unknown tier %q", name, tier)
		}
	}
	return nil
}

func validateReviewTierKeySet(reviews map[domain.AudienceTier]TierEvaluation) error {
	if len(reviews) != len(m7AudienceTiers) {
		return fmt.Errorf("expositor: exactly five reviews are required, got %d", len(reviews))
	}
	for _, tier := range m7AudienceTiers {
		if _, ok := reviews[tier]; !ok {
			return fmt.Errorf("expositor: reviews are missing %s", tier)
		}
	}
	for tier := range reviews {
		if !knownTier(tier) {
			return fmt.Errorf("expositor: reviews contain unknown tier %q", tier)
		}
	}
	return nil
}

func bundleOutputForTier(bundle Bundle, tier domain.AudienceTier) (TierOutput, bool) {
	for _, output := range bundle.Tiers {
		if output.Tier == tier {
			return output, true
		}
	}
	return TierOutput{}, false
}

func sameAuthorExecution(left, right M7EvidenceAuditReport) bool {
	return left.AuthorCallID == right.AuthorCallID && left.AuthorRunID == right.AuthorRunID &&
		left.AuthorProviderCallID == right.AuthorProviderCallID && left.AuthorInputPath == right.AuthorInputPath &&
		left.AuthorInputSHA256 == right.AuthorInputSHA256 && left.AuthorOutputSHA256 == right.AuthorOutputSHA256 &&
		left.AuthorModelIdentitySHA256 == right.AuthorModelIdentitySHA256
}

func tierReviewEvidenceIDs(review TierEvaluation) []string {
	return []string{review.RoundTrip.EvidenceID, review.Canon.EvidenceID, review.Leakage.EvidenceID, review.Student.EvidenceID}
}
