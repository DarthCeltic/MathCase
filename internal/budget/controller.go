// MathCase project contact: DarthCeltic
// Email: 178664201+DarthCeltic@users.noreply.github.com
// Repository: https://github.com/DarthCeltic/MathCase

// Package budget provides provider-neutral token cost estimation and
// reservation-based spending limits for model calls.
package budget

import (
	"errors"
	"fmt"
	"sync"
	"time"

	"github.com/DarthCeltic/MathCase/internal/provider"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	tokensPerMillion int64 = 1_000_000
	maxInt64               = int64(^uint64(0) >> 1)
)

// TaskM7Expositor is the stable task ID for the single five-tier author call.
const TaskM7Expositor = "m7-expositor"

var (
	// ErrPriceUnknown indicates that cost estimation lacks an approved live rate.
	ErrPriceUnknown = errors.New("budget: provider price is unknown")
	// ErrReservationClosed indicates that a reservation was already committed
	// or released.
	ErrReservationClosed = errors.New("budget: reservation is already closed")
	// ErrActualExceedsLimit indicates that provider usage exceeded its admitted
	// projected cost.
	ErrActualExceedsLimit = errors.New("budget: actual cost exceeds reservation")
	// ErrSessionHalted indicates a prior accounting failure stopped further
	// provider reservations for this controller's session.
	ErrSessionHalted = errors.New("budget: session halted after an accounting safety failure")
	// ErrInvalidCostHistory indicates that a journal cannot safely restore a
	// session budget because its call lifecycle is missing, duplicated, or
	// inconsistent.
	ErrInvalidCostHistory = errors.New("budget: cost history cannot restore a session safely")
)

// CallState identifies a durable transition in a provider-call journal.
type CallState string

const (
	CallStarted  CallState = "started"
	CallFinished CallState = "finished"
)

// Price contains live provider rates expressed in micro-USD per million
// tokens. Known zero rates are valid for a genuinely free provider; unknown
// rates must not be treated as zero.
type Price struct {
	Known                  bool
	InputPerMillionMicros  int64
	OutputPerMillionMicros int64
}

// CostRecord is a sanitized accounting event for one model call. Costs are
// stored in integer micro-USD; provider secrets and response content do not
// belong in this record.
type CostRecord struct {
	ID                    string        `json:"id,omitzero"`
	CallState             CallState     `json:"call_state"`
	RunID                 string        `json:"run_id"`
	ProviderID            string        `json:"provider_id"`
	AccountProfile        string        `json:"account_profile"`
	Model                 string        `json:"model"`
	ModelVersion          string        `json:"model_version,omitzero"`
	TaskID                string        `json:"task_id"`
	CandidateID           string        `json:"candidate_id"`
	Retry                 int           `json:"retry"`
	InputTokens           int           `json:"input_tokens"`
	OutputTokens          int           `json:"output_tokens"`
	StartedAt             time.Time     `json:"started_at"`
	FinishedAt            time.Time     `json:"finished_at"`
	Latency               time.Duration `json:"latency"`
	CostCeilingMicros     int64         `json:"cost_ceiling_micros"`
	EstimatedCostMicros   int64         `json:"estimated_cost_micros"`
	UsageReported         bool          `json:"usage_reported,omitzero"`
	UsageValid            bool          `json:"usage_valid,omitzero"`
	CostKnown             bool          `json:"cost_known,omitzero"`
	ProviderCallID        string        `json:"provider_call_id,omitzero"`
	ProviderOutcome       string        `json:"provider_outcome,omitzero"`
	TransportOutcome      string        `json:"transport_outcome,omitzero"`
	HTTPStatusCode        int           `json:"http_status_code,omitzero"`
	GenerationOutcome     string        `json:"generation_outcome,omitzero"`
	DecoderOutcome        string        `json:"decoder_outcome,omitzero"`
	OracleStatusAtCapture string        `json:"oracle_status_at_capture,omitzero"`
	OracleResult          string        `json:"oracle_result,omitzero"`
}

