package domain

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/state"
)

const AttackabilityOutcomeSchemaVersion = "mathcase-attackability-outcome-v2"

type AttackabilityPredictionKind string

const (
	AttackabilityModelPrediction AttackabilityPredictionKind = "MODEL_PREDICTION"
	AttackabilityPriorEstimate   AttackabilityPredictionKind = "PRIOR_ESTIMATE"
	AttackabilityHumanRating     AttackabilityPredictionKind = "HUMAN_RATING"
)

type AttackabilityClass string

const (
	AttackabilityVeryLow  AttackabilityClass = "VERY_LOW"
	AttackabilityLow      AttackabilityClass = "LOW"
	AttackabilityMedium   AttackabilityClass = "MEDIUM"
	AttackabilityHigh     AttackabilityClass = "HIGH"
	AttackabilityVeryHigh AttackabilityClass = "VERY_HIGH"
	AttackabilityUnknown  AttackabilityClass = "UNKNOWN"
)

type AttackabilityOutcomeStatus string

const (
	AttackabilityNotAttempted          AttackabilityOutcomeStatus = "NOT_ATTEMPTED"
	AttackabilityInProgress            AttackabilityOutcomeStatus = "IN_PROGRESS"
	AttackabilityFormalizationPassed   AttackabilityOutcomeStatus = "FORMALIZATION_VERIFIED"
	AttackabilityProofPassed           AttackabilityOutcomeStatus = "PROOF_VERIFIED"
	AttackabilityFormalizationFailure  AttackabilityOutcomeStatus = "FORMALIZATION_FAILURE"
	AttackabilityInfrastructureFailure AttackabilityOutcomeStatus = "INFRASTRUCTURE_FAILURE"
	AttackabilityRejectedProof         AttackabilityOutcomeStatus = "REJECTED_PROOF"
	AttackabilityBudgetExhausted       AttackabilityOutcomeStatus = "BUDGET_EXHAUSTED"
	AttackabilityInconclusive          AttackabilityOutcomeStatus = "INCONCLUSIVE"
	AttackabilityCancelled             AttackabilityOutcomeStatus = "CANCELLED"
)

type EvaluationProng string

const (
	ProngImportance   EvaluationProng = "IMPORTANCE"
	ProngNovelty      EvaluationProng = "NOVELTY"
	ProngGenerality   EvaluationProng = "GENERALITY"
	ProngProofQuality EvaluationProng = "PROOF_QUALITY"
	ProngReachability EvaluationProng = "REACHABILITY"
)

// ProngJudgment keeps quality and reachability judgments as separate,
// source-attributed observations. Multiple sources may disagree; no scalar
// aggregate is stored here.
type ProngJudgment struct {
	Prong          EvaluationProng    `json:"prong"`
	Class          AttackabilityClass `json:"class"`
	Source         string             `json:"source"`
	SourceRecordID string             `json:"source_record_id"`
	EvidenceIDs    []string           `json:"evidence_ids"`
}

type AttackabilityAccountingMode string

const (
	AttackabilityNoRun        AttackabilityAccountingMode = "NO_RUN"
	AttackabilityAgentQuota   AttackabilityAccountingMode = "AGENT_QUOTA"
	AttackabilityProviderAPI  AttackabilityAccountingMode = "PROVIDER_API"
	AttackabilityLocalCompute AttackabilityAccountingMode = "LOCAL_COMPUTE"
	AttackabilityMixedCost    AttackabilityAccountingMode = "MIXED"
)

// AttackabilityTarget pins a prediction or outcome to one problem statement
// and the exact M0 snapshot that supplied it.
type AttackabilityTarget struct {
	ProblemID             string `json:"problem_id"`
	StatementID           string `json:"statement_id"`
	CatalogSnapshotSHA256 string `json:"catalog_snapshot_sha256"`
	StatementSHA256       string `json:"statement_sha256"`
}

// AttackabilityPrediction keeps model output, JSP priors, and owner ratings
// distinguishable. A JSP triage label is never an observed outcome.
type AttackabilityPrediction struct {
	Kind                       AttackabilityPredictionKind       `json:"kind"`
	Class                      AttackabilityClass                `json:"class,omitempty"`
	Source                     string                            `json:"source"`
	SourceRecordID             string                            `json:"source_record_id"`
	PredictedAtUTC             time.Time                         `json:"predicted_at_utc"`
	ModelID                    string                            `json:"model_id,omitempty"`
	ModelIdentityCapturedAtUTC *time.Time                        `json:"model_identity_captured_at_utc,omitempty"`
	ModelSnapshotID            *string                           `json:"model_snapshot_id,omitempty"`
	SuccessProbability         *float64                          `json:"success_probability,omitempty"`
	HorizonProofAttempts       int                               `json:"horizon_proof_attempts"`
	SolverConfiguration        *AttackabilitySolverConfiguration `json:"solver_configuration,omitempty"`
	SolverConfigurationSHA256  string                            `json:"solver_configuration_sha256,omitempty"`
	PriorRecordID              string                            `json:"prior_record_id,omitempty"`
}

