package budget

import (
	"errors"
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"sync"
	"time"
)

var (
	// ErrCostJournalLocked indicates that another process owns the journal or
	// that an earlier process left a lock marker requiring manual inspection.
	ErrCostJournalLocked = errors.New("budget: cost journal is already locked")
	// ErrCostSessionClosed indicates an operation attempted after session close.
	ErrCostSessionClosed = errors.New("budget: cost session is closed")
	// ErrUnfinishedCostCalls indicates that the session closed with provider
	// calls whose final accounting events have not been durably recorded.
	ErrUnfinishedCostCalls = errors.New("budget: cost session has unfinished provider calls; lock retained")
	// ErrCostJournalLockLost indicates that the owned lock marker disappeared or
	// changed before normal session close.
	ErrCostJournalLockLost = errors.New("budget: owned cost journal lock was removed or replaced")
)

// CostSession binds one restored controller and append-only JSONL recorder to
// a cross-process exclusive lock held for the session's lifetime. A leftover
// lock after a crash is a deliberate fail-closed marker and needs operator
// inspection before removal.
type CostSession struct {
	mu         sync.Mutex
	controller *Controller
	recorder   *JSONLRecorder
	lock       *costJournalLock
	path       string
	closed     bool
}

// OpenCostSession acquires the sidecar lock before reading or opening the
// journal, restores session and per-run spend, then opens the synced recorder.
// It does not create parent directories.
func OpenCostSession(path string, limits Limits) (*CostSession, error) {
	journalPath, err := canonicalCostJournalPath(path)
	if err != nil {
		return nil, err
	}
	lock, err := acquireCostJournalLock(journalPath)
	if err != nil {
		return nil, err
	}
	controller, err := RestoreControllerFromJSONLFile(journalPath, limits)
	if err != nil {
		_ = lock.release()
		return nil, fmt.Errorf("budget: restore locked cost journal: %w", err)
	}
	recorder, err := openJSONLRecorder(journalPath)
	if err != nil {
		_ = lock.release()
		return nil, fmt.Errorf("budget: open locked cost journal: %w", err)
	}
	return &CostSession{controller: controller, recorder: recorder, lock: lock, path: journalPath}, nil
}

// RunBudgetFor returns this session's stable budget for one run ID.
func (s *CostSession) RunBudgetFor(runID string) (*RunBudget, error) {
	if s == nil {
		return nil, errors.New("budget: cost session is nil")
	}
	s.mu.Lock()
	defer s.mu.Unlock()
	if s.closed {
		return nil, ErrCostSessionClosed
	}
	return s.controller.RunBudgetFor(runID)
}

// Journal returns the durable journal used by this session. The returned
// recorder refuses writes after Close.
func (s *CostSession) Journal() CostCallJournal {
	if s == nil {
		return nil
	}
	s.mu.Lock()
	defer s.mu.Unlock()
	return s.recorder
}

// CallReceipt returns a completed call's exact start/finish events and a hash
// checkpoint for the JSONL prefix ending at its finish event. The checkpoint
// remains valid as later events are appended to the same ledger.
func (s *CostSession) CallReceipt(callID string) (CostCallReceipt, error) {
	if s == nil {
		return CostCallReceipt{}, errors.New("budget: cost session is nil")
	}
	s.mu.Lock()
	defer s.mu.Unlock()
	if s.closed {
		return CostCallReceipt{}, ErrCostSessionClosed
	}
	return readCostCallReceipt(s.path, callID)
}

// Close closes the recorder and releases the lock only after every provider
// call has a finish event. If a call is unfinished, the file handle is closed
// but the lock marker remains for manual crash/charge review.
func (s *CostSession) Close() error {
	if s == nil {
		return errors.New("budget: cost session is nil")
	}
	s.mu.Lock()
	defer s.mu.Unlock()
	if s.closed {
		return ErrCostSessionClosed
	}
	s.closed = true
	unfinished, closeErr := s.closeRecorder()
	if unfinished {
		keepErr := s.lock.keep()
		if closeErr != nil {
			return errors.Join(ErrUnfinishedCostCalls, closeErr, keepErr)
		}
		return errors.Join(ErrUnfinishedCostCalls, keepErr)
	}
	if closeErr != nil {
		keepErr := s.lock.keep()
		return errors.Join(fmt.Errorf("budget: close cost recorder; lock retained: %w", closeErr), keepErr)
	}
	return s.lock.release()
}

