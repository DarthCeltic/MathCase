package solver

import (
	"bytes"
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"sync"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

const pantographSandboxRuntimeProfile = "mathcase-pantograph-docker-r1"

var pantographRequiredLakePackages = []string{"plausible"}

type lakePackageBuildOverlay struct {
	source string
	target string
}

func buildPantographDockerArgs(image, containerName, projectRoot, bridgePath string) ([]string, domain.ContainerExecutionIdentity, error) {
	if !validImageDigest(image) || pantographSandboxRuntimeProfile == "" {
		return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: Pantograph sandbox requires an immutable image ID")
	}
	root, err := filepath.Abs(projectRoot)
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	root, err = filepath.EvalSymlinks(root)
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: Pantograph project root is unavailable")
	}
	scriptsRoot := filepath.Join(root, "scripts")
	proofRoot := filepath.Join(root, "proofs", "r0b")
	for _, path := range []string{scriptsRoot, proofRoot} {
		info, statErr := os.Lstat(path)
		if statErr != nil || info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
			return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: Pantograph read-only mount root is unavailable or unsafe")
		}
	}
	bridge, err := filepath.Abs(bridgePath)
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	bridge, err = filepath.EvalSymlinks(bridge)
	if err != nil || !isWithin(root, bridge) || !samePath(bridge, filepath.Join(scriptsRoot, "pantograph_replay.py")) {
		return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: Pantograph bridge must be the pinned in-project replay script")
	}
	for _, name := range []string{"pantograph_replay.py", "pantograph_search.py", "local_runtime_identity.py", "lean_toolchain.py"} {
		info, statErr := os.Lstat(filepath.Join(scriptsRoot, name))
		if statErr != nil || info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() {
			return nil, domain.ContainerExecutionIdentity{}, fmt.Errorf("solver: required Pantograph bridge module %q is unavailable", name)
		}
	}
	scriptMount, err := dockerMountSource(scriptsRoot)
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	proofMount, err := dockerMountSource(proofRoot)
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	queueLabelArgs, err := queueRunContainerLabelArgs()
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	args := []string{
		"run", "--interactive", "--rm", "--name", containerName,
	}
	args = append(args, queueLabelArgs...)
	args = append(args,
		"--pull=never", "--network=none", "--read-only", "--user=65532:65532",
		"--cap-drop=ALL", "--security-opt=no-new-privileges:true",
		"--cpus=2", "--memory=4g", "--pids-limit=128",
		"--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"--tmpfs", "/mathcase/app/proofs/r0b/.lake:rw,noexec,nosuid,nodev,size=64m,mode=1777",
		"--tmpfs", "/mathcase/cache:rw,noexec,nosuid,nodev,size=64m,mode=1777",
		"--mount", "type=bind,source="+scriptMount+",target=/mathcase/app/scripts,readonly",
		"--mount", "type=bind,source="+proofMount+",target=/mathcase/app/proofs/r0b,readonly",
		"--workdir=/mathcase/app", "--env=HOME=/tmp", "--env=TMPDIR=/tmp", "--env=TMP=/tmp",
		"--env=LEAN_SYSROOT=/opt/lean", "--env=LAKE_HOME=/mathcase/cache",
		"--env=PYTHONDONTWRITEBYTECODE=1", "--env=PYTHONUNBUFFERED=1",
		"--entrypoint=/opt/mathcase-pantograph/bin/python", image,
		"/mathcase/app/scripts/pantograph_replay.py",
	)
	identity := domain.ContainerExecutionIdentity{
		ImageID: image, ContainerName: containerName, NetworkMode: "none", PullPolicy: "never",
		ReadOnlyRoot: true, User: "65532:65532", DroppedAllCapabilities: true, NoNewPrivileges: true,
		CPULimit: "2", MemoryLimit: "4g", PidsLimit: 128,
	}
	if err := identity.Validate(args); err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	return args, identity, nil
}

