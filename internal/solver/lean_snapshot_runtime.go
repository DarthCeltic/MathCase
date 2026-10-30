package solver

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"os/exec"
	"path/filepath"
	"reflect"
	"strings"
	"sync"
	"time"
)

type leanSnapshotRuntime struct {
	Imports        []string
	Docker         string
	Image          string
	Manifest       LeanSnapshotManifest
	ManifestPath   string
	ManifestSHA256 string
	ImageCheck     LeanSnapshotImageCheck
}

type LeanSnapshotImageCheck struct {
	Image         string            `json:"image"`
	ImageID       string            `json:"image_id"`
	Labels        map[string]string `json:"labels"`
	StdoutSHA256  string            `json:"stdout_sha256"`
	StartedAtUTC  time.Time         `json:"started_at_utc"`
	FinishedAtUTC time.Time         `json:"finished_at_utc"`
	ExitCode      int               `json:"exit_code"`
}

// ValidateSnapshotConfiguration reopens the qualified manifest and checks its
// image, toolchain, import closure, and optional working-project identity. It
// does not inspect Docker or start Lean, so callers can reject a bad verifier
// configuration before spending time on a proof search.
func (v LeanVerifier) ValidateSnapshotConfiguration(imports []string) error {
	_, err := v.loadQualifiedSnapshot(imports)
	return err
}

// loadQualifiedSnapshot resolves an already-qualified, content-addressed
// snapshot. ProjectRoot is optional: when supplied, it is treated as a
// compatibility input and must be byte-equivalent to the clean source set.
// With ProjectRoot empty, the call consumes only the sealed snapshot reference.
func (v LeanVerifier) loadQualifiedSnapshot(imports []string) (leanSnapshotRuntime, error) {
	manifestPath := strings.TrimSpace(v.SnapshotManifestPath)
	if manifestPath == "" {
		return leanSnapshotRuntime{}, errors.New("lean verifier: a qualified snapshot manifest is required; unsealed project-copy execution is disabled")
	}
	docker, image, err := v.resolveLeanSandbox()
	if err != nil {
		return leanSnapshotRuntime{}, err
	}
	manifest, manifestPath, manifestSHA, err := ReadLeanSnapshotManifest(manifestPath, image)
	if err != nil {
		return leanSnapshotRuntime{}, fmt.Errorf("lean verifier: load qualified snapshot: %w", err)
	}
	toolchain := expectedLeanToolchain(v.ExpectedToolchain)
	if manifest.Toolchain != toolchain {
		return leanSnapshotRuntime{}, fmt.Errorf("lean verifier: snapshot toolchain %q does not match requested toolchain %q", manifest.Toolchain, toolchain)
	}
	for _, imported := range imports {
		if !containsString(manifest.AllowedImports, imported) {
			return leanSnapshotRuntime{}, fmt.Errorf("lean verifier: requested import %q is outside the qualified snapshot import closure", imported)
		}
	}
	if v.ProjectRoot != "" {
		if err := validateLeanWorkingProject(v.ProjectRoot, manifest.SourceSnapshot); err != nil {
			return leanSnapshotRuntime{}, fmt.Errorf("lean verifier: supplied working project does not match its qualified source manifest: %w", err)
		}
	}
	return leanSnapshotRuntime{
		Imports:        append([]string(nil), imports...),
		Docker:         docker,
		Image:          image,
		Manifest:       manifest,
		ManifestPath:   manifestPath,
		ManifestSHA256: manifestSHA,
	}, nil
}

// prepareLeanSnapshotRuntime adds the live Docker image-label preflight after
// the filesystem-only configuration and identity checks have passed.
func (v LeanVerifier) prepareLeanSnapshotRuntime(ctx context.Context, imports []string) (leanSnapshotRuntime, error) {
	runtime, err := v.loadQualifiedSnapshot(imports)
	if err != nil {
		return leanSnapshotRuntime{}, err
	}
	imageCheck, err := inspectLeanSnapshotImage(ctx, runtime.Docker, runtime.Image, runtime.Manifest)
	if err != nil {
		return leanSnapshotRuntime{}, fmt.Errorf("lean verifier: pinned snapshot image preflight failed before Lean launch: %w", err)
	}
	runtime.ImageCheck = imageCheck
	return runtime, nil
}

