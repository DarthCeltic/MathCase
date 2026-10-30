package application

import (
	"context"
	"errors"
	"fmt"
	"sync"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

var (
	// ErrSolverSessionClosed indicates that a solve was started after the
	// session began closing.
	ErrSolverSessionClosed = errors.New("application: solver session is closed")
	// ErrSolverSessionConfig indicates that a required local session setting is
	// missing or that no solver routes were configured.
	ErrSolverSessionConfig = errors.New("application: invalid solver session configuration")
	// ErrExternalSolverDisabled keeps external routes closed unless a caller
	// supplies the exact provider, model, statement clearances, and spend bound.
	ErrExternalSolverDisabled = errors.New("application: external solver route requires an explicit scoped authorization")
	// ErrExternalSolverAuthorization marks a missing, expired, malformed, or
	// identity-mismatched provider authorization.
	ErrExternalSolverAuthorization = errors.New("application: external solver authorization is invalid")
	// ErrExternalSolverTargetNotCleared marks a theorem outside the session's
	// item-level provider-input clearances.
	ErrExternalSolverTargetNotCleared = errors.New("application: theorem statement is not cleared for this provider session")
)

// SolverSessionConfig supplies the routes and persistent accounting boundary
// for one explicitly composed solver application session.
type SolverSessionConfig struct {
	CostJournalPath       string
	BudgetLimits          budget.Limits
	Solvers               []solver.Solver
	Verifier              solver.ProofVerifier
	Toolchain             string
	ExternalAuthorization *ExternalSolverAuthorization
	Now                   func() time.Time
}

// SolverSession owns a Cascade and its cross-process locked cost session.
// Provider routes cannot run outside the durable journal and run-keyed budget
// created for this session.
type SolverSession struct {
	mu            sync.Mutex
	active        sync.WaitGroup
	closing       chan struct{}
	closeDone     chan struct{}
	closeStarted  bool
	closeErr      error
	cascade       solver.Cascade
	costs         *budget.CostSession
	externalScope *verifiedExternalSolverScope
	now           func() time.Time
}

// OpenSolverSession opens the durable cost journal before returning a cascade.
// Local routes need no provider grant. An external route requires a verified,
// item-scoped authorization; unscoped external routes remain closed.
func OpenSolverSession(config SolverSessionConfig) (*SolverSession, error) {
	if err := validateSolverSessionConfig(config); err != nil {
		return nil, err
	}
	externalRouteCount := 0
	for _, candidate := range config.Solvers {
		if candidate.Local() {
			continue
		}
		externalRouteCount++
	}
	if externalRouteCount == 0 {
		if config.ExternalAuthorization != nil {
			return nil, fmt.Errorf("%w: no external route consumes the supplied grant", ErrExternalSolverAuthorization)
		}
		return openSolverSession(config)
	}
	if config.ExternalAuthorization == nil {
		return nil, ErrExternalSolverDisabled
	}
	scope, err := verifyExternalSolverAuthorization(config)
	if err != nil {
		return nil, err
	}
	session, err := openSolverSession(config)
	if err != nil {
		return nil, err
	}
	session.externalScope = scope
	return session, nil
}

func validateSolverSessionConfig(config SolverSessionConfig) error {
	if config.CostJournalPath == "" || config.Verifier == nil || config.Toolchain == "" || len(config.Solvers) == 0 {
		return ErrSolverSessionConfig
	}
	for _, candidate := range config.Solvers {
		if candidate == nil {
			return ErrSolverSessionConfig
		}
	}
	return nil
}

// openSolverSession is the shared composition primitive used after the public
// constructor has applied any required provider scope.
func openSolverSession(config SolverSessionConfig) (*SolverSession, error) {
	if err := validateSolverSessionConfig(config); err != nil {
		return nil, err
	}
	costs, err := budget.OpenCostSession(config.CostJournalPath, config.BudgetLimits)
	if err != nil {
		return nil, err
	}
	solvers := append([]solver.Solver(nil), config.Solvers...)
	cascade := solver.Cascade{
		Solvers:      solvers,
		Verifier:     config.Verifier,
		BudgetForRun: costs.RunBudgetFor,
		CostJournal:  costs.Journal(),
		Toolchain:    config.Toolchain,
		Now:          config.Now,
	}
	return &SolverSession{
		closing:   make(chan struct{}),
		closeDone: make(chan struct{}),
		cascade:   cascade,
		costs:     costs,
		now:       sessionClock(config.Now),
	}, nil
}

// Solve holds the application session open until the cascade has finished and
// refuses new work once Close begins.
func (s *SolverSession) Solve(ctx context.Context, runID string, problem domain.MathProblem) (solver.Result, error) {
	if s == nil {
		return solver.Result{}, ErrSolverSessionClosed
	}
	s.mu.Lock()
	if s.closeStarted {
		s.mu.Unlock()
		return solver.Result{}, ErrSolverSessionClosed
	}
	if err := s.authorizeProblem(problem); err != nil {
		s.mu.Unlock()
		return solver.Result{}, err
	}
	s.active.Add(1)
	s.mu.Unlock()
	defer s.active.Done()
	result, err := s.cascade.Solve(ctx, runID, problem)
	s.attachInputClearance(&result, problem.ID)
	return result, err
}

func (s *SolverSession) authorizeProblem(problem domain.MathProblem) error {
	if s.externalScope == nil {
		return nil
	}
	if !s.now().Before(s.externalScope.expiresAt) {
		return fmt.Errorf("%w: clearance expired before provider dispatch", ErrExternalSolverAuthorization)
	}
	clearance, ok := s.externalScope.inputs[problem.ID]
	if !ok || statementSHA256(problem.LeanStatement) != clearance.statementSHA256 {
		return ErrExternalSolverTargetNotCleared
	}
	if problem.ProviderContext == nil {
		if clearance.contextSHA256 != "" {
			return ErrExternalSolverTargetNotCleared
		}
	} else if problem.ProviderContext.Validate() != nil || problem.ProviderContext.SHA256 != clearance.contextSHA256 {
		return ErrExternalSolverTargetNotCleared
	}
	return nil
}

func (s *SolverSession) attachInputClearance(result *solver.Result, problemID string) {
	if s.externalScope == nil || result == nil {
		return
	}
	clearance, ok := s.externalScope.inputs[problemID]
	if !ok {
		return
	}
	for index := range result.Attempts {
		attempt := &result.Attempts[index]
		if attempt.ProviderID != s.externalScope.providerID {
			continue
		}
		attempt.ProviderInputClearanceID = clearance.evidenceID
		attempt.ProviderInputClearanceSHA256 = clearance.evidenceSHA256
		attempt.ProviderInputClearancePath = clearance.path
	}
}

func sessionClock(now func() time.Time) func() time.Time {
	if now != nil {
		return now
	}
	return time.Now
}

// Close stops admission, waits for in-flight solves, then closes the durable
// accounting session. Concurrent Close calls wait for and return the same
// result. The underlying cost session retains its lock on accounting failure.
func (s *SolverSession) Close() error {
	if s == nil {
		return ErrSolverSessionClosed
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
	close(s.closing)
	s.mu.Unlock()

	s.active.Wait()
	err := s.costs.Close()
	s.mu.Lock()
	s.closeErr = err
	close(s.closeDone)
	s.mu.Unlock()
	return err
}
