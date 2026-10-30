package budget_test

import (
	"bytes"
	"encoding/json"
	"errors"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"sync"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
)

type syncBuffer struct {
	bytes.Buffer
	mu    sync.Mutex
	syncs int
	err   error
}

func (b *syncBuffer) Sync() error {
	b.mu.Lock()
	defer b.mu.Unlock()
	b.syncs++
	return b.err
}

func (b *syncBuffer) SyncCount() int {
	b.mu.Lock()
	defer b.mu.Unlock()
	return b.syncs
}

func journalRecords() (budget.CostRecord, budget.CostRecord) {
	started := time.Date(2026, 9, 16, 12, 0, 0, 0, time.UTC)
	start := budget.CostRecord{
		ID: "call-1", CallState: budget.CallStarted,
		RunID:      "run-1",
		ProviderID: "nebius.v1", AccountProfile: "recording", Model: "nvidia/Nemotron-test",
		TaskID: "task-1", Retry: 1, StartedAt: started,
		CostCeilingMicros: 80, EstimatedCostMicros: 80, ProviderCallID: "provider-call-1",
	}
	finish := start
	finish.CallState = budget.CallFinished
	finish.CandidateID = "wave-0-candidate-0"
	finish.Retry = 1
	finish.InputTokens = 12
	finish.OutputTokens = 34
	finish.FinishedAt = started.Add(time.Second)
	finish.Latency = time.Second
	finish.EstimatedCostMicros = 57
	finish.CostKnown = true
	finish.UsageReported = true
	finish.UsageValid = true
	finish.OracleResult = "FAIL"
	finish.ProviderOutcome = "success"
	finish.TransportOutcome = "http_success"
	finish.HTTPStatusCode = 200
	finish.GenerationOutcome = "length_limit_reached"
	finish.DecoderOutcome = "empty"
	finish.OracleStatusAtCapture = "completed"
	return start, finish
}

func TestJSONLRecorderRoundTripsCallLifecycle(t *testing.T) {
	t.Parallel()
	buffer := new(syncBuffer)
	recorder, err := budget.NewJSONLRecorder(buffer)
	if err != nil {
		t.Fatalf("NewJSONLRecorder() error = %v", err)
	}
	start, finish := journalRecords()
	if err := recorder.BeginCall(start); err != nil {
		t.Fatalf("BeginCall() error = %v", err)
	}
	if err := recorder.FinishCall(finish); err != nil {
		t.Fatalf("FinishCall() error = %v", err)
	}
	if got := buffer.SyncCount(); got != 2 {
		t.Fatalf("Sync() count = %d, want 2", got)
	}
	got, err := budget.ReadJSONL(bytes.NewReader(buffer.Bytes()))
	if err != nil {
		t.Fatalf("ReadJSONL() error = %v", err)
	}
	if len(got) != 2 || got[0] != start || got[1] != finish {
		t.Fatalf("ReadJSONL() = %#v, want start and finish events %#v", got, []budget.CostRecord{start, finish})
	}
	controller, err := budget.RestoreController(budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 100}, got)
	if err != nil {
		t.Fatalf("RestoreController() error = %v", err)
	}
	if got := controller.SessionSnapshot().SpentMicros; got != 57 {
		t.Fatalf("restored session spend = %d, want 57", got)
	}
}

func TestCostRecordOmitsEmptyOracleVerdict(t *testing.T) {
	t.Parallel()
	buffer := new(syncBuffer)
	recorder, err := budget.NewJSONLRecorder(buffer)
	if err != nil {
		t.Fatal(err)
	}
	start := budget.CostRecord{
		ID: "call-no-oracle", CallState: budget.CallStarted,
		RunID:      "run-no-oracle",
		ProviderID: "nebius.v1", TaskID: "fixture-task", ProviderCallID: "provider-call-2",
		StartedAt: time.Now().UTC(), CostCeilingMicros: 1, EstimatedCostMicros: 1,
	}
	finish := start
	finish.CallState = budget.CallFinished
	finish.FinishedAt = start.StartedAt
	finish.EstimatedCostMicros = 1
	if err := recorder.BeginCall(start); err != nil {
		t.Fatal(err)
	}
	if err := recorder.FinishCall(finish); err != nil {
		t.Fatal(err)
	}
	if body := buffer.Bytes(); bytes.Contains(body, []byte("oracle_result")) {
		t.Fatalf("cost record with no oracle verdict serialized oracle_result: %s", body)
	}
}

