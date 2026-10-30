package solver

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/DarthCeltic/MathCase/internal/fsutil"
)

func TestLeanProjectSnapshotIncludesGeneratedSourceConfigsAndCompiledDependencyArtifacts(t *testing.T) {
	t.Parallel()
	projectRoot := filepath.Join(t.TempDir(), "project")
	files := map[string]string{
		"lean-toolchain": "leanprover/lean4:v4.33.1\n",
		"lakefile.toml":  "name = \"snapshot-fixture\"\n",
		"lake-manifest.json": "{\"packagesDir\":\".lake/packages\",\"packages\":[{" +
			"\"name\":\"syntheticdep\",\"url\":\"https://example.invalid/syntheticdep\",\"rev\":\"abc123\"}]}\n",
		"Main.lean": "import SyntheticDep\nexample : True := by trivial\n",
		filepath.Join(".lake", "packages", "syntheticdep", "SyntheticDep.lean"):                                   "namespace SyntheticDep\nend SyntheticDep\n",
		filepath.Join(".lake", "packages", "syntheticdep", ".lake", "build", "lib", "lean", "SyntheticDep.olean"): "synthetic compiled dependency artifact",
	}
	for name, content := range files {
		path := filepath.Join(projectRoot, name)
		if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(path, []byte(content), 0o644); err != nil {
			t.Fatal(err)
		}
	}

	generated := []byte("import Init\nexample : True := by trivial\n")
	firstSnapshotRoot := filepath.Join(t.TempDir(), "snapshot")
	first, err := copyLeanProjectSnapshot(projectRoot, firstSnapshotRoot, "MathCaseCandidate.lean", generated)
	if err != nil {
		t.Fatalf("copyLeanProjectSnapshot() error = %v", err)
	}
	if err := first.Validate(first.SHA256); err != nil {
		t.Fatalf("Validate(synthetic complete snapshot) error = %v", err)
	}
	if first.FileCount != int64(len(files)+1) || first.LeanSourceFileCount != 3 || first.CompiledArtifactFileCount != 1 {
		t.Fatalf("snapshot counts = files %d, Lean sources %d, compiled artifacts %d; want %d, 3, 1", first.FileCount, first.LeanSourceFileCount, first.CompiledArtifactFileCount, len(files)+1)
	}
	for name, want := range map[string]string{
		"MathCaseCandidate.lean": string(generated),
		filepath.Join(".lake", "packages", "syntheticdep", ".lake", "build", "lib", "lean", "SyntheticDep.olean"): files[filepath.Join(".lake", "packages", "syntheticdep", ".lake", "build", "lib", "lean", "SyntheticDep.olean")],
	} {
		got, err := os.ReadFile(filepath.Join(firstSnapshotRoot, name))
		if err != nil || string(got) != string(want) {
			t.Fatalf("snapshot file %q = %q, err=%v; want original bytes", name, got, err)
		}
	}
	if _, err := os.Stat(filepath.Join(projectRoot, "MathCaseCandidate.lean")); !os.IsNotExist(err) {
		t.Fatalf("candidate file was written to canonical source project, stat error = %v", err)
	}

	mutatedProject := filepath.Join(t.TempDir(), "project")
	if err := copyTestProjectTree(projectRoot, mutatedProject); err != nil {
		t.Fatal(err)
	}
	artifactPath := filepath.Join(mutatedProject, ".lake", "packages", "syntheticdep", ".lake", "build", "lib", "lean", "SyntheticDep.olean")
	if err := os.WriteFile(artifactPath, []byte("different compiled artifact"), 0o644); err != nil {
		t.Fatal(err)
	}
	second, err := copyLeanProjectSnapshot(mutatedProject, filepath.Join(t.TempDir(), "snapshot"), "MathCaseCandidate.lean", generated)
	if err != nil {
		t.Fatalf("copyLeanProjectSnapshot(changed artifact) error = %v", err)
	}
	if first.SHA256 == second.SHA256 {
		t.Fatal("project snapshot digest did not change when a compiled dependency artifact changed")
	}
}