// CostCallJournal durably records the call ceiling before a provider call and
// its final charge after the provider returns.
type CostCallJournal interface {
	BeginCall(CostRecord) error
	FinishCall(CostRecord) error
}

// MemoryCostJournal is a race-safe call journal for tests and short-lived
// local runs. It preserves the same start/finish ordering as JSONLRecorder.
type MemoryCostJournal struct {
	mu      sync.Mutex
	records []CostRecord
	started map[string]CostRecord
	seen    map[string]struct{}
}

// BeginCall records the cost ceiling before a provider call can begin.
func (r *MemoryCostJournal) BeginCall(record CostRecord) error {
	if record.CallState != CallStarted {
		return fmt.Errorf("budget: begin event must have state %q", CallStarted)
	}
	if err := validateCostRecord(record); err != nil {
		return err
	}
	r.mu.Lock()
	defer r.mu.Unlock()
	if r.started == nil {
		r.started = make(map[string]CostRecord)
		r.seen = make(map[string]struct{})
	}
	if _, exists := r.seen[record.ID]; exists {
		return fmt.Errorf("budget: duplicate call ID %q", record.ID)
	}
	r.started[record.ID] = record
	r.seen[record.ID] = struct{}{}
	r.records = append(r.records, record)
	return nil
}

// FinishCall records the final conservative or provider-reported charge.
func (r *MemoryCostJournal) FinishCall(record CostRecord) error {
	if record.CallState != CallFinished {
		return fmt.Errorf("budget: finish event must have state %q", CallFinished)
	}
	if err := validateCostRecord(record); err != nil {
		return err
	}
	r.mu.Lock()
	defer r.mu.Unlock()
	start, exists := r.started[record.ID]
	if !exists {
		return fmt.Errorf("budget: call %q has no start event", record.ID)
	}
	if err := validateCallPair(start, record); err != nil {
		return err
	}
	delete(r.started, record.ID)
	r.records = append(r.records, record)
	return nil
}

// Records returns a snapshot of every recorded start and finish event.
func (r *MemoryCostJournal) Records() []CostRecord {
	r.mu.Lock()
	defer r.mu.Unlock()
	return append([]CostRecord(nil), r.records...)
}

func validateCostRecord(record CostRecord) error {
	if record.ID == "" {
		return errors.New("budget: cost record ID is required")
	}
	if record.CallState != CallStarted && record.CallState != CallFinished {
		return errors.New("budget: cost record has an invalid call state")
	}
	for name, value := range map[string]string{
		"cost record ID": record.ID, "run ID": record.RunID, "provider ID": record.ProviderID, "task ID": record.TaskID, "candidate ID": record.CandidateID, "provider call ID": record.ProviderCallID,
	} {
		if value != "" {
			if err := state.ValidateIdentifier(name, value); err != nil {
				return fmt.Errorf("budget: %w", err)
			}
		}
	}
	if record.Retry < 0 || record.InputTokens < 0 || record.OutputTokens < 0 || record.CostCeilingMicros < 0 || record.EstimatedCostMicros < 0 {
		return errors.New("budget: cost record contains a negative value")
	}
	if record.RunID == "" || record.ProviderID == "" || record.TaskID == "" {
		return errors.New("budget: cost record requires run, provider, and task identities")
	}
	if record.CallState == CallFinished && record.ProviderOutcome == "returned" && record.ProviderCallID == "" {
		return errors.New("budget: successful provider call requires its provider-issued call ID")
	}
	if record.StartedAt.IsZero() || record.Latency < 0 {
		return errors.New("budget: cost record has an invalid start time or latency")
	}
	if record.CallState == CallStarted {
		if record.CostKnown || record.EstimatedCostMicros != record.CostCeilingMicros ||
			!record.FinishedAt.IsZero() || record.Latency != 0 || record.InputTokens != 0 ||
			record.OutputTokens != 0 || record.UsageReported || record.UsageValid ||
			record.ProviderOutcome != "" || record.TransportOutcome != "" ||
			record.HTTPStatusCode != 0 || record.GenerationOutcome != "" || record.DecoderOutcome != "" {
			return errors.New("budget: call-start event must contain only the full reserved ceiling and call identity")
		}
	}
	if record.CallState == CallFinished && (record.FinishedAt.IsZero() || record.FinishedAt.Before(record.StartedAt)) {
		return errors.New("budget: call-finish event has an invalid finish time")
	}
	if record.CallState == CallFinished && !record.CostKnown && record.EstimatedCostMicros != record.CostCeilingMicros {
		return errors.New("budget: unknown call cost must charge the full ceiling")
	}
	if record.HTTPStatusCode != 0 && (record.HTTPStatusCode < 100 || record.HTTPStatusCode > 599) {
		return errors.New("budget: cost record contains an invalid HTTP status")
	}
	for name, value := range map[string]string{
		"provider outcome": record.ProviderOutcome, "transport outcome": record.TransportOutcome,
		"generation outcome": record.GenerationOutcome, "decoder outcome": record.DecoderOutcome,
		"oracle status at capture": record.OracleStatusAtCapture,
	} {
		if value != "" {
			if err := state.ValidateIdentifier(name, value); err != nil {
				return fmt.Errorf("budget: %w", err)
			}
		}
	}
	return nil
}

