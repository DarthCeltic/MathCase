package domain

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"math"
	"path"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/state"
)

// ExpositionEvaluationPolicy is the frozen threshold and scoring policy shared
// by all five tier evaluations.
type ExpositionEvaluationPolicy struct {
	Version                 string  `json:"version"`
	MinimumRoundTripScore   float64 `json:"minimum_round_trip_score"`
	MinimumCanonScore       float64 `json:"minimum_canon_score"`
	MaximumNgramOverlap     float64 `json:"maximum_ngram_overlap"`
	MaximumStructureOverlap float64 `json:"maximum_structure_overlap"`
	TransferWeight          float64 `json:"transfer_weight"`
	ProgressWeight          float64 `json:"progress_weight"`
	LengthExponent          float64 `json:"length_exponent"`
}

func (p ExpositionEvaluationPolicy) Validate() error {
	if err := state.ValidateIdentifier("expositor evaluation policy version", p.Version); err != nil {
		return err
	}
	if !unit(p.MinimumRoundTripScore) || !unit(p.MinimumCanonScore) || !unit(p.MaximumNgramOverlap) || !unit(p.MaximumStructureOverlap) || !unit(p.TransferWeight) || !unit(p.ProgressWeight) || !finite(p.LengthExponent) || p.LengthExponent <= 0 {
		return errors.New("dossier: invalid exposition evaluation policy")
	}
	return nil
}

// Digest identifies the exact policy values used by the independent reviewers.
func (p ExpositionEvaluationPolicy) Digest() (string, error) {
	data, err := json.Marshal(p)
	if err != nil {
		return "", err
	}
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:]), nil
}

// ExpositionDigest returns the SHA-256 of the user-visible tier text, its
// shared core-insight identity, and its tier-appropriate insight sentence. The
// exact proof digest is tracked separately by the receipt.
func ExpositionDigest(exposition Exposition) (string, error) {
	payload := struct {
		Tier          AudienceTier `json:"tier"`
		Text          string       `json:"text"`
		CoreInsightID string       `json:"core_insight_id"`
		CoreInsight   string       `json:"core_insight"`
	}{
		Tier:          exposition.Tier,
		Text:          exposition.Text,
		CoreInsightID: exposition.CoreInsightID,
		CoreInsight:   exposition.CoreInsight,
	}
	data, err := json.Marshal(payload)
	if err != nil {
		return "", err
	}
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:]), nil
}

type ExpositionMoveScore struct {
	Move  string  `json:"move"`
	Score float64 `json:"score"`
}

type ExpositionRoundTripReview struct {
	ModelID        string   `json:"model_id"`
	ModelVersion   string   `json:"model_version"`
	Frozen         bool     `json:"frozen"`
	Score          float64  `json:"score"`
	RequiredFacts  []string `json:"required_facts"`
	RecoveredFacts []string `json:"recovered_facts"`
	EvidenceID     string   `json:"evidence_id"`
}

type ExpositionCanonReview struct {
	ModelID      string                `json:"model_id"`
	ModelVersion string                `json:"model_version"`
	Frozen       bool                  `json:"frozen"`
	Scores       []ExpositionMoveScore `json:"scores"`
	EvidenceID   string                `json:"evidence_id"`
}

type ExpositionLeakageAudit struct {
	Method           string  `json:"method"`
	NgramOverlap     float64 `json:"ngram_overlap"`
	StructureOverlap float64 `json:"structure_overlap"`
	Passed           bool    `json:"passed"`
	EvidenceID       string  `json:"evidence_id"`
}

type ExpositionStudentLift struct {
	ModelID                string  `json:"model_id"`
	ModelVersion           string  `json:"model_version"`
	Frozen                 bool    `json:"frozen"`
	AttemptBudget          int     `json:"attempt_budget"`
	TargetBaseline         float64 `json:"target_baseline"`
	TargetWithExposition   float64 `json:"target_with_exposition"`
	TransferBaseline       float64 `json:"transfer_baseline"`
	TransferWithExposition float64 `json:"transfer_with_exposition"`
	ProgressLift           float64 `json:"progress_lift"`
	EvidenceID             string  `json:"evidence_id"`
}

