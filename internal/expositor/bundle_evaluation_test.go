package expositor

import (
	"fmt"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestEvaluateBundleDoesNotAcceptScalarOnlyReviews(t *testing.T) {
	bundle := testBundle()
	policy := testPolicy()
	recordedAt := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	receipts, err := EvaluateBundle(bundle, passingBundleReviews(bundle, policy), policy, testWordLimits(), recordedAt)
	if err == nil || receipts != nil || !strings.Contains(err.Error(), "was not accepted") || !strings.Contains(err.Error(), "legacy scalar-only reviews") {
		t.Fatalf("EvaluateBundle() accepted caller-authored scalar reviews: receipts=%#v error=%v", receipts, err)
	}
}

func TestEvaluateBundleReturnsNoReceiptsForIncompleteOrRefusedTier(t *testing.T) {
	bundle := testBundle()
	policy := testPolicy()
	reviews := passingBundleReviews(bundle, policy)
	delete(reviews, domain.TierMaster)
	receipts, err := EvaluateBundle(bundle, reviews, policy, testWordLimits(), time.Now().UTC())
	if err == nil || !strings.Contains(err.Error(), "exactly five tier reviews") || receipts != nil {
		t.Fatalf("EvaluateBundle() with missing tier = %#v, %v; want atomic refusal", receipts, err)
	}

	reviews = passingBundleReviews(bundle, policy)
	review := reviews[domain.TierDoctorate]
	review.Canon.Scores[0].Score = 0
	rejected, evalErr := Evaluate(bundle, bundle.Tiers[4], review, policy, testWordLimits())
	if evalErr != nil {
		t.Fatalf("Evaluate() refused-tier fixture error = %v", evalErr)
	}
	review.Accepted = rejected.Accepted
	review.Score = rejected.Score
	review.Refusal = rejected.Refusal
	reviews[domain.TierDoctorate] = review
	receipts, err = EvaluateBundle(bundle, reviews, policy, testWordLimits(), time.Now().UTC())
	if err == nil || !strings.Contains(err.Error(), "was not accepted") || receipts != nil {
		t.Fatalf("EvaluateBundle() with refused tier = %#v, %v; want no partial receipts", receipts, err)
	}
}

func TestEvaluateBundleCannotAdvanceToCrossTierAcceptanceWithScalarReviews(t *testing.T) {
	bundle := testBundle()
	policy := testPolicy()
	reviews := passingBundleReviews(bundle, policy)
	associate := reviews[domain.TierAssociate]
	associate.RoundTrip.EvidenceID = reviews[domain.TierHighSchool].RoundTrip.EvidenceID
	reviews[domain.TierAssociate] = associate

	receipts, err := EvaluateBundle(bundle, reviews, policy, testWordLimits(), time.Now().UTC())
	if err == nil || receipts != nil || !strings.Contains(err.Error(), "legacy scalar-only reviews") {
		t.Fatalf("EvaluateBundle() with scalar reviews = %#v, %v; want fail-closed M7 hold", receipts, err)
	}
}

func passingBundleReviews(bundle Bundle, policy EvaluationPolicy) map[domain.AudienceTier]TierEvaluation {
	reviews := make(map[domain.AudienceTier]TierEvaluation, len(bundle.Tiers))
	for index, output := range bundle.Tiers {
		review := testEvaluation(bundle, output, policy)
		review.Tier = output.Tier
		review.RoundTrip.EvidenceID = fmt.Sprintf("bundle-tier-%d-roundtrip", index)
		review.Canon.EvidenceID = fmt.Sprintf("bundle-tier-%d-canon", index)
		review.Leakage.EvidenceID = fmt.Sprintf("bundle-tier-%d-leakage", index)
		review.Student.EvidenceID = fmt.Sprintf("bundle-tier-%d-student", index)
		evaluated, err := Evaluate(bundle, output, review, policy, testWordLimits())
		if err != nil {
			panic(err)
		}
		review.Accepted = evaluated.Accepted
		review.Score = evaluated.Score
		review.Refusal = evaluated.Refusal
		reviews[output.Tier] = review
	}
	return reviews
}
