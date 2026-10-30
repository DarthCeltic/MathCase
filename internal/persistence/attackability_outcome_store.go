package persistence

import (
	"bytes"
	"context"
	jsonv2 "encoding/json/v2"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"runtime"
	"strconv"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/formalizer"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

const (
	attackabilityOutcomeDirectory     = "attackability-outcomes"
	attackabilityOutcomeSchema        = "mathcase-attackability-outcome-evidence-v1"
	attackabilityOutcomeSchemaV2      = "mathcase-attackability-outcome-evidence-v2"
	attackabilityOutcomeSchemaV3      = "mathcase-attackability-outcome-evidence-v3"
	attackabilityOutcomeSchemaV4      = "mathcase-attackability-outcome-evidence-v4"
	attackabilityStopEvidenceSchema   = "mathcase-attackability-stop-evidence-v1"
	attackabilityStopKind             = "EXPLICIT_EARLY_STOP_AFTER_REJECTED_PROOFS"
	attackabilityOutcomeLinkSchema    = "mathcase-attackability-outcome-child-link-v1"
	attackabilityOutcomeRevisionLink  = "mathcase-attackability-outcome-revision-link-v1"
	attackabilityOutcomeMaxBytes      = 32 << 20
	attackabilityOutcomeEvidenceClass = "LOCAL_TYPED_CHAIN_NOT_AUTHENTICATED"
)

// AttackabilityOutcomeArtifact is an evidence-bound update to one immutable
// pre-attempt forecast. EvidenceClass explicitly limits this artifact to
// local typed-linkage evidence; it does not authenticate a provider or process
// run. Copied receipt fields are indexes only; Get reopens the formalizer and
// solver receipt stores and re-derives the whole artifact before accepting it.
type AttackabilityOutcomeArtifact struct {
	SchemaVersion                     string                               `json:"schema_version"`
	EvidenceClass                     string                               `json:"evidence_class"`
	ParentForecastSHA256              string                               `json:"parent_forecast_sha256"`
	PreviousOutcomeSHA256             string                               `json:"previous_outcome_sha256,omitempty"`
	FormalizerArtifactSHA256          string                               `json:"formalizer_artifact_sha256"`
	FormalizerRunReceiptID            string                               `json:"formalizer_run_receipt_id"`
	FormalizerModelID                 string                               `json:"formalizer_model_id"`
	FormalizerModelIdentityCapturedAt time.Time                            `json:"formalizer_model_identity_captured_at_utc"`
	FormalizerTarget                  domain.AgentRunTarget                `json:"formalizer_target"`
	FormalizerM0SnapshotSHA256        string                               `json:"formalizer_m0_snapshot_sha256"`
	FormalizerClearance               domain.AgentRunInputClearance        `json:"formalizer_clearance"`
	FormalizerCandidateID             string                               `json:"formalizer_candidate_id,omitempty"`
	FormalizerCandidateRevisionSHA256 string                               `json:"formalizer_candidate_revision_sha256,omitempty"`
	FormalizerStatus                  string                               `json:"formalizer_status"`
	SolverAttempts                    []AttackabilitySolverAttemptEvidence `json:"solver_attempts,omitempty"`
	StopEvidence                      *AttackabilityStopEvidence           `json:"stop_evidence,omitempty"`
	Record                            domain.AttackabilityOutcomeRecord    `json:"record"`
}

// AttackabilitySolverAttemptEvidence is a compact index into a durable Lean
// receipt. Get reopens the receipt and rederives every field before accepting
// this outcome artifact.
type AttackabilitySolverAttemptEvidence struct {
	EvidenceID             string                        `json:"evidence_id"`
	ReceiptSHA256          string                        `json:"receipt_sha256"`
	Status                 string                        `json:"status"`
	Disposition            solver.LeanAttemptDisposition `json:"disposition"`
	ProofSHA256            string                        `json:"proof_sha256"`
	ProblemStatementSHA256 string                        `json:"problem_statement_sha256"`
	StartedAtUTC           time.Time                     `json:"started_at_utc"`
	FinishedAtUTC          time.Time                     `json:"finished_at_utc"`
	ElapsedMilliseconds    int64                         `json:"elapsed_milliseconds"`
}

// AttackabilityStopEvidence records the local stop request that closes a
// partially used proof budget after every recorded proof attempt was rejected.
// Requester identity is asserted input; this receipt does not authenticate it.
type AttackabilityStopEvidence struct {
	SchemaVersion            string    `json:"schema_version"`
	EvidenceID               string    `json:"evidence_id"`
	StopKind                 string    `json:"stop_kind"`
	ParentForecastSHA256     string    `json:"parent_forecast_sha256"`
	PreviousOutcomeSHA256    string    `json:"previous_outcome_sha256"`
	FormalizerArtifactSHA256 string    `json:"formalizer_artifact_sha256"`
	SolverAttemptReceiptIDs  []string  `json:"solver_attempt_receipt_ids"`
	RequestedBy              string    `json:"requested_by"`
	Reason                   string    `json:"reason"`
	RecordedAtUTC            time.Time `json:"recorded_at_utc"`
}

// AttackabilityOutcomeLink is the exclusive child pointer for one forecast.
// Its bytes are published with create-if-absent semantics and never replaced.
type AttackabilityOutcomeLink struct {
	SchemaVersion        string `json:"schema_version"`
	ParentForecastSHA256 string `json:"parent_forecast_sha256"`
	OutcomeSHA256        string `json:"outcome_sha256"`
}

// AttackabilityOutcomeRevisionLink preserves every outcome revision as an
// immutable edge from its exact prior content address.
type AttackabilityOutcomeRevisionLink struct {
	SchemaVersion         string `json:"schema_version"`
	ParentForecastSHA256  string `json:"parent_forecast_sha256"`
	RecordRevision        int    `json:"record_revision"`
	PreviousOutcomeSHA256 string `json:"previous_outcome_sha256"`
	OutcomeSHA256         string `json:"outcome_sha256"`
}

type AttackabilityOutcomeReceipt struct {
	ContentSHA256            string `json:"content_sha256"`
	ParentForecastSHA256     string `json:"parent_forecast_sha256"`
	FormalizerArtifactSHA256 string `json:"formalizer_artifact_sha256"`
	RelativePath             string `json:"relative_path"`
	Size                     int64  `json:"size"`
}

// AttackabilityOutcomeStore accepts one formalizer artifact and, when
// configured with a Lean receipt root, one ordered list of typed solver
// attempts per forecast. Outcome revisions remain exclusive; branching is
// refused and candidate-level proof passes remain IN_PROGRESS until V3 fidelity
// evidence is separately accepted.
type AttackabilityOutcomeStore struct {
	root                string
	forecasts           *AttackabilityForecastStore
	formalizerArtifacts *formalizer.ArtifactStore
	leanReceiptRoot     string
}

func NewAttackabilityOutcomeStore(forecasts *AttackabilityForecastStore, formalizerArtifacts *formalizer.ArtifactStore) (*AttackabilityOutcomeStore, error) {
	if forecasts == nil || forecasts.root == "" {
		return nil, errors.New("persistence: attackability outcome forecast store is required")
	}
	if formalizerArtifacts == nil {
		return nil, errors.New("persistence: attackability outcome formalizer artifact store is required")
	}
	return &AttackabilityOutcomeStore{root: forecasts.root, forecasts: forecasts, formalizerArtifacts: formalizerArtifacts}, nil
}

// NewAttackabilityOutcomeStoreWithLeanReceipts enables the same append-only
// outcome store to reopen exact Lean proof-attempt receipts from receiptRoot.
// The root must already exist and cannot be a symlink or reparse point.
func NewAttackabilityOutcomeStoreWithLeanReceipts(forecasts *AttackabilityForecastStore, formalizerArtifacts *formalizer.ArtifactStore, receiptRoot string) (*AttackabilityOutcomeStore, error) {
	store, err := NewAttackabilityOutcomeStore(forecasts, formalizerArtifacts)
	if err != nil {
		return nil, err
	}
	if strings.TrimSpace(receiptRoot) == "" {
		return nil, errors.New("persistence: Lean attempt receipt root is required")
	}
	root, err := filepath.Abs(receiptRoot)
	if err != nil {
		return nil, fmt.Errorf("persistence: resolve Lean attempt receipt root: %w", err)
	}
	info, err := os.Lstat(root)
	if err != nil || info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return nil, errors.New("persistence: Lean attempt receipt root must be an existing regular directory")
	}
	store.leanReceiptRoot = root
	return store, nil
}

// AppendFormalizerOutcome reopens a single content-addressed forecast and a
// single formalizer artifact. It preserves the forecast bytes and creates one
// immutable revision-2 label plus an exclusive forecast-to-outcome link.
func (s *AttackabilityOutcomeStore) AppendFormalizerOutcome(ctx context.Context, forecastSHA256 string, formalizerArtifactSHA256s []string) (AttackabilityOutcomeReceipt, error) {
	return s.appendOutcome(ctx, forecastSHA256, formalizerArtifactSHA256s, nil, nil, "")
}

