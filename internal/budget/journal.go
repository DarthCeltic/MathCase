// MathCase project contact: DarthCeltic
// Email: 178664201+DarthCeltic@users.noreply.github.com
// Repository: https://github.com/DarthCeltic/MathCase

package budget

import (
	"bufio"
	"bytes"
	jsonv1 "encoding/json"
	jsonv2 "encoding/json/v2"
	"errors"
	"fmt"
	"io"
	"os"
	"sync"
)

const (
	costRecordSchemaVersion  = 4
	previousCostRecordSchema = 3
	maxCostRecordLineBytes   = 1 << 20
)

var (
	// ErrRecorderClosed indicates that a recorder cannot accept another event.
	ErrRecorderClosed = errors.New("budget: cost recorder is closed")
	// ErrRecorderWriter indicates that a durable recorder was constructed with
	// a writer that cannot flush its bytes to stable storage.
	ErrRecorderWriter = errors.New("budget: recorder writer must support sync")
)

// syncWriter is deliberately narrower than io.Writer for durable accounting:
// a successful write without a successful sync is not durable evidence.
type syncWriter interface {
	io.Writer
	Sync() error
}

type costRecordLine struct {
	SchemaVersion int        `json:"schema_version"`
	Record        CostRecord `json:"record"`
}

// JSONLRecorder appends sanitized accounting events as versioned JSON Lines.
// Each successful call transition writes one complete line and synchronizes
// the underlying writer before returning.
type JSONLRecorder struct {
	mu      sync.Mutex
	writer  syncWriter
	close   func() error
	closed  bool
	started map[string]CostRecord
	seen    map[string]struct{}
}

var _ CostCallJournal = (*JSONLRecorder)(nil)

// NewJSONLRecorder creates a durable recorder over an already-open empty
// writer. The caller retains ownership of w and should close the writer after
// closing the recorder. Use OpenJSONLRecorder when appending to an existing
// path so prior call identities and lifecycle events are checked.
func NewJSONLRecorder(w io.Writer) (*JSONLRecorder, error) {
	synced, ok := w.(syncWriter)
	if !ok {
		return nil, ErrRecorderWriter
	}
	if synced == nil {
		return nil, errors.New("budget: recorder writer is nil")
	}
	return &JSONLRecorder{
		writer:  synced,
		started: make(map[string]CostRecord),
		seen:    make(map[string]struct{}),
	}, nil
}

// OpenJSONLRecorder opens path for append-only, owner-readable accounting
// evidence. It refuses an active or stale CostSession lock marker. Callers
// that need crash recovery and exclusive ownership should use OpenCostSession.
func OpenJSONLRecorder(path string) (*JSONLRecorder, error) {
	if _, err := os.Lstat(path + ".lock"); err == nil {
		return nil, fmt.Errorf("%w: %s.lock", ErrCostJournalLocked, path)
	} else if !errors.Is(err, os.ErrNotExist) {
		return nil, fmt.Errorf("budget: inspect cost journal lock: %w", err)
	}
	return openJSONLRecorder(path)
}

func openJSONLRecorder(path string) (*JSONLRecorder, error) {
	// Existing history must be valid and complete before this process appends
	// new starts. Recovery can still read unfinished calls and charge them; it
	// must not continue the same journal with new paid work.
	existing, err := readExistingJournal(path)
	if err != nil {
		return nil, err
	}
	started, seen, err := validateJournalSequence(existing)
	if err != nil {
		return nil, err
	}
	if len(started) != 0 {
		return nil, fmt.Errorf("%w: journal contains an unfinished provider call", ErrInvalidCostHistory)
	}
	// The application composition root owns and validates this persistence path.
	file, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE|os.O_APPEND, 0o600) //nolint:gosec // path is an application-owned evidence target
	if err != nil {
		return nil, fmt.Errorf("budget: open cost record file: %w", err)
	}
	openedInfo, err := file.Stat()
	if err != nil {
		_ = file.Close()
		return nil, fmt.Errorf("budget: inspect opened cost record file: %w", err)
	}
	pathInfo, err := os.Lstat(path)
	if err != nil || pathInfo.Mode()&os.ModeSymlink != 0 || !pathInfo.Mode().IsRegular() || !os.SameFile(openedInfo, pathInfo) {
		_ = file.Close()
		if err != nil {
			return nil, fmt.Errorf("budget: verify opened cost record path: %w", err)
		}
		return nil, errors.New("budget: cost record path changed or is not a regular non-symlink file")
	}
	recorder, err := NewJSONLRecorder(file)
	if err != nil {
		_ = file.Close()
		return nil, err
	}
	recorder.close = file.Close
	recorder.started = started
	recorder.seen = seen
	return recorder, nil
}