func TestJSONLRecorderRejectsUnsyncedWriterAndClosedWrites(t *testing.T) {
	t.Parallel()
	if _, err := budget.NewJSONLRecorder(new(bytes.Buffer)); !errors.Is(err, budget.ErrRecorderWriter) {
		t.Fatalf("NewJSONLRecorder(bytes.Buffer) error = %v, want ErrRecorderWriter", err)
	}
	recorder, err := budget.NewJSONLRecorder(new(syncBuffer))
	if err != nil {
		t.Fatalf("NewJSONLRecorder() error = %v", err)
	}
	if err := recorder.Close(); err != nil {
		t.Fatalf("Close() error = %v", err)
	}
	start, _ := journalRecords()
	if err := recorder.BeginCall(start); !errors.Is(err, budget.ErrRecorderClosed) {
		t.Fatalf("BeginCall() after Close error = %v, want ErrRecorderClosed", err)
	}
	if err := recorder.Close(); !errors.Is(err, budget.ErrRecorderClosed) {
		t.Fatalf("second Close() error = %v, want ErrRecorderClosed", err)
	}
}

func TestJSONLRecorderReportsSyncFailure(t *testing.T) {
	t.Parallel()
	buffer := &syncBuffer{err: errors.New("disk unavailable")}
	recorder, err := budget.NewJSONLRecorder(buffer)
	if err != nil {
		t.Fatalf("NewJSONLRecorder() error = %v", err)
	}
	start, _ := journalRecords()
	if err := recorder.BeginCall(start); err == nil || !strings.Contains(err.Error(), "sync cost record") {
		t.Fatalf("BeginCall() error = %v, want sync failure", err)
	}
}

func TestOpenJSONLRecorderUsesPrivateAppendFileAndRejectsUnfinishedCall(t *testing.T) {
	t.Parallel()
	path := filepath.Join(t.TempDir(), "cost.jsonl")
	recorder, err := budget.OpenJSONLRecorder(path)
	if err != nil {
		t.Fatalf("OpenJSONLRecorder() error = %v", err)
	}
	start, finish := journalRecords()
	if err := recorder.BeginCall(start); err != nil {
		t.Fatalf("BeginCall() error = %v", err)
	}
	if err := recorder.FinishCall(finish); err != nil {
		t.Fatalf("FinishCall() error = %v", err)
	}
	if err := recorder.Close(); err != nil {
		t.Fatalf("Close() error = %v", err)
	}
	info, err := os.Stat(path)
	if err != nil {
		t.Fatalf("Stat() error = %v", err)
	}
	if runtime.GOOS != "windows" && info.Mode().Perm() != 0o600 {
		t.Fatalf("file permissions = %o, want 600", info.Mode().Perm())
	}
	data, err := os.ReadFile(path) //nolint:gosec // path is created inside this test's private TempDir
	if err != nil {
		t.Fatalf("ReadFile() error = %v", err)
	}
	if records, err := budget.ReadJSONL(bytes.NewReader(data)); err != nil || len(records) != 2 {
		t.Fatalf("ReadJSONL() = %#v, error = %v", records, err)
	}
	limits := budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 100}
	restored, err := budget.RestoreControllerFromJSONLFile(path, limits)
	if err != nil {
		t.Fatalf("RestoreControllerFromJSONLFile(complete) error = %v", err)
	}
	if got := restored.SessionSnapshot().SpentMicros; got != finish.EstimatedCostMicros {
		t.Fatalf("restored spend = %d, want %d", got, finish.EstimatedCostMicros)
	}
	// A finished journal reopens for a new call and restores the prior IDs.
	reopened, err := budget.OpenJSONLRecorder(path)
	if err != nil {
		t.Fatalf("OpenJSONLRecorder(existing complete journal) error = %v", err)
	}
	if err := reopened.BeginCall(start); err == nil {
		t.Fatal("BeginCall(duplicate ID) error = nil, want rejection")
	}
	if err := reopened.Close(); err != nil {
		t.Fatalf("Close(reopened) error = %v", err)
	}

	unfinishedPath := filepath.Join(t.TempDir(), "unfinished.jsonl")
	unfinished, err := budget.OpenJSONLRecorder(unfinishedPath)
	if err != nil {
		t.Fatal(err)
	}
	start.ID = "call-unfinished"
	start.ProviderCallID = "call-unfinished"
	if err := unfinished.BeginCall(start); err != nil {
		t.Fatal(err)
	}
	if err := unfinished.Close(); err != nil {
		t.Fatal(err)
	}
	recovered, err := budget.RestoreControllerFromJSONLFile(unfinishedPath, limits)
	if err != nil {
		t.Fatalf("RestoreControllerFromJSONLFile(unfinished) error = %v", err)
	}
	if got := recovered.SessionSnapshot().SpentMicros; got != start.CostCeilingMicros {
		t.Fatalf("unfinished restored charge = %d, want ceiling %d", got, start.CostCeilingMicros)
	}
	if _, err := recovered.RunBudget().Reserve(1); !errors.Is(err, budget.ErrSessionHalted) {
		t.Fatalf("Reserve() after unfinished restore = %v, want ErrSessionHalted", err)
	}
	if _, err := budget.OpenJSONLRecorder(unfinishedPath); !errors.Is(err, budget.ErrInvalidCostHistory) {
		t.Fatalf("OpenJSONLRecorder(unfinished) error = %v, want ErrInvalidCostHistory", err)
	}
}

