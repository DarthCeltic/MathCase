package solver

import (
	"crypto/sha256"
	"encoding/binary"
	"encoding/hex"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"sort"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/fsutil"
)

const (
	LeanProjectSnapshotSchemaVersion       = "mathcase-lean-project-snapshot-v2"
	legacyLeanProjectSnapshotSchemaVersion = "mathcase-lean-project-snapshot-v1"
	// A project snapshot is copied before it is mounted into the verifier. These
	// limits bound accidental workspace exhaustion. The 10 GiB byte ceiling
	// accommodates the measured 7.08 GiB proofs/first-rung dependency closure;
	// larger projects fail closed instead of silently omitting files.
	maxLeanProjectSnapshotFiles = 500_000
	maxLeanProjectSnapshotBytes = int64(10 << 30)
	maxLeanWritableCacheFiles   = 250_000
	maxLeanWritableCacheBytes   = int64(512 << 20)
)

// LeanProjectSnapshot identifies a sealed source-built project image and its
// complete reopenable file inventory. It is local integrity/process evidence,
// not a signed executor attestation.
type LeanProjectSnapshot struct {
	SchemaVersion             string `json:"schema_version"`
	SHA256                    string `json:"sha256"`
	SourceManifestSHA256      string `json:"source_manifest_sha256,omitempty"`
	InventorySHA256           string `json:"inventory_sha256,omitempty"`
	ImageDigest               string `json:"image_digest,omitempty"`
	FileCount                 int64  `json:"file_count"`
	LeanSourceFileCount       int64  `json:"lean_source_file_count"`
	CompiledArtifactFileCount int64  `json:"compiled_artifact_file_count"`
	TotalBytes                int64  `json:"total_bytes"`
}

type leanProjectSnapshotEntry struct {
	relativePath string
	sha256       [sha256.Size]byte
	size         int64
	executable   bool
	isLeanSource bool
	isArtifact   bool
}

// leanProjectCachePlan seeds a bounded tmpfs mounted at the actual project
// .lake path. Dependency packages remain in the immutable project snapshot.
type leanProjectCachePlan struct {
	seedPath     string
	packagesPath string
}