// Validate reports whether the record is a well-formed start or finish event.
func (record CostRecord) Validate() error {
	return validateCostRecord(record)
}

func validateCallPair(start, finish CostRecord) error {
	if start.CallState != CallStarted || finish.CallState != CallFinished ||
		start.ID != finish.ID || start.RunID != finish.RunID || start.ProviderID != finish.ProviderID ||
		start.AccountProfile != finish.AccountProfile || start.Model != finish.Model ||
		start.ModelVersion != finish.ModelVersion ||
		start.TaskID != finish.TaskID || start.Retry != finish.Retry ||
		(start.ProviderCallID != "" && start.ProviderCallID != finish.ProviderCallID) ||
		start.CostCeilingMicros != finish.CostCeilingMicros ||
		!start.StartedAt.Equal(finish.StartedAt) ||
		(start.CandidateID != "" && start.CandidateID != finish.CandidateID) {
		return fmt.Errorf("%w: start and finish events do not describe the same provider call", ErrInvalidCostHistory)
	}
	if finish.FinishedAt.Before(start.StartedAt) {
		return fmt.Errorf("%w: provider call finished before it started", ErrInvalidCostHistory)
	}
	return nil
}

// ValidateCostCallPair confirms that a finish event completes the exact call
// admitted by its start event.
func ValidateCostCallPair(start, finish CostRecord) error {
	if err := validateCostRecord(start); err != nil {
		return err
	}
	if err := validateCostRecord(finish); err != nil {
		return err
	}
	return validateCallPair(start, finish)
}

// Estimate returns a conservative integer micro-USD estimate from provider
// reported usage. It rounds each non-zero component up so a cheap call cannot
// disappear solely because of fractional micro-USD arithmetic.
func (p Price) Estimate(usage provider.Usage) (int64, error) {
	if !p.Known {
		return 0, ErrPriceUnknown
	}
	if usage.PromptTokens < 0 || usage.CompletionTokens < 0 || usage.TotalTokens < 0 {
		return 0, errors.New("budget: token usage cannot be negative")
	}
	if p.InputPerMillionMicros < 0 || p.OutputPerMillionMicros < 0 {
		return 0, errors.New("budget: token price cannot be negative")
	}
	input, err := estimateComponent(int64(usage.PromptTokens), p.InputPerMillionMicros)
	if err != nil {
		return 0, fmt.Errorf("budget: estimate input cost: %w", err)
	}
	output, err := estimateComponent(int64(usage.CompletionTokens), p.OutputPerMillionMicros)
	if err != nil {
		return 0, fmt.Errorf("budget: estimate output cost: %w", err)
	}
	if input > maxInt64-output {
		return 0, errors.New("budget: estimated cost overflows integer range")
	}
	return input + output, nil
}

