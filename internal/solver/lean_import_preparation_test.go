package solver

import (
	"context"
	"encoding/binary"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

type importPreparationFixture struct {
	v            LeanVerifier
	runtime      leanSnapshotRuntime
	receipt      LeanImportPreparationReceipt
	header, deps []byte
	root, packet string
	now          time.Time
}

func TestLeanImportDockerExecutableCanonicalIdentity(t *testing.T) {
	executable, err := os.Executable()
	if err != nil {
		t.Fatal(err)
	}
	alias := filepath.Dir(executable) + string(filepath.Separator) + "." + string(filepath.Separator) + filepath.Base(executable)
	if os.PathSeparator == '\\' {
		alias = strings.TrimSuffix(executable, filepath.Ext(executable)) + strings.ToUpper(filepath.Ext(executable))
	}
	expected, err := filepath.EvalSymlinks(executable)
	if err != nil {
		t.Fatal(err)
	}
	v := LeanVerifier{DockerExecutable: alias, SandboxImage: leanImportImage}
	actual, _, err := v.resolveLeanSandbox()
	if err != nil || actual != expected {
		t.Fatalf("resolveLeanSandbox(filesystem executable alias) = %q/%v, want exact canonical %q", actual, err, expected)
	}
}

func TestLeanImportEnvironmentCrossLanguageContract(t *testing.T) {
	runtime := leanSnapshotRuntime{Image: leanImportImage, ManifestPath: filepath.FromSlash("C:/MathCase/snapshot.json"), ManifestSHA256: strings.Repeat("a", 64),
		Manifest: LeanSnapshotManifest{SnapshotID: strings.Repeat("b", 64), Toolchain: defaultLeanToolchain, ModuleSearchPath: []string{"/mathcase/project/.lake/build/lib/lean"}}}
	got := leanImportEnvironment(runtime, []string{"Mathlib.Data.Nat.Prime.Basic"}, leanImportSHA([]byte("cross-language fixture worker")))
	if got != "5b95224abc0f85e3355f882997dd32cfcb69c67a0138911d4690e6e69e3d3db8" {
		t.Fatalf("Go/Python preparation environment contract = %s", got)
	}
}

type cancelDuringImportWrite struct {
	context.Context
	checks int
}

func (c *cancelDuringImportWrite) Err() error {
	c.checks++
	if c.checks > 1 {
		return context.Canceled
	}
	return nil
}

func TestLeanImportCopyCancellationRemovesPartialFile(t *testing.T) {
	filename := filepath.Join(t.TempDir(), "copy.snap")
	ctx := &cancelDuringImportWrite{Context: t.Context()}
	if err := writeLeanImportCopy(ctx, filename, make([]byte, 256<<10)); err != context.Canceled {
		t.Fatalf("writeLeanImportCopy(cancel during chunks) = %v", err)
	}
	if _, err := os.Stat(filename); !os.IsNotExist(err) {
		t.Fatalf("canceled partial copy still exists: %v", err)
	}
}

// All native bytes and subprocess output here are deliberately synthetic.
// They test validation/dispatch boundaries, not mathematical acceptance.
func newImportPreparationFixture(t *testing.T) importPreparationFixture {
	t.Helper()
	base := newTestLeanSnapshot(t)
	manifest := base.Manifest
	manifest.ImageDigest, manifest.ProjectSnapshot.ImageDigest = leanImportImage, leanImportImage
	manifest.AllowedImports = []string{"Mathlib.Data.Nat.Prime.Basic"}
	data, err := os.ReadFile(manifest.BuildReceiptPath)
	if err != nil {
		t.Fatal(err)
	}
	var build LeanSnapshotBuildReceipt
	if err := json.Unmarshal(data, &build); err != nil {
		t.Fatal(err)
	}
	build.ImageDigest, build.PostBuildProjectSnapshot.ImageDigest = leanImportImage, leanImportImage
	data, _ = json.Marshal(build)
	if err := os.WriteFile(manifest.BuildReceiptPath, data, 0600); err != nil {
		t.Fatal(err)
	}
	manifest.BuildReceiptSHA256 = leanImportSHA(data)
	manifest.SnapshotID = ComputeLeanSnapshotID(manifest.SourceManifestSHA256, manifest.BuildReceiptSHA256, leanImportImage, manifest.ProjectSnapshot.SHA256)
	data, _ = json.Marshal(manifest)
	if err := os.WriteFile(base.ManifestPath, data, 0600); err != nil {
		t.Fatal(err)
	}
	root := t.TempDir()
	if err := os.Mkdir(filepath.Join(root, "scripts"), 0700); err != nil {
		t.Fatal(err)
	}
	worker := []byte("synthetic unit producer source, not a Lean execution")
	if err := os.WriteFile(filepath.Join(root, "scripts", "lean_runtime_warm.py"), worker, 0600); err != nil {
		t.Fatal(err)
	}
	executable, err := os.Executable()
	if err != nil {
		t.Fatal(err)
	}
	runtime := leanSnapshotRuntime{Imports: manifest.AllowedImports, Docker: executable, Image: leanImportImage, Manifest: manifest, ManifestPath: base.ManifestPath, ManifestSHA256: leanImportSHA(data)}
	now := time.Now().UTC()
	zero := 0
	library := "/opt/lean/bin/../lib/lean/libleanshared.so"
	header := make([]byte, 96+8+4+4+12+len(library))
	copy(header, "olean")
	header[5], header[6] = 3, 1
	copy(header[7:40], "4.33.1")
	copy(header[40:80], leanImportRevision)
	binary.LittleEndian.PutUint64(header[88:96], 8)
	binary.LittleEndian.PutUint32(header[108:112], 1)
	binary.LittleEndian.PutUint32(header[120:124], uint32(len(library)))
	copy(header[124:], library)
	deps := []byte(`[{"olean":"/opt/lean/lib/lean/Init.olean"}]`)
	owner := strings.Repeat("1", 32)
	container := "mathcase-warm-" + owner[:12] + "-imports-1-unit"
	receipt := LeanImportPreparationReceipt{
		SchemaVersion: leanImportPreparationSchema, EvidenceID: "import-" + strings.Repeat("2", 32),
		RecordedAtUTC: now.Add(-time.Second), ExpiresAtUTC: now.Add(-time.Second).Add(leanImportLifetime),
		Image: leanImportImage, ImageID: leanImportImage, ManifestPath: runtime.ManifestPath, ManifestSHA256: runtime.ManifestSHA256, SnapshotID: manifest.SnapshotID,
		Toolchain: defaultLeanToolchain, LeanRevision: leanImportRevision, Imports: manifest.AllowedImports, ModuleSearchPath: manifest.ModuleSearchPath,
		CompilerOptions: leanImportOptions, ProducerSource: leanImportSource(manifest.AllowedImports), WorkerSource: worker, WorkerSourceSHA256: leanImportSHA(worker),
		HeaderSHA256: leanImportSHA(header), HeaderBytes: int64(len(header)), HeaderPrefix: append([]byte(nil), header[:96]...), Libraries: []string{library},
		DependenciesSHA256: leanImportSHA(deps), DependenciesBytes: int64(len(deps)), Status: "PASSED", StdoutSHA256: leanImportSHA(nil), StderrSHA256: leanImportSHA(nil),
		SandboxExecution: LeanSandboxExecution{DockerExecutable: executable, ContainerName: container, ExecutionMode: LeanExecutionModeDirect, StartedAtUTC: now.Add(-3 * time.Second), FinishedAtUTC: now.Add(-2 * time.Second), ExitCode: &zero},
	}
	receipt.ProducerSourceSHA256 = leanImportSHA([]byte(receipt.ProducerSource))
	receipt.EnvironmentSHA256 = leanImportEnvironment(runtime, receipt.Imports, receipt.WorkerSourceSHA256)
	baseArgs := leanImportDockerPrefix(executable, container, leanImportImage, strings.Join(manifest.ModuleSearchPath, ":"), "fsize=134217728:134217728")
	args := append([]string(nil), baseArgs[:5]...)
	args = append(args, "--label", "com.mathcase.component=lean-import-preparation", "--label", "com.mathcase.worker-owner="+owner, "--label", "com.mathcase.environment-sha256="+receipt.EnvironmentSHA256)
	args = append(args, baseArgs[5:]...)
	args = append(args, "--mount", "type=bind,source="+filepath.ToSlash(filepath.Join(root, "WarmImports.lean"))+",target=/mathcase/input/WarmImports.lean,readonly",
		"--mount", "type=bind,source="+filepath.ToSlash(filepath.Join(root, "output"))+",target=/mathcase/output", "--entrypoint=lean", leanImportImage,
		"--root=/mathcase/input", "--incr-header-save=/mathcase/output/imports.snap", "/mathcase/input/WarmImports.lean")
	receipt.SandboxExecution.CommandArgv = args
	packet := filepath.Join(root, "data", "local", "state", "lean-runtime-warm", "import-preparations", receipt.EnvironmentSHA256, receipt.EvidenceID)
	if err := os.MkdirAll(packet, 0700); err != nil {
		t.Fatal(err)
	}
	data, _ = json.Marshal(receipt)
	for name, contents := range map[string][]byte{"preparation.json": data, "imports.snap": header, "imports.snap.deps": deps} {
		if err := os.WriteFile(filepath.Join(packet, name), contents, 0600); err != nil {
			t.Fatal(err)
		}
	}
	v := LeanVerifier{DockerExecutable: executable, SandboxImage: leanImportImage, SnapshotManifestPath: base.ManifestPath, Imports: receipt.Imports,
		ImportPreparationReceiptPath: filepath.Join(packet, "preparation.json"), importPreparationRoot: root, WorkspaceRoot: t.TempDir(), ReceiptRoot: t.TempDir(), Now: func() time.Time { return now }, Timeout: 10 * time.Second}
	return importPreparationFixture{v: v, runtime: runtime, receipt: receipt, header: header, deps: deps, root: root, packet: packet, now: now}
}

func TestLeanImportPreparationValidationAndRefusal(t *testing.T) {
	f := newImportPreparationFixture(t)
	if err := validateLeanImportReceipt(f.receipt, f.runtime, f.receipt.Imports, f.now); err != nil {
		t.Fatalf("validateLeanImportReceipt(valid fixture) = %v", err)
	}
	if err := validateLeanImportHeader(f.header, f.receipt); err != nil {
		t.Fatalf("validateLeanImportHeader(valid synthetic layout) = %v", err)
	}
	cases := []struct {
		name   string
		mutate func(*LeanImportPreparationReceipt)
	}{
		{"future", func(r *LeanImportPreparationReceipt) {
			r.RecordedAtUTC = f.now.Add(time.Second)
			r.ExpiresAtUTC = r.RecordedAtUTC.Add(leanImportLifetime)
		}},
		{"expired", func(r *LeanImportPreparationReceipt) {
			r.RecordedAtUTC = f.now.Add(-25 * time.Hour)
			r.ExpiresAtUTC = r.RecordedAtUTC.Add(leanImportLifetime)
		}},
		{"image", func(r *LeanImportPreparationReceipt) { r.Image = "sha256:" + strings.Repeat("a", 64) }},
		{"manifest", func(r *LeanImportPreparationReceipt) { r.ManifestSHA256 = strings.Repeat("a", 64) }},
		{"imports", func(r *LeanImportPreparationReceipt) { r.Imports = []string{"Init"} }},
		{"options", func(r *LeanImportPreparationReceipt) { r.CompilerOptions = "invented trust zero" }},
		{"source", func(r *LeanImportPreparationReceipt) { r.ProducerSource += "theorem cached : False := by sorry\n" }},
		{"worker", func(r *LeanImportPreparationReceipt) { r.WorkerSourceSHA256 = strings.Repeat("a", 64) }},
		{"failed despite artifacts", func(r *LeanImportPreparationReceipt) { r.Status = "FAILED" }},
		{"truncated", func(r *LeanImportPreparationReceipt) { r.OutputTruncated = true }},
		{"timeout", func(r *LeanImportPreparationReceipt) { r.SandboxExecution.TimedOut = true }},
		{"diagnostics", func(r *LeanImportPreparationReceipt) { r.StderrBytes = 1 }},
		{"header bound", func(r *LeanImportPreparationReceipt) { r.HeaderBytes = leanImportHeaderLimit + 1 }},
		{"deps bound", func(r *LeanImportPreparationReceipt) { r.DependenciesBytes = leanImportDepsLimit + 1 }},
		{"unsafe producer argv", func(r *LeanImportPreparationReceipt) {
			r.SandboxExecution.CommandArgv = append(r.SandboxExecution.CommandArgv, "--trust=0")
		}},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			data, _ := json.Marshal(f.receipt)
			var r LeanImportPreparationReceipt
			_ = json.Unmarshal(data, &r)
			tc.mutate(&r)
			if err := validateLeanImportReceipt(r, f.runtime, f.receipt.Imports, f.now); err == nil {
				t.Fatal("invalid import preparation accepted")
			}
		})
	}
	badDeps := []byte(`[{"olean":"/mathcase/input/Evil.olean"}]`)
	r := f.receipt
	r.DependenciesSHA256 = leanImportSHA(badDeps)
	r.DependenciesBytes = int64(len(badDeps))
	if err := validateLeanImportDependencies(badDeps, r, f.runtime.Manifest); err == nil {
		t.Fatal("mutable input dependency accepted")
	}
	bad := append([]byte(nil), f.header...)
	bad[6] ^= 1
	if validateLeanImportHeader(bad, f.receipt) == nil {
		t.Fatal("changed native header accepted")
	}
}

