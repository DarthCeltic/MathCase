package solver

import (
	"crypto/sha256"
	"encoding/hex"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestLeanStatementReceiptValidatesFullSourceAndCompiledArtifactSnapshot(t *testing.T) {
	problem := domain.MathProblem{
		ID:            "synthetic-problem-artifact-snapshot",
		Statement:     "A synthetic statement used only by a unit fixture.",
		LeanStatement: "∀ (n : Nat), n = n",
	}
	generatedSource := generatedLeanTypecheckSource(problem.LeanStatement, []string{"Init"})
	compiledArtifact := []byte("synthetic .olean payload; not produced by Lean")
	workspace := t.TempDir()
	base := newTestLeanSnapshot(t)
	artifactRoot, err := prepareLeanArtifactOutput(workspace)
	if err != nil {
		t.Fatalf("prepareLeanArtifactOutput() error = %v", err)
	}
	candidatePath, err := writeLeanCandidateInput(workspace, "MathCaseStatement.lean", []byte(generatedSource))
	if err != nil {
		t.Fatalf("writeLeanCandidateInput() error = %v", err)
	}
	image := base.Manifest.ImageDigest
	started := time.Now().UTC().Add(-time.Second)
	finished := started.Add(100 * time.Millisecond)
	mainArgs, err := buildLeanSnapshotDockerArgs(image, "mathcase-synthetic", base.Manifest, candidatePath, "MathCaseStatement.lean", artifactRoot, "MathCaseStatement.olean", []string{"--root=/mathcase/input", "-o", "/mathcase/output/MathCaseStatement.olean", "/mathcase/input/MathCaseStatement.lean"})
	if err != nil {
		t.Fatalf("buildLeanSnapshotDockerArgs(candidate) error = %v", err)
	}
	versionArgs, err := buildLeanSnapshotDockerArgs(image, "mathcase-version-synthetic", base.Manifest, "", "", "", "", []string{"--version"})
	if err != nil {
		t.Fatalf("buildLeanSnapshotDockerArgs(version) error = %v", err)
	}
	versionText := "Lean (version 4.33.1, fixture)"
	versionStdout := versionText + "\n"
	exitCode := 0
	versionExecution := LeanSandboxExecution{
		DockerExecutable: "docker", ExecutionMode: LeanExecutionModeDirect, ContainerName: "mathcase-version-synthetic",
		CommandArgv: append([]string{"docker"}, versionArgs...), StartedAtUTC: started.Add(-200 * time.Millisecond),
		FinishedAtUTC: started.Add(-100 * time.Millisecond), ExitCode: &exitCode,
	}
	argv := append([]string{"docker"}, mainArgs...)
	statementDigest, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	receipt := LeanStatementCheckReceipt{
		SchemaVersion:          leanStatementCheckSchema,
		EvidenceID:             "synthetic-lean-statement-evidence",
		ProblemID:              problem.ID,
		ProblemStatementSHA256: statementDigest,
		PropositionSHA256:      snapshotTestDigest(problem.LeanStatement),
		GeneratedSourceSHA256:  snapshotTestDigest(generatedSource),
		ArtifactSnapshotSchema: LeanArtifactSnapshotSchemaVersion,
		GeneratedSource:        generatedSource,
		CompiledArtifactStatus: "CAPTURED",
		CompiledArtifact:       compiledArtifact,
		CompiledArtifactSHA256: snapshotTestDigest(string(compiledArtifact)),
		CompiledArtifactSize:   int64(len(compiledArtifact)),
		ProjectSnapshotSHA256:  base.Manifest.ProjectSnapshot.SHA256,
		ProjectSnapshot:        base.Manifest.ProjectSnapshot,
		SnapshotID:             base.Manifest.SnapshotID,
		SnapshotManifestPath:   base.ManifestPath,
		SnapshotManifestSHA256: base.ManifestSHA256,
		SnapshotImageCheck:     testSnapshotImageCheck(base.Manifest),
		Toolchain:              defaultLeanToolchain,
		LeanVersion:            versionText,
		LeanVersionCheck: LeanVersionCheck{
			Version: versionText, StdoutSHA256: snapshotTestDigest(versionStdout), StderrSHA256: snapshotTestDigest(""),
			StdoutExcerpt: versionStdout, Execution: versionExecution,
		},
		ExecutionImage:     image,
		ExecutionIsolation: leanExecutionIsolation(image),
		Imports:            []string{"Init"},
		TypecheckPassed:    true,
		Status:             "PASSED",
		StdoutSHA256:       snapshotTestDigest(""),
		StderrSHA256:       snapshotTestDigest(""),
		ExitCode:           0,
		SandboxExecution: LeanSandboxExecution{
			DockerExecutable: "docker",
			ExecutionMode:    LeanExecutionModeDirect,
			ContainerName:    "mathcase-synthetic",
			CommandArgv:      argv,
			StartedAtUTC:     started,
			FinishedAtUTC:    finished,
			ExitCode:         &exitCode,
		},
	}
	if err := receipt.ValidateCandidateArtifacts(problem); err != nil {
		t.Fatalf("ValidateCandidateArtifacts(synthetic receipt) error = %v, want internally consistent snapshots", err)
	}

	tampered := receipt
	tampered.GeneratedSource += "-- changed after snapshot\n"
	if err := tampered.ValidateCandidateArtifacts(problem); err == nil || !strings.Contains(err.Error(), "source/compiled-artifact snapshot") {
		t.Fatalf("ValidateCandidateArtifacts(changed source) error = %v, want snapshot mismatch", err)
	}
	tampered = receipt
	tampered.CompiledArtifact = append([]byte(nil), receipt.CompiledArtifact...)
	tampered.CompiledArtifact[0] ^= 0xff
	if err := tampered.ValidateCandidateArtifacts(problem); err == nil || !strings.Contains(err.Error(), "source/compiled-artifact snapshot") {
		t.Fatalf("ValidateCandidateArtifacts(changed artifact) error = %v, want compiled-byte digest mismatch", err)
	}
}

func TestLeanCompiledArtifactCaptureUsesDedicatedWorkspace(t *testing.T) {
	workspace := t.TempDir()
	projectRoot := filepath.Join(t.TempDir(), "project")
	if err := os.MkdirAll(filepath.Join(projectRoot, ".lake", "build"), 0o755); err != nil {
		t.Fatal(err)
	}
	source := []byte("-- synthetic source fixture; not produced or executed by Lean\n#check True\n")
	projectSnapshotRoot := filepath.Join(workspace, "project")
	if _, err := copyLeanProjectSnapshot(projectRoot, projectSnapshotRoot, "Candidate.lean", source); err != nil {
		t.Fatalf("copyLeanProjectSnapshot(synthetic fixture) error = %v", err)
	}
	storedSource, err := os.ReadFile(filepath.Join(projectSnapshotRoot, "Candidate.lean"))
	if err != nil {
		t.Fatal(err)
	}
	if string(storedSource) != string(source) {
		t.Fatalf("prepared source bytes = %q, err=%v; want exact source fixture", storedSource, err)
	}
	artifactRoot, err := prepareLeanArtifactOutput(workspace)
	if err != nil {
		t.Fatalf("prepareLeanArtifactOutput() error = %v", err)
	}

	compiled := []byte("synthetic compiled bytes for snapshot helper test")
	if err := os.WriteFile(filepath.Join(artifactRoot, "Candidate.olean"), compiled, 0o600); err != nil {
		t.Fatal(err)
	}
	got, status, err := captureLeanCompiledArtifact(artifactRoot, "Candidate.olean")
	if err != nil || status != "CAPTURED" || string(got) != string(compiled) {
		t.Fatalf("captureLeanCompiledArtifact() = (%q, %q, %v), want exact captured fixture", got, status, err)
	}
	digest := sha256.Sum256(got)
	if hex.EncodeToString(digest[:]) != snapshotTestDigest(string(compiled)) {
		t.Fatal("captured compiled bytes did not retain their expected SHA-256")
	}

	if err := os.Remove(filepath.Join(artifactRoot, "Candidate.olean")); err != nil {
		t.Fatal(err)
	}
	missing, status, err := captureLeanCompiledArtifact(artifactRoot, "Candidate.olean")
	if err != nil || status != "NOT_PRODUCED" || len(missing) != 0 {
		t.Fatalf("captureLeanCompiledArtifact(missing) = (%q, %q, %v), want explicit missing status", missing, status, err)
	}
}

func snapshotTestDigest(value string) string {
	digest := sha256.Sum256([]byte(value))
	return hex.EncodeToString(digest[:])
}