func estimateComponent(tokens, pricePerMillionMicros int64) (int64, error) {
	if tokens == 0 || pricePerMillionMicros == 0 {
		return 0, nil
	}
	if tokens > maxInt64/pricePerMillionMicros {
		return 0, errors.New("cost overflows integer range")
	}
	product := tokens * pricePerMillionMicros
	result := product / tokensPerMillion
	if product%tokensPerMillion != 0 {
		result++
	}
	return result, nil
}

// Limits are hard spending ceilings in micro-USD. All ceilings are required
// so a caller cannot accidentally create an unbounded paid controller.
type Limits struct {
	MaxRunMicros       int64
	MaxSessionMicros   int64
	MaxCandidateMicros int64
}

// Controller owns session-wide spending limits. Each task obtains its own
// RunBudget so a run ceiling cannot accidentally become a second session
// ceiling when the controller is reused.
type Controller struct {
	mu sync.Mutex

	limits           Limits
	sessionSpent     int64
	sessionReserved  int64
	restoredRunSpent map[string]int64
	runBudgets       map[string]*RunBudget
	halted           bool
}

// NewController constructs a fail-closed spending controller.
func NewController(limits Limits) (*Controller, error) {
	if err := validateLimits(limits); err != nil {
		return nil, err
	}
	return &Controller{
		limits:           limits,
		restoredRunSpent: make(map[string]int64),
		runBudgets:       make(map[string]*RunBudget),
	}, nil
}

func validateLimits(limits Limits) error {
	if limits.MaxRunMicros <= 0 || limits.MaxSessionMicros <= 0 || limits.MaxCandidateMicros <= 0 {
		return errors.New("budget: all spending limits must be positive")
	}
	return nil
}

// RestoreController rebuilds session and per-run spending from one session's
// ordered provider-call journal. An unfinished call is charged its full
// ceiling and halts the restored session because the provider may have billed
// it before a process interruption. The caller must give this constructor the
// complete, exclusively owned journal for the intended session.
func RestoreController(limits Limits, records []CostRecord) (*Controller, error) {
	if err := validateLimits(limits); err != nil {
		return nil, err
	}
	controller := &Controller{limits: limits}
	started := make(map[string]CostRecord)
	seen := make(map[string]struct{}, len(records))
	runSpent := make(map[string]int64)
	for _, record := range records {
		if err := validateCostRecord(record); err != nil {
			return nil, fmt.Errorf("%w: %v", ErrInvalidCostHistory, err)
		}
		switch record.CallState {
		case CallStarted:
			if _, exists := seen[record.ID]; exists {
				return nil, fmt.Errorf("%w: duplicate call ID %q", ErrInvalidCostHistory, record.ID)
			}
			seen[record.ID] = struct{}{}
			started[record.ID] = record
		case CallFinished:
			start, exists := started[record.ID]
			if !exists {
				return nil, fmt.Errorf("%w: call %q has no preceding start event", ErrInvalidCostHistory, record.ID)
			}
			if err := validateCallPair(start, record); err != nil {
				return nil, err
			}
			delete(started, record.ID)
			if record.EstimatedCostMicros > start.CostCeilingMicros {
				controller.halted = true
			}
			if err := addSessionCharge(controller, record.EstimatedCostMicros); err != nil {
				return nil, err
			}
			if err := addRunCharge(runSpent, record.RunID, record.EstimatedCostMicros); err != nil {
				return nil, err
			}
		default:
			return nil, fmt.Errorf("%w: invalid call state %q", ErrInvalidCostHistory, record.CallState)
		}
	}
	for _, record := range started {
		controller.halted = true
		if err := addSessionCharge(controller, record.CostCeilingMicros); err != nil {
			return nil, err
		}
		if err := addRunCharge(runSpent, record.RunID, record.CostCeilingMicros); err != nil {
			return nil, err
		}
	}
	if controller.sessionSpent > limits.MaxSessionMicros {
		controller.halted = true
	}
	controller.restoredRunSpent = runSpent
	controller.runBudgets = make(map[string]*RunBudget, len(runSpent))
	for runID, spent := range runSpent {
		if spent > limits.MaxRunMicros {
			controller.halted = true
		}
		controller.runBudgets[runID] = &RunBudget{controller: controller, runID: runID, runSpent: spent}
	}
	return controller, nil
}