// AttackabilitySolverConfiguration pins the solver whose success probability
// is forecast. The input, tool, retrieval, and assistance digests identify the
// exact allowed configuration without copying potentially sensitive prompts or
// datasets into the label.
type AttackabilitySolverConfiguration struct {
	SolverID               string  `json:"solver_id"`
	SolverRevision         string  `json:"solver_revision"`
	SolverModelID          string  `json:"solver_model_id"`
	SolverModelSnapshotID  *string `json:"solver_model_snapshot_id,omitempty"`
	Toolchain              string  `json:"toolchain"`
	InputBundleSHA256      string  `json:"input_bundle_sha256"`
	ToolsetSHA256          string  `json:"toolset_sha256"`
	TimeBudgetMillis       int64   `json:"time_budget_millis"`
	TokenBudget            int64   `json:"token_budget"`
	AttemptBudget          int     `json:"attempt_budget"`
	RetrievalPolicySHA256  string  `json:"retrieval_policy_sha256"`
	AssistancePolicySHA256 string  `json:"assistance_policy_sha256"`
}

// AttackabilityFeatureProfile records the problem features available at
// prediction time. Its vocabulary mirrors problem-taxonomy-record-v1.schema.json
// so forecasts reuse the project's existing taxonomy instead of inventing a
// second set of labels.
type AttackabilityFeatureProfile struct {
	DomainTags        []string `json:"domain_tags"`
	QuantifierShape   string   `json:"quantifier_shape"`
	HypothesisProfile []string `json:"hypothesis_profile"`
	ClaimType         string   `json:"claim_type"`
}

func (p AttackabilityFeatureProfile) Validate() error {
	if len(p.DomainTags) == 0 || !uniqueAllowedValues(p.DomainTags, map[string]struct{}{
		"LOGIC": {}, "SET_THEORY": {}, "ORDER": {}, "ALGEBRA": {}, "NUMBER_THEORY": {}, "COMBINATORICS": {},
		"TOPOLOGY": {}, "ANALYSIS": {}, "GEOMETRY": {}, "PROBABILITY": {}, "CATEGORY_THEORY": {},
		"COMPUTER_SCIENCE": {}, "OTHER": {}, "UNKNOWN": {},
	}) {
		return errors.New("attackability feature profile: domain tags must be non-empty, unique, and in the taxonomy vocabulary")
	}
	if !oneOf(p.QuantifierShape, "NONE", "FORALL", "EXISTS", "MIXED", "DEPENDENT", "BOUNDED", "UNKNOWN") {
		return errors.New("attackability feature profile: quantifier shape is outside the taxonomy vocabulary")
	}
	if len(p.HypothesisProfile) == 0 || !uniqueAllowedValues(p.HypothesisProfile, map[string]struct{}{
		"NO_HYPOTHESES": {}, "TYPECLASS": {}, "EQUALITY": {}, "ORDER": {}, "FINITE": {}, "NONEMPTY": {},
		"INJECTIVE": {}, "SURJECTIVE": {}, "ALGEBRAIC_LAW": {}, "BOUND": {}, "OTHER": {}, "UNKNOWN": {},
	}) {
		return errors.New("attackability feature profile: hypothesis profile must be non-empty, unique, and in the taxonomy vocabulary")
	}
	if !oneOf(p.ClaimType, "EQUALITY", "EXISTENCE", "INEQUALITY", "CLASSIFICATION", "IMPLICATION", "UNIVERSAL_PROPERTY", "STRUCTURAL_IDENTITY", "OTHER", "UNKNOWN") {
		return errors.New("attackability feature profile: claim type is outside the taxonomy vocabulary")
	}
	return nil
}

// Digest returns the digest of the fixed-field JSON representation used by
// the forecast-input evidence envelope.
func (p AttackabilityFeatureProfile) Digest() (string, error) {
	if err := p.Validate(); err != nil {
		return "", err
	}
	encoded, err := json.Marshal(p)
	if err != nil {
		return "", err
	}
	digest := sha256.Sum256(encoded)
	return hex.EncodeToString(digest[:]), nil
}

