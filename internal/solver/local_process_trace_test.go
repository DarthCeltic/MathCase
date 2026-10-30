package solver

import (
	"context"
	"os"
	"os/exec"
	"path/filepath"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestRunLocalPythonProcessPreservesBoundedInvocationAndExactIO(t *testing.T) {
	python := testLocalPythonExecutable(t)
	root := t.TempDir()
	bridge := writeLocalProcessBridge(t, root, "import sys\ndata = sys.stdin.buffer.read()\nsys.stdout.buffer.write(b'response:' + data)\nsys.stderr.buffer.write(b'diagnostic')\n")
	input := []byte(`{"statement":"synthetic only"}`)

	result, err := runLocalPythonProcess(context.Background(), python, root, bridge, input, 2*time.Second, 1024)
	if err != nil {
		t.Fatalf("runLocalPythonProcess() error = %v", err)
	}
	if result.Err != nil {
		t.Fatalf("synthetic bridge process error = %v", result.Err)
	}
	if err := result.Trace.Validate(); err != nil {
		t.Fatalf("trace validation failed: %v", err)
	}
	if string(result.Trace.InputBase64) != string(input) || string(result.Stdout) != "response:"+string(input) || string(result.Stderr) != "diagnostic" {
		t.Fatalf("captured I/O = input %q stdout %q stderr %q", result.Trace.InputBase64, result.Stdout, result.Stderr)
	}
	if result.Trace.ExecutionClass != "HOST_PROCESS_UNISOLATED" || result.Trace.Replayability != "CAPTURED_IO_ONLY" ||
		result.Trace.Termination != "EXITED" || result.Trace.ExitCode != 0 || result.Trace.ProcessID <= 0 || !result.Trace.CodeIdentityMatchesBeforeAfter {
		t.Fatalf("trace overstated or omitted process identity: %#v", result.Trace)
	}
	if result.Trace.SchemaVersion != domain.LocalProcessTraceSchemaV2 || result.Trace.HostTimeoutNanos != int64(2*time.Second) ||
		result.Trace.HostElapsedNanos < 0 || result.Trace.HostContextEnd != "NONE" {
		t.Fatalf("successful trace host timing = %#v", result.Trace)
	}
}

func TestRunLocalPythonProcessOutputLimitPreservesRefusalTrace(t *testing.T) {
	python := testLocalPythonExecutable(t)
	root := t.TempDir()
	bridge := writeLocalProcessBridge(t, root, "import sys\nsys.stdout.buffer.write(b'x' * 4096)\nsys.stdout.flush()\n")
	result, err := runLocalPythonProcess(context.Background(), python, root, bridge, []byte("synthetic request"), 2*time.Second, 32)
	if err != nil {
		t.Fatalf("runLocalPythonProcess() error = %v", err)
	}
	if result.Err == nil || result.Trace.Termination != "OUTPUT_LIMIT" || !result.Trace.OutputTruncated {
		t.Fatalf("output-limit result = err %v, trace %#v; want refused, truncated trace", result.Err, result.Trace)
	}
	if len(result.Trace.StdoutPrefixBase64) != 32 {
		t.Fatalf("captured stdout prefix = %d bytes, want 32", len(result.Trace.StdoutPrefixBase64))
	}
	if err := result.Trace.Validate(); err != nil {
		t.Fatalf("output-limit trace validation failed: %v", err)
	}
	if result.Trace.HostContextEnd != "CANCELLED" {
		t.Fatalf("output-limit context end = %q, want CANCELLED", result.Trace.HostContextEnd)
	}
}

func TestRunLocalPythonProcessTimeoutPreservesTrace(t *testing.T) {
	python := testLocalPythonExecutable(t)
	root := t.TempDir()
	bridge := writeLocalProcessBridge(t, root, "import time\ntime.sleep(2)\n")
	result, err := runLocalPythonProcess(context.Background(), python, root, bridge, []byte("synthetic request"), 80*time.Millisecond, 1024)
	if err != nil {
		t.Fatalf("runLocalPythonProcess() error = %v", err)
	}
	if result.Err == nil || result.Trace.Termination != "TIMED_OUT" {
		t.Fatalf("timeout result = err %v, termination %q; want timeout", result.Err, result.Trace.Termination)
	}
	if err := result.Trace.Validate(); err != nil {
		t.Fatalf("timeout trace validation failed: %v", err)
	}
	if result.Trace.HostTimeoutNanos != int64(80*time.Millisecond) || result.Trace.HostElapsedNanos < int64(50*time.Millisecond) ||
		result.Trace.HostContextEnd != "DEADLINE_EXCEEDED" {
		t.Fatalf("timeout host timing = %#v", result.Trace)
	}
}

func TestRunLocalPythonProcessParentCancellationRecordsElapsed(t *testing.T) {
	python := testLocalPythonExecutable(t)
	root := t.TempDir()
	bridge := writeLocalProcessBridge(t, root, "from pathlib import Path\nPath('process-started').write_text('started')\nimport time\ntime.sleep(2)\n")
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()
	type processOutcome struct {
		result localProcessResult
		err    error
	}
	outcomes := make(chan processOutcome, 1)
	go func() {
		result, err := runLocalPythonProcess(ctx, python, root, bridge, []byte("synthetic cancellation request"), 10*time.Second, 1024)
		outcomes <- processOutcome{result: result, err: err}
	}()

	deadline := time.NewTimer(8 * time.Second)
	defer deadline.Stop()
	poll := time.NewTicker(5 * time.Millisecond)
	defer poll.Stop()
	for {
		select {
		case outcome := <-outcomes:
			t.Fatalf("runLocalPythonProcess(parent cancellation) returned before child start marker: err=%v trace=%#v", outcome.err, outcome.result.Trace)
		case <-poll.C:
			_, err := os.Stat(filepath.Join(root, "process-started"))
			if err == nil {
				cancel()
				outcome := <-outcomes
				if outcome.err != nil {
					t.Fatalf("runLocalPythonProcess(parent cancellation after child start) error = %v", outcome.err)
				}
				if outcome.result.Err == nil || outcome.result.Trace.Termination != "CANCELLED" {
					t.Fatalf("runLocalPythonProcess(parent cancellation after child start) = err %v, termination %q; want cancellation", outcome.result.Err, outcome.result.Trace.Termination)
				}
				if outcome.result.Trace.HostTimeoutNanos != int64(10*time.Second) || outcome.result.Trace.HostElapsedNanos <= 0 ||
					outcome.result.Trace.HostContextEnd != "CANCELLED" || outcome.result.Trace.ProcessID <= 0 {
					t.Fatalf("runLocalPythonProcess(parent cancellation after child start) trace = %#v, want positive elapsed time and a started child", outcome.result.Trace)
				}
				if err := outcome.result.Trace.Validate(); err != nil {
					t.Fatalf("runLocalPythonProcess(parent cancellation after child start) trace validation failed: %v", err)
				}
				return
			}
			if !os.IsNotExist(err) {
				cancel()
				<-outcomes
				t.Fatalf("inspect runLocalPythonProcess child start marker: %v", err)
			}
		case <-deadline.C:
			cancel()
			outcome := <-outcomes
			t.Fatalf("runLocalPythonProcess child start marker was absent after 8s: err=%v trace=%#v", outcome.err, outcome.result.Trace)
		}
	}
}

func testLocalPythonExecutable(t *testing.T) string {
	t.Helper()
	root, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	for _, candidate := range []string{
		filepath.Join(root, ".venv", "Scripts", "python.exe"),
		filepath.Join(root, ".venv", "bin", "python"),
	} {
		if info, err := os.Stat(candidate); err == nil && !info.IsDir() {
			return candidate
		}
	}
	for _, candidate := range []string{"python", "python3"} {
		if path, err := exec.LookPath(candidate); err == nil {
			return path
		}
	}
	t.Skip("Python interpreter is not installed")
	return ""
}

func writeLocalProcessBridge(t *testing.T, root, source string) string {
	return writeLocalProcessBridgeNamed(t, root, "bridge.py", source)
}

func writeLocalProcessBridgeNamed(t *testing.T, root, name, source string) string {
	t.Helper()
	directory := filepath.Join(root, "scripts")
	if err := os.MkdirAll(directory, 0o700); err != nil {
		t.Fatal(err)
	}
	path := filepath.Join(directory, name)
	if err := os.WriteFile(path, []byte(source), 0o600); err != nil {
		t.Fatal(err)
	}
	return path
}
