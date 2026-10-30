package budget_test

import (
	"os"
	"path/filepath"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
)

func TestCostCallReceiptReconcilesStableAppendOnlyPrefix(t *testing.T) {
	path := filepath.Join(t.TempDir(), "cost-ledger.jsonl")
	limits := budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 1000, MaxCandidateMicros: 100}
	session, err := budget.OpenCostSession(path, limits)
	if err != nil {
		t.Fatal(err)
	}
	t.Cleanup(func() { _ = session.Close() })
	writeReceiptTestCall(t, session, "call-prefix-a", "run-a", time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC))
	receipt, err := session.CallReceipt("call-prefix-a")
	if err != nil {
		t.Fatalf("CallReceipt() error = %v", err)
	}
	if receipt.StartEvent != 1 || receipt.FinishEvent != 2 || receipt.Start.ModelVersion != "model-rev-test" || receipt.Finish.EstimatedCostMicros != 7 {
		t.Fatalf("cost-call receipt = %#v, want the exact first call event pair and charge", receipt)
	}
	if err := budget.VerifyCostCallReceiptJSONL(path, receipt); err != nil {
		t.Fatalf("VerifyCostCallReceiptJSONL() error = %v", err)
	}
	if err := session.Close(); err != nil {
		t.Fatal(err)
	}

	// A later session appends another call. The original prefix remains
	// independently checkable because its byte count ends at call-prefix-a.
	second, err := budget.OpenCostSession(path, limits)
	if err != nil {
		t.Fatal(err)
	}
	t.Cleanup(func() { _ = second.Close() })
	writeReceiptTestCall(t, second, "call-prefix-b", "run-b", time.Date(2026, time.October, 20, 12, 1, 0, 0, time.UTC))
	if err := second.Close(); err != nil {
		t.Fatal(err)
	}
	if err := budget.VerifyCostCallReceiptJSONL(path, receipt); err != nil {
		t.Fatalf("receipt no longer verifies after an append-only event pair: %v", err)
	}

	data, err := os.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	if len(data) <= int(receipt.JournalPrefixBytes) {
		t.Fatalf("ledger has %d bytes, want appended bytes after prefix %d", len(data), receipt.JournalPrefixBytes)
	}
	tampered := append([]byte(nil), data...)
	tampered[0] = '['
	tamperedPath := filepath.Join(t.TempDir(), "tampered-ledger.jsonl")
	if err := os.WriteFile(tamperedPath, tampered, 0o600); err != nil {
		t.Fatal(err)
	}
	if err := budget.VerifyCostCallReceiptJSONL(tamperedPath, receipt); err == nil {
		t.Fatal("receipt verified against a ledger whose referenced prefix bytes changed")
	}

	badPosition := receipt
	badPosition.FinishEvent++
	if err := budget.VerifyCostCallReceiptJSONL(path, badPosition); err == nil {
		t.Fatal("receipt with a non-adjacent event position was accepted")
	}
}

func writeReceiptTestCall(t *testing.T, session *budget.CostSession, callID, runID string, started time.Time) {
	t.Helper()
	run, err := session.RunBudgetFor(runID)
	if err != nil {
		t.Fatal(err)
	}
	reservation, err := run.Reserve(10)
	if err != nil {
		t.Fatal(err)
	}
	start := budget.CostRecord{
		ID: callID, CallState: budget.CallStarted, RunID: runID,
		ProviderID: "provider-test", AccountProfile: "account-test",
		Model: "model-test", ModelVersion: "model-rev-test", TaskID: budget.TaskM7Expositor,
		CandidateID: "problem-test", StartedAt: started,
		CostCeilingMicros: 10, EstimatedCostMicros: 10,
	}
	if err := session.Journal().BeginCall(start); err != nil {
		t.Fatal(err)
	}
	finish := start
	finish.CallState = budget.CallFinished
	finish.ProviderCallID = "provider-response-" + callID
	finish.FinishedAt = started.Add(time.Second)
	finish.Latency = time.Second
	finish.EstimatedCostMicros = 7
	finish.CostKnown = true
	finish.UsageReported = true
	finish.UsageValid = true
	finish.InputTokens = 12
	finish.OutputTokens = 8
	finish.ProviderOutcome = "returned"
	finish.GenerationOutcome = "complete"
	finish.DecoderOutcome = "accepted"
	if err := session.Journal().FinishCall(finish); err != nil {
		t.Fatal(err)
	}
	if err := reservation.Commit(7); err != nil {
		t.Fatal(err)
	}
}
