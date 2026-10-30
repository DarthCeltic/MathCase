package domain

import (
	"errors"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	M7EvidenceManifestSchemaV1  = "mathcase-m7-evidence-v1"
	M7RunReceiptSchemaV2        = "mathcase-m7-run-receipt-v2"
	M7ObservationOutputSchemaV1 = "mathcase-m7-observation-v1"
)

type M7RunRole string

const (
	M7RunAuthor         M7RunRole = "AUTHOR"
	M7RunRoundTrip      M7RunRole = "ROUND_TRIP_REVIEW"
	M7RunCanon          M7RunRole = "CANON_REVIEW"
	M7RunLeakage        M7RunRole = "LEAKAGE_AUDIT"
	M7RunStudentAttempt M7RunRole = "STUDENT_ATTEMPT"
)

// M7OutputContext pins every observation to the exact problem, proof,
// exposition, canon snapshot, policy, and audience tier being evaluated.
type M7OutputContext struct {
	ProblemID           string       `json:"problem_id"`
	Tier                AudienceTier `json:"tier"`
	ProofSHA256         string       `json:"proof_sha256"`
	ExpositionSHA256    string       `json:"exposition_sha256"`
	CanonSnapshotSHA256 string       `json:"canon_snapshot_sha256"`
	PolicySHA256        string       `json:"policy_sha256"`
	WordLimit           int          `json:"word_limit"`
	WordLimitsSHA256    string       `json:"word_limits_sha256"`
}

func (c M7OutputContext) Validate() error {
	if strings.TrimSpace(c.ProblemID) == "" || !knownTier(c.Tier) ||
		!validSHA256(c.ProofSHA256) || !validSHA256(c.ExpositionSHA256) ||
		!validSHA256(c.CanonSnapshotSHA256) || !validSHA256(c.PolicySHA256) ||
		c.WordLimit <= 0 || !validSHA256(c.WordLimitsSHA256) {
		return errors.New("m7 evidence: incomplete or invalid output context")
	}
	return nil
}

// M7BundleOutputContext pins a complete five-tier author output to the shared
// inputs and the caller-pinned frozen word-limit set.
type M7BundleOutputContext struct {
	ProblemID           string `json:"problem_id"`
	ProofSHA256         string `json:"proof_sha256"`
	CanonSnapshotSHA256 string `json:"canon_snapshot_sha256"`
	PolicySHA256        string `json:"policy_sha256"`
	WordLimitsSHA256    string `json:"word_limits_sha256"`
}

func (c M7BundleOutputContext) Validate() error {
	if strings.TrimSpace(c.ProblemID) == "" || !validSHA256(c.ProofSHA256) ||
		!validSHA256(c.CanonSnapshotSHA256) || !validSHA256(c.PolicySHA256) ||
		!validSHA256(c.WordLimitsSHA256) {
		return errors.New("m7 evidence: incomplete or invalid bundle output context")
	}
	return nil
}

// M7IdentityAttestation is a structural slot for a future issuer-signed
// identity envelope. MathCase currently has no authorized trust root or
// verifier for this envelope; its presence never authenticates the identity.
type M7IdentityAttestation struct {
	Issuer         string `json:"issuer"`
	KeyID          string `json:"key_id"`
	Algorithm      string `json:"algorithm"`
	PayloadSHA256  string `json:"payload_sha256"`
	Signature      string `json:"signature"`
	AttestationURI string `json:"attestation_uri,omitempty"`
}

// M7ModelIdentity records the identity claims exposed by a provider surface.
// Distinct ModelID strings are aliases, not proof of independent identities.
type M7ModelIdentity struct {
	Provider     string                 `json:"provider"`
	Surface      string                 `json:"surface"`
	ModelID      string                 `json:"model_id"`
	ModelVersion string                 `json:"model_version"`
	SnapshotID   string                 `json:"snapshot_id,omitempty"`
	PrincipalID  string                 `json:"principal_id,omitempty"`
	Attestation  *M7IdentityAttestation `json:"attestation,omitempty"`
}

// M7RunReceiptV2 binds one provider call and run's exact input/output bytes to its
// claimed model identity and to the evaluated M7 context.
type M7RunReceiptV2 struct {
	SchemaVersion  string          `json:"schema_version"`
	CallID         string          `json:"call_id"`
	RunID          string          `json:"run_id"`
	ProviderCallID string          `json:"provider_call_id,omitempty"`
	Role           M7RunRole       `json:"role"`
	Context        M7OutputContext `json:"context"`
	InputPath      string          `json:"input_path"`
	InputSHA256    string          `json:"input_sha256"`
	OutputSHA256   string          `json:"output_sha256"`
	Model          M7ModelIdentity `json:"model"`
}

