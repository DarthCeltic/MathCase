package budget

import (
	"errors"
	"sync"
	"sync/atomic"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/provider"
)

func TestPriceEstimateRoundsConservatively(t *testing.T) {
	t.Parallel()
	price := Price{Known: true, InputPerMillionMicros: 3, OutputPerMillionMicros: 21_000}
	got, err := price.Estimate(provider.Usage{PromptTokens: 1, CompletionTokens: 17_000})
	if err != nil {
		t.Fatalf("Estimate() error = %v, want nil", err)
	}
	if got != 358 {
		t.Errorf("Estimate() = %d micro-USD, want 358", got)
	}
}

func TestPriceRejectsUnknownOrNegativeInputs(t *testing.T) {
	t.Parallel()
	if _, err := (Price{}).Estimate(provider.Usage{}); !errors.Is(err, ErrPriceUnknown) {
		t.Errorf("unknown price error = %v, want ErrPriceUnknown", err)
	}
	if _, err := (Price{Known: true}).Estimate(provider.Usage{PromptTokens: -1}); err == nil {
		t.Error("negative usage error = nil, want validation error")
	}
}

func TestMemoryCostJournalReturnsIsolatedSnapshot(t *testing.T) {
	t.Parallel()
	recorder := new(MemoryCostJournal)
	started := time.Date(2026, time.September, 16, 12, 0, 0, 0, time.UTC)
	start := CostRecord{
		ID: "cost-record-1", CallState: CallStarted,
		RunID:               "run-1",
		ProviderID:          "nebius.v1",
		AccountProfile:      "development",
		Model:               "nvidia/Nemotron-test",
		TaskID:              "task-1",
		StartedAt:           started,
		CostCeilingMicros:   3,
		EstimatedCostMicros: 3,
		ProviderCallID:      "provider-call-1",
	}
	if err := recorder.BeginCall(start); err != nil {
		t.Fatalf("BeginCall() error = %v, want nil", err)
	}
	finish := start
	finish.CallState = CallFinished
	finish.CandidateID = "wave-0-candidate-0"
	finish.InputTokens = 10
	finish.OutputTokens = 20
	finish.FinishedAt = started.Add(time.Second)
	finish.Latency = time.Second
	finish.EstimatedCostMicros = 2
	finish.CostKnown = true
	finish.OracleResult = "PASS"
	if err := recorder.FinishCall(finish); err != nil {
		t.Fatalf("FinishCall() error = %v, want nil", err)
	}
	snapshot := recorder.Records()
	snapshot[1].Model = "changed-locally"
	if got := recorder.Records()[1].Model; got != finish.Model {
		t.Errorf("Records() returned mutable storage, model = %q, want %q", got, finish.Model)
	}
	bad := start
	bad.ID = "bad-cost"
	bad.ProviderCallID = "bad-cost"
	bad.CostCeilingMicros = -1
	bad.EstimatedCostMicros = -1
	if err := recorder.BeginCall(bad); err == nil {
		t.Error("BeginCall() with negative cost error = nil, want validation error")
	}
}

func TestCostRecorderRejectsNonCanonicalOptionalIdentities(t *testing.T) {
	t.Parallel()
	for _, mutate := range []func(*CostRecord){
		func(record *CostRecord) { record.RunID = "run/1" },
		func(record *CostRecord) { record.ProviderID = "provider/1" },
		func(record *CostRecord) { record.TaskID = " task-1" },
		func(record *CostRecord) { record.CandidateID = "candidate\n1" },
	} {
		record := CostRecord{ID: "valid-id", CallState: CallStarted, RunID: "run-1", ProviderID: "provider", TaskID: "task", ProviderCallID: "call", StartedAt: time.Now(), CostCeilingMicros: 1, EstimatedCostMicros: 1}
		mutate(&record)
		if err := (new(MemoryCostJournal)).BeginCall(record); err == nil {
			t.Fatal("non-canonical optional identity was recorded, want rejection")
		}
	}
}

