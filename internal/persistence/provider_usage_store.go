package persistence

import (
	"context"
	jsonv2 "encoding/json/v2"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"runtime"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/fsutil"
)

const providerUsageDirectory = "provider-usage-reconciliations"

type ProviderUsageReconciliationReceipt struct {
	ContentSHA256 string `json:"content_sha256"`
	RelativePath  string `json:"relative_path"`
	Size          int64  `json:"size"`
}

// ProviderUsageReconciliationStore stores validated comparison reports as
// immutable, content-addressed snapshots under an application-owned root.
type ProviderUsageReconciliationStore struct {
	root string
}

func NewProviderUsageReconciliationStore(root string) (*ProviderUsageReconciliationStore, error) {
	if strings.TrimSpace(root) == "" {
		return nil, errors.New("persistence: provider usage reconciliation root is required")
	}
	if err := os.MkdirAll(root, 0o700); err != nil {
		return nil, fmt.Errorf("persistence: create provider usage reconciliation root: %w", err)
	}
	canonical, err := fsutil.CanonicalPath(root)
	if err != nil {
		return nil, fmt.Errorf("persistence: resolve provider usage reconciliation root: %w", err)
	}
	info, err := os.Lstat(canonical)
	if err != nil {
		return nil, fmt.Errorf("persistence: inspect provider usage reconciliation root: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return nil, errors.New("persistence: provider usage reconciliation root is not a regular directory")
	}
	return &ProviderUsageReconciliationStore{root: canonical}, nil
}

// Put validates and atomically writes an immutable report. Repeated writes of
// the same report are idempotent; changed content receives a different digest.
func (s *ProviderUsageReconciliationStore) Put(ctx context.Context, report budget.ProviderUsageReconciliation) (ProviderUsageReconciliationReceipt, error) {
	if s == nil || s.root == "" {
		return ProviderUsageReconciliationReceipt{}, errors.New("persistence: provider usage reconciliation store is nil")
	}
	if ctx == nil {
		return ProviderUsageReconciliationReceipt{}, errors.New("persistence: context is required")
	}
	if err := ctx.Err(); err != nil {
		return ProviderUsageReconciliationReceipt{}, err
	}
	if err := report.Validate(); err != nil {
		return ProviderUsageReconciliationReceipt{}, fmt.Errorf("persistence: invalid provider usage reconciliation report: %w", err)
	}
	body, err := jsonv2.Marshal(report, jsonv2.Deterministic(true))
	if err != nil {
		return ProviderUsageReconciliationReceipt{}, fmt.Errorf("persistence: encode provider usage reconciliation report: %w", err)
	}
	if len(body) == 0 || len(body) > maxDossierBytes {
		return ProviderUsageReconciliationReceipt{}, errors.New("persistence: provider usage reconciliation report size is invalid")
	}
	digest := sha256Hex(body)
	directory := filepath.Join(s.root, providerUsageDirectory)
	if err := ensureDirectory(directory); err != nil {
		return ProviderUsageReconciliationReceipt{}, err
	}
	target := filepath.Join(directory, digest+".json")
	if receipt, ok, err := s.verifyExisting(ctx, target, digest); err != nil || ok {
		return receipt, err
	}
	if err := ctx.Err(); err != nil {
		return ProviderUsageReconciliationReceipt{}, err
	}
	temp, err := os.CreateTemp(directory, ".mathcase-usage-reconciliation-*.tmp")
	if err != nil {
		return ProviderUsageReconciliationReceipt{}, fmt.Errorf("persistence: create provider usage reconciliation temporary file: %w", err)
	}
	tempPath := temp.Name()
	defer func() { _ = os.Remove(tempPath) }()
	if err := temp.Chmod(0o600); err != nil {
		_ = temp.Close()
		return ProviderUsageReconciliationReceipt{}, fmt.Errorf("persistence: restrict provider usage reconciliation file: %w", err)
	}
	if err := writeAll(temp, body); err != nil {
		_ = temp.Close()
		return ProviderUsageReconciliationReceipt{}, fmt.Errorf("persistence: write provider usage reconciliation report: %w", err)
	}
	if err := temp.Sync(); err != nil {
		_ = temp.Close()
		return ProviderUsageReconciliationReceipt{}, fmt.Errorf("persistence: sync provider usage reconciliation report: %w", err)
	}
	if err := temp.Close(); err != nil {
		return ProviderUsageReconciliationReceipt{}, fmt.Errorf("persistence: close provider usage reconciliation report: %w", err)
	}
	if err := ctx.Err(); err != nil {
		return ProviderUsageReconciliationReceipt{}, err
	}
	if err := os.Rename(tempPath, target); err != nil {
		if receipt, ok, verifyErr := s.verifyExisting(ctx, target, digest); verifyErr == nil && ok {
			return receipt, nil
		}
		return ProviderUsageReconciliationReceipt{}, fmt.Errorf("persistence: commit provider usage reconciliation report: %w", err)
	}
	if runtime.GOOS != "windows" {
		directoryFile, err := os.Open(directory)
		if err != nil {
			return ProviderUsageReconciliationReceipt{}, fmt.Errorf("persistence: open provider usage reconciliation directory: %w", err)
		}
		syncErr := directoryFile.Sync()
		closeErr := directoryFile.Close()
		if syncErr != nil {
			return ProviderUsageReconciliationReceipt{}, fmt.Errorf("persistence: sync provider usage reconciliation directory: %w", syncErr)
		}
		if closeErr != nil {
			return ProviderUsageReconciliationReceipt{}, fmt.Errorf("persistence: close provider usage reconciliation directory: %w", closeErr)
		}
	}
	return providerUsageReceipt(s.root, target, digest, int64(len(body))), nil
}

// Get reopens a stored report by its content digest and validates both its
// bytes and report invariants before returning it.
func (s *ProviderUsageReconciliationStore) Get(ctx context.Context, digest string) (budget.ProviderUsageReconciliation, error) {
	if s == nil || s.root == "" {
		return budget.ProviderUsageReconciliation{}, errors.New("persistence: provider usage reconciliation store is nil")
	}
	if ctx == nil {
		return budget.ProviderUsageReconciliation{}, errors.New("persistence: context is required")
	}
	if !validSHA256(digest) {
		return budget.ProviderUsageReconciliation{}, errors.New("persistence: provider usage reconciliation digest must be canonical SHA-256 hex")
	}
	if err := ctx.Err(); err != nil {
		return budget.ProviderUsageReconciliation{}, err
	}
	directory := filepath.Join(s.root, providerUsageDirectory)
	if err := checkDirectory(directory); err != nil {
		return budget.ProviderUsageReconciliation{}, err
	}
	path := filepath.Join(directory, digest+".json")
	if err := ensureContained(s.root, path); err != nil {
		return budget.ProviderUsageReconciliation{}, err
	}
	file, err := openRegular(path)
	if err != nil {
		return budget.ProviderUsageReconciliation{}, fmt.Errorf("persistence: open provider usage reconciliation report: %w", err)
	}
	defer file.Close()
	body, err := io.ReadAll(io.LimitReader(file, maxDossierBytes+1))
	if err != nil {
		return budget.ProviderUsageReconciliation{}, fmt.Errorf("persistence: read provider usage reconciliation report: %w", err)
	}
	if len(body) == 0 || len(body) > maxDossierBytes || sha256Hex(body) != digest {
		return budget.ProviderUsageReconciliation{}, errors.New("persistence: provider usage reconciliation report content hash or size is invalid")
	}
	if err := ctx.Err(); err != nil {
		return budget.ProviderUsageReconciliation{}, err
	}
	var report budget.ProviderUsageReconciliation
	if err := jsonv2.Unmarshal(body, &report, jsonv2.RejectUnknownMembers(true)); err != nil {
		return budget.ProviderUsageReconciliation{}, fmt.Errorf("persistence: decode provider usage reconciliation report: %w", err)
	}
	if err := report.Validate(); err != nil {
		return budget.ProviderUsageReconciliation{}, fmt.Errorf("persistence: loaded provider usage reconciliation report is invalid: %w", err)
	}
	return report, nil
}

func (s *ProviderUsageReconciliationStore) verifyExisting(ctx context.Context, target, digest string) (ProviderUsageReconciliationReceipt, bool, error) {
	if err := ctx.Err(); err != nil {
		return ProviderUsageReconciliationReceipt{}, false, err
	}
	file, err := openRegular(target)
	if errors.Is(err, os.ErrNotExist) {
		return ProviderUsageReconciliationReceipt{}, false, nil
	}
	if err != nil {
		return ProviderUsageReconciliationReceipt{}, false, err
	}
	defer file.Close()
	body, err := io.ReadAll(io.LimitReader(file, maxDossierBytes+1))
	if err != nil {
		return ProviderUsageReconciliationReceipt{}, false, err
	}
	if len(body) == 0 || len(body) > maxDossierBytes || sha256Hex(body) != digest {
		return ProviderUsageReconciliationReceipt{}, false, errors.New("persistence: existing provider usage reconciliation content does not match its address")
	}
	var report budget.ProviderUsageReconciliation
	if err := jsonv2.Unmarshal(body, &report, jsonv2.RejectUnknownMembers(true)); err != nil {
		return ProviderUsageReconciliationReceipt{}, false, fmt.Errorf("persistence: decode existing provider usage reconciliation report: %w", err)
	}
	if err := report.Validate(); err != nil {
		return ProviderUsageReconciliationReceipt{}, false, fmt.Errorf("persistence: existing provider usage reconciliation report is invalid: %w", err)
	}
	return providerUsageReceipt(s.root, target, digest, int64(len(body))), true, nil
}

func providerUsageReceipt(root, target, digest string, size int64) ProviderUsageReconciliationReceipt {
	relative, _ := filepath.Rel(root, target)
	return ProviderUsageReconciliationReceipt{ContentSHA256: digest, RelativePath: filepath.ToSlash(relative), Size: size}
}