// copyLeanProjectSnapshot copies every regular file below sourceRoot to a
// fresh destinationRoot, adds one generated Lean source file inside that
// project, and hashes the exact resulting tree. Symlinks and special files are
// rejected so the container cannot read an unpinned path outside the snapshot.
func copyLeanProjectSnapshot(sourceRoot, destinationRoot, generatedSourceName string, generatedSource []byte) (LeanProjectSnapshot, error) {
	if filepath.Base(generatedSourceName) != generatedSourceName || generatedSourceName == "." || generatedSourceName == ".." || strings.ContainsAny(generatedSourceName, `/\\`) {
		return LeanProjectSnapshot{}, errors.New("lean project snapshot: generated source name must be a single filename")
	}
	sourceAbs, err := filepath.Abs(sourceRoot)
	if err != nil {
		return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: resolve source root: %w", err)
	}
	sourceAbs, err = fsutil.CanonicalPath(sourceAbs)
	if err != nil {
		return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: resolve source root: %w", err)
	}
	sourceInfo, err := os.Stat(sourceAbs)
	if err != nil || !sourceInfo.IsDir() {
		return LeanProjectSnapshot{}, errors.New("lean project snapshot: source root is unavailable")
	}
	destinationAbs, err := filepath.Abs(destinationRoot)
	if err != nil {
		return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: resolve destination root: %w", err)
	}
	if isWithin(sourceAbs, destinationAbs) || isWithin(destinationAbs, sourceAbs) || samePath(sourceAbs, destinationAbs) {
		return LeanProjectSnapshot{}, errors.New("lean project snapshot: source and destination roots must be disjoint")
	}
	if _, err := os.Lstat(destinationAbs); err == nil {
		return LeanProjectSnapshot{}, errors.New("lean project snapshot: destination root must not already exist")
	} else if !errors.Is(err, os.ErrNotExist) {
		return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: inspect destination root: %w", err)
	}

	entries := make([]leanProjectSnapshotEntry, 0, 128)
	var sourceBytes int64
	walkErr := filepath.WalkDir(sourceAbs, func(path string, entry os.DirEntry, walkErr error) error {
		if walkErr != nil {
			return walkErr
		}
		if path == sourceAbs {
			return nil
		}
		info, err := os.Lstat(path)
		if err != nil {
			return fmt.Errorf("inspect %q: %w", path, err)
		}
		if info.Mode()&os.ModeSymlink != 0 {
			return fmt.Errorf("lean project snapshot: symlink is not allowed: %q", path)
		}
		if entry.IsDir() {
			return nil
		}
		if !info.Mode().IsRegular() {
			return fmt.Errorf("lean project snapshot: non-regular file is not allowed: %q", path)
		}
		relative, err := filepath.Rel(sourceAbs, path)
		if err != nil || filepath.IsAbs(relative) || relative == ".." || strings.HasPrefix(relative, ".."+string(filepath.Separator)) {
			return errors.New("lean project snapshot: project file escapes the source root")
		}
		if strings.EqualFold(filepath.ToSlash(filepath.Clean(relative)), generatedSourceName) {
			return fmt.Errorf("lean project snapshot: generated source would overwrite project file %q", generatedSourceName)
		}
		if len(entries) >= maxLeanProjectSnapshotFiles {
			return fmt.Errorf("lean project snapshot: file count exceeds limit %d", maxLeanProjectSnapshotFiles)
		}
		if info.Size() < 0 || info.Size() > maxLeanProjectSnapshotBytes-sourceBytes {
			return fmt.Errorf("lean project snapshot: project exceeds copy limit of %d bytes", maxLeanProjectSnapshotBytes)
		}
		sourceBytes += info.Size()
		entries = append(entries, leanProjectSnapshotEntry{
			relativePath: filepath.ToSlash(relative),
			size:         info.Size(),
			executable:   info.Mode().Perm()&0o111 != 0,
			isLeanSource: strings.EqualFold(filepath.Ext(relative), ".lean"),
			isArtifact:   isLeanCompiledArtifactPath(relative),
		})
		return nil
	})
	if walkErr != nil {
		return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: enumerate project tree: %w", walkErr)
	}
	if int64(len(generatedSource)) > maxLeanProjectSnapshotBytes-sourceBytes {
		return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: generated source exceeds copy limit of %d bytes", maxLeanProjectSnapshotBytes)
	}
	if len(entries)+1 > maxLeanProjectSnapshotFiles {
		return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: file count exceeds limit %d", maxLeanProjectSnapshotFiles)
	}

	if err := os.Mkdir(destinationAbs, 0o755); err != nil {
		return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: create destination root: %w", err)
	}
	copyFailed := true
	defer func() {
		if copyFailed {
			_ = os.RemoveAll(destinationAbs)
		}
	}()
	for index := range entries {
		entry := &entries[index]
		sourcePath := filepath.Join(sourceAbs, filepath.FromSlash(entry.relativePath))
		destinationPath := filepath.Join(destinationAbs, filepath.FromSlash(entry.relativePath))
		if !isWithin(destinationAbs, destinationPath) {
			return LeanProjectSnapshot{}, errors.New("lean project snapshot: copied path escapes the destination root")
		}
		if err := os.MkdirAll(filepath.Dir(destinationPath), 0o755); err != nil {
			return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: create directory for %q: %w", entry.relativePath, err)
		}
		fileHash, bytesCopied, err := copyLeanSnapshotFile(sourcePath, destinationPath, maxLeanProjectSnapshotBytes)
		if err != nil {
			return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: copy %q: %w", entry.relativePath, err)
		}
		if bytesCopied != entry.size {
			return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: file %q changed size while copying", entry.relativePath)
		}
		mode := os.FileMode(0o644)
		if entry.executable {
			mode = 0o755
		}
		if err := os.Chmod(destinationPath, mode); err != nil {
			return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: set read-compatible mode for %q: %w", entry.relativePath, err)
		}
		entry.sha256 = fileHash
	}
	generatedPath := filepath.Join(destinationAbs, generatedSourceName)
	generatedFile, err := os.OpenFile(generatedPath, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o644)
	if err != nil {
		return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: write generated source: %w", err)
	}
	if _, err := generatedFile.Write(generatedSource); err != nil {
		_ = generatedFile.Close()
		return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: write generated source: %w", err)
	}
	if err := generatedFile.Sync(); err != nil {
		_ = generatedFile.Close()
		return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: flush generated source: %w", err)
	}
	if err := generatedFile.Close(); err != nil {
		return LeanProjectSnapshot{}, fmt.Errorf("lean project snapshot: close generated source: %w", err)
	}
	generatedDigest := sha256.Sum256(generatedSource)
	entries = append(entries, leanProjectSnapshotEntry{
		relativePath: filepath.ToSlash(generatedSourceName),
		sha256:       generatedDigest,
		size:         int64(len(generatedSource)),
		isLeanSource: strings.EqualFold(filepath.Ext(generatedSourceName), ".lean"),
	})
	sort.Slice(entries, func(i, j int) bool { return entries[i].relativePath < entries[j].relativePath })

	hasher := sha256.New()
	_, _ = io.WriteString(hasher, legacyLeanProjectSnapshotSchemaVersion+"\x00")
	snapshot := LeanProjectSnapshot{SchemaVersion: legacyLeanProjectSnapshotSchemaVersion}
	for _, entry := range entries {
		writeSnapshotHashField(hasher, []byte(entry.relativePath))
		var sizeBytes [8]byte
		binary.BigEndian.PutUint64(sizeBytes[:], uint64(entry.size))
		_, _ = hasher.Write(sizeBytes[:])
		var executableByte byte
		if entry.executable {
			executableByte = 1
		}
		_, _ = hasher.Write([]byte{executableByte})
		_, _ = hasher.Write(entry.sha256[:])
		snapshot.FileCount++
		snapshot.TotalBytes += entry.size
		if entry.isLeanSource {
			snapshot.LeanSourceFileCount++
		}
		if entry.isArtifact {
			snapshot.CompiledArtifactFileCount++
		}
	}
	snapshot.SHA256 = hex.EncodeToString(hasher.Sum(nil))
	copyFailed = false
	return snapshot, nil
}

