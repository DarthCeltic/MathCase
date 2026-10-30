package expositor

import (
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func testWordLimits() WordLimits {
	return WordLimits{
		domain.TierHighSchool: 500,
		domain.TierAssociate:  500,
		domain.TierBachelor:   500,
		domain.TierMaster:     500,
		domain.TierDoctorate:  500,
	}
}

func testBundle() Bundle {
	shared := "core-assoc"
	return Bundle{
		AuthorCallID: "m7call-test-bundle",
		ProblemID:    "problem-a", ProofSHA256: strings.Repeat("a", 64), CanonSnapshotSHA256: strings.Repeat("b", 64), ExpositorModelID: "expositor-v1", ExpositorVersion: "model-rev-1",
		Tiers: []TierOutput{
			{Tier: domain.TierHighSchool, AssumedBackground: []string{"whole numbers"}, CoreInsightID: shared, Motivation: "Grouping a sum seems like it should not matter.", WhyNotObvious: "The recursive rule for addition makes regrouping less direct.", CoreInsightSentence: "Induction tracks the final addend.", ProofNarrative: "The zero case is direct and the successor case follows the previous case.", Example: "For 2 + 3 + 1, regrouping still gives 6.", StoppingPoint: "The induction step is described rather than expanded line by line.", AssertedSteps: []string{"The recursive addition rule preserves the equality."}},
			{Tier: domain.TierAssociate, AssumedBackground: []string{"induction"}, CoreInsightID: shared, Motivation: "Associativity predicts that parentheses do not change a sum.", WhyNotObvious: "Addition is defined recursively, so the two expressions unfold differently.", CoreInsightSentence: "Induction on the last term aligns the recursive steps.", ProofNarrative: "The base case reduces directly; the successor case rewrites using the induction hypothesis.", Example: "Compute a short sum both ways.", StoppingPoint: "The proof uses the recursive definition of addition.", WorkedVariant: "Try the same induction with four summands."},
			{Tier: domain.TierBachelor, AssumedBackground: []string{"proof by induction"}, CoreInsightID: shared, Motivation: "Associativity is a basic algebraic law.", WhyNotObvious: "The recursion is on the third argument only.", CoreInsightSentence: "The induction variable is chosen to match the recursive definition.", ProofNarrative: "The base case is definitional; rewriting both successor expressions and applying the hypothesis closes the step.", Example: "Use the equality at a boundary value of zero.", StoppingPoint: "The argument relies on the standard recursive definition of natural addition.", BoundaryCase: "The third summand is zero.", MissingHypothesis: "The induction depends on the third term being a natural number."},
			{Tier: domain.TierMaster, AssumedBackground: []string{"inductive definitions", "algebraic structures"}, CoreInsightID: shared, Motivation: "The theorem is the associativity law specialized to natural addition.", WhyNotObvious: "The proof exposes the recursion instead of invoking a general algebraic instance.", CoreInsightSentence: "Induction follows the defining recursion in the rightmost argument.", ProofNarrative: "In the successor case, the recursive equations normalize both sides and the induction hypothesis identifies the remaining terms.", Example: "The zero case demonstrates definitional reduction.", StoppingPoint: "The development is self-contained at the level of the recursive equations.", PreciseLemmas: []string{"Nat.add_zero", "Nat.add_succ"}, TextbookComparison: "A monoid proof abstracts this same calculation."},
			{Tier: domain.TierDoctorate, AssumedBackground: []string{"Lean kernel semantics", "inductive recursion"}, CoreInsightID: shared, Motivation: "This is the canonical algebraic law for a recursively defined operation.", WhyNotObvious: "The chosen proof makes the computation path explicit rather than relying on a pre-existing instance theorem.", CoreInsightSentence: "The induction variable is exactly the argument along which addition recurses.", ProofNarrative: "The recursor produces the zero goal and successor goal; recursive reduction and the induction hypothesis close them.", Example: "The recursion equations expose the local normalization step.", StoppingPoint: "This proof explains the kernel-checked term but makes no claim of novelty.", AlternativesRejected: []string{"Using the imported associativity theorem would obscure the rebuild target."}, TransferTargets: []string{"Other recursive operations with a rightmost argument."}},
		},
	}
}

func testEvaluation(bundle Bundle, output TierOutput, policy EvaluationPolicy) TierEvaluation {
	expositionSHA256, err := expositionDigest(bundle, output)
	if err != nil {
		panic(err)
	}
	policySHA256, err := policy.Digest()
	if err != nil {
		panic(err)
	}
	return TierEvaluation{
		Tier: domain.TierHighSchool, ProblemID: bundle.ProblemID, ProofSHA256: bundle.ProofSHA256,
		ExpositionSHA256: expositionSHA256, CanonSnapshotSHA256: bundle.CanonSnapshotSHA256, PolicySHA256: policySHA256,
		AuthorModelID: "expositor-v1",
		RoundTrip:     RoundTripReview{ModelID: "roundtrip-v1", ModelVersion: "r1", ExpositionSHA256: expositionSHA256, Frozen: true, Score: 0.9, RequiredFacts: []string{"statement", "central move"}, RecoveredFacts: []string{"statement", "central move"}, EvidenceID: "roundtrip-evidence"},
		Canon: CanonReview{ModelID: "canon-v1", ModelVersion: "c1", Frozen: true, ExpositionSHA256: expositionSHA256, CanonSnapshotSHA256: bundle.CanonSnapshotSHA256, Scores: []MoveScore{
			{Move: "motivation_before_statement", Score: 0.8},
			{Move: "example_before_generality", Score: 0.8},
			{Move: "naming_the_invariant", Score: 0.8},
			{Move: "point_is_compression", Score: 0.8},
			{Move: "naive_approach_failure", Score: 0.8},
			{Move: "closing_moral", Score: 0.8},
		}, EvidenceID: "canon-evidence"},
		Leakage: LeakageAudit{ProofSHA256: bundle.ProofSHA256, ExpositionSHA256: expositionSHA256, Method: "ngram-and-structure-v1", Passed: true, EvidenceID: "leakage-evidence"},
		Student: StudentLift{ModelID: "student-hs-v1", ModelVersion: "s1", Frozen: true, ExpositionSHA256: expositionSHA256, AttemptBudget: 10, TargetBaseline: 0.2, TargetWithExposition: 0.5, TransferBaseline: 0.1, TransferWithExposition: 0.4, ProgressLift: 0.1, EvidenceID: "student-evidence"},
	}
}

func testPolicy() EvaluationPolicy {
	return EvaluationPolicy{Version: "expositor-eval-v1", MinimumRoundTripScore: 0.7, MinimumCanonScore: 0.7, MaximumNgramOverlap: 0, MaximumStructureOverlap: 0, TransferWeight: 0.7, ProgressWeight: 0.1, LengthExponent: 1}
}

func TestBundleRequiresFiveDistinctTierProductsAndSharedInsight(t *testing.T) {
	bundle := testBundle()
	if err := bundle.Validate(testWordLimits()); err != nil {
		t.Fatalf("Validate() error = %v", err)
	}
	bundle.Tiers = bundle.Tiers[:4]
	if err := bundle.Validate(testWordLimits()); err == nil {
		t.Fatal("expected missing-tier refusal")
	}
	bundle = testBundle()
	bundle.Tiers[4].CoreInsightID = "different-insight"
	if err := bundle.Validate(testWordLimits()); err == nil || !strings.Contains(err.Error(), "same core insight") {
		t.Fatalf("expected shared-insight refusal, got %v", err)
	}
}

func TestBundleEnforcesTierSpecificExpositionRequirements(t *testing.T) {
	bundle := testBundle()
	bundle.Tiers[2].MissingHypothesis = ""
	if err := bundle.Validate(testWordLimits()); err == nil || !strings.Contains(err.Error(), "necessary hypothesis") {
		t.Fatalf("expected bachelor-tier requirement refusal, got %v", err)
	}
}

func TestEvaluateNeedsIndependentVerifiersLeakageAndStudentTransferLift(t *testing.T) {
	bundle := testBundle()
	output := bundle.Tiers[0]
	policy := testPolicy()
	review := testEvaluation(bundle, output, policy)
	result, err := Evaluate(bundle, output, review, policy, testWordLimits())
	if err != nil {
		t.Fatal(err)
	}
	if result.Accepted || result.Score != 0 || !strings.Contains(result.Refusal, "legacy scalar-only reviews") {
		t.Fatalf("legacy scalar review was not fail-closed: %#v", result)
	}
	stored, err := PersistEvaluation(bundle, output, result, policy, testWordLimits(), time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC))
	if err != nil {
		t.Fatalf("PersistEvaluation() error = %v", err)
	}
	if stored.Accepted || stored.Score != 0 || stored.Refusal == "" || stored.RoundTrip.ModelID != review.RoundTrip.ModelID || len(stored.Canon.Scores) != 6 || stored.Student.TransferWithExposition != review.Student.TransferWithExposition {
		t.Fatalf("PersistEvaluation() did not preserve the blocked review: %#v", stored)
	}

	review = testEvaluation(bundle, output, policy)
	review.Canon.ModelID = review.RoundTrip.ModelID
	if _, err := Evaluate(bundle, output, review, policy, testWordLimits()); err == nil || !strings.Contains(err.Error(), "independent") {
		t.Fatalf("expected verifier independence refusal, got %v", err)
	}

	review = testEvaluation(bundle, output, policy)
	review.Leakage.Passed = false
	review.Accepted = true
	review.Score = 100
	result, err = Evaluate(bundle, output, review, policy, testWordLimits())
	if err != nil || result.Accepted || result.Score != 0 || result.Refusal == "" {
		t.Fatalf("leakage failure was not vetoed: result=%#v err=%v", result, err)
	}

	review = testEvaluation(bundle, output, policy)
	review.Student.TransferWithExposition = review.Student.TransferBaseline
	result, err = Evaluate(bundle, output, review, policy, testWordLimits())
	if err != nil || result.Accepted || !strings.Contains(result.Refusal, "transfer lift") {
		t.Fatalf("missing transfer lift was not vetoed: result=%#v err=%v", result, err)
	}
}