func uniqueAllowedValues(values []string, allowed map[string]struct{}) bool {
	seen := make(map[string]struct{}, len(values))
	for _, value := range values {
		if _, ok := allowed[value]; !ok {
			return false
		}
		if _, duplicate := seen[value]; duplicate {
			return false
		}
		seen[value] = struct{}{}
	}
	return true
}

func oneOf(value string, allowed ...string) bool {
	for _, candidate := range allowed {
		if value == candidate {
			return true
		}
	}
	return false
}

func (c AttackabilitySolverConfiguration) Validate() error {
	for _, field := range []struct{ name, value string }{
		{"solver ID", c.SolverID},
		{"solver revision", c.SolverRevision},
		{"solver model ID", c.SolverModelID},
		{"toolchain", c.Toolchain},
	} {
		if err := state.ValidateIdentifier("attackability solver configuration "+field.name, field.value); err != nil {
			return err
		}
	}
	if c.SolverModelSnapshotID != nil && (strings.TrimSpace(*c.SolverModelSnapshotID) == "" || strings.ContainsAny(*c.SolverModelSnapshotID, "\x00\r\n")) {
		return errors.New("attackability solver configuration: model snapshot ID must be non-empty single-line text")
	}
	if !validSHA256(c.InputBundleSHA256) || !validSHA256(c.ToolsetSHA256) || !validSHA256(c.RetrievalPolicySHA256) || !validSHA256(c.AssistancePolicySHA256) {
		return errors.New("attackability solver configuration: input, toolset, retrieval, and assistance policy SHA-256 values are required")
	}
	if c.TimeBudgetMillis <= 0 || c.TokenBudget <= 0 || c.AttemptBudget <= 0 {
		return errors.New("attackability solver configuration: time, token, and attempt budgets must be positive")
	}
	return nil
}

// Digest returns the SHA-256 of the canonical JSON encoding of this fixed-field
// configuration. Slices and maps are intentionally absent from the structure.
func (c AttackabilitySolverConfiguration) Digest() (string, error) {
	if err := c.Validate(); err != nil {
		return "", err
	}
	encoded, err := json.Marshal(c)
	if err != nil {
		return "", err
	}
	digest := sha256.Sum256(encoded)
	return hex.EncodeToString(digest[:]), nil
}

type AttackabilityActualOutcome struct {
	Status               AttackabilityOutcomeStatus `json:"status"`
	ResultArtifactSHA256 string                     `json:"result_artifact_sha256,omitempty"`
	EvidenceIDs          []string                   `json:"evidence_ids"`
	RecordedAtUTC        time.Time                  `json:"recorded_at_utc"`
}

type AttackabilityAttemptCounts struct {
	InferenceRuns           int        `json:"inference_runs"`
	FormalizationAttempts   int        `json:"formalization_attempts"`
	ProofAttempts           int        `json:"proof_attempts"`
	AttemptBudget           int        `json:"attempt_budget"`
	RunReceiptIDs           []string   `json:"run_receipt_ids"`
	SolverAttemptReceiptIDs []string   `json:"solver_attempt_receipt_ids"`
	FirstWorkAttemptAtUTC   *time.Time `json:"first_work_attempt_at_utc,omitempty"`
}

// AttackabilityRunCost distinguishes agent quota from billable API and local
// compute use. A quota record has no fabricated USD amount.
type AttackabilityRunCost struct {
	AccountingMode     AttackabilityAccountingMode `json:"accounting_mode"`
	ProviderAmountUSD  *float64                    `json:"provider_amount_usd,omitempty"`
	AgentQuotaCalls    int                         `json:"agent_quota_calls,omitempty"`
	LocalElapsedMillis int64                       `json:"local_elapsed_millis,omitempty"`
	ResourceReceiptIDs []string                    `json:"resource_receipt_ids"`
}

// AttackabilityOutcomeRecord stores one prior/prediction alongside the
// observed result, attempt counts, and auditable cost basis.
type AttackabilityOutcomeRecord struct {
	SchemaVersion      string                     `json:"schema_version"`
	RecordID           string                     `json:"record_id"`
	CampaignID         string                     `json:"campaign_id,omitempty"`
	RunReceiptID       string                     `json:"run_receipt_id,omitempty"`
	RecordRevision     int                        `json:"record_revision"`
	SupersedesRecordID string                     `json:"supersedes_record_id,omitempty"`
	Target             AttackabilityTarget        `json:"target"`
	Prediction         AttackabilityPrediction    `json:"prediction"`
	ProngJudgments     []ProngJudgment            `json:"prong_judgments,omitempty"`
	ActualOutcome      AttackabilityActualOutcome `json:"actual_outcome"`
	Attempts           AttackabilityAttemptCounts `json:"attempts"`
	Cost               AttackabilityRunCost       `json:"cost"`
	RecordedAtUTC      time.Time                  `json:"recorded_at_utc"`
}