func TestReadJSONLRejectsUnknownSchemaAndMembers(t *testing.T) {
	t.Parallel()
	cases := []string{
		`{"schema_version":1,"record":{}}`,
		`{"schema_version":2,"record":{}}`,
		`{"schema_version":5,"record":{}}`,
		`{"schema_version":3,"record":{},"unexpected":true}`,
		`{"schema_version":3,"record":{"unexpected":true}}`,
		"\n",
	}
	for _, input := range cases {
		t.Run(strings.ReplaceAll(input, "\\", "slash"), func(t *testing.T) {
			t.Parallel()
			if _, err := budget.ReadJSONL(strings.NewReader(input)); err == nil {
				t.Fatal("ReadJSONL() error = nil, want rejection")
			}
		})
	}
}

func TestReadJSONLRetainsSchema3JournalCompatibility(t *testing.T) {
	start, finish := journalRecords()
	type entry struct {
		SchemaVersion int               `json:"schema_version"`
		Record        budget.CostRecord `json:"record"`
	}
	start.ModelVersion = ""
	finish.ModelVersion = ""
	startData, err := json.Marshal(entry{SchemaVersion: 3, Record: start})
	if err != nil {
		t.Fatal(err)
	}
	finishData, err := json.Marshal(entry{SchemaVersion: 3, Record: finish})
	if err != nil {
		t.Fatal(err)
	}
	data := append(append(startData, '\n'), finishData...)
	data = append(data, '\n')
	records, err := budget.ReadJSONL(bytes.NewReader(data))
	if err != nil {
		t.Fatalf("ReadJSONL() rejected existing schema-v3 records: %v", err)
	}
	if len(records) != 2 || records[0].ModelVersion != "" || records[1].ModelVersion != "" {
		t.Fatalf("schema-v3 records = %#v, want both records retained with an empty legacy model version", records)
	}
}

func TestJSONLRecorderSerializesConcurrentCallEvents(t *testing.T) {
	t.Parallel()
	buffer := new(syncBuffer)
	recorder, err := budget.NewJSONLRecorder(buffer)
	if err != nil {
		t.Fatalf("NewJSONLRecorder() error = %v", err)
	}
	var workers sync.WaitGroup
	for i := range 32 {
		workers.Go(func() {
			start, finish := journalRecords()
			start.ID = "call-" + strings.Repeat("x", i+1)
			finish.ID = start.ID
			start.ProviderCallID = start.ID
			finish.ProviderCallID = start.ID
			if err := recorder.BeginCall(start); err != nil {
				t.Errorf("BeginCall() error = %v", err)
				return
			}
			if err := recorder.FinishCall(finish); err != nil {
				t.Errorf("FinishCall() error = %v", err)
			}
		})
	}
	workers.Wait()
	records, err := budget.ReadJSONL(bytes.NewReader(buffer.Bytes()))
	if err != nil {
		t.Fatalf("ReadJSONL() error = %v", err)
	}
	if len(records) != 64 || buffer.SyncCount() != 64 {
		t.Fatalf("events = %d, syncs = %d, want 64 each", len(records), buffer.SyncCount())
	}
	if _, err := budget.RestoreController(budget.Limits{MaxRunMicros: 10_000, MaxSessionMicros: 10_000, MaxCandidateMicros: 100}, records); err != nil {
		t.Fatalf("RestoreController(concurrent journal) error = %v", err)
	}
}
