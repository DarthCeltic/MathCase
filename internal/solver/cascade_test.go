package solver

import (
	"context"
	"errors"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
)

type scriptedSolver struct {
	stage     domain.SolverStage
	provider  string
	model     string
	local     bool
	maxCost   int64
	costKnown bool
	proposal  Proposal
	err       error
	calls     int
	onSolve   func()
}

func (s *scriptedSolver) Stage() domain.SolverStage { return s.stage }
func (s *scriptedSolver) ProviderID() string        { return s.provider }
func (s *scriptedSolver) ModelID() string           { return s.model }
func (s *scriptedSolver) Local() bool               { return s.local }
func (s *scriptedSolver) MaxCostMicros() (int64, bool) {
	return s.maxCost, s.costKnown
}
func (s *scriptedSolver) Solve(context.Context, domain.MathProblem) (Proposal, error) {
	s.calls++
	if s.onSolve != nil {
		s.onSolve()
	}
	return s.proposal, s.err
}

type scriptedVerifier struct {
	results []Verification
	errors  []error
	calls   int
}

func (v *scriptedVerifier) Verify(context.Context, domain.MathProblem, string) (Verification, error) {
	index := v.calls
	v.calls++
	if index < len(v.errors) && v.errors[index] != nil {
		return Verification{}, v.errors[index]
	}
	return v.results[index], nil
}

type scriptedPreflightVerifier struct {
	*scriptedVerifier
	preflightErr   error
	preflightCalls int
	onPreflight    func()
}

func (v *scriptedPreflightVerifier) Preflight(context.Context, string, domain.MathProblem) error {
	v.preflightCalls++
	if v.onPreflight != nil {
		v.onPreflight()
	}
	return v.preflightErr
}

func testCascade(solvers []Solver, verifier ProofVerifier, journal budget.CostCallJournal) Cascade {
	controller, err := budget.NewController(budget.Limits{MaxRunMicros: 1000, MaxSessionMicros: 1000, MaxCandidateMicros: 1000})
	if err != nil {
		panic(err)
	}
	instant := time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC)
	return Cascade{
		Solvers: solvers, Verifier: verifier, BudgetForRun: controller.RunBudgetFor, CostJournal: journal,
		Toolchain: "leanprover/lean4:v4.33.1",
		Now: func() time.Time {
			instant = instant.Add(time.Second)
			return instant
		},
	}
}

func testProblem() domain.MathProblem {
	return domain.MathProblem{ID: "problem-a", Statement: "A test theorem.", LeanStatement: "theorem test : True"}
}

func TestCascadeTriesCheapestFirstAndAcceptsOnlyIndependentVerification(t *testing.T) {
	local := &scriptedSolver{stage: domain.SolverStageS0, local: true, proposal: Proposal{CandidateID: "candidate-local", Proof: "by trivial"}}
	remote := &scriptedSolver{
		stage: domain.SolverStageS1, provider: "test-provider", model: "test-model", maxCost: 100, costKnown: true,
		proposal: Proposal{CandidateID: "candidate-remote", Proof: "by exact True.intro", PromptTokens: 20, CompletionTokens: 8, ActualCostMicros: 40, CostKnown: true},
	}
	verifier := &scriptedVerifier{results: []Verification{{KernelPassed: false, AxiomsPassed: false, EvidenceID: "evidence-local"}, {KernelPassed: true, AxiomsPassed: true, EvidenceID: "evidence-proof"}}}
	journal := &budget.MemoryCostJournal{}
	remote.onSolve = func() {
		events := journal.Records()
		if len(events) != 1 || events[0].CallState != budget.CallStarted {
			t.Errorf("provider invocation observed journal events %#v, want a synced start event first", events)
		}
	}
	cascade := testCascade([]Solver{remote, local}, verifier, journal)
	result, err := cascade.Solve(context.Background(), "run-1", testProblem())
	if err != nil {
		t.Fatal(err)
	}
	if !result.Solved || result.Proof != remote.proposal.Proof || len(result.Attempts) != 2 {
		t.Fatalf("unexpected cascade result: %#v", result)
	}
	if result.Attempts[0].Stage != domain.SolverStageS0 || result.Attempts[0].Outcome != domain.SolverOutcomeRejected {
		t.Fatalf("local stage was not tried first and rejected: %#v", result.Attempts[0])
	}
	if result.Attempts[1].ParentAttemptID != result.Attempts[0].ID || result.Attempts[1].Outcome != domain.SolverOutcomePass {
		t.Fatalf("attempt lineage or pass result is wrong: %#v", result.Attempts[1])
	}
	if records := journal.Records(); len(records) != 2 || records[0].CallState != budget.CallStarted || records[1].CallState != budget.CallFinished {
		t.Fatalf("external call journal events = %#v, want one synced start and finish", records)
	}
}

