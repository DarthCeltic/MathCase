package bridge

import (
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strings"
)

// LocalProofStore reads bounded regular proof files beneath one configured
// root. References use slash-separated relative paths and may not traverse
// symlinks.
type LocalProofStore struct {
	root string
}

func NewLocalProofStore(root string) (*LocalProofStore, error) {
	if strings.TrimSpace(root) == "" {
		return nil, errors.New("bridge: proof root is required")
	}
	absolute, err := filepath.Abs(root)
	if err != nil {
		return nil, fmt.Errorf("bridge: resolve proof root: %w", err)
	}
	canonical, err := filepath.EvalSymlinks(absolute)
	if err != nil {
		return nil, fmt.Errorf("bridge: resolve proof root: %w", err)
	}
	info, err := os.Stat(canonical)
	if err != nil {
		return nil, fmt.Errorf("bridge: inspect proof root: %w", err)
	}
	if !info.IsDir() {
		return nil, errors.New("bridge: proof root must be a directory")
	}
	return &LocalProofStore{root: canonical}, nil
}

func (s *LocalProofStore) ReadProof(reference string) ([]byte, error) {
	if s == nil || s.root == "" {
		return nil, errors.New("bridge: proof store is not initialized")
	}
	parts, err := proofReferenceParts(reference)
	if err != nil {
		return nil, err
	}
	path := s.root
	var expectedInfo os.FileInfo
	for index, part := range parts {
		path = filepath.Join(path, part)
		info, err := os.Lstat(path)
		if err != nil {
			return nil, fmt.Errorf("inspect proof path: %w", err)
		}
		if info.Mode()&os.ModeSymlink != 0 {
			return nil, errors.New("proof reference traverses a symbolic link")
		}
		if index < len(parts)-1 {
			if !info.IsDir() {
				return nil, errors.New("proof reference parent is not a directory")
			}
			continue
		}
		if !info.Mode().IsRegular() || info.Size() < 1 || info.Size() > MaxProofBytes {
			return nil, fmt.Errorf("proof file must be a regular file containing 1..%d bytes", MaxProofBytes)
		}
		expectedInfo = info
	}

	file, err := os.Open(path)
	if err != nil {
		return nil, fmt.Errorf("open proof file: %w", err)
	}
	defer file.Close()
	openedInfo, err := file.Stat()
	if err != nil {
		return nil, fmt.Errorf("inspect opened proof file: %w", err)
	}
	if !openedInfo.Mode().IsRegular() || !os.SameFile(expectedInfo, openedInfo) {
		return nil, errors.New("proof file changed while it was being opened")
	}
	data, err := io.ReadAll(io.LimitReader(file, MaxProofBytes+1))
	if err != nil {
		return nil, fmt.Errorf("read proof file: %w", err)
	}
	if len(data) == 0 || len(data) > MaxProofBytes {
		return nil, fmt.Errorf("proof file must contain 1..%d bytes", MaxProofBytes)
	}
	return data, nil
}

// ReadSource opens one source item from the same bounded-root reader contract.
// It is a separate method name so callers must choose a source root explicitly.
func (s *LocalProofStore) ReadSource(reference string) ([]byte, error) {
	return s.ReadProof(reference)
}

func proofReferenceParts(reference string) ([]string, error) {
	if reference == "" || len(reference) > 1024 || strings.TrimSpace(reference) != reference || strings.ContainsAny(reference, "\\:\x00\r\n") {
		return nil, errors.New("proof reference must be a canonical relative path using forward slashes")
	}
	parts := strings.Split(reference, "/")
	for _, part := range parts {
		if part == "" || part == "." || part == ".." {
			return nil, errors.New("proof reference contains an empty or traversing path segment")
		}
	}
	if !filepath.IsLocal(filepath.FromSlash(reference)) {
		return nil, errors.New("proof reference must stay within the configured root")
	}
	return parts, nil
}