func (r AttackabilityOutcomeRecord) Validate() error {
	if r.SchemaVersion != AttackabilityOutcomeSchemaVersion {
		return errors.New("attackability outcome: unsupported schema version")
	}
	for _, item := range []struct{ name, value string }{
		{"record ID", r.RecordID},
		{"target problem ID", r.Target.ProblemID},
		{"target statement ID", r.Target.StatementID},
	} {
		if err := state.ValidateIdentifier("attackability "+item.name, item.value); err != nil {
			return err
		}
	}
	if r.RecordRevision <= 0 {
		return errors.New("attackability outcome: record revision must be positive")
	}
	if r.RecordRevision == 1 && r.SupersedesRecordID != "" {
		return errors.New("attackability outcome: first record revision cannot supersede another record")
	}
	if r.RecordRevision > 1 {
		if err := state.ValidateIdentifier("attackability superseded record ID", r.SupersedesRecordID); err != nil {
			return err
		}
		if r.SupersedesRecordID == r.RecordID {
			return errors.New("attackability outcome: record cannot supersede itself")
		}
	}
	if r.CampaignID != "" {
		if err := state.ValidateIdentifier("attackability campaign ID", r.CampaignID); err != nil {
			return err
		}
	}
	if !validSHA256(r.Target.CatalogSnapshotSHA256) || !validSHA256(r.Target.StatementSHA256) {
		return errors.New("attackability outcome: target requires canonical catalog and statement SHA-256 digests")
	}
	if r.RecordedAtUTC.IsZero() || r.ActualOutcome.RecordedAtUTC.IsZero() || r.ActualOutcome.RecordedAtUTC.After(r.RecordedAtUTC) {
		return errors.New("attackability outcome: actual outcome and record timestamps are invalid")
	}
	if err := r.Prediction.validate(); err != nil {
		return fmt.Errorf("attackability outcome: prediction: %w", err)
	}
	if r.Prediction.ModelIdentityCapturedAtUTC != nil && r.Prediction.ModelIdentityCapturedAtUTC.After(r.RecordedAtUTC) {
		return errors.New("attackability outcome: model identity capture cannot occur after the label record")
	}
	if r.Prediction.PredictedAtUTC.IsZero() || r.Prediction.PredictedAtUTC.After(r.RecordedAtUTC) {
		return errors.New("attackability outcome: prediction timestamp is required and cannot follow the label record")
	}
	if r.ActualOutcome.Status != AttackabilityNotAttempted && !r.Prediction.PredictedAtUTC.Before(r.ActualOutcome.RecordedAtUTC) {
		return errors.New("attackability outcome: observed work outcome must be recorded after the prediction")
	}
	if r.Prediction.ModelIdentityCapturedAtUTC != nil && r.Prediction.PredictedAtUTC.Before(*r.Prediction.ModelIdentityCapturedAtUTC) {
		return errors.New("attackability outcome: prediction cannot precede launch-time model identity capture")
	}
	if r.Prediction.Kind == AttackabilityModelPrediction {
		if r.Prediction.SuccessProbability == nil {
			return errors.New("attackability outcome: model forecast must state a probability for the pinned solver configuration")
		}
		if r.Prediction.SolverConfiguration == nil {
			return errors.New("attackability outcome: model forecast must pin its solver configuration")
		}
		configDigest, err := r.Prediction.SolverConfiguration.Digest()
		if err != nil {
			return fmt.Errorf("attackability outcome: solver configuration: %w", err)
		}
		if r.Prediction.SolverConfigurationSHA256 != configDigest {
			return errors.New("attackability outcome: solver configuration SHA-256 does not match the pinned fields")
		}
		if r.Prediction.HorizonProofAttempts != r.Prediction.SolverConfiguration.AttemptBudget {
			return errors.New("attackability outcome: forecast horizon must equal the pinned solver attempt budget")
		}
		if r.Attempts.AttemptBudget != r.Prediction.SolverConfiguration.AttemptBudget {
			return errors.New("attackability outcome: observed attempt budget must equal the predicted solver configuration budget")
		}
	} else if r.Prediction.SolverConfiguration != nil || r.Prediction.SolverConfigurationSHA256 != "" || r.Prediction.SuccessProbability != nil {
		return errors.New("attackability outcome: prior and human labels cannot claim a solver-specific model probability")
	}
	if !knownAttackabilityOutcome(r.ActualOutcome.Status) {
		return errors.New("attackability outcome: unknown actual-outcome status")
	}
	if r.ActualOutcome.ResultArtifactSHA256 != "" && !validSHA256(r.ActualOutcome.ResultArtifactSHA256) {
		return errors.New("attackability outcome: result artifact digest must be canonical SHA-256")
	}
	if err := validateIdentifierList("attackability outcome evidence ID", r.ActualOutcome.EvidenceIDs, false); err != nil {
		return err
	}
	if err := r.validateAttemptsAndCost(); err != nil {
		return err
	}
	if err := r.validatePredictionChronology(); err != nil {
		return err
	}
	if err := validateProngJudgments(r.ProngJudgments); err != nil {
		return err
	}
	switch r.ActualOutcome.Status {
	case AttackabilityNotAttempted:
		if r.Attempts.FormalizationAttempts != 0 || r.Attempts.ProofAttempts != 0 || r.ActualOutcome.ResultArtifactSHA256 != "" || len(r.ActualOutcome.EvidenceIDs) != 0 {
			return errors.New("attackability outcome: NOT_ATTEMPTED cannot contain work attempts or result evidence")
		}
	case AttackabilityFormalizationPassed, AttackabilityProofPassed:
		if r.ActualOutcome.ResultArtifactSHA256 == "" || len(r.ActualOutcome.EvidenceIDs) == 0 {
			return errors.New("attackability outcome: verified success requires a result hash and evidence IDs")
		}
		if r.ActualOutcome.Status == AttackabilityProofPassed && r.Attempts.ProofAttempts == 0 {
			return errors.New("attackability outcome: verified proof requires at least one proof attempt")
		}
		if r.ActualOutcome.Status == AttackabilityFormalizationPassed && r.Attempts.FormalizationAttempts == 0 {
			return errors.New("attackability outcome: verified formalization requires at least one formalization attempt")
		}
	case AttackabilityFormalizationFailure:
		if r.Attempts.FormalizationAttempts == 0 || r.Attempts.ProofAttempts != 0 || len(r.ActualOutcome.EvidenceIDs) == 0 {
			return errors.New("attackability outcome: FORMALIZATION_FAILURE requires a formalization attempt, no proof attempt, and evidence IDs")
		}
	case AttackabilityInfrastructureFailure:
		if len(r.ActualOutcome.EvidenceIDs) == 0 {
			return errors.New("attackability outcome: INFRASTRUCTURE_FAILURE requires diagnostic evidence IDs")
		}
	case AttackabilityRejectedProof:
		if r.Attempts.ProofAttempts == 0 || r.ActualOutcome.ResultArtifactSHA256 == "" || len(r.ActualOutcome.EvidenceIDs) == 0 {
			return errors.New("attackability outcome: REJECTED_PROOF requires a proof attempt, rejected artifact hash, and evidence IDs")
		}
	case AttackabilityBudgetExhausted:
		attempted := r.Attempts.FormalizationAttempts + r.Attempts.ProofAttempts
		if r.Attempts.AttemptBudget <= 0 || attempted != r.Attempts.AttemptBudget || len(r.ActualOutcome.EvidenceIDs) == 0 {
			return errors.New("attackability outcome: BUDGET_EXHAUSTED requires exhausted attempt budget and evidence IDs")
		}
	case AttackabilityInProgress:
		if r.Attempts.FormalizationAttempts+r.Attempts.ProofAttempts == 0 || len(r.ActualOutcome.EvidenceIDs) == 0 {
			return errors.New("attackability outcome: IN_PROGRESS requires a formalization or proof attempt and evidence IDs")
		}
	case AttackabilityInconclusive:
		if r.Attempts.FormalizationAttempts+r.Attempts.ProofAttempts == 0 || len(r.ActualOutcome.EvidenceIDs) == 0 {
			return errors.New("attackability outcome: INCONCLUSIVE requires an attempted run and evidence IDs")
		}
	case AttackabilityCancelled:
		if len(r.ActualOutcome.EvidenceIDs) == 0 {
			return errors.New("attackability outcome: CANCELLED requires cancellation evidence")
		}
	}
	if r.Prediction.Kind != AttackabilityModelPrediction {
		if r.RunReceiptID != "" || r.Attempts.InferenceRuns != 0 || r.Attempts.FormalizationAttempts != 0 || r.Attempts.ProofAttempts != 0 || len(r.Attempts.RunReceiptIDs) != 0 || r.Cost.AccountingMode != AttackabilityNoRun {
			return errors.New("attackability outcome: prior labels cannot claim a run, attempts, or run cost")
		}
		if r.ActualOutcome.Status != AttackabilityNotAttempted {
			return errors.New("attackability outcome: prior labels must keep actual outcome NOT_ATTEMPTED")
		}
	} else {
		if err := state.ValidateIdentifier("attackability run receipt ID", r.RunReceiptID); err != nil {
			return err
		}
		if r.Attempts.InferenceRuns != 1 || len(r.Attempts.RunReceiptIDs) != 1 || r.Attempts.RunReceiptIDs[0] != r.RunReceiptID {
			return errors.New("attackability outcome: each model prediction must link exactly one inference run receipt")
		}
		if r.Cost.AccountingMode == AttackabilityNoRun {
			return errors.New("attackability outcome: model run cannot use NO_RUN accounting")
		}
	}
	return nil
}