// AppendCandidateProofAttemptsOutcome persists the candidate-level results of
// a cumulative, ordered list of exact Lean proof attempts. When a prior
// partial outcome exists, the supplied list must retain every earlier receipt
// as an unchanged prefix and append at least one new receipt. Repeating the
// same cumulative list is idempotent. Even a passing proof remains
// IN_PROGRESS here: V3 statement-fidelity evidence must separately establish
// that the formalized proposition matches the pinned informal statement.
func (s *AttackabilityOutcomeStore) AppendCandidateProofAttemptsOutcome(ctx context.Context, forecastSHA256 string, formalizerArtifactSHA256s, solverAttemptReceiptIDs []string) (AttackabilityOutcomeReceipt, error) {
	if len(solverAttemptReceiptIDs) == 0 {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: at least one typed Lean solver-attempt receipt is required")
	}
	if s == nil || s.leanReceiptRoot == "" {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: Lean attempt receipt store is not configured")
	}
	var previous *AttackabilityOutcomeArtifact
	previousSHA256 := ""
	current, currentReceipt, err := s.GetChild(ctx, forecastSHA256)
	if err == nil {
		if len(formalizerArtifactSHA256s) != 1 || formalizerArtifactSHA256s[0] != current.FormalizerArtifactSHA256 {
			return AttackabilityOutcomeReceipt{}, errors.New("persistence: outcome revision cannot change its formalizer artifact")
		}
		if len(solverAttemptReceiptIDs) < len(current.SolverAttempts) {
			return AttackabilityOutcomeReceipt{}, errors.New("persistence: outcome revision cannot remove prior solver-attempt receipts")
		}
		for index, attempt := range current.SolverAttempts {
			if solverAttemptReceiptIDs[index] != attempt.EvidenceID {
				return AttackabilityOutcomeReceipt{}, errors.New("persistence: outcome revision must preserve the exact prior solver-attempt sequence")
			}
		}
		if len(solverAttemptReceiptIDs) == len(current.SolverAttempts) {
			return currentReceipt, nil
		}
		if current.Record.ActualOutcome.Status != domain.AttackabilityInProgress {
			return AttackabilityOutcomeReceipt{}, errors.New("persistence: terminal attackability outcome cannot receive additional proof attempts")
		}
		for _, attempt := range current.SolverAttempts {
			if attempt.Disposition == solver.LeanAttemptProofPassed {
				return AttackabilityOutcomeReceipt{}, errors.New("persistence: a kernel-passed candidate is waiting on V3 fidelity and cannot receive more proof attempts")
			}
		}
		if current.Record.Attempts.FormalizationAttempts+current.Record.Attempts.ProofAttempts >= current.Record.Attempts.AttemptBudget {
			return AttackabilityOutcomeReceipt{}, errors.New("persistence: outcome has no remaining attempt budget")
		}
		previous = &current
		previousSHA256 = currentReceipt.ContentSHA256
	} else if !errors.Is(err, os.ErrNotExist) {
		return AttackabilityOutcomeReceipt{}, err
	}
	return s.appendOutcome(ctx, forecastSHA256, formalizerArtifactSHA256s, solverAttemptReceiptIDs, previous, previousSHA256)
}

// FinalizeRejectedProofOutcome records an explicit local request to stop after
// one or more rejected proof attempts while attempt budget remains. The stop
// receipt binds the unchanged attempt sequence and exact prior outcome. It does
// not authenticate the requester or prove that an external user issued the
// request.
func (s *AttackabilityOutcomeStore) FinalizeRejectedProofOutcome(ctx context.Context, forecastSHA256, requestedBy, reason string) (AttackabilityOutcomeReceipt, error) {
	if s == nil || s.root == "" || s.forecasts == nil || s.formalizerArtifacts == nil {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability outcome store is nil")
	}
	if ctx == nil {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: context is required")
	}
	if s.leanReceiptRoot == "" {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: Lean attempt receipt store is not configured")
	}
	requestedBy = strings.TrimSpace(requestedBy)
	reason = strings.TrimSpace(reason)
	if requestedBy == "" || len(requestedBy) > 128 || strings.ContainsAny(requestedBy, "\r\n\x00") {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: rejected-proof stop requires a bounded requester ID")
	}
	if reason == "" || len(reason) > 2048 || strings.ContainsRune(reason, '\x00') {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: rejected-proof stop requires a bounded reason")
	}
	if !validSHA256(forecastSHA256) {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: forecast digest must be canonical SHA-256 hex")
	}

	previous, previousReceipt, err := s.GetChild(ctx, forecastSHA256)
	if err != nil {
		return AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: reopen outcome before rejected-proof stop: %w", err)
	}
	if previous.Record.ActualOutcome.Status == domain.AttackabilityRejectedProof && previous.StopEvidence != nil {
		if previous.StopEvidence.RequestedBy == requestedBy && previous.StopEvidence.Reason == reason {
			return previousReceipt, nil
		}
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: rejected-proof outcome is already terminal under a different stop request")
	}
	if previous.Record.ActualOutcome.Status != domain.AttackabilityInProgress || len(previous.SolverAttempts) == 0 {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: only a partial in-progress proof run can be stopped as REJECTED_PROOF")
	}
	attempted := previous.Record.Attempts.FormalizationAttempts + previous.Record.Attempts.ProofAttempts
	if previous.Record.Attempts.FormalizationAttempts != 1 || previous.Record.Attempts.ProofAttempts != len(previous.SolverAttempts) ||
		previous.Record.Attempts.AttemptBudget <= attempted {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: rejected-proof stop requires a partial, consistently accounted attempt budget")
	}
	for _, attempt := range previous.SolverAttempts {
		if attempt.Disposition != solver.LeanAttemptRejectedProof {
			return AttackabilityOutcomeReceipt{}, errors.New("persistence: REJECTED_PROOF stop requires every recorded proof attempt to be a rejected proof")
		}
	}

	stoppedAt := time.Now().UTC()
	lastAttempt := previous.SolverAttempts[len(previous.SolverAttempts)-1]
	if !stoppedAt.After(lastAttempt.FinishedAtUTC) || stoppedAt.Before(previous.Record.ActualOutcome.RecordedAtUTC) {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: stop event must follow the exact prior outcome and final proof attempt")
	}
	attemptIDs := make([]string, 0, len(previous.SolverAttempts))
	for _, attempt := range previous.SolverAttempts {
		attemptIDs = append(attemptIDs, attempt.EvidenceID)
	}
	stopEvidence := AttackabilityStopEvidence{
		SchemaVersion:            attackabilityStopEvidenceSchema,
		StopKind:                 attackabilityStopKind,
		ParentForecastSHA256:     forecastSHA256,
		PreviousOutcomeSHA256:    previousReceipt.ContentSHA256,
		FormalizerArtifactSHA256: previous.FormalizerArtifactSHA256,
		SolverAttemptReceiptIDs:  attemptIDs,
		RequestedBy:              requestedBy,
		Reason:                   reason,
		RecordedAtUTC:            stoppedAt,
	}
	stopEvidence.EvidenceID = attackabilityStopEvidenceID(stopEvidence)
	outcome, err := deriveStoppedRejectedProofOutcome(previous, previousReceipt.ContentSHA256, stopEvidence)
	if err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	body, err := marshalOutcomeArtifact(outcome)
	if err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	if len(body) == 0 || len(body) > attackabilityOutcomeMaxBytes {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability outcome artifact size is invalid")
	}
	objectsDir := filepath.Join(s.root, attackabilityOutcomeDirectory, "objects")
	if err := ensureDirectory(filepath.Join(s.root, attackabilityOutcomeDirectory)); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	if err := ensureDirectory(objectsDir); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	if err := ctx.Err(); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	return s.appendOutcomeRevision(ctx, forecastSHA256, &previous, previousReceipt.ContentSHA256, outcome, body, sha256Hex(body), objectsDir)
}