func buildPantographSearchDockerArgs(image, containerName, repositoryRoot, leanProjectRoot, bridgePath string, lakeCacheRoots ...string) ([]string, domain.ContainerExecutionIdentity, error) {
	if len(lakeCacheRoots) > 1 {
		return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: at most one pinned Lake cache may be mounted for Pantograph")
	}
	if !validImageDigest(image) {
		return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: Pantograph search sandbox requires an immutable image ID")
	}
	root, err := filepath.Abs(repositoryRoot)
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	root, err = filepath.EvalSymlinks(root)
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: Pantograph repository root is unavailable")
	}
	scriptsRoot := filepath.Join(root, "scripts")
	if info, statErr := os.Lstat(scriptsRoot); statErr != nil || info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: Pantograph script mount root is unavailable or unsafe")
	}
	leanRoot, err := filepath.Abs(leanProjectRoot)
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	leanRoot, err = filepath.EvalSymlinks(leanRoot)
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: selected Lean project is unavailable")
	}
	if info, statErr := os.Lstat(leanRoot); statErr != nil || info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: selected Lean project mount is unavailable or unsafe")
	}
	for _, name := range []string{"lean-toolchain", "lake-manifest.json"} {
		info, statErr := os.Lstat(filepath.Join(leanRoot, name))
		if statErr != nil || info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() {
			return nil, domain.ContainerExecutionIdentity{}, fmt.Errorf("solver: selected Lean project file %q is unavailable or unsafe", name)
		}
	}
	if !regularNonSymlink(filepath.Join(leanRoot, "lakefile.toml")) && !regularNonSymlink(filepath.Join(leanRoot, "lakefile.lean")) {
		return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: selected Lean project has no regular Lake configuration")
	}
	lakeRoot := filepath.Join(leanRoot, ".lake")
	lakeInfo, err := os.Lstat(lakeRoot)
	if err != nil || lakeInfo.Mode()&os.ModeSymlink != 0 || !lakeInfo.IsDir() {
		return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: selected Lean project must have a regular, prebuilt .lake directory")
	}
	packagesRoot := filepath.Join(lakeRoot, "packages")
	packagesInfo, packagesErr := os.Lstat(packagesRoot)
	if packagesErr == nil && (packagesInfo.Mode()&os.ModeSymlink != 0 || !packagesInfo.IsDir()) {
		return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: selected Lean project dependency directory is unavailable or unsafe")
	}
	if packagesErr != nil && !errors.Is(packagesErr, os.ErrNotExist) {
		return nil, domain.ContainerExecutionIdentity{}, fmt.Errorf("solver: inspect selected Lean project dependencies: %w", packagesErr)
	}
	useCompositeLakeCache := false
	effectiveLakeRoot := lakeRoot
	if len(lakeCacheRoots) == 1 && strings.TrimSpace(lakeCacheRoots[0]) != "" {
		lakeCacheRoot, cacheErr := filepath.Abs(lakeCacheRoots[0])
		if cacheErr != nil {
			return nil, domain.ContainerExecutionIdentity{}, fmt.Errorf("solver: resolve pinned Pantograph Lake cache: %w", cacheErr)
		}
		lakeCacheRoot, cacheErr = filepath.EvalSymlinks(lakeCacheRoot)
		if cacheErr != nil {
			return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: pinned Pantograph Lake cache is unavailable")
		}
		cacheInfo, statErr := os.Lstat(lakeCacheRoot)
		if statErr != nil || cacheInfo.Mode()&os.ModeSymlink != 0 || !cacheInfo.IsDir() {
			return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: pinned Pantograph Lake cache must be a regular directory")
		}
		for _, child := range []string{"build", "packages"} {
			childInfo, childErr := os.Lstat(filepath.Join(lakeCacheRoot, child))
			if childErr != nil || childInfo.Mode()&os.ModeSymlink != 0 || !childInfo.IsDir() {
				return nil, domain.ContainerExecutionIdentity{}, fmt.Errorf("solver: pinned Pantograph Lake cache has no regular %q directory", child)
			}
		}
		useCompositeLakeCache = !samePath(lakeCacheRoot, lakeRoot)
		effectiveLakeRoot = lakeCacheRoot
	}
	packageMounts, err := validateLakePackageBuildRoots(filepath.Join(leanRoot, "lake-manifest.json"), effectiveLakeRoot, lakeRoot, pantographRequiredLakePackages)
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	bridge, err := filepath.Abs(bridgePath)
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	bridge, err = filepath.EvalSymlinks(bridge)
	if err != nil || !isWithin(root, bridge) || !samePath(bridge, filepath.Join(scriptsRoot, "pantograph_search.py")) {
		return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: Pantograph search bridge must be the pinned in-project search script")
	}
	for _, name := range []string{"pantograph_search.py", "local_runtime_identity.py", "lean_toolchain.py"} {
		if !regularNonSymlink(filepath.Join(scriptsRoot, name)) {
			return nil, domain.ContainerExecutionIdentity{}, fmt.Errorf("solver: required Pantograph search module %q is unavailable", name)
		}
	}
	scriptMount, err := dockerMountSource(scriptsRoot)
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	projectMount, err := dockerMountSource(leanRoot)
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	queueLabelArgs, err := queueRunContainerLabelArgs()
	if err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	args := []string{
		"run", "--interactive", "--rm", "--name", containerName,
	}
	args = append(args, queueLabelArgs...)
	args = append(args,
		"--pull=never", "--network=none", "--read-only", "--user=65532:65532",
		"--cap-drop=ALL", "--security-opt=no-new-privileges:true",
		"--cpus=2", "--memory=4g", "--pids-limit=128",
		"--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"--tmpfs", "/mathcase/cache:rw,noexec,nosuid,nodev,size=64m,mode=1777",
		"--mount", "type=bind,source="+scriptMount+",target=/mathcase/app/scripts,readonly",
		"--mount", "type=bind,source="+projectMount+",target=/mathcase/lean-project,readonly",
		"--workdir=/mathcase/app", "--env=HOME=/tmp", "--env=TMPDIR=/tmp", "--env=TMP=/tmp",
		"--env=LEAN_SYSROOT=/opt/lean", "--env=LAKE_HOME=/mathcase/cache",
		"--env=PYTHONDONTWRITEBYTECODE=1", "--env=PYTHONUNBUFFERED=1",
		"--entrypoint=/opt/mathcase-pantograph/bin/python", image,
		"/mathcase/app/scripts/pantograph_search.py",
	)
	if useCompositeLakeCache {
		mountArgs := []string{
			"--tmpfs", "/mathcase/lean-project/.lake:rw,noexec,nosuid,nodev,size=64m,mode=0755",
			"--tmpfs", "/mathcase/lean-project/.lake/packages:rw,noexec,nosuid,nodev,size=16m,mode=0755",
		}
		lakeBuildMount, mountErr := dockerMountSource(filepath.Join(effectiveLakeRoot, "build"))
		if mountErr != nil {
			return nil, domain.ContainerExecutionIdentity{}, mountErr
		}
		mountArgs = append(mountArgs, "--mount", "type=bind,source="+lakeBuildMount+",target=/mathcase/lean-project/.lake/build,readonly")
		for _, packageMount := range packageMounts {
			source, mountErr := dockerMountSource(packageMount.source)
			if mountErr != nil {
				return nil, domain.ContainerExecutionIdentity{}, mountErr
			}
			mountArgs = append(mountArgs, "--mount", "type=bind,source="+source+",target="+packageMount.target+",readonly")
		}
		workdirIndex := -1
		for i, arg := range args {
			if strings.HasPrefix(arg, "--workdir=") {
				workdirIndex = i
				break
			}
		}
		if workdirIndex < 0 {
			return nil, domain.ContainerExecutionIdentity{}, errors.New("solver: Pantograph search workdir was not constructed")
		}
		args = append(args[:workdirIndex], append(mountArgs, args[workdirIndex:]...)...)
	}
	identity := domain.ContainerExecutionIdentity{
		ImageID: image, ContainerName: containerName, NetworkMode: "none", PullPolicy: "never",
		ReadOnlyRoot: true, User: "65532:65532", DroppedAllCapabilities: true, NoNewPrivileges: true,
		CPULimit: "2", MemoryLimit: "4g", PidsLimit: 128,
	}
	if err := identity.Validate(args); err != nil {
		return nil, domain.ContainerExecutionIdentity{}, err
	}
	return args, identity, nil
}