// ValidateAgainstAgentRunReceipt reconciles a model-prediction label to the
// exact future-run receipt that authorized and recorded its inference. A
// structurally valid label alone is not execution evidence.
func (r AttackabilityOutcomeRecord) ValidateAgainstAgentRunReceipt(receipt AgentRunReceipt) error {
	if err := r.Validate(); err != nil {
		return err
	}
	if err := receipt.ValidateForFutureRun(); err != nil {
		return fmt.Errorf("attackability outcome: future agent run receipt: %w", err)
	}
	if r.Prediction.Kind != AttackabilityModelPrediction {
		return errors.New("attackability outcome: only a model-prediction label can reconcile to an agent run")
	}
	if r.RunReceiptID != receipt.ReceiptID || r.Prediction.SourceRecordID != receipt.ReceiptID {
		return errors.New("attackability outcome: label run receipt identity does not match the agent run receipt")
	}
	if !containsString(receipt.LabelRecordIDs, r.RecordID) {
		return errors.New("attackability outcome: agent run receipt does not predeclare this label record ID")
	}
	if r.Target.ProblemID != receipt.Target.ProblemID ||
		r.Target.StatementID != receipt.Target.StatementID ||
		r.Target.CatalogSnapshotSHA256 != receipt.Target.CatalogSnapshotSHA256 ||
		r.Target.StatementSHA256 != receipt.Target.StatementSHA256 {
		return errors.New("attackability outcome: label target does not match the pinned agent run target")
	}
	if r.Prediction.ModelID != receipt.Model {
		return errors.New("attackability outcome: model ID does not match the launch receipt")
	}
	if r.Prediction.ModelIdentityCapturedAtUTC == nil || receipt.ModelIdentityCapturedAtUTC == nil ||
		!r.Prediction.ModelIdentityCapturedAtUTC.Equal(*receipt.ModelIdentityCapturedAtUTC) {
		return errors.New("attackability outcome: model identity capture time does not match the launch receipt")
	}
	if !sameOptionalString(r.Prediction.ModelSnapshotID, receipt.ModelSnapshotID) {
		return errors.New("attackability outcome: model snapshot ID does not match the launch receipt")
	}
	if receipt.SolverConfigurationSHA256 == nil || *receipt.SolverConfigurationSHA256 != r.Prediction.SolverConfigurationSHA256 {
		return errors.New("attackability outcome: solver configuration digest does not match the forecast run receipt")
	}
	return nil
}