func TestRestoreControllerRebuildsChargesAndHaltsOnUnfinishedOrOverrunCalls(t *testing.T) {
	t.Parallel()
	limits := Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 100}
	start := CostRecord{
		ID: "call-a", CallState: CallStarted, RunID: "run-a", ProviderID: "test-provider", Model: "test-model",
		TaskID: "problem-a", StartedAt: time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC),
		CostCeilingMicros: 30, EstimatedCostMicros: 30, ProviderCallID: "call-a",
	}
	finish := start
	finish.CallState = CallFinished
	finish.CostKnown = true
	finish.EstimatedCostMicros = 25
	finish.FinishedAt = start.StartedAt.Add(time.Second)
	finish.Latency = time.Second

	controller, err := RestoreController(limits, []CostRecord{start, finish})
	if err != nil {
		t.Fatalf("RestoreController(completed) error = %v", err)
	}
	run, err := controller.RunBudgetFor("run-a")
	if err != nil {
		t.Fatalf("RunBudgetFor(restored run) error = %v", err)
	}
	if got := run.Snapshot().RunSpentMicros; got != 25 {
		t.Fatalf("restored run spend = %d, want 25", got)
	}
	if duplicate, err := controller.RunBudgetFor("run-a"); err != nil || duplicate != run {
		t.Fatalf("RunBudgetFor(same run) = %p, %v; want shared budget %p", duplicate, err, run)
	}
	if got := run.Snapshot().SessionSpentMicros; got != 25 {
		t.Fatalf("restored session spend = %d, want reported charge 25", got)
	}
	reservation, err := run.Reserve(75)
	if err != nil {
		t.Fatalf("Reserve() at remaining session ceiling error = %v", err)
	}
	_ = reservation.Release()

	overrun := finish
	overrun.EstimatedCostMicros = 35
	controller, err = RestoreController(limits, []CostRecord{start, overrun})
	if err != nil {
		t.Fatalf("RestoreController(overrun) error = %v", err)
	}
	if _, err := controller.RunBudget().Reserve(1); !errors.Is(err, ErrSessionHalted) {
		t.Fatalf("Reserve() after restored overrun = %v, want ErrSessionHalted", err)
	}

	controller, err = RestoreController(limits, []CostRecord{start})
	if err != nil {
		t.Fatalf("RestoreController(unfinished) error = %v", err)
	}
	if got := controller.SessionSnapshot().SpentMicros; got != 30 {
		t.Fatalf("unfinished call charge = %d, want full ceiling 30", got)
	}
	if _, err := controller.RunBudget().Reserve(1); !errors.Is(err, ErrSessionHalted) {
		t.Fatalf("Reserve() after restored unfinished call = %v, want ErrSessionHalted", err)
	}
}

func TestRestoreControllerRejectsInvalidCallHistory(t *testing.T) {
	t.Parallel()
	limits := Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 100}
	finished := CostRecord{ID: "finish-first", CallState: CallFinished, RunID: "run-1", ProviderID: "provider", TaskID: "task", ProviderCallID: "call", CostCeilingMicros: 1, EstimatedCostMicros: 1, FinishedAt: time.Now()}
	if _, err := RestoreController(limits, []CostRecord{finished}); !errors.Is(err, ErrInvalidCostHistory) {
		t.Fatalf("RestoreController(finish without start) error = %v, want ErrInvalidCostHistory", err)
	}
}

func TestRestoreControllerHaltsWhenOneRunExceededItsBudget(t *testing.T) {
	limits := Limits{MaxRunMicros: 20, MaxSessionMicros: 100, MaxCandidateMicros: 20}
	started := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	first := CostRecord{
		ID: "call-a", CallState: CallStarted, RunID: "run-a", ProviderID: "test-provider",
		Model: "test-model", TaskID: "problem-a", ProviderCallID: "call-a", StartedAt: started,
		CostCeilingMicros: 15, EstimatedCostMicros: 15,
	}
	firstFinish := first
	firstFinish.CallState = CallFinished
	firstFinish.CostKnown = true
	firstFinish.EstimatedCostMicros = 15
	firstFinish.FinishedAt = started.Add(time.Second)
	firstFinish.Latency = time.Second
	second := first
	second.ID = "call-b"
	second.ProviderCallID = "call-b"
	second.StartedAt = firstFinish.FinishedAt
	secondFinish := second
	secondFinish.CallState = CallFinished
	secondFinish.CostKnown = true
	secondFinish.EstimatedCostMicros = 15
	secondFinish.FinishedAt = second.StartedAt.Add(time.Second)
	secondFinish.Latency = time.Second

	controller, err := RestoreController(limits, []CostRecord{first, firstFinish, second, secondFinish})
	if err != nil {
		t.Fatalf("RestoreController() error = %v", err)
	}
	run, err := controller.RunBudgetFor("run-a")
	if err != nil {
		t.Fatalf("RunBudgetFor() error = %v", err)
	}
	if got := run.Snapshot().RunSpentMicros; got != 30 {
		t.Fatalf("restored run spend = %d, want 30", got)
	}
	if _, err := run.Reserve(1); !errors.Is(err, ErrSessionHalted) {
		t.Fatalf("Reserve() after restored run overage = %v, want ErrSessionHalted", err)
	}
}

func TestControllerReservesAndCommitsActualUsage(t *testing.T) {
	t.Parallel()
	c, err := NewController(Limits{MaxRunMicros: 100, MaxSessionMicros: 150, MaxCandidateMicros: 80})
	if err != nil {
		t.Fatalf("NewController() error = %v, want nil", err)
	}
	run := c.RunBudget()
	reservation, err := run.Reserve(80)
	if err != nil {
		t.Fatalf("Reserve() error = %v, want nil", err)
	}
	if _, err := run.Reserve(21); err == nil {
		t.Fatal("second Reserve() error = nil, want run limit while first reservation is active")
	}
	if err := reservation.Commit(31); err != nil {
		t.Fatalf("Commit() error = %v, want nil", err)
	}
	if got := run.Snapshot(); got != (Snapshot{RunSpentMicros: 31, SessionSpentMicros: 31}) {
		t.Errorf("Snapshot() = %#v, want charged actual cost and no reservation", got)
	}
	if err := reservation.Release(); !errors.Is(err, ErrReservationClosed) {
		t.Errorf("Release() after Commit() error = %v, want ErrReservationClosed", err)
	}
}

