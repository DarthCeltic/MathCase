package budget

import (
	"bytes"
	"crypto/sha256"
	jsonv1 "encoding/json"
	jsonv2 "encoding/json/v2"
	"errors"
	"fmt"
	"os"
	"sort"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	ProviderUsageExportSchemaVersion = "mathcase-provider-usage-export-v1"
	ProviderUsageReportSchemaVersion = "mathcase-provider-usage-reconciliation-v1"
)

var ErrProviderUsageMismatch = errors.New("budget: provider usage does not reconcile with the cost ledger; session halted")

// ProviderUsageExport is the normalized per-call shape accepted by the local
// reconciliation path. Adapters must preserve the provider's call ID, model,
// token counts, billed cost in micro-USD, and request-start timestamp. An
// aggregate-only billing export cannot be reconciled at this level.
type ProviderUsageExport struct {
	SchemaVersion  string                `json:"schema_version"`
	ProviderID     string                `json:"provider_id"`
	AccountProfile string                `json:"account_profile"`
	PeriodStart    time.Time             `json:"period_start"`
	PeriodEnd      time.Time             `json:"period_end"`
	Records        []ProviderUsageRecord `json:"records"`
}

// ProviderUsageRecord is one provider-side billing row. OccurredAt must
// represent request creation/start so it can be assigned to the same time window.
type ProviderUsageRecord struct {
	ProviderCallID   string    `json:"provider_call_id"`
	Model            string    `json:"model"`
	InputTokens      int       `json:"input_tokens"`
	OutputTokens     int       `json:"output_tokens"`
	BilledCostMicros int64     `json:"billed_cost_micros"`
	OccurredAt       time.Time `json:"occurred_at"`
}

type ProviderUsageDiscrepancy struct {
	Code           string   `json:"code"`
	CallID         string   `json:"call_id,omitzero"`
	ProviderCallID string   `json:"provider_call_id,omitzero"`
	Fields         []string `json:"fields,omitzero"`
	Summary        string   `json:"summary"`
}

// ProviderUsageReconciliation is a local comparison receipt. Its hashes bind
// the exact input bytes; it does not authenticate the source provider or fetch
// usage data on its own.
type ProviderUsageReconciliation struct {
	SchemaVersion            string                     `json:"schema_version"`
	ProviderID               string                     `json:"provider_id"`
	AccountProfile           string                     `json:"account_profile"`
	PeriodStart              time.Time                  `json:"period_start"`
	PeriodEnd                time.Time                  `json:"period_end"`
	LedgerSHA256             string                     `json:"ledger_sha256"`
	ProviderExportSHA256     string                     `json:"provider_export_sha256"`
	LedgerCallCount          int                        `json:"ledger_call_count"`
	ProviderCallCount        int                        `json:"provider_call_count"`
	IdentityMatchedCallCount int                        `json:"identity_matched_call_count"`
	LedgerChargedMicros      int64                      `json:"ledger_charged_micros"`
	ProviderBilledMicros     int64                      `json:"provider_billed_micros"`
	Reconciled               bool                       `json:"reconciled"`
	HaltFurtherSpending      bool                       `json:"halt_further_spending"`
	Discrepancies            []ProviderUsageDiscrepancy `json:"discrepancies,omitzero"`
}