func sameOptionalString(left, right *string) bool {
	if left == nil || right == nil {
		return left == nil && right == nil
	}
	return *left == *right
}

func (p AttackabilityPrediction) validate() error {
	if !knownAttackabilityPredictionKind(p.Kind) {
		return errors.New("kind is unknown")
	}
	if p.Kind == AttackabilityModelPrediction {
		if p.Class != "" {
			return errors.New("model forecast must use a numeric probability, not an uncalibrated attackability class")
		}
	} else if !knownAttackabilityClass(p.Class) {
		return errors.New("prior and human prediction require a known attackability class")
	}
	if strings.TrimSpace(p.Source) == "" || strings.ContainsAny(p.Source, "\x00\r\n") {
		return errors.New("source is required and must be single-line")
	}
	if err := state.ValidateIdentifier("attackability prediction source record ID", p.SourceRecordID); err != nil {
		return err
	}
	if p.SuccessProbability != nil && !unit(*p.SuccessProbability) {
		return errors.New("success probability must be between zero and one")
	}
	if p.SolverConfigurationSHA256 != "" && !validSHA256(p.SolverConfigurationSHA256) {
		return errors.New("solver configuration SHA-256 must be canonical SHA-256 hex")
	}
	if p.HorizonProofAttempts < 0 {
		return errors.New("prediction horizon cannot be negative")
	}
	if p.PriorRecordID != "" {
		if err := state.ValidateIdentifier("attackability prior record ID", p.PriorRecordID); err != nil {
			return err
		}
	}
	if p.ModelSnapshotID != nil && (strings.TrimSpace(*p.ModelSnapshotID) == "" || strings.ContainsAny(*p.ModelSnapshotID, "\x00\r\n")) {
		return errors.New("model snapshot ID must be non-empty single-line text")
	}
	switch p.Kind {
	case AttackabilityModelPrediction:
		if err := state.ValidateIdentifier("attackability prediction model ID", p.ModelID); err != nil {
			return err
		}
		if p.ModelIdentityCapturedAtUTC == nil || p.ModelIdentityCapturedAtUTC.IsZero() {
			return errors.New("model prediction requires model identity captured at launch")
		}
		if p.Source != "MODEL_RUN" {
			return errors.New("model prediction source must be MODEL_RUN")
		}
	case AttackabilityPriorEstimate, AttackabilityHumanRating:
		if p.ModelID != "" || p.ModelIdentityCapturedAtUTC != nil || p.ModelSnapshotID != nil {
			return errors.New("prior and human labels cannot claim model identity")
		}
	default:
		return errors.New("kind is unknown")
	}
	if p.Kind == AttackabilityPriorEstimate && p.Source == "MODEL_RUN" {
		return errors.New("model-run assessment cannot be marked as a prior estimate")
	}
	if p.Source == "JSP_294_TRIAGE" && p.Kind != AttackabilityPriorEstimate {
		return errors.New("JSP 294 triage rows must be marked PRIOR_ESTIMATE")
	}
	return nil
}

