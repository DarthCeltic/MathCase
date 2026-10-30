package solver

import (
	"context"
	"encoding/json"
	"os"
	"os/exec"
	"path/filepath"
	"testing"
	"time"
)

func TestZ3SMTSearchAttachesExecutionTraceForSyntheticBridge(t *testing.T) {
	python := testLocalPythonExecutable(t)
	root := t.TempDir()
	bridge := `import hashlib, json, sys
request = json.loads(sys.stdin.buffer.read())
digest = hashlib.sha256(request["smtlib"].encode("utf-8")).hexdigest()
packages = [{"name":"z3-solver","version":"5.3.1.0","source_revision":"","direct_url_sha256":""}]
canonical = "".join("\0".join((p["name"], p["version"], p["source_revision"], p["direct_url_sha256"])) + "\n" for p in packages)
roles = ["python_executable","z3_module_tree","z3_requirements"]
artifacts = [{"role":role,"path":"synthetic-" + role,"sha256":hashlib.sha256(role.encode()).hexdigest()} for role in roles]
runtime = {"schema_version":"mathcase-python-runtime-identity-v1","runtime_kind":"z3-smt","python_implementation":"CPython","python_version":"3.11.9","package_inventory_sha256":hashlib.sha256(canonical.encode()).hexdigest(),"packages":packages,"artifacts":artifacts}
print(json.dumps({"schema_version":"mathcase-z3-smt-response-v1","engine":"z3-python-smtlib-v1","status":"UNKNOWN","query_sha256":digest,"solver_version":"synthetic","counterexample_values":{},"summary":"synthetic bridge fixture","runtime_identity":runtime}, separators=(",", ":")))
`
	bridgePath := writeLocalProcessBridge(t, root, bridge)
	searcher := Z3SMTSearchSolver{PythonExecutable: python, BridgePath: bridgePath, ProjectRoot: root, Timeout: 2 * time.Second}
	receipt, err := searcher.Search(context.Background(), "(set-logic ALL)\n(assert true)\n", nil)
	if err != nil {
		t.Fatalf("Search() error = %v", err)
	}
	if receipt.Status != "UNKNOWN" || receipt.ExecutionTrace == nil {
		t.Fatalf("Search() = %#v, want synthetic UNKNOWN with process trace", receipt)
	}
	if receipt.ExecutionTrace.RuntimeIdentity == nil || receipt.ExecutionTrace.RuntimeIdentity.RuntimeKind != "z3-smt" {
		t.Fatalf("synthetic Z3 runtime identity missing from trace: %#v", receipt.ExecutionTrace)
	}
	if err := receipt.ExecutionTrace.Validate(); err != nil {
		t.Fatalf("execution trace validation failed: %v", err)
	}
	if len(receipt.ExecutionTrace.InputBase64) == 0 || string(receipt.ExecutionTrace.StdoutPrefixBase64) == "" {
		t.Fatal("synthetic Z3 trace did not preserve request and response bytes")
	}
	encoded, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	var reopened SMTSearchReceipt
	if err := json.Unmarshal(encoded, &reopened); err != nil {
		t.Fatal(err)
	}
	if reopened.ExecutionTrace == nil || reopened.ExecutionTrace.Validate() != nil || string(reopened.ExecutionTrace.StdoutPrefixBase64) != string(receipt.ExecutionTrace.StdoutPrefixBase64) {
		t.Fatalf("serialized receipt did not reopen its exact trace: %#v", reopened.ExecutionTrace)
	}

	missingRuntimeIdentityBridge := `import hashlib, json, sys
request = json.loads(sys.stdin.buffer.read())
digest = hashlib.sha256(request["smtlib"].encode("utf-8")).hexdigest()
print(json.dumps({"schema_version":"mathcase-z3-smt-response-v1","engine":"z3-python-smtlib-v1","status":"UNKNOWN","query_sha256":digest,"solver_version":"synthetic","counterexample_values":{},"summary":"missing identity fixture"}, separators=(",", ":")))
`
	if err := os.WriteFile(bridgePath, []byte(missingRuntimeIdentityBridge), 0o600); err != nil {
		t.Fatal(err)
	}
	missingIdentity, err := searcher.Search(context.Background(), "(set-logic ALL)\n(assert true)\n", nil)
	if err != nil || missingIdentity.Status != "ERROR" || missingIdentity.ExecutionTrace == nil {
		t.Fatalf("missing runtime identity = %#v, %v; want ERROR with trace", missingIdentity, err)
	}

	badBridge := `import hashlib, json, sys
request = json.loads(sys.stdin.buffer.read())
packages = [{"name":"z3-solver","version":"5.3.1.0","source_revision":"","direct_url_sha256":""}]
canonical = "".join("\0".join((p["name"], p["version"], p["source_revision"], p["direct_url_sha256"])) + "\n" for p in packages)
roles = ["python_executable","z3_module_tree","z3_requirements"]
artifacts = [{"role":role,"path":"synthetic-" + role,"sha256":hashlib.sha256(role.encode()).hexdigest()} for role in roles]
runtime = {"schema_version":"mathcase-python-runtime-identity-v1","runtime_kind":"z3-smt","python_implementation":"CPython","python_version":"3.11.9","package_inventory_sha256":hashlib.sha256(canonical.encode()).hexdigest(),"packages":packages,"artifacts":artifacts}
print(json.dumps({"schema_version":"mathcase-z3-smt-response-v1","engine":"z3-python-smtlib-v1","status":"UNKNOWN","query_sha256":"wrong","solver_version":"synthetic","counterexample_values":{},"summary":"misbound fixture","runtime_identity":runtime}, separators=(",", ":")))
`
	if err := os.WriteFile(bridgePath, []byte(badBridge), 0o600); err != nil {
		t.Fatal(err)
	}
	refused, err := searcher.Search(context.Background(), "(set-logic ALL)\n(assert true)\n", nil)
	if err != nil || refused.Status != "ERROR" || refused.ExecutionTrace == nil {
		t.Fatalf("misbound response = %#v, %v; want ERROR with trace", refused, err)
	}
}

