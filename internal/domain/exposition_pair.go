package domain

import (
	"errors"
	"fmt"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/state"
)

const ExpositionPairRecordSchemaVersion = "mathcase-exposition-pair-v1"

// ExpositionPairRoundTrip records one frozen reviewer's recovery score and
// evidence for one candidate exposition.
type ExpositionPairRoundTrip struct {
	Score          float64  `json:"score"`
	RequiredFacts  []string `json:"required_facts"`
	RecoveredFacts []string `json:"recovered_facts"`
	ModelID        string   `json:"model_id"`
	ModelVersion   string   `json:"model_version"`
	Frozen         bool     `json:"frozen"`
	EvidenceID     string   `json:"evidence_id"`
	EvidenceSHA256 string   `json:"evidence_sha256"`
	RunReceiptID   string   `json:"run_receipt_id"`
}

// ExpositionPairCanon records the full six-move canon rubric for one
// candidate. Scores remain separate from round-trip scores.
type ExpositionPairCanon struct {
	Scores         []ExpositionMoveScore `json:"scores"`
	ModelID        string                `json:"model_id"`
	ModelVersion   string                `json:"model_version"`
	Frozen         bool                  `json:"frozen"`
	EvidenceID     string                `json:"evidence_id"`
	EvidenceSHA256 string                `json:"evidence_sha256"`
	RunReceiptID   string                `json:"run_receipt_id"`
}

type ExpositionPairCandidate struct {
	CandidateID        string                  `json:"candidate_id"`
	ExpositionSHA256   string                  `json:"exposition_sha256"`
	AuthorRunReceiptID string                  `json:"author_run_receipt_id"`
	AuthorModelID      string                  `json:"author_model_id"`
	AuthorModelVersion string                  `json:"author_model_version"`
	RoundTrip          ExpositionPairRoundTrip `json:"round_trip"`
	Canon              ExpositionPairCanon     `json:"canon"`
}

// ExpositionPairRecord is a scored pair for one exact theorem, proof, and
// audience tier. It does not substitute for the complete M7/V3-V7 acceptance
// contract; it preserves the round-trip and canon signals for the flywheel.
type ExpositionPairRecord struct {
	SchemaVersion          string                  `json:"schema_version"`
	RecordID               string                  `json:"record_id"`
	ProblemID              string                  `json:"problem_id"`
	Tier                   AudienceTier            `json:"tier"`
	CatalogSnapshotSHA256  string                  `json:"catalog_snapshot_sha256"`
	ProofSHA256            string                  `json:"proof_sha256"`
	CanonSnapshotSHA256    string                  `json:"canon_snapshot_sha256"`
	EvaluationPolicySHA256 string                  `json:"evaluation_policy_sha256"`
	CandidateX             ExpositionPairCandidate `json:"candidate_x"`
	CandidateY             ExpositionPairCandidate `json:"candidate_y"`
	PreferredCandidate     string                  `json:"preferred_candidate"`
	DecisionMethod         string                  `json:"decision_method,omitempty"`
	DecisionEvidenceID     string                  `json:"decision_evidence_id,omitempty"`
	RecordedAtUTC          time.Time               `json:"recorded_at_utc"`
}

func (r ExpositionPairRecord) Validate() error {
	if r.SchemaVersion != ExpositionPairRecordSchemaVersion {
		return errors.New("exposition pair: unsupported schema version")
	}
	for _, item := range []struct{ name, value string }{
		{"record ID", r.RecordID},
		{"problem ID", r.ProblemID},
	} {
		if err := state.ValidateIdentifier("exposition pair "+item.name, item.value); err != nil {
			return err
		}
	}
	if !knownTier(r.Tier) {
		return errors.New("exposition pair: unknown audience tier")
	}
	for _, item := range []struct{ name, digest string }{
		{"catalog snapshot", r.CatalogSnapshotSHA256},
		{"proof", r.ProofSHA256},
		{"canon snapshot", r.CanonSnapshotSHA256},
		{"evaluation policy", r.EvaluationPolicySHA256},
	} {
		if !validSHA256(item.digest) {
			return fmt.Errorf("exposition pair: %s digest must be canonical SHA-256", item.name)
		}
	}
	if r.RecordedAtUTC.IsZero() {
		return errors.New("exposition pair: record time is required")
	}
	if r.CandidateX.CandidateID == r.CandidateY.CandidateID {
		return errors.New("exposition pair: candidate IDs must be distinct")
	}
	if err := r.CandidateX.validate(); err != nil {
		return fmt.Errorf("exposition pair candidate X: %w", err)
	}
	if err := r.CandidateY.validate(); err != nil {
		return fmt.Errorf("exposition pair candidate Y: %w", err)
	}
	if r.CandidateX.ExpositionSHA256 == r.CandidateY.ExpositionSHA256 {
		return errors.New("exposition pair: candidates must contain distinct exposition text")
	}
	if !sameModel(r.CandidateX.RoundTrip.ModelID, r.CandidateX.RoundTrip.ModelVersion, r.CandidateY.RoundTrip.ModelID, r.CandidateY.RoundTrip.ModelVersion) ||
		!sameModel(r.CandidateX.Canon.ModelID, r.CandidateX.Canon.ModelVersion, r.CandidateY.Canon.ModelID, r.CandidateY.Canon.ModelVersion) {
		return errors.New("exposition pair: candidates must use the same round-trip and canon reviewers")
	}
	if r.CandidateX.RoundTrip.ModelID == r.CandidateX.Canon.ModelID {
		return errors.New("exposition pair: round-trip and canon reviewers must be independent models")
	}
	if r.CandidateX.RoundTrip.EvidenceID == r.CandidateX.Canon.EvidenceID ||
		r.CandidateY.RoundTrip.EvidenceID == r.CandidateY.Canon.EvidenceID ||
		r.CandidateX.RoundTrip.EvidenceID == r.CandidateY.RoundTrip.EvidenceID ||
		r.CandidateX.Canon.EvidenceID == r.CandidateY.Canon.EvidenceID {
		return errors.New("exposition pair: evaluation evidence IDs must be distinct")
	}
	switch r.PreferredCandidate {
	case "UNRATED":
		if r.DecisionMethod != "" || r.DecisionEvidenceID != "" {
			return errors.New("exposition pair: unrated pair cannot claim a decision method or evidence")
		}
	case "X", "Y", "TIE":
		if strings.TrimSpace(r.DecisionMethod) == "" || strings.ContainsAny(r.DecisionMethod, "\x00\r\n") {
			return errors.New("exposition pair: rated preference requires a decision method")
		}
		if err := state.ValidateIdentifier("exposition pair decision evidence ID", r.DecisionEvidenceID); err != nil {
			return err
		}
	default:
		return errors.New("exposition pair: preferred candidate must be X, Y, TIE, or UNRATED")
	}
	return nil
}