func (r AttackabilityOutcomeRecord) validatePredictionChronology() error {
	workAttempts := r.Attempts.FormalizationAttempts + r.Attempts.ProofAttempts
	if workAttempts > r.Attempts.AttemptBudget {
		return errors.New("attackability outcome: observed work attempts exceed the declared attempt budget")
	}
	if len(r.Attempts.SolverAttemptReceiptIDs) != workAttempts {
		return errors.New("attackability outcome: every formalization or proof attempt requires its own solver receipt")
	}
	if err := validateIdentifierList("attackability solver-attempt receipt ID", r.Attempts.SolverAttemptReceiptIDs, false); err != nil {
		return err
	}
	if workAttempts == 0 {
		if r.Attempts.FirstWorkAttemptAtUTC != nil {
			return errors.New("attackability outcome: first work-attempt time cannot exist without a work attempt")
		}
		return nil
	}
	if r.Attempts.FirstWorkAttemptAtUTC == nil || r.Attempts.FirstWorkAttemptAtUTC.IsZero() {
		return errors.New("attackability outcome: work attempts require their first-attempt timestamp")
	}
	if !r.Prediction.PredictedAtUTC.Before(*r.Attempts.FirstWorkAttemptAtUTC) {
		return errors.New("attackability outcome: prediction must be recorded before the first work attempt")
	}
	if r.Attempts.FirstWorkAttemptAtUTC.After(r.RecordedAtUTC) || r.Attempts.FirstWorkAttemptAtUTC.After(r.ActualOutcome.RecordedAtUTC) {
		return errors.New("attackability outcome: first work-attempt timestamp cannot follow its recorded outcome")
	}
	return nil
}

func validateProngJudgments(judgments []ProngJudgment) error {
	seen := make(map[string]struct{}, len(judgments))
	for _, judgment := range judgments {
		if !knownEvaluationProng(judgment.Prong) || !knownAttackabilityClass(judgment.Class) {
			return errors.New("attackability outcome: prong judgment has an unknown prong or class")
		}
		if strings.TrimSpace(judgment.Source) == "" || strings.ContainsAny(judgment.Source, "\x00\r\n") {
			return errors.New("attackability outcome: prong judgment source is required and must be single-line")
		}
		if err := state.ValidateIdentifier("prong judgment source record ID", judgment.SourceRecordID); err != nil {
			return err
		}
		if err := validateIdentifierList("prong judgment evidence ID", judgment.EvidenceIDs, true); err != nil {
			return err
		}
		key := string(judgment.Prong) + "\x00" + judgment.SourceRecordID
		if _, duplicate := seen[key]; duplicate {
			return errors.New("attackability outcome: duplicate prong judgment from the same source record")
		}
		seen[key] = struct{}{}
	}
	return nil
}

