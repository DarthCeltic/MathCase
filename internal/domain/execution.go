// MathCase project contact: DarthCeltic
// Email: 178664201+DarthCeltic@users.noreply.github.com
// Repository: https://github.com/DarthCeltic/MathCase

package domain

import (
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/state"
)

// SolverStage is the least expensive cascade tier that produced an attempt.
type SolverStage string

const (
	SolverStageS0 SolverStage = "S0"
	SolverStageS1 SolverStage = "S1"
	SolverStageS2 SolverStage = "S2"
	SolverStageS3 SolverStage = "S3"
)

// SolverOutcome is the recorded terminal truth for an attempt. A missing proof
// is never converted to a passing result.
type SolverOutcome string

const (
	SolverOutcomePass           SolverOutcome = "PASS"
	SolverOutcomeNoProgress     SolverOutcome = "NO_PROGRESS"
	SolverOutcomeRejected       SolverOutcome = "REJECTED"
	SolverOutcomeBlocked        SolverOutcome = "BLOCKED"
	SolverOutcomeError          SolverOutcome = "ERROR"
	SolverOutcomeCancelled      SolverOutcome = "CANCELLED"
	SolverOutcomeBudgetExceeded SolverOutcome = "BUDGET_EXCEEDED"
)

// SearchMetrics records the bounded local search that produced or failed to
// produce a proof candidate. It is diagnostic evidence, not a verification
// result.
type SearchMetrics struct {
	Engine         string `json:"engine"`
	NodesExpanded  int    `json:"nodes_expanded"`
	TacticAttempts int    `json:"tactic_attempts"`
	MaxDepth       int    `json:"max_depth"`
	StopReason     string `json:"stop_reason"`
}

// Validate checks the bounded-search counters and terminal reason before the
// metrics are persisted with a solver attempt.
func (m SearchMetrics) Validate() error {
	if err := state.ValidateIdentifier("search engine", m.Engine); err != nil {
		return err
	}
	if m.NodesExpanded < 0 || m.TacticAttempts < 0 || m.MaxDepth < 0 {
		return errors.New("attempt: search metrics cannot be negative")
	}
	switch m.StopReason {
	case "solved", "frontier_exhausted", "node_limit", "depth_limit", "branch_limit", "time_limit", "server_error":
		return nil
	default:
		return fmt.Errorf("attempt: unknown search stop reason %q", m.StopReason)
	}
}

// SolverAttempt records search, provider, and verification stages, including
// attempts that stop before Lean verifies a proof.
type SolverAttempt struct {
	ID                           string             `json:"id"`
	RunID                        string             `json:"run_id"`
	ProblemID                    string             `json:"problem_id"`
	CandidateID                  string             `json:"candidate_id,omitempty"`
	ParentAttemptID              string             `json:"parent_attempt_id,omitempty"`
	Stage                        SolverStage        `json:"stage"`
	ProviderID                   string             `json:"provider_id,omitempty"`
	ModelID                      string             `json:"model_id,omitempty"`
	ProviderCallID               string             `json:"provider_call_id,omitempty"`
	ProviderRequestSHA256        string             `json:"provider_request_sha256,omitempty"`
	ProviderResponseSHA256       string             `json:"provider_response_sha256,omitempty"`
	ProviderRequestPath          string             `json:"provider_request_path,omitempty"`
	ProviderResponsePath         string             `json:"provider_response_path,omitempty"`
	ProviderCallReceiptPath      string             `json:"provider_call_receipt_path,omitempty"`
	ProviderCallReceiptSHA256    string             `json:"provider_call_receipt_sha256,omitempty"`
	ProviderInputClearanceID     string             `json:"provider_input_clearance_id,omitempty"`
	ProviderInputClearanceSHA256 string             `json:"provider_input_clearance_sha256,omitempty"`
	ProviderInputClearancePath   string             `json:"provider_input_clearance_path,omitempty"`
	Toolchain                    string             `json:"toolchain"`
	MathlibRevision              string             `json:"mathlib_revision,omitempty"`
	CandidateSHA256              string             `json:"candidate_sha256,omitempty"`
	VerifiedProofSHA256          string             `json:"verified_proof_sha256,omitempty"`
	Outcome                      SolverOutcome      `json:"outcome"`
	FailureClass                 string             `json:"failure_class,omitempty"`
	FailureSummary               string             `json:"failure_summary,omitempty"`
	PromptTokens                 int                `json:"prompt_tokens"`
	CompletionTokens             int                `json:"completion_tokens"`
	CostKnown                    bool               `json:"cost_known"`
	CostMicros                   int64              `json:"cost_micros"`
	StartedAt                    time.Time          `json:"started_at"`
	FinishedAt                   time.Time          `json:"finished_at"`
	EvidenceIDs                  []string           `json:"evidence_ids,omitempty"`
	SearchMetrics                *SearchMetrics     `json:"search_metrics,omitempty"`
	LocalProcessTrace            *LocalProcessTrace `json:"local_process_trace,omitempty"`
}