// ExpositionWordLimits records the owner-pinned maximum word count for each
// M7 audience tier. It is optional only on legacy dossiers with no reopened
// M7 evidence manifests.
type ExpositionWordLimits struct {
	HighSchool int `json:"high_school"`
	Associate  int `json:"associate"`
	Bachelor   int `json:"bachelor"`
	Master     int `json:"master"`
	Doctorate  int `json:"doctorate"`
}

func (limits ExpositionWordLimits) Validate() error {
	if limits.HighSchool <= 0 || limits.Associate <= 0 || limits.Bachelor <= 0 ||
		limits.Master <= 0 || limits.Doctorate <= 0 {
		return errors.New("dossier: five positive M7 exposition word limits are required")
	}
	return nil
}

func (limits ExpositionWordLimits) ForTier(tier AudienceTier) (int, bool) {
	switch tier {
	case TierHighSchool:
		return limits.HighSchool, true
	case TierAssociate:
		return limits.Associate, true
	case TierBachelor:
		return limits.Bachelor, true
	case TierMaster:
		return limits.Master, true
	case TierDoctorate:
		return limits.Doctorate, true
	default:
		return 0, false
	}
}

// ExpositionEvaluation preserves M7 review claims and an optional manifest
// reference. The Accepted field is not authoritative without reopening the
// referenced bytes and authenticating every external reviewer identity.
type ExpositionEvaluation struct {
	Tier                   AudienceTier               `json:"tier"`
	AuthorCallID           string                     `json:"author_call_id"`
	ProblemID              string                     `json:"problem_id"`
	ProofSHA256            string                     `json:"proof_sha256"`
	ExpositionSHA256       string                     `json:"exposition_sha256"`
	CanonSnapshotSHA256    string                     `json:"canon_snapshot_sha256"`
	PolicySHA256           string                     `json:"policy_sha256"`
	Policy                 ExpositionEvaluationPolicy `json:"policy"`
	EvidenceManifestPath   string                     `json:"evidence_manifest_path,omitempty"`
	EvidenceManifestSHA256 string                     `json:"evidence_manifest_sha256,omitempty"`
	AuthorModelID          string                     `json:"author_model_id"`
	AuthorModelVersion     string                     `json:"author_model_version"`
	RoundTrip              ExpositionRoundTripReview  `json:"round_trip"`
	Canon                  ExpositionCanonReview      `json:"canon"`
	Leakage                ExpositionLeakageAudit     `json:"leakage"`
	Student                ExpositionStudentLift      `json:"student"`
	Accepted               bool                       `json:"accepted"`
	Score                  float64                    `json:"score"`
	Refusal                string                     `json:"refusal,omitempty"`
	RecordedAt             time.Time                  `json:"recorded_at"`
}

var requiredExpositionCanonMoves = [...]string{
	"motivation_before_statement",
	"example_before_generality",
	"naming_the_invariant",
	"point_is_compression",
	"naive_approach_failure",
	"closing_moral",
}

// RequiredExpositionCanonMoves returns the exact stable tags used by the
// evaluation contract.
func RequiredExpositionCanonMoves() []string {
	return append([]string(nil), requiredExpositionCanonMoves[:]...)
}

// ReviewEvidenceIDs returns the four distinct evidence records used by M7.
func (e ExpositionEvaluation) ReviewEvidenceIDs() []string {
	return []string{e.RoundTrip.EvidenceID, e.Canon.EvidenceID, e.Leakage.EvidenceID, e.Student.EvidenceID}
}