func TestCascadePreflightsPinnedVerifierBeforeExternalCall(t *testing.T) {
	preflightComplete := false
	solver := &scriptedSolver{
		stage: domain.SolverStageS0, provider: "test-provider", model: "test-model",
		maxCost: 100, costKnown: true,
		proposal: Proposal{CandidateID: "candidate-preflight", Proof: "by exact True.intro", CostKnown: true, ActualCostMicros: 1},
		onSolve: func() {
			if !preflightComplete {
				t.Error("provider call began before the exact verifier preflight completed")
			}
		},
	}
	underlying := &scriptedVerifier{results: []Verification{{KernelPassed: true, AxiomsPassed: true, EvidenceID: "preflight-proof"}}}
	verifier := &scriptedPreflightVerifier{scriptedVerifier: underlying, onPreflight: func() { preflightComplete = true }}
	journal := &budget.MemoryCostJournal{}
	result, err := testCascade([]Solver{solver}, verifier, journal).Solve(context.Background(), "run-preflight-ok", testProblem())
	if err != nil || !result.Solved || verifier.preflightCalls != 1 || solver.calls != 1 {
		t.Fatalf("preflight-enabled cascade = result %#v, err %v, preflights %d, solver calls %d", result, err, verifier.preflightCalls, solver.calls)
	}
}

func TestCascadePreflightFailurePreventsReservationAndExternalCall(t *testing.T) {
	solver := &scriptedSolver{
		stage: domain.SolverStageS0, provider: "test-provider", model: "test-model",
		maxCost: 100, costKnown: true,
		proposal: Proposal{CandidateID: "candidate-must-not-run", Proof: "by exact True.intro", CostKnown: true, ActualCostMicros: 1},
	}
	underlying := &scriptedVerifier{}
	verifier := &scriptedPreflightVerifier{scriptedVerifier: underlying, preflightErr: errors.New("import closure unavailable")}
	journal := &budget.MemoryCostJournal{}
	result, err := testCascade([]Solver{solver}, verifier, journal).Solve(context.Background(), "run-preflight-blocked", testProblem())
	if err == nil || !strings.Contains(err.Error(), "preflight failed before provider dispatch") {
		t.Fatalf("preflight failure returned result %#v and error %v, want fail-closed error", result, err)
	}
	if verifier.preflightCalls != 1 || solver.calls != 0 || underlying.calls != 0 || len(journal.Records()) != 0 {
		t.Fatalf("preflight failure leaked provider/verifier work: preflights=%d solver=%d verify=%d journal=%#v", verifier.preflightCalls, solver.calls, underlying.calls, journal.Records())
	}
}

func TestCascadeBlocksUnpricedExternalRouteWithoutCallingIt(t *testing.T) {
	remote := &scriptedSolver{stage: domain.SolverStageS1, provider: "test-provider", model: "test-model", costKnown: false, proposal: Proposal{Proof: "by trivial"}}
	cascade := testCascade([]Solver{remote}, &scriptedVerifier{}, &budget.MemoryCostJournal{})
	result, err := cascade.Solve(context.Background(), "run-1", testProblem())
	if err != nil {
		t.Fatal(err)
	}
	if remote.calls != 0 || len(result.Attempts) != 1 || result.Attempts[0].Outcome != domain.SolverOutcomeBlocked {
		t.Fatalf("unpriced route was not refused before use: calls=%d result=%#v", remote.calls, result)
	}
}

func TestCascadeRequiresKernelAxiomAndEvidencePass(t *testing.T) {
	local := &scriptedSolver{stage: domain.SolverStageS0, local: true, proposal: Proposal{Proof: "by trivial"}}
	verifier := &scriptedVerifier{results: []Verification{{KernelPassed: true, AxiomsPassed: false, EvidenceID: "evidence-proof"}}}
	cascade := testCascade([]Solver{local}, verifier, nil)
	result, err := cascade.Solve(context.Background(), "run-1", testProblem())
	if err != nil {
		t.Fatal(err)
	}
	if result.Solved || result.Attempts[0].Outcome != domain.SolverOutcomeRejected || result.Attempts[0].VerifiedProofSHA256 != "" {
		t.Fatalf("proof with failed axiom audit was accepted: %#v", result)
	}
	if len(result.Attempts[0].EvidenceIDs) != 1 || result.Attempts[0].EvidenceIDs[0] != "evidence-proof" {
		t.Fatalf("rejected proof lost its verifier receipt link: %#v", result.Attempts[0])
	}
}

