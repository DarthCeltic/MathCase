package solver

import (
	"bytes"
	"context"
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"io"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

const maxLocalProcessInputBytes = 128 << 10

type localProcessResult struct {
	Trace  domain.LocalProcessTrace
	Stdout []byte
	Stderr []byte
	Err    error
}

func localProcessContextEnd(err error) string {
	switch {
	case errors.Is(err, context.DeadlineExceeded):
		return "DEADLINE_EXCEEDED"
	case errors.Is(err, context.Canceled):
		return "CANCELLED"
	default:
		return "NONE"
	}
}

// runLocalPythonProcess captures a bounded exact invocation and transcript for
// an existing bridge. It does not sandbox the child, so its trace is expressly
// host-unisolated and cannot independently establish proof validity.
func runLocalPythonProcess(ctx context.Context, python, projectRoot, bridgePath string, input []byte, timeout time.Duration, outputLimit int) (localProcessResult, error) {
	if ctx == nil {
		return localProcessResult{}, errors.New("solver: context is required for local process execution")
	}
	if python == "" || projectRoot == "" || bridgePath == "" || len(input) == 0 || len(input) > maxLocalProcessInputBytes || timeout <= 0 || outputLimit <= 0 {
		return localProcessResult{}, errors.New("solver: local process trace configuration is incomplete or outside its limits")
	}
	root, err := filepath.Abs(projectRoot)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: resolve local process project root: %w", err)
	}
	root, err = filepath.EvalSymlinks(root)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: resolve local process project root: %w", err)
	}
	bridge, err := filepath.Abs(bridgePath)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: resolve local process bridge: %w", err)
	}
	bridge, err = filepath.EvalSymlinks(bridge)
	if err != nil {
		return localProcessResult{}, errors.New("solver: local process bridge is unavailable")
	}
	relative, err := filepath.Rel(root, bridge)
	if err != nil || relative == ".." || strings.HasPrefix(relative, ".."+string(os.PathSeparator)) || filepath.IsAbs(relative) {
		return localProcessResult{}, errors.New("solver: local process bridge must remain inside the project root")
	}
	info, err := os.Stat(bridge)
	if err != nil || info.IsDir() {
		return localProcessResult{}, errors.New("solver: local process bridge is unavailable")
	}
	interpreter, err := exec.LookPath(python)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: resolve local Python executable: %w", err)
	}
	interpreter, err = filepath.Abs(interpreter)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: resolve local Python executable: %w", err)
	}
	interpreter, err = filepath.EvalSymlinks(interpreter)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: resolve local Python executable: %w", err)
	}
	executableDigest, err := fileSHA256(interpreter)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: fingerprint local Python executable: %w", err)
	}
	bridgeDigest, err := fileSHA256(bridge)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: fingerprint local process bridge: %w", err)
	}
	inputDigest := sha256.Sum256(input)

	runCtx, cancel := context.WithTimeout(ctx, timeout)
	defer cancel()
	command := exec.CommandContext(runCtx, interpreter, bridge)
	command.Dir = root
	command.Env = localToolEnvironment(os.Environ())
	command.Stdin = bytes.NewReader(input)
	stdout := newBoundedCapture(outputLimit)
	stderr := newBoundedCapture(outputLimit)
	stdout.onLimit = cancel
	stderr.onLimit = cancel
	command.Stdout = stdout
	command.Stderr = stderr
	monotonicStarted := time.Now()
	started := monotonicStarted.UTC()
	runErr := command.Run()
	finished := time.Now().UTC()
	elapsedNanos := time.Since(monotonicStarted).Nanoseconds()
	contextEnd := localProcessContextEnd(runCtx.Err())
	if finished.Before(started) {
		finished = started
	}

	termination := "EXITED"
	switch {
	case stdout.truncated || stderr.truncated:
		termination = "OUTPUT_LIMIT"
	case errors.Is(runCtx.Err(), context.DeadlineExceeded):
		termination = "TIMED_OUT"
	case errors.Is(runCtx.Err(), context.Canceled):
		termination = "CANCELLED"
	case runErr != nil && command.ProcessState == nil:
		termination = "START_FAILED"
	}
	exitCode := -1
	processID := 0
	if command.Process != nil {
		processID = command.Process.Pid
	}
	if command.ProcessState != nil {
		exitCode = command.ProcessState.ExitCode()
	}

	executableAfter, executableAfterErr := fileSHA256(interpreter)
	bridgeAfter, bridgeAfterErr := fileSHA256(bridge)
	codeStable := executableAfterErr == nil && bridgeAfterErr == nil && executableAfter == executableDigest && bridgeAfter == bridgeDigest
	stdoutBytes := []byte(stdout.String())
	stderrBytes := []byte(stderr.String())
	trace := domain.LocalProcessTrace{
		SchemaVersion:                  domain.LocalProcessTraceSchemaV2,
		ExecutionClass:                 domain.LocalProcessHostUnisolated,
		Replayability:                  domain.LocalProcessCapturedIOOnly,
		ExecutablePath:                 interpreter,
		ExecutableSHA256:               executableDigest,
		ExecutableSHA256After:          executableAfter,
		BridgePath:                     bridge,
		BridgeSHA256:                   bridgeDigest,
		BridgeSHA256After:              bridgeAfter,
		WorkingDirectory:               root,
		Arguments:                      []string{bridge},
		ProcessID:                      processID,
		StartedAt:                      started,
		FinishedAt:                     finished,
		HostTimeoutNanos:               int64(timeout),
		HostElapsedNanos:               elapsedNanos,
		HostContextEnd:                 contextEnd,
		Termination:                    termination,
		ExitCode:                       exitCode,
		InputBase64:                    append([]byte(nil), input...),
		InputSHA256:                    hex.EncodeToString(inputDigest[:]),
		StdoutPrefixBase64:             stdoutBytes,
		StdoutSHA256:                   stdout.SHA256(),
		StdoutCapturedSHA256:           stdout.CapturedSHA256(),
		StdoutBytesObserved:            stdout.total,
		StdoutBytesCaptured:            int64(len(stdoutBytes)),
		StderrPrefixBase64:             stderrBytes,
		StderrSHA256:                   stderr.SHA256(),
		StderrCapturedSHA256:           stderr.CapturedSHA256(),
		StderrBytesObserved:            stderr.total,
		StderrBytesCaptured:            int64(len(stderrBytes)),
		OutputCaptureLimitBytes:        int64(outputLimit),
		OutputTruncated:                stdout.truncated || stderr.truncated,
		CodeIdentityMatchesBeforeAfter: codeStable,
	}
	result := localProcessResult{Trace: trace, Stdout: stdoutBytes, Stderr: stderrBytes}
	switch termination {
	case "OUTPUT_LIMIT":
		result.Err = errors.New("solver: local process output exceeded the capture limit")
	case "TIMED_OUT":
		result.Err = errors.New("solver: local process exceeded its time limit")
	case "CANCELLED":
		result.Err = errors.New("solver: local process was cancelled")
	case "START_FAILED":
		result.Err = fmt.Errorf("solver: start local process: %w", runErr)
	case "EXITED":
		if runErr != nil {
			result.Err = errors.New("solver: local process exited unsuccessfully")
		} else if !codeStable {
			result.Err = errors.New("solver: local process code identity changed during execution")
		}
	}
	if err := trace.Validate(); err != nil {
		return result, fmt.Errorf("solver: generated invalid local process trace: %w", err)
	}
	return result, nil
}

func fileSHA256(path string) (string, error) {
	file, err := os.Open(path)
	if err != nil {
		return "", err
	}
	defer file.Close()
	digest := sha256.New()
	if _, err := io.Copy(digest, file); err != nil {
		return "", err
	}
	return hex.EncodeToString(digest.Sum(nil)), nil
}
