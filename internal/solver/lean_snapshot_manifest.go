package solver

import (
	"bufio"
	"crypto/sha256"
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"time"
)

const (
	LeanSnapshotManifestSchemaVersion  = "mathcase-lean-snapshot-manifest-v1"
	LeanSnapshotInventorySchemaVersion = "mathcase-lean-snapshot-inventory-v1"
	maxLeanSnapshotManifestBytes       = 128 << 20
)

// LeanSnapshotManifest binds one clean-built project environment to the exact
// source inventory, compiled inventory, toolchain image, and import closure
// reused by verifier invocations. Its referenced inventory and build receipt
// are durable artifacts, not per-run copies.
type LeanSnapshotManifest struct {
	SchemaVersion                   string                   `json:"schema_version"`
	SnapshotID                      string                   `json:"snapshot_id"`
	SourceManifestPath              string                   `json:"source_manifest_path"`
	SourceManifestSHA256            string                   `json:"source_manifest_sha256"`
	SourceSnapshot                  LeanProjectSnapshot      `json:"source_snapshot"`
	InventoryPath                   string                   `json:"inventory_path"`
	InventorySHA256                 string                   `json:"inventory_sha256"`
	BuildReceiptPath                string                   `json:"build_receipt_path"`
	BuildReceiptSHA256              string                   `json:"build_receipt_sha256"`
	RecipeSHA256                    string                   `json:"recipe_sha256"`
	BaseImageDigest                 string                   `json:"base_image_digest"`
	GitToolImageDigest              string                   `json:"git_tool_image_digest"`
	ImageDigest                     string                   `json:"image_digest"`
	Toolchain                       string                   `json:"toolchain"`
	BuildTarget                     string                   `json:"build_target"`
	AllowedImports                  []string                 `json:"allowed_imports"`
	ModuleSearchPath                []string                 `json:"module_search_path"`
	ProjectSnapshot                 LeanProjectSnapshot      `json:"project_snapshot"`
	PackagePins                     []LeanSnapshotPackagePin `json:"package_pins"`
	CleanBuild                      bool                     `json:"clean_build"`
	NetworkDisabled                 bool                     `json:"network_disabled"`
	PreBuildProjectArtifactCount    int64                    `json:"pre_build_project_artifact_count"`
	PreBuildDependencyArtifactCount int64                    `json:"pre_build_dependency_artifact_count"`
}

type LeanSnapshotPackagePin struct {
	Name             string `json:"name"`
	URL              string `json:"url"`
	Revision         string `json:"revision"`
	ModuleSearchPath string `json:"module_search_path"`
}

type LeanSnapshotBuildReceipt struct {
	SchemaVersion                   string              `json:"schema_version"`
	RunID                           string              `json:"run_id"`
	StartedAtUTC                    time.Time           `json:"started_at_utc"`
	FinishedAtUTC                   time.Time           `json:"finished_at_utc"`
	DockerExecutable                string              `json:"docker_executable"`
	DockerVersion                   string              `json:"docker_version"`
	SourceManifestSHA256            string              `json:"source_manifest_sha256"`
	SourceSnapshot                  LeanProjectSnapshot `json:"source_snapshot"`
	RecipeSHA256                    string              `json:"recipe_sha256"`
	BaseImageDigest                 string              `json:"base_image_digest"`
	GitToolImageDigest              string              `json:"git_tool_image_digest"`
	ImageDigest                     string              `json:"image_digest"`
	Toolchain                       string              `json:"toolchain"`
	BuildTarget                     string              `json:"build_target"`
	BuildArguments                  []string            `json:"build_arguments"`
	BuildStdoutPath                 string              `json:"build_stdout_path"`
	BuildStderrPath                 string              `json:"build_stderr_path"`
	BuildStdoutSHA256               string              `json:"build_stdout_sha256"`
	BuildStderrSHA256               string              `json:"build_stderr_sha256"`
	BuildExitCode                   int                 `json:"build_exit_code"`
	PreBuildSummaryPath             string              `json:"pre_build_summary_path"`
	PreBuildSummarySHA256           string              `json:"pre_build_summary_sha256"`
	NetworkDisabled                 bool                `json:"network_disabled"`
	PreBuildProjectArtifactCount    int64               `json:"pre_build_project_artifact_count"`
	PreBuildDependencyArtifactCount int64               `json:"pre_build_dependency_artifact_count"`
	PostBuildProjectSnapshot        LeanProjectSnapshot `json:"post_build_project_snapshot"`
}

