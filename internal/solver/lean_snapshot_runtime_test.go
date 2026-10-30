package solver

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"
)

const dockerLaunchMarkerEnv = "MATHCASE_TEST_DOCKER_LAUNCH_MARKER"

func init() {
	marker := os.Getenv(dockerLaunchMarkerEnv)
	if marker == "" || !strings.Contains(strings.Join(os.Args[1:], " "), "image inspect") {
		return
	}
	_ = os.WriteFile(marker, []byte(strings.Join(os.Args[1:], " ")), 0o600)
	os.Exit(0)
}

func TestLeanSnapshotManifestIsAnExplicitInvocationInput(t *testing.T) {
	base := newTestLeanSnapshot(t)
	t.Setenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST", base.ManifestPath)
	verifier := LeanVerifier{DockerExecutable: filepath.Join(t.TempDir(), "missing-docker.exe")}

	_, err := verifier.prepareLeanSnapshotRuntime(t.Context(), []string{"Init"})
	if err == nil || !strings.Contains(err.Error(), "a qualified snapshot manifest is required") {
		t.Fatalf("prepareLeanSnapshotRuntime(with ambient manifest only) error = %v, want fail-closed explicit-input refusal", err)
	}
}

func TestLeanVerifierPreflightsSnapshotImageAndImportClosure(t *testing.T) {
	base := newTestLeanSnapshot(t)
	dockerPath := filepath.Join(t.TempDir(), "docker.exe")
	if err := os.WriteFile(dockerPath, []byte("test stub"), 0o600); err != nil {
		t.Fatal(err)
	}
	verifier := LeanVerifier{
		DockerExecutable:     dockerPath,
		SandboxImage:         base.Manifest.ImageDigest,
		SnapshotManifestPath: base.ManifestPath,
		ExpectedToolchain:    defaultLeanToolchain,
	}
	if err := verifier.ValidateSnapshotConfiguration([]string{"Init"}); err != nil {
		t.Fatalf("ValidateSnapshotConfiguration(valid snapshot and import) error = %v, want success", err)
	}

	verifier.SandboxImage = "sha256:" + strings.Repeat("d", 64)
	if err := verifier.ValidateSnapshotConfiguration([]string{"Init"}); err == nil || !strings.Contains(err.Error(), "image identity") {
		t.Fatalf("ValidateSnapshotConfiguration(mismatched image) error = %v, want image-identity refusal", err)
	}

	verifier.SandboxImage = base.Manifest.ImageDigest
	if err := verifier.ValidateSnapshotConfiguration([]string{"Mathlib.Combinatorics.SimpleGraph.Tutte"}); err == nil || !strings.Contains(err.Error(), "outside the qualified snapshot import closure") {
		t.Fatalf("ValidateSnapshotConfiguration(unqualified import) error = %v, want import-closure refusal", err)
	}
}

func TestLeanVersionProbeDoesNotConsumeProofTimeoutBudget(t *testing.T) {
	const timeout = 600 * time.Millisecond
	parent := context.Background()

	versionCtx, cancelVersion := newLeanPhaseContext(parent, timeout)
	versionDeadline, ok := versionCtx.Deadline()
	if !ok {
		t.Fatal("version probe context has no timeout")
	}
	time.Sleep(200 * time.Millisecond)
	cancelVersion()

	proofCtx, cancelProof := newLeanPhaseContext(parent, timeout)
	defer cancelProof()
	proofDeadline, ok := proofCtx.Deadline()
	if !ok {
		t.Fatal("proof context has no timeout")
	}
	remaining := time.Until(proofDeadline)
	if remaining < 500*time.Millisecond {
		t.Fatalf("proof phase inherited the version-probe delay: remaining timeout %s, version deadline %s", remaining, versionDeadline)
	}
	if proofCtx.Err() != nil {
		t.Fatalf("fresh proof phase context is already done: %v", proofCtx.Err())
	}
}