func TestEvaluateBindsAllReviewsToExactOutputCanonAndPolicy(t *testing.T) {
	bundle := testBundle()
	output := bundle.Tiers[0]
	policy := testPolicy()
	review := testEvaluation(bundle, output, policy)
	review.Canon.CanonSnapshotSHA256 = strings.Repeat("c", 64)
	if _, err := Evaluate(bundle, output, review, policy, testWordLimits()); err == nil || !strings.Contains(err.Error(), "not bound") {
		t.Fatalf("Evaluate() with a different canon snapshot error = %v, want binding refusal", err)
	}

	changed := output
	changed.Example = "Changed after review."
	review = testEvaluation(bundle, changed, policy)
	if _, err := Evaluate(bundle, changed, review, policy, testWordLimits()); err == nil || !strings.Contains(err.Error(), "exact output") {
		t.Fatalf("Evaluate() with an output outside the bundle error = %v, want exact-output refusal", err)
	}

	review = testEvaluation(bundle, output, policy)
	review.Canon.Scores = review.Canon.Scores[:len(review.Canon.Scores)-1]
	if _, err := Evaluate(bundle, output, review, policy, testWordLimits()); err == nil || !strings.Contains(err.Error(), "exactly 6") {
		t.Fatalf("Evaluate() with a missing required canon move error = %v, want six-move refusal", err)
	}
}

