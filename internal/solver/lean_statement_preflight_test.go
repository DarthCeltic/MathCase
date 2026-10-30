package solver

import (
	"context"
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

const statementReadinessDockerHelperEnv = "MATHCASE_UNIT_STATEMENT_READINESS_DOCKER"

// This subprocess stub tests dispatch boundaries only. Its artifacts and
// compiler text are explicitly synthetic and never count as Lean evidence.
func init() {
	configPath := os.Getenv(statementReadinessDockerHelperEnv)
	if configPath == "" {
		return
	}
	data, err := os.ReadFile(configPath)
	if err != nil {
		os.Exit(91)
	}
	var config struct {
		Image  string
		Labels map[string]string
		Marker string
	}
	if json.Unmarshal(data, &config) != nil {
		os.Exit(92)
	}
	marker, err := os.OpenFile(config.Marker, os.O_CREATE|os.O_APPEND|os.O_WRONLY, 0600)
	if err != nil {
		os.Exit(93)
	}
	_, _ = fmt.Fprintln(marker, strings.Join(os.Args[1:], " "))
	_ = marker.Close()
	if len(os.Args) > 2 && os.Args[1] == "image" && os.Args[2] == "inspect" {
		encoded, _ := json.Marshal([]any{map[string]any{"Id": config.Image, "Config": map[string]any{"Labels": config.Labels}}})
		fmt.Println(string(encoded))
		os.Exit(0)
	}
	if containsArg(os.Args, "--version") {
		fmt.Println("Lean (version 4.33.1, synthetic subprocess fixture)")
		os.Exit(0)
	}
	inputPath, outputPath := "", ""
	for _, arg := range os.Args[1:] {
		if rest, ok := strings.CutPrefix(arg, "type=bind,source="); ok {
			source, target, found := strings.Cut(rest, ",target=")
			if found && (strings.HasPrefix(target, "/mathcase/input/MathCaseCandidate.lean") || strings.HasPrefix(target, "/mathcase/input/MathCaseStatement.lean")) {
				inputPath = filepath.FromSlash(source)
			}
			if found && target == "/mathcase/output" {
				outputPath = filepath.FromSlash(source)
			}
		}
	}
	if inputPath == "" || outputPath == "" {
		os.Exit(94)
	}
	data, err = os.ReadFile(inputPath)
	if err != nil {
		os.Exit(95)
	}
	if strings.Contains(string(data), "exact Nat.succ_ne_zero 0") {
		fmt.Fprintln(os.Stderr, "MathCaseCandidate.lean: error: synthetic invalid candidate rejected")
		os.Exit(1)
	}
	artifactName := "MathCaseCandidate.olean"
	if filepath.Base(inputPath) == "MathCaseStatement.lean" {
		artifactName = "MathCaseStatement.olean"
	}
	if os.WriteFile(filepath.Join(outputPath, artifactName), []byte("synthetic subprocess artifact, not compiled Lean"), 0600) != nil {
		os.Exit(96)
	}
	fmt.Println("'mathcase_candidate' does not depend on any axioms")
	os.Exit(0)
}

type statementReadinessFixture struct {
	verifier LeanVerifier
	runtime  leanSnapshotRuntime
	problem  domain.MathProblem
	receipt  LeanStatementCheckReceipt
	now      time.Time
	key      string
}

func newStatementReadinessFixture(t *testing.T) statementReadinessFixture {
	t.Helper()
	base := newTestLeanSnapshot(t)
	problem := domain.MathProblem{ID: "statement-readiness-unit-fixture", Statement: "Synthetic unit fixture, not a Lean execution.", LeanStatement: "∀ (n : Nat), n = n"}
	workspace := t.TempDir()
	artifactRoot, err := prepareLeanArtifactOutput(workspace)
	if err != nil {
		t.Fatal(err)
	}
	source := generatedLeanTypecheckSource(problem.LeanStatement, []string{"Init"})
	candidatePath, err := writeLeanCandidateInput(workspace, "MathCaseStatement.lean", []byte(source))
	if err != nil {
		t.Fatal(err)
	}
	args, err := buildLeanSnapshotDockerArgs(base.Manifest.ImageDigest, "mathcase-synthetic-statement", base.Manifest, candidatePath, "MathCaseStatement.lean", artifactRoot, "MathCaseStatement.olean", []string{"--root=/mathcase/input", "-o", "/mathcase/output/MathCaseStatement.olean", "/mathcase/input/MathCaseStatement.lean"})
	if err != nil {
		t.Fatal(err)
	}
	versionArgs, err := buildLeanSnapshotDockerArgs(base.Manifest.ImageDigest, "mathcase-synthetic-version", base.Manifest, "", "", "", "", []string{"--version"})
	if err != nil {
		t.Fatal(err)
	}
	now := time.Now().UTC()
	versionText := "Lean (version 4.33.1, synthetic unit fixture)"
	zero := 0
	statementSHA, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	compiled := []byte("synthetic artifact; not an actual Lean compilation")
	receipt := LeanStatementCheckReceipt{
		SchemaVersion: leanStatementCheckSchema, EvidenceID: "lean-synthetic-statement-readiness",
		RecordedAtUTC: now.Add(-time.Second), ProblemID: problem.ID, ProblemStatementSHA256: statementSHA,
		PropositionSHA256: snapshotTestDigest(problem.LeanStatement), GeneratedSourceSHA256: snapshotTestDigest(source),
		ArtifactSnapshotSchema: LeanArtifactSnapshotSchemaVersion, GeneratedSource: source,
		CompiledArtifactStatus: "CAPTURED", CompiledArtifact: compiled, CompiledArtifactSHA256: snapshotTestDigest(string(compiled)), CompiledArtifactSize: int64(len(compiled)),
		ProjectSnapshotSHA256: base.Manifest.ProjectSnapshot.SHA256, ProjectSnapshot: base.Manifest.ProjectSnapshot,
		SnapshotID: base.Manifest.SnapshotID, SnapshotManifestPath: base.ManifestPath, SnapshotManifestSHA256: base.ManifestSHA256,
		SnapshotImageCheck: testSnapshotImageCheck(base.Manifest), Toolchain: defaultLeanToolchain,
		LeanVersion:      versionText,
		LeanVersionCheck: LeanVersionCheck{Version: versionText, StdoutSHA256: snapshotTestDigest(versionText + "\n"), StderrSHA256: snapshotTestDigest(""), StdoutExcerpt: versionText + "\n", Execution: LeanSandboxExecution{DockerExecutable: "docker", ExecutionMode: LeanExecutionModeDirect, ContainerName: "mathcase-synthetic-version", CommandArgv: append([]string{"docker"}, versionArgs...), StartedAtUTC: now.Add(-3 * time.Second), FinishedAtUTC: now.Add(-2500 * time.Millisecond), ExitCode: &zero}},
		Imports:          []string{"Init"}, TypecheckPassed: true, Status: "PASSED", StdoutSHA256: snapshotTestDigest(""), StderrSHA256: snapshotTestDigest(""), ExitCode: 0,
		ExecutionImage: base.Manifest.ImageDigest, ExecutionIsolation: leanExecutionIsolation(base.Manifest.ImageDigest),
		SandboxExecution: LeanSandboxExecution{DockerExecutable: "docker", ExecutionMode: LeanExecutionModeDirect, ContainerName: "mathcase-synthetic-statement", CommandArgv: append([]string{"docker"}, args...), StartedAtUTC: now.Add(-2 * time.Second), FinishedAtUTC: now.Add(-time.Second), ExitCode: &zero},
	}
	if err := receipt.ValidateCandidateArtifacts(problem); err != nil {
		t.Fatalf("synthetic statement fixture validation = %v, want consistent evidence", err)
	}
	verifier := LeanVerifier{ReceiptRoot: t.TempDir(), WorkspaceRoot: t.TempDir(), Imports: []string{"Init"}, ExpectedToolchain: defaultLeanToolchain, SandboxImage: base.Manifest.ImageDigest, SnapshotManifestPath: base.ManifestPath}
	runtime := leanSnapshotRuntime{Docker: "docker", Image: base.Manifest.ImageDigest, Manifest: base.Manifest, ManifestPath: base.ManifestPath, ManifestSHA256: base.ManifestSHA256}
	key := leanRuntimePreflightCacheKey(verifier.ReceiptRoot, runtime.Image, runtime.ManifestSHA256, runtime.ManifestPath, runtime.Docker, verifier.Imports, problem.ID, statementSHA, defaultLeanToolchain, defaultLeanToolchain)
	return statementReadinessFixture{verifier: verifier, runtime: runtime, problem: problem, receipt: receipt, now: now, key: key}
}

func (f statementReadinessFixture) persist(t *testing.T) {
	t.Helper()
	if err := f.verifier.writeStatementCheckReceipt(f.receipt); err != nil {
		t.Fatal(err)
	}
	if err := f.verifier.writeLeanStatementReadiness(t.Context(), f.problem, f.receipt, f.runtime, f.now); err != nil {
		t.Fatalf("writeLeanStatementReadiness(valid fixture) = %v, want success", err)
	}
}

func (f statementReadinessFixture) read(ctx context.Context) (leanRuntimePreflightEvidence, bool) {
	return readLeanStatementReadiness(ctx, f.verifier.ReceiptRoot, f.key, f.now, f.runtime, f.verifier.Imports, f.problem, f.receipt.ProblemStatementSHA256, expectedLeanToolchain(f.verifier.ExpectedToolchain))
}

func TestLeanStatementReadinessPreservesActualReceiptType(t *testing.T) {
	t.Parallel()
	f := newStatementReadinessFixture(t)
	f.persist(t)
	evidence, ok := f.read(t.Context())
	if !ok || evidence.EvidenceID != f.receipt.EvidenceID || !strings.HasSuffix(evidence.ReceiptPath, ".statement.json") {
		t.Fatalf("readLeanStatementReadiness(valid) = %#v, %t, want actual statement receipt", evidence, ok)
	}
	if count, _ := countLeanRuntimePreflightReceipts(t, f.verifier.ReceiptRoot); count != 0 {
		t.Fatalf("runtime smoke receipts = %d, want none manufactured", count)
	}
	ctx, cancel := context.WithCancel(t.Context())
	cancel()
	if _, ok := f.read(ctx); ok {
		t.Error("readLeanStatementReadiness(cancelled) reused evidence, want refusal")
	}
}

func TestLeanStatementReadinessRejectsChangedOrMismatchedEvidence(t *testing.T) {
	for _, name := range []string{"digest", "future", "expired", "timestamp-mismatch", "failed", "truncated", "timeout", "nonzero-sandbox", "schema", "manifest-path", "manifest-hash", "image", "docker", "imports", "toolchain", "problem", "root", "symlink"} {
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			f := newStatementReadinessFixture(t)
			f.persist(t)
			path := filepath.Join(f.verifier.ReceiptRoot, f.receipt.EvidenceID+".statement.json")
			indexPath, err := leanStatementReadinessIndexPath(f.verifier.ReceiptRoot, f.key)
			if err != nil {
				t.Fatal(err)
			}
			data, err := os.ReadFile(indexPath)
			if err != nil {
				t.Fatal(err)
			}
			var index leanRuntimePreflightCacheIndex
			if err := json.Unmarshal(data, &index); err != nil {
				t.Fatal(err)
			}
			switch name {
			case "future":
				f.receipt.RecordedAtUTC = f.now.Add(time.Minute)
				index.PreparedAtUTC = f.receipt.RecordedAtUTC
			case "expired":
				f.now = f.now.Add(leanRuntimePreflightTTL + time.Second)
			case "timestamp-mismatch":
				index.PreparedAtUTC = index.PreparedAtUTC.Add(-time.Second)
			case "failed":
				f.receipt.Status = "REJECTED"
				f.receipt.TypecheckPassed = false
			case "truncated":
				f.receipt.OutputTruncated = true
			case "timeout":
				f.receipt.SandboxExecution.TimedOut = true
			case "nonzero-sandbox":
				code := 1
				f.receipt.SandboxExecution.ExitCode = &code
			case "schema":
				f.receipt.SchemaVersion = leanRuntimePreflightSchema
			case "manifest-path":
				f.runtime.ManifestPath += ".other"
			case "manifest-hash":
				f.runtime.ManifestSHA256 = strings.Repeat("b", 64)
			case "image":
				f.runtime.Image = "sha256:" + strings.Repeat("b", 64)
			case "docker":
				f.runtime.Docker = "different-docker"
			case "imports":
				f.verifier.Imports = []string{"Different"}
			case "toolchain":
				f.verifier.ExpectedToolchain = "leanprover/lean4:v4.32.0"
			case "problem":
				f.problem.Statement += " Changed."
			case "root":
				f.verifier.ReceiptRoot = t.TempDir()
			}
			data, err = json.MarshalIndent(f.receipt, "", "  ")
			if err != nil {
				t.Fatal(err)
			}
			data = append(data, '\n')
			if name == "digest" {
				data = append(data, ' ')
			}
			if name != "digest" {
				index.ReceiptSHA256 = digestHex(data)
			}
			if err := os.WriteFile(path, data, 0600); err != nil {
				t.Fatal(err)
			}
			data, err = json.Marshal(index)
			if err != nil {
				t.Fatal(err)
			}
			if err := os.WriteFile(indexPath, data, 0600); err != nil {
				t.Fatal(err)
			}
			if name == "symlink" {
				other := filepath.Join(t.TempDir(), "copied.statement.json")
				original, err := os.ReadFile(path)
				if err != nil {
					t.Fatal(err)
				}
				if err := os.WriteFile(other, original, 0600); err != nil {
					t.Fatal(err)
				}
				if err := os.Remove(path); err != nil {
					t.Fatal(err)
				}
				if err := os.Symlink(other, path); err != nil {
					t.Skipf("symlink unavailable: %v", err)
				}
			}
			if _, ok := f.read(t.Context()); ok {
				t.Errorf("readLeanStatementReadiness(%s) reused evidence, want refusal", name)
			}
		})
	}
}