// BeginCall appends and flushes the reservation ceiling before a provider call.
func (r *JSONLRecorder) BeginCall(record CostRecord) error {
	if record.CallState != CallStarted {
		return fmt.Errorf("budget: begin event must have state %q", CallStarted)
	}
	if err := validateCostRecord(record); err != nil {
		return err
	}
	r.mu.Lock()
	defer r.mu.Unlock()
	if r.closed {
		return ErrRecorderClosed
	}
	if _, exists := r.seen[record.ID]; exists {
		return fmt.Errorf("budget: duplicate call ID %q", record.ID)
	}
	if err := r.appendLocked(record); err != nil {
		return err
	}
	r.started[record.ID] = record
	r.seen[record.ID] = struct{}{}
	return nil
}

// FinishCall appends and flushes the final conservative or provider-reported
// charge for a call that has a durable start event.
func (r *JSONLRecorder) FinishCall(record CostRecord) error {
	if record.CallState != CallFinished {
		return fmt.Errorf("budget: finish event must have state %q", CallFinished)
	}
	if err := validateCostRecord(record); err != nil {
		return err
	}
	r.mu.Lock()
	defer r.mu.Unlock()
	if r.closed {
		return ErrRecorderClosed
	}
	start, exists := r.started[record.ID]
	if !exists {
		return fmt.Errorf("budget: call %q has no start event", record.ID)
	}
	if err := validateCallPair(start, record); err != nil {
		return err
	}
	if err := r.appendLocked(record); err != nil {
		return err
	}
	delete(r.started, record.ID)
	return nil
}

func (r *JSONLRecorder) appendLocked(record CostRecord) error {
	line, err := jsonv2.Marshal(costRecordLine{
		SchemaVersion: costRecordSchemaVersion,
		Record:        record,
	}, jsonv1.FormatDurationAsNano(true), jsonv2.Deterministic(true))
	if err != nil {
		return fmt.Errorf("budget: encode cost record: %w", err)
	}
	return r.writeLineLocked(append(line, '\n'))
}

func (r *JSONLRecorder) writeLineLocked(line []byte) error {
	if err := writeAll(r.writer, line); err != nil {
		return fmt.Errorf("budget: append cost record: %w", err)
	}
	if err := r.writer.Sync(); err != nil {
		return fmt.Errorf("budget: sync cost record: %w", err)
	}
	return nil
}

func readExistingJournal(path string) ([]CostRecord, error) {
	pathInfo, err := os.Lstat(path)
	if errors.Is(err, os.ErrNotExist) {
		return nil, nil
	}
	if err != nil {
		return nil, fmt.Errorf("budget: inspect existing cost journal: %w", err)
	}
	if pathInfo.Mode()&os.ModeSymlink != 0 || !pathInfo.Mode().IsRegular() {
		return nil, errors.New("budget: existing cost journal must be a regular non-symlink file")
	}
	file, err := os.Open(path) //nolint:gosec // caller supplies the application-owned journal path
	if err != nil {
		return nil, fmt.Errorf("budget: open existing cost journal: %w", err)
	}
	defer file.Close()
	openedInfo, err := file.Stat()
	if err != nil {
		return nil, fmt.Errorf("budget: inspect opened existing journal: %w", err)
	}
	currentPathInfo, err := os.Lstat(path)
	if err != nil || currentPathInfo.Mode()&os.ModeSymlink != 0 || !os.SameFile(pathInfo, openedInfo) || !os.SameFile(pathInfo, currentPathInfo) {
		if err != nil {
			return nil, fmt.Errorf("budget: verify existing journal path: %w", err)
		}
		return nil, errors.New("budget: existing cost journal changed while it was opened")
	}
	records, err := ReadJSONL(file)
	if err != nil {
		return nil, err
	}
	return records, nil
}

