package domain

import (
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"strings"
	"time"
	"unicode"
	"unicode/utf8"

	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	// AgentRunReceiptSchemaVersion is retained for historical receipts written
	// before the flywheel label contract.
	AgentRunReceiptSchemaVersion  = "mathcase-agent-run-receipt-v1"
	AgentRunReceiptSchemaVersion2 = "mathcase-agent-run-receipt-v2"
)

// AgentRunTarget binds a quota-funded inference receipt to the pinned source
// item that was sent to the model.
type AgentRunTarget struct {
	ProblemID             string `json:"problem_id"`
	StatementID           string `json:"statement_id,omitempty"`
	CatalogSnapshotSHA256 string `json:"catalog_snapshot_sha256"`
	StatementSHA256       string `json:"statement_sha256,omitempty"`
}

// AgentRunInputClearance records item-level provider-input authorization for
// one statement included in the run.
type AgentRunInputClearance struct {
	StatementID    string `json:"statement_id"`
	EvidenceID     string `json:"evidence_id"`
	EvidenceSHA256 string `json:"evidence_sha256,omitempty"`
}

// AgentRunReceipt records one inference run's identity and outcome. Monetary
// API charges stay in the linked cost ledger; this receipt never implies an
// immutable model snapshot that the provider surface did not expose.
type AgentRunReceipt struct {
	SchemaVersion              string                   `json:"schema_version"`
	ReceiptID                  string                   `json:"receipt_id"`
	RecordedAtUTC              time.Time                `json:"recorded_at_utc"`
	RunID                      *string                  `json:"run_id"`
	Surface                    string                   `json:"surface"`
	Model                      string                   `json:"model"`
	ModelIdentityCapturedAtUTC *time.Time               `json:"model_identity_captured_at_utc,omitempty"`
	ModelSnapshotID            *string                  `json:"model_snapshot_id,omitempty"`
	Target                     AgentRunTarget           `json:"target"`
	Purpose                    string                   `json:"purpose"`
	Verdict                    string                   `json:"verdict"`
	InputClearance             []AgentRunInputClearance `json:"input_clearance"`
	LabelRecordIDs             []string                 `json:"label_record_ids,omitempty"`
	CostRecordID               string                   `json:"cost_record_id,omitempty"`
	SolverConfigurationSHA256  *string                  `json:"solver_configuration_sha256,omitempty"`
}

func (r AgentRunReceipt) Validate() error {
	if r.SchemaVersion != AgentRunReceiptSchemaVersion && r.SchemaVersion != AgentRunReceiptSchemaVersion2 {
		return errors.New("agent run receipt: unsupported schema version")
	}
	if err := state.ValidateIdentifier("agent run receipt ID", r.ReceiptID); err != nil {
		return err
	}
	if r.RecordedAtUTC.IsZero() {
		return errors.New("agent run receipt: recorded time is required")
	}
	if r.RunID != nil {
		if err := state.ValidateIdentifier("agent run ID", *r.RunID); err != nil {
			return err
		}
	}
	if r.ModelSnapshotID != nil && (strings.TrimSpace(*r.ModelSnapshotID) == "" || strings.ContainsAny(*r.ModelSnapshotID, "\x00\r\n")) {
		return errors.New("agent run receipt: model snapshot ID must be non-empty single-line text")
	}
	if r.SolverConfigurationSHA256 != nil && !validSHA256(*r.SolverConfigurationSHA256) {
		return errors.New("agent run receipt: solver configuration SHA-256 must be canonical SHA-256 hex")
	}
	if r.ModelIdentityCapturedAtUTC != nil {
		if r.ModelIdentityCapturedAtUTC.IsZero() {
			return errors.New("agent run receipt: model identity capture time cannot be zero")
		}
		if r.ModelIdentityCapturedAtUTC.After(r.RecordedAtUTC) {
			return errors.New("agent run receipt: model identity capture cannot occur after receipt recording")
		}
	}
	for label, value := range map[string]string{
		"surface": r.Surface,
		"model":   r.Model,
		"purpose": r.Purpose,
		"verdict": r.Verdict,
	} {
		if strings.TrimSpace(value) == "" || strings.ContainsAny(value, "\x00\r\n") {
			return errors.New("agent run receipt: " + label + " is required and must be single-line")
		}
	}
	if err := validateAgentRunModelIdentity(r.Model); err != nil {
		return err
	}
	if r.CostRecordID != "" {
		if err := state.ValidateIdentifier("agent run cost record ID", r.CostRecordID); err != nil {
			return err
		}
	}
	if err := state.ValidateIdentifier("agent run target problem ID", r.Target.ProblemID); err != nil {
		return err
	}
	if !validSHA256(r.Target.CatalogSnapshotSHA256) {
		return errors.New("agent run receipt: catalog snapshot digest must be canonical SHA-256 hex")
	}
	if r.Target.StatementSHA256 != "" && !validSHA256(r.Target.StatementSHA256) {
		return errors.New("agent run receipt: statement digest must be canonical SHA-256 hex")
	}
	if len(r.InputClearance) == 0 {
		return errors.New("agent run receipt: at least one item-level input clearance is required")
	}
	seenLabels := make(map[string]struct{}, len(r.LabelRecordIDs))
	for _, labelID := range r.LabelRecordIDs {
		if err := state.ValidateIdentifier("agent run label record ID", labelID); err != nil {
			return err
		}
		if _, duplicate := seenLabels[labelID]; duplicate {
			return errors.New("agent run receipt: duplicate label record ID")
		}
		seenLabels[labelID] = struct{}{}
	}
	if r.SchemaVersion == AgentRunReceiptSchemaVersion2 {
		if err := state.ValidateIdentifier("agent run target statement ID", r.Target.StatementID); err != nil {
			return err
		}
		if r.ModelIdentityCapturedAtUTC == nil {
			return errors.New("agent run receipt: v2 requires model identity captured at launch")
		}
		if len(r.LabelRecordIDs) == 0 {
			return errors.New("agent run receipt: v2 requires at least one flywheel label record ID")
		}
		if !validSHA256(r.Target.StatementSHA256) {
			return errors.New("agent run receipt: v2 requires the exact target statement SHA-256")
		}
	}
	seenStatements := make(map[string]struct{}, len(r.InputClearance))
	for _, clearance := range r.InputClearance {
		if err := state.ValidateIdentifier("agent run clearance statement ID", clearance.StatementID); err != nil {
			return err
		}
		if err := state.ValidateIdentifier("agent run clearance evidence ID", clearance.EvidenceID); err != nil {
			return err
		}
		if clearance.EvidenceSHA256 != "" && !validSHA256(clearance.EvidenceSHA256) {
			return errors.New("agent run receipt: input-clearance evidence digest must be canonical SHA-256 hex")
		}
		if r.SchemaVersion == AgentRunReceiptSchemaVersion2 && !validSHA256(clearance.EvidenceSHA256) {
			return errors.New("agent run receipt: v2 requires a SHA-256 pin for each input-clearance artifact")
		}
		if _, duplicate := seenStatements[clearance.StatementID]; duplicate {
			return errors.New("agent run receipt: duplicate input-clearance statement ID")
		}
		seenStatements[clearance.StatementID] = struct{}{}
	}
	if r.SchemaVersion == AgentRunReceiptSchemaVersion2 {
		if _, ok := seenStatements[r.Target.StatementID]; !ok {
			return errors.New("agent run receipt: v2 input clearance must include the exact target statement ID")
		}
	}
	if err := state.ValidateIdentifier("agent run author-call ID", r.AuthorCallID()); err != nil {
		return err
	}
	return nil
}