// Validate checks the structural invariants required before a reconciliation
// report can be persisted or used as a stop/continue decision.
func (report ProviderUsageReconciliation) Validate() error {
	if report.SchemaVersion != ProviderUsageReportSchemaVersion {
		return fmt.Errorf("budget: unsupported provider usage reconciliation schema %q", report.SchemaVersion)
	}
	if err := validateProviderUsageIdentity("provider ID", report.ProviderID); err != nil {
		return err
	}
	if err := validateProviderUsageIdentity("account profile", report.AccountProfile); err != nil {
		return err
	}
	if report.PeriodStart.IsZero() || report.PeriodEnd.IsZero() || !report.PeriodStart.Before(report.PeriodEnd) {
		return errors.New("budget: reconciliation report has an invalid time window")
	}
	if !canonicalSHA256(report.LedgerSHA256) || !canonicalSHA256(report.ProviderExportSHA256) {
		return errors.New("budget: reconciliation report requires canonical input SHA-256 digests")
	}
	if report.LedgerCallCount < 0 || report.ProviderCallCount < 0 || report.IdentityMatchedCallCount < 0 ||
		report.LedgerChargedMicros < 0 || report.ProviderBilledMicros < 0 {
		return errors.New("budget: reconciliation report contains a negative count or total")
	}
	if report.IdentityMatchedCallCount > report.LedgerCallCount || report.IdentityMatchedCallCount > report.ProviderCallCount {
		return errors.New("budget: reconciliation report identity matches exceed input call counts")
	}
	if report.Reconciled && (report.IdentityMatchedCallCount != report.LedgerCallCount ||
		report.IdentityMatchedCallCount != report.ProviderCallCount || report.LedgerChargedMicros != report.ProviderBilledMicros) {
		return errors.New("budget: reconciled report has unmatched call counts or unequal cost totals")
	}
	if report.Reconciled != (len(report.Discrepancies) == 0) || report.HaltFurtherSpending == report.Reconciled {
		return errors.New("budget: reconciliation report status and discrepancy list are inconsistent")
	}
	allowedCodes := map[string]struct{}{
		"call_fields_mismatch": {}, "duplicate_ledger_provider_call_id": {}, "ledger_account_profile_missing": {},
		"ledger_charge_over_ceiling": {}, "ledger_only": {}, "provider_only": {}, "unfinished_ledger_call": {},
	}
	allowedFields := map[string]struct{}{
		"billed_cost_micros": {}, "input_tokens": {}, "ledger_usage_trust": {}, "model": {}, "output_tokens": {},
	}
	for index, discrepancy := range report.Discrepancies {
		if _, ok := allowedCodes[discrepancy.Code]; !ok || strings.TrimSpace(discrepancy.Summary) == "" {
			return fmt.Errorf("budget: reconciliation discrepancy %d is invalid", index+1)
		}
		if discrepancy.CallID != "" {
			if err := validateProviderUsageIdentity("discrepancy call ID", discrepancy.CallID); err != nil {
				return err
			}
		}
		if discrepancy.ProviderCallID != "" {
			if err := validateProviderUsageIdentity("discrepancy provider call ID", discrepancy.ProviderCallID); err != nil {
				return err
			}
		}
		if discrepancy.CallID == "" && discrepancy.ProviderCallID == "" {
			return fmt.Errorf("budget: reconciliation discrepancy %d has no call identity", index+1)
		}
		if discrepancy.Code == "call_fields_mismatch" && (discrepancy.CallID == "" || discrepancy.ProviderCallID == "" || len(discrepancy.Fields) == 0) {
			return fmt.Errorf("budget: reconciliation discrepancy %d has incomplete field-mismatch details", index+1)
		}
		if discrepancy.Code != "call_fields_mismatch" && len(discrepancy.Fields) != 0 {
			return fmt.Errorf("budget: reconciliation discrepancy %d has fields for a non-field mismatch", index+1)
		}
		seenFields := make(map[string]struct{}, len(discrepancy.Fields))
		for fieldIndex, field := range discrepancy.Fields {
			if _, ok := allowedFields[field]; !ok {
				return fmt.Errorf("budget: reconciliation discrepancy %d has unknown field %q", index+1, field)
			}
			if _, exists := seenFields[field]; exists {
				return fmt.Errorf("budget: reconciliation discrepancy %d repeats field %q", index+1, field)
			}
			seenFields[field] = struct{}{}
			if fieldIndex > 0 && field <= discrepancy.Fields[fieldIndex-1] {
				return fmt.Errorf("budget: reconciliation discrepancy %d fields are not in canonical order", index+1)
			}
		}
		if index > 0 && discrepancyLess(discrepancy, report.Discrepancies[index-1]) {
			return errors.New("budget: reconciliation discrepancies are not in canonical order")
		}
	}
	return nil
}