func validateLakePackageBuildRoots(manifestPath, lakeRoot, fallbackLakeRoot string, requiredPackages []string) ([]lakePackageBuildOverlay, error) {
	manifestBytes, err := os.ReadFile(manifestPath)
	if err != nil {
		return nil, fmt.Errorf("solver: read selected Lean Lake manifest: %w", err)
	}
	var manifest struct {
		Packages []struct {
			Name string `json:"name"`
		} `json:"packages"`
	}
	if err := json.Unmarshal(manifestBytes, &manifest); err != nil {
		return nil, fmt.Errorf("solver: decode selected Lean Lake manifest: %w", err)
	}

	declared := make(map[string]struct{}, len(manifest.Packages))
	for _, dependency := range manifest.Packages {
		name := strings.TrimSpace(dependency.Name)
		if name == "" || name == "." || name == ".." || filepath.Base(name) != name || strings.ContainsAny(name, "/\\\x00") {
			return nil, errors.New("solver: selected Lean Lake manifest contains an unsafe dependency name")
		}
		if _, exists := declared[name]; exists {
			return nil, fmt.Errorf("solver: selected Lean Lake manifest contains duplicate dependency %q", name)
		}
		declared[name] = struct{}{}
	}
	for _, name := range requiredPackages {
		if _, ok := declared[name]; !ok {
			return nil, fmt.Errorf("solver: selected Lean Lake manifest omits required Pantograph dependency %q", name)
		}
	}
	required := make(map[string]struct{}, len(requiredPackages))
	for _, name := range requiredPackages {
		required[name] = struct{}{}
	}
	missing := make([]string, 0, len(requiredPackages))
	mounts := make([]lakePackageBuildOverlay, 0, len(manifest.Packages))
	for _, dependency := range manifest.Packages {
		name := strings.TrimSpace(dependency.Name)
		selectedRoot := filepath.Join(lakeRoot, "packages", name)
		selectedStatus, selectedErr := lakePackageBuildRootStatus(selectedRoot, name)
		if selectedErr != nil {
			return nil, selectedErr
		}
		if selectedStatus {
			mounts = append(mounts, lakePackageBuildOverlay{
				source: selectedRoot,
				target: "/mathcase/lean-project/.lake/packages/" + name,
			})
			continue
		}
		fallbackRoot := filepath.Join(fallbackLakeRoot, "packages", name)
		fallbackStatus, fallbackErr := lakePackageBuildRootStatus(fallbackRoot, name)
		if fallbackErr != nil {
			return nil, fallbackErr
		}
		if !fallbackStatus {
			if _, ok := required[name]; ok {
				missing = append(missing, name)
			}
			continue
		}
		mounts = append(mounts, lakePackageBuildOverlay{
			source: fallbackRoot,
			target: "/mathcase/lean-project/.lake/packages/" + name,
		})
	}
	if len(missing) > 0 {
		return nil, fmt.Errorf("solver: selected Pantograph Lake cache and its selected project are missing required compiled dependency roots declared by the Lean manifest: %s", strings.Join(missing, ", "))
	}
	return mounts, nil
}