func copyLeanSnapshotFile(sourcePath, destinationPath string, maxBytes int64) ([sha256.Size]byte, int64, error) {
	var digest [sha256.Size]byte
	sourceInfo, err := os.Lstat(sourcePath)
	if err != nil || !sourceInfo.Mode().IsRegular() || sourceInfo.Mode()&os.ModeSymlink != 0 {
		return digest, 0, errors.New("source is not a regular non-symlink file")
	}
	source, err := os.Open(sourcePath)
	if err != nil {
		return digest, 0, err
	}
	defer source.Close()
	destination, err := os.OpenFile(destinationPath, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o600)
	if err != nil {
		return digest, 0, err
	}
	hasher := sha256.New()
	limit := maxBytes + 1
	bytesCopied, copyErr := io.Copy(io.MultiWriter(destination, hasher), io.LimitReader(source, limit))
	closeErr := destination.Close()
	if copyErr != nil {
		return digest, bytesCopied, copyErr
	}
	if closeErr != nil {
		return digest, bytesCopied, closeErr
	}
	if bytesCopied > maxBytes {
		return digest, bytesCopied, errors.New("source grew beyond snapshot copy limit")
	}
	after, err := source.Stat()
	if err != nil {
		return digest, bytesCopied, err
	}
	if after.Size() != sourceInfo.Size() || !after.ModTime().Equal(sourceInfo.ModTime()) || after.Size() != bytesCopied {
		return digest, bytesCopied, errors.New("source changed while snapshot was copied")
	}
	copy(digest[:], hasher.Sum(nil))
	return digest, bytesCopied, nil
}