func TestRoundTripRejectsOmittedRequiredHypothesis(t *testing.T) {
	bundle := testBundle()
	output := bundle.Tiers[0]
	policy := testPolicy()
	review := testEvaluation(bundle, output, policy)
	review.RoundTrip.RequiredFacts = append(review.RoundTrip.RequiredFacts, "necessary hypothesis")
	if _, err := Evaluate(bundle, output, review, policy, testWordLimits()); err == nil || !strings.Contains(err.Error(), "did not recover required fact") {
		t.Fatalf("Evaluate() error = %v, want contradiction between required and recovered hypotheses rejected", err)
	}
}

func TestOldRoundTripCannotBeReusedAfterProofAndExplanationChange(t *testing.T) {
	original := testBundle()
	oldOutput := original.Tiers[0]
	policy := testPolicy()
	oldReview := testEvaluation(original, oldOutput, policy)

	changed := original
	changed.Tiers = append([]TierOutput(nil), original.Tiers...)
	changed.ProofSHA256 = strings.Repeat("c", 64)
	changed.Tiers[0].ProofNarrative = "The shorter explanation skips the induction hypothesis and claims the result."
	if _, err := Evaluate(changed, changed.Tiers[0], oldReview, policy, testWordLimits()); err == nil || !strings.Contains(err.Error(), "identity does not match") {
		t.Fatalf("Evaluate() error = %v, want stale explanation review rejected after proof and prose change", err)
	}
}
