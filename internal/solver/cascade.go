// Package solver coordinates an explicitly configured, cheapest-first solver
// cascade. Provider output remains a proposal until the independent verifier
// accepts it.
package solver

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"sort"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

type Solver interface {
	Stage() domain.SolverStage
	ProviderID() string
	ModelID() string
	Local() bool
	// MaxCostMicros is a hard upper bound for one call. External routes must
	// return known=true; an estimate that is not a ceiling cannot admit a call.
	MaxCostMicros() (amount int64, known bool)
	Solve(ctx context.Context, problem domain.MathProblem) (Proposal, error)
}

// SolverFeedback is a verifier-produced correction context for a later solver
// stage. It contains only the prior proof attempt and bounded verifier output;
// it is never an authorization or a proof result.
type SolverFeedback struct {
	PreviousProof string
	FailureClass  string
	Summary       string
	Diagnostic    string
	EvidenceID    string
}

// FeedbackSolver is an optional extension implemented by solvers that can
// use an earlier rejected attempt. Cascade invokes it only after a verifier
// rejection, never after an infrastructure failure or an unverified result.
type FeedbackSolver interface {
	SolveWithFeedback(ctx context.Context, problem domain.MathProblem, feedback SolverFeedback) (Proposal, error)
}

type Proposal struct {
	CandidateID               string
	Proof                     string
	ProviderCallID            string
	ProviderRequestSHA256     string
	ProviderResponseSHA256    string
	ProviderRequestPath       string
	ProviderResponsePath      string
	ProviderCallReceiptPath   string
	ProviderCallReceiptSHA256 string
	PromptTokens              int
	CompletionTokens          int
	ActualCostMicros          int64
	CostKnown                 bool
	SearchMetrics             *domain.SearchMetrics
	LocalProcessTrace         *domain.LocalProcessTrace
}

type Verification struct {
	KernelPassed   bool
	AxiomsPassed   bool
	EvidenceID     string
	Summary        string
	RepairFeedback string
}

type ProofVerifier interface {
	Verify(ctx context.Context, problem domain.MathProblem, proof string) (Verification, error)
}

// ProviderPreflightVerifier prepares the exact isolated verification runtime
// before a paid solver is allowed to run. Implementations must fail closed:
// Cascade will not reserve provider cost or make a call when this step fails.
type ProviderPreflightVerifier interface {
	Preflight(ctx context.Context, runID string, problem domain.MathProblem) error
}

type Result struct {
	Attempts []domain.SolverAttempt
	Proof    string
	Solved   bool
}

type Cascade struct {
	Solvers      []Solver
	Verifier     ProofVerifier
	Budget       *budget.RunBudget
	BudgetForRun func(string) (*budget.RunBudget, error)
	CostJournal  budget.CostCallJournal
	Toolchain    string
	Now          func() time.Time
}

