package solver

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"strings"
	"sync"
	"time"

	"github.com/DarthCeltic/MathCase/internal/fsutil"
)

const (
	leanSandboxImageEnv  = "MATHCASE_LEAN_SANDBOX_IMAGE"
	leanSandboxDockerEnv = "MATHCASE_DOCKER_EXECUTABLE"
	leanSandboxProfile   = "Docker: network disabled; read-only root and per-run project snapshot; generated source inside the snapshot; direct pinned Lean executable with LEAN_PATH derived from snapshotted build artifacts; 512 MiB disposable writable .lake tmpfs seeded from snapshot; read-only dependency packages; separate compiled-artifact output; uid 65532; capabilities dropped; no-new-privileges; 2 CPU, 4 GiB memory, 128 processes; bounded tmpfs; wall-clock timeout"
	// LeanArtifactSnapshotSchemaVersion marks receipts that retain their exact
	// generated Lean source and compiled .olean bytes, not only their hashes.
	LeanArtifactSnapshotSchemaVersion       = "mathcase-lean-artifact-snapshot-v2"
	legacyLeanArtifactSnapshotSchemaVersion = "mathcase-lean-artifact-snapshot-v1"
	LeanExecutionModeDirect                 = "LEAN_DIRECT"
	LeanExecutionModeLake                   = "LAKE_ENV"
	maxCompiledArtifactBytes                = 16 << 20
)

// LeanSandboxExecution records the exact host-side Docker invocation that
// launched one isolated Lean process. The surrounding Lean receipt owns the
// captured stdout/stderr digests and semantic result.
type LeanSandboxExecution struct {
	ImportPreparation *LeanImportConsumptionEvidence `json:"import_preparation,omitempty"`
	DockerExecutable  string                         `json:"docker_executable"`
	ContainerName     string                         `json:"container_name"`
	ExecutionMode     string                         `json:"execution_mode,omitempty"`
	CommandArgv       []string                       `json:"command_argv"`
	StartedAtUTC      time.Time                      `json:"started_at_utc"`
	FinishedAtUTC     time.Time                      `json:"finished_at_utc"`
	ExitCode          *int                           `json:"exit_code"`
	TimedOut          bool                           `json:"timed_out"`
	CleanupAttempted  bool                           `json:"cleanup_attempted"`
	CleanupSucceeded  bool                           `json:"cleanup_succeeded"`
	CleanupExitCode   *int                           `json:"cleanup_exit_code,omitempty"`
	CleanupError      string                         `json:"cleanup_error,omitempty"`
}

func hasSandboxExecutionRecord(execution LeanSandboxExecution) bool {
	return execution.ImportPreparation != nil || execution.DockerExecutable != "" || execution.ContainerName != "" || execution.ExecutionMode != "" ||
		len(execution.CommandArgv) != 0 || !execution.StartedAtUTC.IsZero() || !execution.FinishedAtUTC.IsZero() ||
		execution.ExitCode != nil || execution.TimedOut || execution.CleanupAttempted || execution.CleanupSucceeded ||
		execution.CleanupExitCode != nil || execution.CleanupError != ""
}

// LeanVersionCheck binds the asserted compiler identity to the process that
// actually queried the pinned sandbox image. Stdout/stderr are retained in
// bounded form and their hashes cover the exact captured byte streams.
type LeanVersionCheck struct {
	Version              string               `json:"version"`
	StdoutSHA256         string               `json:"stdout_sha256"`
	StderrSHA256         string               `json:"stderr_sha256"`
	StdoutExcerpt        string               `json:"stdout_excerpt"`
	StderrExcerpt        string               `json:"stderr_excerpt"`
	StdoutCapturedSHA256 string               `json:"stdout_captured_sha256,omitempty"`
	StderrCapturedSHA256 string               `json:"stderr_captured_sha256,omitempty"`
	StdoutPrefix         []byte               `json:"stdout_prefix_base64,omitempty"`
	StderrPrefix         []byte               `json:"stderr_prefix_base64,omitempty"`
	StdoutBytesObserved  int64                `json:"stdout_bytes_observed,omitempty"`
	StderrBytesObserved  int64                `json:"stderr_bytes_observed,omitempty"`
	StdoutBytesCaptured  int64                `json:"stdout_bytes_captured,omitempty"`
	StderrBytesCaptured  int64                `json:"stderr_bytes_captured,omitempty"`
	OutputLimitBytes     int64                `json:"output_limit_bytes,omitempty"`
	OutputTruncated      bool                 `json:"output_truncated"`
	Execution            LeanSandboxExecution `json:"execution"`
}