// LeanSnapshotInventoryEntry describes one byte-exact file in the sealed
// image's project tree. Entries are sorted by slash-normalized relative path.
type LeanSnapshotInventoryEntry struct {
	Path       string `json:"path"`
	SHA256     string `json:"sha256"`
	Size       int64  `json:"size_bytes"`
	Executable bool   `json:"executable"`
	Role       string `json:"role"`
}

type leanSnapshotInventoryHeader struct {
	SchemaVersion             string `json:"schema_version"`
	RootSHA256                string `json:"root_sha256"`
	FileCount                 int64  `json:"file_count"`
	LeanSourceFileCount       int64  `json:"lean_source_file_count"`
	CompiledArtifactFileCount int64  `json:"compiled_artifact_file_count"`
	TotalBytes                int64  `json:"total_bytes"`
}

// Validate checks the closed schema fields and reopens every referenced
// artifact. A receipt cannot mint a new identity from a changed local tree.
func (m LeanSnapshotManifest) Validate(expectedImage string) error {
	if m.SchemaVersion != LeanSnapshotManifestSchemaVersion || !validSHA256(m.SnapshotID) {
		return errors.New("Lean snapshot manifest schema or identity is invalid")
	}
	if !validSHA256(m.SourceManifestSHA256) || !validSHA256(m.InventorySHA256) || !validSHA256(m.BuildReceiptSHA256) || !validSHA256(m.RecipeSHA256) {
		return errors.New("Lean snapshot manifest contains an invalid artifact digest")
	}
	if !validImageDigest(m.BaseImageDigest) || !validImageDigest(m.GitToolImageDigest) || !validImageDigest(m.ImageDigest) || m.ImageDigest != expectedImage {
		return errors.New("Lean snapshot manifest image identity does not match the requested immutable image")
	}
	if m.Toolchain != defaultLeanToolchain || strings.TrimSpace(m.BuildTarget) == "" {
		return errors.New("Lean snapshot manifest toolchain or build target is invalid")
	}
	if !m.CleanBuild || !m.NetworkDisabled || m.PreBuildProjectArtifactCount != 0 || m.PreBuildDependencyArtifactCount != 0 {
		return errors.New("Lean snapshot manifest does not record a clean offline project/dependency build")
	}
	if err := m.SourceSnapshot.Validate(m.SourceSnapshot.SHA256); err != nil || m.SourceSnapshot.CompiledArtifactFileCount != 0 {
		return errors.New("Lean snapshot manifest source identity is invalid or contains compiled artifacts")
	}
	if err := m.ProjectSnapshot.Validate(m.ProjectSnapshot.SHA256); err != nil {
		return fmt.Errorf("Lean snapshot manifest project inventory is invalid: %w", err)
	}
	if m.ProjectSnapshot.ImageDigest != m.ImageDigest || m.ProjectSnapshot.SourceManifestSHA256 != m.SourceManifestSHA256 ||
		m.ProjectSnapshot.InventorySHA256 != m.InventorySHA256 {
		return errors.New("Lean snapshot manifest and project inventory identities disagree")
	}
	if len(m.AllowedImports) == 0 || len(m.ModuleSearchPath) == 0 {
		return errors.New("Lean snapshot manifest does not pin its permitted imports and module search path")
	}
	if len(m.ModuleSearchPath) != len(m.PackagePins)+1 {
		return errors.New("Lean snapshot manifest module search paths do not match its exact package pin set")
	}
	seenImports := make(map[string]struct{}, len(m.AllowedImports))
	for _, imported := range m.AllowedImports {
		if !leanImportPattern.MatchString(imported) {
			return fmt.Errorf("Lean snapshot manifest has an invalid permitted import %q", imported)
		}
		if _, ok := seenImports[imported]; ok {
			return fmt.Errorf("Lean snapshot manifest repeats permitted import %q", imported)
		}
		seenImports[imported] = struct{}{}
	}
	if m.ModuleSearchPath[0] != "/mathcase/project/.lake/build/lib/lean" {
		return errors.New("Lean snapshot module search path must begin with the pinned project build root")
	}
	seenPaths := make(map[string]struct{}, len(m.ModuleSearchPath))
	for index, modulePath := range m.ModuleSearchPath {
		if !validLeanModuleSearchPath(modulePath) {
			return fmt.Errorf("Lean snapshot has an invalid module search path %q", modulePath)
		}
		if _, ok := seenPaths[modulePath]; ok {
			return fmt.Errorf("Lean snapshot repeats module search path %q", modulePath)
		}
		seenPaths[modulePath] = struct{}{}
		if index > 0 && modulePath != m.PackagePins[index-1].ModuleSearchPath {
			return errors.New("Lean snapshot module search path order differs from its pinned dependency order")
		}
	}
	seenPackages := make(map[string]struct{}, len(m.PackagePins))
	for _, pin := range m.PackagePins {
		if pin.Name == "" || pin.URL == "" || len(pin.Revision) != 40 || !isLowerHex(pin.Revision) ||
			pin.ModuleSearchPath != "/mathcase/project/.lake/packages/"+pin.Name+"/.lake/build/lib/lean" {
			return fmt.Errorf("Lean snapshot package pin %q is invalid", pin.Name)
		}
		if _, exists := seenPackages[pin.Name]; exists {
			return fmt.Errorf("Lean snapshot repeats package pin %q", pin.Name)
		}
		seenPackages[pin.Name] = struct{}{}
	}
	if ComputeLeanSnapshotID(m.SourceManifestSHA256, m.BuildReceiptSHA256, m.ImageDigest, m.ProjectSnapshot.SHA256) != m.SnapshotID {
		return errors.New("Lean snapshot ID does not match its source, build receipt, image, and project inventory")
	}
	for _, artifact := range []struct{ path, digest, name string }{
		{m.SourceManifestPath, m.SourceManifestSHA256, "source manifest"},
		{m.InventoryPath, m.InventorySHA256, "compiled snapshot inventory"},
		{m.BuildReceiptPath, m.BuildReceiptSHA256, "clean-build receipt"},
	} {
		if err := verifyFileDigest(artifact.path, artifact.digest); err != nil {
			return fmt.Errorf("Lean snapshot %s is not reopenable: %w", artifact.name, err)
		}
	}
	if err := validateLeanSnapshotInventory(m.InventoryPath, m.InventorySHA256, m.ProjectSnapshot); err != nil {
		return err
	}
	if err := validateLeanSnapshotInventory(m.SourceManifestPath, m.SourceManifestSHA256, m.SourceSnapshot); err != nil {
		return fmt.Errorf("Lean source manifest is invalid: %w", err)
	}
	if err := validateLeanSnapshotBuildReceipt(m.BuildReceiptPath, m.BuildReceiptSHA256, m); err != nil {
		return err
	}
	return nil
}