func (c Cascade) Solve(ctx context.Context, runID string, problem domain.MathProblem) (Result, error) {
	if ctx == nil {
		return Result{}, errors.New("solver: context is required")
	}
	if c.Verifier == nil {
		return Result{}, errors.New("solver: independent proof verifier is required")
	}
	if c.Budget == nil && c.BudgetForRun == nil {
		return Result{}, errors.New("solver: bounded run budget is required")
	}
	if c.Toolchain == "" {
		return Result{}, errors.New("solver: pinned Lean toolchain is required")
	}
	if c.Now == nil {
		c.Now = time.Now
	}
	if err := validateRun(runID, problem); err != nil {
		return Result{}, err
	}
	runBudget := c.Budget
	if c.BudgetForRun != nil {
		resolved, budgetErr := c.BudgetForRun(runID)
		if budgetErr != nil {
			return Result{}, fmt.Errorf("solver: obtain run budget: %w", budgetErr)
		}
		runBudget = resolved
		if resolved == nil {
			return Result{}, errors.New("solver: run budget factory returned nil")
		}
	}
	solvers := append([]Solver(nil), c.Solvers...)
	for _, candidate := range solvers {
		if candidate == nil {
			return Result{}, errors.New("solver: nil solver registration")
		}
	}
	sort.SliceStable(solvers, func(i, j int) bool { return solverRank(solvers[i].Stage()) < solverRank(solvers[j].Stage()) })
	seenStages := make(map[domain.SolverStage]struct{}, len(solvers))
	for _, candidate := range solvers {
		stage := candidate.Stage()
		if solverRank(stage) < 0 {
			return Result{}, fmt.Errorf("solver: invalid stage %q", stage)
		}
		if _, exists := seenStages[stage]; exists {
			return Result{}, fmt.Errorf("solver: duplicate solver stage %q", stage)
		}
		seenStages[stage] = struct{}{}
		if candidate.Local() {
			if candidate.ProviderID() != "" {
				return Result{}, errors.New("solver: local route cannot declare a provider ID")
			}
			if amount, known := candidate.MaxCostMicros(); known && amount != 0 {
				return Result{}, errors.New("solver: local route cannot declare a paid-call ceiling")
			}
		} else if candidate.ProviderID() == "" || candidate.ModelID() == "" || c.CostJournal == nil {
			return Result{}, errors.New("solver: external route requires provider, model, and a durable call journal")
		} else if c.BudgetForRun == nil {
			return Result{}, errors.New("solver: external route requires a run-keyed budget factory")
		}
	}
	if hasExternalSolver(solvers) {
		if preflight, ok := c.Verifier.(ProviderPreflightVerifier); ok {
			if err := preflight.Preflight(ctx, runID, problem); err != nil {
				return Result{}, fmt.Errorf("solver: pinned verifier preflight failed before provider dispatch: %w", err)
			}
		}
	}

	result := Result{Attempts: make([]domain.SolverAttempt, 0, len(solvers))}
	var parentAttemptID string
	feedback := SolverFeedback{}
	rejectedCandidates := make(map[string]SolverFeedback)
	for _, candidate := range solvers {
		if err := ctx.Err(); err != nil {
			return result, err
		}
		started := c.Now().UTC()
		attempt := domain.SolverAttempt{
			RunID: runID, ProblemID: problem.ID, Stage: candidate.Stage(),
			ProviderID: candidate.ProviderID(), ModelID: candidate.ModelID(),
			Toolchain: c.Toolchain, StartedAt: started, ParentAttemptID: parentAttemptID,
		}
		var err error
		attempt.ID, err = domain.AttemptIDFor(runID, problem.ID, candidate.Stage(), "", started)
		if err != nil {
			return result, err
		}
		maxCost, knownCost := candidate.MaxCostMicros()
		var reservation *budget.Reservation
		if candidate.Local() {
			if knownCost && maxCost != 0 {
				return result, errors.New("solver: local solver cannot declare a paid-call ceiling")
			}
		} else if !knownCost || maxCost < 0 {
			attempt.Outcome = domain.SolverOutcomeBlocked
			attempt.FailureClass = "cost_ceiling_unavailable"
			attempt.FailureSummary = "external solver call was refused because no valid cost ceiling was available"
		} else {
			reservation, err = runBudget.Reserve(maxCost)
			if err != nil {
				attempt.Outcome = domain.SolverOutcomeBudgetExceeded
				attempt.FailureClass = "budget"
				attempt.FailureSummary = "external solver call was refused by the run or session budget"
			}
		}
		stopAfterAttempt := false
		var startRecord budget.CostRecord
		if attempt.Outcome == "" && !candidate.Local() {
			startRecord = startProviderCost(attempt, maxCost)
			if journalErr := c.CostJournal.BeginCall(startRecord); journalErr != nil {
				runBudget.HaltSession()
				if reservation != nil {
					_ = reservation.Release()
					reservation = nil
				}
				attempt.Outcome = domain.SolverOutcomeBlocked
				attempt.FailureClass = "cost_recording"
				attempt.FailureSummary = "provider call was refused because its cost ceiling could not be durably recorded"
				stopAfterAttempt = true
			}
		}

		var proposal Proposal
		var nextFeedback SolverFeedback
		providerFinished := started
		if attempt.Outcome == "" {
			if feedbackSolver, ok := candidate.(FeedbackSolver); ok {
				proposal, err = feedbackSolver.SolveWithFeedback(ctx, problem, feedback)
			} else {
				proposal, err = candidate.Solve(ctx, problem)
			}
			providerFinished = c.Now().UTC()
			if providerFinished.Before(started) {
				providerFinished = started
			}
			if !candidate.Local() {
				finishRecord := finishProviderCost(startRecord, attempt, proposal, providerFinished, err)
				if costErr := c.CostJournal.FinishCall(finishRecord); costErr != nil {
					runBudget.HaltSession()
					attempt.Outcome = domain.SolverOutcomeBlocked
					attempt.FailureClass = "cost_recording"
					attempt.FailureSummary = "provider result could not be durably recorded; cascade stopped"
					stopAfterAttempt = true
				}
				if proposal.CostKnown && proposal.ActualCostMicros >= 0 {
					attempt.CostKnown = true
					attempt.CostMicros = proposal.ActualCostMicros
				}
			} else if proposal.CostKnown || proposal.ActualCostMicros != 0 {
				attempt.Outcome = domain.SolverOutcomeBlocked
				attempt.FailureClass = "local_cost_claim"
				attempt.FailureSummary = "local solver returned provider cost metadata"
				stopAfterAttempt = true
			}
			if reservation != nil {
				charged := maxCost
				if proposal.CostKnown && proposal.ActualCostMicros >= 0 {
					charged = proposal.ActualCostMicros
				}
				if commitErr := reservation.Commit(charged); commitErr != nil {
					_ = reservation.Release()
					attempt.Outcome = domain.SolverOutcomeBudgetExceeded
					attempt.FailureClass = "cost_ceiling_exceeded"
					attempt.FailureSummary = "reported provider cost exceeded the reserved hard ceiling"
					stopAfterAttempt = true
				}
			}
			if attempt.Outcome == "" {
				applyProposalMetadata(&attempt, proposal)
				if err != nil {
					attempt.Outcome = domain.SolverOutcomeError
					attempt.FailureClass = "solver"
					stopAfterAttempt = true
					if proposal.LocalProcessTrace != nil {
						attempt.FailureSummary = "local solver call returned an error; its bounded host-process trace is attached"
					} else {
						attempt.FailureSummary = "solver call returned an error; raw diagnostics were not persisted"
					}
				} else if proposal.PromptTokens < 0 || proposal.CompletionTokens < 0 || proposal.ActualCostMicros < 0 || (!proposal.CostKnown && proposal.ActualCostMicros != 0) {
					attempt.Outcome = domain.SolverOutcomeBlocked
					attempt.FailureClass = "invalid_usage"
					attempt.FailureSummary = "solver returned invalid usage metadata"
					stopAfterAttempt = true
				} else if proposal.CandidateID != "" && state.ValidateIdentifier("candidate ID", proposal.CandidateID) != nil {
					attempt.CandidateID = ""
					attempt.Outcome = domain.SolverOutcomeRejected
					attempt.FailureClass = "invalid_candidate_id"
					attempt.FailureSummary = "solver returned a non-canonical candidate identity"
				} else if proposal.Proof == "" {
					attempt.Outcome = domain.SolverOutcomeNoProgress
					attempt.FailureClass = "no_proof_candidate"
					attempt.FailureSummary = noProofCandidateSummary(proposal.SearchMetrics)
				} else {
					proofHash := sha256.Sum256([]byte(proposal.Proof))
					candidateDigest := hex.EncodeToString(proofHash[:])
					attempt.CandidateSHA256 = candidateDigest
					if priorFeedback, duplicate := rejectedCandidates[candidateDigest]; duplicate {
						attempt.Outcome = domain.SolverOutcomeNoProgress
						attempt.FailureClass = "duplicate_rejected_candidate"
						attempt.FailureSummary = "provider repeated a proof candidate already rejected for this exact problem; redundant Lean verification was skipped"
						nextFeedback = priorFeedback
					} else {
						verification, verifyErr := c.Verifier.Verify(ctx, problem, proposal.Proof)
						if state.ValidateIdentifier("verification evidence ID", verification.EvidenceID) == nil {
							attempt.EvidenceIDs = []string{verification.EvidenceID}
						}
						switch {
						case verifyErr != nil:
							attempt.Outcome = domain.SolverOutcomeError
							attempt.FailureClass = "verification"
							attempt.FailureSummary = boundedFailureSummary("independent verifier returned an error", verifyErr)
							stopAfterAttempt = true
						case !verification.KernelPassed:
							if len(attempt.EvidenceIDs) == 0 {
								attempt.Outcome = domain.SolverOutcomeBlocked
								attempt.FailureClass = "missing_verification_evidence"
								attempt.FailureSummary = "verifier returned no canonical evidence identity for the kernel result"
								stopAfterAttempt = true
							} else {
								attempt.Outcome = domain.SolverOutcomeRejected
								attempt.FailureClass = "kernel_rejected"
								attempt.FailureSummary = "Lean kernel rejected the proposed proof"
								nextFeedback = SolverFeedback{
									PreviousProof: proposal.Proof,
									FailureClass:  attempt.FailureClass,
									Summary:       verification.Summary,
									Diagnostic:    verification.RepairFeedback,
									EvidenceID:    verification.EvidenceID,
								}
							}
						case !verification.AxiomsPassed:
							if len(attempt.EvidenceIDs) == 0 {
								attempt.Outcome = domain.SolverOutcomeBlocked
								attempt.FailureClass = "missing_verification_evidence"
								attempt.FailureSummary = "verifier returned no canonical evidence identity for the axiom result"
								stopAfterAttempt = true
							} else {
								attempt.Outcome = domain.SolverOutcomeRejected
								attempt.FailureClass = "axiom_policy"
								attempt.FailureSummary = "proof did not pass the configured axiom audit"
								nextFeedback = SolverFeedback{
									PreviousProof: proposal.Proof,
									FailureClass:  attempt.FailureClass,
									Summary:       verification.Summary,
									Diagnostic:    verification.RepairFeedback,
									EvidenceID:    verification.EvidenceID,
								}
							}
						case state.ValidateIdentifier("verification evidence ID", verification.EvidenceID) != nil:
							attempt.Outcome = domain.SolverOutcomeBlocked
							attempt.FailureClass = "missing_verification_evidence"
							attempt.FailureSummary = "verifier returned no canonical durable evidence identity"
							stopAfterAttempt = true
						default:
							attempt.Outcome = domain.SolverOutcomePass
							attempt.VerifiedProofSHA256 = attempt.CandidateSHA256
							result.Proof = proposal.Proof
							result.Solved = true
						}
						if attempt.Outcome == domain.SolverOutcomeRejected {
							rejectedCandidates[candidateDigest] = nextFeedback
						}
					}
				}
			}
		}
		attempt.FinishedAt = c.Now().UTC()
		if attempt.FinishedAt.Before(started) {
			attempt.FinishedAt = started
		}
		if attempt.Outcome == "" {
			attempt.Outcome = domain.SolverOutcomeError
			attempt.FailureClass = "internal"
			attempt.FailureSummary = "cascade reached an invalid attempt state"
		}
		if err := attempt.Validate(); err != nil {
			return result, fmt.Errorf("solver: generated invalid attempt receipt: %w", err)
		}
		result.Attempts = append(result.Attempts, attempt)
		parentAttemptID = attempt.ID
		feedback = nextFeedback
		if result.Solved || stopAfterAttempt || attempt.Outcome == domain.SolverOutcomeBudgetExceeded {
			return result, nil
		}
	}
	return result, nil
}