func lakePackageBuildRootStatus(packageRoot, name string) (bool, error) {
	paths := []string{
		packageRoot,
		filepath.Join(packageRoot, ".lake"),
		filepath.Join(packageRoot, ".lake", "build"),
		filepath.Join(packageRoot, ".lake", "build", "lib"),
		filepath.Join(packageRoot, ".lake", "build", "lib", "lean"),
	}
	for _, path := range paths {
		info, err := os.Lstat(path)
		if errors.Is(err, os.ErrNotExist) {
			return false, nil
		}
		if err != nil {
			return false, fmt.Errorf("solver: inspect compiled Lake dependency %q: %w", name, err)
		}
		if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
			return false, fmt.Errorf("solver: compiled Lake dependency %q has an unsafe build path", name)
		}
	}
	return true, nil
}

func regularNonSymlink(path string) bool {
	info, err := os.Lstat(path)
	return err == nil && info.Mode().IsRegular() && info.Mode()&os.ModeSymlink == 0
}

func runPantographContainerProcess(ctx context.Context, docker, image, projectRoot, bridgePath string, input []byte, timeout time.Duration, outputLimit int) (localProcessResult, error) {
	if ctx == nil {
		return localProcessResult{}, errors.New("solver: context is required for Pantograph container execution")
	}
	if projectRoot == "" || bridgePath == "" || len(input) == 0 || len(input) > maxLocalProcessInputBytes || timeout <= 0 || outputLimit <= 0 || !validImageDigest(image) {
		return localProcessResult{}, errors.New("solver: Pantograph container configuration is incomplete or outside its limits")
	}
	root, err := filepath.Abs(projectRoot)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: resolve Pantograph project root: %w", err)
	}
	root, err = filepath.EvalSymlinks(root)
	if err != nil {
		return localProcessResult{}, errors.New("solver: Pantograph project root is unavailable")
	}
	bridge, err := filepath.Abs(bridgePath)
	if err != nil {
		return localProcessResult{}, err
	}
	bridge, err = filepath.EvalSymlinks(bridge)
	if err != nil || !isWithin(root, bridge) {
		return localProcessResult{}, errors.New("solver: Pantograph bridge is not inside the selected MathCase root")
	}
	containerID, err := newLeanEvidenceID()
	if err != nil {
		return localProcessResult{}, err
	}
	containerName := "mathcase-pantograph-" + strings.TrimPrefix(containerID, "lean-")
	args, container, err := buildPantographDockerArgs(image, containerName, root, bridge)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: build Pantograph container invocation: %w", err)
	}
	return runPantographDockerProcess(ctx, docker, root, bridge, args, container, input, timeout, outputLimit, 0)
}

