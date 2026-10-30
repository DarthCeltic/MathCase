package application

import (
	"context"
	"crypto/rand"
	"encoding/hex"
	"errors"
	"fmt"
	"strings"
	"sync"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/expositor"
	"github.com/DarthCeltic/MathCase/internal/state"
)

var (
	// ErrExpositorSessionClosed indicates generation was attempted after close began.
	ErrExpositorSessionClosed = errors.New("application: exposition session is closed")
	// ErrExpositorSessionUsed prevents a second bundle attempt in one M7 session.
	ErrExpositorSessionUsed = errors.New("application: exposition session already attempted its one bundle call")
	// ErrExpositorSessionConfig indicates missing cost, identity, or author settings.
	ErrExpositorSessionConfig = errors.New("application: invalid budgeted exposition session configuration")
)

// BudgetedExpositorSessionConfig requires an explicit author identity, run,
// hard call ceiling, durable local accounting path, and M0-bound provider-input
// verifier. It does not configure a provider or choose an author implementation.
type BudgetedExpositorSessionConfig struct {
	CostJournalPath   string
	RunID             string
	ProviderID        string
	AccountProfile    string
	ModelID           string
	ModelVersion      string
	BudgetLimits      budget.Limits
	MaxCallCostMicros int64
	Author            expositor.BundleAuthor
	ClearanceVerifier expositor.ProviderInputClearanceVerifier
	Now               func() time.Time
}

// BudgetedExpositorSession admits one all-five-tier author call. When the
// injected author cannot report trusted usage, the full configured ceiling is
// charged, including for ambiguous failures after call start.
type BudgetedExpositorSession struct {
	mu           sync.Mutex
	active       sync.WaitGroup
	closeDone    chan struct{}
	closeStarted bool
	closeErr     error
	used         bool
	costs        *budget.CostSession
	runBudget    *budget.RunBudget
	journal      budget.CostCallJournal
	config       BudgetedExpositorSessionConfig
}

// OpenBudgetedExpositorSession takes exclusive ownership of a local cost
// journal until Close. The caller must explicitly supply the author; no model
// route is registered by default.
func OpenBudgetedExpositorSession(config BudgetedExpositorSessionConfig) (*BudgetedExpositorSession, error) {
	if config.Author == nil || config.ClearanceVerifier == nil || config.MaxCallCostMicros <= 0 ||
		strings.TrimSpace(config.ModelID) == "" || strings.TrimSpace(config.ModelVersion) == "" ||
		strings.TrimSpace(config.AccountProfile) == "" || strings.ContainsAny(config.AccountProfile, "\x00\r\n") {
		return nil, ErrExpositorSessionConfig
	}
	if err := state.ValidateIdentifier("run ID", config.RunID); err != nil {
		return nil, fmt.Errorf("application: invalid exposition run ID: %w", err)
	}
	if err := state.ValidateIdentifier("provider ID", config.ProviderID); err != nil {
		return nil, fmt.Errorf("application: invalid exposition provider ID: %w", err)
	}
	if config.CostJournalPath == "" {
		return nil, ErrExpositorSessionConfig
	}
	journalPath, err := prepareLocalCostJournalPath(config.CostJournalPath)
	if err != nil {
		return nil, err
	}
	costs, err := budget.OpenCostSession(journalPath, config.BudgetLimits)
	if err != nil {
		return nil, fmt.Errorf("application: open exposition cost session: %w", err)
	}
	runBudget, err := costs.RunBudgetFor(config.RunID)
	if err != nil {
		closeErr := costs.Close()
		return nil, errors.Join(fmt.Errorf("application: restore exposition run budget: %w", err), closeErr)
	}
	if config.Now == nil {
		config.Now = time.Now
	}
	return &BudgetedExpositorSession{
		closeDone: make(chan struct{}),
		costs:     costs,
		runBudget: runBudget,
		journal:   costs.Journal(),
		config:    config,
	}, nil
}

