package budget_test

import (
	"crypto/sha256"
	"encoding/hex"
	jsonv2 "encoding/json/v2"
	"errors"
	"os"
	"path/filepath"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
)

func TestReconcileProviderUsageJSONLMatchesExactCallRecords(t *testing.T) {
	started := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	ledgerPath := writeReconciliationTestLedger(t, started)
	export := reconciliationTestExport(started)
	exportBytes, err := jsonv2.Marshal(export)
	if err != nil {
		t.Fatal(err)
	}

	report, err := budget.ReconcileProviderUsageJSONL(ledgerPath, exportBytes)
	if err != nil {
		t.Fatalf("ReconcileProviderUsageJSONL() error = %v, want nil", err)
	}
	if !report.Reconciled || report.HaltFurtherSpending || report.LedgerCallCount != 1 || report.ProviderCallCount != 1 || report.IdentityMatchedCallCount != 1 {
		t.Fatalf("reconciliation report = %#v, want one exact reconciled call", report)
	}
	if report.LedgerChargedMicros != 7 || report.ProviderBilledMicros != 7 || len(report.Discrepancies) != 0 {
		t.Fatalf("reconciliation totals/discrepancies = %#v, want both totals 7 and no discrepancies", report)
	}
	ledgerBytes, err := os.ReadFile(ledgerPath)
	if err != nil {
		t.Fatal(err)
	}
	ledgerDigest := sha256.Sum256(ledgerBytes)
	exportDigest := sha256.Sum256(exportBytes)
	if report.LedgerSHA256 != hex.EncodeToString(ledgerDigest[:]) || report.ProviderExportSHA256 != hex.EncodeToString(exportDigest[:]) {
		t.Fatalf("reconciliation hashes = %q / %q, want hashes of exact input bytes", report.LedgerSHA256, report.ProviderExportSHA256)
	}
}

func TestRunBudgetReconciliationMismatchHaltsFutureReservations(t *testing.T) {
	started := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	ledgerPath := writeReconciliationTestLedger(t, started)
	export := reconciliationTestExport(started)
	export.Records[0].BilledCostMicros = 8
	export.Records = append(export.Records, budget.ProviderUsageRecord{
		ProviderCallID: "provider-only-call", Model: "model-test", InputTokens: 2, OutputTokens: 1,
		BilledCostMicros: 2, OccurredAt: started.Add(time.Second),
	})
	exportBytes, err := jsonv2.Marshal(export)
	if err != nil {
		t.Fatal(err)
	}
	controller, err := budget.NewController(budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 100})
	if err != nil {
		t.Fatal(err)
	}
	run := controller.RunBudget()
	report, err := run.ReconcileProviderUsageJSONL(ledgerPath, exportBytes)
	if !errors.Is(err, budget.ErrProviderUsageMismatch) {
		t.Fatalf("ReconcileProviderUsageJSONL() error = %v, want ErrProviderUsageMismatch", err)
	}
	if report.Reconciled || !report.HaltFurtherSpending || len(report.Discrepancies) != 2 {
		t.Fatalf("mismatch report = %#v, want two discrepancies and stop flag", report)
	}
	if _, err := run.Reserve(1); !errors.Is(err, budget.ErrSessionHalted) {
		t.Fatalf("Reserve() after provider discrepancy = %v, want ErrSessionHalted", err)
	}
}

func TestRunBudgetReconciliationInvalidExportAlsoHalts(t *testing.T) {
	started := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	ledgerPath := writeReconciliationTestLedger(t, started)
	controller, err := budget.NewController(budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 100})
	if err != nil {
		t.Fatal(err)
	}
	run := controller.RunBudget()
	if _, err := run.ReconcileProviderUsageJSONL(ledgerPath, []byte(`{"schema_version":"unknown"}`)); err == nil {
		t.Fatal("invalid provider export was accepted")
	}
	if _, err := run.Reserve(1); !errors.Is(err, budget.ErrSessionHalted) {
		t.Fatalf("Reserve() after invalid reconciliation evidence = %v, want ErrSessionHalted", err)
	}

	controller2, err := budget.NewController(budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 100})
	if err != nil {
		t.Fatal(err)
	}
	missingUsageField := []byte(`{"schema_version":"mathcase-provider-usage-export-v1","provider_id":"provider-test","account_profile":"account-test","period_start":"2026-10-20T11:59:00Z","period_end":"2026-10-20T12:01:00Z","records":[{"provider_call_id":"provider-response-call-reconcile","model":"model-test","input_tokens":12,"billed_cost_micros":7,"occurred_at":"2026-10-20T12:00:00Z"}]}`)
	run2 := controller2.RunBudget()
	if _, err := run2.ReconcileProviderUsageJSONL(ledgerPath, missingUsageField); err == nil {
		t.Fatal("provider export with a missing output_tokens member was accepted")
	}
	if _, err := run2.Reserve(1); !errors.Is(err, budget.ErrSessionHalted) {
		t.Fatalf("Reserve() after missing usage field = %v, want ErrSessionHalted", err)
	}
}

func TestReconcileProviderUsageJSONLRefusesLockedLedger(t *testing.T) {
	started := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	ledgerPath := filepath.Join(t.TempDir(), "cost-ledger.jsonl")
	session, err := budget.OpenCostSession(ledgerPath, budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 100})
	if err != nil {
		t.Fatal(err)
	}
	defer func() { _ = session.Close() }()
	exportBytes, err := jsonv2.Marshal(reconciliationTestExport(started))
	if err != nil {
		t.Fatal(err)
	}
	if _, err := budget.ReconcileProviderUsageJSONL(ledgerPath, exportBytes); !errors.Is(err, budget.ErrCostJournalLocked) {
		t.Fatalf("ReconcileProviderUsageJSONL() on locked journal = %v, want ErrCostJournalLocked", err)
	}
}

func reconciliationTestExport(started time.Time) budget.ProviderUsageExport {
	return budget.ProviderUsageExport{
		SchemaVersion: budget.ProviderUsageExportSchemaVersion,
		ProviderID:    "provider-test", AccountProfile: "account-test",
		PeriodStart: started.Add(-time.Minute), PeriodEnd: started.Add(time.Minute),
		Records: []budget.ProviderUsageRecord{{
			ProviderCallID: "provider-response-call-reconcile", Model: "model-test", InputTokens: 12, OutputTokens: 8,
			BilledCostMicros: 7, OccurredAt: started,
		}},
	}
}

func writeReconciliationTestLedger(t *testing.T, started time.Time) string {
	t.Helper()
	ledgerPath := filepath.Join(t.TempDir(), "cost-ledger.jsonl")
	session, err := budget.OpenCostSession(ledgerPath, budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 100})
	if err != nil {
		t.Fatal(err)
	}
	writeReceiptTestCall(t, session, "call-reconcile", "run-reconcile", started)
	if err := session.Close(); err != nil {
		t.Fatal(err)
	}
	return ledgerPath
}
