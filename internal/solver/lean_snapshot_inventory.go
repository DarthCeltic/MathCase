package solver

import (
	"bufio"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/fsutil"
)

// BuildLeanSnapshotInventory returns the canonical identity and complete file
// list for a source tree. Source-only mode removes every project/package build
// cache and compiled artifact before the clean build; image mode records the
// resulting sources and compiled outputs.
func BuildLeanSnapshotInventory(root string, includeCompiled bool) (LeanProjectSnapshot, []LeanSnapshotInventoryEntry, error) {
	rootAbs, err := filepath.Abs(root)
	if err != nil {
		return LeanProjectSnapshot{}, nil, fmt.Errorf("Lean snapshot inventory: resolve root: %w", err)
	}
	traversesLink, err := fsutil.PathHasLinkComponent(rootAbs)
	if err != nil {
		return LeanProjectSnapshot{}, nil, fmt.Errorf("Lean snapshot inventory: inspect root path components: %w", err)
	}
	if traversesLink {
		return LeanProjectSnapshot{}, nil, errors.New("Lean snapshot inventory: root path traverses a link or reparse point")
	}
	rootInfo, err := os.Lstat(rootAbs)
	if err != nil || rootInfo.Mode()&os.ModeSymlink != 0 || !rootInfo.IsDir() {
		return LeanProjectSnapshot{}, nil, errors.New("Lean snapshot inventory: root must be a regular directory, not a link or reparse point")
	}
	resolvedRoot, err := fsutil.CanonicalPath(rootAbs)
	if err != nil {
		return LeanProjectSnapshot{}, nil, fmt.Errorf("Lean snapshot inventory: resolve root symlinks: %w", err)
	}
	if !samePath(rootAbs, resolvedRoot) {
		return LeanProjectSnapshot{}, nil, errors.New("Lean snapshot inventory: root path traverses a link or reparse point")
	}
	rootAbs = resolvedRoot
	entries := make([]LeanSnapshotInventoryEntry, 0, 1024)
	seenCasefold := make(map[string]string)
	var totalBytes int64
	err = filepath.WalkDir(rootAbs, func(path string, entry os.DirEntry, walkErr error) error {
		if walkErr != nil {
			return walkErr
		}
		if path == rootAbs {
			return nil
		}
		relative, err := filepath.Rel(rootAbs, path)
		if err != nil || filepath.IsAbs(relative) || relative == ".." || strings.HasPrefix(relative, ".."+string(filepath.Separator)) {
			return errors.New("Lean snapshot inventory: path escaped the root")
		}
		relative = filepath.ToSlash(relative)
		if !includeCompiled && leanSnapshotSourceExcluded(relative) {
			if entry.IsDir() {
				return filepath.SkipDir
			}
			return nil
		}
		info, err := os.Lstat(path)
		if err != nil {
			return err
		}
		if info.Mode()&os.ModeSymlink != 0 || entry.Type()&os.ModeSymlink != 0 {
			return fmt.Errorf("Lean snapshot inventory: link or reparse point is not allowed: %q", relative)
		}
		if entry.IsDir() {
			return nil
		}
		if !info.Mode().IsRegular() {
			return fmt.Errorf("Lean snapshot inventory: non-regular file is not allowed: %q", relative)
		}
		if len(entries) >= maxLeanProjectSnapshotFiles {
			return fmt.Errorf("Lean snapshot inventory: file count exceeds limit %d", maxLeanProjectSnapshotFiles)
		}
		if info.Size() < 0 || info.Size() > maxLeanProjectSnapshotBytes-totalBytes {
			return fmt.Errorf("Lean snapshot inventory: project exceeds byte limit %d", maxLeanProjectSnapshotBytes)
		}
		casefold := strings.ToLower(relative)
		if previous, exists := seenCasefold[casefold]; exists {
			return fmt.Errorf("Lean snapshot inventory: case-colliding paths %q and %q", previous, relative)
		}
		seenCasefold[casefold] = relative
		file, err := os.Open(path)
		if err != nil {
			return err
		}
		before, err := file.Stat()
		if err != nil || !before.Mode().IsRegular() {
			_ = file.Close()
			return fmt.Errorf("Lean snapshot inventory: file changed type while opening %q", relative)
		}
		hasher := sha256.New()
		copied, copyErr := io.Copy(hasher, io.LimitReader(file, maxLeanProjectSnapshotBytes+1))
		after, statErr := file.Stat()
		closeErr := file.Close()
		if copyErr != nil || statErr != nil || closeErr != nil {
			return errors.Join(copyErr, statErr, closeErr)
		}
		if copied != info.Size() || after.Size() != before.Size() || !after.ModTime().Equal(before.ModTime()) {
			return fmt.Errorf("Lean snapshot inventory: file changed while hashing %q", relative)
		}
		executable := info.Mode().Perm()&0o111 != 0
		entries = append(entries, LeanSnapshotInventoryEntry{
			Path:       relative,
			SHA256:     hex.EncodeToString(hasher.Sum(nil)),
			Size:       info.Size(),
			Executable: executable,
			Role:       leanSnapshotFileRole(relative),
		})
		totalBytes += info.Size()
		return nil
	})
	if err != nil {
		return LeanProjectSnapshot{}, nil, fmt.Errorf("Lean snapshot inventory: enumerate files: %w", err)
	}
	SortSnapshotInventoryEntries(entries)
	project := summarizeLeanSnapshotEntries(entries)
	if err := project.Validate(project.SHA256); err != nil {
		return LeanProjectSnapshot{}, nil, fmt.Errorf("Lean snapshot inventory: canonical result is invalid: %w", err)
	}
	return project, entries, nil
}

