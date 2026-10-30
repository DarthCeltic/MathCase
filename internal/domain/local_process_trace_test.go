package domain

import (
	"encoding/json"
	"sort"
	"strings"
	"testing"
	"time"
)

func TestLocalProcessTraceValidateAcceptsBoundedHostTrace(t *testing.T) {
	trace := validLocalProcessTraceFixture()
	if err := trace.Validate(); err != nil {
		t.Fatalf("LocalProcessTrace.Validate() = %v, want nil", err)
	}
	identity := validRuntimeIdentityFixture("pantograph-search")
	trace.RuntimeIdentity = &identity
	if err := trace.Validate(); err != nil {
		t.Fatalf("LocalProcessTrace.Validate() with runtime identity = %v, want nil", err)
	}
}

func TestLocalProcessTraceV2ValidatesHostDeadlineAndElapsedTiming(t *testing.T) {
	trace := validLocalProcessTraceFixture()
	trace.SchemaVersion = LocalProcessTraceSchemaV2
	trace.HostTimeoutNanos = int64(time.Second)
	trace.HostElapsedNanos = int64(43 * time.Millisecond)
	trace.HostContextEnd = "NONE"
	if err := trace.Validate(); err != nil {
		t.Fatalf("version 2 trace with monotonic host timing = %v, want nil", err)
	}

	trace.Termination = "TIMED_OUT"
	trace.HostContextEnd = "DEADLINE_EXCEEDED"
	trace.HostTimeoutPhase = "container_setup"
	if err := trace.Validate(); err != nil {
		t.Fatalf("timed-out version 2 trace = %v, want nil", err)
	}

	trace.HostContextEnd = "NONE"
	if err := trace.Validate(); err == nil {
		t.Fatal("version 2 trace accepted timeout without a deadline context end")
	}
	trace.HostContextEnd = "DEADLINE_EXCEEDED"
	trace.Termination = "EXITED"
	if err := trace.Validate(); err == nil {
		t.Fatal("version 2 trace accepted a timeout phase on a non-timeout process")
	}
}

func TestLocalProcessTraceValidatesPantographSearchBudgetAgainstOuterDeadline(t *testing.T) {
	trace := validLocalProcessTraceFixture()
	trace.SchemaVersion = LocalProcessTraceSchemaV2
	trace.HostTimeoutNanos = int64(215 * time.Second)
	trace.HostElapsedNanos = int64(10 * time.Second)
	trace.HostContextEnd = "NONE"
	trace.PantographSearchBudget = &PantographSearchBudgetProfile{
		SchemaVersion:     PantographSearchBudgetSchemaV1,
		RequestTotalNanos: int64(225 * time.Second), DockerSetupNanos: int64(60 * time.Second),
		LeanToolchainProbeNanos: int64(5 * time.Second),
		LeanEnvironmentNanos:    int64(25 * time.Second), PantographStartupNanos: int64(60 * time.Second),
		InitialGoalNanos: int64(25 * time.Second), SearchNanos: int64(25 * time.Second),
		TacticCallNanos: int64(4 * time.Second), RuntimeIdentityNanos: int64(10 * time.Second),
		PythonCleanupGraceNanos: int64(4 * time.Second),
		LaunchMarginNanos:       int64(time.Second), HostProcessNanos: int64(215 * time.Second),
		DockerCleanupGraceNanos: int64(10 * time.Second),
	}
	if err := trace.Validate(); err != nil {
		t.Fatalf("valid Pantograph budget trace = %v, want nil", err)
	}

	trace.PantographSearchBudget.SearchNanos = int64(45 * time.Second)
	if err := trace.Validate(); err == nil {
		t.Fatal("Pantograph search budget accepted phases larger than its host process deadline")
	}
}

func TestLocalProcessTraceValidateAcceptsConfiguredDockerTrace(t *testing.T) {
	trace := validLocalProcessTraceFixture()
	trace.ExecutionClass = LocalProcessDockerNoNetwork
	trace.Arguments = []string{
		"run", "--interactive", "--name", "mathcase-pantograph-test", "--pull=never", "--network=none", "--read-only",
		"--user=65532:65532", "--cap-drop=ALL", "--security-opt=no-new-privileges:true",
		"--cpus=2", "--memory=4g", "--pids-limit=128", "sha256:" + strings.Repeat("a", 64),
	}
	trace.ContainerExecution = &ContainerExecutionIdentity{
		ImageID: "sha256:" + strings.Repeat("a", 64), ContainerName: "mathcase-pantograph-test",
		NetworkMode: "none", PullPolicy: "never", ReadOnlyRoot: true, User: "65532:65532",
		DroppedAllCapabilities: true, NoNewPrivileges: true, CPULimit: "2", MemoryLimit: "4g", PidsLimit: 128,
	}
	if err := trace.Validate(); err != nil {
		t.Fatalf("LocalProcessTrace.Validate() with configured Docker settings = %v", err)
	}
}

