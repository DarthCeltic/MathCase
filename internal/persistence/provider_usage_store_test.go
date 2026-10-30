package persistence

import (
	"context"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
)

func TestProviderUsageReconciliationStoreRoundTripsImmutableReports(t *testing.T) {
	root := filepath.Join(t.TempDir(), "store")
	store, err := NewProviderUsageReconciliationStore(root)
	if err != nil {
		t.Fatal(err)
	}
	report := validProviderUsageReconciliation()
	first, err := store.Put(context.Background(), report)
	if err != nil {
		t.Fatal(err)
	}
	second, err := store.Put(context.Background(), report)
	if err != nil {
		t.Fatal(err)
	}
	if first.ContentSHA256 != second.ContentSHA256 || first.RelativePath != second.RelativePath {
		t.Fatalf("identical report writes did not deduplicate: %#v != %#v", first, second)
	}
	loaded, err := store.Get(context.Background(), first.ContentSHA256)
	if err != nil {
		t.Fatal(err)
	}
	if loaded.ProviderID != report.ProviderID || loaded.IdentityMatchedCallCount != 1 || loaded.LedgerChargedMicros != 7 || !loaded.Reconciled {
		t.Fatalf("round trip changed provider usage reconciliation: %#v", loaded)
	}

	report.ProviderExportSHA256 = strings.Repeat("c", 64)
	third, err := store.Put(context.Background(), report)
	if err != nil {
		t.Fatal(err)
	}
	if third.ContentSHA256 == first.ContentSHA256 {
		t.Fatal("changed report reused an existing content address")
	}
}

func TestProviderUsageReconciliationStoreRejectsInvalidAndTamperedReports(t *testing.T) {
	root := filepath.Join(t.TempDir(), "store")
	store, err := NewProviderUsageReconciliationStore(root)
	if err != nil {
		t.Fatal(err)
	}
	invalid := validProviderUsageReconciliation()
	invalid.ProviderBilledMicros++
	if _, err := store.Put(context.Background(), invalid); err == nil {
		t.Fatal("reconciled report with unequal totals was accepted")
	}

	receipt, err := store.Put(context.Background(), validProviderUsageReconciliation())
	if err != nil {
		t.Fatal(err)
	}
	path := filepath.Join(root, filepath.FromSlash(receipt.RelativePath))
	if err := os.WriteFile(path, []byte("tampered"), 0o600); err != nil {
		t.Fatal(err)
	}
	if _, err := store.Get(context.Background(), receipt.ContentSHA256); err == nil {
		t.Fatal("tampered provider usage reconciliation was accepted")
	}
}

func TestProviderUsageReconciliationStorePersistsDiscrepancyReports(t *testing.T) {
	store, err := NewProviderUsageReconciliationStore(filepath.Join(t.TempDir(), "store"))
	if err != nil {
		t.Fatal(err)
	}
	report := validProviderUsageReconciliation()
	report.ProviderCallCount = 2
	report.ProviderBilledMicros = 9
	report.Reconciled = false
	report.HaltFurtherSpending = true
	report.Discrepancies = []budget.ProviderUsageDiscrepancy{{
		Code: "provider_only", ProviderCallID: "request-extra", Summary: "Provider billed call is absent from the selected cost-ledger window.",
	}}
	if err := report.Validate(); err != nil {
		t.Fatalf("valid discrepancy report rejected: %v", err)
	}
	receipt, err := store.Put(context.Background(), report)
	if err != nil {
		t.Fatal(err)
	}
	loaded, err := store.Get(context.Background(), receipt.ContentSHA256)
	if err != nil {
		t.Fatal(err)
	}
	if loaded.Reconciled || !loaded.HaltFurtherSpending || len(loaded.Discrepancies) != 1 || loaded.Discrepancies[0].ProviderCallID != "request-extra" {
		t.Fatalf("stored discrepancy report = %#v", loaded)
	}
}

func validProviderUsageReconciliation() budget.ProviderUsageReconciliation {
	return budget.ProviderUsageReconciliation{
		SchemaVersion: budget.ProviderUsageReportSchemaVersion,
		ProviderID:    "provider-test", AccountProfile: "account-test",
		PeriodStart:  time.Date(2026, time.October, 20, 11, 0, 0, 0, time.UTC),
		PeriodEnd:    time.Date(2026, time.October, 20, 13, 0, 0, 0, time.UTC),
		LedgerSHA256: strings.Repeat("a", 64), ProviderExportSHA256: strings.Repeat("b", 64),
		LedgerCallCount: 1, ProviderCallCount: 1, IdentityMatchedCallCount: 1,
		LedgerChargedMicros: 7, ProviderBilledMicros: 7, Reconciled: true,
	}
}