// validateAgentRunModelIdentity preserves the provider's exact model name.
// Hosted model IDs commonly contain path separators (for example,
// "org/model-name"), so they must not be forced through the route-safe
// identifier validator used for local evidence IDs.
func validateAgentRunModelIdentity(value string) error {
	if value == "" || len(value) > 128 || strings.TrimSpace(value) != value || !utf8.ValidString(value) {
		return errors.New("agent run receipt: model identity must be non-empty, bounded, and valid UTF-8")
	}
	for _, r := range value {
		if unicode.IsControl(r) {
			return errors.New("agent run receipt: model identity must not contain control characters")
		}
	}
	return nil
}

// ValidateForFutureRun applies the stricter contract that new agent runs must
// use. V1 remains readable for historical receipts but cannot authorize a
// future run because it does not bind launch-time model identity and labels.
func (r AgentRunReceipt) ValidateForFutureRun() error {
	if r.SchemaVersion != AgentRunReceiptSchemaVersion2 {
		return errors.New("agent run receipt: future runs require schema v2")
	}
	return r.Validate()
}

// ValidateInputClearanceArtifactBytes reopens the exact clearance artifacts
// pinned by a future-run receipt. It establishes byte identity only; callers
// must still validate each artifact's rights scope and issuer.
func (r AgentRunReceipt) ValidateInputClearanceArtifactBytes(artifacts map[string][]byte) error {
	if err := r.ValidateForFutureRun(); err != nil {
		return err
	}
	if len(artifacts) != len(r.InputClearance) {
		return errors.New("agent run receipt: clearance artifact set does not match the declared input clearances")
	}
	for _, clearance := range r.InputClearance {
		data, ok := artifacts[clearance.EvidenceID]
		if !ok {
			return fmt.Errorf("agent run receipt: input-clearance artifact %q is missing", clearance.EvidenceID)
		}
		digest := sha256.Sum256(data)
		if hex.EncodeToString(digest[:]) != clearance.EvidenceSHA256 {
			return fmt.Errorf("agent run receipt: input-clearance artifact %q does not match its SHA-256 pin", clearance.EvidenceID)
		}
	}
	return nil
}

// AuthorCallID deterministically links quota-funded M7 output to its M7
// evaluation receipts while keeping the run-receipt UUID as the source of
// identity.
func (r AgentRunReceipt) AuthorCallID() string {
	return "agent-run-" + r.ReceiptID
}