func (r M7RunReceiptV2) Validate() error {
	if r.SchemaVersion != M7RunReceiptSchemaV2 {
		return errors.New("m7 evidence: invalid run receipt schema, call ID, or provider run ID")
	}
	if err := state.ValidateIdentifier("M7 call ID", r.CallID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("M7 provider run ID", r.RunID); err != nil {
		return err
	}
	if r.ProviderCallID != "" {
		if err := state.ValidateIdentifier("M7 provider call ID", r.ProviderCallID); err != nil {
			return err
		}
	}
	if !knownM7RunRole(r.Role) {
		return errors.New("m7 evidence: unsupported run role")
	}
	if err := r.Context.Validate(); err != nil {
		return err
	}
	if strings.TrimSpace(r.InputPath) == "" || !validSHA256(r.InputSHA256) || !validSHA256(r.OutputSHA256) {
		return errors.New("m7 evidence: run receipt requires an input path and canonical input/output SHA-256 values")
	}
	if strings.TrimSpace(r.Model.Provider) == "" || strings.TrimSpace(r.Model.Surface) == "" ||
		strings.TrimSpace(r.Model.ModelID) == "" || strings.TrimSpace(r.Model.ModelVersion) == "" {
		return errors.New("m7 evidence: run receipt requires provider, surface, model ID, and version claims")
	}
	if r.Model.Attestation != nil {
		a := r.Model.Attestation
		if strings.TrimSpace(a.Issuer) == "" || strings.TrimSpace(a.KeyID) == "" ||
			strings.TrimSpace(a.Algorithm) == "" || !validSHA256(a.PayloadSHA256) ||
			strings.TrimSpace(a.Signature) == "" {
			return errors.New("m7 evidence: malformed external identity-attestation envelope")
		}
	}
	return nil
}

type M7ArtifactBinding struct {
	ID               string    `json:"id"`
	Role             M7RunRole `json:"role"`
	RunReceiptPath   string    `json:"run_receipt_path"`
	RunReceiptSHA256 string    `json:"run_receipt_sha256"`
	OutputPath       string    `json:"output_path"`
	OutputSHA256     string    `json:"output_sha256"`
}

type M7EvidenceManifestV1 struct {
	SchemaVersion     string              `json:"schema_version"`
	Context           M7OutputContext     `json:"context"`
	Author            M7ArtifactBinding   `json:"author"`
	RoundTrip         M7ArtifactBinding   `json:"round_trip"`
	Canon             M7ArtifactBinding   `json:"canon"`
	Leakage           M7ArtifactBinding   `json:"leakage"`
	StudentEvidenceID string              `json:"student_evidence_id"`
	StudentTrials     []M7ArtifactBinding `json:"student_trials"`
}

type M7AuthorOutputV1 struct {
	SchemaVersion string                 `json:"schema_version"`
	Context       M7BundleOutputContext  `json:"context"`
	Tiers         []M7AuthorTierOutputV1 `json:"tiers"`
}

type M7AuthorTierOutputV1 struct {
	Tier          AudienceTier `json:"tier"`
	Text          string       `json:"text"`
	CoreInsightID string       `json:"core_insight_id"`
	CoreInsight   string       `json:"core_insight"`
}

type M7RoundTripOutputV1 struct {
	SchemaVersion  string          `json:"schema_version"`
	Context        M7OutputContext `json:"context"`
	Score          float64         `json:"score"`
	RequiredFacts  []string        `json:"required_facts"`
	RecoveredFacts []string        `json:"recovered_facts"`
}

type M7CanonOutputV1 struct {
	SchemaVersion string                `json:"schema_version"`
	Context       M7OutputContext       `json:"context"`
	Scores        []ExpositionMoveScore `json:"scores"`
}

type M7LeakageOutputV1 struct {
	SchemaVersion    string          `json:"schema_version"`
	Context          M7OutputContext `json:"context"`
	Method           string          `json:"method"`
	NgramOverlap     float64         `json:"ngram_overlap"`
	StructureOverlap float64         `json:"structure_overlap"`
	Passed           bool            `json:"passed"`
}

type M7StudentTaskClass string
type M7StudentArm string

const (
	M7StudentTarget   M7StudentTaskClass = "TARGET"
	M7StudentTransfer M7StudentTaskClass = "TRANSFER"
	M7ArmBaseline     M7StudentArm       = "BASELINE"
	M7ArmExposition   M7StudentArm       = "WITH_EXPOSITION"
)

// M7StudentAttemptOutputV1 represents one matched student attempt. Each trial
// must have exactly one BASELINE and one WITH_EXPOSITION record in the same
// task class; lift is computed from these observations, never copied from a
// summary field.
type M7StudentAttemptOutputV1 struct {
	SchemaVersion string             `json:"schema_version"`
	Context       M7OutputContext    `json:"context"`
	TrialID       string             `json:"trial_id"`
	TaskClass     M7StudentTaskClass `json:"task_class"`
	Arm           M7StudentArm       `json:"arm"`
	OutcomeScore  float64            `json:"outcome_score"`
	ProgressScore float64            `json:"progress_score"`
	AttemptCount  int                `json:"attempt_count"`
}

func knownM7RunRole(role M7RunRole) bool {
	switch role {
	case M7RunAuthor, M7RunRoundTrip, M7RunCanon, M7RunLeakage, M7RunStudentAttempt:
		return true
	default:
		return false
	}
}