func addSessionCharge(controller *Controller, amount int64) error {
	if amount > maxInt64-controller.sessionSpent {
		return fmt.Errorf("%w: cumulative session charge overflows integer range", ErrInvalidCostHistory)
	}
	controller.sessionSpent += amount
	return nil
}

func addRunCharge(spent map[string]int64, runID string, amount int64) error {
	current := spent[runID]
	if amount > maxInt64-current {
		return fmt.Errorf("%w: cumulative run charge overflows integer range", ErrInvalidCostHistory)
	}
	spent[runID] = current + amount
	return nil
}

// RunBudget creates an independent per-task budget backed by the controller's
// shared session ceiling.
func (c *Controller) RunBudget() *RunBudget {
	return &RunBudget{controller: c}
}

// RunBudgetFor returns the single shared budget for one canonical run ID. A
// restored controller seeds that budget with charges already present in the
// durable call journal.
func (c *Controller) RunBudgetFor(runID string) (*RunBudget, error) {
	if c == nil {
		return nil, errors.New("budget: controller is nil")
	}
	if err := state.ValidateIdentifier("run ID", runID); err != nil {
		return nil, fmt.Errorf("budget: %w", err)
	}
	c.mu.Lock()
	defer c.mu.Unlock()
	if c.runBudgets == nil {
		c.runBudgets = make(map[string]*RunBudget)
	}
	if existing, exists := c.runBudgets[runID]; exists {
		return existing, nil
	}
	run := &RunBudget{controller: c, runID: runID, runSpent: c.restoredRunSpent[runID]}
	c.runBudgets[runID] = run
	return run, nil
}

// RunBudget tracks one task's run ceiling while sharing session accounting
// with its parent controller.
type RunBudget struct {
	mu sync.Mutex

	controller  *Controller
	runID       string
	runSpent    int64
	runReserved int64
}

// Reservation represents one admitted model-call budget. It is safe to use
// from only the goroutine that owns the corresponding model call.
type Reservation struct {
	run    *RunBudget
	amount int64
	closed bool
}

// Reserve admits projectedCost if the run, session, and candidate ceilings
// remain available.
func (r *RunBudget) Reserve(projectedCost int64) (*Reservation, error) {
	if projectedCost < 0 {
		return nil, errors.New("budget: projected cost cannot be negative")
	}
	r.mu.Lock()
	defer r.mu.Unlock()
	r.controller.mu.Lock()
	defer r.controller.mu.Unlock()
	if r.controller.halted {
		return nil, ErrSessionHalted
	}
	if projectedCost > r.controller.limits.MaxCandidateMicros {
		return nil, newLimitError("candidate", r.controller.limits.MaxCandidateMicros, 0, projectedCost)
	}
	if err := withinLimit(r.runSpent, r.runReserved, projectedCost, r.controller.limits.MaxRunMicros); err != nil {
		return nil, newLimitError("run", r.controller.limits.MaxRunMicros, r.runSpent+r.runReserved, projectedCost)
	}
	if err := withinLimit(r.controller.sessionSpent, r.controller.sessionReserved, projectedCost, r.controller.limits.MaxSessionMicros); err != nil {
		return nil, newLimitError("session", r.controller.limits.MaxSessionMicros, r.controller.sessionSpent+r.controller.sessionReserved, projectedCost)
	}
	r.runReserved += projectedCost
	r.controller.sessionReserved += projectedCost
	return &Reservation{run: r, amount: projectedCost}, nil
}