// ReconcileProviderUsageJSONL reads a closed local cost ledger and a strict
// normalized provider export, then compares every call in the export window.
// A mismatch is returned as both a report and ErrProviderUsageMismatch so the
// caller can preserve the receipt while stopping further paid work.
func ReconcileProviderUsageJSONL(ledgerPath string, providerExportJSON []byte) (ProviderUsageReconciliation, error) {
	if len(providerExportJSON) == 0 {
		return ProviderUsageReconciliation{}, errors.New("budget: provider usage export is empty")
	}
	if err := rejectCostJournalLock(ledgerPath); err != nil {
		return ProviderUsageReconciliation{}, err
	}
	ledgerBytes, err := readCostJournalBytes(ledgerPath)
	if err != nil {
		return ProviderUsageReconciliation{}, err
	}
	if len(ledgerBytes) > 0 && ledgerBytes[len(ledgerBytes)-1] != '\n' {
		return ProviderUsageReconciliation{}, errors.New("budget: cost ledger does not end at a JSONL event boundary")
	}
	if err := rejectCostJournalLock(ledgerPath); err != nil {
		return ProviderUsageReconciliation{}, err
	}
	ledger, err := ReadJSONL(bytes.NewReader(ledgerBytes))
	if err != nil {
		return ProviderUsageReconciliation{}, err
	}
	var export ProviderUsageExport
	if err := validateRequiredProviderUsageMembers(providerExportJSON); err != nil {
		return ProviderUsageReconciliation{}, err
	}
	if err := jsonv2.Unmarshal(providerExportJSON, &export, jsonv2.RejectUnknownMembers(true)); err != nil {
		return ProviderUsageReconciliation{}, fmt.Errorf("budget: decode provider usage export: %w", err)
	}
	if err := validateProviderUsageExport(export); err != nil {
		return ProviderUsageReconciliation{}, err
	}
	return reconcileProviderUsage(ledger, export, ledgerBytes, providerExportJSON)
}

// ReconcileProviderUsageJSONL applies a provider reconciliation to this run's
// shared session budget. Any malformed, incomplete, or mismatching evidence
// halts future reservations for the whole controller.
func (r *RunBudget) ReconcileProviderUsageJSONL(ledgerPath string, providerExportJSON []byte) (ProviderUsageReconciliation, error) {
	if r == nil || r.controller == nil {
		return ProviderUsageReconciliation{}, errors.New("budget: run budget is nil")
	}
	report, err := ReconcileProviderUsageJSONL(ledgerPath, providerExportJSON)
	if err != nil {
		r.HaltSession()
		return report, err
	}
	if !report.Reconciled {
		r.HaltSession()
		return report, ErrProviderUsageMismatch
	}
	return report, nil
}

func validateProviderUsageExport(export ProviderUsageExport) error {
	if export.SchemaVersion != ProviderUsageExportSchemaVersion {
		return fmt.Errorf("budget: unsupported provider usage export schema %q", export.SchemaVersion)
	}
	if err := validateProviderUsageIdentity("provider ID", export.ProviderID); err != nil {
		return err
	}
	if err := validateProviderUsageIdentity("account profile", export.AccountProfile); err != nil {
		return err
	}
	if export.PeriodStart.IsZero() || export.PeriodEnd.IsZero() || !export.PeriodStart.Before(export.PeriodEnd) {
		return errors.New("budget: provider usage export requires a valid half-open time window")
	}
	if export.Records == nil {
		return errors.New("budget: provider usage export must include a records array")
	}
	seen := make(map[string]struct{}, len(export.Records))
	for index, record := range export.Records {
		if err := validateProviderUsageIdentity("provider call ID", record.ProviderCallID); err != nil {
			return fmt.Errorf("budget: provider usage row %d: %w", index+1, err)
		}
		if strings.TrimSpace(record.Model) == "" || record.Model != strings.TrimSpace(record.Model) || strings.ContainsRune(record.Model, '\x00') {
			return fmt.Errorf("budget: provider usage row %d has an invalid model", index+1)
		}
		if record.InputTokens < 0 || record.OutputTokens < 0 || record.BilledCostMicros < 0 || record.OccurredAt.IsZero() {
			return fmt.Errorf("budget: provider usage row %d has invalid usage or timestamp values", index+1)
		}
		if record.OccurredAt.Before(export.PeriodStart) || !record.OccurredAt.Before(export.PeriodEnd) {
			return fmt.Errorf("budget: provider usage row %d falls outside the declared half-open time window", index+1)
		}
		if _, exists := seen[record.ProviderCallID]; exists {
			return fmt.Errorf("budget: provider usage export repeats call ID %q", record.ProviderCallID)
		}
		seen[record.ProviderCallID] = struct{}{}
	}
	return nil
}