// prepareLeanProjectLakeCache prepares a bounded seed for a writable tmpfs at
// the actual project .lake path. The seed is copied from the hashed snapshot;
// dependency sources and their captured artifacts remain mounted from the
// immutable snapshot at .lake/packages.
func prepareLeanProjectLakeCache(projectSnapshotRoot, workspaceRoot string) (leanProjectCachePlan, error) {
	projectAbs, err := filepath.Abs(projectSnapshotRoot)
	if err != nil {
		return leanProjectCachePlan{}, fmt.Errorf("Lean Lake cache: resolve project snapshot: %w", err)
	}
	projectAbs, err = fsutil.CanonicalPath(projectAbs)
	if err != nil {
		return leanProjectCachePlan{}, fmt.Errorf("Lean Lake cache: resolve project snapshot: %w", err)
	}
	workspaceAbs, err := filepath.Abs(workspaceRoot)
	if err != nil {
		return leanProjectCachePlan{}, fmt.Errorf("Lean Lake cache: resolve workspace: %w", err)
	}
	projectLake := filepath.Join(projectAbs, ".lake")
	lakeInfo, err := os.Lstat(projectLake)
	if err != nil || lakeInfo.Mode()&os.ModeSymlink != 0 || !lakeInfo.IsDir() {
		return leanProjectCachePlan{}, errors.New("Lean Lake cache: project snapshot must contain a real .lake directory")
	}
	cacheRoot := filepath.Join(workspaceAbs, "lake-cache")
	if isWithin(projectAbs, cacheRoot) || isWithin(cacheRoot, projectAbs) || samePath(projectAbs, cacheRoot) {
		return leanProjectCachePlan{}, errors.New("Lean Lake cache: writable cache root and project snapshot must be disjoint")
	}
	if err := os.Mkdir(cacheRoot, 0o700); err != nil {
		return leanProjectCachePlan{}, fmt.Errorf("Lean Lake cache: create disposable cache root: %w", err)
	}
	budget := &leanLakeCacheBudget{}
	seedPath := filepath.Join(cacheRoot, "workspace-lake-seed")
	if err := copyLeanLakeCacheDirectory(projectLake, seedPath, "packages", budget); err != nil {
		return leanProjectCachePlan{}, fmt.Errorf("Lean Lake cache: copy workspace .lake cache seed: %w", err)
	}
	plan := leanProjectCachePlan{seedPath: seedPath}
	packagesRoot := filepath.Join(projectLake, "packages")
	packagesInfo, err := os.Lstat(packagesRoot)
	if errors.Is(err, os.ErrNotExist) {
		return plan, nil
	}
	if err != nil || packagesInfo.Mode()&os.ModeSymlink != 0 || !packagesInfo.IsDir() {
		return leanProjectCachePlan{}, errors.New("Lean Lake cache: dependency package directory is not a regular directory")
	}
	plan.packagesPath = packagesRoot
	return plan, nil
}

// containerLeanModulePath derives the module search path from the exact
// snapshotted project layout. Lean reads package .olean files from the
// read-only package mount and the root build cache from the disposable .lake
// tmpfs. Lake is deliberately not invoked in the isolated container because
// its dependency materializer may try to rewrite the immutable source tree.
func containerLeanModulePath(projectRoot string) (string, error) {
	projectAbs, err := filepath.Abs(projectRoot)
	if err != nil {
		return "", fmt.Errorf("Lean module path: resolve project snapshot: %w", err)
	}
	projectAbs, err = fsutil.CanonicalPath(projectAbs)
	if err != nil {
		return "", fmt.Errorf("Lean module path: resolve project snapshot: %w", err)
	}
	projectInfo, err := os.Lstat(projectAbs)
	if err != nil || projectInfo.Mode()&os.ModeSymlink != 0 || !projectInfo.IsDir() {
		return "", errors.New("Lean module path: project snapshot must be a regular directory")
	}
	paths := []string{"/mathcase/project/.lake/build/lib/lean"}
	packagesRoot := filepath.Join(projectAbs, ".lake", "packages")
	entries, err := os.ReadDir(packagesRoot)
	if errors.Is(err, os.ErrNotExist) {
		return strings.Join(paths, ":"), nil
	}
	if err != nil {
		return "", fmt.Errorf("Lean module path: read pinned package directory: %w", err)
	}
	for _, entry := range entries {
		name := entry.Name()
		if name == "." || name == ".." || strings.ContainsAny(name, `/\\:`) {
			return "", fmt.Errorf("Lean module path: invalid package directory name %q", name)
		}
		packagePath := filepath.Join(packagesRoot, name)
		info, err := os.Lstat(packagePath)
		if err != nil || info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
			return "", fmt.Errorf("Lean module path: package %q is not a regular directory", name)
		}
		paths = append(paths, "/mathcase/project/.lake/packages/"+name+"/.lake/build/lib/lean")
	}
	return strings.Join(paths, ":"), nil
}

type leanLakeCacheBudget struct {
	files int
	bytes int64
}