func (s *AttackabilityOutcomeStore) appendOutcome(ctx context.Context, forecastSHA256 string, formalizerArtifactSHA256s, solverAttemptReceiptIDs []string, previous *AttackabilityOutcomeArtifact, previousSHA256 string) (AttackabilityOutcomeReceipt, error) {
	if s == nil || s.root == "" || s.forecasts == nil || s.formalizerArtifacts == nil {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability outcome store is nil")
	}
	if ctx == nil {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: context is required")
	}
	if len(formalizerArtifactSHA256s) != 1 {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: exactly one formalizer artifact is required per attackability forecast")
	}
	if !validSHA256(forecastSHA256) {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: forecast digest must be canonical SHA-256 hex")
	}
	if !validSHA256(formalizerArtifactSHA256s[0]) {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: formalizer artifact digest must be canonical SHA-256 hex")
	}
	forecast, _, err := s.forecasts.Get(ctx, forecastSHA256)
	if err != nil {
		return AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: reopen attackability forecast: %w", err)
	}
	formalizerArtifact, formalizerReceipt, err := s.formalizerArtifacts.Get(ctx, formalizerArtifactSHA256s[0])
	if err != nil {
		return AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: reopen formalizer artifact: %w", err)
	}
	outcome, err := deriveAttackabilityOutcome(ctx, forecastSHA256, forecast, formalizerArtifactSHA256s[0], formalizerArtifact, formalizerReceipt, s.leanReceiptRoot, solverAttemptReceiptIDs, previous, previousSHA256)
	if err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	body, err := marshalOutcomeArtifact(outcome)
	if err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	if len(body) == 0 || len(body) > attackabilityOutcomeMaxBytes {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability outcome artifact size is invalid")
	}
	digest := sha256Hex(body)
	objectsDir := filepath.Join(s.root, attackabilityOutcomeDirectory, "objects")
	childrenDir := filepath.Join(s.root, attackabilityOutcomeDirectory, "children")
	if err := ensureDirectory(filepath.Join(s.root, attackabilityOutcomeDirectory)); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	if err := ensureDirectory(objectsDir); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	if err := ensureDirectory(childrenDir); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	if err := ctx.Err(); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	if previous != nil {
		return s.appendOutcomeRevision(ctx, forecastSHA256, previous, previousSHA256, outcome, body, digest, objectsDir)
	}
	linkPath := filepath.Join(childrenDir, forecastSHA256+".json")
	if existing, err := readOutcomeLink(linkPath, forecastSHA256); err == nil {
		if existing.OutcomeSHA256 != digest {
			return AttackabilityOutcomeReceipt{}, errors.New("persistence: forecast already has a different outcome child; revision branching is refused")
		}
		_, receipt, getErr := s.Get(ctx, digest)
		return receipt, getErr
	} else if !errors.Is(err, os.ErrNotExist) {
		return AttackabilityOutcomeReceipt{}, err
	}
	objectPath := filepath.Join(objectsDir, digest+".json")
	if _, err := writeOutcomeObject(objectsDir, objectPath, digest, body); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	link := AttackabilityOutcomeLink{SchemaVersion: attackabilityOutcomeLinkSchema, ParentForecastSHA256: forecastSHA256, OutcomeSHA256: digest}
	linkBody, err := jsonv2.Marshal(link, jsonv2.Deterministic(true))
	if err != nil {
		return AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: encode attackability outcome link: %w", err)
	}
	if err := ctx.Err(); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	if err := appendExclusiveOutcomeLink(childrenDir, linkPath, forecastSHA256, digest, linkBody); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	_, receipt, getErr := s.Get(ctx, digest)
	return receipt, getErr
}

func (s *AttackabilityOutcomeStore) appendOutcomeRevision(ctx context.Context, forecastSHA256 string, previous *AttackabilityOutcomeArtifact, previousSHA256 string, outcome AttackabilityOutcomeArtifact, body []byte, digest, objectsDir string) (AttackabilityOutcomeReceipt, error) {
	if previous == nil || !validSHA256(previousSHA256) || outcome.PreviousOutcomeSHA256 != previousSHA256 ||
		outcome.ParentForecastSHA256 != forecastSHA256 || outcome.Record.RecordRevision != previous.Record.RecordRevision+1 ||
		outcome.Record.SupersedesRecordID != previous.Record.RecordID {
		return AttackabilityOutcomeReceipt{}, errors.New("persistence: outcome revision does not preserve its exact predecessor")
	}
	revisionsRoot := filepath.Join(s.root, attackabilityOutcomeDirectory, "revisions")
	if err := ensureDirectory(revisionsRoot); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	revisionDir := filepath.Join(revisionsRoot, forecastSHA256)
	if err := ensureDirectory(revisionDir); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	if err := checkOutcomeDirectoryTree(s.root, revisionDir); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	if _, err := writeOutcomeObject(objectsDir, filepath.Join(objectsDir, digest+".json"), digest, body); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	link := AttackabilityOutcomeRevisionLink{
		SchemaVersion: attackabilityOutcomeRevisionLink, ParentForecastSHA256: forecastSHA256,
		RecordRevision: outcome.Record.RecordRevision, PreviousOutcomeSHA256: previousSHA256, OutcomeSHA256: digest,
	}
	linkBody, err := jsonv2.Marshal(link, jsonv2.Deterministic(true))
	if err != nil {
		return AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: encode attackability outcome revision link: %w", err)
	}
	if err := ctx.Err(); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	linkPath := filepath.Join(revisionDir, fmt.Sprintf("%06d.json", outcome.Record.RecordRevision))
	if err := appendExclusiveOutcomeRevisionLink(revisionDir, linkPath, link, linkBody); err != nil {
		return AttackabilityOutcomeReceipt{}, err
	}
	_, receipt, err := s.Get(ctx, digest)
	return receipt, err
}

// Get reopens the content-addressed outcome, its exclusive forecast link, the
// parent forecast, and the formalizer artifact. It then re-derives the exact
// output bytes, so a self-authored record or hash-only substitute is refused.
func (s *AttackabilityOutcomeStore) Get(ctx context.Context, outcomeSHA256 string) (AttackabilityOutcomeArtifact, AttackabilityOutcomeReceipt, error) {
	if s == nil || s.root == "" || s.forecasts == nil || s.formalizerArtifacts == nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability outcome store is nil")
	}
	if ctx == nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: context is required")
	}
	if !validSHA256(outcomeSHA256) {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: outcome digest must be canonical SHA-256 hex")
	}
	directory := filepath.Join(s.root, attackabilityOutcomeDirectory, "objects")
	if err := checkOutcomeDirectoryTree(s.root, directory); err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
	}
	path := filepath.Join(directory, outcomeSHA256+".json")
	if err := ensureContained(s.root, path); err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
	}
	file, err := openRegular(path)
	if err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: open attackability outcome: %w", err)
	}
	defer file.Close()
	body, err := io.ReadAll(io.LimitReader(file, attackabilityOutcomeMaxBytes+1))
	if err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: read attackability outcome: %w", err)
	}
	if len(body) == 0 || len(body) > attackabilityOutcomeMaxBytes || sha256Hex(body) != outcomeSHA256 {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability outcome content hash or size is invalid")
	}
	var stored AttackabilityOutcomeArtifact
	if err := jsonv2.Unmarshal(body, &stored, jsonv2.RejectUnknownMembers(true)); err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: decode attackability outcome: %w", err)
	}
	if (stored.SchemaVersion != attackabilityOutcomeSchema && stored.SchemaVersion != attackabilityOutcomeSchemaV2 && stored.SchemaVersion != attackabilityOutcomeSchemaV3 && stored.SchemaVersion != attackabilityOutcomeSchemaV4) || stored.EvidenceClass != attackabilityOutcomeEvidenceClass ||
		!validSHA256(stored.ParentForecastSHA256) || !validSHA256(stored.FormalizerArtifactSHA256) {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability outcome envelope identity is invalid")
	}
	if (stored.SchemaVersion == attackabilityOutcomeSchemaV4) != (stored.StopEvidence != nil) {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability stop evidence is required only for outcome evidence v4")
	}
	var previous *AttackabilityOutcomeArtifact
	previousSHA256 := ""
	if stored.SchemaVersion == attackabilityOutcomeSchemaV3 || stored.SchemaVersion == attackabilityOutcomeSchemaV4 {
		if !validSHA256(stored.PreviousOutcomeSHA256) || stored.PreviousOutcomeSHA256 == outcomeSHA256 || stored.Record.RecordRevision < 3 {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: revised outcome envelope lacks a valid predecessor")
		}
		revisionDir := filepath.Join(s.root, attackabilityOutcomeDirectory, "revisions", stored.ParentForecastSHA256)
		if err := checkOutcomeDirectoryTree(s.root, revisionDir); err != nil {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
		}
		linkPath := filepath.Join(revisionDir, fmt.Sprintf("%06d.json", stored.Record.RecordRevision))
		link, err := readOutcomeRevisionLink(linkPath, stored.ParentForecastSHA256)
		if err != nil {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: reopen attackability outcome revision link: %w", err)
		}
		if link.RecordRevision != stored.Record.RecordRevision || link.PreviousOutcomeSHA256 != stored.PreviousOutcomeSHA256 || link.OutcomeSHA256 != outcomeSHA256 {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: revised outcome is not linked to its exact predecessor and content address")
		}
		prior, _, err := s.Get(ctx, stored.PreviousOutcomeSHA256)
		if err != nil {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: reopen superseded attackability outcome: %w", err)
		}
		if prior.ParentForecastSHA256 != stored.ParentForecastSHA256 || prior.FormalizerArtifactSHA256 != stored.FormalizerArtifactSHA256 ||
			prior.Record.RecordRevision+1 != stored.Record.RecordRevision || prior.Record.RecordID != stored.Record.SupersedesRecordID {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: revised outcome does not supersede the exact prior record")
		}
		previous = &prior
		previousSHA256 = stored.PreviousOutcomeSHA256
	} else {
		if stored.PreviousOutcomeSHA256 != "" {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: legacy outcome envelope cannot claim a predecessor digest")
		}
		linkPath := filepath.Join(s.root, attackabilityOutcomeDirectory, "children", stored.ParentForecastSHA256+".json")
		if err := checkOutcomeDirectoryTree(s.root, filepath.Dir(linkPath)); err != nil {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
		}
		link, err := readOutcomeLink(linkPath, stored.ParentForecastSHA256)
		if err != nil {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: reopen exclusive forecast outcome link: %w", err)
		}
		if link.OutcomeSHA256 != outcomeSHA256 {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: outcome is not the linked child of its declared forecast")
		}
	}
	forecast, _, err := s.forecasts.Get(ctx, stored.ParentForecastSHA256)
	if err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: reopen outcome parent forecast: %w", err)
	}
	formalizerArtifact, formalizerReceipt, err := s.formalizerArtifacts.Get(ctx, stored.FormalizerArtifactSHA256)
	if err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: reopen outcome formalizer evidence: %w", err)
	}
	solverAttemptReceiptIDs := make([]string, 0, len(stored.SolverAttempts))
	for _, attempt := range stored.SolverAttempts {
		solverAttemptReceiptIDs = append(solverAttemptReceiptIDs, attempt.EvidenceID)
	}
	var expected AttackabilityOutcomeArtifact
	if stored.SchemaVersion == attackabilityOutcomeSchemaV4 {
		if previous == nil || stored.StopEvidence == nil {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: rejected-proof outcome lacks its exact predecessor or stop evidence")
		}
		expected, err = deriveStoppedRejectedProofOutcome(*previous, previousSHA256, *stored.StopEvidence)
	} else {
		expected, err = deriveAttackabilityOutcome(ctx, stored.ParentForecastSHA256, forecast, stored.FormalizerArtifactSHA256, formalizerArtifact, formalizerReceipt, s.leanReceiptRoot, solverAttemptReceiptIDs, previous, previousSHA256)
	}
	if err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
	}
	expectedBody, err := marshalOutcomeArtifact(expected)
	if err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
	}
	if !bytes.Equal(expectedBody, body) {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability outcome fields do not match reopened forecast and formalizer evidence")
	}
	return stored, attackabilityOutcomeReceipt(s.root, path, outcomeSHA256, stored, int64(len(body))), nil
}