func populateLeanVersionOutputEvidence(check *LeanVersionCheck, stdout, stderr *boundedCapture, outputLimit int) {
	check.OutputTruncated = stdout.truncated || stderr.truncated
	check.StdoutExcerpt = stdout.String()
	check.StderrExcerpt = stderr.String()
	check.StdoutSHA256 = stdout.SHA256()
	check.StderrSHA256 = stderr.SHA256()
	if !check.OutputTruncated {
		return
	}
	check.StdoutSHA256 = ""
	check.StderrSHA256 = ""
	check.StdoutExcerpt = strings.ToValidUTF8(check.StdoutExcerpt, "\uFFFD")
	check.StderrExcerpt = strings.ToValidUTF8(check.StderrExcerpt, "\uFFFD")
	check.StdoutCapturedSHA256 = stdout.CapturedSHA256()
	check.StderrCapturedSHA256 = stderr.CapturedSHA256()
	check.StdoutPrefix = append([]byte(nil), stdout.buffer.Bytes()...)
	check.StderrPrefix = append([]byte(nil), stderr.buffer.Bytes()...)
	check.StdoutBytesObserved = stdout.total
	check.StderrBytesObserved = stderr.total
	check.StdoutBytesCaptured = int64(stdout.buffer.Len())
	check.StderrBytesCaptured = int64(stderr.buffer.Len())
	check.OutputLimitBytes = int64(outputLimit)
}

var leanSandboxImagePattern = regexp.MustCompile(`^sha256:[0-9a-f]{64}$`)

func (v LeanVerifier) resolveLeanSandbox() (string, string, error) {
	docker := strings.TrimSpace(v.DockerExecutable)
	if docker == "" {
		docker = strings.TrimSpace(os.Getenv(leanSandboxDockerEnv))
	}
	if docker == "" {
		docker = "docker"
	}
	if filepath.IsAbs(docker) || strings.ContainsAny(docker, `/\\`) {
		path, err := filepath.Abs(docker)
		if err != nil {
			return "", "", fmt.Errorf("lean sandbox: resolve Docker executable: %w", err)
		}
		info, err := os.Stat(path)
		if err != nil || info.IsDir() {
			return "", "", errors.New("lean sandbox: configured Docker executable is unavailable")
		}
		docker = path
	} else {
		path, err := exec.LookPath(docker)
		if err != nil {
			return "", "", errors.New("lean sandbox: Docker is not configured or on PATH")
		}
		docker = path
	}
	// Resolve the actual filesystem spelling/target on both producer and
	// consumer. In particular Windows LookPath and Python which can return
	// .exe/.EXE aliases for the same binary; identity remains exact afterward.
	canonicalDocker, err := filepath.EvalSymlinks(docker)
	if err != nil {
		return "", "", fmt.Errorf("lean sandbox: canonical Docker executable is unavailable: %w", err)
	}
	docker, err = filepath.Abs(canonicalDocker)
	if err != nil {
		return "", "", fmt.Errorf("lean sandbox: resolve canonical Docker executable: %w", err)
	}
	image := strings.TrimSpace(v.SandboxImage)
	if image == "" {
		image = strings.TrimSpace(os.Getenv(leanSandboxImageEnv))
	}
	if !leanSandboxImagePattern.MatchString(image) {
		return "", "", fmt.Errorf("lean sandbox: %s must be an immutable sha256 image ID", leanSandboxImageEnv)
	}
	return docker, image, nil
}

func leanExecutionIsolation(image string) string {
	return "Docker: qualified content-addressed Lean snapshot; image " + image + "; network disabled; read-only image root; read-only candidate input; per-run writable tmpfs and output mount; uid 65532; capabilities dropped; no-new-privileges; 2 CPU, 4 GiB memory, 128 processes; wall-clock timeout"
}