func TestLeanImportPreparationColdFallbackAndHistoricalEvidence(t *testing.T) {
	f := newImportPreparationFixture(t)
	workspace := t.TempDir()
	sourceSHA := leanImportSHA([]byte("synthetic consumer source"))
	p := f.v.prepareOptionalLeanImports(t.Context(), f.runtime, f.receipt.Imports, workspace, sourceSHA)
	if p == nil {
		t.Fatal("valid preparation did not stage private read-only copies")
	}
	// Historical checking uses the consumption time and retained bytes, even
	// when the current source changed and the ephemeral workspace disappeared.
	if err := os.WriteFile(filepath.Join(f.root, "scripts", "lean_runtime_warm.py"), []byte("changed current worker"), 0600); err != nil {
		t.Fatal(err)
	}
	if f.v.prepareOptionalLeanImports(t.Context(), f.runtime, f.receipt.Imports, t.TempDir(), sourceSHA) != nil {
		t.Fatal("changed producer source did not choose cold fallback")
	}
	if err := os.Remove(p.evidence.HeaderCopyPath); err != nil {
		t.Fatal(err)
	}
	if err := os.Remove(p.evidence.DependenciesCopyPath); err != nil {
		t.Fatal(err)
	}
	input := filepath.Join(workspace, "MathCaseCandidate.lean")
	if err := os.WriteFile(input, []byte("synthetic consumer source"), 0600); err != nil {
		t.Fatal(err)
	}
	output, err := prepareLeanArtifactOutput(workspace)
	if err != nil {
		t.Fatal(err)
	}
	args, err := buildLeanSnapshotDockerArgs(f.runtime.Image, "mathcase-unit-consumer", f.runtime.Manifest, input, "MathCaseCandidate.lean", output, "MathCaseCandidate.olean", []string{"--root=/mathcase/input", "-o", "/mathcase/output/MathCaseCandidate.olean", "/mathcase/input/MathCaseCandidate.lean"})
	if err != nil {
		t.Fatal(err)
	}
	index := 0
	for i, a := range args {
		if a == "--entrypoint=lean" {
			index = i
			break
		}
	}
	argv := append([]string{f.runtime.Docker}, args[:index]...)
	argv = append(argv, "--mount", "type=bind,source="+filepath.ToSlash(p.evidence.HeaderCopyPath)+",target=/mathcase/prepared/imports.snap,readonly", "--mount", "type=bind,source="+filepath.ToSlash(p.evidence.DependenciesCopyPath)+",target=/mathcase/prepared/imports.snap.deps,readonly")
	argv = append(argv, args[index:index+2]...)
	argv = append(argv, "--incr-load=/mathcase/prepared/imports.snap")
	argv = append(argv, args[index+2:]...)
	execution := LeanSandboxExecution{DockerExecutable: f.runtime.Docker, ContainerName: "mathcase-unit-consumer", CommandArgv: argv, StartedAtUTC: f.now, ImportPreparation: &p.evidence}
	if err := validateLeanSnapshotInvocation(execution, f.runtime.Image, strings.Join(f.runtime.Manifest.ModuleSearchPath, ":"), "MathCaseCandidate.lean", "MathCaseCandidate.olean", true, f.runtime); err != nil {
		t.Fatalf("historical typed execution = %v, want no workspace/source/current-age dependency", err)
	}
	execution.ImportPreparation = nil
	if err := validateLeanSnapshotInvocation(execution, f.runtime.Image, strings.Join(f.runtime.Manifest.ModuleSearchPath, ":"), "MathCaseCandidate.lean", "MathCaseCandidate.olean", true); err == nil {
		t.Fatal("untyped --incr-load accepted")
	}
	ctx, cancel := context.WithCancel(t.Context())
	cancel()
	if f.v.prepareOptionalLeanImports(ctx, f.runtime, f.receipt.Imports, t.TempDir(), sourceSHA) != nil {
		t.Fatal("canceled optional preparation accepted")
	}
}

