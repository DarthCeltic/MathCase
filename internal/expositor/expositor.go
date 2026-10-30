// Package expositor defines the five-tier M7 output and independent evaluation
// contract. Generation and training remain injected and opt-in.
package expositor

import (
	"errors"
	"fmt"
	"io/fs"
	"math"
	"reflect"
	"sort"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

type TierOutput struct {
	Tier                 domain.AudienceTier `json:"tier"`
	AssumedBackground    []string            `json:"assumed_background"`
	CoreInsightID        string              `json:"core_insight_id"`
	Motivation           string              `json:"motivation"`
	WhyNotObvious        string              `json:"why_not_obvious"`
	CoreInsightSentence  string              `json:"core_insight_sentence"`
	ProofNarrative       string              `json:"proof_narrative"`
	Example              string              `json:"example"`
	StoppingPoint        string              `json:"stopping_point"`
	AssertedSteps        []string            `json:"asserted_steps,omitempty"`
	WorkedVariant        string              `json:"worked_variant,omitempty"`
	BoundaryCase         string              `json:"boundary_case,omitempty"`
	MissingHypothesis    string              `json:"missing_hypothesis,omitempty"`
	PreciseLemmas        []string            `json:"precise_lemmas,omitempty"`
	TextbookComparison   string              `json:"textbook_comparison,omitempty"`
	AlternativesRejected []string            `json:"alternatives_rejected,omitempty"`
	TransferTargets      []string            `json:"transfer_targets,omitempty"`
}

type Bundle struct {
	AuthorCallID        string                  `json:"author_call_id"`
	ProviderCallID      string                  `json:"provider_call_id,omitempty"`
	AccountingReceipt   *budget.CostCallReceipt `json:"accounting_receipt,omitempty"`
	ProblemID           string                  `json:"problem_id"`
	ProofSHA256         string                  `json:"proof_sha256"`
	CanonSnapshotSHA256 string                  `json:"canon_snapshot_sha256"`
	ExpositorModelID    string                  `json:"expositor_model_id"`
	ExpositorVersion    string                  `json:"expositor_version"`
	Tiers               []TierOutput            `json:"tiers"`
}

type WordLimits map[domain.AudienceTier]int

func (b Bundle) Validate(wordLimits WordLimits) error {
	if err := wordLimits.Validate(); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("exposition author call ID", b.AuthorCallID); err != nil {
		return err
	}
	if b.AccountingReceipt != nil {
		if err := b.AccountingReceipt.Validate(); err != nil {
			return fmt.Errorf("expositor: invalid budgeted author-call receipt: %w", err)
		}
		receipt := b.AccountingReceipt
		if receipt.CallID != b.AuthorCallID || receipt.Start.TaskID != budget.TaskM7Expositor ||
			receipt.Start.CandidateID != b.ProblemID || receipt.Start.Model != b.ExpositorModelID ||
			receipt.Start.ModelVersion != b.ExpositorVersion || strings.TrimSpace(receipt.Start.AccountProfile) == "" ||
			receipt.Finish.ProviderOutcome != "returned" || receipt.Finish.GenerationOutcome != "complete" ||
			receipt.Finish.DecoderOutcome != "accepted" {
			return errors.New("expositor: accounting receipt is not bound to this successful five-tier author call")
		}
		if b.ProviderCallID != "" && receipt.Finish.ProviderCallID != b.ProviderCallID {
			return errors.New("expositor: provider call ID does not match the accounting receipt")
		}
	}
	if err := state.ValidateIdentifier("exposition problem ID", b.ProblemID); err != nil {
		return err
	}
	if b.ProviderCallID != "" {
		if err := state.ValidateIdentifier("exposition provider call ID", b.ProviderCallID); err != nil {
			return err
		}
	}
	if !validDigest(b.ProofSHA256) {
		return errors.New("expositor: bundle requires a canonical proof SHA-256")
	}
	if !validDigest(b.CanonSnapshotSHA256) {
		return errors.New("expositor: bundle requires a canonical canon snapshot SHA-256")
	}
	if strings.TrimSpace(b.ExpositorModelID) == "" || strings.TrimSpace(b.ExpositorVersion) == "" {
		return errors.New("expositor: model identity and version are required")
	}
	if len(b.Tiers) != 5 {
		return fmt.Errorf("expositor: one output for each of the five tiers is required, got %d", len(b.Tiers))
	}
	seen := make(map[domain.AudienceTier]struct{}, len(b.Tiers))
	sharedInsight := ""
	for _, output := range b.Tiers {
		if _, exists := seen[output.Tier]; exists {
			return fmt.Errorf("expositor: duplicate tier %q", output.Tier)
		}
		seen[output.Tier] = struct{}{}
		limit, ok := wordLimits[output.Tier]
		if !ok || limit <= 0 {
			return fmt.Errorf("expositor: positive frozen word limit is required for %s", output.Tier)
		}
		if err := output.validate(limit); err != nil {
			return fmt.Errorf("expositor: %s: %w", output.Tier, err)
		}
		if sharedInsight == "" {
			sharedInsight = output.CoreInsightID
		} else if output.CoreInsightID != sharedInsight {
			return errors.New("expositor: the same core insight must be carried across all five tiers")
		}
	}
	for _, tier := range []domain.AudienceTier{domain.TierHighSchool, domain.TierAssociate, domain.TierBachelor, domain.TierMaster, domain.TierDoctorate} {
		if _, ok := seen[tier]; !ok {
			return fmt.Errorf("expositor: missing required tier %s", tier)
		}
	}
	return nil
}

func (o TierOutput) validate(maxWords int) error {
	if !knownTier(o.Tier) {
		return fmt.Errorf("unknown audience tier %q", o.Tier)
	}
	if err := state.ValidateIdentifier("core insight ID", o.CoreInsightID); err != nil {
		return err
	}
	for name, value := range map[string]string{
		"motivation": o.Motivation, "why it is not obvious": o.WhyNotObvious,
		"core insight": o.CoreInsightSentence, "proof narrative": o.ProofNarrative,
		"example": o.Example, "stopping point": o.StoppingPoint,
	} {
		if strings.TrimSpace(value) == "" {
			return fmt.Errorf("%s is required", name)
		}
	}
	if len(o.AssumedBackground) == 0 {
		return errors.New("assumed background must be explicit")
	}
	switch o.Tier {
	case domain.TierHighSchool:
		if len(o.AssertedSteps) == 0 {
			return errors.New("high school exposition must label asserted proof steps")
		}
	case domain.TierAssociate:
		if strings.TrimSpace(o.WorkedVariant) == "" {
			return errors.New("associate exposition must include a try-the-same-move variant")
		}
	case domain.TierBachelor:
		if strings.TrimSpace(o.BoundaryCase) == "" || strings.TrimSpace(o.MissingHypothesis) == "" {
			return errors.New("bachelor exposition must identify a boundary case and a necessary hypothesis")
		}
	case domain.TierMaster:
		if len(o.PreciseLemmas) == 0 || strings.TrimSpace(o.TextbookComparison) == "" {
			return errors.New("master exposition must state precise lemmas and compare with a standard proof")
		}
	case domain.TierDoctorate:
		if len(o.AlternativesRejected) == 0 || len(o.TransferTargets) == 0 {
			return errors.New("doctorate exposition must record rejected alternatives and transfer targets")
		}
	}
	if words := wordCount(o.Render()); words > maxWords {
		return fmt.Errorf("word budget exceeded: %d > %d", words, maxWords)
	}
	return nil
}

// Render keeps the designed teaching order explicit: motivation, challenge,
// central move, proof narrative, example, and an honest stopping point.
func (o TierOutput) Render() string {
	parts := []string{o.Motivation, o.WhyNotObvious, o.CoreInsightSentence, o.ProofNarrative, o.Example}
	switch o.Tier {
	case domain.TierAssociate:
		parts = append(parts, o.WorkedVariant)
	case domain.TierBachelor:
		parts = append(parts, o.BoundaryCase, o.MissingHypothesis)
	case domain.TierMaster:
		parts = append(parts, strings.Join(o.PreciseLemmas, " "), o.TextbookComparison)
	case domain.TierDoctorate:
		parts = append(parts, strings.Join(o.AlternativesRejected, " "), strings.Join(o.TransferTargets, " "))
	}
	if o.Tier == domain.TierHighSchool {
		parts = append(parts, strings.Join(o.AssertedSteps, " "))
	}
	parts = append(parts, o.StoppingPoint)
	return strings.Join(parts, "\n\n")
}

type RoundTripReview struct {
	ModelID          string   `json:"model_id"`
	ModelVersion     string   `json:"model_version"`
	ExpositionSHA256 string   `json:"exposition_sha256"`
	Frozen           bool     `json:"frozen"`
	Score            float64  `json:"score"`
	RequiredFacts    []string `json:"required_facts"`
	RecoveredFacts   []string `json:"recovered_facts"`
	EvidenceID       string   `json:"evidence_id"`
}

type MoveScore struct {
	Move  string  `json:"move"`
	Score float64 `json:"score"`
}

type CanonReview struct {
	ModelID             string      `json:"model_id"`
	ModelVersion        string      `json:"model_version"`
	Frozen              bool        `json:"frozen"`
	ExpositionSHA256    string      `json:"exposition_sha256"`
	CanonSnapshotSHA256 string      `json:"canon_snapshot_sha256"`
	Scores              []MoveScore `json:"scores"`
	EvidenceID          string      `json:"evidence_id"`
}

type LeakageAudit struct {
	ProofSHA256      string  `json:"proof_sha256"`
	ExpositionSHA256 string  `json:"exposition_sha256"`
	Method           string  `json:"method"`
	NgramOverlap     float64 `json:"ngram_overlap"`
	StructureOverlap float64 `json:"structure_overlap"`
	Passed           bool    `json:"passed"`
	EvidenceID       string  `json:"evidence_id"`
}

type StudentLift struct {
	ModelID                string  `json:"model_id"`
	ModelVersion           string  `json:"model_version"`
	Frozen                 bool    `json:"frozen"`
	ExpositionSHA256       string  `json:"exposition_sha256"`
	AttemptBudget          int     `json:"attempt_budget"`
	TargetBaseline         float64 `json:"target_baseline"`
	TargetWithExposition   float64 `json:"target_with_exposition"`
	TransferBaseline       float64 `json:"transfer_baseline"`
	TransferWithExposition float64 `json:"transfer_with_exposition"`
	ProgressLift           float64 `json:"progress_lift"`
	EvidenceID             string  `json:"evidence_id"`
}

type TierEvaluation struct {
	Tier                   domain.AudienceTier `json:"tier"`
	ProblemID              string              `json:"problem_id"`
	ProofSHA256            string              `json:"proof_sha256"`
	ExpositionSHA256       string              `json:"exposition_sha256"`
	CanonSnapshotSHA256    string              `json:"canon_snapshot_sha256"`
	PolicySHA256           string              `json:"policy_sha256"`
	EvidenceManifestPath   string              `json:"evidence_manifest_path,omitempty"`
	EvidenceManifestSHA256 string              `json:"evidence_manifest_sha256,omitempty"`
	AuthorModelID          string              `json:"author_model_id"`
	RoundTrip              RoundTripReview     `json:"round_trip"`
	Canon                  CanonReview         `json:"canon"`
	Leakage                LeakageAudit        `json:"leakage"`
	Student                StudentLift         `json:"student"`
	Accepted               bool                `json:"accepted"`
	Score                  float64             `json:"score"`
	Refusal                string              `json:"refusal,omitempty"`
}

type EvaluationPolicy = domain.ExpositionEvaluationPolicy

const (
	m7IdentityBlockedRefusal   = "M7 evaluation is blocked: external issuer identity and reviewer independence are not authenticated by this build"
	m7SingleTierBlockedRefusal = "M7 evaluation is blocked: individual tiers cannot be accepted; all five tiers must be evaluated atomically"
)

func Evaluate(bundle Bundle, output TierOutput, review TierEvaluation, policy EvaluationPolicy, wordLimits WordLimits) (TierEvaluation, error) {
	return evaluate(bundle, output, review, policy, wordLimits, false)
}

func evaluate(bundle Bundle, output TierOutput, review TierEvaluation, policy EvaluationPolicy, wordLimits WordLimits, identityAuthenticated bool) (TierEvaluation, error) {
	if err := bundle.Validate(wordLimits); err != nil {
		return TierEvaluation{}, err
	}
	if err := policy.Validate(); err != nil {
		return TierEvaluation{}, err
	}
	if !outputBelongsToBundle(bundle, output) {
		return TierEvaluation{}, errors.New("expositor: evaluated tier is not the exact output stored in the bundle")
	}
	expositionDigest, err := expositionDigest(bundle, output)
	if err != nil {
		return TierEvaluation{}, err
	}
	policyDigest, err := policy.Digest()
	if err != nil {
		return TierEvaluation{}, err
	}
	if review.Tier != output.Tier || review.AuthorModelID != bundle.ExpositorModelID || review.ProblemID != bundle.ProblemID || review.ProofSHA256 != bundle.ProofSHA256 || review.ExpositionSHA256 != expositionDigest || review.CanonSnapshotSHA256 != bundle.CanonSnapshotSHA256 || review.PolicySHA256 != policyDigest {
		return TierEvaluation{}, errors.New("expositor: evaluation identity does not match output bundle")
	}
	review.Accepted = false
	review.Score = 0
	review.Refusal = ""
	if review.RoundTrip.ExpositionSHA256 != expositionDigest || review.Canon.ExpositionSHA256 != expositionDigest || review.Canon.CanonSnapshotSHA256 != bundle.CanonSnapshotSHA256 || review.Leakage.ExpositionSHA256 != expositionDigest || review.Leakage.ProofSHA256 != bundle.ProofSHA256 || review.Student.ExpositionSHA256 != expositionDigest {
		return TierEvaluation{}, errors.New("expositor: independent reviews are not bound to this exposition and canon snapshot")
	}
	if err := validateReviewIndependence(review); err != nil {
		return TierEvaluation{}, err
	}
	if err := validateEvidenceIDs(review); err != nil {
		return TierEvaluation{}, err
	}
	if err := validateMoveScores(review.Canon.Scores); err != nil {
		return TierEvaluation{}, err
	}
	if !review.Leakage.Passed || review.Leakage.NgramOverlap > policy.MaximumNgramOverlap || review.Leakage.StructureOverlap > policy.MaximumStructureOverlap {
		review.Refusal = "leakage audit failed or is not bound to this exposition and proof"
		return review, nil
	}
	if review.RoundTrip.Score < policy.MinimumRoundTripScore {
		review.Refusal = "round-trip fidelity is below the frozen threshold"
		return review, nil
	}
	if averageMoveScore(review.Canon.Scores) < policy.MinimumCanonScore {
		review.Refusal = "expositional-move score is below the frozen threshold"
		return review, nil
	}
	if review.Student.TargetWithExposition <= review.Student.TargetBaseline || review.Student.TransferWithExposition <= review.Student.TransferBaseline {
		review.Refusal = "frozen student shows no positive target and transfer lift"
		return review, nil
	}
	if !identityAuthenticated {
		review.Refusal = "M7 evaluation is blocked: legacy scalar-only reviews have no reopened run receipts or authenticated external reviewer identities"
		return review, nil
	}
	wordCount := len(strings.Fields(output.Render()))
	if wordCount == 0 {
		return TierEvaluation{}, errors.New("expositor: accepted M7 evaluation has no exposition words to score")
	}
	targetLift := review.Student.TargetWithExposition - review.Student.TargetBaseline
	transferLift := review.Student.TransferWithExposition - review.Student.TransferBaseline
	combined := (1-policy.TransferWeight)*targetLift + policy.TransferWeight*transferLift + policy.ProgressWeight*review.Student.ProgressLift
	review.Score = combined / math.Pow(float64(wordCount), policy.LengthExponent)
	if math.IsNaN(review.Score) || math.IsInf(review.Score, 0) || review.Score < 0 {
		return TierEvaluation{}, errors.New("expositor: computed M7 score is not finite and nonnegative")
	}
	review.Accepted = true
	review.Refusal = ""
	return review, nil
}

func expositionDigest(bundle Bundle, output TierOutput) (string, error) {
	return domain.ExpositionDigest(domain.Exposition{
		Tier:          output.Tier,
		Text:          output.Render(),
		CoreInsightID: output.CoreInsightID,
		CoreInsight:   output.CoreInsightSentence,
		ProofRef:      bundle.ProofSHA256,
	})
}

// PersistEvaluation stores a fail-closed M7 result from the legacy scalar
// review inputs. Use PersistEvaluationWithEvidence to bind reopened artifacts;
// neither path can accept an evaluation until external identities authenticate.
func PersistEvaluation(bundle Bundle, output TierOutput, review TierEvaluation, policy EvaluationPolicy, wordLimits WordLimits, recordedAt time.Time) (domain.ExpositionEvaluation, error) {
	if recordedAt.IsZero() {
		return domain.ExpositionEvaluation{}, errors.New("expositor: evaluation receipt time is required")
	}
	verified, err := Evaluate(bundle, output, review, policy, wordLimits)
	if err != nil {
		return domain.ExpositionEvaluation{}, err
	}
	return persistEvaluationReceipt(bundle, verified, policy, recordedAt)
}

// EvaluateWithEvidence reopens one tier's M7 input, receipts, and raw output,
// then recomputes student lift from matched attempt rows. A single-tier call
// never accepts or emits a delivery result; all five tiers must pass together
// through EvaluateBundleWithEvidence.
func EvaluateWithEvidence(
	bundle Bundle,
	output TierOutput,
	review TierEvaluation,
	policy EvaluationPolicy,
	wordLimits WordLimits,
	evidenceFS fs.FS,
	manifestPath string,
	identityTrust ...*M7IdentityTrustRegistry,
) (TierEvaluation, M7EvidenceAuditReport, error) {
	report, err := AuditM7Evidence(evidenceFS, manifestPath, bundle, output, review, policy, wordLimits, identityTrust...)
	if err != nil {
		return TierEvaluation{}, report, err
	}
	identityAuthenticated := report.ExternalIdentityAuthenticated && report.Disposition == M7AuditAuthenticated
	verified, err := Evaluate(bundle, output, review, policy, wordLimits)
	if err != nil {
		return TierEvaluation{}, report, err
	}
	if identityAuthenticated && verified.Refusal == "M7 evaluation is blocked: legacy scalar-only reviews have no reopened run receipts or authenticated external reviewer identities" {
		verified.Refusal = m7SingleTierBlockedRefusal
	} else if !identityAuthenticated && verified.Refusal == "M7 evaluation is blocked: legacy scalar-only reviews have no reopened run receipts or authenticated external reviewer identities" {
		verified.Refusal = m7IdentityBlockedRefusal
	}
	verified.EvidenceManifestPath = manifestPath
	verified.EvidenceManifestSHA256 = report.ManifestSHA256
	return verified, report, nil
}

// PersistEvaluationWithEvidence stores the manifest path and digest alongside
// the blocked M7 result so a later dossier verifier can reopen the same bytes.
func PersistEvaluationWithEvidence(
	bundle Bundle,
	output TierOutput,
	review TierEvaluation,
	policy EvaluationPolicy,
	wordLimits WordLimits,
	recordedAt time.Time,
	evidenceFS fs.FS,
	manifestPath string,
	identityTrust ...*M7IdentityTrustRegistry,
) (domain.ExpositionEvaluation, M7EvidenceAuditReport, error) {
	if recordedAt.IsZero() {
		return domain.ExpositionEvaluation{}, M7EvidenceAuditReport{}, errors.New("expositor: evaluation receipt time is required")
	}
	verified, report, err := EvaluateWithEvidence(bundle, output, review, policy, wordLimits, evidenceFS, manifestPath, identityTrust...)
	if err != nil {
		return domain.ExpositionEvaluation{}, report, err
	}
	receipt, err := persistEvaluationReceipt(bundle, verified, policy, recordedAt)
	if err != nil {
		return domain.ExpositionEvaluation{}, report, err
	}
	return receipt, report, nil
}

func persistEvaluationReceipt(bundle Bundle, review TierEvaluation, policy EvaluationPolicy, recordedAt time.Time) (domain.ExpositionEvaluation, error) {
	policyDigest, err := policy.Digest()
	if err != nil {
		return domain.ExpositionEvaluation{}, err
	}
	return domain.ExpositionEvaluation{
		Tier: review.Tier, AuthorCallID: bundle.AuthorCallID, ProblemID: review.ProblemID, ProofSHA256: review.ProofSHA256,
		ExpositionSHA256: review.ExpositionSHA256, CanonSnapshotSHA256: review.CanonSnapshotSHA256,
		PolicySHA256: policyDigest, Policy: policy,
		AuthorModelID: review.AuthorModelID, AuthorModelVersion: bundle.ExpositorVersion,
		RoundTrip: domain.ExpositionRoundTripReview{
			ModelID: review.RoundTrip.ModelID, ModelVersion: review.RoundTrip.ModelVersion, Frozen: review.RoundTrip.Frozen,
			Score: review.RoundTrip.Score, RequiredFacts: append([]string(nil), review.RoundTrip.RequiredFacts...),
			RecoveredFacts: append([]string(nil), review.RoundTrip.RecoveredFacts...), EvidenceID: review.RoundTrip.EvidenceID,
		},
		Canon: domain.ExpositionCanonReview{
			ModelID: review.Canon.ModelID, ModelVersion: review.Canon.ModelVersion, Frozen: review.Canon.Frozen,
			Scores: convertMoveScores(review.Canon.Scores), EvidenceID: review.Canon.EvidenceID,
		},
		Leakage: domain.ExpositionLeakageAudit{
			Method: review.Leakage.Method, NgramOverlap: review.Leakage.NgramOverlap,
			StructureOverlap: review.Leakage.StructureOverlap, Passed: review.Leakage.Passed,
			EvidenceID: review.Leakage.EvidenceID,
		},
		Student: domain.ExpositionStudentLift{
			ModelID: review.Student.ModelID, ModelVersion: review.Student.ModelVersion, Frozen: review.Student.Frozen,
			AttemptBudget: review.Student.AttemptBudget, TargetBaseline: review.Student.TargetBaseline,
			TargetWithExposition: review.Student.TargetWithExposition, TransferBaseline: review.Student.TransferBaseline,
			TransferWithExposition: review.Student.TransferWithExposition, ProgressLift: review.Student.ProgressLift,
			EvidenceID: review.Student.EvidenceID,
		},
		EvidenceManifestPath: review.EvidenceManifestPath, EvidenceManifestSHA256: review.EvidenceManifestSHA256,
		Accepted: review.Accepted, Score: review.Score, Refusal: review.Refusal, RecordedAt: recordedAt.UTC(),
	}, nil
}

func convertMoveScores(scores []MoveScore) []domain.ExpositionMoveScore {
	converted := make([]domain.ExpositionMoveScore, 0, len(scores))
	for _, score := range scores {
		converted = append(converted, domain.ExpositionMoveScore{Move: score.Move, Score: score.Score})
	}
	return converted
}

func outputBelongsToBundle(bundle Bundle, output TierOutput) bool {
	for _, candidate := range bundle.Tiers {
		if candidate.Tier == output.Tier {
			return reflect.DeepEqual(candidate, output)
		}
	}
	return false
}

func validateReviewIndependence(review TierEvaluation) error {
	models := []struct {
		role   string
		id     string
		ver    string
		frozen bool
	}{
		{"round-trip verifier", review.RoundTrip.ModelID, review.RoundTrip.ModelVersion, review.RoundTrip.Frozen},
		{"canon verifier", review.Canon.ModelID, review.Canon.ModelVersion, review.Canon.Frozen},
		{"student", review.Student.ModelID, review.Student.ModelVersion, review.Student.Frozen},
	}
	seen := map[string]string{review.AuthorModelID: "expositor"}
	for _, model := range models {
		if strings.TrimSpace(model.id) == "" || strings.TrimSpace(model.ver) == "" || !model.frozen {
			return fmt.Errorf("expositor: %s must have a frozen model identity and version", model.role)
		}
		if previous, exists := seen[model.id]; exists {
			return fmt.Errorf("expositor: %s must be independent of %s", model.role, previous)
		}
		seen[model.id] = model.role
	}
	if review.RoundTrip.ModelID == review.Canon.ModelID || review.RoundTrip.ModelID == review.Student.ModelID || review.Canon.ModelID == review.Student.ModelID {
		return errors.New("expositor: the two verifiers and student must use distinct frozen models")
	}
	return nil
}

func validateEvidenceIDs(review TierEvaluation) error {
	seen := make(map[string]struct{}, 4)
	for _, item := range []struct {
		name string
		id   string
	}{
		{name: "round-trip", id: review.RoundTrip.EvidenceID},
		{name: "canon", id: review.Canon.EvidenceID},
		{name: "leakage", id: review.Leakage.EvidenceID},
		{name: "student", id: review.Student.EvidenceID},
	} {
		if err := state.ValidateIdentifier("expositor "+item.name+" evidence ID", item.id); err != nil {
			return err
		}
		if _, exists := seen[item.id]; exists {
			return fmt.Errorf("expositor: %s evidence ID must be independent", item.name)
		}
		seen[item.id] = struct{}{}
	}
	if !review.RoundTrip.Frozen || !unit(review.RoundTrip.Score) || len(review.RoundTrip.RequiredFacts) == 0 {
		return errors.New("expositor: round-trip review is incomplete")
	}
	if len(review.RoundTrip.RecoveredFacts) == 0 {
		return errors.New("expositor: round-trip review has no reconstructed facts")
	}
	recovered := make(map[string]struct{}, len(review.RoundTrip.RecoveredFacts))
	for _, fact := range review.RoundTrip.RecoveredFacts {
		fact = strings.TrimSpace(fact)
		if fact == "" {
			return errors.New("expositor: round-trip review contains an empty reconstructed fact")
		}
		recovered[fact] = struct{}{}
	}
	for _, fact := range review.RoundTrip.RequiredFacts {
		fact = strings.TrimSpace(fact)
		if _, ok := recovered[fact]; !ok {
			return fmt.Errorf("expositor: round-trip review did not recover required fact %q", fact)
		}
	}
	if !unit(review.Leakage.NgramOverlap) || !unit(review.Leakage.StructureOverlap) || strings.TrimSpace(review.Leakage.Method) == "" {
		return errors.New("expositor: leakage audit is incomplete")
	}
	if !review.Student.Frozen || review.Student.AttemptBudget <= 0 || !unit(review.Student.TargetBaseline) || !unit(review.Student.TargetWithExposition) || !unit(review.Student.TransferBaseline) || !unit(review.Student.TransferWithExposition) || !unit(review.Student.ProgressLift) {
		return errors.New("expositor: student lift record is invalid")
	}
	return nil
}

func validateMoveScores(scores []MoveScore) error {
	if len(scores) != len(requiredCanonMoves) {
		return fmt.Errorf("expositor: exactly %d required canon move scores are required", len(requiredCanonMoves))
	}
	seen := make(map[string]struct{}, len(scores))
	required := make(map[string]struct{}, len(requiredCanonMoves))
	for _, move := range requiredCanonMoves {
		required[move] = struct{}{}
	}
	for _, score := range scores {
		if strings.TrimSpace(score.Move) == "" || !unit(score.Score) {
			return errors.New("expositor: canon move score is invalid")
		}
		if _, exists := seen[score.Move]; exists {
			return fmt.Errorf("expositor: duplicate canon move %q", score.Move)
		}
		if _, exists := required[score.Move]; !exists {
			return fmt.Errorf("expositor: unknown canon move %q", score.Move)
		}
		seen[score.Move] = struct{}{}
	}
	for _, move := range requiredCanonMoves {
		if _, exists := seen[move]; !exists {
			return fmt.Errorf("expositor: missing required canon move %q", move)
		}
	}
	return nil
}

var requiredCanonMoves = []string{
	"motivation_before_statement",
	"example_before_generality",
	"naming_the_invariant",
	"point_is_compression",
	"naive_approach_failure",
	"closing_moral",
}

func averageMoveScore(scores []MoveScore) float64 {
	if len(scores) == 0 {
		return 0
	}
	copyScores := append([]MoveScore(nil), scores...)
	sort.Slice(copyScores, func(i, j int) bool { return copyScores[i].Move < copyScores[j].Move })
	total := 0.0
	for _, score := range copyScores {
		if score.Move == "" || !unit(score.Score) {
			return 0
		}
		total += score.Score
	}
	return total / float64(len(copyScores))
}

func wordCount(text string) int {
	return len(strings.Fields(text))
}

func knownTier(tier domain.AudienceTier) bool {
	switch tier {
	case domain.TierHighSchool, domain.TierAssociate, domain.TierBachelor, domain.TierMaster, domain.TierDoctorate:
		return true
	default:
		return false
	}
}

func validDigest(value string) bool {
	if len(value) != 64 || strings.ToLower(value) != value {
		return false
	}
	for _, character := range value {
		if !(character >= '0' && character <= '9' || character >= 'a' && character <= 'f') {
			return false
		}
	}
	return true
}

func finite(value float64) bool { return !math.IsNaN(value) && !math.IsInf(value, 0) }
func unit(value float64) bool   { return finite(value) && value >= 0 && value <= 1 }