func TestZ3SMTSearchUsesLocalSolverAndReturnsBoundModel(t *testing.T) {
	root, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	python := filepath.Join(root, ".venv", "Scripts", "python.exe")
	if _, err := exec.LookPath(python); err != nil {
		python = filepath.Join(root, ".venv", "bin", "python")
		if _, err := exec.LookPath(python); err != nil {
			t.Skip("local Python environment is not installed")
		}
	}
	if err := exec.Command(python, "-c", "import z3").Run(); err != nil {
		t.Skip("optional local z3-solver dependency is not installed")
	}
	searcher := Z3SMTSearchSolver{
		PythonExecutable: python,
		BridgePath:       filepath.Join(root, "scripts", "z3_smt_search.py"),
		ProjectRoot:      root,
		Timeout:          5 * time.Second,
	}
	ctx, cancel := context.WithTimeout(context.Background(), 6*time.Second)
	defer cancel()
	query := "(set-logic ALL)\n(declare-const n Int)\n(assert (>= n 0))\n(assert (not (= n 0)))\n"
	receipt, err := searcher.Search(ctx, query, []SMTBinder{{Name: "n", LeanType: "Nat"}})
	if err != nil {
		t.Fatalf("Search() error = %v", err)
	}
	if receipt.Status != "SAT" || receipt.Engine != z3SMTEngine || receipt.SolverVersion == "" || receipt.EvidenceID == "" || receipt.CounterexampleValues["n"] == "0" {
		t.Fatalf("Search() = %#v, want bounded SAT model with a nonzero Nat witness", receipt)
	}
	if err := validateSMTModel(receipt.CounterexampleValues, []SMTBinder{{Name: "n", LeanType: "Nat"}}); err != nil {
		t.Fatalf("validateSMTModel() rejected Z3 result: %v", err)
	}
	query = "(set-logic ALL)\n(declare-const n Int)\n(assert (>= n 0))\n(assert (not (distinct n 0)))\n"
	receipt, err = searcher.Search(ctx, query, []SMTBinder{{Name: "n", LeanType: "Nat"}})
	if err != nil || receipt.Status != "SAT" || receipt.CounterexampleValues["n"] != "0" {
		t.Fatalf("Search(disequality negation) = %#v, %v; want SAT model n=0", receipt, err)
	}
	query = "(set-logic ALL)\n(declare-const n Int)\n(assert (>= n 0))\n(assert (not (= n n)))\n"
	receipt, err = searcher.Search(ctx, query, []SMTBinder{{Name: "n", LeanType: "Nat"}})
	if err != nil || receipt.Status != "UNSAT" {
		t.Fatalf("Search(unsat) = %#v, %v; want UNSAT", receipt, err)
	}
}

func TestSMTModelValidationRejectsUnboundAndIllTypedValues(t *testing.T) {
	for _, values := range []map[string]string{
		{"n": "-1"},
		{"n": "01"},
		{"flag": "true"},
		{"n": "1", "extra": "2"},
	} {
		if err := validateSMTModel(values, []SMTBinder{{Name: "n", LeanType: "Nat"}}); err == nil {
			t.Errorf("validateSMTModel(%v) accepted an invalid Nat model", values)
		}
	}
}

func TestZ3SMTSearchRejectsBridgeOutsideProjectRoot(t *testing.T) {
	searcher := Z3SMTSearchSolver{PythonExecutable: "python", BridgePath: filepath.Join("..", "outside.py"), ProjectRoot: "."}
	if _, err := searcher.Search(context.Background(), "(set-logic ALL)\n(assert false)\n", nil); err == nil {
		t.Fatal("Search() accepted a bridge outside the project root")
	}
}