// ReadLeanSnapshotManifest reopens the source, build, and compiled inventories
// and validates their cross-linked identities before returning the manifest.
func ReadLeanSnapshotManifest(path, expectedImage string) (LeanSnapshotManifest, string, string, error) {
	absolute, err := filepath.Abs(path)
	if err != nil {
		return LeanSnapshotManifest{}, "", "", fmt.Errorf("resolve manifest path: %w", err)
	}
	linkInfo, err := os.Lstat(absolute)
	if err != nil || linkInfo.Mode()&os.ModeSymlink != 0 || !linkInfo.Mode().IsRegular() {
		return LeanSnapshotManifest{}, "", "", errors.New("manifest must be a regular file, not a link or reparse point")
	}
	file, err := os.Open(absolute)
	if err != nil {
		return LeanSnapshotManifest{}, "", "", err
	}
	defer file.Close()
	before, err := file.Stat()
	if err != nil || !before.Mode().IsRegular() || before.Size() <= 0 || before.Size() > maxLeanSnapshotManifestBytes {
		return LeanSnapshotManifest{}, "", "", errors.New("manifest must be a nonempty regular file within the configured size limit")
	}
	data, err := io.ReadAll(io.LimitReader(file, maxLeanSnapshotManifestBytes+1))
	if err != nil {
		return LeanSnapshotManifest{}, "", "", fmt.Errorf("read manifest: %w", err)
	}
	after, err := file.Stat()
	if err != nil || before.Size() != after.Size() || !before.ModTime().Equal(after.ModTime()) || int64(len(data)) != before.Size() {
		return LeanSnapshotManifest{}, "", "", errors.New("manifest changed while it was being read")
	}
	var manifest LeanSnapshotManifest
	decoder := json.NewDecoder(strings.NewReader(string(data)))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(&manifest); err != nil {
		return LeanSnapshotManifest{}, "", "", fmt.Errorf("decode manifest: %w", err)
	}
	if err := ensureJSONEOF(decoder); err != nil {
		return LeanSnapshotManifest{}, "", "", err
	}
	if err := manifest.Validate(expectedImage); err != nil {
		return LeanSnapshotManifest{}, "", "", err
	}
	digest := sha256.Sum256(data)
	return manifest, absolute, hex.EncodeToString(digest[:]), nil
}

func validateReceiptSnapshotLink(snapshotID, path, manifestSHA256, image string, snapshot LeanProjectSnapshot) (LeanSnapshotManifest, error) {
	manifest, _, digest, err := ReadLeanSnapshotManifest(path, image)
	if err != nil {
		return LeanSnapshotManifest{}, fmt.Errorf("reopen snapshot manifest: %w", err)
	}
	if manifest.SnapshotID != snapshotID || digest != manifestSHA256 || manifest.ProjectSnapshot.SHA256 != snapshot.SHA256 ||
		manifest.ProjectSnapshot.InventorySHA256 != snapshot.InventorySHA256 || manifest.ProjectSnapshot.SourceManifestSHA256 != snapshot.SourceManifestSHA256 {
		return LeanSnapshotManifest{}, errors.New("receipt snapshot identity does not match its reopened qualified manifest")
	}
	return manifest, nil
}