func (s *CostSession) closeRecorder() (unfinished bool, err error) {
	s.recorder.mu.Lock()
	defer s.recorder.mu.Unlock()
	if s.recorder.closed {
		return false, ErrRecorderClosed
	}
	unfinished = len(s.recorder.started) > 0
	s.recorder.closed = true
	if s.recorder.close != nil {
		err = s.recorder.close()
	}
	return unfinished, err
}

type costJournalLock struct {
	path string
	file *os.File
	info os.FileInfo
}

func canonicalCostJournalPath(path string) (string, error) {
	if path == "" || strings.TrimSpace(path) != path || strings.ContainsRune(path, '\x00') {
		return "", errors.New("budget: cost journal path must be a canonical local path")
	}
	absolute, err := filepath.Abs(path)
	if err != nil {
		return "", fmt.Errorf("budget: resolve cost journal path: %w", err)
	}
	if strings.HasPrefix(filepath.VolumeName(absolute), `\\`) {
		return "", errors.New("budget: cost journal must be on a local filesystem, not a network share")
	}
	parentInfo, err := os.Stat(filepath.Dir(absolute))
	if err != nil {
		return "", fmt.Errorf("budget: inspect cost journal directory: %w", err)
	}
	if !parentInfo.IsDir() {
		return "", errors.New("budget: cost journal parent is not a directory")
	}
	info, err := os.Lstat(absolute)
	if err == nil {
		if info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() {
			return "", errors.New("budget: cost journal must be a regular non-symlink file")
		}
	} else if !errors.Is(err, os.ErrNotExist) {
		return "", fmt.Errorf("budget: inspect cost journal: %w", err)
	}
	return absolute, nil
}

func acquireCostJournalLock(journalPath string) (*costJournalLock, error) {
	lockPath := journalPath + ".lock"
	file, err := os.OpenFile(lockPath, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o600)
	if errors.Is(err, os.ErrExist) {
		return nil, fmt.Errorf("%w: %s", ErrCostJournalLocked, lockPath)
	}
	if err != nil {
		return nil, fmt.Errorf("budget: create cost journal lock: %w", err)
	}
	info, err := file.Stat()
	if err != nil {
		_ = file.Close()
		return nil, fmt.Errorf("budget: inspect cost journal lock: %w", err)
	}
	lock := &costJournalLock{path: lockPath, file: file, info: info}
	metadata := []byte(fmt.Sprintf("schema=mathcase-cost-lock-v1\npid=%d\nacquired_at=%s\n", os.Getpid(), time.Now().UTC().Format(time.RFC3339Nano)))
	if err := writeAll(file, metadata); err != nil {
		_ = lock.release()
		return nil, fmt.Errorf("budget: write cost journal lock: %w", err)
	}
	if err := file.Sync(); err != nil {
		_ = lock.release()
		return nil, fmt.Errorf("budget: sync cost journal lock: %w", err)
	}
	return lock, nil
}

func (l *costJournalLock) keep() error {
	if l == nil || l.file == nil {
		return nil
	}
	err := l.file.Close()
	if err == nil {
		l.file = nil
	}
	return err
}

func (l *costJournalLock) release() error {
	if l == nil {
		return nil
	}
	if err := l.keep(); err != nil {
		return fmt.Errorf("budget: close cost journal lock: %w", err)
	}
	current, err := os.Lstat(l.path)
	if errors.Is(err, os.ErrNotExist) {
		return ErrCostJournalLockLost
	}
	if err != nil {
		return fmt.Errorf("budget: inspect cost journal lock before release: %w", err)
	}
	if !os.SameFile(l.info, current) {
		return ErrCostJournalLockLost
	}
	if err := os.Remove(l.path); err != nil {
		return fmt.Errorf("budget: remove cost journal lock: %w", err)
	}
	return nil
}