func TestNewControllerRequiresPositiveHardLimits(t *testing.T) {
	t.Parallel()
	tests := []Limits{
		{},
		{MaxRunMicros: 1, MaxSessionMicros: 1},
		{MaxRunMicros: -1, MaxSessionMicros: 1, MaxCandidateMicros: 1},
	}
	for _, limits := range tests {
		if _, err := NewController(limits); err == nil {
			t.Errorf("NewController(%+v) error = nil, want validation error", limits)
		}
	}
}

func TestControllerRejectsNegativeAndOverLimitReservations(t *testing.T) {
	t.Parallel()
	c, err := NewController(Limits{MaxRunMicros: 10, MaxSessionMicros: 20, MaxCandidateMicros: 5})
	if err != nil {
		t.Fatalf("NewController() error = %v, want nil", err)
	}
	run := c.RunBudget()
	for _, cost := range []int64{-1, 6} {
		if _, err := run.Reserve(cost); err == nil {
			t.Errorf("Reserve(%d) error = nil, want validation/limit error", cost)
		}
	}
}

func TestControllerReleasesUnexecutedReservation(t *testing.T) {
	t.Parallel()
	c, err := NewController(Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 100})
	if err != nil {
		t.Fatalf("NewController() error = %v, want nil", err)
	}
	run := c.RunBudget()
	reservation, err := run.Reserve(100)
	if err != nil {
		t.Fatalf("Reserve() error = %v, want nil", err)
	}
	if err := reservation.Release(); err != nil {
		t.Fatalf("Release() error = %v, want nil", err)
	}
	if got := run.Snapshot(); got != (Snapshot{}) {
		t.Errorf("Snapshot() = %#v, want empty accounting after release", got)
	}
}

func TestControllerDoesNotOversubscribeConcurrentReservations(t *testing.T) {
	t.Parallel()
	c, err := NewController(Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 60})
	if err != nil {
		t.Fatalf("NewController() error = %v, want nil", err)
	}
	run := c.RunBudget()
	var wg sync.WaitGroup
	var successes atomic.Int64
	for range 16 {
		wg.Go(func() {
			reservation, reserveErr := run.Reserve(60)
			if reserveErr != nil {
				return
			}
			if err := reservation.Commit(60); err != nil {
				t.Errorf("Commit() error = %v, want nil", err)
				return
			}
			successes.Add(1)
		})
	}
	wg.Wait()
	if got := successes.Load(); got != 1 {
		t.Errorf("successful reservations = %d, want exactly one under run/session ceilings", got)
	}
}

func TestControllerSeparatesRunAndSessionCeilings(t *testing.T) {
	t.Parallel()
	c, err := NewController(Limits{MaxRunMicros: 10, MaxSessionMicros: 20, MaxCandidateMicros: 10})
	if err != nil {
		t.Fatalf("NewController() error = %v, want nil", err)
	}
	first := c.RunBudget()
	firstReservation, err := first.Reserve(10)
	if err != nil {
		t.Fatalf("first Reserve() error = %v, want nil", err)
	}
	if err := firstReservation.Commit(10); err != nil {
		t.Fatalf("first Commit() error = %v, want nil", err)
	}
	second := c.RunBudget()
	secondReservation, err := second.Reserve(10)
	if err != nil {
		t.Fatalf("second Reserve() error = %v, want new run to have its own ceiling", err)
	}
	if err := secondReservation.Commit(10); err != nil {
		t.Fatalf("second Commit() error = %v, want nil", err)
	}
	if got := second.Snapshot(); got.RunSpentMicros != 10 || got.SessionSpentMicros != 20 {
		t.Errorf("second Snapshot() = %#v, want independent run and shared session totals", got)
	}
}

func TestReservationChargesOverrunAndHaltsSharedSession(t *testing.T) {
	t.Parallel()
	c, err := NewController(Limits{MaxRunMicros: 100, MaxSessionMicros: 10, MaxCandidateMicros: 100})
	if err != nil {
		t.Fatalf("NewController() error = %v, want nil", err)
	}
	run := c.RunBudget()
	reservation, err := run.Reserve(10)
	if err != nil {
		t.Fatalf("Reserve() error = %v, want nil", err)
	}
	if err := reservation.Commit(11); !errors.Is(err, ErrActualExceedsLimit) {
		t.Fatalf("Commit() error = %v, want ErrActualExceedsLimit", err)
	}
	if err := reservation.Release(); !errors.Is(err, ErrReservationClosed) {
		t.Fatalf("Release() after overrun commit error = %v, want ErrReservationClosed", err)
	}
	if got := run.Snapshot(); got != (Snapshot{RunSpentMicros: 11, SessionSpentMicros: 11}) {
		t.Errorf("Snapshot() = %#v, want the full reported overrun charged", got)
	}
	otherRun := c.RunBudget()
	if _, err := otherRun.Reserve(1); !errors.Is(err, ErrSessionHalted) {
		t.Errorf("Reserve() on another run after overrun error = %v, want ErrSessionHalted", err)
	}
}