func TestLeanImportPreparationStatementAndFreshCandidates(t *testing.T) {
	f := newImportPreparationFixture(t)
	f.v.Now = nil
	marker := filepath.Join(t.TempDir(), "calls.txt")
	config := filepath.Join(t.TempDir(), "stub.json")
	data, _ := json.Marshal(map[string]any{"Image": f.runtime.Image, "Labels": testSnapshotImageCheck(f.runtime.Manifest).Labels, "Marker": marker})
	if err := os.WriteFile(config, data, 0600); err != nil {
		t.Fatal(err)
	}
	t.Setenv(statementReadinessDockerHelperEnv, config)
	problem := domain.MathProblem{ID: "warm-import-unit", Statement: "Synthetic fixture, not Lean evidence.", LeanStatement: "∀ (n : Nat), n = n"}
	statement, err := f.v.CheckProposition(t.Context(), problem)
	if err != nil || !statement.TypecheckPassed || statement.SandboxExecution.ImportPreparation == nil {
		t.Fatalf("CheckProposition(prepared) = %s/%v, want typed fresh statement", statement.Status, err)
	}
	if err := statement.ValidateCandidateArtifacts(problem); err != nil {
		t.Fatal(err)
	}
	if err := f.v.Preflight(t.Context(), "warm-import-unit-run", problem); err != nil {
		t.Fatal(err)
	}
	valid, err := f.v.Verify(t.Context(), problem, "by intro n; rfl")
	if err != nil || !valid.KernelPassed {
		t.Fatalf("Verify(valid synthetic boundary) = %#v/%v", valid, err)
	}
	invalid, err := f.v.Verify(t.Context(), problem, "by exact Nat.succ_ne_zero 0")
	if err != nil || invalid.KernelPassed {
		t.Fatalf("Verify(invalid synthetic boundary) = %#v/%v", invalid, err)
	}
	seen := map[string]bool{statement.SandboxExecution.ContainerName: true}
	for _, result := range []Verification{valid, invalid} {
		data, err := os.ReadFile(filepath.Join(f.v.ReceiptRoot, result.EvidenceID+".json"))
		if err != nil {
			t.Fatal(err)
		}
		var receipt LeanVerificationReceipt
		if err := json.Unmarshal(data, &receipt); err != nil {
			t.Fatal(err)
		}
		if receipt.SandboxExecution.ImportPreparation == nil || seen[receipt.SandboxExecution.ContainerName] {
			t.Fatal("candidate did not have independent typed prepared execution")
		}
		seen[receipt.SandboxExecution.ContainerName] = true
		if result.KernelPassed {
			if err := ValidateExecutionBoundReceipt(receipt, problem); err != nil {
				t.Fatal(err)
			}
		}
	}
	data, err = os.ReadFile(marker)
	if err != nil {
		t.Fatal(err)
	}
	if strings.Count(string(data), "--incr-load=") != 3 || strings.Count(string(data), "MathCaseRuntimePreflight.lean") != 0 {
		t.Fatalf("subprocess dispatches = %s, want one statement and two fresh candidates consuming native imports", data)
	}
}