func (c ExpositionPairCandidate) validate() error {
	if err := state.ValidateIdentifier("exposition candidate ID", c.CandidateID); err != nil {
		return err
	}
	if !validSHA256(c.ExpositionSHA256) {
		return errors.New("exposition text digest must be canonical SHA-256")
	}
	for _, item := range []struct{ name, value string }{
		{"author receipt ID", c.AuthorRunReceiptID},
		{"author model ID", c.AuthorModelID},
	} {
		if err := state.ValidateIdentifier("exposition candidate "+item.name, item.value); err != nil {
			return err
		}
	}
	if strings.TrimSpace(c.AuthorModelVersion) == "" || strings.ContainsAny(c.AuthorModelVersion, "\x00\r\n") {
		return errors.New("author model version must be non-empty single-line text")
	}
	if err := c.RoundTrip.validate(); err != nil {
		return fmt.Errorf("round-trip review: %w", err)
	}
	if err := c.Canon.validate(); err != nil {
		return fmt.Errorf("canon review: %w", err)
	}
	if c.AuthorModelID == c.RoundTrip.ModelID || c.AuthorModelID == c.Canon.ModelID {
		return errors.New("author and independent reviewers must use distinct models")
	}
	if c.AuthorRunReceiptID == c.RoundTrip.RunReceiptID || c.AuthorRunReceiptID == c.Canon.RunReceiptID || c.RoundTrip.RunReceiptID == c.Canon.RunReceiptID {
		return errors.New("author and evaluator runs must have distinct receipt IDs")
	}
	return nil
}

func (r ExpositionPairRoundTrip) validate() error {
	if !unit(r.Score) || len(r.RequiredFacts) == 0 || len(r.RecoveredFacts) == 0 || !r.Frozen {
		return errors.New("frozen round-trip score and non-empty required/recovered facts are required")
	}
	if err := validateEvaluationModel("round-trip reviewer", r.ModelID, r.ModelVersion, r.Frozen); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("exposition round-trip evidence ID", r.EvidenceID); err != nil {
		return err
	}
	if !validSHA256(r.EvidenceSHA256) {
		return errors.New("round-trip evidence digest must be canonical SHA-256")
	}
	if err := state.ValidateIdentifier("exposition round-trip run receipt ID", r.RunReceiptID); err != nil {
		return err
	}
	return validateFactList(r.RequiredFacts, r.RecoveredFacts)
}

func (c ExpositionPairCanon) validate() error {
	if !c.Frozen {
		return errors.New("frozen canon reviewer is required")
	}
	if err := validateEvaluationModel("canon reviewer", c.ModelID, c.ModelVersion, c.Frozen); err != nil {
		return err
	}
	if err := validateCanonMoveScores(c.Scores); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("exposition canon evidence ID", c.EvidenceID); err != nil {
		return err
	}
	if !validSHA256(c.EvidenceSHA256) {
		return errors.New("canon evidence digest must be canonical SHA-256")
	}
	return state.ValidateIdentifier("exposition canon run receipt ID", c.RunReceiptID)
}

func validateFactList(required, recovered []string) error {
	for name, values := range map[string][]string{"required fact": required, "recovered fact": recovered} {
		seen := make(map[string]struct{}, len(values))
		for _, value := range values {
			if strings.TrimSpace(value) == "" || strings.ContainsAny(value, "\x00\r\n") {
				return fmt.Errorf("%s must be non-empty single-line text", name)
			}
			if _, exists := seen[value]; exists {
				return fmt.Errorf("duplicate %s %q", name, value)
			}
			seen[value] = struct{}{}
		}
	}
	return nil
}

func sameModel(firstID, firstVersion, secondID, secondVersion string) bool {
	return firstID == secondID && firstVersion == secondVersion
}