func validateLeanSnapshotImageCheck(check LeanSnapshotImageCheck, manifest LeanSnapshotManifest, image string) error {
	if check.Image != image || check.ImageID != image || check.ExitCode != 0 || check.StartedAtUTC.IsZero() || check.FinishedAtUTC.Before(check.StartedAtUTC) || !validSHA256(check.StdoutSHA256) {
		return errors.New("snapshot image preflight receipt is incomplete or does not match the pinned image")
	}
	expected := map[string]string{
		"org.mathcase.snapshot.source-manifest-sha256": manifest.SourceManifestSHA256,
		"org.mathcase.snapshot.source-root-sha256":     manifest.SourceSnapshot.SHA256,
		"org.mathcase.snapshot.recipe-sha256":          manifest.RecipeSHA256,
		"org.mathcase.snapshot.base-image-id":          manifest.BaseImageDigest,
		"org.mathcase.snapshot.git-tool-image-id":      manifest.GitToolImageDigest,
		"org.mathcase.snapshot.build-target":           manifest.BuildTarget,
	}
	if len(check.Labels) != len(expected) {
		return errors.New("snapshot image preflight receipt does not retain the complete required label set")
	}
	for key, value := range expected {
		if check.Labels[key] != value {
			return fmt.Errorf("snapshot image preflight label %q does not match the manifest", key)
		}
	}
	return nil
}

func validateLeanSnapshotInvocation(execution LeanSandboxExecution, image, moduleSearchPath, candidateName, artifactName string, requireArtifact bool, importRuntime ...leanSnapshotRuntime) error {
	if execution.DockerExecutable == "" || execution.ContainerName == "" || len(execution.CommandArgv) < 4 || execution.CommandArgv[0] != execution.DockerExecutable {
		return errors.New("Lean snapshot invocation is missing its Docker executable, container, or argv")
	}
	args := execution.CommandArgv[1:]
	for _, arg := range args {
		if strings.HasPrefix(arg, "--incr-") && execution.ImportPreparation == nil {
			return errors.New("native import state requires typed preparation provenance")
		}
	}
	if execution.ImportPreparation != nil {
		if !requireArtifact || len(importRuntime) != 1 {
			return errors.New("typed import consumption requires its qualified consumer runtime")
		}
		if err := validateLeanImportConsumption(execution, importRuntime[0], importRuntime[0].Imports); err != nil {
			return err
		}
		index := -1
		for i, arg := range args {
			if arg == image {
				index = i
			}
		}
		expected := []string{"--incr-load=/mathcase/prepared/imports.snap", "--root=/mathcase/input", "-o", "/mathcase/output/" + artifactName, "/mathcase/input/" + candidateName}
		if index < 0 || !reflect.DeepEqual(args[index+1:], expected) {
			return errors.New("typed import consumer changes pinned compiler options or source")
		}
	}
	required := []string{"run", "--rm", "--pull=never", "--network=none", "--read-only", "--user=65532:65532", "--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128", "--tmpfs", "/mathcase/work:rw,noexec,nosuid,nodev,size=128m,mode=1777", "/mathcase/cache:rw,noexec,nosuid,nodev,size=512m,mode=1777", "--entrypoint=lean", image, "--env=LEAN_PATH=" + moduleSearchPath}
	for _, value := range required {
		if !containsArg(args, value) {
			return fmt.Errorf("Lean snapshot invocation is missing required argument %q", value)
		}
	}
	if !containsConsecutiveArgs(args, "--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777") ||
		!containsArg(args, "--env=HOME=/tmp") || !containsArg(args, "--env=TMPDIR=/tmp") || !containsArg(args, "--env=TMP=/tmp") {
		return errors.New("Lean snapshot invocation is missing its writable temporary space or environment")
	}
	projectMount := false
	for _, arg := range args {
		projectMount = projectMount || strings.Contains(arg, ",target=/mathcase/project")
	}
	if !containsArg(args, "--name") || !containsArg(args, execution.ContainerName) || projectMount {
		return errors.New("Lean snapshot invocation does not bind an isolated container to its exact image without a mutable project mount")
	}
	inputMount := containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/input/"+candidateName+",readonly")
	outputMount := containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/output")
	if requireArtifact {
		if candidateName == "" || artifactName == "" || !inputMount || !outputMount ||
			!containsArg(args, "--root=/mathcase/input") || !containsConsecutiveArgs(args, "-o", "/mathcase/output/"+artifactName) || !containsArg(args, "/mathcase/input/"+candidateName) {
			return errors.New("Lean snapshot invocation is missing its root-contained read-only candidate or isolated compiled-artifact output")
		}
	} else if inputMount || outputMount || !containsArg(args, "--version") {
		return errors.New("Lean snapshot version invocation unexpectedly includes candidate/output mounts or omits --version")
	}
	return nil
}