func TestLeanProjectSnapshotRejectsSymlinksAndGeneratedSourceCollision(t *testing.T) {
	t.Parallel()
	projectRoot := filepath.Join(t.TempDir(), "project")
	if err := os.MkdirAll(projectRoot, 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(projectRoot, "lean-toolchain"), []byte("leanprover/lean4:v4.33.1\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(projectRoot, "Candidate.lean"), []byte("existing"), 0o644); err != nil {
		t.Fatal(err)
	}
	if _, err := copyLeanProjectSnapshot(projectRoot, filepath.Join(t.TempDir(), "collision"), "Candidate.lean", []byte("generated")); err == nil || !strings.Contains(err.Error(), "overwrite project file") {
		t.Fatalf("copyLeanProjectSnapshot(collision) error = %v, want overwrite refusal", err)
	}
	if _, err := copyLeanProjectSnapshot(projectRoot, filepath.Join(t.TempDir(), "bad-name"), "../Candidate.lean", []byte("generated")); err == nil {
		t.Fatal("copyLeanProjectSnapshot accepted an out-of-root generated filename")
	}
	if err := os.Remove(filepath.Join(projectRoot, "Candidate.lean")); err != nil {
		t.Fatal(err)
	}
	target := filepath.Join(t.TempDir(), "external.lean")
	if err := os.WriteFile(target, []byte("outside project"), 0o644); err != nil {
		t.Fatal(err)
	}
	linkPath := filepath.Join(projectRoot, "external.lean")
	if err := os.Symlink(target, linkPath); err != nil {
		t.Skipf("symlink creation unavailable on this host: %v", err)
	}
	if _, err := copyLeanProjectSnapshot(projectRoot, filepath.Join(t.TempDir(), "symlink"), "Generated.lean", []byte("generated")); err == nil || !strings.Contains(err.Error(), "symlink is not allowed") {
		t.Fatalf("copyLeanProjectSnapshot(symlink) error = %v, want symlink refusal", err)
	}
}

func TestBuildLeanSnapshotInventoryRejectsAncestorSymlink(t *testing.T) {
	t.Parallel()
	targetRoot := filepath.Join(t.TempDir(), "target")
	projectRoot := filepath.Join(targetRoot, "project")
	if err := os.MkdirAll(projectRoot, 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(projectRoot, "Main.lean"), []byte("example : True := by trivial\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	linkRoot := filepath.Join(t.TempDir(), "linked-root")
	if err := os.Symlink(targetRoot, linkRoot); err != nil {
		t.Skipf("symlink creation unavailable on this host: %v", err)
	}
	if _, _, err := BuildLeanSnapshotInventory(filepath.Join(linkRoot, "project"), false); err == nil || !strings.Contains(err.Error(), "root path traverses a link") {
		t.Fatalf("BuildLeanSnapshotInventory(ancestor symlink) error = %v, want ancestor-link refusal", err)
	}
}

func TestLeanSandboxBuildsInProjectSourceAndSeedsBoundedLakeTmpfs(t *testing.T) {
	t.Parallel()
	projectRoot := filepath.Join(t.TempDir(), "project")
	if err := os.MkdirAll(filepath.Join(projectRoot, ".lake", "build", "lib", "lean"), 0o755); err != nil {
		t.Fatal(err)
	}
	if err := os.MkdirAll(filepath.Join(projectRoot, ".lake", "packages", "dep", ".lake", "build", "lib", "lean"), 0o755); err != nil {
		t.Fatal(err)
	}
	for name, content := range map[string]string{
		"lean-toolchain": "leanprover/lean4:v4.33.1\n",
		"lakefile.toml":  "name = \"synthetic\"\n",
		filepath.Join(".lake", "build", "lib", "lean", "Seed.olean"):                            "synthetic root cache",
		filepath.Join(".lake", "packages", "dep", "Dep.lean"):                                   "namespace Dep\nend Dep\n",
		filepath.Join(".lake", "packages", "dep", ".lake", "build", "lib", "lean", "Dep.olean"): "synthetic dependency cache",
	} {
		path := filepath.Join(projectRoot, name)
		if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(path, []byte(content), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	workspace := t.TempDir()
	snapshotRoot := filepath.Join(workspace, "project")
	if _, err := copyLeanProjectSnapshot(projectRoot, snapshotRoot, "MathCaseCandidate.lean", []byte("import Init\nexample : True := by trivial\n")); err != nil {
		t.Fatal(err)
	}
	cachePlan, err := prepareLeanProjectLakeCache(snapshotRoot, workspace)
	if err != nil {
		t.Fatalf("prepareLeanProjectLakeCache() error = %v", err)
	}
	if !samePath(cachePlan.seedPath, filepath.Join(workspace, "lake-cache", "workspace-lake-seed")) ||
		!samePath(cachePlan.packagesPath, filepath.Join(snapshotRoot, ".lake", "packages")) {
		t.Fatalf("cache plan = %#v; want separate cache seed and immutable package source", cachePlan)
	}
	if _, err := os.Stat(filepath.Join(cachePlan.seedPath, "build", "lib", "lean", "Seed.olean")); err != nil {
		t.Fatalf("cache seed is missing the captured root .lake artifact: %v", err)
	}
	if _, err := os.Stat(filepath.Join(cachePlan.seedPath, "packages")); !os.IsNotExist(err) {
		t.Fatalf("cache seed unexpectedly contains dependency sources, stat error = %v", err)
	}
	artifactRoot, err := prepareLeanArtifactOutput(workspace)
	if err != nil {
		t.Fatal(err)
	}
	image := "sha256:" + strings.Repeat("b", 64)
	argv, err := buildLeanSandboxArgs(image, "mathcase-test", snapshotRoot, "MathCaseCandidate.lean", cachePlan, artifactRoot, "MathCaseCandidate.olean", []string{"-o", "/mathcase/output/MathCaseCandidate.olean"})
	if err != nil {
		t.Fatalf("buildLeanSandboxArgs() error = %v", err)
	}
	execution := LeanSandboxExecution{DockerExecutable: "docker", ExecutionMode: LeanExecutionModeDirect, CommandArgv: append([]string{"docker"}, argv...)}
	if err := validateLeanProjectInvocation(execution, "MathCaseCandidate.lean", "MathCaseCandidate.olean", true); err != nil {
		t.Fatalf("validateLeanProjectInvocation() error = %v", err)
	}
	args := execution.CommandArgv[1:]
	canonicalMountSource := func(path string) string {
		t.Helper()
		canonical, err := fsutil.CanonicalPath(path)
		if err != nil {
			t.Fatalf("CanonicalPath(%q) error = %v", path, err)
		}
		return filepath.ToSlash(canonical)
	}
	for _, expected := range []string{
		"type=bind,source=" + canonicalMountSource(snapshotRoot) + ",target=/mathcase/project,readonly",
		leanProjectLakeTmpfsSpec,
		"type=bind,source=" + canonicalMountSource(cachePlan.seedPath) + ",target=/mathcase/cache-seed,readonly",
		"type=bind,source=" + canonicalMountSource(cachePlan.packagesPath) + ",target=/mathcase/project/.lake/packages,readonly",
		"type=bind,source=" + canonicalMountSource(artifactRoot) + ",target=/mathcase/output",
		"/mathcase/project/MathCaseCandidate.lean", "--env=LEAN_PATH=/mathcase/project/.lake/build/lib/lean:/mathcase/project/.lake/packages/dep/.lake/build/lib/lean", "--entrypoint=sh", "-c", "cp -R /mathcase/cache-seed/. /mathcase/project/.lake/ && exec lean \"$@\"", "mathcase-lean-cache-seed", "-o", "/mathcase/output/MathCaseCandidate.olean",
		"fsize=16777216:16777216",
	} {
		if !containsArg(args, expected) {
			t.Errorf("Docker argv is missing expected source/cache/artifact boundary %q", expected)
		}
	}
	if containsArgPrefix(args, "type=bind,source=", ",target=/mathcase/input,readonly") {
		t.Fatal("Docker argv still has a separate generated-source input mount")
	}

	versionArgv, err := buildLeanSandboxArgs(image, "mathcase-version-test", snapshotRoot, "", cachePlan, "", "", []string{"--version"})
	if err != nil {
		t.Fatalf("buildLeanSandboxArgs(version probe) error = %v", err)
	}
	versionArgs := append([]string(nil), versionArgv...)
	if !containsArg(versionArgs, leanProjectLakeTmpfsSpec) ||
		!containsArgPrefix(versionArgs, "type=bind,source=", ",target=/mathcase/cache-seed,readonly") ||
		!containsArg(versionArgs, "--entrypoint=sh") ||
		!containsConsecutiveArgs(versionArgs, "cp -R /mathcase/cache-seed/. /mathcase/project/.lake/ && exec lean \"$@\"", "mathcase-lean-cache-seed") ||
		!containsArg(versionArgs, "--env=LEAN_PATH=/mathcase/project/.lake/build/lib/lean:/mathcase/project/.lake/packages/dep/.lake/build/lib/lean") ||
		!containsArg(versionArgs, "--version") || containsArg(versionArgs, "lake") {
		t.Fatal("version probe does not use direct Lean with the disposable cache and pinned module path")
	}
	if err := validateLeanProjectMountArgs(versionArgs); err != nil {
		t.Fatalf("validateLeanProjectMountArgs(version probe) error = %v", err)
	}

	badPlan := cachePlan
	badPlan.packagesPath = filepath.Join(workspace, "packages-outside-project")
	if err := validateLeanLakeCachePlan(snapshotRoot, badPlan); err == nil {
		t.Fatal("validateLeanLakeCachePlan accepted a package source outside the project root")
	}
}

func copyTestProjectTree(sourceRoot, destinationRoot string) error {
	return filepath.WalkDir(sourceRoot, func(path string, entry os.DirEntry, walkErr error) error {
		if walkErr != nil {
			return walkErr
		}
		relative, err := filepath.Rel(sourceRoot, path)
		if err != nil {
			return err
		}
		if relative == "." {
			return os.MkdirAll(destinationRoot, 0o755)
		}
		destination := filepath.Join(destinationRoot, relative)
		if entry.IsDir() {
			return os.MkdirAll(destination, 0o755)
		}
		data, err := os.ReadFile(path)
		if err != nil {
			return err
		}
		if err := os.MkdirAll(filepath.Dir(destination), 0o755); err != nil {
			return err
		}
		return os.WriteFile(destination, data, 0o644)
	})
}