func TestLocalProcessTraceValidateRejectsIncompleteDockerSettings(t *testing.T) {
	trace := validLocalProcessTraceFixture()
	trace.ExecutionClass = LocalProcessDockerNoNetwork
	trace.Arguments = []string{"run", "--name", "mathcase-pantograph-test", "--pull=never", "sha256:" + strings.Repeat("a", 64)}
	trace.ContainerExecution = &ContainerExecutionIdentity{
		ImageID: "sha256:" + strings.Repeat("a", 64), ContainerName: "mathcase-pantograph-test",
		NetworkMode: "bridge", PullPolicy: "always", ReadOnlyRoot: false, User: "root",
		CPULimit: "2", MemoryLimit: "4g", PidsLimit: 128,
	}
	if err := trace.Validate(); err == nil {
		t.Fatal("LocalProcessTrace.Validate() accepted incomplete Docker isolation settings")
	}
}

func TestRuntimeIdentityValidateRejectsInventoryAndArtifactTampering(t *testing.T) {
	tests := []struct {
		name   string
		mutate func(*RuntimeIdentity)
	}{
		{"inventory digest mismatch", func(identity *RuntimeIdentity) { identity.PackageInventorySHA256 = processDigest([]byte("wrong")) }},
		{"noncanonical package order", func(identity *RuntimeIdentity) {
			identity.Packages[0], identity.Packages[1] = identity.Packages[1], identity.Packages[0]
		}},
		{"artifact digest malformed", func(identity *RuntimeIdentity) { identity.Artifacts[0].SHA256 = "bad" }},
		{"required artifact missing", func(identity *RuntimeIdentity) { identity.Artifacts = identity.Artifacts[1:] }},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			identity := validRuntimeIdentityFixture("pantograph-search")
			test.mutate(&identity)
			if err := identity.Validate(); err == nil {
				t.Fatal("RuntimeIdentity.Validate() accepted tampered identity")
			}
		})
	}
}

func TestRuntimeIdentityAllowsEmptyOptionalZ3PackageInventory(t *testing.T) {
	identity := validRuntimeIdentityFixture("z3-smt")
	identity.Packages = nil
	identity.PackageInventorySHA256 = runtimePackageInventoryDigest(nil)
	if err := identity.Validate(); err != nil {
		t.Fatalf("RuntimeIdentity.Validate() with an empty optional Z3 inventory = %v, want nil", err)
	}
}

func TestSolverAttemptRoundTripsLocalProcessTrace(t *testing.T) {
	started := time.Date(2026, 10, 23, 12, 0, 0, 0, time.UTC)
	trace := validLocalProcessTraceFixture()
	runtimeIdentity := validRuntimeIdentityFixture("pantograph-search")
	trace.RuntimeIdentity = &runtimeIdentity
	attempt := SolverAttempt{
		ID: "attempt-synthetic", RunID: "run-synthetic", ProblemID: "problem-synthetic",
		Stage: SolverStageS0, Toolchain: "leanprover/lean4:v4.33.1",
		Outcome: SolverOutcomeNoProgress, FailureClass: "no_proof_candidate",
		StartedAt: started, FinishedAt: started.Add(time.Second),
		LocalProcessTrace: ptrLocalProcessTrace(trace),
	}
	encoded, err := json.Marshal(attempt)
	if err != nil {
		t.Fatal(err)
	}
	var reopened SolverAttempt
	if err := json.Unmarshal(encoded, &reopened); err != nil {
		t.Fatal(err)
	}
	if err := reopened.Validate(); err != nil {
		t.Fatalf("reopened attempt validation failed: %v", err)
	}
	if reopened.LocalProcessTrace == nil || string(reopened.LocalProcessTrace.InputBase64) != `{"request":"synthetic"}` {
		t.Fatalf("reopened attempt lost its exact process input: %#v", reopened.LocalProcessTrace)
	}
}