// GetChild follows the immutable first child and every contiguous revision
// link, returning the latest fully revalidated outcome.
func (s *AttackabilityOutcomeStore) GetChild(ctx context.Context, forecastSHA256 string) (AttackabilityOutcomeArtifact, AttackabilityOutcomeReceipt, error) {
	if s == nil || s.root == "" {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability outcome store is nil")
	}
	if !validSHA256(forecastSHA256) {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: forecast digest must be canonical SHA-256 hex")
	}
	linkPath := filepath.Join(s.root, attackabilityOutcomeDirectory, "children", forecastSHA256+".json")
	if err := checkOutcomeDirectoryTree(s.root, filepath.Dir(linkPath)); err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
	}
	link, err := readOutcomeLink(linkPath, forecastSHA256)
	if err != nil {
		revisionDir := filepath.Join(s.root, attackabilityOutcomeDirectory, "revisions", forecastSHA256)
		if _, revisionErr := os.Lstat(revisionDir); revisionErr == nil {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability outcome revisions exist without their first child")
		} else if !errors.Is(revisionErr, os.ErrNotExist) {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, revisionErr
		}
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
	}
	current, currentReceipt, err := s.Get(ctx, link.OutcomeSHA256)
	if err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
	}
	revisionDir := filepath.Join(s.root, attackabilityOutcomeDirectory, "revisions", forecastSHA256)
	if err := checkOutcomeDirectoryTree(s.root, filepath.Join(s.root, attackabilityOutcomeDirectory, "revisions")); err != nil {
		if errors.Is(err, os.ErrNotExist) {
			return current, currentReceipt, nil
		}
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
	}
	info, err := os.Lstat(revisionDir)
	if errors.Is(err, os.ErrNotExist) {
		return current, currentReceipt, nil
	}
	if err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability revision path is not a regular directory")
	}
	if err := checkOutcomeDirectoryTree(s.root, revisionDir); err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
	}
	entries, err := os.ReadDir(revisionDir)
	if err != nil {
		return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, fmt.Errorf("persistence: enumerate attackability outcome revisions: %w", err)
	}
	expectedRevision := current.Record.RecordRevision + 1
	previousSHA256 := currentReceipt.ContentSHA256
	for _, entry := range entries {
		if entry.IsDir() || entry.Type()&os.ModeSymlink != 0 || !strings.HasSuffix(entry.Name(), ".json") {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability outcome revision directory contains a non-revision entry")
		}
		name := strings.TrimSuffix(entry.Name(), ".json")
		revision, parseErr := strconv.Atoi(name)
		if parseErr != nil || entry.Name() != fmt.Sprintf("%06d.json", revision) || revision != expectedRevision {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability outcome revision sequence is not contiguous")
		}
		revisionLink, err := readOutcomeRevisionLink(filepath.Join(revisionDir, entry.Name()), forecastSHA256)
		if err != nil {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
		}
		if revisionLink.RecordRevision != revision || revisionLink.PreviousOutcomeSHA256 != previousSHA256 {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: attackability outcome revision link forks or skips its predecessor")
		}
		current, currentReceipt, err = s.Get(ctx, revisionLink.OutcomeSHA256)
		if err != nil {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, err
		}
		if current.Record.RecordRevision != revision {
			return AttackabilityOutcomeArtifact{}, AttackabilityOutcomeReceipt{}, errors.New("persistence: revised outcome record does not match its immutable link revision")
		}
		previousSHA256 = currentReceipt.ContentSHA256
		expectedRevision++
	}
	return current, currentReceipt, nil
}