func runLeanVersion(ctx context.Context, docker, image, projectRoot string, cachePlan leanProjectCachePlan, outputLimit int) (LeanVersionCheck, error) {
	stdout, stderr, err, execution := runLeanSandboxWithOutput(ctx, docker, image, projectRoot, "", cachePlan, "", "", []string{"--version"}, outputLimit)
	check := LeanVersionCheck{
		Execution: execution,
	}
	populateLeanVersionOutputEvidence(&check, stdout, stderr, outputLimit)
	if err != nil {
		return check, err
	}
	if stdout.truncated || stderr.truncated {
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

func runLeanSandbox(ctx context.Context, docker, image, projectRoot, sourceName string, lakeArgs []string, outputLimit int) (*boundedCapture, *boundedCapture, error, LeanSandboxExecution) {
	return runLeanSandboxWithOutput(ctx, docker, image, projectRoot, sourceName, leanProjectCachePlan{}, "", "", lakeArgs, outputLimit)
}

// runLeanSandboxWithOutput keeps the per-run project snapshot read-only and
// grants write access only to a dedicated temporary output directory used for
// the current compilation artifact. The generated source is mounted as a file
// inside /mathcase/project so Lean's root-containment check accepts it.
func runLeanSandboxWithOutput(ctx context.Context, docker, image, projectRoot, sourceName string, cachePlan leanProjectCachePlan, artifactRoot, artifactName string, lakeArgs []string, outputLimit int) (*boundedCapture, *boundedCapture, error, LeanSandboxExecution) {
	stdout := newBoundedCapture(outputLimit)
	stderr := newBoundedCapture(outputLimit)
	execution := LeanSandboxExecution{DockerExecutable: docker}
	containerName, err := newLeanEvidenceID()
	if err != nil {
		return stdout, stderr, fmt.Errorf("lean sandbox: create container ID: %w", err), execution
	}
	containerName = "mathcase-" + strings.TrimPrefix(containerName, "lean-")
	execution.ContainerName = containerName
	args, err := buildLeanSandboxArgs(image, containerName, projectRoot, sourceName, cachePlan, artifactRoot, artifactName, lakeArgs)
	if err != nil {
		return stdout, stderr, err, execution
	}
	if cachePlan.seedPath != "" {
		execution.ExecutionMode = LeanExecutionModeDirect
	} else {
		execution.ExecutionMode = LeanExecutionModeLake
	}
	execution.CommandArgv = append([]string{docker}, args...)
	runCtx, cancelRun := context.WithCancel(ctx)
	defer cancelRun()
	var limitCancel sync.Once
	cancelForOutputLimit := func() { limitCancel.Do(cancelRun) }
	stdout.onLimit = cancelForOutputLimit
	stderr.onLimit = cancelForOutputLimit
	command := exec.CommandContext(runCtx, docker, args...)
	command.Stdout = stdout
	command.Stderr = stderr
	execution.StartedAtUTC = time.Now().UTC()
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
		cleanup := exec.CommandContext(cleanupCtx, docker, "rm", "--force", containerName)
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
	if artifactRoot != "" {
		if err := os.Chmod(artifactRoot, 0o700); err != nil && runErr == nil {
			runErr = fmt.Errorf("lean sandbox: restrict compiled artifact output after execution: %w", err)
		}
	}
	return stdout, stderr, runErr, execution
}

func buildLeanSandboxArgs(image, containerName, projectRoot, sourceName string, cachePlan leanProjectCachePlan, artifactRoot, artifactName string, leanArgs []string) ([]string, error) {
	projectSource, err := dockerMountSource(projectRoot)
	if err != nil {
		return nil, fmt.Errorf("lean sandbox: resolve project mount: %w", err)
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
		"--mount", "type=bind,source="+projectSource+",target=/mathcase/project,readonly",
		"--workdir=/mathcase/project", "--env=HOME=/tmp", "--env=TMPDIR=/tmp", "--env=TMP=/tmp",
	)
	if sourceName != "" || cachePlan.seedPath != "" {
		if err := validateLeanLakeCachePlan(projectRoot, cachePlan); err != nil {
			return nil, err
		}
		modulePath, err := containerLeanModulePath(projectRoot)
		if err != nil {
			return nil, err
		}
		args = append(args, "--env=LEAN_PATH="+modulePath)
		args = append(args, "--tmpfs", leanProjectLakeTmpfsSpec)
		seedSource, err := dockerMountSource(cachePlan.seedPath)
		if err != nil {
			return nil, fmt.Errorf("lean sandbox: resolve Lake cache seed mount: %w", err)
		}
		args = append(args, "--mount", "type=bind,source="+seedSource+",target=/mathcase/cache-seed,readonly")
		if cachePlan.packagesPath != "" {
			packagesSource, err := dockerMountSource(cachePlan.packagesPath)
			if err != nil {
				return nil, fmt.Errorf("lean sandbox: resolve dependency package mount: %w", err)
			}
			args = append(args, "--mount", "type=bind,source="+packagesSource+",target=/mathcase/project/.lake/packages,readonly")
		}
	}
	if sourceName != "" {
		if filepath.Base(sourceName) != sourceName || sourceName == "." || sourceName == ".." || strings.ContainsAny(sourceName, `/\\`) {
			return nil, errors.New("lean sandbox: generated source name must be a single filename")
		}
		sourcePath := filepath.Join(projectRoot, sourceName)
		sourceInfo, err := os.Lstat(sourcePath)
		if err != nil || sourceInfo.Mode()&os.ModeSymlink != 0 || !sourceInfo.Mode().IsRegular() {
			return nil, errors.New("lean sandbox: generated source is unavailable inside the project snapshot")
		}
		leanArgs = append(append([]string(nil), leanArgs...), "/mathcase/project/"+sourceName)
	}
	if artifactRoot != "" || artifactName != "" {
		if artifactRoot == "" || artifactName == "" || filepath.Base(artifactName) != artifactName || artifactName == "." || artifactName == ".." {
			return nil, errors.New("lean sandbox: compiled artifact output must use a dedicated directory and single filename")
		}
		artifactInfo, err := os.Lstat(artifactRoot)
		if err != nil || artifactInfo.Mode()&os.ModeSymlink != 0 || !artifactInfo.IsDir() {
			return nil, errors.New("lean sandbox: compiled artifact output must be a regular directory")
		}
		artifactSource, err := dockerMountSource(artifactRoot)
		if err != nil {
			return nil, fmt.Errorf("lean sandbox: resolve compiled artifact output mount: %w", err)
		}
		args = append(args, "--mount", "type=bind,source="+artifactSource+",target=/mathcase/output")
	}
	if cachePlan.seedPath != "" {
		// The pinned image's ENTRYPOINT is `lake`. Override it so this
		// immutable-snapshot path calls Lean directly and never lets Lake
		// attempt dependency updates against read-only source mounts.
		args = append(args, "--entrypoint=sh", image,
			"-c", "cp -R /mathcase/cache-seed/. /mathcase/project/.lake/ && exec lean \"$@\"",
			"mathcase-lean-cache-seed")
	} else {
		args = append(args, image)
	}
	args = append(args, leanArgs...)
	return args, nil
}

const leanProjectLakeTmpfsSpec = "/mathcase/project/.lake:rw,noexec,nosuid,nodev,size=536870912,mode=1777"

func validateLeanLakeCachePlan(projectRoot string, plan leanProjectCachePlan) error {
	if plan.seedPath == "" {
		return errors.New("lean sandbox: Lake execution requires a disposable .lake cache seed")
	}
	projectAbs, err := fsutil.CanonicalPath(projectRoot)
	if err != nil {
		return fmt.Errorf("lean sandbox: resolve project root for Lake cache plan: %w", err)
	}
	seedAbs, err := fsutil.CanonicalPath(plan.seedPath)
	if err != nil {
		return fmt.Errorf("lean sandbox: resolve Lake cache seed: %w", err)
	}
	seedInfo, err := os.Lstat(seedAbs)
	if err != nil || seedInfo.Mode()&os.ModeSymlink != 0 || !seedInfo.IsDir() {
		return errors.New("lean sandbox: Lake cache seed must be a regular directory")
	}
	if isWithin(projectAbs, seedAbs) || isWithin(seedAbs, projectAbs) || samePath(projectAbs, seedAbs) {
		return errors.New("lean sandbox: Lake cache seed and immutable project snapshot must be disjoint")
	}
	if plan.packagesPath == "" {
		return nil
	}
	packagesAbs, err := fsutil.CanonicalPath(plan.packagesPath)
	if err != nil {
		return fmt.Errorf("lean sandbox: resolve dependency package snapshot: %w", err)
	}
	packagesInfo, err := os.Lstat(packagesAbs)
	if err != nil || packagesInfo.Mode()&os.ModeSymlink != 0 || !packagesInfo.IsDir() {
		return errors.New("lean sandbox: dependency package snapshot must be a regular directory")
	}
	wantPackages := filepath.Join(projectAbs, ".lake", "packages")
	if !samePath(packagesAbs, wantPackages) || !isWithin(projectAbs, packagesAbs) {
		return errors.New("lean sandbox: dependency package mount must remain inside the immutable project's .lake/packages")
	}
	return nil
}

func prepareLeanArtifactOutput(workspaceRoot string) (string, error) {
	artifactRoot := filepath.Join(workspaceRoot, "output")
	if err := os.Mkdir(artifactRoot, 0o700); err != nil {
		return "", fmt.Errorf("lean sandbox: create compiled-artifact directory: %w", err)
	}
	// The Docker user is intentionally unprivileged, so the unique scratch
	// output mount must be writable to that UID during the isolated process.
	if err := os.Chmod(artifactRoot, 0o777); err != nil {
		return "", fmt.Errorf("lean sandbox: make compiled-artifact scratch writable: %w", err)
	}
	return artifactRoot, nil
}

func captureLeanCompiledArtifact(artifactRoot, artifactName string) ([]byte, string, error) {
	if filepath.Base(artifactName) != artifactName || artifactName == "." || artifactName == ".." {
		return nil, "CAPTURE_FAILED", errors.New("lean sandbox: compiled artifact name must be a single filename")
	}
	path := filepath.Join(artifactRoot, artifactName)
	info, err := os.Lstat(path)
	if errors.Is(err, os.ErrNotExist) {
		return nil, "NOT_PRODUCED", nil
	}
	if err != nil {
		return nil, "CAPTURE_FAILED", fmt.Errorf("inspect compiled artifact: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() {
		return nil, "CAPTURE_FAILED", errors.New("compiled artifact is not a regular non-symlink file")
	}
	if info.Size() <= 0 || info.Size() > maxCompiledArtifactBytes {
		return nil, "CAPTURE_FAILED", fmt.Errorf("compiled artifact size %d is outside the supported range", info.Size())
	}
	data, err := os.ReadFile(path)
	if err != nil {
		return nil, "CAPTURE_FAILED", fmt.Errorf("read compiled artifact: %w", err)
	}
	if int64(len(data)) != info.Size() {
		return nil, "CAPTURE_FAILED", errors.New("compiled artifact size changed during capture")
	}
	return data, "CAPTURED", nil
}

func validateLeanProjectInvocation(execution LeanSandboxExecution, sourceName, artifactName string, requireArtifact bool) error {
	if filepath.Base(sourceName) != sourceName || sourceName == "." || sourceName == ".." {
		return errors.New("generated source name is not a single filename")
	}
	if execution.DockerExecutable == "" || len(execution.CommandArgv) < 4 || execution.CommandArgv[0] != execution.DockerExecutable {
		return errors.New("Lean project invocation is missing its Docker executable or argv")
	}
	args := execution.CommandArgv[1:]
	for _, required := range []string{"run", "--rm", "--network=none", "--read-only", "--user=65532:65532", "--cap-drop=ALL", "--security-opt=no-new-privileges:true"} {
		if !containsArg(args, required) {
			return fmt.Errorf("Lean project invocation is missing isolation argument %q", required)
		}
	}
	if !containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/project,readonly") ||
		containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/input,readonly") ||
		!containsArg(args, "/mathcase/project/"+sourceName) {
		return errors.New("Lean invocation does not use an in-project source under the read-only project snapshot")
	}
	if err := validateLeanProjectMountArgs(args); err != nil {
		return err
	}
	if requireArtifact {
		if filepath.Base(artifactName) != artifactName || artifactName == "." || artifactName == ".." {
			return errors.New("compiled artifact name is not a single filename")
		}
		if !containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/output") ||
			!containsArg(args, "-o") || !containsArg(args, "/mathcase/output/"+artifactName) ||
			!containsArg(args, fmt.Sprintf("fsize=%d:%d", maxCompiledArtifactBytes, maxCompiledArtifactBytes)) ||
			!containsArg(args, leanProjectLakeTmpfsSpec) ||
			!containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/cache-seed,readonly") {
			return errors.New("Lean invocation does not use the separate compiled-artifact output mount")
		}
		if execution.ExecutionMode == LeanExecutionModeDirect {
			if err := validateLeanDirectInvocation(args, true); err != nil {
				return fmt.Errorf("Lean direct invocation is invalid: %w", err)
			}
		} else if execution.ExecutionMode == LeanExecutionModeLake {
			if !containsArg(args, "--entrypoint=sh") || !containsConsecutiveArgs(args, "env", "lean") ||
				containsConsecutiveArgs(args, "lake", "env", "lean") ||
				(!containsConsecutiveArgs(args, "cp -a /mathcase/cache-seed/. /mathcase/project/.lake/ && exec lake \"$@\"", "mathcase-lake-cache-seed") &&
					!containsConsecutiveArgs(args, "cp -R /mathcase/cache-seed/. /mathcase/project/.lake/ && exec lake \"$@\"", "mathcase-lake-cache-seed")) {
				return errors.New("legacy Lake invocation does not use its disposable cache wrapper")
			}
		} else {
			return errors.New("Lean invocation is missing an explicit execution mode")
		}
	}
	return nil
}

func validateLeanDirectInvocation(args []string, requireProjectCache bool) error {
	if !containsArg(args, "--entrypoint=sh") ||
		!containsConsecutiveArgs(args, "cp -R /mathcase/cache-seed/. /mathcase/project/.lake/ && exec lean \"$@\"", "mathcase-lean-cache-seed") ||
		containsArg(args, "lake") || containsConsecutiveArgs(args, "env", "lean") {
		return errors.New("direct invocation does not execute Lean without Lake")
	}
	if err := validateLeanModulePathArgs(args); err != nil {
		return err
	}
	if requireProjectCache {
		if !containsArg(args, leanProjectLakeTmpfsSpec) ||
			!containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/cache-seed,readonly") {
			return errors.New("direct invocation is missing its disposable .lake cache or immutable cache seed")
		}
	}
	return nil
}

func validateLeanModulePathArgs(args []string) error {
	var value string
	count := 0
	for _, arg := range args {
		if strings.HasPrefix(arg, "--env=LEAN_PATH=") {
			count++
			value = strings.TrimPrefix(arg, "--env=LEAN_PATH=")
		}
	}
	if count != 1 || value == "" {
		return errors.New("direct Lean invocation must declare one non-empty LEAN_PATH")
	}
	paths := strings.Split(value, ":")
	if len(paths) == 0 || paths[0] != "/mathcase/project/.lake/build/lib/lean" {
		return errors.New("direct Lean module path must begin at the snapshotted root build cache")
	}
	seen := map[string]struct{}{paths[0]: {}}
	for _, path := range paths[1:] {
		const prefix = "/mathcase/project/.lake/packages/"
		const suffix = "/.lake/build/lib/lean"
		if !strings.HasPrefix(path, prefix) || !strings.HasSuffix(path, suffix) {
			return fmt.Errorf("direct Lean module path escapes the pinned package build roots: %q", path)
		}
		packageName := strings.TrimSuffix(strings.TrimPrefix(path, prefix), suffix)
		if packageName == "" || packageName == "." || packageName == ".." || strings.ContainsAny(packageName, `/\\:`) {
			return fmt.Errorf("direct Lean module path has an invalid package root: %q", path)
		}
		if _, duplicate := seen[path]; duplicate {
			return fmt.Errorf("direct Lean module path repeats %q", path)
		}
		seen[path] = struct{}{}
	}
	return nil
}

func validateLeanProjectMountArgs(args []string) error {
	projectMount, cacheSeedMount, packagesMount := false, false, false
	for index := 0; index < len(args); index++ {
		if args[index] != "--mount" {
			continue
		}
		if index+1 >= len(args) {
			return errors.New("Lean invocation contains an incomplete Docker mount argument")
		}
		spec := args[index+1]
		if !strings.HasPrefix(spec, "type=bind,") {
			return errors.New("Lean invocation contains an unsupported Docker mount type")
		}
		target := ""
		for _, part := range strings.Split(spec, ",") {
			if strings.HasPrefix(part, "target=") {
				target = strings.TrimPrefix(part, "target=")
				break
			}
		}
		if target == "" {
			return errors.New("Lean invocation has a bind mount without an explicit target")
		}
		readOnly := strings.HasSuffix(spec, ",readonly")
		switch {
		case target == "/mathcase/project":
			if !readOnly {
				return errors.New("Lean project source snapshot mount is writable")
			}
			projectMount = true
		case target == "/mathcase/project/.lake/packages":
			if !readOnly {
				return errors.New("Lean dependency package sources are writable")
			}
			packagesMount = true
		case target == "/mathcase/cache-seed":
			if !readOnly {
				return errors.New("Lean Lake cache seed is writable")
			}
			cacheSeedMount = true
		case target == "/mathcase/output":
			if readOnly {
				return errors.New("Lean compiled-artifact output mount is read-only")
			}
		default:
			if strings.HasPrefix(target, "/mathcase/project/") || target == "/mathcase/input" {
				return fmt.Errorf("Lean invocation contains an unapproved project/input mount %q", target)
			}
		}
		index++
	}
	if !projectMount || !cacheSeedMount {
		return errors.New("Lean invocation is missing the immutable project mount or read-only Lake cache seed")
	}
	if packagesMount && !projectMount {
		return errors.New("Lean dependency mount is detached from the project snapshot")
	}
	return nil
}

func containsConsecutiveArgs(haystack []string, sequence ...string) bool {
	if len(sequence) == 0 {
		return true
	}
	for start := 0; start+len(sequence) <= len(haystack); start++ {
		matches := true
		for offset, expected := range sequence {
			if haystack[start+offset] != expected {
				matches = false
				break
			}
		}
		if matches {
			return true
		}
	}
	return false
}

func validateLeanArtifactSnapshot(schema, generatedSource, expectedSource, sourceSHA256, compiledStatus string, compiledArtifact []byte, compiledSHA256 string, compiledSize int64, compiledError string, requireCompiled bool) error {
	if schema == "" {
		if generatedSource != "" || compiledStatus != "" || len(compiledArtifact) != 0 || compiledSHA256 != "" || compiledSize != 0 || compiledError != "" {
			return errors.New("legacy artifact snapshot fields are partial")
		}
		return nil
	}
	if schema != LeanArtifactSnapshotSchemaVersion && schema != legacyLeanArtifactSnapshotSchemaVersion {
		return fmt.Errorf("unsupported artifact snapshot schema %q", schema)
	}
	if expectedSource == "" || generatedSource != expectedSource {
		return errors.New("retained generated source does not match the deterministic source reconstruction")
	}
	generatedDigest := sha256.Sum256([]byte(generatedSource))
	if sourceSHA256 != hex.EncodeToString(generatedDigest[:]) {
		return errors.New("retained generated source bytes do not match their SHA-256")
	}
	switch compiledStatus {
	case "CAPTURED":
		if len(compiledArtifact) == 0 || int64(len(compiledArtifact)) != compiledSize || compiledSize > maxCompiledArtifactBytes || compiledError != "" {
			return errors.New("captured compiled artifact bytes or size are incomplete")
		}
		digest := sha256.Sum256(compiledArtifact)
		if compiledSHA256 != hex.EncodeToString(digest[:]) {
			return errors.New("captured compiled artifact bytes do not match their SHA-256")
		}
	case "NOT_PRODUCED":
		if len(compiledArtifact) != 0 || compiledSHA256 != "" || compiledSize != 0 || compiledError != "" || requireCompiled {
			return errors.New("compiled artifact is missing or has inconsistent absent-artifact fields")
		}
	case "CAPTURE_FAILED":
		if len(compiledArtifact) != 0 || compiledSHA256 != "" || compiledSize != 0 || strings.TrimSpace(compiledError) == "" || requireCompiled {
			return errors.New("compiled artifact capture failure is missing its reason or conflicts with a passing result")
		}
	default:
		return fmt.Errorf("unknown compiled artifact capture status %q", compiledStatus)
	}
	return nil
}

func dockerMountSource(path string) (string, error) {
	resolved, err := fsutil.CanonicalPath(path)
	if err != nil {
		return "", err
	}
	if strings.ContainsRune(resolved, ',') {
		return "", errors.New("mount path contains a comma unsupported by Docker --mount")
	}
	return filepath.ToSlash(resolved), nil
}

func leanContainerRejectedProof(err error, output string) bool {
	var exitErr *exec.ExitError
	if !errors.As(err, &exitErr) {
		return false
	}
	code := exitErr.ExitCode()
	return code > 0 && code < 125 && leanCompilerRejectedDiagnostic(output)
}

func leanCompilerRejectedDiagnostic(output string) bool {
	output = strings.ToLower(output)
	return strings.Contains(output, "error:") || strings.Contains(output, "unsolved goals")
}