func ensureJSONEOF(decoder *json.Decoder) error {
	var extra any
	if err := decoder.Decode(&extra); !errors.Is(err, io.EOF) {
		if err == nil {
			return errors.New("manifest contains trailing JSON data")
		}
		return fmt.Errorf("manifest trailing data: %w", err)
	}
	return nil
}

func inspectLeanSnapshotImage(ctx context.Context, docker, image string, manifest LeanSnapshotManifest) (LeanSnapshotImageCheck, error) {
	command := exec.CommandContext(ctx, docker, "image", "inspect", image)
	check := LeanSnapshotImageCheck{Image: image, StartedAtUTC: time.Now().UTC()}
	output, err := command.Output()
	check.FinishedAtUTC = time.Now().UTC()
	if err == nil {
		check.ExitCode = 0
		outputSHA := sha256.Sum256(output)
		check.StdoutSHA256 = hex.EncodeToString(outputSHA[:])
	} else {
		var exitError *exec.ExitError
		if errors.As(err, &exitError) {
			check.ExitCode = exitError.ExitCode()
		}
		return check, fmt.Errorf("docker image inspect: %w", err)
	}
	var inspected []struct {
		ID     string `json:"Id"`
		Config struct {
			Labels map[string]string `json:"Labels"`
		} `json:"Config"`
	}
	if err := json.Unmarshal(output, &inspected); err != nil || len(inspected) != 1 {
		return check, errors.New("docker image inspect returned an invalid or ambiguous image record")
	}
	check.ImageID = inspected[0].ID
	if inspected[0].ID != image {
		return check, fmt.Errorf("local image ID %q does not equal pinned image %q", inspected[0].ID, image)
	}
	labels := inspected[0].Config.Labels
	check.Labels = make(map[string]string, 6)
	for key, expected := range map[string]string{
		"org.mathcase.snapshot.source-manifest-sha256": manifest.SourceManifestSHA256,
		"org.mathcase.snapshot.source-root-sha256":     manifest.SourceSnapshot.SHA256,
		"org.mathcase.snapshot.recipe-sha256":          manifest.RecipeSHA256,
		"org.mathcase.snapshot.base-image-id":          manifest.BaseImageDigest,
		"org.mathcase.snapshot.git-tool-image-id":      manifest.GitToolImageDigest,
		"org.mathcase.snapshot.build-target":           manifest.BuildTarget,
	} {
		if labels[key] != expected {
			return check, fmt.Errorf("image label %q = %q, want %q", key, labels[key], expected)
		}
		check.Labels[key] = labels[key]
	}
	return check, nil
}

func validateLeanWorkingProject(root string, expectedSource LeanProjectSnapshot) error {
	_, allEntries, err := BuildLeanSnapshotInventory(root, true)
	if err != nil {
		return err
	}
	var sourceEntries []LeanSnapshotInventoryEntry
	for _, entry := range allEntries {
		if entry.Role == "COMPILED_ARTIFACT" {
			return fmt.Errorf("working project contains compiled artifact %q; pass the sealed snapshot without a working project or rebuild from clean source", entry.Path)
		}
		if !leanSnapshotSourceExcluded(entry.Path) {
			sourceEntries = append(sourceEntries, entry)
		}
	}
	actual := summarizeLeanSnapshotEntries(sourceEntries)
	if actual.SHA256 != expectedSource.SHA256 || actual.FileCount != expectedSource.FileCount || actual.TotalBytes != expectedSource.TotalBytes {
		return errors.New("working source bytes differ from the pinned source manifest")
	}
	return nil
}