func deriveAttackabilityOutcome(ctx context.Context, forecastSHA256 string, forecast AttackabilityForecastArtifact, formalizerSHA256 string, evidence formalizer.DurableArtifact, artifactReceipt formalizer.ArtifactReceipt, leanReceiptRoot string, solverAttemptReceiptIDs []string, previous *AttackabilityOutcomeArtifact, previousSHA256 string) (AttackabilityOutcomeArtifact, error) {
	result := evidence.Result
	request := result.Request
	run := result.RunReceipt
	if !bytes.Equal(forecast.CatalogSnapshotBytes, evidence.CatalogSnapshotBytes) {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: formalizer evidence does not use the exact forecast M0 snapshot bytes")
	}
	if request.ProblemID != forecast.Record.Target.ProblemID || request.Source.CatalogSnapshotSHA256 != forecast.Record.Target.CatalogSnapshotSHA256 ||
		sha256Hex([]byte(request.Source.Statement)) != forecast.Record.Target.StatementSHA256 || request.Source.Statement == "" {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: formalizer request does not match the forecast target statement and M0 pin")
	}
	if request.InputClearance.StatementID != forecast.Record.Target.StatementID {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: formalizer clearance does not name the forecast target statement")
	}
	targetInput, ok := attackabilityForecastTargetInput(forecast, request.InputClearance.StatementID)
	if !ok || targetInput.ProblemID != request.ProblemID || targetInput.SourceID != request.Source.EvidenceID ||
		!bytes.Equal(targetInput.SourceItemBytes, evidence.SourceItemBytes) || sha256Hex(evidence.SourceItemBytes) != request.Source.RawItemSHA256 {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: formalizer source item does not match the forecast's reopened M0 target evidence")
	}
	var snapshot catalog.Snapshot
	if err := decodeStrictEvidenceJSON(forecast.CatalogSnapshotBytes, &snapshot); err != nil {
		return AttackabilityOutcomeArtifact{}, fmt.Errorf("persistence: decode outcome M0 snapshot: %w", err)
	}
	if err := snapshot.Validate(); err != nil {
		return AttackabilityOutcomeArtifact{}, fmt.Errorf("persistence: validate outcome M0 snapshot: %w", err)
	}
	problem, found := attackabilityCatalogProblem(snapshot, request.ProblemID)
	if !found || problem.InformalStatement != request.Source.Statement || sha256Hex([]byte(problem.InformalStatement)) != forecast.Record.Target.StatementSHA256 {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: formalizer source statement differs from exact M0 target")
	}
	if err := validateOutcomeFormalizerRun(forecast, request, run); err != nil {
		return AttackabilityOutcomeArtifact{}, err
	}
	if artifactReceipt.ArtifactSHA256 != formalizerSHA256 || artifactReceipt.GenerationReceiptID != run.ReceiptID ||
		artifactReceipt.CatalogSnapshotSHA256 != forecast.Record.Target.CatalogSnapshotSHA256 ||
		artifactReceipt.CandidateID != result.Candidate.CandidateID || artifactReceipt.CandidateRevisionSHA256 != result.CandidateRevision.SHA256 {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: formalizer store receipt does not identify the reopened run, artifact, and M0 snapshot")
	}
	if request.LabelRecordID != attackabilityOutcomeRecordID(forecastSHA256, run.ReceiptID) || len(run.LabelRecordIDs) != 1 || run.LabelRecordIDs[0] != request.LabelRecordID {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: formalizer run must predeclare the deterministic outcome label ID")
	}
	status, outcomeAt, hasCandidate, err := classifyFormalizerResult(result, problem)
	if err != nil {
		return AttackabilityOutcomeArtifact{}, err
	}
	launchAt := *run.ModelIdentityCapturedAtUTC
	if !forecast.Record.RecordedAtUTC.Before(launchAt) || !forecast.Record.Prediction.PredictedAtUTC.Before(launchAt) {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: formalizer launch must follow the persisted forecast prediction")
	}
	solverAttempts, solverElapsedMillis, err := reopenAttackabilitySolverAttempts(
		leanReceiptRoot, solverAttemptReceiptIDs,
		domain.MathProblem{ID: problem.ID, Statement: problem.InformalStatement, LeanStatement: result.Candidate.LeanStatement},
		result, forecast.Record.Attempts.AttemptBudget,
	)
	if err != nil {
		return AttackabilityOutcomeArtifact{}, err
	}
	if len(solverAttempts) > 0 {
		if !hasCandidate || status != domain.AttackabilityInProgress || result.Status != "PROPOSITION_ELABORATED" || result.StatementCheck == nil {
			return AttackabilityOutcomeArtifact{}, errors.New("persistence: Lean proof attempts require an elaborated formalizer candidate and statement-check receipt")
		}
		status = classifyCandidateProofAttempts(status, solverAttempts, forecast.Record.Attempts.AttemptBudget)
		outcomeAt = solverAttempts[len(solverAttempts)-1].FinishedAtUTC
		if outcomeAt.Before(result.StatementCheck.RecordedAtUTC) {
			return AttackabilityOutcomeArtifact{}, errors.New("persistence: proof attempt outcome predates the candidate proposition check")
		}
	}
	if outcomeAt.Before(launchAt) {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: formalizer outcome time precedes its launch identity capture")
	}
	if err := ctx.Err(); err != nil {
		return AttackabilityOutcomeArtifact{}, err
	}

	base := forecast.Record
	if base.RecordRevision != 1 || base.ActualOutcome.Status != domain.AttackabilityNotAttempted || base.Attempts.FormalizationAttempts != 0 || base.Attempts.ProofAttempts != 0 {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: only a pristine first-revision forecast can receive its first outcome child")
	}
	if previous == nil {
		if previousSHA256 != "" {
			return AttackabilityOutcomeArtifact{}, errors.New("persistence: first outcome revision cannot claim a predecessor")
		}
	} else {
		if !validSHA256(previousSHA256) || previous.ParentForecastSHA256 != forecastSHA256 || previous.FormalizerArtifactSHA256 != formalizerSHA256 ||
			previous.Record.ActualOutcome.Status != domain.AttackabilityInProgress || previous.Record.RecordRevision < 2 ||
			len(solverAttemptReceiptIDs) <= len(previous.SolverAttempts) {
			return AttackabilityOutcomeArtifact{}, errors.New("persistence: outcome revision lacks an appendable partial predecessor")
		}
		for index, attempt := range previous.SolverAttempts {
			if solverAttemptReceiptIDs[index] != attempt.EvidenceID {
				return AttackabilityOutcomeArtifact{}, errors.New("persistence: revised outcome attempt sequence does not preserve its exact predecessor")
			}
			if attempt.Disposition == solver.LeanAttemptProofPassed {
				return AttackabilityOutcomeArtifact{}, errors.New("persistence: passed candidate proof must wait for V3 instead of further proof attempts")
			}
		}
		if previous.Record.Attempts.FormalizationAttempts+previous.Record.Attempts.ProofAttempts >= previous.Record.Attempts.AttemptBudget {
			return AttackabilityOutcomeArtifact{}, errors.New("persistence: revised outcome has no remaining pinned attempt budget")
		}
	}
	if base.Cost.AccountingMode != domain.AttackabilityAgentQuota || base.Cost.AgentQuotaCalls != 1 || len(base.Cost.ResourceReceiptIDs) != 1 || base.Cost.ResourceReceiptIDs[0] != base.RunReceiptID {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: current outcome consumer requires one forecast agent-quota call with exact receipt accounting")
	}
	record := base
	recordRevision := base.RecordRevision + 1
	supersedesRecordID := base.RecordID
	recordID := request.LabelRecordID
	if previous != nil {
		record = previous.Record
		recordRevision = previous.Record.RecordRevision + 1
		supersedesRecordID = previous.Record.RecordID
		recordID = attackabilityOutcomeRevisionRecordID(previousSHA256, solverAttemptReceiptIDs)
	}
	record.RecordID = recordID
	record.RecordRevision = recordRevision
	record.SupersedesRecordID = supersedesRecordID
	record.RecordedAtUTC = outcomeAt
	record.ActualOutcome = domain.AttackabilityActualOutcome{
		Status: status, EvidenceIDs: []string{formalizerSHA256, run.ReceiptID}, RecordedAtUTC: outcomeAt,
	}
	for _, attempt := range solverAttempts {
		record.ActualOutcome.EvidenceIDs = append(record.ActualOutcome.EvidenceIDs, attempt.EvidenceID, attempt.ReceiptSHA256)
	}
	if hasCandidate {
		record.ActualOutcome.ResultArtifactSHA256 = formalizerSHA256
		if result.StatementCheck != nil {
			record.ActualOutcome.EvidenceIDs = append(record.ActualOutcome.EvidenceIDs, result.StatementCheck.EvidenceID)
		}
	}
	record.Attempts.FormalizationAttempts = 1
	record.Attempts.ProofAttempts = len(solverAttempts)
	record.Attempts.AttemptBudget = base.Attempts.AttemptBudget
	record.Attempts.SolverAttemptReceiptIDs = []string{attackabilityFormalizerAttemptID(formalizerSHA256)}
	for _, attempt := range solverAttempts {
		record.Attempts.SolverAttemptReceiptIDs = append(record.Attempts.SolverAttemptReceiptIDs, attempt.EvidenceID)
	}
	record.Attempts.FirstWorkAttemptAtUTC = &launchAt
	record.Cost.AgentQuotaCalls = 2
	record.Cost.ResourceReceiptIDs = []string{base.RunReceiptID, run.ReceiptID}
	if len(solverAttempts) > 0 {
		record.Cost.AccountingMode = domain.AttackabilityMixedCost
		record.Cost.LocalElapsedMillis = solverElapsedMillis
		for _, attempt := range solverAttempts {
			record.Cost.ResourceReceiptIDs = append(record.Cost.ResourceReceiptIDs, attempt.EvidenceID)
		}
	}
	if err := record.Validate(); err != nil {
		return AttackabilityOutcomeArtifact{}, fmt.Errorf("persistence: derived attackability outcome label is invalid: %w", err)
	}
	artifactSchema := attackabilityOutcomeSchema
	if len(solverAttempts) > 0 {
		artifactSchema = attackabilityOutcomeSchemaV2
		if previous != nil {
			artifactSchema = attackabilityOutcomeSchemaV3
		}
	}
	return AttackabilityOutcomeArtifact{
		SchemaVersion: artifactSchema, EvidenceClass: attackabilityOutcomeEvidenceClass, ParentForecastSHA256: forecastSHA256, PreviousOutcomeSHA256: previousSHA256,
		FormalizerArtifactSHA256: formalizerSHA256, FormalizerRunReceiptID: run.ReceiptID,
		FormalizerModelID: run.Model, FormalizerModelIdentityCapturedAt: launchAt, FormalizerTarget: run.Target,
		FormalizerM0SnapshotSHA256: evidence.Result.Request.Source.CatalogSnapshotSHA256,
		FormalizerClearance:        request.InputClearance,
		FormalizerCandidateID:      result.Candidate.CandidateID, FormalizerCandidateRevisionSHA256: result.CandidateRevision.SHA256,
		FormalizerStatus: result.Status, SolverAttempts: solverAttempts, Record: record,
	}, nil
}

// classifyCandidateProofAttempts derives only outcomes supported by the
// reopened typed receipts. A kernel-passed candidate remains pending V3
// statement fidelity. Infrastructure failure is kept distinct from exhausted
// proof search. Budget exhaustion requires the formalization attempt plus every
// remaining proof slot to have a rejected-proof receipt; a partial batch is
// not evidence that the solver stopped or exhausted its budget.
func classifyCandidateProofAttempts(current domain.AttackabilityOutcomeStatus, attempts []AttackabilitySolverAttemptEvidence, attemptBudget int) domain.AttackabilityOutcomeStatus {
	if current != domain.AttackabilityInProgress || len(attempts) == 0 {
		return current
	}
	hasPassedProof := false
	hasInfrastructureFailure := false
	allRejected := true
	for _, attempt := range attempts {
		switch attempt.Disposition {
		case solver.LeanAttemptProofPassed:
			hasPassedProof = true
			allRejected = false
		case solver.LeanAttemptRejectedProof:
		case solver.LeanAttemptInfrastructureFailure:
			hasInfrastructureFailure = true
			allRejected = false
		default:
			return current
		}
	}
	if hasPassedProof {
		return domain.AttackabilityInProgress
	}
	if hasInfrastructureFailure {
		return domain.AttackabilityInfrastructureFailure
	}
	if allRejected && 1+len(attempts) == attemptBudget {
		return domain.AttackabilityBudgetExhausted
	}
	return domain.AttackabilityInProgress
}