func TestLeanImportPreparationExpiryBeforeLaunchChoosesColdCommand(t *testing.T) {
	f := newImportPreparationFixture(t)
	workspace := t.TempDir()
	source := []byte("synthetic consumer source")
	prepared := f.v.prepareOptionalLeanImports(t.Context(), f.runtime, f.receipt.Imports, workspace, leanImportSHA(source))
	if prepared == nil {
		t.Fatal("valid synthetic preparation was not staged")
	}
	r := f.receipt
	r.RecordedAtUTC = f.now.Add(-25 * time.Hour)
	r.ExpiresAtUTC = r.RecordedAtUTC.Add(leanImportLifetime)
	r.SandboxExecution.StartedAtUTC = r.RecordedAtUTC.Add(-2 * time.Second)
	r.SandboxExecution.FinishedAtUTC = r.RecordedAtUTC.Add(-time.Second)
	prepared.evidence.ProducerReceipt, _ = json.Marshal(r)
	prepared.evidence.ProducerReceiptSHA256 = leanImportSHA(prepared.evidence.ProducerReceipt)
	input, err := writeLeanCandidateInput(workspace, "MathCaseCandidate.lean", source)
	if err != nil {
		t.Fatal(err)
	}
	output, err := prepareLeanArtifactOutput(workspace)
	if err != nil {
		t.Fatal(err)
	}
	marker, config := filepath.Join(t.TempDir(), "calls"), filepath.Join(t.TempDir(), "config.json")
	data, _ := json.Marshal(map[string]any{"Image": f.runtime.Image, "Labels": testSnapshotImageCheck(f.runtime.Manifest).Labels, "Marker": marker})
	if err := os.WriteFile(config, data, 0600); err != nil {
		t.Fatal(err)
	}
	t.Setenv(statementReadinessDockerHelperEnv, config)
	_, _, err, execution := runLeanSnapshotPreparedCommand(t.Context(), f.runtime, input, "MathCaseCandidate.lean", leanImportSHA(source), output, "MathCaseCandidate.olean",
		[]string{"--root=/mathcase/input", "-o", "/mathcase/output/MathCaseCandidate.olean", "/mathcase/input/MathCaseCandidate.lean"}, defaultOutputLimit, prepared)
	if err != nil || execution.ImportPreparation != nil || strings.Contains(strings.Join(execution.CommandArgv, " "), "--incr-load") {
		t.Fatalf("expired preparation started warm command: %#v / %v", execution, err)
	}
	data, err = os.ReadFile(marker)
	if err != nil || strings.Count(string(data), "--root=/mathcase/input") != 1 {
		t.Fatalf("cold fallback executions = %s/%v, want one fresh process and no retry", data, err)
	}
}