func containsString(values []string, target string) bool {
	for _, value := range values {
		if value == target {
			return true
		}
	}
	return false
}

func writeLeanCandidateInput(workspace, name string, source []byte) (string, error) {
	if filepath.Base(name) != name || name == "." || name == ".." || strings.ContainsAny(name, `/\\`) {
		return "", errors.New("Lean candidate input name must be a single filename")
	}
	path := filepath.Join(workspace, name)
	file, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o400)
	if err != nil {
		return "", err
	}
	if _, err := file.Write(source); err != nil {
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
	if err := os.Chmod(path, 0o444); err != nil {
		return "", err
	}
	return path, nil
}

func verifyLeanCandidateInput(path, expectedSHA256 string) error {
	if !validSHA256(expectedSHA256) {
		return errors.New("Lean candidate expected digest is invalid")
	}
	info, err := os.Lstat(path)
	if err != nil || info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() || info.Mode().Perm()&0o222 != 0 {
		return errors.New("Lean candidate input must be a read-only regular file")
	}
	file, err := os.Open(path)
	if err != nil {
		return err
	}
	defer file.Close()
	before, err := file.Stat()
	if err != nil || !os.SameFile(info, before) || !before.Mode().IsRegular() {
		return errors.New("Lean candidate input identity changed while opening")
	}
	hasher := sha256.New()
	if _, err := io.Copy(hasher, io.LimitReader(file, maxLeanProofBytes+maxLeanTermBytes+1<<20)); err != nil {
		return err
	}
	after, err := file.Stat()
	if err != nil || !os.SameFile(before, after) || before.Size() != after.Size() || !before.ModTime().Equal(after.ModTime()) {
		return errors.New("Lean candidate input changed while hashing")
	}
	if hex.EncodeToString(hasher.Sum(nil)) != expectedSHA256 {
		return errors.New("Lean candidate input bytes do not match the generated-source digest")
	}
	return nil
}

func buildLeanSnapshotDockerArgs(image, containerName string, manifest LeanSnapshotManifest, candidatePath, candidateName, artifactRoot, artifactName string, leanArgs []string) ([]string, error) {
	if !validImageDigest(image) || manifest.ImageDigest != image {
		return nil, errors.New("Lean snapshot image argument does not match its manifest")
	}
	queueLabelArgs, err := queueRunContainerLabelArgs()
	if err != nil {
		return nil, err
	}
	args := []string{
		"run", "--rm", "--name", containerName,
	}
	args = append(args, queueLabelArgs...)
	args = append(args,
		"--pull=never", "--network=none", "--read-only", "--user=65532:65532",
		"--cap-drop=ALL", "--security-opt=no-new-privileges:true",
		"--cpus=2", "--memory=4g", "--pids-limit=128",
		"--ulimit", fmt.Sprintf("fsize=%d:%d", maxCompiledArtifactBytes, maxCompiledArtifactBytes),
		"--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"--tmpfs", "/mathcase/work:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"--tmpfs", "/mathcase/cache:rw,noexec,nosuid,nodev,size=512m,mode=1777",
		"--workdir=/mathcase/work", "--env=HOME=/tmp", "--env=TMPDIR=/tmp", "--env=TMP=/tmp",
		"--env=LAKE_HOME=/mathcase/cache", "--env=LEAN_SYSROOT=/opt/lean",
		"--env=LEAN_PATH="+strings.Join(manifest.ModuleSearchPath, ":"),
	)
	if candidatePath != "" {
		if filepath.Base(candidateName) != candidateName || candidateName == "." || candidateName == ".." || strings.ContainsAny(candidateName, `/\\`) {
			return nil, errors.New("Lean candidate source name must be a single filename")
		}
		candidateInfo, err := os.Lstat(candidatePath)
		if err != nil || candidateInfo.Mode()&os.ModeSymlink != 0 || !candidateInfo.Mode().IsRegular() {
			return nil, errors.New("Lean candidate source must be a regular, non-link file")
		}
		source, err := dockerMountSource(candidatePath)
		if err != nil {
			return nil, fmt.Errorf("resolve candidate input mount: %w", err)
		}
		args = append(args, "--mount", "type=bind,source="+source+",target=/mathcase/input/"+candidateName+",readonly")
	}
	if artifactRoot != "" || artifactName != "" {
		if artifactRoot == "" || artifactName == "" || filepath.Base(artifactName) != artifactName || artifactName == "." || artifactName == ".." {
			return nil, errors.New("Lean output artifact must use a dedicated directory and a single filename")
		}
		artifactInfo, err := os.Lstat(artifactRoot)
		if err != nil || artifactInfo.Mode()&os.ModeSymlink != 0 || !artifactInfo.IsDir() {
			return nil, errors.New("Lean output artifact root must be a regular directory")
		}
		output, err := dockerMountSource(artifactRoot)
		if err != nil {
			return nil, fmt.Errorf("resolve output mount: %w", err)
		}
		args = append(args, "--mount", "type=bind,source="+output+",target=/mathcase/output")
	}
	args = append(args, "--entrypoint=lean", image)
	args = append(args, leanArgs...)
	return args, nil
}