func TestCascadeSkipsReverificationOfAnExactRejectedCandidate(t *testing.T) {
	first := &scriptedSolver{
		stage:    domain.SolverStageS0,
		local:    true,
		proposal: Proposal{Proof: "by exact True.intro"},
	}
	second := &scriptedSolver{
		stage:    domain.SolverStageS1,
		local:    true,
		proposal: Proposal{Proof: "by exact True.intro"},
	}
	verifier := &scriptedVerifier{results: []Verification{{KernelPassed: false, AxiomsPassed: false, EvidenceID: "rejected-proof"}}}
	result, err := testCascade([]Solver{first, second}, verifier, nil).Solve(context.Background(), "run-duplicate-proof", testProblem())
	if err != nil {
		t.Fatal(err)
	}
	if len(result.Attempts) != 2 || verifier.calls != 1 {
		t.Fatalf("duplicate proof caused another Lean check: attempts=%d verifier_calls=%d", len(result.Attempts), verifier.calls)
	}
	if result.Attempts[0].Outcome != domain.SolverOutcomeRejected || result.Attempts[1].Outcome != domain.SolverOutcomeNoProgress || result.Attempts[1].FailureClass != "duplicate_rejected_candidate" {
		t.Fatalf("duplicate proof dispositions = %#v, want rejected then no-progress duplicate", result.Attempts)
	}
	if result.Attempts[1].CandidateSHA256 == "" || result.Attempts[0].CandidateSHA256 != result.Attempts[1].CandidateSHA256 {
		t.Fatalf("duplicate candidate identity was not preserved: first=%#v second=%#v", result.Attempts[0], result.Attempts[1])
	}
}

func TestCascadeBlocksVerifierRejectionWithoutDurableEvidenceID(t *testing.T) {
	local := &scriptedSolver{stage: domain.SolverStageS0, local: true, proposal: Proposal{Proof: "by trivial"}}
	verifier := &scriptedVerifier{results: []Verification{{KernelPassed: false}}}
	result, err := testCascade([]Solver{local}, verifier, nil).Solve(context.Background(), "run-1", testProblem())
	if err != nil {
		t.Fatal(err)
	}
	if got := result.Attempts[0]; got.Outcome != domain.SolverOutcomeBlocked || got.FailureClass != "missing_verification_evidence" {
		t.Fatalf("rejection without evidence was not blocked: %#v", got)
	}
}

func TestCascadePreservesBoundedVerifierErrorDiagnostic(t *testing.T) {
	first := &scriptedSolver{
		stage: domain.SolverStageS0, provider: "test-provider", model: "test-model", maxCost: 100, costKnown: true,
		proposal: Proposal{Proof: "by trivial", CostKnown: true, ActualCostMicros: 1},
	}
	second := &scriptedSolver{
		stage: domain.SolverStageS1, provider: "test-provider", model: "test-model", maxCost: 100, costKnown: true,
		proposal: Proposal{Proof: "by exact True.intro", CostKnown: true, ActualCostMicros: 1},
	}
	verifier := &scriptedVerifier{errors: []error{errors.New("docker run failed: snapshot mount was unavailable")}}
	journal := &budget.MemoryCostJournal{}
	result, err := testCascade([]Solver{first, second}, verifier, journal).Solve(context.Background(), "run-verifier-error", testProblem())
	if err != nil {
		t.Fatal(err)
	}
	if len(result.Attempts) != 1 {
		t.Fatalf("Cascade.Solve() attempts = %d, want 1", len(result.Attempts))
	}
	attempt := result.Attempts[0]
	if attempt.Outcome != domain.SolverOutcomeError || attempt.FailureClass != "verification" || !strings.Contains(attempt.FailureSummary, "snapshot mount was unavailable") {
		t.Fatalf("verifier failure lost its bounded diagnostic: %#v", attempt)
	}
	if first.calls != 1 || second.calls != 0 || len(journal.Records()) != 2 {
		t.Fatalf("verification infrastructure failure did not halt the cascade: first=%d second=%d journal_events=%d", first.calls, second.calls, len(journal.Records()))
	}
}