func withinLimit(spent, reserved, requested, limit int64) error {
	if spent > maxInt64-reserved || spent+reserved > maxInt64-requested || spent+reserved+requested > limit {
		return errors.New("limit exceeded")
	}
	return nil
}

type limitError struct {
	scope     string
	limit     int64
	used      int64
	requested int64
}

func newLimitError(scope string, limit, used, requested int64) error {
	return &limitError{scope: scope, limit: limit, used: used, requested: requested}
}

func (e *limitError) Error() string {
	return fmt.Sprintf("budget: %s limit exceeded (used=%d requested=%d limit=%d micro-USD)", e.scope, e.used, e.requested, e.limit)
}

// Commit closes the reservation using actual provider-reported cost. If the
// provider exceeds the reserved ceiling, Commit still charges the reported
// amount, halts the shared session, and returns ErrActualExceedsLimit.
func (r *Reservation) Commit(actualCost int64) error {
	if actualCost < 0 {
		return errors.New("budget: actual cost cannot be negative")
	}
	r.run.mu.Lock()
	defer r.run.mu.Unlock()
	r.run.controller.mu.Lock()
	defer r.run.controller.mu.Unlock()
	if r.closed {
		return ErrReservationClosed
	}
	if actualCost > r.amount {
		r.run.runReserved -= r.amount
		r.run.controller.sessionReserved -= r.amount
		r.run.runSpent = addSaturating(r.run.runSpent, actualCost)
		r.run.controller.sessionSpent = addSaturating(r.run.controller.sessionSpent, actualCost)
		r.run.controller.halted = true
		r.closed = true
		return fmt.Errorf("%w: actual=%d reserved=%d micro-USD; session halted", ErrActualExceedsLimit, actualCost, r.amount)
	}
	r.run.runReserved -= r.amount
	r.run.controller.sessionReserved -= r.amount
	r.run.runSpent += actualCost
	r.run.controller.sessionSpent += actualCost
	r.closed = true
	return nil
}

func addSaturating(current, additional int64) int64 {
	if additional > maxInt64-current {
		return maxInt64
	}
	return current + additional
}

// Release closes a reservation without charging it.
func (r *Reservation) Release() error {
	r.run.mu.Lock()
	defer r.run.mu.Unlock()
	r.run.controller.mu.Lock()
	defer r.run.controller.mu.Unlock()
	if r.closed {
		return ErrReservationClosed
	}
	r.run.runReserved -= r.amount
	r.run.controller.sessionReserved -= r.amount
	r.closed = true
	return nil
}

// Snapshot reports one run's charged and reserved amounts without exposing
// internal synchronization state.
type Snapshot struct {
	RunSpentMicros        int64
	RunReservedMicros     int64
	SessionSpentMicros    int64
	SessionReservedMicros int64
}

// Snapshot returns this run's current accounting state.
func (r *RunBudget) Snapshot() Snapshot {
	r.mu.Lock()
	defer r.mu.Unlock()
	r.controller.mu.Lock()
	defer r.controller.mu.Unlock()
	return Snapshot{
		RunSpentMicros:        r.runSpent,
		RunReservedMicros:     r.runReserved,
		SessionSpentMicros:    r.controller.sessionSpent,
		SessionReservedMicros: r.controller.sessionReserved,
	}
}

// HaltSession prevents future paid reservations from every run sharing this
// controller. Use it when a completed provider call cannot be durably
// accounted for.
func (r *RunBudget) HaltSession() {
	r.controller.mu.Lock()
	defer r.controller.mu.Unlock()
	r.controller.halted = true
}

// SessionSnapshot reports session-wide charged and reserved amounts.
type SessionSnapshot struct {
	SpentMicros    int64
	ReservedMicros int64
}

// SessionSnapshot returns the controller's current session accounting state.
func (c *Controller) SessionSnapshot() SessionSnapshot {
	c.mu.Lock()
	defer c.mu.Unlock()
	return SessionSnapshot{SpentMicros: c.sessionSpent, ReservedMicros: c.sessionReserved}
}