func deriveStoppedRejectedProofOutcome(previous AttackabilityOutcomeArtifact, previousSHA256 string, stopEvidence AttackabilityStopEvidence) (AttackabilityOutcomeArtifact, error) {
	if !validSHA256(previousSHA256) || previous.ParentForecastSHA256 != stopEvidence.ParentForecastSHA256 ||
		previous.FormalizerArtifactSHA256 != stopEvidence.FormalizerArtifactSHA256 || previousSHA256 != stopEvidence.PreviousOutcomeSHA256 ||
		previous.Record.ActualOutcome.Status != domain.AttackabilityInProgress || previous.Record.RecordRevision < 2 || previous.StopEvidence != nil {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: rejected-proof stop does not bind an in-progress predecessor")
	}
	if stopEvidence.SchemaVersion != attackabilityStopEvidenceSchema || stopEvidence.StopKind != attackabilityStopKind ||
		stopEvidence.RequestedBy == "" || stopEvidence.RequestedBy != strings.TrimSpace(stopEvidence.RequestedBy) || len(stopEvidence.RequestedBy) > 128 || strings.ContainsAny(stopEvidence.RequestedBy, "\r\n\x00") ||
		stopEvidence.Reason == "" || stopEvidence.Reason != strings.TrimSpace(stopEvidence.Reason) || len(stopEvidence.Reason) > 2048 || strings.ContainsRune(stopEvidence.Reason, '\x00') ||
		stopEvidence.RecordedAtUTC.IsZero() || stopEvidence.EvidenceID != attackabilityStopEvidenceID(stopEvidence) {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: rejected-proof stop evidence is malformed or misbound")
	}
	if len(previous.SolverAttempts) == 0 || previous.Record.Attempts.FormalizationAttempts != 1 ||
		previous.Record.Attempts.ProofAttempts != len(previous.SolverAttempts) ||
		previous.Record.Attempts.AttemptBudget <= previous.Record.Attempts.FormalizationAttempts+previous.Record.Attempts.ProofAttempts ||
		len(stopEvidence.SolverAttemptReceiptIDs) != len(previous.SolverAttempts) {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: rejected-proof stop requires a partial, consistently accounted proof budget")
	}
	for index, attempt := range previous.SolverAttempts {
		if attempt.Disposition != solver.LeanAttemptRejectedProof || stopEvidence.SolverAttemptReceiptIDs[index] != attempt.EvidenceID {
			return AttackabilityOutcomeArtifact{}, errors.New("persistence: rejected-proof stop must bind the exact ordered rejected-attempt receipts")
		}
	}
	lastAttempt := previous.SolverAttempts[len(previous.SolverAttempts)-1]
	if !stopEvidence.RecordedAtUTC.After(lastAttempt.FinishedAtUTC) || stopEvidence.RecordedAtUTC.Before(previous.Record.ActualOutcome.RecordedAtUTC) {
		return AttackabilityOutcomeArtifact{}, errors.New("persistence: rejected-proof stop must follow the prior outcome and final proof attempt")
	}

	record := previous.Record
	record.RecordID = attackabilityOutcomeStopRevisionRecordID(previousSHA256, stopEvidence.EvidenceID)
	record.RecordRevision++
	record.SupersedesRecordID = previous.Record.RecordID
	record.RecordedAtUTC = stopEvidence.RecordedAtUTC
	record.ActualOutcome.Status = domain.AttackabilityRejectedProof
	record.ActualOutcome.EvidenceIDs = append(append([]string{}, previous.Record.ActualOutcome.EvidenceIDs...), stopEvidence.EvidenceID)
	record.ActualOutcome.RecordedAtUTC = stopEvidence.RecordedAtUTC
	if err := record.Validate(); err != nil {
		return AttackabilityOutcomeArtifact{}, fmt.Errorf("persistence: derived rejected-proof outcome is invalid: %w", err)
	}
	stopEvidence.SolverAttemptReceiptIDs = append([]string{}, stopEvidence.SolverAttemptReceiptIDs...)
	return AttackabilityOutcomeArtifact{
		SchemaVersion: attackabilityOutcomeSchemaV4, EvidenceClass: previous.EvidenceClass,
		ParentForecastSHA256: previous.ParentForecastSHA256, PreviousOutcomeSHA256: previousSHA256,
		FormalizerArtifactSHA256: previous.FormalizerArtifactSHA256, FormalizerRunReceiptID: previous.FormalizerRunReceiptID,
		FormalizerModelID: previous.FormalizerModelID, FormalizerModelIdentityCapturedAt: previous.FormalizerModelIdentityCapturedAt,
		FormalizerTarget: previous.FormalizerTarget, FormalizerM0SnapshotSHA256: previous.FormalizerM0SnapshotSHA256,
		FormalizerClearance: previous.FormalizerClearance, FormalizerCandidateID: previous.FormalizerCandidateID,
		FormalizerCandidateRevisionSHA256: previous.FormalizerCandidateRevisionSHA256, FormalizerStatus: previous.FormalizerStatus,
		SolverAttempts: append([]AttackabilitySolverAttemptEvidence{}, previous.SolverAttempts...), StopEvidence: &stopEvidence, Record: record,
	}, nil
}

func reopenAttackabilitySolverAttempts(receiptRoot string, evidenceIDs []string, problem domain.MathProblem, formalizerResult formalizer.Result, attemptBudget int) ([]AttackabilitySolverAttemptEvidence, int64, error) {
	if len(evidenceIDs) == 0 {
		return nil, 0, nil
	}
	if receiptRoot == "" {
		return nil, 0, errors.New("persistence: Lean attempt receipt root is not configured")
	}
	if attemptBudget < 2 || len(evidenceIDs)+1 > attemptBudget {
		return nil, 0, errors.New("persistence: proof attempts exceed the pinned total attempt budget")
	}
	if formalizerResult.StatementCheck == nil {
		return nil, 0, errors.New("persistence: proof attempts lack the formalizer's typed statement-check receipt")
	}
	seen := make(map[string]struct{}, len(evidenceIDs))
	result := make([]AttackabilitySolverAttemptEvidence, 0, len(evidenceIDs))
	var elapsedTotal int64
	previousFinish := formalizerResult.StatementCheck.RecordedAtUTC
	for _, evidenceID := range evidenceIDs {
		if evidenceID == "" || filepath.Base(evidenceID) != evidenceID || strings.ContainsAny(evidenceID, "/\\\x00") {
			return nil, 0, errors.New("persistence: Lean attempt evidence ID is not a single filename")
		}
		if _, duplicate := seen[evidenceID]; duplicate {
			return nil, 0, errors.New("persistence: duplicate Lean attempt evidence ID")
		}
		seen[evidenceID] = struct{}{}
		path := filepath.Join(receiptRoot, evidenceID+".json")
		if err := ensureContained(receiptRoot, path); err != nil {
			return nil, 0, err
		}
		file, err := openRegular(path)
		if err != nil {
			return nil, 0, fmt.Errorf("persistence: reopen Lean attempt receipt %q: %w", evidenceID, err)
		}
		data, readErr := io.ReadAll(io.LimitReader(file, attackabilityOutcomeMaxBytes+1))
		closeErr := file.Close()
		if readErr != nil || closeErr != nil || len(data) == 0 || len(data) > attackabilityOutcomeMaxBytes {
			return nil, 0, errors.New("persistence: Lean attempt receipt bytes are unreadable or oversized")
		}
		var receipt solver.LeanVerificationReceipt
		if err := jsonv2.Unmarshal(data, &receipt, jsonv2.RejectUnknownMembers(true)); err != nil {
			return nil, 0, fmt.Errorf("persistence: decode typed Lean attempt receipt: %w", err)
		}
		if receipt.EvidenceID != evidenceID {
			return nil, 0, errors.New("persistence: Lean attempt filename does not match its receipt identity")
		}
		disposition, err := solver.ValidateExecutionBoundAttemptReceipt(receipt, problem)
		if err != nil {
			return nil, 0, fmt.Errorf("persistence: typed Lean attempt receipt %q failed readback: %w", evidenceID, err)
		}
		started := receipt.SandboxExecution.StartedAtUTC
		finished := receipt.SandboxExecution.FinishedAtUTC
		if started.Before(previousFinish) || finished.Before(started) || receipt.RecordedAtUTC.Before(finished) || receipt.ElapsedMilliseconds <= 0 {
			return nil, 0, errors.New("persistence: Lean attempt chronology or elapsed-time receipt is invalid")
		}
		receiptSHA256 := sha256Hex(data)
		result = append(result, AttackabilitySolverAttemptEvidence{
			EvidenceID: evidenceID, ReceiptSHA256: receiptSHA256, Status: receipt.Status, Disposition: disposition,
			ProofSHA256: receipt.ProofSHA256, ProblemStatementSHA256: receipt.ProblemStatementSHA256,
			StartedAtUTC: started, FinishedAtUTC: finished, ElapsedMilliseconds: receipt.ElapsedMilliseconds,
		})
		previousFinish = finished
		elapsedTotal += receipt.ElapsedMilliseconds
	}
	return result, elapsedTotal, nil
}