func runLeanSnapshotCommand(ctx context.Context, runtime leanSnapshotRuntime, candidatePath, candidateName, candidateSHA256, artifactRoot, artifactName string, leanArgs []string, outputLimit int) (*boundedCapture, *boundedCapture, error, LeanSandboxExecution) {
	return runLeanSnapshotPreparedCommand(ctx, runtime, candidatePath, candidateName, candidateSHA256, artifactRoot, artifactName, leanArgs, outputLimit, nil)
}

func runLeanSnapshotPreparedCommand(ctx context.Context, runtime leanSnapshotRuntime, candidatePath, candidateName, candidateSHA256, artifactRoot, artifactName string, leanArgs []string, outputLimit int, prepared *preparedLeanImports) (*boundedCapture, *boundedCapture, error, LeanSandboxExecution) {
	stdout := newBoundedCapture(outputLimit)
	stderr := newBoundedCapture(outputLimit)
	execution := LeanSandboxExecution{DockerExecutable: runtime.Docker, ExecutionMode: LeanExecutionModeDirect}
	id, err := newLeanEvidenceID()
	if err != nil {
		return stdout, stderr, err, execution
	}
	containerName := "mathcase-" + strings.TrimPrefix(id, "lean-")
	execution.ContainerName = containerName
	if candidatePath != "" {
		if err := verifyLeanCandidateInput(candidatePath, candidateSHA256); err != nil {
			return stdout, stderr, fmt.Errorf("Lean snapshot candidate preflight failed before container launch: %w", err), execution
		}
	}
	args, err := buildLeanSnapshotDockerArgs(runtime.Image, containerName, runtime.Manifest, candidatePath, candidateName, artifactRoot, artifactName, leanArgs)
	if err != nil {
		return stdout, stderr, err, execution
	}
	if prepared != nil {
		evidence := prepared.evidence
		index := -1
		for i, arg := range args {
			if arg == "--entrypoint=lean" {
				index = i
				break
			}
		}
		if index < 0 {
			return stdout, stderr, errors.New("import preparation cannot bind its consumer command"), execution
		}
		mounts := []string{"--mount", "type=bind,source=" + filepath.ToSlash(evidence.HeaderCopyPath) + ",target=/mathcase/prepared/imports.snap,readonly",
			"--mount", "type=bind,source=" + filepath.ToSlash(evidence.DependenciesCopyPath) + ",target=/mathcase/prepared/imports.snap.deps,readonly"}
		modified := append([]string(nil), args[:index]...)
		modified = append(modified, mounts...)
		modified = append(modified, args[index:index+2]...)
		modified = append(modified, "--incr-load=/mathcase/prepared/imports.snap")
		args = append(modified, args[index+2:]...)
		execution.ImportPreparation = &evidence
	}
	execution.CommandArgv = append([]string{runtime.Docker}, args...)
	runCtx, cancelRun := context.WithCancel(ctx)
	defer cancelRun()
	var limitCancel sync.Once
	cancelForOutputLimit := func() {
		limitCancel.Do(cancelRun)
	}
	stdout.onLimit = cancelForOutputLimit
	stderr.onLimit = cancelForOutputLimit

	command := exec.CommandContext(runCtx, runtime.Docker, args...)
	command.Stdout = stdout
	command.Stderr = stderr
	execution.StartedAtUTC = time.Now().UTC()
	if execution.ImportPreparation != nil {
		receipt, receiptErr := decodeLeanImportReceipt(execution.ImportPreparation.ProducerReceipt)
		if receiptErr != nil || validateLeanImportReceipt(receipt, runtime, runtime.Imports, execution.StartedAtUTC) != nil {
			// Preparation may expire during staging. Select the existing cold
			// command before any Lean process starts; never retry after launch.
			coldArgs, coldErr := buildLeanSnapshotDockerArgs(runtime.Image, containerName, runtime.Manifest, candidatePath, candidateName, artifactRoot, artifactName, leanArgs)
			if coldErr != nil {
				return stdout, stderr, coldErr, execution
			}
			execution.ImportPreparation = nil
			execution.CommandArgv = append([]string{runtime.Docker}, coldArgs...)
			command = exec.CommandContext(runCtx, runtime.Docker, coldArgs...)
			command.Stdout, command.Stderr = stdout, stderr
		}
	}
	runErr := command.Run()
	execution.FinishedAtUTC = time.Now().UTC()
	if runErr == nil {
		code := 0
		execution.ExitCode = &code
	} else {
		var exitError *exec.ExitError
		if errors.As(runErr, &exitError) {
			code := exitError.ExitCode()
			execution.ExitCode = &code
		}
	}
	outputLimited := stdout.truncated || stderr.truncated
	execution.TimedOut = errors.Is(ctx.Err(), context.DeadlineExceeded)
	if ctx.Err() != nil || outputLimited {
		execution.CleanupAttempted = true
		cleanupCtx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
		cleanup := exec.CommandContext(cleanupCtx, runtime.Docker, "rm", "--force", containerName)
		cleanupErr := cleanup.Run()
		if cleanupErr == nil {
			code := 0
			execution.CleanupExitCode = &code
			execution.CleanupSucceeded = true
		} else {
			var exitError *exec.ExitError
			if errors.As(cleanupErr, &exitError) {
				code := exitError.ExitCode()
				execution.CleanupExitCode = &code
			}
			execution.CleanupError = cleanupErr.Error()
		}
		cancel()
	}
	return stdout, stderr, runErr, execution
}