func validateRequiredProviderUsageMembers(data []byte) error {
	var object map[string]jsonv1.RawMessage
	if err := jsonv1.Unmarshal(data, &object); err != nil {
		return fmt.Errorf("budget: provider usage export must be a JSON object: %w", err)
	}
	for _, name := range []string{"schema_version", "provider_id", "account_profile", "period_start", "period_end", "records"} {
		value, exists := object[name]
		if !exists || bytes.Equal(bytes.TrimSpace(value), []byte("null")) {
			return fmt.Errorf("budget: provider usage export is missing required member %q", name)
		}
	}
	var rows []jsonv1.RawMessage
	if err := jsonv1.Unmarshal(object["records"], &rows); err != nil || rows == nil {
		return errors.New("budget: provider usage export records must be a JSON array")
	}
	for index, rawRow := range rows {
		var row map[string]jsonv1.RawMessage
		if err := jsonv1.Unmarshal(rawRow, &row); err != nil || row == nil {
			return fmt.Errorf("budget: provider usage row %d must be a JSON object", index+1)
		}
		for _, name := range []string{"provider_call_id", "model", "input_tokens", "output_tokens", "billed_cost_micros", "occurred_at"} {
			value, exists := row[name]
			if !exists || bytes.Equal(bytes.TrimSpace(value), []byte("null")) {
				return fmt.Errorf("budget: provider usage row %d is missing required member %q", index+1, name)
			}
		}
	}
	return nil
}

func validateProviderUsageIdentity(name, value string) error {
	if value == "" || value != strings.TrimSpace(value) {
		return fmt.Errorf("budget: %s is required", name)
	}
	if err := state.ValidateIdentifier(name, value); err != nil {
		return fmt.Errorf("budget: %w", err)
	}
	return nil
}

func reconcileProviderUsage(ledger []CostRecord, export ProviderUsageExport, ledgerBytes, exportBytes []byte) (ProviderUsageReconciliation, error) {
	started, _, err := validateJournalSequence(ledger)
	if err != nil {
		return ProviderUsageReconciliation{}, err
	}
	report := ProviderUsageReconciliation{
		SchemaVersion:        ProviderUsageReportSchemaVersion,
		ProviderID:           export.ProviderID,
		AccountProfile:       export.AccountProfile,
		PeriodStart:          export.PeriodStart,
		PeriodEnd:            export.PeriodEnd,
		LedgerSHA256:         digestHex(ledgerBytes),
		ProviderExportSHA256: digestHex(exportBytes),
		ProviderCallCount:    len(export.Records),
	}
	providerRows := make(map[string]ProviderUsageRecord, len(export.Records))
	for _, row := range export.Records {
		providerRows[row.ProviderCallID] = row
		report.ProviderBilledMicros, err = addUsageTotal(report.ProviderBilledMicros, row.BilledCostMicros)
		if err != nil {
			return ProviderUsageReconciliation{}, err
		}
	}
	ledgerRows := make(map[string]CostRecord)
	ledgerCounts := make(map[string]int)
	for _, event := range ledger {
		if event.CallState != CallFinished || event.ProviderID != export.ProviderID {
			continue
		}
		if event.AccountProfile == "" {
			if inUsageWindow(event.StartedAt, export) {
				report.Discrepancies = append(report.Discrepancies, ProviderUsageDiscrepancy{
					Code: "ledger_account_profile_missing", CallID: event.ID, ProviderCallID: event.ProviderCallID,
					Summary: "Ledger call has no account profile, so it cannot be assigned to this provider account.",
				})
			}
			continue
		}
		if event.AccountProfile != export.AccountProfile || !inUsageWindow(event.StartedAt, export) {
			continue
		}
		report.LedgerCallCount++
		report.LedgerChargedMicros, err = addUsageTotal(report.LedgerChargedMicros, event.EstimatedCostMicros)
		if err != nil {
			return ProviderUsageReconciliation{}, err
		}
		if event.EstimatedCostMicros > event.CostCeilingMicros {
			report.Discrepancies = append(report.Discrepancies, ProviderUsageDiscrepancy{
				Code: "ledger_charge_over_ceiling", CallID: event.ID, ProviderCallID: event.ProviderCallID,
				Summary: "Recorded call charge exceeds its admitted per-call ceiling.",
			})
		}
		ledgerRows[event.ProviderCallID] = event
		ledgerCounts[event.ProviderCallID]++
	}
	for _, event := range started {
		if event.ProviderID != export.ProviderID || (event.AccountProfile != export.AccountProfile && event.AccountProfile != "") {
			continue
		}
		report.Discrepancies = append(report.Discrepancies, ProviderUsageDiscrepancy{
			Code: "unfinished_ledger_call", CallID: event.ID, ProviderCallID: event.ProviderCallID,
			Summary: "A provider call has no durable finish event; its final charge is unknown.",
		})
	}
	for providerCallID, record := range ledgerRows {
		if ledgerCounts[providerCallID] != 1 {
			report.Discrepancies = append(report.Discrepancies, ProviderUsageDiscrepancy{
				Code: "duplicate_ledger_provider_call_id", CallID: record.ID, ProviderCallID: providerCallID,
				Summary: "Multiple ledger calls share one provider call ID.",
			})
			continue
		}
		usage, exists := providerRows[providerCallID]
		if !exists {
			report.Discrepancies = append(report.Discrepancies, ProviderUsageDiscrepancy{
				Code: "ledger_only", CallID: record.ID, ProviderCallID: providerCallID,
				Summary: "Ledger call is absent from the provider export.",
			})
			continue
		}
		report.IdentityMatchedCallCount++
		fields := mismatchedUsageFields(record, usage)
		if len(fields) != 0 {
			report.Discrepancies = append(report.Discrepancies, ProviderUsageDiscrepancy{
				Code: "call_fields_mismatch", CallID: record.ID, ProviderCallID: providerCallID,
				Fields: fields, Summary: "Provider call identity matches, but one or more model, usage, or charge fields differ.",
			})
		}
		delete(providerRows, providerCallID)
	}
	for providerCallID := range providerRows {
		report.Discrepancies = append(report.Discrepancies, ProviderUsageDiscrepancy{
			Code: "provider_only", ProviderCallID: providerCallID,
			Summary: "Provider billed call is absent from the selected cost-ledger window.",
		})
	}
	sort.Slice(report.Discrepancies, func(i, j int) bool {
		left, right := report.Discrepancies[i], report.Discrepancies[j]
		if left.Code != right.Code {
			return left.Code < right.Code
		}
		if left.ProviderCallID != right.ProviderCallID {
			return left.ProviderCallID < right.ProviderCallID
		}
		return left.CallID < right.CallID
	})
	report.Reconciled = len(report.Discrepancies) == 0
	report.HaltFurtherSpending = !report.Reconciled
	if err := report.Validate(); err != nil {
		return ProviderUsageReconciliation{}, err
	}
	if !report.Reconciled {
		return report, fmt.Errorf("%w: %d discrepancy record(s)", ErrProviderUsageMismatch, len(report.Discrepancies))
	}
	return report, nil
}