func validateOutcomeFormalizerRun(forecast AttackabilityForecastArtifact, request formalizer.Request, run domain.AgentRunReceipt) error {
	if err := run.ValidateForFutureRun(); err != nil {
		return fmt.Errorf("persistence: formalizer launch receipt is invalid: %w", err)
	}
	configuration := forecast.Record.Prediction.SolverConfiguration
	if configuration == nil {
		return errors.New("persistence: forecast lacks its exact solver configuration")
	}
	configurationSHA256, err := configuration.Digest()
	if err != nil {
		return fmt.Errorf("persistence: validate forecast solver configuration: %w", err)
	}
	if run.ReceiptID != request.PlannedReceiptID || run.Purpose != "formalization" || run.Target.ProblemID != forecast.Record.Target.ProblemID ||
		run.Target.StatementID != forecast.Record.Target.StatementID || run.Target.CatalogSnapshotSHA256 != forecast.Record.Target.CatalogSnapshotSHA256 ||
		run.Target.StatementSHA256 != forecast.Record.Target.StatementSHA256 {
		return errors.New("persistence: formalizer launch receipt is misbound to its planned ID, purpose, target, statement, or M0 snapshot")
	}
	if run.Model != configuration.SolverModelID || !sameOptionalModelSnapshot(run.ModelSnapshotID, configuration.SolverModelSnapshotID) ||
		run.SolverConfigurationSHA256 == nil || *run.SolverConfigurationSHA256 != configurationSHA256 {
		return errors.New("persistence: formalizer launch model or solver configuration differs from the forecast")
	}
	if len(run.InputClearance) != 1 || run.InputClearance[0] != request.InputClearance || run.Target.StatementID != request.InputClearance.StatementID {
		return errors.New("persistence: formalizer launch receipt must pin exactly its request clearance")
	}
	var forecastReceipt domain.AgentRunReceipt
	if err := decodeStrictEvidenceJSON(forecast.ForecastReceiptBytes, &forecastReceipt); err != nil {
		return fmt.Errorf("persistence: decode forecast run receipt: %w", err)
	}
	if run.Surface != forecastReceipt.Surface {
		return errors.New("persistence: formalizer run funding surface differs from the forecast funding surface")
	}
	if !forecast.Record.Prediction.PredictedAtUTC.Before(*run.ModelIdentityCapturedAtUTC) || run.RecordedAtUTC.Before(*run.ModelIdentityCapturedAtUTC) {
		return errors.New("persistence: formalizer launch chronology does not follow the prediction")
	}
	return nil
}

func classifyFormalizerResult(result formalizer.Result, problem catalog.Problem) (domain.AttackabilityOutcomeStatus, time.Time, bool, error) {
	run := result.RunReceipt
	switch result.Status {
	case "GENERATION_REJECTED":
		if strings.TrimSpace(result.FailureReason) == "" || result.GenerationResponse == "" || result.GenerationResponseSHA256 == "" {
			return "", time.Time{}, false, errors.New("persistence: rejected formalizer generation lacks the exact raw response or failure reason")
		}
		if result.FailureClass == "FORMALIZATION_FAILURE" {
			return domain.AttackabilityFormalizationFailure, run.RecordedAtUTC, false, nil
		}
		if result.FailureClass == "INFRASTRUCTURE_FAILURE" {
			return domain.AttackabilityInfrastructureFailure, run.RecordedAtUTC, false, nil
		}
		return "", time.Time{}, false, errors.New("persistence: unsupported generation-rejection failure class")
	case "GENERATION_INFRASTRUCTURE_FAILURE":
		if result.FailureClass != "INFRASTRUCTURE_FAILURE" || strings.TrimSpace(result.FailureReason) == "" {
			return "", time.Time{}, false, errors.New("persistence: generator infrastructure failure lacks its typed failure disposition")
		}
		return domain.AttackabilityInfrastructureFailure, run.RecordedAtUTC, false, nil
	case "PROPOSITION_REJECTED", "PROPOSITION_ELABORATED", "CHECK_EXECUTION_ERROR":
		candidate := result.Candidate
		if candidate.CandidateID == "" || result.StatementCheck == nil {
			return "", time.Time{}, false, errors.New("persistence: candidate outcome lacks its bound proposition-check receipt")
		}
		if err := result.StatementCheck.ValidateCandidateArtifacts(domain.MathProblem{ID: problem.ID, Statement: problem.InformalStatement, LeanStatement: candidate.LeanStatement}); err != nil {
			return "", time.Time{}, false, fmt.Errorf("persistence: reopen typed proposition-check artifacts: %w", err)
		}
		check := result.StatementCheck
		if check.RecordedAtUTC.Before(run.RecordedAtUTC) {
			return "", time.Time{}, false, errors.New("persistence: proposition-check receipt predates the formalizer launch receipt")
		}
		switch result.Status {
		case "PROPOSITION_REJECTED":
			if result.FailureClass != "FORMALIZATION_FAILURE" || check.Status != "REJECTED" || check.TypecheckPassed || check.RecordedAtUTC.IsZero() {
				return "", time.Time{}, false, errors.New("persistence: proposition rejection does not match a typed failed elaboration")
			}
			return domain.AttackabilityFormalizationFailure, check.RecordedAtUTC, true, nil
		case "PROPOSITION_ELABORATED":
			if result.FailureClass != "" || check.Status != "PASSED" || !check.TypecheckPassed || check.RecordedAtUTC.IsZero() {
				return "", time.Time{}, false, errors.New("persistence: proposition success does not match a typed passing elaboration")
			}
			// Prop elaboration is a candidate-only intermediate result; it is not
			// statement fidelity and cannot be labeled a verified formalization.
			return domain.AttackabilityInProgress, check.RecordedAtUTC, true, nil
		default:
			if result.FailureClass != "INFRASTRUCTURE_FAILURE" || result.FailureReason == "" || check.TypecheckPassed ||
				(check.Status != "EXECUTION_ERROR" && check.Status != "TIMED_OUT" && check.Status != "CANCELLED" &&
					check.Status != "OUTPUT_LIMIT" && check.Status != "TOOLCHAIN_PROBE_FAILED" &&
					check.Status != "COMPILED_ARTIFACT_MISSING" && check.Status != "COMPILED_ARTIFACT_CAPTURE_FAILED") {
				return "", time.Time{}, false, errors.New("persistence: checker execution failure does not match typed infrastructure evidence")
			}
			return domain.AttackabilityInfrastructureFailure, check.RecordedAtUTC, true, nil
		}
	default:
		return "", time.Time{}, false, errors.New("persistence: formalizer status is unsupported by the attackability outcome consumer")
	}
}

func attackabilityForecastTargetInput(forecast AttackabilityForecastArtifact, statementID string) (AttackabilityProviderInputEvidence, bool) {
	for _, input := range forecast.ProviderInputs {
		if input.StatementID == statementID && input.ProblemID == forecast.Record.Target.ProblemID {
			return input, true
		}
	}
	return AttackabilityProviderInputEvidence{}, false
}

func attackabilityOutcomeRecordID(forecastSHA256, formalizerReceiptID string) string {
	return "attackability-outcome-" + sha256Hex([]byte(forecastSHA256 + "\x00" + formalizerReceiptID))[:32]
}

func attackabilityOutcomeRevisionRecordID(previousOutcomeSHA256 string, solverAttemptReceiptIDs []string) string {
	return "attackability-outcome-" + sha256Hex([]byte(previousOutcomeSHA256 + "\x00" + strings.Join(solverAttemptReceiptIDs, "\x00")))[:32]
}

func attackabilityOutcomeStopRevisionRecordID(previousOutcomeSHA256, stopEvidenceID string) string {
	return "attackability-outcome-" + sha256Hex([]byte(previousOutcomeSHA256 + "\x00" + stopEvidenceID))[:32]
}

func attackabilityStopEvidenceID(evidence AttackabilityStopEvidence) string {
	parts := []string{
		evidence.SchemaVersion,
		evidence.StopKind,
		evidence.ParentForecastSHA256,
		evidence.PreviousOutcomeSHA256,
		evidence.FormalizerArtifactSHA256,
		strings.Join(evidence.SolverAttemptReceiptIDs, "\x00"),
		evidence.RequestedBy,
		evidence.Reason,
		evidence.RecordedAtUTC.UTC().Format(time.RFC3339Nano),
	}
	return "attackability-stop-" + sha256Hex([]byte(strings.Join(parts, "\x00")))[:32]
}

func attackabilityFormalizerAttemptID(formalizerSHA256 string) string {
	return "formalizer-artifact-" + formalizerSHA256
}

func marshalOutcomeArtifact(artifact AttackabilityOutcomeArtifact) ([]byte, error) {
	body, err := jsonv2.Marshal(artifact, jsonv2.Deterministic(true))
	if err != nil {
		return nil, fmt.Errorf("persistence: encode attackability outcome artifact: %w", err)
	}
	return body, nil
}

func writeOutcomeObject(directory, target, digest string, body []byte) (bool, error) {
	if existing, err := openRegular(target); err == nil {
		defer existing.Close()
		data, readErr := io.ReadAll(io.LimitReader(existing, attackabilityOutcomeMaxBytes+1))
		if readErr != nil || len(data) == 0 || len(data) > attackabilityOutcomeMaxBytes || sha256Hex(data) != digest || !bytes.Equal(data, body) {
			return false, errors.New("persistence: existing attackability outcome object does not match its content address")
		}
		return false, nil
	} else if !errors.Is(err, os.ErrNotExist) {
		return false, err
	}
	temp, err := os.CreateTemp(directory, ".mathcase-attackability-outcome-*.tmp")
	if err != nil {
		return false, fmt.Errorf("persistence: create outcome temporary file: %w", err)
	}
	tempPath := temp.Name()
	defer func() { _ = os.Remove(tempPath) }()
	if err := temp.Chmod(0o600); err != nil {
		_ = temp.Close()
		return false, fmt.Errorf("persistence: restrict outcome temporary file: %w", err)
	}
	if err := writeAll(temp, body); err != nil {
		_ = temp.Close()
		return false, fmt.Errorf("persistence: write outcome temporary file: %w", err)
	}
	if err := temp.Sync(); err != nil {
		_ = temp.Close()
		return false, fmt.Errorf("persistence: flush outcome temporary file: %w", err)
	}
	if err := temp.Close(); err != nil {
		return false, fmt.Errorf("persistence: close outcome temporary file: %w", err)
	}
	if err := os.Link(tempPath, target); err != nil {
		existing, existingErr := openRegular(target)
		if existingErr == nil {
			defer existing.Close()
			data, readErr := io.ReadAll(io.LimitReader(existing, attackabilityOutcomeMaxBytes+1))
			if readErr == nil && len(data) > 0 && len(data) <= attackabilityOutcomeMaxBytes && sha256Hex(data) == digest && bytes.Equal(data, body) {
				return false, nil
			}
			return false, errors.New("persistence: existing attackability outcome object does not match its content address")
		}
		return false, fmt.Errorf("persistence: append content-addressed outcome: %w", err)
	}
	if err := os.Remove(tempPath); err != nil {
		return false, fmt.Errorf("persistence: remove outcome temporary link: %w", err)
	}
	if err := syncOutcomeDirectory(directory); err != nil {
		return false, err
	}
	return true, nil
}

