// MathCase project contact: DarthCeltic
// Email: 178664201+DarthCeltic@users.noreply.github.com
// Repository: https://github.com/DarthCeltic/MathCase

// Package persistence stores immutable, content-addressed MathCase dossiers.
package persistence

import (
	"context"
	"crypto/sha256"
	jsonv1 "encoding/json"
	jsonv2 "encoding/json/v2"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"runtime"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/fsutil"
)

const maxDossierBytes = 32 << 20

type DossierReceipt struct {
	CaseID        string `json:"case_id"`
	ContentSHA256 string `json:"content_sha256"`
	RelativePath  string `json:"relative_path"`
	Size          int64  `json:"size"`
}

type DossierStore struct {
	root string
}

// NewDossierStore creates or opens a private root selected by the application
// composition. The caller never chooses an artifact path per write.
func NewDossierStore(root string) (*DossierStore, error) {
	if strings.TrimSpace(root) == "" {
		return nil, errors.New("persistence: dossier root is required")
	}
	if err := os.MkdirAll(root, 0o700); err != nil {
		return nil, fmt.Errorf("persistence: create dossier root: %w", err)
	}
	canonical, err := fsutil.CanonicalPath(root)
	if err != nil {
		return nil, fmt.Errorf("persistence: resolve dossier root: %w", err)
	}
	info, err := os.Lstat(canonical)
	if err != nil {
		return nil, fmt.Errorf("persistence: inspect dossier root: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return nil, errors.New("persistence: dossier root is not a regular directory")
	}
	return &DossierStore{root: canonical}, nil
}

// Put validates and atomically writes one immutable dossier snapshot. Repeated
// writes of identical content are idempotent; changed content gets a new hash.
func (s *DossierStore) Put(ctx context.Context, dossier domain.Dossier) (DossierReceipt, error) {
	if s == nil || s.root == "" {
		return DossierReceipt{}, errors.New("persistence: dossier store is nil")
	}
	if ctx == nil {
		return DossierReceipt{}, errors.New("persistence: context is required")
	}
	if err := ctx.Err(); err != nil {
		return DossierReceipt{}, err
	}
	if err := dossier.Validate(); err != nil {
		return DossierReceipt{}, fmt.Errorf("persistence: invalid dossier: %w", err)
	}
	if err := validatePathID(dossier.Case.ID); err != nil {
		return DossierReceipt{}, err
	}
	body, err := jsonv2.Marshal(dossier, jsonv2.Deterministic(true), jsonv1.FormatDurationAsNano(true))
	if err != nil {
		return DossierReceipt{}, fmt.Errorf("persistence: encode dossier: %w", err)
	}
	if len(body) == 0 || len(body) > maxDossierBytes {
		return DossierReceipt{}, errors.New("persistence: dossier snapshot size is invalid")
	}
	contentHash := sha256Hex(body)
	casesRoot := filepath.Join(s.root, "cases")
	if err := ensureDirectory(casesRoot); err != nil {
		return DossierReceipt{}, err
	}
	directory := filepath.Join(casesRoot, dossier.Case.ID)
	if err := ensureDirectory(directory); err != nil {
		return DossierReceipt{}, err
	}
	target := filepath.Join(directory, contentHash+".json")
	if receipt, ok, err := s.verifyExisting(ctx, target, dossier.Case.ID, contentHash); err != nil || ok {
		return receipt, err
	}
	if err := ctx.Err(); err != nil {
		return DossierReceipt{}, err
	}
	temp, err := os.CreateTemp(directory, ".mathcase-dossier-*.tmp")
	if err != nil {
		return DossierReceipt{}, fmt.Errorf("persistence: create dossier temporary file: %w", err)
	}
	tempPath := temp.Name()
	defer func() { _ = os.Remove(tempPath) }()
	if err := temp.Chmod(0o600); err != nil {
		_ = temp.Close()
		return DossierReceipt{}, fmt.Errorf("persistence: restrict dossier temporary file: %w", err)
	}
	if err := writeAll(temp, body); err != nil {
		_ = temp.Close()
		return DossierReceipt{}, fmt.Errorf("persistence: write dossier snapshot: %w", err)
	}
	if err := temp.Sync(); err != nil {
		_ = temp.Close()
		return DossierReceipt{}, fmt.Errorf("persistence: sync dossier snapshot: %w", err)
	}
	if err := temp.Close(); err != nil {
		return DossierReceipt{}, fmt.Errorf("persistence: close dossier snapshot: %w", err)
	}
	if err := ctx.Err(); err != nil {
		return DossierReceipt{}, err
	}
	if err := os.Rename(tempPath, target); err != nil {
		if receipt, ok, verifyErr := s.verifyExisting(ctx, target, dossier.Case.ID, contentHash); verifyErr == nil && ok {
			return receipt, nil
		}
		return DossierReceipt{}, fmt.Errorf("persistence: commit dossier snapshot: %w", err)
	}
	if runtime.GOOS != "windows" {
		directoryFile, err := os.Open(directory)
		if err != nil {
			return DossierReceipt{}, fmt.Errorf("persistence: open dossier directory: %w", err)
		}
		syncErr := directoryFile.Sync()
		closeErr := directoryFile.Close()
		if syncErr != nil {
			return DossierReceipt{}, fmt.Errorf("persistence: sync dossier directory: %w", syncErr)
		}
		if closeErr != nil {
			return DossierReceipt{}, fmt.Errorf("persistence: close dossier directory: %w", closeErr)
		}
	}
	return receiptFor(s.root, dossier.Case.ID, target, contentHash, int64(len(body))), nil
}

func (s *DossierStore) Get(ctx context.Context, caseID, contentHash string) (domain.Dossier, error) {
	if s == nil || s.root == "" {
		return domain.Dossier{}, errors.New("persistence: dossier store is nil")
	}
	if ctx == nil {
		return domain.Dossier{}, errors.New("persistence: context is required")
	}
	if err := validatePathID(caseID); err != nil {
		return domain.Dossier{}, err
	}
	if !validSHA256(contentHash) {
		return domain.Dossier{}, errors.New("persistence: dossier hash must be canonical SHA-256 hex")
	}
	if err := ctx.Err(); err != nil {
		return domain.Dossier{}, err
	}
	casesRoot := filepath.Join(s.root, "cases")
	if err := checkDirectory(casesRoot); err != nil {
		return domain.Dossier{}, err
	}
	caseDirectory := filepath.Join(casesRoot, caseID)
	if err := checkDirectory(caseDirectory); err != nil {
		return domain.Dossier{}, err
	}
	path := filepath.Join(s.root, "cases", caseID, contentHash+".json")
	if err := ensureContained(s.root, path); err != nil {
		return domain.Dossier{}, err
	}
	file, err := openRegular(path)
	if err != nil {
		return domain.Dossier{}, fmt.Errorf("persistence: open dossier snapshot: %w", err)
	}
	defer file.Close()
	data, err := io.ReadAll(io.LimitReader(file, maxDossierBytes+1))
	if err != nil {
		return domain.Dossier{}, fmt.Errorf("persistence: read dossier snapshot: %w", err)
	}
	if len(data) == 0 || len(data) > maxDossierBytes || sha256Hex(data) != contentHash {
		return domain.Dossier{}, errors.New("persistence: dossier content hash or size is invalid")
	}
	if err := ctx.Err(); err != nil {
		return domain.Dossier{}, err
	}
	var dossier domain.Dossier
	if err := jsonv2.Unmarshal(data, &dossier, jsonv2.RejectUnknownMembers(true), jsonv1.FormatDurationAsNano(true)); err != nil {
		return domain.Dossier{}, fmt.Errorf("persistence: decode dossier snapshot: %w", err)
	}
	if dossier.Case.ID != caseID {
		return domain.Dossier{}, errors.New("persistence: dossier case identity does not match path")
	}
	if err := dossier.Validate(); err != nil {
		return domain.Dossier{}, fmt.Errorf("persistence: loaded dossier is invalid: %w", err)
	}
	return dossier, nil
}

func (s *DossierStore) verifyExisting(ctx context.Context, target, caseID, hash string) (DossierReceipt, bool, error) {
	if err := ctx.Err(); err != nil {
		return DossierReceipt{}, false, err
	}
	file, err := openRegular(target)
	if errors.Is(err, os.ErrNotExist) {
		return DossierReceipt{}, false, nil
	}
	if err != nil {
		return DossierReceipt{}, false, err
	}
	defer file.Close()
	data, err := io.ReadAll(io.LimitReader(file, maxDossierBytes+1))
	if err != nil {
		return DossierReceipt{}, false, err
	}
	if len(data) == 0 || len(data) > maxDossierBytes || sha256Hex(data) != hash {
		return DossierReceipt{}, false, errors.New("persistence: existing dossier content does not match its address")
	}
	return receiptFor(s.root, caseID, target, hash, int64(len(data))), true, nil
}

func receiptFor(root, caseID, target, hash string, size int64) DossierReceipt {
	relative, _ := filepath.Rel(root, target)
	return DossierReceipt{CaseID: caseID, ContentSHA256: hash, RelativePath: filepath.ToSlash(relative), Size: size}
}

func ensureDirectory(path string) error {
	if err := os.MkdirAll(path, 0o700); err != nil {
		return fmt.Errorf("persistence: create dossier directory: %w", err)
	}
	info, err := os.Lstat(path)
	if err != nil {
		return fmt.Errorf("persistence: inspect dossier directory: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return errors.New("persistence: dossier path is not a regular directory")
	}
	return nil
}

func checkDirectory(path string) error {
	info, err := os.Lstat(path)
	if err != nil {
		return fmt.Errorf("persistence: inspect dossier directory: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return errors.New("persistence: dossier path is not a regular directory")
	}
	return nil
}

func openRegular(path string) (*os.File, error) {
	info, err := os.Lstat(path)
	if err != nil {
		return nil, err
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() || info.Size() > maxDossierBytes {
		return nil, errors.New("persistence: dossier object is not a bounded regular file")
	}
	return os.Open(path) //nolint:gosec // path is derived from a validated case ID and content digest under the owned root
}

func ensureContained(root, path string) error {
	if !fsutil.IsWithin(root, path) {
		return errors.New("persistence: dossier path escapes the configured root")
	}
	return nil
}

func validatePathID(value string) error {
	if value == "" || len(value) > 128 {
		return errors.New("persistence: case ID is empty or too long")
	}
	for _, character := range value {
		if !(character >= 'a' && character <= 'z' || character >= 'A' && character <= 'Z' || character >= '0' && character <= '9' || character == '.' || character == '_' || character == '-') {
			return errors.New("persistence: case ID contains a non-canonical character")
		}
	}
	return nil
}

func validSHA256(value string) bool {
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

func sha256Hex(data []byte) string {
	hash := sha256.Sum256(data)
	return fmt.Sprintf("%x", hash[:])
}

func writeAll(writer io.Writer, data []byte) error {
	for len(data) > 0 {
		written, err := writer.Write(data)
		if err != nil {
			return err
		}
		if written <= 0 || written > len(data) {
			return errors.New("persistence: writer returned invalid byte count")
		}
		data = data[written:]
	}
	return nil
}