func ComputeLeanSnapshotID(sourceManifestSHA256, buildReceiptSHA256, imageDigest, projectSnapshotSHA256 string) string {
	hasher := sha256.New()
	_, _ = io.WriteString(hasher, "mathcase-lean-snapshot-v1\x00")
	for _, value := range []string{sourceManifestSHA256, buildReceiptSHA256, imageDigest, projectSnapshotSHA256} {
		writeSnapshotHashField(hasher, []byte(value))
	}
	return hex.EncodeToString(hasher.Sum(nil))
}

func validateLeanSnapshotBuildReceipt(path, expectedSHA string, manifest LeanSnapshotManifest) error {
	data, err := os.ReadFile(path)
	if err != nil {
		return fmt.Errorf("read clean-build receipt: %w", err)
	}
	if len(data) > maxLeanSnapshotManifestBytes {
		return fmt.Errorf("clean-build receipt exceeds %d-byte limit", maxLeanSnapshotManifestBytes)
	}
	digest := sha256.Sum256(data)
	if hex.EncodeToString(digest[:]) != expectedSHA {
		return errors.New("clean-build receipt digest does not match its pinned SHA-256")
	}
	var receipt LeanSnapshotBuildReceipt
	decoder := json.NewDecoder(strings.NewReader(string(data)))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(&receipt); err != nil {
		return fmt.Errorf("decode clean-build receipt: %w", err)
	}
	if err := ensureJSONEOF(decoder); err != nil {
		return err
	}
	if receipt.SchemaVersion != "mathcase-lean-snapshot-build-v1" || receipt.RunID == "" || receipt.StartedAtUTC.IsZero() ||
		receipt.FinishedAtUTC.Before(receipt.StartedAtUTC) || receipt.DockerExecutable == "" || receipt.DockerVersion == "" ||
		receipt.SourceManifestSHA256 != manifest.SourceManifestSHA256 ||
		receipt.SourceSnapshot.SHA256 != manifest.SourceSnapshot.SHA256 || receipt.RecipeSHA256 != manifest.RecipeSHA256 ||
		receipt.BaseImageDigest != manifest.BaseImageDigest || receipt.GitToolImageDigest != manifest.GitToolImageDigest || receipt.ImageDigest != manifest.ImageDigest ||
		receipt.Toolchain != manifest.Toolchain || receipt.BuildTarget != manifest.BuildTarget || receipt.BuildExitCode != 0 ||
		!receipt.NetworkDisabled || receipt.PreBuildProjectArtifactCount != 0 || receipt.PreBuildDependencyArtifactCount != 0 ||
		receipt.PostBuildProjectSnapshot.SHA256 != manifest.ProjectSnapshot.SHA256 {
		return errors.New("clean-build receipt does not substantiate the pinned source, build, and artifact identities")
	}
	if !validSHA256(receipt.BuildStdoutSHA256) || !validSHA256(receipt.BuildStderrSHA256) ||
		!filepath.IsAbs(receipt.BuildStdoutPath) || !filepath.IsAbs(receipt.BuildStderrPath) ||
		!filepath.IsAbs(receipt.PreBuildSummaryPath) || !validSHA256(receipt.PreBuildSummarySHA256) || len(receipt.BuildArguments) == 0 {
		return errors.New("clean-build receipt has incomplete captured output or invocation metadata")
	}
	for _, artifact := range []struct{ path, digest, name string }{
		{receipt.BuildStdoutPath, receipt.BuildStdoutSHA256, "build stdout"},
		{receipt.BuildStderrPath, receipt.BuildStderrSHA256, "build stderr"},
		{receipt.PreBuildSummaryPath, receipt.PreBuildSummarySHA256, "pre-build summary"},
	} {
		if err := verifyFileDigest(artifact.path, artifact.digest); err != nil {
			return fmt.Errorf("clean-build %s is not reopenable: %w", artifact.name, err)
		}
	}
	preBuildBytes, err := os.ReadFile(receipt.PreBuildSummaryPath)
	if err != nil {
		return err
	}
	var preBuild struct {
		SchemaVersion                    string              `json:"schema_version"`
		ProjectBuildArtifactFileCount    int64               `json:"project_build_artifact_file_count"`
		DependencyBuildArtifactFileCount int64               `json:"dependency_build_artifact_file_count"`
		ProjectSnapshot                  LeanProjectSnapshot `json:"project_snapshot"`
	}
	if err := json.Unmarshal(preBuildBytes, &preBuild); err != nil || preBuild.SchemaVersion != LeanSnapshotInventorySchemaVersion || preBuild.ProjectBuildArtifactFileCount != 0 ||
		preBuild.DependencyBuildArtifactFileCount != 0 || preBuild.ProjectSnapshot.CompiledArtifactFileCount != 0 || preBuild.ProjectSnapshot.LeanSourceFileCount == 0 {
		return errors.New("clean-build receipt does not reopen a clean pre-build source summary")
	}
	return nil
}