func runPantographSearchContainerProcess(ctx context.Context, docker, image, repositoryRoot, leanProjectRoot, lakeCacheRoot, bridgePath string, input []byte, timeout time.Duration, outputLimit int) (localProcessResult, error) {
	if ctx == nil {
		return localProcessResult{}, errors.New("solver: context is required for Pantograph search container execution")
	}
	if repositoryRoot == "" || leanProjectRoot == "" || bridgePath == "" || len(input) == 0 || len(input) > maxLocalProcessInputBytes || timeout <= 0 || outputLimit <= 0 || !validImageDigest(image) {
		return localProcessResult{}, errors.New("solver: Pantograph search container configuration is incomplete or outside its limits")
	}
	root, err := filepath.Abs(repositoryRoot)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: resolve MathCase project root: %w", err)
	}
	root, err = filepath.EvalSymlinks(root)
	if err != nil {
		return localProcessResult{}, errors.New("solver: MathCase project root is unavailable")
	}
	bridge, err := filepath.Abs(bridgePath)
	if err != nil {
		return localProcessResult{}, err
	}
	bridge, err = filepath.EvalSymlinks(bridge)
	if err != nil || !isWithin(root, bridge) {
		return localProcessResult{}, errors.New("solver: Pantograph search bridge is not inside the selected MathCase root")
	}
	containerID, err := newLeanEvidenceID()
	if err != nil {
		return localProcessResult{}, err
	}
	containerName := "mathcase-pantograph-search-" + strings.TrimPrefix(containerID, "lean-")
	args, container, err := buildPantographSearchDockerArgs(image, containerName, root, leanProjectRoot, bridge, lakeCacheRoot)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: build Pantograph search container invocation: %w", err)
	}
	return runPantographDockerProcess(ctx, docker, root, bridge, args, container, input, timeout, outputLimit, dockerSetupBudget)
}