// Generate validates and accepts one complete M7 bundle through the existing
// all-or-nothing boundary, with the cost ceiling synced before the author call.
func (s *BudgetedExpositorSession) Generate(ctx context.Context, input expositor.BundleGenerationInput) (expositor.Bundle, error) {
	if s == nil {
		return expositor.Bundle{}, ErrExpositorSessionClosed
	}
	if ctx == nil {
		return expositor.Bundle{}, errors.New("application: exposition generation context is required")
	}
	if err := input.Validate(); err != nil {
		return expositor.Bundle{}, err
	}
	verifiedInput, err := expositor.VerifyBundleGenerationInput(ctx, input, s.config.ClearanceVerifier)
	if err != nil {
		return expositor.Bundle{}, fmt.Errorf("application: verify exposition provider input: %w", err)
	}
	if err := ctx.Err(); err != nil {
		return expositor.Bundle{}, fmt.Errorf("application: exposition generation canceled before admission: %w", err)
	}

	s.mu.Lock()
	if s.closeStarted {
		s.mu.Unlock()
		return expositor.Bundle{}, ErrExpositorSessionClosed
	}
	if s.used {
		s.mu.Unlock()
		return expositor.Bundle{}, ErrExpositorSessionUsed
	}
	s.used = true
	s.active.Add(1)
	s.mu.Unlock()
	defer s.active.Done()

	reservation, err := s.runBudget.Reserve(s.config.MaxCallCostMicros)
	if err != nil {
		return expositor.Bundle{}, fmt.Errorf("application: reserve exposition author ceiling: %w", err)
	}
	started := s.config.Now().UTC()
	if started.IsZero() {
		_ = reservation.Release()
		return expositor.Bundle{}, errors.New("application: exposition cost record start time is required")
	}
	callID, err := newExpositionCallID()
	if err != nil {
		_ = reservation.Release()
		return expositor.Bundle{}, fmt.Errorf("application: create exposition call ID: %w", err)
	}
	verifiedInput, err = verifiedInput.WithAuthorCallID(callID)
	if err != nil {
		_ = reservation.Release()
		return expositor.Bundle{}, fmt.Errorf("application: bind exposition author call ID: %w", err)
	}
	start := budget.CostRecord{
		ID: callID, CallState: budget.CallStarted, RunID: s.config.RunID,
		ProviderID: s.config.ProviderID, AccountProfile: s.config.AccountProfile,
		Model: s.config.ModelID, ModelVersion: s.config.ModelVersion,
		TaskID: budget.TaskM7Expositor, CandidateID: input.ProblemID,
		StartedAt:         started,
		CostCeilingMicros: s.config.MaxCallCostMicros, EstimatedCostMicros: s.config.MaxCallCostMicros,
	}
	if err := s.journal.BeginCall(start); err != nil {
		s.runBudget.HaltSession()
		releaseErr := reservation.Release()
		return expositor.Bundle{}, errors.Join(fmt.Errorf("application: record exposition call ceiling: %w", err), releaseErr)
	}

	input.AuthorCallID = callID
	bundle, generateErr := expositor.GenerateBundle(ctx, verifiedInput, s.config.Author)
	providerCallID := bundle.ProviderCallID
	if generateErr != nil {
		if fromError := expositor.ProviderCallIDFromError(generateErr); fromError != "" {
			providerCallID = fromError
		}
	}
	if generateErr == nil && (bundle.ExpositorModelID != s.config.ModelID || bundle.ExpositorVersion != s.config.ModelVersion) {
		bundle = expositor.Bundle{}
		generateErr = errors.New("expositor: generated bundle model identity does not match the budgeted session")
	}
	if generateErr == nil && providerCallID == "" {
		bundle = expositor.Bundle{}
		generateErr = errors.New("expositor: generated bundle has no provider-issued call ID")
	}
	finished := s.config.Now().UTC()
	if finished.IsZero() || finished.Before(started) {
		finished = started
	}
	finish := start
	finish.CallState = budget.CallFinished
	if providerCallID != "" {
		finish.ProviderCallID = providerCallID
	}
	finish.FinishedAt = finished
	finish.Latency = finished.Sub(started)
	finish.ProviderOutcome = "returned"
	finish.GenerationOutcome = "complete"
	finish.DecoderOutcome = "accepted"
	if generateErr != nil {
		finish.ProviderOutcome = "error"
		finish.GenerationOutcome = "failed"
		finish.DecoderOutcome = "rejected"
	}
	journalErr := s.journal.FinishCall(finish)
	commitErr := reservation.Commit(s.config.MaxCallCostMicros)
	if journalErr != nil || commitErr != nil {
		s.runBudget.HaltSession()
		return expositor.Bundle{}, errors.Join(generateErr, wrapCostError("record exposition call result", journalErr), wrapCostError("charge exposition call ceiling", commitErr))
	}
	if generateErr != nil {
		return expositor.Bundle{}, generateErr
	}
	receipt, err := s.costs.CallReceipt(callID)
	if err != nil {
		s.runBudget.HaltSession()
		return expositor.Bundle{}, fmt.Errorf("application: create exposition accounting receipt: %w", err)
	}
	bundle.AccountingReceipt = &receipt
	if err := bundle.Validate(input.WordLimits); err != nil {
		s.runBudget.HaltSession()
		return expositor.Bundle{}, fmt.Errorf("application: validate exposition accounting receipt: %w", err)
	}
	return bundle, nil
}

// Close rejects new generation, waits for an in-flight author call, and then
// releases the durable journal lock. Concurrent closes receive the same result.
func (s *BudgetedExpositorSession) Close() error {
	if s == nil {
		return ErrExpositorSessionClosed
	}
	s.mu.Lock()
	if s.closeStarted {
		done := s.closeDone
		s.mu.Unlock()
		<-done
		s.mu.Lock()
		defer s.mu.Unlock()
		return s.closeErr
	}
	s.closeStarted = true
	s.mu.Unlock()

	s.active.Wait()
	err := s.costs.Close()
	s.mu.Lock()
	s.closeErr = err
	close(s.closeDone)
	s.mu.Unlock()
	return err
}

func newExpositionCallID() (string, error) {
	var raw [16]byte
	if _, err := rand.Read(raw[:]); err != nil {
		return "", err
	}
	return "m7call-" + hex.EncodeToString(raw[:]), nil
}

func wrapCostError(operation string, err error) error {
	if err == nil {
		return nil
	}
	return fmt.Errorf("application: %s: %w", operation, err)
}
