package budget

import (
	"bytes"
	"crypto/sha256"
	"errors"
	"fmt"
	"io"
	"os"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/state"
)

const CostCallReceiptSchemaVersion = "mathcase-cost-call-receipt-v1"

// CostCallReceipt carries the exact durable start/finish events for one call
// and a content checkpoint through the finish line. Event numbers are one
// based. Appending more JSONL events does not invalidate the prefix digest.
type CostCallReceipt struct {
	SchemaVersion       string     `json:"schema_version"`
	CallID              string     `json:"call_id"`
	JournalPrefixSHA256 string     `json:"journal_prefix_sha256"`
	JournalPrefixBytes  int64      `json:"journal_prefix_bytes"`
	StartEvent          int64      `json:"start_event"`
	FinishEvent         int64      `json:"finish_event"`
	Start               CostRecord `json:"start"`
	Finish              CostRecord `json:"finish"`
}

// Validate checks the event pair and its prefix-checkpoint metadata. It does
// not claim that the external JSONL ledger has been reopened; call
// VerifyCostCallReceiptJSONL to reconcile the receipt with that ledger.
func (receipt CostCallReceipt) Validate() error {
	if receipt.SchemaVersion != CostCallReceiptSchemaVersion {
		return fmt.Errorf("budget: unsupported cost-call receipt schema %q", receipt.SchemaVersion)
	}
	if receipt.CallID == "" {
		return errors.New("budget: cost-call receipt ID is required")
	}
	if err := state.ValidateIdentifier("cost-call receipt ID", receipt.CallID); err != nil {
		return err
	}
	if !canonicalSHA256(receipt.JournalPrefixSHA256) || receipt.JournalPrefixBytes <= 0 {
		return errors.New("budget: cost-call receipt requires a canonical prefix digest and positive byte count")
	}
	if receipt.StartEvent <= 0 || receipt.FinishEvent != receipt.StartEvent+1 {
		return errors.New("budget: cost-call receipt must identify adjacent start and finish events")
	}
	if receipt.Start.ID != receipt.CallID || receipt.Finish.ID != receipt.CallID {
		return errors.New("budget: cost-call receipt event IDs do not match the receipt ID")
	}
	if err := ValidateCostCallPair(receipt.Start, receipt.Finish); err != nil {
		return fmt.Errorf("budget: invalid cost-call receipt event pair: %w", err)
	}
	return nil
}

// VerifyCostCallReceiptJSONL checks that a receipt's exact event pair occurs
// at the recorded positions in the supplied append-only JSONL ledger and that
// the bytes through its finish event match the receipt's SHA-256 checkpoint.
// Later appended events are allowed and are not included in the checkpoint.
func VerifyCostCallReceiptJSONL(path string, receipt CostCallReceipt) error {
	if err := receipt.Validate(); err != nil {
		return err
	}
	data, err := readCostJournalBytes(path)
	if err != nil {
		return err
	}
	if receipt.JournalPrefixBytes > int64(len(data)) {
		return errors.New("budget: cost-call receipt prefix is longer than the supplied ledger")
	}
	prefix := data[:receipt.JournalPrefixBytes]
	if len(prefix) == 0 || prefix[len(prefix)-1] != '\n' {
		return errors.New("budget: cost-call receipt prefix does not end at a JSONL event boundary")
	}
	if !matchesSHA256(prefix, receipt.JournalPrefixSHA256) {
		return errors.New("budget: cost-call receipt prefix digest does not match the supplied ledger")
	}
	records, err := ReadJSONL(bytes.NewReader(prefix))
	if err != nil {
		return fmt.Errorf("budget: decode cost-call receipt ledger prefix: %w", err)
	}
	if int64(len(records)) != receipt.FinishEvent {
		return errors.New("budget: cost-call receipt event positions do not match the ledger prefix")
	}
	started, _, err := validateJournalSequence(records)
	if err != nil {
		return fmt.Errorf("budget: invalid cost-call receipt ledger prefix: %w", err)
	}
	if len(started) != 0 {
		return errors.New("budget: cost-call receipt ledger prefix ends with an unfinished call")
	}
	start := records[receipt.StartEvent-1]
	finish := records[receipt.FinishEvent-1]
	if !sameCostRecord(start, receipt.Start) || !sameCostRecord(finish, receipt.Finish) {
		return errors.New("budget: cost-call receipt events do not match the supplied ledger positions")
	}
	return nil
}