func validateJournalSequence(records []CostRecord) (map[string]CostRecord, map[string]struct{}, error) {
	started := make(map[string]CostRecord)
	seen := make(map[string]struct{}, len(records))
	for _, record := range records {
		if err := validateCostRecord(record); err != nil {
			return nil, nil, fmt.Errorf("%w: %v", ErrInvalidCostHistory, err)
		}
		switch record.CallState {
		case CallStarted:
			if _, exists := seen[record.ID]; exists {
				return nil, nil, fmt.Errorf("%w: duplicate call ID %q", ErrInvalidCostHistory, record.ID)
			}
			seen[record.ID] = struct{}{}
			started[record.ID] = record
		case CallFinished:
			start, exists := started[record.ID]
			if !exists {
				return nil, nil, fmt.Errorf("%w: call %q has no preceding start event", ErrInvalidCostHistory, record.ID)
			}
			if err := validateCallPair(start, record); err != nil {
				return nil, nil, err
			}
			delete(started, record.ID)
		default:
			return nil, nil, fmt.Errorf("%w: invalid call state %q", ErrInvalidCostHistory, record.CallState)
		}
	}
	return started, seen, nil
}

// Close prevents further records and closes the underlying writer when the
// recorder opened it. Caller-owned writers remain open.
func (r *JSONLRecorder) Close() error {
	r.mu.Lock()
	defer r.mu.Unlock()
	if r.closed {
		return ErrRecorderClosed
	}
	r.closed = true
	if r.close == nil {
		return nil
	}
	return r.close()
}

func writeAll(w io.Writer, data []byte) error {
	for len(data) > 0 {
		written, err := w.Write(data)
		if err != nil {
			return err
		}
		if written <= 0 || written > len(data) {
			return errors.New("writer returned invalid byte count")
		}
		data = data[written:]
	}
	return nil
}

// ReadJSONL decodes versioned cost events and rejects malformed, unknown,
// empty, or oversized records. It returns events in journal order; callers
// that restore budgets must also validate the lifecycle with RestoreController.
func ReadJSONL(r io.Reader) ([]CostRecord, error) {
	scanner := bufio.NewScanner(r)
	scanner.Buffer(make([]byte, 4096), maxCostRecordLineBytes)
	var records []CostRecord
	lineNumber := 0
	for scanner.Scan() {
		lineNumber++
		line := bytes.TrimSpace(scanner.Bytes())
		if len(line) == 0 {
			return nil, fmt.Errorf("budget: cost record line %d is empty", lineNumber)
		}
		var entry costRecordLine
		if err := jsonv2.Unmarshal(line, &entry, jsonv2.RejectUnknownMembers(true), jsonv1.FormatDurationAsNano(true)); err != nil {
			return nil, fmt.Errorf("budget: decode cost record line %d: %w", lineNumber, err)
		}
		if entry.SchemaVersion != costRecordSchemaVersion && entry.SchemaVersion != previousCostRecordSchema {
			return nil, fmt.Errorf("budget: unsupported cost record schema version %d on line %d", entry.SchemaVersion, lineNumber)
		}
		if err := validateCostRecord(entry.Record); err != nil {
			return nil, fmt.Errorf("budget: invalid cost record line %d: %w", lineNumber, err)
		}
		records = append(records, entry.Record)
	}
	if err := scanner.Err(); err != nil {
		return nil, fmt.Errorf("budget: read cost records: %w", err)
	}
	return records, nil
}

// RestoreControllerFromJSONLFile rebuilds a controller from a complete local
// JSONL journal. A missing file represents a new empty session. The caller
// must ensure exclusive ownership of the file while restoring and appending.
func RestoreControllerFromJSONLFile(path string, limits Limits) (*Controller, error) {
	records, err := readExistingJournal(path)
	if err != nil {
		return nil, err
	}
	return RestoreController(limits, records)
}