func TestLeanStatementReadinessStillRunsEachValidAndInvalidCandidate(t *testing.T) {
	f := newStatementReadinessFixture(t)
	executable, err := os.Executable()
	if err != nil {
		t.Fatal(err)
	}
	f.runtime.Docker = executable
	f.verifier.DockerExecutable = executable
	f.receipt.SandboxExecution.DockerExecutable = executable
	f.receipt.SandboxExecution.CommandArgv[0] = executable
	f.receipt.LeanVersionCheck.Execution.DockerExecutable = executable
	f.receipt.LeanVersionCheck.Execution.CommandArgv[0] = executable
	f.key = leanRuntimePreflightCacheKey(f.verifier.ReceiptRoot, f.runtime.Image, f.runtime.ManifestSHA256, f.runtime.ManifestPath, executable, f.verifier.Imports, f.problem.ID, f.receipt.ProblemStatementSHA256, defaultLeanToolchain, defaultLeanToolchain)
	f.persist(t)
	marker := filepath.Join(t.TempDir(), "calls.txt")
	configPath := filepath.Join(t.TempDir(), "stub.json")
	data, err := json.Marshal(map[string]any{"Image": f.runtime.Image, "Labels": f.receipt.SnapshotImageCheck.Labels, "Marker": marker})
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(configPath, data, 0600); err != nil {
		t.Fatal(err)
	}
	t.Setenv(statementReadinessDockerHelperEnv, configPath)
	if err := f.verifier.Preflight(t.Context(), "synthetic-statement-readiness", f.problem); err != nil {
		t.Fatalf("Preflight(valid statement readiness) = %v, want no extra smoke execution", err)
	}
	valid, err := f.verifier.Verify(t.Context(), f.problem, "by intro n; rfl")
	if err != nil || !valid.KernelPassed || !valid.AxiomsPassed {
		t.Fatalf("Verify(synthetic valid candidate) = %#v, %v, want a fresh subprocess result", valid, err)
	}
	invalid, err := f.verifier.Verify(t.Context(), f.problem, "by exact Nat.succ_ne_zero 0")
	if err != nil || invalid.KernelPassed || invalid.AxiomsPassed {
		t.Fatalf("Verify(synthetic invalid candidate) = %#v, %v, want its own failed subprocess result", invalid, err)
	}
	for _, result := range []Verification{valid, invalid} {
		data, err := os.ReadFile(filepath.Join(f.verifier.ReceiptRoot, result.EvidenceID+".json"))
		if err != nil {
			t.Fatal(err)
		}
		var receipt LeanVerificationReceipt
		if err := json.Unmarshal(data, &receipt); err != nil {
			t.Fatal(err)
		}
		if receipt.LeanPreflightReceiptSchema != leanStatementCheckSchema || receipt.LeanPreflightEvidenceID != f.receipt.EvidenceID {
			t.Errorf("candidate readiness source = %q/%q, want actual statement %q/%q", receipt.LeanPreflightReceiptSchema, receipt.LeanPreflightEvidenceID, leanStatementCheckSchema, f.receipt.EvidenceID)
		}
		if result.KernelPassed {
			if err := ValidateExecutionBoundReceipt(receipt, f.problem); err != nil {
				t.Fatalf("ValidateExecutionBoundReceipt(statement-sourced readiness) = %v, want valid execution-bound candidate", err)
			}
			receipt.LeanPreflightReceiptSchema = "invented-readiness-schema"
			if _, err := validateExecutionBoundReceiptInputs(receipt, f.problem); err == nil {
				t.Error("candidate accepted an unsupported readiness source schema")
			}
		}
		if receipt.SandboxExecution.ContainerName == f.receipt.SandboxExecution.ContainerName || receipt.SandboxExecution.ContainerName == "" {
			t.Error("candidate reused statement execution instead of running a fresh subprocess")
		}
	}
	data, err = os.ReadFile(marker)
	if err != nil {
		t.Fatal(err)
	}
	if strings.Contains(string(data), "--version") || strings.Contains(string(data), "MathCaseRuntimePreflight.lean") || strings.Count(string(data), "--root=/mathcase/input") != 2 {
		t.Fatalf("subprocess calls = %s, want only image inspections and two fresh candidates, no repeated readiness execution", data)
	}
	if count, _ := countLeanRuntimePreflightReceipts(t, f.verifier.ReceiptRoot); count != 0 {
		t.Fatalf("synthetic runtime-smoke receipts = %d, want none", count)
	}
}