func readCostCallReceipt(path, callID string) (CostCallReceipt, error) {
	if callID == "" {
		return CostCallReceipt{}, errors.New("budget: cost-call receipt ID is required")
	}
	if err := state.ValidateIdentifier("cost-call receipt ID", callID); err != nil {
		return CostCallReceipt{}, err
	}
	data, err := readCostJournalBytes(path)
	if err != nil {
		return CostCallReceipt{}, err
	}
	records, err := ReadJSONL(bytes.NewReader(data))
	if err != nil {
		return CostCallReceipt{}, err
	}
	started, _, err := validateJournalSequence(records)
	if err != nil {
		return CostCallReceipt{}, err
	}
	if len(started) != 0 {
		return CostCallReceipt{}, errors.New("budget: cost-call receipt cannot be created while the ledger has an unfinished call")
	}
	startIndex, finishIndex := -1, -1
	for index, record := range records {
		if record.ID != callID {
			continue
		}
		switch record.CallState {
		case CallStarted:
			startIndex = index
		case CallFinished:
			finishIndex = index
		}
	}
	if startIndex < 0 || finishIndex != startIndex+1 {
		return CostCallReceipt{}, errors.New("budget: cost-call receipt requires one adjacent start/finish pair in the ledger")
	}
	lineChunks := bytes.SplitAfter(data, []byte{'\n'})
	if len(lineChunks) > 0 && len(lineChunks[len(lineChunks)-1]) == 0 {
		lineChunks = lineChunks[:len(lineChunks)-1]
	}
	if len(lineChunks) != len(records) {
		return CostCallReceipt{}, errors.New("budget: cost-call receipt could not map journal records to exact JSONL lines")
	}
	var prefixBytes int64
	for index := 0; index <= finishIndex; index++ {
		prefixBytes += int64(len(lineChunks[index]))
	}
	prefix := data[:prefixBytes]
	digest := sha256.Sum256(prefix)
	receipt := CostCallReceipt{
		SchemaVersion:       CostCallReceiptSchemaVersion,
		CallID:              callID,
		JournalPrefixSHA256: fmt.Sprintf("%x", digest[:]),
		JournalPrefixBytes:  prefixBytes,
		StartEvent:          int64(startIndex + 1),
		FinishEvent:         int64(finishIndex + 1),
		Start:               records[startIndex],
		Finish:              records[finishIndex],
	}
	if err := receipt.Validate(); err != nil {
		return CostCallReceipt{}, err
	}
	return receipt, nil
}

func readCostJournalBytes(path string) ([]byte, error) {
	if strings.TrimSpace(path) == "" || strings.ContainsRune(path, '\x00') {
		return nil, errors.New("budget: cost journal path is required")
	}
	pathInfo, err := os.Lstat(path)
	if err != nil {
		return nil, fmt.Errorf("budget: inspect cost journal for receipt: %w", err)
	}
	if pathInfo.Mode()&os.ModeSymlink != 0 || !pathInfo.Mode().IsRegular() {
		return nil, errors.New("budget: cost journal for receipt must be a regular non-symlink file")
	}
	file, err := os.Open(path) //nolint:gosec // local ledger path is supplied by the owning application or auditor
	if err != nil {
		return nil, fmt.Errorf("budget: open cost journal for receipt: %w", err)
	}
	defer file.Close()
	openedInfo, err := file.Stat()
	if err != nil {
		return nil, fmt.Errorf("budget: inspect opened cost journal for receipt: %w", err)
	}
	currentPathInfo, err := os.Lstat(path)
	if err != nil || currentPathInfo.Mode()&os.ModeSymlink != 0 || !os.SameFile(pathInfo, openedInfo) || !os.SameFile(pathInfo, currentPathInfo) {
		if err != nil {
			return nil, fmt.Errorf("budget: verify cost journal path for receipt: %w", err)
		}
		return nil, errors.New("budget: cost journal path changed while reading receipt")
	}
	data, err := io.ReadAll(file)
	if err != nil {
		return nil, fmt.Errorf("budget: read cost journal for receipt: %w", err)
	}
	return data, nil
}

func sameCostRecord(left, right CostRecord) bool {
	return left.ID == right.ID && left.CallState == right.CallState && left.RunID == right.RunID &&
		left.ProviderID == right.ProviderID && left.AccountProfile == right.AccountProfile &&
		left.Model == right.Model && left.ModelVersion == right.ModelVersion && left.TaskID == right.TaskID &&
		left.CandidateID == right.CandidateID && left.Retry == right.Retry &&
		left.InputTokens == right.InputTokens && left.OutputTokens == right.OutputTokens &&
		left.StartedAt.Equal(right.StartedAt) && left.FinishedAt.Equal(right.FinishedAt) &&
		left.Latency == right.Latency && left.CostCeilingMicros == right.CostCeilingMicros &&
		left.EstimatedCostMicros == right.EstimatedCostMicros && left.UsageReported == right.UsageReported &&
		left.UsageValid == right.UsageValid && left.CostKnown == right.CostKnown &&
		left.ProviderCallID == right.ProviderCallID && left.ProviderOutcome == right.ProviderOutcome &&
		left.TransportOutcome == right.TransportOutcome && left.HTTPStatusCode == right.HTTPStatusCode &&
		left.GenerationOutcome == right.GenerationOutcome && left.DecoderOutcome == right.DecoderOutcome &&
		left.OracleStatusAtCapture == right.OracleStatusAtCapture && left.OracleResult == right.OracleResult
}

func canonicalSHA256(value string) bool {
	if len(value) != 64 || strings.ToLower(value) != value {
		return false
	}
	for _, character := range value {
		if !(character >= '0' && character <= '9' || character >= 'a' && character <= 'f') {
			return false
		}
	}
	return true
}

func matchesSHA256(data []byte, expected string) bool {
	digest := sha256.Sum256(data)
	return fmt.Sprintf("%x", digest[:]) == expected
}
