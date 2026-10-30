package solver

import (
	"context"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestResolvePantographSearchBudgetContainsEveryPhaseAndCleanup(t *testing.T) {
	dockerProfile, dockerHostProcess, err := resolvePantographSearchBudget(0, true)
	if err != nil {
		t.Fatalf("Docker search profile: %v", err)
	}
	if dockerHostProcess != 695*time.Second || dockerProfile.RequestTotalNanos != int64(705*time.Second) || dockerProfile.DockerSetupNanos != int64(120*time.Second) || dockerProfile.DockerCleanupGraceNanos != int64(10*time.Second) {
		t.Fatalf("Docker search profile = %#v, host process %s; want 695s process with 120s setup + 10s bounded cleanup", dockerProfile, dockerHostProcess)
	}
	if err := dockerProfile.Validate(); err != nil {
		t.Fatalf("Docker search profile validation: %v", err)
	}

	hostProfile, hostProcess, err := resolvePantographSearchBudget(0, false)
	if err != nil {
		t.Fatalf("host search profile: %v", err)
	}
	if hostProcess != 575*time.Second || hostProfile.RequestTotalNanos != int64(575*time.Second) || hostProfile.DockerSetupNanos != 0 || hostProfile.DockerCleanupGraceNanos != 0 {
		t.Fatalf("host search profile = %#v, host process %s; want 575s with no Docker allowance", hostProfile, hostProcess)
	}

	if _, _, err := resolvePantographSearchBudget(30*time.Second, true); err == nil || !strings.Contains(err.Error(), "insufficient for the bounded phase profile") {
		t.Fatalf("short explicit total budget error = %v, want clear pre-dispatch refusal", err)
	}
	longProfile, longProcess, err := resolvePantographSearchBudget(12*time.Minute, true)
	if err != nil || longProcess != 710*time.Second || longProfile.UnallocatedNanos != int64(15*time.Second) {
		t.Fatalf("long explicit profile = %#v, host process %s, error %v; want extra time recorded as unallocated", longProfile, longProcess, err)
	}
}

func TestPantographSearchRefusesCallerDeadlineShorterThanPhaseEnvelope(t *testing.T) {
	ctx, cancel := context.WithTimeout(context.Background(), time.Second)
	defer cancel()
	searcher := PantographSearchSolver{PythonExecutable: "not-dispatched", ProjectRoot: ".", LeanProjectRoot: "."}
	_, err := searcher.Solve(ctx, domain.MathProblem{ID: "deadline-preflight", LeanStatement: "True"})
	if err == nil || !strings.Contains(err.Error(), "below the bounded Pantograph total request budget") {
		t.Fatalf("Solve() error = %v, want an explicit caller-deadline insufficiency", err)
	}
}

func TestPantographSearchStatementValidationAllowsMultilineAndRejectsUnsafeInput(t *testing.T) {
	searcher := PantographSearchSolver{
		SandboxImage:    "sha256:" + strings.Repeat("a", 64),
		ProjectRoot:     t.TempDir(),
		LeanProjectRoot: t.TempDir(),
		Timeout:         time.Second,
	}
	cases := []struct {
		name          string
		statement     string
		wantErrorPart string
	}{
		{
			name:          "multiline Lean input reaches the bounded preflight",
			statement:     "theorem multiline :\n  True :=\n  by\n    trivial",
			wantErrorPart: "insufficient for the bounded phase profile",
		},
		{
			name:          "NUL is refused",
			statement:     "True\x00",
			wantErrorPart: "Lean statement is missing or exceeds the local search limit",
		},
		{
			name:          "whitespace-only statement is refused",
			statement:     " \r\n\t ",
			wantErrorPart: "Lean statement is missing or exceeds the local search limit",
		},
		{
			name:          "oversized statement is refused",
			statement:     strings.Repeat("x", maxSearchStatementBytes+1),
			wantErrorPart: "Lean statement is missing or exceeds the local search limit",
		},
	}
	for _, test := range cases {
		t.Run(test.name, func(t *testing.T) {
			_, err := searcher.Solve(context.Background(), domain.MathProblem{ID: "statement-validation", LeanStatement: test.statement})
			if err == nil || !strings.Contains(err.Error(), test.wantErrorPart) {
				t.Fatalf("Solve() error = %v, want %q", err, test.wantErrorPart)
			}
		})
	}
}

func TestBuildPantographSearchDockerArgsPinsReadOnlyProjectAndNetworkNone(t *testing.T) {
	root := t.TempDir()
	scripts := filepath.Join(root, "scripts")
	project := filepath.Join(root, "project")
	for _, dir := range []string{
		scripts,
		filepath.Join(project, ".lake", "packages", "plausible", ".lake", "build", "lib", "lean"),
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
		if err := os.WriteFile(filepath.Join(scripts, name), []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	for name, contents := range map[string]string{
		"lean-toolchain":     "leanprover/lean4:v4.33.1\n",
		"lake-manifest.json": "{\"packages\":[{\"name\":\"plausible\"}]}\n",
		"lakefile.toml":      "name = \"synthetic\"\n",
	} {
		if err := os.WriteFile(filepath.Join(project, name), []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	image := "sha256:" + strings.Repeat("a", 64)
	bridge := filepath.Join(scripts, "pantograph_search.py")
	args, identity, err := buildPantographSearchDockerArgs(image, "mathcase-pantograph-search-test", root, project, bridge)
	if err != nil {
		t.Fatalf("buildPantographSearchDockerArgs() error = %v", err)
	}
	if err := identity.Validate(args); err != nil {
		t.Fatalf("container identity does not validate its invocation: %v", err)
	}
	joined := strings.Join(args, "\x00")
	for _, required := range []string{
		"--network=none", "--read-only", "--cap-drop=ALL", "--security-opt=no-new-privileges:true",
		"target=/mathcase/app/scripts,readonly", "target=/mathcase/lean-project,readonly",
		"/mathcase/app/scripts/pantograph_search.py", image,
	} {
		if !strings.Contains(joined, required) {
			t.Errorf("Docker search args omit %q: %v", required, args)
		}
	}
	if strings.Contains(joined, "target=/mathcase/lean-project,") && !strings.Contains(joined, "target=/mathcase/lean-project,readonly") {
		t.Fatalf("selected Lean project is not mounted read-only: %v", args)
	}
}

func TestBuildPantographSearchDockerArgsRequiresPrebuiltLakeProject(t *testing.T) {
	root := t.TempDir()
	project := filepath.Join(root, "project")
	scripts := filepath.Join(root, "scripts")
	for _, dir := range []string{project, scripts} {
		if err := os.MkdirAll(dir, 0o755); err != nil {
			t.Fatal(err)
		}
	}
	for name, contents := range map[string]string{
		"pantograph_search.py":      "# bridge\n",
		"local_runtime_identity.py": "# identity\n",
		"lean_toolchain.py":         "# toolchain\n",
	} {
		if err := os.WriteFile(filepath.Join(scripts, name), []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	for name, contents := range map[string]string{
		"lean-toolchain":     "leanprover/lean4:v4.33.1\n",
		"lake-manifest.json": "{}\n",
		"lakefile.toml":      "name = \"synthetic\"\n",
	} {
		if err := os.WriteFile(filepath.Join(project, name), []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	_, _, err := buildPantographSearchDockerArgs("sha256:"+strings.Repeat("a", 64), "mathcase-pantograph-search-test", root, project, filepath.Join(scripts, "pantograph_search.py"))
	if err == nil || !strings.Contains(err.Error(), "prebuilt .lake directory") {
		t.Fatalf("buildPantographSearchDockerArgs() error = %v, want refusal without prebuilt .lake", err)
	}
}

func TestBuildPantographSearchDockerArgsMountsPinnedLakeCacheReadOnly(t *testing.T) {
	root := t.TempDir()
	scripts := filepath.Join(root, "scripts")
	project := filepath.Join(root, "project")
	cache := filepath.Join(root, "pinned-lake-cache")
	for _, dir := range []string{
		scripts,
		filepath.Join(project, ".lake"),
		filepath.Join(cache, "build"),
		filepath.Join(cache, "packages", "plausible", ".lake", "build", "lib", "lean"),
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
		if err := os.WriteFile(filepath.Join(scripts, name), []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	for name, contents := range map[string]string{
		"lean-toolchain":     "leanprover/lean4:v4.33.1\n",
		"lake-manifest.json": "{\"packages\":[{\"name\":\"plausible\"}]}\n",
		"lakefile.toml":      "name = \"synthetic\"\n",
	} {
		if err := os.WriteFile(filepath.Join(project, name), []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
	}

	image := "sha256:" + strings.Repeat("a", 64)
	bridge := filepath.Join(scripts, "pantograph_search.py")
	args, identity, err := buildPantographSearchDockerArgs(
		image, "mathcase-pantograph-search-cache", root, project, bridge, cache,
	)
	if err != nil {
		t.Fatalf("buildPantographSearchDockerArgs() error = %v", err)
	}
	if err := identity.Validate(args); err != nil {
		t.Fatalf("cached container identity does not validate its invocation: %v", err)
	}
	cacheBuildMountSource, err := dockerMountSource(filepath.Join(cache, "build"))
	if err != nil {
		t.Fatal(err)
	}
	cachePlausibleMountSource, err := dockerMountSource(filepath.Join(cache, "packages", "plausible"))
	if err != nil {
		t.Fatal(err)
	}
	wantBuildMount := "type=bind,source=" + cacheBuildMountSource + ",target=/mathcase/lean-project/.lake/build,readonly"
	wantPlausibleMount := "type=bind,source=" + cachePlausibleMountSource + ",target=/mathcase/lean-project/.lake/packages/plausible,readonly"
	if !containsArg(args, wantBuildMount) || !containsArg(args, wantPlausibleMount) {
		t.Fatalf("Docker search args omit the exact read-only pinned Lake build/dependency mounts %q and %q: %v", wantBuildMount, wantPlausibleMount, args)
	}
	if len(args) > 1 && strings.Contains(strings.Join(args, "\x00"), "target=/mathcase/lean-project/.lake,rw") {
		t.Fatalf("pinned Lake cache is writable: %v", args)
	}
	if _, _, err := buildPantographSearchDockerArgs(
		image, "mathcase-pantograph-search-cache-duplicate", root, project, bridge, cache, cache,
	); err == nil || !strings.Contains(err.Error(), "at most one pinned Lake cache") {
		t.Fatalf("multiple Lake caches error = %v, want a bounded refusal", err)
	}
}

func TestPantographSearchPreservesSyntheticProcessTrace(t *testing.T) {
	python := testLocalPythonExecutable(t)
	root := t.TempDir()
	bridgeSource := `import hashlib, json, sys
sys.stdin.buffer.read()
packages = [{"name":"pantograph","version":"0.3.15","source_revision":"synthetic","direct_url_sha256":""}]
canonical = "".join("\0".join((p["name"], p["version"], p["source_revision"], p["direct_url_sha256"])) + "\n" for p in packages)
roles = ["python_executable","pantograph_module_tree","pantograph_backend","lean_toolchain","lake_manifest","lake_configuration","toolchain_lean","toolchain_lake","derived_value:lean_path"]
artifacts = [{"role":role,"path":"synthetic-" + role,"sha256":hashlib.sha256(role.encode()).hexdigest()} for role in roles]
runtime = {"schema_version":"mathcase-python-runtime-identity-v1","runtime_kind":"pantograph-search","python_implementation":"CPython","python_version":"3.11.9","package_inventory_sha256":hashlib.sha256(canonical.encode()).hexdigest(),"packages":packages,"artifacts":artifacts}
response = {"status":"unsolved","proof":"","metrics":{"engine":"pantograph-local-bfs-v2","nodes_expanded":1,"tactic_attempts":2,"max_depth":1,"stop_reason":"frontier_exhausted"},"runtime_identity":runtime}
print(json.dumps(response, separators=(",", ":")))
`
	bridge := writeLocalProcessBridgeNamed(t, root, "pantograph_search.py", bridgeSource)
	if bridge != filepath.Join(root, "scripts", "pantograph_search.py") {
		t.Fatalf("synthetic bridge path = %q", bridge)
	}
	searcher := PantographSearchSolver{
		PythonExecutable: python, ProjectRoot: root, LeanProjectRoot: root,
		Imports: []string{"Init"}, RetrievalHints: []string{"Nat.zero_add"},
		RetrievalOutputSHA256:  strings.Repeat("a", 64),
		SourceDeclarationHints: []string{"PinnedNamespace.theorem"},
		SourceContextSHA256:    strings.Repeat("b", 64),
	}
	proposal, err := searcher.Solve(context.Background(), domain.MathProblem{
		ID: "synthetic-unsolved", LeanStatement: "theorem synthetic : True",
	})
	if err != nil {
		t.Fatalf("Solve() error = %v", err)
	}
	if proposal.Proof != "" || proposal.SearchMetrics == nil || proposal.LocalProcessTrace == nil {
		t.Fatalf("synthetic unsolved proposal lost metrics or execution trace: %#v", proposal)
	}
	if proposal.LocalProcessTrace.Termination != "EXITED" || proposal.LocalProcessTrace.ExecutionClass != domain.LocalProcessHostUnisolated {
		t.Fatalf("Pantograph search trace = %#v", proposal.LocalProcessTrace)
	}
	if proposal.LocalProcessTrace.RuntimeIdentity == nil || proposal.LocalProcessTrace.RuntimeIdentity.RuntimeKind != "pantograph-search" {
		t.Fatalf("Pantograph runtime identity missing from trace: %#v", proposal.LocalProcessTrace)
	}
	var capturedRequest struct {
		RetrievalHints         []string `json:"retrieval_hints"`
		RetrievalOutputSHA256  string   `json:"retrieval_output_sha256"`
		SourceDeclarationHints []string `json:"source_declaration_hints"`
		SourceContextSHA256    string   `json:"source_context_sha256"`
	}
	if err := json.Unmarshal(proposal.LocalProcessTrace.InputBase64, &capturedRequest); err != nil {
		t.Fatalf("decode exact captured Pantograph request: %v", err)
	}
	if len(capturedRequest.RetrievalHints) != 1 || capturedRequest.RetrievalHints[0] != "Nat.zero_add" || capturedRequest.RetrievalOutputSHA256 != strings.Repeat("a", 64) {
		t.Fatalf("Pantograph trace lost the validated retrieval binding: %#v", capturedRequest)
	}
	if len(capturedRequest.SourceDeclarationHints) != 1 || capturedRequest.SourceDeclarationHints[0] != "PinnedNamespace.theorem" || capturedRequest.SourceContextSHA256 != strings.Repeat("b", 64) {
		t.Fatalf("Pantograph trace lost the separate validated source-context binding: %#v", capturedRequest)
	}
	if err := proposal.LocalProcessTrace.Validate(); err != nil {
		t.Fatalf("trace validation failed: %v", err)
	}
	result, err := testCascade([]Solver{searcher}, &scriptedVerifier{}, nil).Solve(context.Background(), "run-pantograph-trace", domain.MathProblem{
		ID: "synthetic-unsolved", LeanStatement: "theorem synthetic : True",
	})
	if err != nil || len(result.Attempts) != 1 || result.Attempts[0].LocalProcessTrace == nil {
		t.Fatalf("Cascade.Solve() = %#v, %v; want persisted synthetic process trace", result, err)
	}
	if err := result.Attempts[0].Validate(); err != nil {
		t.Fatalf("persisted solver attempt is invalid: %v", err)
	}
}

func TestPantographSearchRetainsTraceWhenBridgeOutputIsInvalid(t *testing.T) {
	python := testLocalPythonExecutable(t)
	root := t.TempDir()
	writeLocalProcessBridgeNamed(t, root, "pantograph_search.py", "import sys\nsys.stdin.buffer.read()\nprint('not-json')\n")
	searcher := PantographSearchSolver{
		PythonExecutable: python, ProjectRoot: root, LeanProjectRoot: root,
		Imports: []string{"Init"},
	}
	proposal, err := searcher.Solve(context.Background(), domain.MathProblem{
		ID: "synthetic-malformed", LeanStatement: "theorem synthetic : True",
	})
	if err == nil || proposal.LocalProcessTrace == nil {
		t.Fatalf("Solve() = proposal %#v, error %v; want parse refusal with preserved trace", proposal, err)
	}
	if err := proposal.LocalProcessTrace.Validate(); err != nil {
		t.Fatalf("malformed-output trace validation failed: %v", err)
	}
	result, err := testCascade([]Solver{searcher}, &scriptedVerifier{}, nil).Solve(context.Background(), "run-pantograph-parse-error", domain.MathProblem{
		ID: "synthetic-malformed", LeanStatement: "theorem synthetic : True",
	})
	if err != nil || len(result.Attempts) != 1 {
		t.Fatalf("Cascade.Solve() = %#v, %v; want one retained failed attempt", result, err)
	}
	attempt := result.Attempts[0]
	if attempt.Outcome != domain.SolverOutcomeError || attempt.LocalProcessTrace == nil || !strings.Contains(attempt.FailureSummary, "trace is attached") {
		t.Fatalf("failed search attempt = %#v; want error and preserved trace", attempt)
	}
}