func summarizeLeanSnapshotEntries(entries []LeanSnapshotInventoryEntry) LeanProjectSnapshot {
	project := LeanProjectSnapshot{SchemaVersion: LeanProjectSnapshotSchemaVersion}
	hasher := sha256.New()
	_, _ = io.WriteString(hasher, LeanProjectSnapshotSchemaVersion+"\x00")
	for _, entry := range entries {
		writeSnapshotHashField(hasher, []byte(entry.Path))
		writeSnapshotHashUint64(hasher, uint64(entry.Size))
		if entry.Executable {
			_, _ = hasher.Write([]byte{1})
		} else {
			_, _ = hasher.Write([]byte{0})
		}
		fileHash, _ := hex.DecodeString(entry.SHA256)
		_, _ = hasher.Write(fileHash)
		project.FileCount++
		project.TotalBytes += entry.Size
		if strings.EqualFold(filepath.Ext(entry.Path), ".lean") {
			project.LeanSourceFileCount++
		}
		if isLeanCompiledArtifactPath(entry.Path) {
			project.CompiledArtifactFileCount++
		}
	}
	project.SHA256 = hex.EncodeToString(hasher.Sum(nil))
	return project
}

// WriteLeanSnapshotInventory writes the complete inventory as a durable JSONL
// artifact with exclusive creation. The first record is the summary header.
func WriteLeanSnapshotInventory(path string, project LeanProjectSnapshot, entries []LeanSnapshotInventoryEntry) (string, error) {
	if err := project.Validate(project.SHA256); err != nil {
		return "", err
	}
	root, err := filepath.Abs(filepath.Dir(path))
	if err != nil {
		return "", err
	}
	if err := os.MkdirAll(root, 0o700); err != nil {
		return "", err
	}
	file, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o600)
	if err != nil {
		return "", err
	}
	hasher := sha256.New()
	writer := bufio.NewWriter(io.MultiWriter(file, hasher))
	header := leanSnapshotInventoryHeader{
		SchemaVersion:             LeanSnapshotInventorySchemaVersion,
		RootSHA256:                project.SHA256,
		FileCount:                 project.FileCount,
		LeanSourceFileCount:       project.LeanSourceFileCount,
		CompiledArtifactFileCount: project.CompiledArtifactFileCount,
		TotalBytes:                project.TotalBytes,
	}
	encoder := json.NewEncoder(writer)
	if err := encoder.Encode(header); err != nil {
		_ = file.Close()
		return "", err
	}
	for _, entry := range entries {
		if err := encoder.Encode(entry); err != nil {
			_ = file.Close()
			return "", err
		}
	}
	if err := writer.Flush(); err != nil {
		_ = file.Close()
		return "", err
	}
	if err := file.Sync(); err != nil {
		_ = file.Close()
		return "", err
	}
	if err := file.Close(); err != nil {
		return "", err
	}
	return hex.EncodeToString(hasher.Sum(nil)), nil
}