// AttemptIDFor derives a stable ID from one run, problem, stage, candidate,
// and start instant. Retrying at a later time creates a distinct receipt.
func AttemptIDFor(runID, problemID string, stage SolverStage, candidateID string, startedAt time.Time) (string, error) {
	for name, value := range map[string]string{"run ID": runID, "problem ID": problemID} {
		if err := state.ValidateIdentifier(name, value); err != nil {
			return "", err
		}
	}
	if !knownSolverStage(stage) {
		return "", fmt.Errorf("attempt: unknown solver stage %q", stage)
	}
	if candidateID != "" {
		if err := state.ValidateIdentifier("candidate ID", candidateID); err != nil {
			return "", err
		}
	}
	if startedAt.IsZero() {
		return "", errors.New("attempt: start time is required")
	}
	identity := strings.Join([]string{runID, problemID, string(stage), candidateID, startedAt.UTC().Format(time.RFC3339Nano)}, "\x00")
	digest := sha256.Sum256([]byte(identity))
	return "attempt-" + hex.EncodeToString(digest[:]), nil
}

// Validate checks a receipt without requiring its parent or evidence to have
// arrived in the same transaction.
func (a SolverAttempt) Validate() error {
	for name, value := range map[string]string{
		"attempt ID": a.ID, "attempt run ID": a.RunID, "attempt problem ID": a.ProblemID,
	} {
		if err := state.ValidateIdentifier(name, value); err != nil {
			return err
		}
	}
	if a.CandidateID != "" {
		if err := state.ValidateIdentifier("attempt candidate ID", a.CandidateID); err != nil {
			return err
		}
	}
	if a.ParentAttemptID != "" {
		if err := state.ValidateIdentifier("parent attempt ID", a.ParentAttemptID); err != nil {
			return err
		}
		if a.ParentAttemptID == a.ID {
			return errors.New("attempt: receipt cannot be its own parent")
		}
	}
	if !knownSolverStage(a.Stage) {
		return fmt.Errorf("attempt: unknown solver stage %q", a.Stage)
	}
	if strings.TrimSpace(a.Toolchain) == "" {
		return errors.New("attempt: Lean toolchain is required")
	}
	if strings.ContainsAny(a.Toolchain+a.MathlibRevision+a.ModelID+a.ProviderID, "\x00\r\n") {
		return errors.New("attempt: environment identifiers contain control characters")
	}
	if a.ProviderCallID != "" {
		if a.ProviderID == "" {
			return errors.New("attempt: provider call ID requires a provider identity")
		}
		if err := state.ValidateIdentifier("attempt provider call ID", a.ProviderCallID); err != nil {
			return err
		}
	}
	if a.ProviderRequestSHA256 != "" && !validSHA256(a.ProviderRequestSHA256) {
		return errors.New("attempt: provider request digest must be canonical SHA-256 hex")
	}
	if a.ProviderResponseSHA256 != "" && !validSHA256(a.ProviderResponseSHA256) {
		return errors.New("attempt: provider response digest must be canonical SHA-256 hex")
	}
	providerEvidencePresent := a.ProviderRequestPath != "" || a.ProviderResponsePath != "" || a.ProviderCallReceiptPath != "" || a.ProviderCallReceiptSHA256 != ""
	if providerEvidencePresent {
		if a.ProviderID == "" || a.ProviderRequestPath == "" || a.ProviderResponsePath == "" ||
			a.ProviderCallReceiptPath == "" || !validSHA256(a.ProviderCallReceiptSHA256) ||
			!validSHA256(a.ProviderRequestSHA256) || !validSHA256(a.ProviderResponseSHA256) {
			return errors.New("attempt: persisted provider call evidence requires call identity, request/response paths and digests, and a typed receipt pin")
		}
		for name, path := range map[string]string{
			"provider request path":      a.ProviderRequestPath,
			"provider response path":     a.ProviderResponsePath,
			"provider call receipt path": a.ProviderCallReceiptPath,
		} {
			if strings.TrimSpace(path) != path || strings.ContainsAny(path, "\x00\r\n") {
				return fmt.Errorf("attempt: %s is invalid", name)
			}
		}
	} else if a.ProviderCallReceiptSHA256 != "" {
		return errors.New("attempt: provider call receipt digest requires persisted provider evidence paths")
	}
	if a.ProviderInputClearanceID != "" {
		if err := state.ValidateIdentifier("attempt provider-input clearance ID", a.ProviderInputClearanceID); err != nil {
			return err
		}
		if !validSHA256(a.ProviderInputClearanceSHA256) || strings.TrimSpace(a.ProviderInputClearancePath) == "" || strings.ContainsAny(a.ProviderInputClearancePath, "\x00\r\n") {
			return errors.New("attempt: provider-input clearance requires its exact digest and artifact path")
		}
	} else if a.ProviderInputClearanceSHA256 != "" || a.ProviderInputClearancePath != "" {
		return errors.New("attempt: provider-input clearance digest and path require a clearance ID")
	}
	if !knownSolverOutcome(a.Outcome) {
		return fmt.Errorf("attempt: unknown outcome %q", a.Outcome)
	}
	if a.StartedAt.IsZero() || a.FinishedAt.IsZero() || a.FinishedAt.Before(a.StartedAt) {
		return errors.New("attempt: invalid timestamps")
	}
	if a.PromptTokens < 0 || a.CompletionTokens < 0 || a.CostMicros < 0 {
		return errors.New("attempt: usage and cost cannot be negative")
	}
	if !a.CostKnown && a.CostMicros != 0 {
		return errors.New("attempt: unknown cost cannot have a numeric value")
	}
	if a.CostKnown && a.ProviderID == "" {
		return errors.New("attempt: recorded provider cost requires a provider ID")
	}
	if a.CandidateSHA256 != "" && !validSHA256(a.CandidateSHA256) {
		return errors.New("attempt: candidate digest must be canonical SHA-256 hex")
	}
	if a.SearchMetrics != nil {
		if err := a.SearchMetrics.Validate(); err != nil {
			return err
		}
	}
	if a.LocalProcessTrace != nil {
		if err := a.LocalProcessTrace.Validate(); err != nil {
			return err
		}
	}
	if a.VerifiedProofSHA256 != "" && !validSHA256(a.VerifiedProofSHA256) {
		return errors.New("attempt: verified proof digest must be canonical SHA-256 hex")
	}
	if a.Outcome == SolverOutcomePass {
		if a.VerifiedProofSHA256 == "" || len(a.EvidenceIDs) == 0 {
			return errors.New("attempt: passing result requires a verified proof digest and evidence")
		}
	} else if a.VerifiedProofSHA256 != "" {
		return errors.New("attempt: only a passing result may record a verified proof digest")
	}
	if a.Outcome != SolverOutcomePass && strings.TrimSpace(a.FailureClass) == "" {
		return errors.New("attempt: non-passing result requires a failure class")
	}
	seen := make(map[string]struct{}, len(a.EvidenceIDs))
	for _, id := range a.EvidenceIDs {
		if err := state.ValidateIdentifier("attempt evidence ID", id); err != nil {
			return err
		}
		if _, exists := seen[id]; exists {
			return fmt.Errorf("attempt: duplicate evidence ID %q", id)
		}
		seen[id] = struct{}{}
	}
	return nil
}

func validSHA256(value string) bool {
	if len(value) != sha256.Size*2 || strings.ToLower(value) != value {
		return false
	}
	decoded, err := hex.DecodeString(value)
	return err == nil && len(decoded) == sha256.Size
}

func knownSolverStage(stage SolverStage) bool {
	switch stage {
	case SolverStageS0, SolverStageS1, SolverStageS2, SolverStageS3:
		return true
	default:
		return false
	}
}

func knownSolverOutcome(outcome SolverOutcome) bool {
	switch outcome {
	case SolverOutcomePass, SolverOutcomeNoProgress, SolverOutcomeRejected, SolverOutcomeBlocked,
		SolverOutcomeError, SolverOutcomeCancelled, SolverOutcomeBudgetExceeded:
		return true
	default:
		return false
	}
}