func ptrLocalProcessTrace(trace LocalProcessTrace) *LocalProcessTrace { return &trace }

func TestLocalProcessTraceValidateRejectsMisboundAndMisclassifiedData(t *testing.T) {
	tests := []struct {
		name   string
		mutate func(*LocalProcessTrace)
	}{
		{"input digest mismatch", func(trace *LocalProcessTrace) { trace.InputSHA256 = processDigest([]byte("different")) }},
		{"output digest mismatch", func(trace *LocalProcessTrace) { trace.StdoutSHA256 = processDigest([]byte("different")) }},
		{"false isolation claim", func(trace *LocalProcessTrace) { trace.ExecutionClass = "PINNED_SANDBOX" }},
		{"false replayability claim", func(trace *LocalProcessTrace) { trace.Replayability = "FULLY_REPLAYABLE" }},
		{"truncation mismatch", func(trace *LocalProcessTrace) { trace.OutputTruncated = true }},
		{"output limit exceeds schema ceiling", func(trace *LocalProcessTrace) { trace.OutputCaptureLimitBytes = maxLocalProcessTraceOutput + 1 }},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			trace := validLocalProcessTraceFixture()
			test.mutate(&trace)
			if err := trace.Validate(); err == nil {
				t.Fatal("LocalProcessTrace.Validate() accepted invalid trace")
			}
		})
	}
}

func validLocalProcessTraceFixture() LocalProcessTrace {
	input := []byte(`{"request":"synthetic"}`)
	stdout := []byte(`{"response":"synthetic"}`)
	stderr := []byte("diagnostic")
	return LocalProcessTrace{
		SchemaVersion: LocalProcessTraceSchemaV1, ExecutionClass: LocalProcessHostUnisolated, Replayability: LocalProcessCapturedIOOnly,
		ExecutablePath: "python", ExecutableSHA256: processDigest([]byte("python")), ExecutableSHA256After: processDigest([]byte("python")),
		BridgePath: "bridge.py", BridgeSHA256: processDigest([]byte("bridge")), BridgeSHA256After: processDigest([]byte("bridge")),
		WorkingDirectory: ".", Arguments: []string{"bridge.py"}, ProcessID: 1,
		StartedAt: time.Date(2026, 10, 23, 12, 0, 0, 0, time.UTC), FinishedAt: time.Date(2026, 10, 23, 12, 0, 0, 1, time.UTC),
		Termination: "EXITED", ExitCode: 0,
		InputBase64: input, InputSHA256: processDigest(input),
		StdoutPrefixBase64: stdout, StdoutSHA256: processDigest(stdout), StdoutCapturedSHA256: processDigest(stdout),
		StdoutBytesObserved: int64(len(stdout)), StdoutBytesCaptured: int64(len(stdout)),
		StderrPrefixBase64: stderr, StderrSHA256: processDigest(stderr), StderrCapturedSHA256: processDigest(stderr),
		StderrBytesObserved: int64(len(stderr)), StderrBytesCaptured: int64(len(stderr)),
		OutputCaptureLimitBytes: 1024, CodeIdentityMatchesBeforeAfter: true,
	}
}

func validRuntimeIdentityFixture(kind string) RuntimeIdentity {
	packages := []RuntimePackageIdentity{
		{Name: "pantograph", Version: "0.3.15", SourceRevision: "f8aee320ee5550ea2677e414534618a61e7e1497"},
		{Name: "z3-solver", Version: "5.3.1.0"},
	}
	roles := []string{
		"python_executable", "pantograph_module_tree", "pantograph_backend", "lean_toolchain", "lake_manifest",
		"lake_configuration", "toolchain_lean", "toolchain_lake", "derived_value:lean_path", "z3_module_tree", "z3_requirements",
	}
	artifacts := make([]RuntimeArtifactIdentity, 0, len(roles))
	for _, role := range roles {
		artifacts = append(artifacts, RuntimeArtifactIdentity{Role: role, Path: "synthetic-fixture/" + role, SHA256: processDigest([]byte(role))})
	}
	sort.Slice(artifacts, func(i, j int) bool { return artifacts[i].Role < artifacts[j].Role })
	return RuntimeIdentity{
		SchemaVersion: "mathcase-python-runtime-identity-v1", RuntimeKind: kind,
		PythonImplementation: "CPython", PythonVersion: "3.11.9",
		PackageInventorySHA256: runtimePackageInventoryDigest(packages), Packages: packages,
		Artifacts: artifacts,
	}
}