func TestLeanSnapshotManifestReopensAllPinnedArtifacts(t *testing.T) {
	base := newTestLeanSnapshot(t)
	manifest, path, digest, err := ReadLeanSnapshotManifest(base.ManifestPath, base.Manifest.ImageDigest)
	if err != nil {
		t.Fatalf("ReadLeanSnapshotManifest(valid fixture) error = %v", err)
	}
	if path != base.ManifestPath || digest != base.ManifestSHA256 || manifest.SnapshotID != base.Manifest.SnapshotID {
		t.Fatalf("ReadLeanSnapshotManifest() = path %q digest %q ID %q; want fixture identity", path, digest, manifest.SnapshotID)
	}
	if manifest.SourceSnapshot.CompiledArtifactFileCount != 0 || manifest.ProjectSnapshot.CompiledArtifactFileCount == 0 {
		t.Fatalf("snapshot inventory source/artifact counts = %d/%d; want source 0 and built image positive", manifest.SourceSnapshot.CompiledArtifactFileCount, manifest.ProjectSnapshot.CompiledArtifactFileCount)
	}
	if err := os.WriteFile(filepath.Join(base.ProjectRoot, "Main.lean"), []byte("import Init\nexample : False := by trivial\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	if _, _, _, err := ReadLeanSnapshotManifest(base.ManifestPath, base.Manifest.ImageDigest); err != nil {
		t.Fatalf("ReadLeanSnapshotManifest(source directory mutation) error = %v, want external manifest to remain independently reopenable", err)
	}
	corruptFileSameLength(t, base.Manifest.InventoryPath)
	if _, _, _, err := ReadLeanSnapshotManifest(base.ManifestPath, base.Manifest.ImageDigest); err == nil || !strings.Contains(err.Error(), "digest") {
		t.Fatalf("ReadLeanSnapshotManifest(corrupt compiled inventory) error = %v, want digest refusal", err)
	}
}

func TestLeanSnapshotWorkingInputRefusesSameLengthChangeBeforeDockerInspect(t *testing.T) {
	base := newTestLeanSnapshot(t)
	compiled := filepath.Join(base.ProjectRoot, ".lake", "build", "lib", "lean", "Init.olean")
	if err := os.Remove(compiled); err != nil {
		t.Fatal(err)
	}
	if err := os.RemoveAll(filepath.Dir(filepath.Dir(filepath.Dir(filepath.Dir(compiled))))); err != nil {
		t.Fatal(err)
	}
	if err := validateLeanWorkingProject(base.ProjectRoot, base.Manifest.SourceSnapshot); err != nil {
		t.Fatalf("validateLeanWorkingProject(clean pinned source) error = %v", err)
	}
	mainPath := filepath.Join(base.ProjectRoot, "Main.lean")
	before, err := os.Stat(mainPath)
	if err != nil {
		t.Fatal(err)
	}
	original, err := os.ReadFile(mainPath)
	if err != nil {
		t.Fatal(err)
	}
	changed := []byte(strings.Replace(string(original), "True", "Prop", 1))
	if len(changed) != len(original) {
		t.Fatal("same-size mutation fixture changed its byte length")
	}
	if err := os.WriteFile(mainPath, changed, 0o644); err != nil {
		t.Fatal(err)
	}
	if err := os.Chtimes(mainPath, before.ModTime(), before.ModTime()); err != nil {
		t.Fatal(err)
	}
	if err := validateLeanWorkingProject(base.ProjectRoot, base.Manifest.SourceSnapshot); err == nil {
		t.Fatal("validateLeanWorkingProject(same-size timestamp-restored edit) = nil, want manifest mismatch")
	}
	if err := os.WriteFile(mainPath, original, 0o644); err != nil {
		t.Fatal(err)
	}
	docker, err := os.Executable()
	if err != nil {
		t.Fatalf("resolve test executable for Docker launch probe: %v", err)
	}
	launchMarker := filepath.Join(t.TempDir(), "docker-launch.json")
	t.Setenv(dockerLaunchMarkerEnv, launchMarker)
	verifier := LeanVerifier{
		DockerExecutable:     docker,
		SandboxImage:         base.Manifest.ImageDigest,
		SnapshotManifestPath: base.ManifestPath,
		ProjectRoot:          base.ProjectRoot,
		ExpectedToolchain:    defaultLeanToolchain,
		Imports:              []string{"Init"},
	}
	changed = []byte(strings.Replace(string(original), "True", "Prop", 1))
	if err := os.WriteFile(mainPath, changed, 0o644); err != nil {
		t.Fatal(err)
	}
	_, err = verifier.prepareLeanSnapshotRuntime(t.Context(), []string{"Init"})
	if err == nil || !strings.Contains(err.Error(), "working project does not match") {
		t.Fatalf("prepareLeanSnapshotRuntime(corrupt working input) error = %v, want refusal before image inspection", err)
	}
	if _, err := os.Stat(launchMarker); !os.IsNotExist(err) {
		t.Fatalf("corrupted working project launched the Docker probe; marker stat error = %v", err)
	}
	t.Logf("deliberate same-size timestamp-restored source corruption refused; execution_started=false; Docker launch marker absent")
}

func TestLeanCandidateInputRefusesSameLengthMutation(t *testing.T) {
	workspace := t.TempDir()
	contents := []byte("import Init\nexample : True := by trivial\n")
	path, err := writeLeanCandidateInput(workspace, "Candidate.lean", contents)
	if err != nil {
		t.Fatalf("writeLeanCandidateInput() error = %v", err)
	}
	digest := sha256.Sum256(contents)
	expected := hex.EncodeToString(digest[:])
	if err := verifyLeanCandidateInput(path, expected); err != nil {
		t.Fatalf("verifyLeanCandidateInput(unchanged) error = %v", err)
	}
	info, err := os.Stat(path)
	if err != nil {
		t.Fatal(err)
	}
	changed := []byte(strings.Replace(string(contents), "True", "Fall", 1))
	if len(changed) != len(contents) {
		t.Fatal("candidate mutation fixture changed its byte length")
	}
	if err := os.Chmod(path, 0o644); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(path, changed, 0o644); err != nil {
		t.Fatal(err)
	}
	if err := os.Chtimes(path, info.ModTime(), info.ModTime()); err != nil {
		t.Fatal(err)
	}
	if err := os.Chmod(path, 0o444); err != nil {
		t.Fatal(err)
	}
	if err := verifyLeanCandidateInput(path, expected); err == nil || !strings.Contains(err.Error(), "digest") {
		t.Fatalf("verifyLeanCandidateInput(same-size mutation) error = %v, want digest refusal", err)
	}
}

func TestLeanSnapshotInvocationRequiresCandidateToBeInsideItsDeclaredRoot(t *testing.T) {
	base := newTestLeanSnapshot(t)
	workspace := t.TempDir()
	candidatePath, err := writeLeanCandidateInput(workspace, "MathCaseCandidate.lean", []byte("import Init\nexample : True := by trivial\n"))
	if err != nil {
		t.Fatal(err)
	}
	artifactRoot, err := prepareLeanArtifactOutput(workspace)
	if err != nil {
		t.Fatal(err)
	}
	argsWithRoot, err := buildLeanSnapshotDockerArgs(base.Manifest.ImageDigest, "mathcase-root-check", base.Manifest,
		candidatePath, "MathCaseCandidate.lean", artifactRoot, "MathCaseCandidate.olean",
		[]string{"--root=/mathcase/input", "-o", "/mathcase/output/MathCaseCandidate.olean", "/mathcase/input/MathCaseCandidate.lean"})
	if err != nil {
		t.Fatal(err)
	}
	execution := LeanSandboxExecution{DockerExecutable: "docker", ContainerName: "mathcase-root-check", CommandArgv: append([]string{"docker"}, argsWithRoot...)}
	if err := validateLeanSnapshotInvocation(execution, base.Manifest.ImageDigest, strings.Join(base.Manifest.ModuleSearchPath, ":"),
		"MathCaseCandidate.lean", "MathCaseCandidate.olean", true); err != nil {
		t.Fatalf("validateLeanSnapshotInvocation(root-contained candidate) error = %v", err)
	}
	argsWithoutRoot, err := buildLeanSnapshotDockerArgs(base.Manifest.ImageDigest, "mathcase-root-check", base.Manifest,
		candidatePath, "MathCaseCandidate.lean", artifactRoot, "MathCaseCandidate.olean",
		[]string{"-o", "/mathcase/output/MathCaseCandidate.olean", "/mathcase/input/MathCaseCandidate.lean"})
	if err != nil {
		t.Fatal(err)
	}
	execution.CommandArgv = append([]string{"docker"}, argsWithoutRoot...)
	if err := validateLeanSnapshotInvocation(execution, base.Manifest.ImageDigest, strings.Join(base.Manifest.ModuleSearchPath, ":"),
		"MathCaseCandidate.lean", "MathCaseCandidate.olean", true); err == nil || !strings.Contains(err.Error(), "root-contained") {
		t.Fatalf("validateLeanSnapshotInvocation(candidate outside declared root) error = %v, want refusal", err)
	}
}

func TestLeanCompilerRejectedDiagnosticDoesNotTreatSetupFailureAsProofRejection(t *testing.T) {
	if leanCompilerRejectedDiagnostic("input file must be contained in root directory (/mathcase/work)") {
		t.Fatal("Lean path setup error was classified as a rejected proof")
	}
	if !leanCompilerRejectedDiagnostic("MathCaseCandidate.lean:3:0: error: unsolved goals") {
		t.Fatal("Lean compiler error was not recognized as a proof rejection")
	}
}

func corruptFileSameLength(t *testing.T, path string) {
	t.Helper()
	info, err := os.Stat(path)
	if err != nil {
		t.Fatal(err)
	}
	data, err := os.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	if len(data) == 0 {
		t.Fatal("corruption target is empty")
	}
	data[len(data)/2] ^= 1
	if err := os.Chmod(path, 0o644); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(path, data, 0o644); err != nil {
		t.Fatal(err)
	}
	if err := os.Chtimes(path, info.ModTime(), info.ModTime()); err != nil {
		t.Fatal(err)
	}
}

func TestLeanSnapshotImageCheckRejectsMismatchedLabels(t *testing.T) {
	base := newTestLeanSnapshot(t)
	check := testSnapshotImageCheck(base.Manifest)
	check.Labels["org.mathcase.snapshot.build-target"] = "other"
	if err := validateLeanSnapshotImageCheck(check, base.Manifest, base.Manifest.ImageDigest); err == nil {
		t.Fatal("validateLeanSnapshotImageCheck(mismatched label) = nil, want refusal")
	}
	check = testSnapshotImageCheck(base.Manifest)
	check.FinishedAtUTC = check.StartedAtUTC.Add(-time.Second)
	if err := validateLeanSnapshotImageCheck(check, base.Manifest, base.Manifest.ImageDigest); err == nil {
		t.Fatal("validateLeanSnapshotImageCheck(reversed process times) = nil, want refusal")
	}
}