func (e ExpositionEvaluation) validate() error {
	if !knownTier(e.Tier) {
		return errors.New("dossier: exposition evaluation has an unknown tier")
	}
	if err := state.ValidateIdentifier("exposition evaluation author call ID", e.AuthorCallID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("exposition evaluation problem ID", e.ProblemID); err != nil {
		return err
	}
	for _, item := range []struct {
		name   string
		digest string
	}{
		{name: "proof", digest: e.ProofSHA256},
		{name: "exposition", digest: e.ExpositionSHA256},
		{name: "canon snapshot", digest: e.CanonSnapshotSHA256},
		{name: "policy", digest: e.PolicySHA256},
	} {
		if !validSHA256(item.digest) {
			return errors.New("dossier: exposition evaluation requires a canonical " + item.name + " SHA-256")
		}
	}
	if err := e.Policy.Validate(); err != nil {
		return err
	}
	policyDigest, err := e.Policy.Digest()
	if err != nil {
		return err
	}
	if policyDigest != e.PolicySHA256 {
		return errors.New("dossier: exposition evaluation policy does not match its recorded digest")
	}
	if e.RecordedAt.IsZero() {
		return errors.New("dossier: exposition evaluation requires a recorded time")
	}
	if err := validateEvaluationModel("author", e.AuthorModelID, e.AuthorModelVersion, false); err != nil {
		return err
	}
	if err := validateEvaluationModel("round-trip reviewer", e.RoundTrip.ModelID, e.RoundTrip.ModelVersion, e.RoundTrip.Frozen); err != nil {
		return err
	}
	if err := validateEvaluationModel("canon reviewer", e.Canon.ModelID, e.Canon.ModelVersion, e.Canon.Frozen); err != nil {
		return err
	}
	if err := validateEvaluationModel("student", e.Student.ModelID, e.Student.ModelVersion, e.Student.Frozen); err != nil {
		return err
	}
	models := []string{e.AuthorModelID, e.RoundTrip.ModelID, e.Canon.ModelID, e.Student.ModelID}
	seenModels := make(map[string]struct{}, len(models))
	for _, modelID := range models {
		if _, exists := seenModels[modelID]; exists {
			return errors.New("dossier: exposition author, reviewers, and student must use distinct models")
		}
		seenModels[modelID] = struct{}{}
	}
	if !e.RoundTrip.Frozen || !unit(e.RoundTrip.Score) || len(e.RoundTrip.RequiredFacts) == 0 || len(e.RoundTrip.RecoveredFacts) == 0 {
		return errors.New("dossier: exposition round-trip review is incomplete")
	}
	if err := validateCanonMoveScores(e.Canon.Scores); err != nil {
		return err
	}
	if strings.TrimSpace(e.Leakage.Method) == "" || !unit(e.Leakage.NgramOverlap) || !unit(e.Leakage.StructureOverlap) {
		return errors.New("dossier: exposition leakage audit is incomplete")
	}
	if !e.Student.Frozen || e.Student.AttemptBudget <= 0 || !unit(e.Student.TargetBaseline) || !unit(e.Student.TargetWithExposition) || !unit(e.Student.TransferBaseline) || !unit(e.Student.TransferWithExposition) || !unit(e.Student.ProgressLift) {
		return errors.New("dossier: exposition student-lift record is invalid")
	}
	evidenceIDs := []string{e.RoundTrip.EvidenceID, e.Canon.EvidenceID, e.Leakage.EvidenceID, e.Student.EvidenceID}
	seenEvidenceIDs := make(map[string]struct{}, len(evidenceIDs))
	for _, evidenceID := range evidenceIDs {
		if err := state.ValidateIdentifier("exposition evaluation evidence ID", evidenceID); err != nil {
			return err
		}
		if _, exists := seenEvidenceIDs[evidenceID]; exists {
			return errors.New("dossier: exposition evaluation evidence IDs must be unique")
		}
		seenEvidenceIDs[evidenceID] = struct{}{}
	}
	if !finite(e.Score) || e.Score < 0 {
		return errors.New("dossier: exposition evaluation score must be finite and nonnegative")
	}
	if e.Accepted {
		if e.Refusal != "" {
			return errors.New("dossier: accepted exposition evaluation cannot have a refusal")
		}
		return nil
	}
	if e.EvidenceManifestPath != "" || e.EvidenceManifestSHA256 != "" {
		if e.EvidenceManifestPath == "" || !validSHA256(e.EvidenceManifestSHA256) ||
			strings.Contains(e.EvidenceManifestPath, "\\") || path.IsAbs(e.EvidenceManifestPath) ||
			path.Clean(e.EvidenceManifestPath) != e.EvidenceManifestPath || e.EvidenceManifestPath == "." ||
			e.EvidenceManifestPath == ".." || strings.HasPrefix(e.EvidenceManifestPath, "../") {
			return errors.New("dossier: M7 evidence manifest reference is incomplete or unsafe")
		}
	}
	if e.Refusal == "" || e.Score != 0 {
		return errors.New("dossier: refused exposition evaluation requires a reason and zero score")
	}
	return nil
}

func (e ExpositionEvaluation) validateDecision(exposition Exposition) error {
	if !e.Accepted {
		return nil
	}
	canonScore := averageCanonMoveScore(e.Canon.Scores)
	passed := e.RoundTrip.Score >= e.Policy.MinimumRoundTripScore &&
		canonScore >= e.Policy.MinimumCanonScore &&
		e.Leakage.Passed &&
		e.Leakage.NgramOverlap <= e.Policy.MaximumNgramOverlap &&
		e.Leakage.StructureOverlap <= e.Policy.MaximumStructureOverlap &&
		e.Student.TargetWithExposition > e.Student.TargetBaseline &&
		e.Student.TransferWithExposition > e.Student.TransferBaseline
	if !passed {
		return errors.New("dossier: accepted exposition evaluation did not meet its frozen policy")
	}
	wordCount := len(strings.Fields(exposition.Text))
	if wordCount == 0 {
		return errors.New("dossier: accepted exposition evaluation has no words to score")
	}
	targetLift := e.Student.TargetWithExposition - e.Student.TargetBaseline
	transferLift := e.Student.TransferWithExposition - e.Student.TransferBaseline
	combined := (1-e.Policy.TransferWeight)*targetLift + e.Policy.TransferWeight*transferLift + e.Policy.ProgressWeight*e.Student.ProgressLift
	expectedScore := combined / math.Pow(float64(wordCount), e.Policy.LengthExponent)
	if math.Abs(expectedScore-e.Score) > 1e-12 {
		return errors.New("dossier: exposition evaluation score does not match its stored review metrics")
	}
	return nil
}

func validateEvaluationModel(role, modelID, modelVersion string, frozen bool) error {
	if err := state.ValidateIdentifier("exposition "+role+" model ID", modelID); err != nil {
		return err
	}
	if strings.TrimSpace(modelVersion) == "" || strings.ContainsAny(modelVersion, "\x00\r\n") {
		return errors.New("dossier: exposition " + role + " model version is required")
	}
	if role != "author" && !frozen {
		return errors.New("dossier: exposition " + role + " model must be frozen")
	}
	return nil
}

func validateCanonMoveScores(scores []ExpositionMoveScore) error {
	if len(scores) != len(requiredExpositionCanonMoves) {
		return errors.New("dossier: canon review must score all six required exposition moves")
	}
	seen := make(map[string]struct{}, len(scores))
	for _, score := range scores {
		if !unit(score.Score) {
			return errors.New("dossier: exposition canon move score is invalid")
		}
		knownMove := false
		for _, required := range requiredExpositionCanonMoves {
			if score.Move == required {
				knownMove = true
				break
			}
		}
		if !knownMove {
			return errors.New("dossier: exposition canon review contains an unknown move")
		}
		if _, exists := seen[score.Move]; exists {
			return errors.New("dossier: exposition canon review contains a duplicate move")
		}
		seen[score.Move] = struct{}{}
	}
	for _, move := range requiredExpositionCanonMoves {
		if _, exists := seen[move]; !exists {
			return errors.New("dossier: exposition canon review is missing a required move")
		}
	}
	return nil
}

func averageCanonMoveScore(scores []ExpositionMoveScore) float64 {
	total := 0.0
	for _, score := range scores {
		total += score.Score
	}
	return total / float64(len(scores))
}

func finite(value float64) bool {
	return !math.IsNaN(value) && !math.IsInf(value, 0)
}

func unit(value float64) bool {
	return finite(value) && value >= 0 && value <= 1
}