func (r AttackabilityOutcomeRecord) validateAttemptsAndCost() error {
	a := r.Attempts
	if a.InferenceRuns < 0 || a.FormalizationAttempts < 0 || a.ProofAttempts < 0 || a.AttemptBudget < 0 {
		return errors.New("attackability outcome: attempt counts and budget cannot be negative")
	}
	if err := validateIdentifierList("attackability run receipt ID", a.RunReceiptIDs, false); err != nil {
		return err
	}
	if err := validateIdentifierList("attackability solver-attempt receipt ID", a.SolverAttemptReceiptIDs, false); err != nil {
		return err
	}
	c := r.Cost
	if err := validateIdentifierList("attackability resource receipt ID", c.ResourceReceiptIDs, false); err != nil {
		return err
	}
	if c.ProviderAmountUSD != nil && (!finite(*c.ProviderAmountUSD) || *c.ProviderAmountUSD < 0) {
		return errors.New("attackability outcome: provider amount must be finite and nonnegative")
	}
	if c.AgentQuotaCalls < 0 || c.LocalElapsedMillis < 0 {
		return errors.New("attackability outcome: resource counts cannot be negative")
	}
	switch c.AccountingMode {
	case AttackabilityNoRun:
		if c.ProviderAmountUSD != nil || c.AgentQuotaCalls != 0 || c.LocalElapsedMillis != 0 || len(c.ResourceReceiptIDs) != 0 {
			return errors.New("attackability outcome: NO_RUN cost cannot contain resource use")
		}
	case AttackabilityAgentQuota:
		if c.ProviderAmountUSD != nil || c.AgentQuotaCalls <= 0 || c.LocalElapsedMillis != 0 || len(c.ResourceReceiptIDs) == 0 ||
			c.AgentQuotaCalls != len(c.ResourceReceiptIDs) || !containsString(c.ResourceReceiptIDs, r.RunReceiptID) {
			return errors.New("attackability outcome: AGENT_QUOTA requires one linked receipt per quota call and no invented USD charge")
		}
	case AttackabilityProviderAPI:
		if c.ProviderAmountUSD == nil || c.AgentQuotaCalls != 0 || c.LocalElapsedMillis != 0 || len(c.ResourceReceiptIDs) == 0 {
			return errors.New("attackability outcome: PROVIDER_API requires a reconciled amount and receipt ID")
		}
	case AttackabilityLocalCompute:
		if c.LocalElapsedMillis <= 0 || c.ProviderAmountUSD != nil || c.AgentQuotaCalls != 0 || len(c.ResourceReceiptIDs) == 0 {
			return errors.New("attackability outcome: LOCAL_COMPUTE requires elapsed time and an execution receipt")
		}
	case AttackabilityMixedCost:
		if c.ProviderAmountUSD == nil && c.AgentQuotaCalls == 0 && c.LocalElapsedMillis == 0 {
			return errors.New("attackability outcome: MIXED requires at least one recorded resource cost")
		}
		if len(c.ResourceReceiptIDs) == 0 {
			return errors.New("attackability outcome: MIXED requires resource receipt IDs")
		}
	default:
		return errors.New("attackability outcome: unknown accounting mode")
	}
	return nil
}

func knownAttackabilityOutcome(status AttackabilityOutcomeStatus) bool {
	switch status {
	case AttackabilityNotAttempted, AttackabilityInProgress, AttackabilityFormalizationPassed,
		AttackabilityProofPassed, AttackabilityFormalizationFailure, AttackabilityInfrastructureFailure,
		AttackabilityRejectedProof, AttackabilityBudgetExhausted, AttackabilityInconclusive, AttackabilityCancelled:
		return true
	default:
		return false
	}
}

func knownEvaluationProng(prong EvaluationProng) bool {
	switch prong {
	case ProngImportance, ProngNovelty, ProngGenerality, ProngProofQuality, ProngReachability:
		return true
	default:
		return false
	}
}

func knownAttackabilityPredictionKind(kind AttackabilityPredictionKind) bool {
	return kind == AttackabilityModelPrediction || kind == AttackabilityPriorEstimate || kind == AttackabilityHumanRating
}

func knownAttackabilityClass(class AttackabilityClass) bool {
	switch class {
	case AttackabilityVeryLow, AttackabilityLow, AttackabilityMedium, AttackabilityHigh, AttackabilityVeryHigh, AttackabilityUnknown:
		return true
	default:
		return false
	}
}

func validateIdentifierList(name string, values []string, requireOne bool) error {
	if requireOne && len(values) == 0 {
		return fmt.Errorf("%s list cannot be empty", name)
	}
	seen := make(map[string]struct{}, len(values))
	for _, value := range values {
		if err := state.ValidateIdentifier(name, value); err != nil {
			return err
		}
		if _, ok := seen[value]; ok {
			return fmt.Errorf("duplicate %s %q", name, value)
		}
		seen[value] = struct{}{}
	}
	return nil
}