func hasExternalSolver(solvers []Solver) bool {
	for _, candidate := range solvers {
		if !candidate.Local() {
			return true
		}
	}
	return false
}

func boundedFailureSummary(prefix string, err error) string {
	if err == nil {
		return prefix
	}
	detail := strings.Join(strings.Fields(strings.ToValidUTF8(err.Error(), "\uFFFD")), " ")
	runes := []rune(detail)
	if len(runes) > 512 {
		detail = string(runes[:509]) + "..."
	}
	if detail == "" {
		return prefix
	}
	return prefix + ": " + detail
}

func startProviderCost(attempt domain.SolverAttempt, maxCost int64) budget.CostRecord {
	return budget.CostRecord{
		ID: attempt.ID, CallState: budget.CallStarted,
		RunID:      attempt.RunID,
		ProviderID: attempt.ProviderID, Model: attempt.ModelID,
		TaskID: attempt.ProblemID, Retry: 0,
		StartedAt:         attempt.StartedAt,
		CostCeilingMicros: maxCost, EstimatedCostMicros: maxCost,
	}
}

func finishProviderCost(start budget.CostRecord, attempt domain.SolverAttempt, proposal Proposal, finished time.Time, solveErr error) budget.CostRecord {
	record := start
	record.CallState = budget.CallFinished
	record.FinishedAt = finished
	record.CostKnown = proposal.CostKnown && proposal.ActualCostMicros >= 0
	record.OracleStatusAtCapture = "not_run"
	if proposal.CandidateID != "" && state.ValidateIdentifier("candidate ID", proposal.CandidateID) == nil {
		record.CandidateID = proposal.CandidateID
	}
	if proposal.ProviderCallID != "" && state.ValidateIdentifier("provider call ID", proposal.ProviderCallID) == nil {
		record.ProviderCallID = proposal.ProviderCallID
	}
	if finished.After(attempt.StartedAt) {
		record.Latency = finished.Sub(attempt.StartedAt)
	}
	if solveErr == nil {
		record.ProviderOutcome = "success"
		record.TransportOutcome = "success"
		record.GenerationOutcome = "success"
	} else {
		record.ProviderOutcome = "error"
		record.TransportOutcome = "error"
		record.GenerationOutcome = "error"
	}
	if proposal.PromptTokens >= 0 && proposal.CompletionTokens >= 0 {
		record.InputTokens = proposal.PromptTokens
		record.OutputTokens = proposal.CompletionTokens
		record.UsageReported = proposal.CostKnown
		record.UsageValid = proposal.CostKnown
	}
	if proposal.CostKnown && proposal.ActualCostMicros >= 0 {
		record.EstimatedCostMicros = proposal.ActualCostMicros
	}
	return record
}