func appendExclusiveOutcomeLink(directory, target, parentSHA256, outcomeSHA256 string, body []byte) error {
	temp, err := os.CreateTemp(directory, ".mathcase-attackability-child-*.tmp")
	if err != nil {
		return fmt.Errorf("persistence: create outcome link temporary file: %w", err)
	}
	tempPath := temp.Name()
	defer func() { _ = os.Remove(tempPath) }()
	if err := temp.Chmod(0o600); err != nil {
		_ = temp.Close()
		return fmt.Errorf("persistence: restrict outcome link temporary file: %w", err)
	}
	if err := writeAll(temp, body); err != nil {
		_ = temp.Close()
		return fmt.Errorf("persistence: write outcome link temporary file: %w", err)
	}
	if err := temp.Sync(); err != nil {
		_ = temp.Close()
		return fmt.Errorf("persistence: flush outcome link temporary file: %w", err)
	}
	if err := temp.Close(); err != nil {
		return fmt.Errorf("persistence: close outcome link temporary file: %w", err)
	}
	if err := os.Link(tempPath, target); err != nil {
		link, readErr := readOutcomeLink(target, parentSHA256)
		if readErr == nil && link.OutcomeSHA256 == outcomeSHA256 {
			return nil
		}
		if readErr == nil {
			return errors.New("persistence: forecast already has a different outcome child; revision branching is refused")
		}
		return fmt.Errorf("persistence: append exclusive outcome link: %w", err)
	}
	if err := os.Remove(tempPath); err != nil {
		return fmt.Errorf("persistence: remove outcome link temporary link: %w", err)
	}
	if err := syncOutcomeDirectory(directory); err != nil {
		return err
	}
	return nil
}

func appendExclusiveOutcomeRevisionLink(directory, target string, expected AttackabilityOutcomeRevisionLink, body []byte) error {
	temp, err := os.CreateTemp(directory, ".mathcase-attackability-revision-*.tmp")
	if err != nil {
		return fmt.Errorf("persistence: create outcome revision link temporary file: %w", err)
	}
	tempPath := temp.Name()
	defer func() { _ = os.Remove(tempPath) }()
	if err := temp.Chmod(0o600); err != nil {
		_ = temp.Close()
		return fmt.Errorf("persistence: restrict outcome revision link: %w", err)
	}
	if err := writeAll(temp, body); err != nil {
		_ = temp.Close()
		return fmt.Errorf("persistence: write outcome revision link: %w", err)
	}
	if err := temp.Sync(); err != nil {
		_ = temp.Close()
		return fmt.Errorf("persistence: flush outcome revision link: %w", err)
	}
	if err := temp.Close(); err != nil {
		return fmt.Errorf("persistence: close outcome revision link: %w", err)
	}
	if err := os.Link(tempPath, target); err != nil {
		existing, readErr := readOutcomeRevisionLink(target, expected.ParentForecastSHA256)
		if readErr == nil && existing == expected {
			file, openErr := openRegular(target)
			if openErr == nil {
				defer file.Close()
				existingBody, bodyErr := io.ReadAll(io.LimitReader(file, 1<<20))
				if bodyErr == nil && bytes.Equal(existingBody, body) {
					return nil
				}
			}
		}
		if readErr == nil {
			return errors.New("persistence: outcome revision link already exists with different content; revision branching is refused")
		}
		return fmt.Errorf("persistence: append exclusive outcome revision link: %w", err)
	}
	if err := os.Remove(tempPath); err != nil {
		return fmt.Errorf("persistence: remove outcome revision temporary link: %w", err)
	}
	return syncOutcomeDirectory(directory)
}

func readOutcomeLink(path, expectedParent string) (AttackabilityOutcomeLink, error) {
	file, err := openRegular(path)
	if err != nil {
		return AttackabilityOutcomeLink{}, err
	}
	defer file.Close()
	const maxLinkBytes = 1 << 20
	data, err := io.ReadAll(io.LimitReader(file, maxLinkBytes))
	if err != nil {
		return AttackabilityOutcomeLink{}, fmt.Errorf("persistence: read attackability outcome link: %w", err)
	}
	if len(data) == 0 || len(data) >= maxLinkBytes {
		return AttackabilityOutcomeLink{}, errors.New("persistence: attackability outcome link is empty or too large")
	}
	var link AttackabilityOutcomeLink
	if err := jsonv2.Unmarshal(data, &link, jsonv2.RejectUnknownMembers(true)); err != nil {
		return AttackabilityOutcomeLink{}, fmt.Errorf("persistence: decode attackability outcome link: %w", err)
	}
	if link.SchemaVersion != attackabilityOutcomeLinkSchema || link.ParentForecastSHA256 != expectedParent || !validSHA256(link.OutcomeSHA256) {
		return AttackabilityOutcomeLink{}, errors.New("persistence: attackability outcome link identity is invalid")
	}
	return link, nil
}

func readOutcomeRevisionLink(path, expectedParent string) (AttackabilityOutcomeRevisionLink, error) {
	file, err := openRegular(path)
	if err != nil {
		return AttackabilityOutcomeRevisionLink{}, err
	}
	defer file.Close()
	const maxLinkBytes = 1 << 20
	data, err := io.ReadAll(io.LimitReader(file, maxLinkBytes))
	if err != nil {
		return AttackabilityOutcomeRevisionLink{}, fmt.Errorf("persistence: read attackability outcome revision link: %w", err)
	}
	if len(data) == 0 || len(data) >= maxLinkBytes {
		return AttackabilityOutcomeRevisionLink{}, errors.New("persistence: attackability outcome revision link is empty or too large")
	}
	var link AttackabilityOutcomeRevisionLink
	if err := jsonv2.Unmarshal(data, &link, jsonv2.RejectUnknownMembers(true)); err != nil {
		return AttackabilityOutcomeRevisionLink{}, fmt.Errorf("persistence: decode attackability outcome revision link: %w", err)
	}
	if link.SchemaVersion != attackabilityOutcomeRevisionLink || link.ParentForecastSHA256 != expectedParent || link.RecordRevision < 3 ||
		!validSHA256(link.PreviousOutcomeSHA256) || !validSHA256(link.OutcomeSHA256) || link.PreviousOutcomeSHA256 == link.OutcomeSHA256 {
		return AttackabilityOutcomeRevisionLink{}, errors.New("persistence: attackability outcome revision link identity is invalid")
	}
	return link, nil
}

func checkOutcomeDirectoryTree(root, directory string) error {
	if err := ensureContained(root, directory); err != nil {
		return err
	}
	relative, err := filepath.Rel(root, directory)
	if err != nil || relative == ".." || strings.HasPrefix(relative, ".."+string(filepath.Separator)) {
		return errors.New("persistence: attackability outcome directory escapes its root")
	}
	current := root
	if err := checkDirectory(current); err != nil {
		return err
	}
	for _, part := range strings.Split(relative, string(filepath.Separator)) {
		if part == "" || part == "." {
			continue
		}
		current = filepath.Join(current, part)
		info, err := os.Lstat(current)
		if err != nil {
			return fmt.Errorf("persistence: inspect attackability outcome directory: %w", err)
		}
		if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
			return errors.New("persistence: attackability outcome path contains a non-directory or symbolic link")
		}
	}
	return nil
}

func attackabilityOutcomeReceipt(root, path, digest string, artifact AttackabilityOutcomeArtifact, size int64) AttackabilityOutcomeReceipt {
	relative, _ := filepath.Rel(root, path)
	return AttackabilityOutcomeReceipt{
		ContentSHA256: digest, ParentForecastSHA256: artifact.ParentForecastSHA256,
		FormalizerArtifactSHA256: artifact.FormalizerArtifactSHA256,
		RelativePath:             filepath.ToSlash(relative), Size: size,
	}
}

func syncOutcomeDirectory(directory string) error {
	if runtime.GOOS == "windows" {
		return nil
	}
	file, err := os.Open(directory)
	if err != nil {
		return fmt.Errorf("persistence: open outcome directory for sync: %w", err)
	}
	syncErr := file.Sync()
	closeErr := file.Close()
	if syncErr != nil {
		return fmt.Errorf("persistence: sync outcome directory: %w", syncErr)
	}
	if closeErr != nil {
		return fmt.Errorf("persistence: close outcome directory: %w", closeErr)
	}
	return nil
}