func copyLeanLakeCacheDirectory(sourceRoot, destinationRoot, excludeImmediateChild string, budget *leanLakeCacheBudget) error {
	if err := os.Mkdir(destinationRoot, 0o777); err != nil {
		return err
	}
	return filepath.WalkDir(sourceRoot, func(path string, entry os.DirEntry, walkErr error) error {
		if walkErr != nil {
			return walkErr
		}
		if path == sourceRoot {
			return nil
		}
		relative, err := filepath.Rel(sourceRoot, path)
		if err != nil || filepath.IsAbs(relative) || relative == ".." || strings.HasPrefix(relative, ".."+string(filepath.Separator)) {
			return errors.New("cache path escapes its source directory")
		}
		if excludeImmediateChild != "" && filepath.Dir(relative) == "." && strings.EqualFold(filepath.Base(relative), excludeImmediateChild) {
			if entry.IsDir() {
				return filepath.SkipDir
			}
			return nil
		}
		info, err := os.Lstat(path)
		if err != nil {
			return err
		}
		if info.Mode()&os.ModeSymlink != 0 {
			return fmt.Errorf("symlink is not allowed in Lake cache: %q", relative)
		}
		destination := filepath.Join(destinationRoot, relative)
		if !isWithin(destinationRoot, destination) {
			return errors.New("cache destination escapes its scratch directory")
		}
		if entry.IsDir() {
			return os.MkdirAll(destination, 0o777)
		}
		if !info.Mode().IsRegular() {
			return fmt.Errorf("non-regular Lake cache file is not allowed: %q", relative)
		}
		if budget.files >= maxLeanWritableCacheFiles || info.Size() < 0 || info.Size() > maxLeanWritableCacheBytes-budget.bytes {
			return fmt.Errorf("writable Lake cache exceeds its %d-file / %d-byte bound", maxLeanWritableCacheFiles, maxLeanWritableCacheBytes)
		}
		if err := os.MkdirAll(filepath.Dir(destination), 0o777); err != nil {
			return err
		}
		_, bytesCopied, err := copyLeanSnapshotFile(path, destination, maxLeanWritableCacheBytes-budget.bytes)
		if err != nil {
			return err
		}
		if bytesCopied != info.Size() {
			return fmt.Errorf("Lake cache file %q changed while copied", relative)
		}
		mode := os.FileMode(0o666)
		if info.Mode().Perm()&0o111 != 0 {
			mode = 0o777
		}
		if err := os.Chmod(destination, mode); err != nil {
			return err
		}
		budget.files++
		budget.bytes += bytesCopied
		return nil
	})
}

func writeSnapshotHashField(hasher io.Writer, value []byte) {
	var length [8]byte
	binary.BigEndian.PutUint64(length[:], uint64(len(value)))
	_, _ = hasher.Write(length[:])
	_, _ = hasher.Write(value)
}

func isLeanCompiledArtifactPath(path string) bool {
	normalized := "/" + strings.Trim(filepath.ToSlash(path), "/") + "/"
	if strings.Contains(normalized, "/.lake/build/") {
		return true
	}
	extension := strings.ToLower(filepath.Ext(path))
	switch extension {
	case ".olean", ".ilean", ".trace", ".hash", ".o", ".a", ".so", ".dll", ".dylib":
		return true
	default:
		return false
	}
}

func (snapshot LeanProjectSnapshot) Validate(expectedSHA256 string) error {
	if (snapshot.SchemaVersion != LeanProjectSnapshotSchemaVersion && snapshot.SchemaVersion != legacyLeanProjectSnapshotSchemaVersion) ||
		snapshot.SHA256 != expectedSHA256 || len(snapshot.SHA256) != sha256.Size*2 || !isLowerHex(snapshot.SHA256) {
		return errors.New("Lean project snapshot identity or digest is invalid")
	}
	if snapshot.FileCount < 1 || snapshot.LeanSourceFileCount < 1 || snapshot.CompiledArtifactFileCount < 0 || snapshot.TotalBytes < 0 {
		return errors.New("Lean project snapshot counts are inconsistent")
	}
	if snapshot.FileCount > maxLeanProjectSnapshotFiles || snapshot.TotalBytes > maxLeanProjectSnapshotBytes {
		return errors.New("Lean project snapshot exceeds the configured copy bounds")
	}
	if snapshot.SchemaVersion == LeanProjectSnapshotSchemaVersion {
		metadataPresent := snapshot.SourceManifestSHA256 != "" || snapshot.InventorySHA256 != "" || snapshot.ImageDigest != ""
		if metadataPresent && (!validSHA256(snapshot.SourceManifestSHA256) || !validSHA256(snapshot.InventorySHA256) || !validImageDigest(snapshot.ImageDigest)) {
			return errors.New("sealed Lean project snapshot has incomplete source, inventory, or image identity")
		}
	}
	return nil
}

func samePath(left, right string) bool {
	leftAbs, leftErr := fsutil.CanonicalPath(left)
	rightAbs, rightErr := fsutil.CanonicalPath(right)
	if leftErr != nil || rightErr != nil {
		return false
	}
	return strings.EqualFold(filepath.Clean(leftAbs), filepath.Clean(rightAbs))
}