func mismatchedUsageFields(ledger CostRecord, provider ProviderUsageRecord) []string {
	fields := make([]string, 0, 5)
	if ledger.Model != provider.Model {
		fields = append(fields, "model")
	}
	if ledger.InputTokens != provider.InputTokens {
		fields = append(fields, "input_tokens")
	}
	if ledger.OutputTokens != provider.OutputTokens {
		fields = append(fields, "output_tokens")
	}
	if ledger.EstimatedCostMicros != provider.BilledCostMicros {
		fields = append(fields, "billed_cost_micros")
	}
	if !ledger.CostKnown || !ledger.UsageReported || !ledger.UsageValid {
		fields = append(fields, "ledger_usage_trust")
	}
	sort.Strings(fields)
	return fields
}

func discrepancyLess(left, right ProviderUsageDiscrepancy) bool {
	if left.Code != right.Code {
		return left.Code < right.Code
	}
	if left.ProviderCallID != right.ProviderCallID {
		return left.ProviderCallID < right.ProviderCallID
	}
	return left.CallID < right.CallID
}

func inUsageWindow(at time.Time, export ProviderUsageExport) bool {
	return !at.Before(export.PeriodStart) && at.Before(export.PeriodEnd)
}

func addUsageTotal(current, additional int64) (int64, error) {
	if additional > maxInt64-current {
		return 0, errors.New("budget: provider usage total overflows integer range")
	}
	return current + additional, nil
}

func digestHex(data []byte) string {
	sum := sha256.Sum256(data)
	return fmt.Sprintf("%x", sum[:])
}

func rejectCostJournalLock(path string) error {
	if strings.TrimSpace(path) == "" {
		return errors.New("budget: cost journal path is required")
	}
	_, err := os.Lstat(path + ".lock")
	if err == nil {
		return fmt.Errorf("%w: refusing to reconcile a locked journal", ErrCostJournalLocked)
	}
	if !errors.Is(err, os.ErrNotExist) {
		return fmt.Errorf("budget: inspect cost journal lock before reconciliation: %w", err)
	}
	return nil
}