// CopyLeanProjectSourceSnapshot stages the source/configuration closure once,
// never copies build artifacts, validates copied bytes against the preflight
// manifest, and leaves the canonical destination intact after publication.
func CopyLeanProjectSourceSnapshot(sourceRoot, destinationRoot string) (LeanProjectSnapshot, []LeanSnapshotInventoryEntry, error) {
	source, err := filepath.Abs(sourceRoot)
	if err != nil {
		return LeanProjectSnapshot{}, nil, err
	}
	destination, err := filepath.Abs(destinationRoot)
	if err != nil {
		return LeanProjectSnapshot{}, nil, err
	}
	if isWithin(source, destination) || isWithin(destination, source) || samePath(source, destination) {
		return LeanProjectSnapshot{}, nil, errors.New("Lean source snapshot source and destination must be disjoint")
	}
	if _, err := os.Lstat(destination); err == nil {
		return LeanProjectSnapshot{}, nil, errors.New("Lean source snapshot destination already exists")
	} else if !errors.Is(err, os.ErrNotExist) {
		return LeanProjectSnapshot{}, nil, err
	}
	expected, entries, err := BuildLeanSnapshotInventory(source, false)
	if err != nil {
		return LeanProjectSnapshot{}, nil, err
	}
	if err := os.MkdirAll(destination, 0o755); err != nil {
		return LeanProjectSnapshot{}, nil, err
	}
	for _, entry := range entries {
		from := filepath.Join(source, filepath.FromSlash(entry.Path))
		to := filepath.Join(destination, filepath.FromSlash(entry.Path))
		if !isWithin(destination, to) {
			return LeanProjectSnapshot{}, nil, errors.New("Lean source snapshot destination path escaped its root")
		}
		if err := os.MkdirAll(filepath.Dir(to), 0o755); err != nil {
			return LeanProjectSnapshot{}, nil, err
		}
		digest, copied, err := copyLeanSnapshotFile(from, to, maxLeanProjectSnapshotBytes)
		if err != nil {
			return LeanProjectSnapshot{}, nil, fmt.Errorf("Lean source snapshot copy %q: %w", entry.Path, err)
		}
		if copied != entry.Size || hex.EncodeToString(digest[:]) != entry.SHA256 {
			return LeanProjectSnapshot{}, nil, fmt.Errorf("Lean source snapshot copy changed bytes for %q", entry.Path)
		}
		mode := os.FileMode(0o644)
		if entry.Executable {
			mode = 0o755
		}
		if err := os.Chmod(to, mode); err != nil {
			return LeanProjectSnapshot{}, nil, err
		}
	}
	actual, actualEntries, err := BuildLeanSnapshotInventory(destination, false)
	if err != nil {
		return LeanProjectSnapshot{}, nil, err
	}
	if actual.SHA256 != expected.SHA256 || actual.FileCount != expected.FileCount || actual.TotalBytes != expected.TotalBytes {
		return LeanProjectSnapshot{}, nil, errors.New("Lean source snapshot destination does not match its source inventory")
	}
	return actual, actualEntries, nil
}

func leanSnapshotSourceExcluded(relative string) bool {
	normalized := "/" + strings.Trim(filepath.ToSlash(relative), "/") + "/"
	if strings.Contains(normalized, "/.lake/build/") || strings.Contains(normalized, "/.lake/config/") || strings.Contains(normalized, "/.lake/tmp/") {
		return true
	}
	extension := strings.ToLower(filepath.Ext(relative))
	switch extension {
	case ".olean", ".ilean", ".trace", ".hash", ".o", ".a", ".so", ".dll", ".dylib":
		return true
	default:
		return false
	}
}

func leanSnapshotFileRole(path string) string {
	if isLeanCompiledArtifactPath(path) {
		return "COMPILED_ARTIFACT"
	}
	if strings.EqualFold(filepath.Ext(path), ".lean") {
		return "LEAN_SOURCE"
	}
	if strings.Contains("/"+path+"/", "/.git/") {
		return "GIT_METADATA"
	}
	return "SOURCE_OR_CONFIGURATION"
}

func writeSnapshotHashUint64(writer io.Writer, value uint64) {
	var raw [8]byte
	for index := 7; index >= 0; index-- {
		raw[index] = byte(value)
		value >>= 8
	}
	_, _ = writer.Write(raw[:])
}
