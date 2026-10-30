package solver

import (
	"context"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestPantographSearchContainerSetupWatchdog(t *testing.T) {
	python := testLocalPythonExecutable(t)
	for _, test := range []struct {
		name                 string
		emitRequestMark      bool
		emitLargeRequestMark bool
		emitSplitRequestMark bool
		wantTermination      string
		wantTimeoutPhase     string
	}{
		{name: "startup_without_request_marker_times_out", wantTermination: "TIMED_OUT", wantTimeoutPhase: "container_setup"},
		{name: "request_marker_disarms_setup_watchdog", emitRequestMark: true, wantTermination: "EXITED"},
		{name: "request_marker_at_start_of_large_output_chunk_disarms_setup_watchdog", emitRequestMark: true, emitLargeRequestMark: true, wantTermination: "EXITED"},
		{name: "request_marker_split_across_output_chunks_disarms_setup_watchdog", emitRequestMark: true, emitSplitRequestMark: true, wantTermination: "EXITED"},
	} {
		t.Run(test.name, func(t *testing.T) {
			root := t.TempDir()
			scriptsRoot := filepath.Join(root, "scripts")
			projectRoot := filepath.Join(root, "project")
			for _, dir := range []string{
				scriptsRoot,
				filepath.Join(projectRoot, ".lake", "packages", "plausible", ".lake", "build", "lib", "lean"),
			} {
				if err := os.MkdirAll(dir, 0o755); err != nil {
					t.Fatal(err)
				}
			}
			for name, contents := range map[string]string{
				"pantograph_search.py":      "# bridge\n",
				"local_runtime_identity.py": "# identity\n",
				"lean_toolchain.py":         "# toolchain\n",
			} {
				if err := os.WriteFile(filepath.Join(scriptsRoot, name), []byte(contents), 0o644); err != nil {
					t.Fatal(err)
				}
			}
			for name, contents := range map[string]string{
				"lean-toolchain":     "leanprover/lean4:v4.33.1\n",
				"lake-manifest.json": "{\"packages\":[{\"name\":\"plausible\"}]}\n",
				"lakefile.toml":      "name = \"synthetic\"\n",
			} {
				if err := os.WriteFile(filepath.Join(projectRoot, name), []byte(contents), 0o644); err != nil {
					t.Fatal(err)
				}
			}
			image := "sha256:" + strings.Repeat("a", 64)
			bridge := filepath.Join(scriptsRoot, "pantograph_search.py")
			args, identity, err := buildPantographSearchDockerArgs(image, "mathcase-pantograph-search-watchdog", root, projectRoot, bridge)
			if err != nil {
				t.Fatal(err)
			}
			if test.emitRequestMark {
				marker := `{"phase":"request","event":"received"}`
				padding := ""
				if test.emitLargeRequestMark {
					padding = " + 'x' * 2048"
				}
				contents := "import sys,time\n"
				if test.emitSplitRequestMark {
					splitAt := len(marker) / 2
					contents += "sys.stderr.write('" + marker[:splitAt] + "')\nsys.stderr.flush()\ntime.sleep(0.1)\nsys.stderr.write('" + marker[splitAt:] + "'" + padding + " + '\\n')\nsys.stderr.flush()\n"
				} else {
					contents += "sys.stderr.write('" + marker + "'" + padding + " + '\\n')\nsys.stderr.flush()\n"
				}
				contents += "time.sleep(0.65)\n"
				if err := os.WriteFile(filepath.Join(root, "run"), []byte(contents), 0o600); err != nil {
					t.Fatal(err)
				}
			} else if err := os.WriteFile(filepath.Join(root, "run"), []byte("import time\ntime.sleep(2)\n"), 0o600); err != nil {
				t.Fatal(err)
			}
			if err := os.WriteFile(filepath.Join(root, "rm"), []byte("import sys\nsys.stderr.write('No such container')\nsys.exit(1)\n"), 0o600); err != nil {
				t.Fatal(err)
			}
			result, err := runPantographDockerProcess(
				context.Background(), python, root, bridge, args, identity, []byte("{}"),
				2*time.Second, maxSearchOutputBytes, 500*time.Millisecond,
			)
			if err != nil {
				t.Fatalf("runPantographDockerProcess() error = %v", err)
			}
			if result.Trace.Termination != test.wantTermination || result.Trace.HostTimeoutPhase != test.wantTimeoutPhase {
				t.Fatalf("termination=%q timeout_phase=%q, want %q / %q; stderr=%q", result.Trace.Termination, result.Trace.HostTimeoutPhase, test.wantTermination, test.wantTimeoutPhase, result.Stderr)
			}
			if !test.emitRequestMark && (!result.Trace.ContainerExecution.CleanupAttempted || !result.Trace.ContainerExecution.CleanupSucceeded) {
				t.Fatalf("setup timeout did not record successful bounded cleanup: %#v", result.Trace.ContainerExecution)
			}
			if err := result.Trace.Validate(); err != nil {
				t.Fatalf("watchdog trace does not validate: %v", err)
			}
		})
	}
}

// TestPantographSearchDockerRequestMarkerDisarmsSetupWatchdog is an opt-in
// integration check for Docker Desktop's real stderr streaming behavior.
// The normal unit test above uses a local Python process and cannot exercise
// Docker's attach transport.
func TestPantographSearchDockerRequestMarkerDisarmsSetupWatchdog(t *testing.T) {
	image := strings.TrimSpace(os.Getenv("MATHCASE_DOCKER_SETUP_WATCHDOG_IMAGE"))
	if image == "" {
		t.Skip("set MATHCASE_DOCKER_SETUP_WATCHDOG_IMAGE to a locally available Lean image")
	}
	docker, err := exec.LookPath("docker")
	if err != nil {
		t.Skipf("Docker is unavailable: %v", err)
	}
	root, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	containerName := "mathcase-pantograph-watchdog-smoke-" + strings.ReplaceAll(time.Now().UTC().Format("150405.000000000"), ".", "-")
	marker := `{"phase":"request","event":"received"}`
	startupTrace := marker + strings.Repeat("x", 2048)
	script := "printf '%s\\n' '" + startupTrace + "' >&2; sleep 1"
	args := []string{
		"run", "--interactive", "--rm", "--name", containerName,
		"--pull=never", "--network=none", "--read-only", "--user=65532:65532",
		"--cap-drop=ALL", "--security-opt=no-new-privileges:true",
		"--cpus=2", "--memory=4g", "--pids-limit=128",
		"--entrypoint=sh", image, "-c", script,
	}
	container := domain.ContainerExecutionIdentity{
		ImageID: image, ContainerName: containerName, NetworkMode: "none", PullPolicy: "never",
		ReadOnlyRoot: true, User: "65532:65532", DroppedAllCapabilities: true,
		NoNewPrivileges: true, CPULimit: "2", MemoryLimit: "4g", PidsLimit: 128,
	}
	result, err := runPantographDockerProcess(
		context.Background(), docker, root,
		filepath.Join(root, "scripts", "pantograph_search.py"),
		args, container, []byte("{}"), 10*time.Second, maxSearchOutputBytes, 3*time.Second,
	)
	if err != nil {
		t.Fatalf("runPantographDockerProcess() error = %v", err)
	}
	if result.Trace.Termination != "EXITED" || result.Trace.HostTimeoutPhase != "" {
		t.Fatalf("Docker request marker did not disarm setup watchdog: termination=%q timeout_phase=%q stdout=%q stderr=%q", result.Trace.Termination, result.Trace.HostTimeoutPhase, result.Stdout, result.Stderr)
	}
	if !strings.Contains(string(result.Stderr), marker) {
		t.Fatalf("Docker stderr did not preserve request marker: %q", result.Stderr)
	}
}

func TestQueueRunLabelIsIncludedInPantographSearchCommand(t *testing.T) {
	const runID = "attempt-queue-label-test"
	t.Setenv("MATHCASE_QUEUE_RUN_ID", runID)
	root := t.TempDir()
	scriptsRoot := filepath.Join(root, "scripts")
	projectRoot := filepath.Join(root, "project")
	for _, dir := range []string{
		scriptsRoot,
		filepath.Join(projectRoot, ".lake", "packages", "plausible", ".lake", "build", "lib", "lean"),
	} {
		if err := os.MkdirAll(dir, 0o755); err != nil {
			t.Fatal(err)
		}
	}
	for name, contents := range map[string]string{
		"pantograph_search.py":      "# bridge\n",
		"local_runtime_identity.py": "# identity\n",
		"lean_toolchain.py":         "# toolchain\n",
	} {
		if err := os.WriteFile(filepath.Join(scriptsRoot, name), []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	for name, contents := range map[string]string{
		"lean-toolchain":     "leanprover/lean4:v4.33.1\n",
		"lake-manifest.json": "{\"packages\":[{\"name\":\"plausible\"}]}\n",
		"lakefile.toml":      "name = \"synthetic\"\n",
	} {
		if err := os.WriteFile(filepath.Join(projectRoot, name), []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	args, identity, err := buildPantographSearchDockerArgs(
		"sha256:"+strings.Repeat("a", 64), "mathcase-pantograph-search-queue-label",
		root, projectRoot, filepath.Join(scriptsRoot, "pantograph_search.py"),
	)
	if err != nil {
		t.Fatal(err)
	}
	if !containsArg(args, "--label") || !containsArg(args, queueRunContainerLabel+"="+runID) || identity.ImageID != "sha256:"+strings.Repeat("a", 64) {
		t.Fatalf("Pantograph search args do not bind the exact queue run and immutable image: %#v", args)
	}
}

func TestPantographSearchRejectsMissingManifestDeclaredDependencyRoot(t *testing.T) {
	root := t.TempDir()
	scriptsRoot := filepath.Join(root, "scripts")
	projectRoot := filepath.Join(root, "project")
	lakeCacheRoot := filepath.Join(root, "lake-cache")
	for _, dir := range []string{
		scriptsRoot,
		filepath.Join(projectRoot, ".lake", "packages"),
		filepath.Join(lakeCacheRoot, "build"),
		filepath.Join(lakeCacheRoot, "packages"),
	} {
		if err := os.MkdirAll(dir, 0o755); err != nil {
			t.Fatal(err)
		}
	}
	for name, contents := range map[string]string{
		"pantograph_search.py":      "# bridge\n",
		"local_runtime_identity.py": "# identity\n",
		"lean_toolchain.py":         "# toolchain\n",
	} {
		if err := os.WriteFile(filepath.Join(scriptsRoot, name), []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	for name, contents := range map[string]string{
		"lean-toolchain":     "leanprover/lean4:v4.33.1\n",
		"lake-manifest.json": "{\"packages\":[{\"name\":\"plausible\"}]}\n",
		"lakefile.toml":      "name = \"synthetic\"\n",
	} {
		if err := os.WriteFile(filepath.Join(projectRoot, name), []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
	}

	_, _, err := buildPantographSearchDockerArgs(
		"sha256:"+strings.Repeat("a", 64), "mathcase-pantograph-search-missing-package",
		root, projectRoot, filepath.Join(scriptsRoot, "pantograph_search.py"), lakeCacheRoot,
	)
	if err == nil || !strings.Contains(err.Error(), "plausible") {
		t.Fatalf("expected a fail-closed error naming the missing manifest package root, got %v", err)
	}
}

func TestPantographSearchOverlaysPinnedRuntimePackageFromSelectedProject(t *testing.T) {
	root := t.TempDir()
	scriptsRoot := filepath.Join(root, "scripts")
	projectRoot := filepath.Join(root, "project")
	lakeCacheRoot := filepath.Join(root, "module-cache")
	projectPlausible := filepath.Join(projectRoot, ".lake", "packages", "plausible")
	cachedAesop := filepath.Join(lakeCacheRoot, "packages", "aesop")
	for _, dir := range []string{
		scriptsRoot,
		filepath.Join(projectRoot, ".lake", "packages"),
		filepath.Join(projectPlausible, ".lake", "build", "lib", "lean"),
		filepath.Join(lakeCacheRoot, "build", "lib", "lean"),
		filepath.Join(lakeCacheRoot, "packages"),
		filepath.Join(cachedAesop, ".lake", "build", "lib", "lean"),
	} {
		if err := os.MkdirAll(dir, 0o755); err != nil {
			t.Fatal(err)
		}
	}
	for name, contents := range map[string]string{
		"pantograph_search.py":      "# bridge\n",
		"local_runtime_identity.py": "# identity\n",
		"lean_toolchain.py":         "# toolchain\n",
	} {
		if err := os.WriteFile(filepath.Join(scriptsRoot, name), []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	for name, contents := range map[string]string{
		"lean-toolchain":     "leanprover/lean4:v4.33.1\n",
		"lake-manifest.json": "{\"packages\":[{\"name\":\"plausible\"},{\"name\":\"aesop\"}]}\n",
		"lakefile.toml":      "name = \"synthetic\"\n",
	} {
		if err := os.WriteFile(filepath.Join(projectRoot, name), []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	if err := os.WriteFile(filepath.Join(projectPlausible, ".lake", "build", "lib", "lean", "Plausible.olean"), []byte("pinned artifact"), 0o644); err != nil {
		t.Fatal(err)
	}

	args, _, err := buildPantographSearchDockerArgs(
		"sha256:"+strings.Repeat("a", 64), "mathcase-pantograph-search-package-overlay",
		root, projectRoot, filepath.Join(scriptsRoot, "pantograph_search.py"), lakeCacheRoot,
	)
	if err != nil {
		t.Fatal(err)
	}
	if !containsArg(args, "/mathcase/lean-project/.lake:rw,noexec,nosuid,nodev,size=64m,mode=0755") ||
		!containsArg(args, "/mathcase/lean-project/.lake/packages:rw,noexec,nosuid,nodev,size=16m,mode=0755") {
		t.Fatalf("composite Lake cache did not provide writable mountpoint parents for nested read-only binds: %#v", args)
	}
	if containsArg(args, "type=bind,source="+filepath.ToSlash(lakeCacheRoot)+",target=/mathcase/lean-project/.lake,readonly") {
		t.Fatalf("composite Lake cache still mounts the parent cache root and blocks nested mountpoint creation: %#v", args)
	}
	if !containsArg(args, "type=bind,source="+filepath.ToSlash(filepath.Join(lakeCacheRoot, "build"))+",target=/mathcase/lean-project/.lake/build,readonly") {
		t.Fatalf("composite Lake cache omitted the pinned project build root: %#v", args)
	}
	if !containsArg(args, "type=bind,source="+filepath.ToSlash(projectPlausible)+",target=/mathcase/lean-project/.lake/packages/plausible,readonly") {
		t.Fatalf("Pantograph search args did not mount the selected project's pinned Plausible build root: %#v", args)
	}
	if !containsArg(args, "type=bind,source="+filepath.ToSlash(cachedAesop)+",target=/mathcase/lean-project/.lake/packages/aesop,readonly") {
		t.Fatalf("Pantograph search args did not mount a package build root from the selected module cache: %#v", args)
	}
}