func runPantographDockerProcess(ctx context.Context, docker, root, bridge string, args []string, container domain.ContainerExecutionIdentity, input []byte, timeout time.Duration, outputLimit int, setupTimeout time.Duration) (localProcessResult, error) {
	if docker == "" {
		docker = "docker"
	}
	root, err := filepath.Abs(root)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: resolve Pantograph project root: %w", err)
	}
	root, err = filepath.EvalSymlinks(root)
	if err != nil {
		return localProcessResult{}, errors.New("solver: Pantograph project root is unavailable")
	}
	bridge, err = filepath.Abs(bridge)
	if err != nil {
		return localProcessResult{}, err
	}
	bridge, err = filepath.EvalSymlinks(bridge)
	if err != nil || !isWithin(root, bridge) {
		return localProcessResult{}, errors.New("solver: Pantograph bridge is not inside the selected MathCase root")
	}
	dockerPath, err := exec.LookPath(docker)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: resolve Docker executable: %w", err)
	}
	dockerPath, err = filepath.Abs(dockerPath)
	if err != nil {
		return localProcessResult{}, err
	}
	dockerPath, err = filepath.EvalSymlinks(dockerPath)
	if err != nil {
		return localProcessResult{}, errors.New("solver: Docker executable is unavailable")
	}
	dockerDigest, err := fileSHA256(dockerPath)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: fingerprint Docker executable: %w", err)
	}
	bridgeDigest, err := fileSHA256(bridge)
	if err != nil {
		return localProcessResult{}, fmt.Errorf("solver: fingerprint Pantograph bridge: %w", err)
	}
	containerName := container.ContainerName
	inputDigest := sha256.Sum256(input)
	runCtx, cancel := context.WithTimeout(ctx, timeout)
	defer cancel()
	processCtx, cancelProcess := context.WithCancel(runCtx)
	defer cancelProcess()
	command := exec.CommandContext(processCtx, dockerPath, args...)
	command.Dir = root
	command.Env = localToolEnvironment(os.Environ())
	command.Stdin = bytes.NewReader(input)
	stdout := newBoundedCapture(outputLimit)
	stderr := newBoundedCapture(outputLimit)
	var cancelOnce sync.Once
	cancelForOutputLimit := func() { cancelOnce.Do(cancelProcess) }
	stdout.onLimit = cancelForOutputLimit
	stderr.onLimit = cancelForOutputLimit
	var setupMu sync.Mutex
	setupComplete := setupTimeout <= 0
	setupTimedOut := false
	var setupTimer *time.Timer
	if setupTimeout > 0 {
		setupTimer = time.AfterFunc(setupTimeout, func() {
			setupMu.Lock()
			defer setupMu.Unlock()
			if !setupComplete {
				setupTimedOut = true
				cancelOnce.Do(cancelProcess)
			}
		})
		startupMarker := []byte(`"phase":"request","event":"received"`)
		stdoutStartupProbe := make([]byte, 0, 512)
		stderrStartupProbe := make([]byte, 0, 512)
		var startupProbeMu sync.Mutex
		observeStartupMarker := func(data []byte, isStdout bool) {
			startupProbeMu.Lock()
			probe := &stderrStartupProbe
			if isStdout {
				probe = &stdoutStartupProbe
			}
			*probe = append(*probe, data...)
			matched := bytes.Contains(*probe, startupMarker)
			if keep := len(startupMarker) - 1; len(*probe) > keep {
				*probe = append((*probe)[:0], (*probe)[len(*probe)-keep:]...)
			}
			startupProbeMu.Unlock()
			if !matched {
				return
			}
			setupMu.Lock()
			setupComplete = true
			setupMu.Unlock()
			setupTimer.Stop()
		}
		stdout.onWrite = func(data []byte) { observeStartupMarker(data, true) }
		stderr.onWrite = func(data []byte) { observeStartupMarker(data, false) }
	}
	command.Stdout = stdout
	command.Stderr = stderr
	monotonicStarted := time.Now()
	started := monotonicStarted.UTC()
	runErr := command.Run()
	setupMu.Lock()
	setupComplete = true
	setupTimeoutHit := setupTimedOut
	setupMu.Unlock()
	if setupTimer != nil {
		setupTimer.Stop()
	}
	finished := time.Now().UTC()
	elapsedNanos := time.Since(monotonicStarted).Nanoseconds()
	contextEnd := localProcessContextEnd(processCtx.Err())
	if finished.Before(started) {
		finished = started
	}
	termination := "EXITED"
	timeoutPhase := ""
	switch {
	case stdout.truncated || stderr.truncated:
		termination = "OUTPUT_LIMIT"
	case setupTimeoutHit:
		termination = "TIMED_OUT"
		contextEnd = "DEADLINE_EXCEEDED"
		timeoutPhase = "container_setup"
	case errors.Is(processCtx.Err(), context.DeadlineExceeded):
		termination = "TIMED_OUT"
		callerDeadline, hasCallerDeadline := ctx.Deadline()
		processDeadline := monotonicStarted.Add(timeout)
		if hasCallerDeadline && !callerDeadline.After(processDeadline) {
			timeoutPhase = "caller_deadline"
		} else {
			timeoutPhase = "host_process"
		}
	case errors.Is(processCtx.Err(), context.Canceled):
		termination = "CANCELLED"
	case runErr != nil && command.ProcessState == nil:
		termination = "START_FAILED"
	}
	exitCode, processID := -1, 0
	if command.Process != nil {
		processID = command.Process.Pid
	}
	if command.ProcessState != nil {
		exitCode = command.ProcessState.ExitCode()
	}
	dockerAfter, dockerAfterErr := fileSHA256(dockerPath)
	bridgeAfter, bridgeAfterErr := fileSHA256(bridge)
	codeStable := dockerAfterErr == nil && bridgeAfterErr == nil && dockerAfter == dockerDigest && bridgeAfter == bridgeDigest
	stdoutBytes := []byte(stdout.String())
	stderrBytes := []byte(stderr.String())
	trace := domain.LocalProcessTrace{
		SchemaVersion: domain.LocalProcessTraceSchemaV2, ExecutionClass: domain.LocalProcessDockerNoNetwork,
		Replayability: domain.LocalProcessCapturedIOOnly, ExecutablePath: dockerPath,
		ExecutableSHA256: dockerDigest, ExecutableSHA256After: dockerAfter,
		BridgePath: bridge, BridgeSHA256: bridgeDigest, BridgeSHA256After: bridgeAfter,
		WorkingDirectory: root, Arguments: append([]string(nil), args...), ProcessID: processID,
		StartedAt: started, FinishedAt: finished, HostTimeoutNanos: int64(timeout),
		HostElapsedNanos: elapsedNanos, HostContextEnd: contextEnd, HostTimeoutPhase: timeoutPhase,
		Termination: termination, ExitCode: exitCode,
		InputBase64: append([]byte(nil), input...), InputSHA256: hex.EncodeToString(inputDigest[:]),
		StdoutPrefixBase64: stdoutBytes, StdoutSHA256: stdout.SHA256(), StdoutCapturedSHA256: stdout.CapturedSHA256(),
		StdoutBytesObserved: stdout.total, StdoutBytesCaptured: int64(len(stdoutBytes)),
		StderrPrefixBase64: stderrBytes, StderrSHA256: stderr.SHA256(), StderrCapturedSHA256: stderr.CapturedSHA256(),
		StderrBytesObserved: stderr.total, StderrBytesCaptured: int64(len(stderrBytes)),
		OutputCaptureLimitBytes: int64(outputLimit), OutputTruncated: stdout.truncated || stderr.truncated,
		CodeIdentityMatchesBeforeAfter: codeStable, ContainerExecution: &container,
	}
	result := localProcessResult{Trace: trace, Stdout: stdoutBytes, Stderr: stderrBytes}
	if termination == "OUTPUT_LIMIT" || termination == "TIMED_OUT" || termination == "CANCELLED" {
		container.CleanupAttempted = true
		cleanupCtx, cleanupCancel := context.WithTimeout(context.Background(), 10*time.Second)
		cleanup := exec.CommandContext(cleanupCtx, dockerPath, "rm", "--force", containerName)
		cleanup.Dir = root
		cleanupOutput, cleanupErr := cleanup.CombinedOutput()
		cleanupCancel()
		if cleanupErr == nil || bytes.Contains(bytes.ToLower(cleanupOutput), []byte("no such container")) {
			container.CleanupSucceeded = true
			code := 0
			if cleanupErr != nil {
				code = 1
			}
			container.CleanupExitCode = &code
		} else {
			container.CleanupError = strings.TrimSpace(string(cleanupOutput))
			var exitError *exec.ExitError
			if errors.As(cleanupErr, &exitError) {
				code := exitError.ExitCode()
				container.CleanupExitCode = &code
			}
		}
		trace.ContainerExecution = &container
		cancel()
	}
	switch termination {
	case "OUTPUT_LIMIT":
		result.Err = errors.New("solver: Pantograph container output exceeded the capture limit")
	case "TIMED_OUT":
		result.Err = errors.New("solver: Pantograph container exceeded its time limit")
	case "CANCELLED":
		result.Err = errors.New("solver: Pantograph container was cancelled")
	case "START_FAILED":
		result.Err = fmt.Errorf("solver: start Pantograph container process: %w", runErr)
	case "EXITED":
		if runErr != nil {
			result.Err = errors.New("solver: Pantograph container exited unsuccessfully")
		} else if !codeStable {
			result.Err = errors.New("solver: Docker executable or bridge changed during Pantograph container execution")
		}
	}
	if err := trace.Validate(); err != nil {
		return result, fmt.Errorf("solver: generated invalid Pantograph container trace: %w", err)
	}
	return result, nil
}