func TestBoundedFailureSummaryCapsDiagnostic(t *testing.T) {
	long := strings.Repeat("x", 600)
	got := boundedFailureSummary("verifier error", errors.New(long))
	if !strings.HasPrefix(got, "verifier error: ") || len([]rune(got)) > 512+len("verifier error: ") || !strings.HasSuffix(got, "...") {
		t.Fatalf("boundedFailureSummary() length or content = %q", got)
	}
}

func TestCascadePreservesLocalSearchMetricsWhenNoProofIsFound(t *testing.T) {
	metrics := &domain.SearchMetrics{
		Engine:         "pantograph-local-bfs-v2",
		NodesExpanded:  12,
		TacticAttempts: 108,
		MaxDepth:       4,
		StopReason:     "node_limit",
	}
	local := &scriptedSolver{
		stage: domain.SolverStageS0,
		local: true,
		proposal: Proposal{
			SearchMetrics: metrics,
		},
	}
	result, err := testCascade([]Solver{local}, &scriptedVerifier{}, nil).Solve(context.Background(), "run-search-miss", testProblem())
	if err != nil {
		t.Fatal(err)
	}
	if len(result.Attempts) != 1 {
		t.Fatalf("Cascade.Solve(no proof) attempts = %d, want 1", len(result.Attempts))
	}
	attempt := result.Attempts[0]
	if attempt.Outcome != domain.SolverOutcomeNoProgress || attempt.SearchMetrics == nil {
		t.Fatalf("Cascade.Solve(no proof) attempt = %#v, want no progress with search metrics", attempt)
	}
	if *attempt.SearchMetrics != *metrics || attempt.FailureSummary != "local search stopped after 108 tactic attempts: node_limit" {
		t.Fatalf("Cascade.Solve(no proof) attempt metadata = %#v, want original metrics and stop reason", attempt)
	}
}

func TestCascadeStopsIfDurableCostRecordCannotBeWritten(t *testing.T) {
	remote := &scriptedSolver{
		stage: domain.SolverStageS1, provider: "test-provider", model: "test-model", maxCost: 100, costKnown: true,
		proposal: Proposal{Proof: "by trivial", ActualCostMicros: 25, CostKnown: true},
	}
	journal := failingJournal{}
	cascade := testCascade([]Solver{remote}, &scriptedVerifier{results: []Verification{{KernelPassed: true, AxiomsPassed: true, EvidenceID: "evidence-proof"}}}, journal)
	result, err := cascade.Solve(context.Background(), "run-1", testProblem())
	if err != nil {
		t.Fatal(err)
	}
	if result.Solved || remote.calls != 1 || result.Attempts[0].FailureClass != "cost_recording" {
		t.Fatalf("cascade did not fail closed on cost-record error: %#v", result)
	}
	cascade.CostJournal = &budget.MemoryCostJournal{}
	retry := &scriptedSolver{
		stage: domain.SolverStageS1, provider: "test-provider", model: "test-model", maxCost: 100, costKnown: true,
		proposal: Proposal{Proof: "by trivial", ActualCostMicros: 10, CostKnown: true},
	}
	cascade.Solvers = []Solver{retry}
	blocked, err := cascade.Solve(context.Background(), "run-2", testProblem())
	if err != nil {
		t.Fatal(err)
	}
	if retry.calls != 0 || len(blocked.Attempts) != 1 || blocked.Attempts[0].Outcome != domain.SolverOutcomeBudgetExceeded {
		t.Fatalf("cascade allowed another paid call after durable accounting failed: calls=%d attempt=%#v", retry.calls, blocked.Attempts)
	}
}

func TestCascadeRequiresRunKeyedBudgetForExternalRoute(t *testing.T) {
	remote := &scriptedSolver{
		stage: domain.SolverStageS1, provider: "test-provider", model: "test-model", maxCost: 100, costKnown: true,
		proposal: Proposal{Proof: "by trivial", ActualCostMicros: 1, CostKnown: true},
	}
	controller, err := budget.NewController(budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 100})
	if err != nil {
		t.Fatal(err)
	}
	cascade := Cascade{
		Solvers: []Solver{remote}, Verifier: &scriptedVerifier{}, Budget: controller.RunBudget(),
		CostJournal: &budget.MemoryCostJournal{}, Toolchain: "leanprover/lean4:v4.33.1",
	}
	if _, err := cascade.Solve(context.Background(), "run-unkeyed", testProblem()); err == nil || !strings.Contains(err.Error(), "run-keyed budget factory") {
		t.Fatalf("Cascade.Solve() without a run-keyed budget factory error = %v, want refusal", err)
	}
	if remote.calls != 0 {
		t.Fatalf("external solver was called %d times before refusing unkeyed budget", remote.calls)
	}
}