func applyProposalMetadata(attempt *domain.SolverAttempt, proposal Proposal) {
	if proposal.CandidateID != "" && state.ValidateIdentifier("candidate ID", proposal.CandidateID) == nil {
		attempt.CandidateID = proposal.CandidateID
	}
	if proposal.PromptTokens >= 0 {
		attempt.PromptTokens = proposal.PromptTokens
	}
	if proposal.CompletionTokens >= 0 {
		attempt.CompletionTokens = proposal.CompletionTokens
	}
	if proposal.ProviderCallID != "" && state.ValidateIdentifier("provider call ID", proposal.ProviderCallID) == nil {
		attempt.ProviderCallID = proposal.ProviderCallID
	}
	if validProposalSHA256(proposal.ProviderRequestSHA256) {
		attempt.ProviderRequestSHA256 = proposal.ProviderRequestSHA256
	}
	if validProposalSHA256(proposal.ProviderResponseSHA256) {
		attempt.ProviderResponseSHA256 = proposal.ProviderResponseSHA256
	}
	if proposal.ProviderRequestPath != "" {
		attempt.ProviderRequestPath = proposal.ProviderRequestPath
	}
	if proposal.ProviderResponsePath != "" {
		attempt.ProviderResponsePath = proposal.ProviderResponsePath
	}
	if proposal.ProviderCallReceiptPath != "" {
		attempt.ProviderCallReceiptPath = proposal.ProviderCallReceiptPath
	}
	if validProposalSHA256(proposal.ProviderCallReceiptSHA256) {
		attempt.ProviderCallReceiptSHA256 = proposal.ProviderCallReceiptSHA256
	}
	if proposal.SearchMetrics != nil {
		metrics := *proposal.SearchMetrics
		attempt.SearchMetrics = &metrics
	}
	if proposal.LocalProcessTrace != nil {
		trace := *proposal.LocalProcessTrace
		trace.Arguments = append([]string(nil), trace.Arguments...)
		trace.InputBase64 = append([]byte(nil), trace.InputBase64...)
		trace.StdoutPrefixBase64 = append([]byte(nil), trace.StdoutPrefixBase64...)
		trace.StderrPrefixBase64 = append([]byte(nil), trace.StderrPrefixBase64...)
		attempt.LocalProcessTrace = &trace
	}
}

func validProposalSHA256(value string) bool {
	if len(value) != 64 || strings.ToLower(value) != value {
		return false
	}
	for _, character := range value {
		if !((character >= '0' && character <= '9') || (character >= 'a' && character <= 'f')) {
			return false
		}
	}
	return true
}

func noProofCandidateSummary(metrics *domain.SearchMetrics) string {
	if metrics == nil {
		return "solver returned no proof candidate"
	}
	return fmt.Sprintf("local search stopped after %d tactic attempts: %s", metrics.TacticAttempts, metrics.StopReason)
}

func validateRun(runID string, problem domain.MathProblem) error {
	if err := state.ValidateIdentifier("solver run ID", runID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("solver problem ID", problem.ID); err != nil {
		return err
	}
	if problem.LeanStatement == "" {
		return errors.New("solver: a formal Lean statement is required")
	}
	return nil
}

func solverRank(stage domain.SolverStage) int {
	switch stage {
	case domain.SolverStageS0:
		return 0
	case domain.SolverStageS1:
		return 1
	case domain.SolverStageS2:
		return 2
	case domain.SolverStageS3:
		return 3
	default:
		return -1
	}
}