func validLeanModuleSearchPath(path string) bool {
	if path == "/mathcase/project/.lake/build/lib/lean" {
		return true
	}
	const prefix = "/mathcase/project/.lake/packages/"
	const suffix = "/.lake/build/lib/lean"
	if !strings.HasPrefix(path, prefix) || !strings.HasSuffix(path, suffix) {
		return false
	}
	name := strings.TrimSuffix(strings.TrimPrefix(path, prefix), suffix)
	return name != "" && name != "." && name != ".." && !strings.ContainsAny(name, `/\\:`)
}

func validImageDigest(value string) bool {
	return strings.HasPrefix(value, "sha256:") && validSHA256(strings.TrimPrefix(value, "sha256:"))
}

func validSHA256(value string) bool {
	if len(value) != sha256.Size*2 {
		return false
	}
	_, err := hex.DecodeString(value)
	return err == nil && value == strings.ToLower(value)
}

func verifyFileDigest(path, expected string) error {
	if path == "" || !filepath.IsAbs(path) {
		return errors.New("artifact path must be absolute")
	}
	linkInfo, err := os.Lstat(path)
	if err != nil || linkInfo.Mode()&os.ModeSymlink != 0 || !linkInfo.Mode().IsRegular() {
		return errors.New("artifact is not a regular file or resolves through a link")
	}
	file, err := os.Open(path)
	if err != nil {
		return err
	}
	defer file.Close()
	infoBefore, err := file.Stat()
	if err != nil || !infoBefore.Mode().IsRegular() {
		return errors.New("artifact is not a regular file")
	}
	hasher := sha256.New()
	if _, err := io.Copy(hasher, io.LimitReader(file, maxLeanSnapshotManifestBytes+1)); err != nil {
		return err
	}
	if infoBefore.Size() > maxLeanSnapshotManifestBytes {
		return fmt.Errorf("artifact exceeds %d-byte limit", maxLeanSnapshotManifestBytes)
	}
	infoAfter, err := file.Stat()
	if err != nil || infoAfter.Size() != infoBefore.Size() || !infoAfter.ModTime().Equal(infoBefore.ModTime()) {
		return errors.New("artifact changed while being verified")
	}
	if hex.EncodeToString(hasher.Sum(nil)) != expected {
		return errors.New("artifact SHA-256 does not match the pinned digest")
	}
	return nil
}