func TestCascadeRefusesProviderCallWhenStartEventCannotBeSynced(t *testing.T) {
	remote := &scriptedSolver{
		stage: domain.SolverStageS1, provider: "test-provider", model: "test-model", maxCost: 100, costKnown: true,
		proposal: Proposal{Proof: "by trivial", ActualCostMicros: 25, CostKnown: true},
	}
	cascade := testCascade([]Solver{remote}, &scriptedVerifier{}, startFailingJournal{})
	result, err := cascade.Solve(context.Background(), "run-start-failure", testProblem())
	if err != nil {
		t.Fatal(err)
	}
	if remote.calls != 0 || len(result.Attempts) != 1 || result.Attempts[0].FailureClass != "cost_recording" {
		t.Fatalf("provider call proceeded without a durable start event: calls=%d result=%#v", remote.calls, result)
	}
	retry := &scriptedSolver{stage: domain.SolverStageS1, provider: "test-provider", model: "test-model", maxCost: 100, costKnown: true}
	cascade.Solvers = []Solver{retry}
	blocked, err := cascade.Solve(context.Background(), "run-start-retry", testProblem())
	if err != nil {
		t.Fatal(err)
	}
	if retry.calls != 0 || blocked.Attempts[0].Outcome != domain.SolverOutcomeBudgetExceeded {
		t.Fatalf("provider call was not blocked after start-event failure: calls=%d attempt=%#v", retry.calls, blocked.Attempts[0])
	}
}

func TestCascadeChargesAndStopsAfterProviderCostCeilingOverrun(t *testing.T) {
	remote := &scriptedSolver{
		stage: domain.SolverStageS1, provider: "test-provider", model: "test-model", maxCost: 100, costKnown: true,
		proposal: Proposal{Proof: "by trivial", ActualCostMicros: 150, CostKnown: true},
	}
	journal := &budget.MemoryCostJournal{}
	cascade := testCascade([]Solver{remote}, &scriptedVerifier{}, journal)
	result, err := cascade.Solve(context.Background(), "run-1", testProblem())
	if err != nil {
		t.Fatal(err)
	}
	if result.Solved || remote.calls != 1 || result.Attempts[0].FailureClass != "cost_ceiling_exceeded" {
		t.Fatalf("cascade did not stop after a cost-ceiling overrun: calls=%d result=%#v", remote.calls, result)
	}
	if records := journal.Records(); len(records) != 2 || records[1].EstimatedCostMicros != 150 || records[1].CostCeilingMicros != 100 {
		t.Fatalf("overrun journal = %#v, want actual cost and admitted ceiling durably recorded", records)
	}
	retry := &scriptedSolver{
		stage: domain.SolverStageS1, provider: "test-provider", model: "test-model", maxCost: 100, costKnown: true,
		proposal: Proposal{Proof: "by trivial", ActualCostMicros: 1, CostKnown: true},
	}
	cascade.Solvers = []Solver{retry}
	blocked, err := cascade.Solve(context.Background(), "run-2", testProblem())
	if err != nil {
		t.Fatal(err)
	}
	if retry.calls != 0 || len(blocked.Attempts) != 1 || blocked.Attempts[0].Outcome != domain.SolverOutcomeBudgetExceeded {
		t.Fatalf("cascade allowed another paid call after ceiling overrun: calls=%d attempt=%#v", retry.calls, blocked.Attempts)
	}
}

type failingJournal struct{}

func (failingJournal) BeginCall(budget.CostRecord) error  { return nil }
func (failingJournal) FinishCall(budget.CostRecord) error { return errors.New("disk unavailable") }

type startFailingJournal struct{}

func (startFailingJournal) BeginCall(budget.CostRecord) error { return errors.New("disk unavailable") }
func (startFailingJournal) FinishCall(budget.CostRecord) error {
	return errors.New("no call was started")
}