// newLeanPhaseContext gives each isolated Lean process its own timeout budget.
// In particular, the --version preflight must not consume the candidate
// compilation budget. The parent context remains the overall cancellation
// boundary for both phases.
func newLeanPhaseContext(parent context.Context, timeout time.Duration) (context.Context, context.CancelFunc) {
	if timeout <= 0 {
		timeout = defaultLeanTimeout
	}
	return context.WithTimeout(parent, timeout)
}

func runLeanSnapshotVersion(ctx context.Context, runtime leanSnapshotRuntime, outputLimit int) (LeanVersionCheck, error) {
	stdout, stderr, runErr, execution := runLeanSnapshotCommand(ctx, runtime, "", "", "", "", "", []string{"--version"}, outputLimit)
	check := LeanVersionCheck{Execution: execution}
	populateLeanVersionOutputEvidence(&check, stdout, stderr, outputLimit)
	if runErr != nil {
		return check, runErr
	}
	if check.OutputTruncated {
		return check, errors.New("Lean version output exceeded the capture limit")
	}
	version := strings.TrimSpace(stdout.String() + "\n" + stderr.String())
	if !strings.Contains(version, "Lean (version 4.33.1") {
		check.Version = version
		return check, fmt.Errorf("Lean version is not the pinned release: %q", version)
	}
	check.Version = version
	return check, nil
}
