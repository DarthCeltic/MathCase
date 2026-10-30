package budget_test

import (
	"errors"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
)

func TestCostSessionLocksRestoresAndReleasesJournal(t *testing.T) {
	path := filepath.Join(t.TempDir(), "costs.jsonl")
	limits := budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 100}
	session, err := budget.OpenCostSession(path, limits)
	if err != nil {
		t.Fatalf("OpenCostSession() error = %v", err)
	}
	if _, err := budget.OpenCostSession(path, limits); !errors.Is(err, budget.ErrCostJournalLocked) {
		t.Fatalf("second OpenCostSession() error = %v, want locked refusal", err)
	}
	if _, err := budget.OpenJSONLRecorder(path); !errors.Is(err, budget.ErrCostJournalLocked) {
		t.Fatalf("OpenJSONLRecorder() bypassed the active CostSession lock: %v", err)
	}
	run, err := session.RunBudgetFor("run-a")
	if err != nil {
		t.Fatalf("RunBudgetFor() error = %v", err)
	}
	reservation, err := run.Reserve(80)
	if err != nil {
		t.Fatalf("Reserve() error = %v", err)
	}
	started := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	start := budget.CostRecord{
		ID: "call-a", CallState: budget.CallStarted, RunID: "run-a", ProviderID: "test-provider",
		Model: "test-model", TaskID: "problem-a", ProviderCallID: "call-a", StartedAt: started,
		CostCeilingMicros: 80, EstimatedCostMicros: 80,
	}
	journal := session.Journal()
	if err := journal.BeginCall(start); err != nil {
		t.Fatalf("BeginCall() error = %v", err)
	}
	finish := start
	finish.CallState = budget.CallFinished
	finish.CostKnown = true
	finish.EstimatedCostMicros = 57
	finish.FinishedAt = started.Add(time.Second)
	finish.Latency = time.Second
	if err := journal.FinishCall(finish); err != nil {
		t.Fatalf("FinishCall() error = %v", err)
	}
	if err := reservation.Commit(57); err != nil {
		t.Fatalf("Commit() error = %v", err)
	}
	if err := session.Close(); err != nil {
		t.Fatalf("Close() error = %v", err)
	}
	if _, err := os.Stat(path + ".lock"); !os.IsNotExist(err) {
		t.Fatalf("normal Close() left a lock file, stat error = %v", err)
	}
	if _, err := session.RunBudgetFor("run-a"); !errors.Is(err, budget.ErrCostSessionClosed) {
		t.Fatalf("RunBudgetFor() after Close() error = %v, want ErrCostSessionClosed", err)
	}

	restored, err := budget.OpenCostSession(path, limits)
	if err != nil {
		t.Fatalf("OpenCostSession(restored) error = %v", err)
	}
	restoredRun, err := restored.RunBudgetFor("run-a")
	if err != nil {
		t.Fatalf("RunBudgetFor(restored) error = %v", err)
	}
	if got := restoredRun.Snapshot(); got.RunSpentMicros != 57 || got.SessionSpentMicros != 57 {
		t.Fatalf("restored budget snapshot = %#v, want run and session spend 57", got)
	}
	if _, err := restoredRun.Reserve(44); err == nil {
		t.Fatal("Reserve(44) after a restored charge of 57 unexpectedly succeeded")
	}
	if err := restored.Close(); err != nil {
		t.Fatalf("restored Close() error = %v", err)
	}
}

func TestCostSessionRetainsLockForUnfinishedCall(t *testing.T) {
	path := filepath.Join(t.TempDir(), "unfinished.jsonl")
	limits := budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 100}
	session, err := budget.OpenCostSession(path, limits)
	if err != nil {
		t.Fatal(err)
	}
	start := budget.CostRecord{
		ID: "call-unfinished", CallState: budget.CallStarted, RunID: "run-a", ProviderID: "test-provider",
		TaskID: "problem-a", ProviderCallID: "call-unfinished", StartedAt: time.Now().UTC(),
		CostCeilingMicros: 30, EstimatedCostMicros: 30,
	}
	if err := session.Journal().BeginCall(start); err != nil {
		t.Fatalf("BeginCall() error = %v", err)
	}
	if err := session.Close(); !errors.Is(err, budget.ErrUnfinishedCostCalls) {
		t.Fatalf("Close() with unfinished call error = %v, want ErrUnfinishedCostCalls", err)
	}
	lockData, err := os.ReadFile(path + ".lock")
	if err != nil || !strings.Contains(string(lockData), "schema=mathcase-cost-lock-v1") {
		t.Fatalf("retained lock metadata = %q, error = %v", lockData, err)
	}
	if _, err := budget.OpenCostSession(path, limits); !errors.Is(err, budget.ErrCostJournalLocked) {
		t.Fatalf("OpenCostSession() with unfinished-call lock error = %v, want locked refusal", err)
	}
	restored, err := budget.RestoreControllerFromJSONLFile(path, limits)
	if err != nil {
		t.Fatalf("RestoreControllerFromJSONLFile() error = %v", err)
	}
	if got := restored.SessionSnapshot().SpentMicros; got != 30 {
		t.Fatalf("unfinished call restored charge = %d, want full ceiling 30", got)
	}
	run, err := restored.RunBudgetFor("run-a")
	if err != nil {
		t.Fatalf("RunBudgetFor() error = %v", err)
	}
	if _, err := run.Reserve(1); !errors.Is(err, budget.ErrSessionHalted) {
		t.Fatalf("Reserve() after unfinished-call recovery error = %v, want ErrSessionHalted", err)
	}
}