func validateLeanSnapshotInventory(path, expectedSHA string, expected LeanProjectSnapshot) error {
	data, err := os.ReadFile(path)
	if err != nil {
		return fmt.Errorf("read inventory: %w", err)
	}
	if len(data) > maxLeanSnapshotManifestBytes {
		return fmt.Errorf("inventory exceeds %d-byte limit", maxLeanSnapshotManifestBytes)
	}
	fileDigest := sha256.Sum256(data)
	if hex.EncodeToString(fileDigest[:]) != expectedSHA {
		return errors.New("inventory file digest does not match its pinned SHA-256")
	}
	scanner := bufio.NewScanner(strings.NewReader(string(data)))
	scanner.Buffer(make([]byte, 64<<10), 1<<20)
	if !scanner.Scan() {
		return errors.New("inventory header is missing")
	}
	var header leanSnapshotInventoryHeader
	if err := json.Unmarshal(scanner.Bytes(), &header); err != nil {
		return fmt.Errorf("decode inventory header: %w", err)
	}
	if header.SchemaVersion != LeanSnapshotInventorySchemaVersion || header.RootSHA256 != expected.SHA256 ||
		header.FileCount != expected.FileCount || header.LeanSourceFileCount != expected.LeanSourceFileCount ||
		header.CompiledArtifactFileCount != expected.CompiledArtifactFileCount || header.TotalBytes != expected.TotalBytes {
		return errors.New("inventory summary does not match the pinned project snapshot")
	}
	hasher := sha256.New()
	_, _ = io.WriteString(hasher, LeanProjectSnapshotSchemaVersion+"\x00")
	var previous string
	var files, leanSources, artifacts, totalBytes int64
	for scanner.Scan() {
		var entry LeanSnapshotInventoryEntry
		if err := json.Unmarshal(scanner.Bytes(), &entry); err != nil {
			return fmt.Errorf("decode inventory entry: %w", err)
		}
		if !validInventoryPath(entry.Path) || !validSHA256(entry.SHA256) || entry.Size < 0 || entry.Role == "" {
			return fmt.Errorf("inventory entry %q is invalid", entry.Path)
		}
		if files > 0 && entry.Path <= previous {
			return errors.New("inventory paths are not strictly sorted and unique")
		}
		previous = entry.Path
		writeSnapshotHashField(hasher, []byte(entry.Path))
		var sizeBytes [8]byte
		binary.BigEndian.PutUint64(sizeBytes[:], uint64(entry.Size))
		_, _ = hasher.Write(sizeBytes[:])
		if entry.Executable {
			_, _ = hasher.Write([]byte{1})
		} else {
			_, _ = hasher.Write([]byte{0})
		}
		contentHash, _ := hex.DecodeString(entry.SHA256)
		_, _ = hasher.Write(contentHash)
		files++
		totalBytes += entry.Size
		if strings.EqualFold(filepath.Ext(entry.Path), ".lean") {
			leanSources++
		}
		if isLeanCompiledArtifactPath(entry.Path) {
			artifacts++
		}
	}
	if err := scanner.Err(); err != nil {
		return fmt.Errorf("read inventory entries: %w", err)
	}
	if files != header.FileCount || leanSources != header.LeanSourceFileCount || artifacts != header.CompiledArtifactFileCount || totalBytes != header.TotalBytes {
		return errors.New("inventory file counts or byte total do not match its entries")
	}
	if hex.EncodeToString(hasher.Sum(nil)) != header.RootSHA256 {
		return errors.New("inventory entry root does not match its canonical path/content digest")
	}
	return nil
}

func validInventoryPath(path string) bool {
	if path == "" || strings.ContainsAny(path, "\\:\x00\r\n") || strings.HasPrefix(path, "/") {
		return false
	}
	for _, part := range strings.Split(path, "/") {
		if part == "" || part == "." || part == ".." {
			return false
		}
	}
	return true
}

// SortSnapshotInventoryEntries is used by build tooling before publishing the
// immutable newline-delimited inventory artifact.
func SortSnapshotInventoryEntries(entries []LeanSnapshotInventoryEntry) {
	sort.Slice(entries, func(i, j int) bool { return entries[i].Path < entries[j].Path })
}

// ValidateLeanSnapshotInventory reopens an inventory and checks both its exact
// file digest and the canonical path/content summary against the pinned snapshot.
func ValidateLeanSnapshotInventory(path, expectedSHA string, expected LeanProjectSnapshot) error {
	if !filepath.IsAbs(path) || !validSHA256(expectedSHA) {
		return errors.New("Lean snapshot inventory path or digest is invalid")
	}
	if err := verifyFileDigest(path, expectedSHA); err != nil {
		return err
	}
	return validateLeanSnapshotInventory(path, expectedSHA, expected)
}
