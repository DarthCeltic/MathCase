package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"
)

func TestProviderLeanWorkspaceDefaultsToRunDirectory(t *testing.T) {
	resultPath := filepath.Join(t.TempDir(), "data", "local", "verification", "run-1", "provider-solve.json")
	want := filepath.Join(filepath.Dir(resultPath), "lean-workspaces")
	if got := providerLeanWorkspaceRoot("", resultPath); got != want {
		t.Fatalf("providerLeanWorkspaceRoot(default) = %q, want run-local workspace %q", got, want)
	}
	if got := providerLeanWorkspaceRoot(" C:\\scratch\\custom ", resultPath); got != "C:\\scratch\\custom" {
		t.Fatalf("providerLeanWorkspaceRoot(explicit) = %q, want the trimmed configured path", got)
	}
}

func TestSolveProviderRequiresExplicitDispatchBeforeReadingInputs(t *testing.T) {
	var stdout, stderr bytes.Buffer
	code := runSolveProvider([]string{"--problem", "does-not-exist.json"}, &stdout, &stderr)
	if code != 2 {
		t.Fatalf("runSolveProvider without --dispatch returned %d, want usage error", code)
	}
	if !strings.Contains(stderr.String(), "requires --dispatch") {
		t.Fatalf("runSolveProvider refusal = %q, want an explicit-dispatch requirement", stderr.String())
	}
	if stdout.Len() != 0 {
		t.Fatalf("runSolveProvider without --dispatch wrote output %q", stdout.String())
	}
}

func TestSolveProviderPreflightOnlyOpensExactContextAuthorizationWithoutSending(t *testing.T) {
	t.Setenv("MATHCASE_PREFLIGHT_ONLY_TEST_KEY", "test-key-never-sent")
	root := t.TempDir()
	contextContent := `{"case":"preflight-only","lean_environment":{"imports":["Mathlib.Data.Nat.Basic"],"toolchain":"leanprover/lean4:v4.33.1"}}`
	digestBytes := sha256.Sum256([]byte(contextContent))
	contextDigest := hex.EncodeToString(digestBytes[:])
	statement := "theorem preflight_case (n : Nat) : n + 0 = n"
	problemPath := filepath.Join(root, "problem.json")
	problem := map[string]any{
		"id": "preflight-case", "title": "Preflight context contract",
		"statement":        "Adding zero to a natural number leaves it unchanged.",
		"lean_statement":   statement,
		"provider_context": map[string]string{"id": "preflight-context-r1", "sha256": contextDigest, "content": contextContent},
	}
	writeJSON := func(path string, value any) []byte {
		t.Helper()
		raw, err := json.Marshal(value)
		if err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(path, raw, 0o600); err != nil {
			t.Fatal(err)
		}
		return raw
	}
	writeJSON(problemPath, problem)
	ownerPath := filepath.Join(root, "owner.json")
	clearancePath := filepath.Join(root, "clearance.json")
	contextPath := "data/local/verification/user-problem-cases/preflight-case/preflight.provider-context.json"
	endpoint := "https://api.tokenfactory.nebius.com/v1/chat/completions"
	expires := time.Now().UTC().Add(time.Hour).Format(time.RFC3339Nano)
	ownerRaw := writeJSON(ownerPath, map[string]any{
		"schema":           "mathcase-external-solver-authorization-v1",
		"authorization_id": "preflight-owner-grant-r1",
		"provider_id":      "nebius-token-factory", "protocol_id": "openai-chat-completions-v1",
		"model_ids": []string{"nvidia/Nemotron-3_5-Lightning"}, "endpoint_url": endpoint,
		"expires_at_utc": expires, "per_call_cost_ceiling_micros": 5000,
		"authorized_content":  "theorem statements, proof attempts, and exact SHA-256-listed problem contexts only",
		"authorized_contexts": []map[string]string{{"problem_id": "preflight-case", "context_sha256": contextDigest}},
		"items":               []string{"MathCaseUserCase_preflight_case"},
		"prohibited_content":  []string{"mined Zulip or Erdős content", "corpus material", "locked cases", "training data"},
		"training_authorized": false,
	})
	statementDigest := sha256.Sum256([]byte(statement))
	writeJSON(clearancePath, map[string]any{
		"schema": "mathcase-provider-input-clearance-v1", "authorization_path": ownerPath,
		"authorization_sha256": providerSolveSHA256(ownerRaw),
		"authorized_content":   "theorem statement, proof attempts, and the SHA-256-pinned problem context only",
		"clearance_id":         "preflight-item-r1", "expires_at_utc": expires,
		"prohibited_content": []string{"mined Zulip or Erdős content", "corpus material", "locked cases", "training data"},
		"statement":          statement, "statement_sha256": hex.EncodeToString(statementDigest[:]),
		"context_sha256": contextDigest, "provider_context_path": contextPath,
		"theorem_id": "preflight-case", "theorem_name": "MathCaseUserCase_preflight_case", "training_authorized": false,
	})
	snapshotPath := filepath.Join(root, "snapshot.json")
	writeJSON(snapshotPath, map[string]any{
		"schema_version": "mathcase-lean-snapshot-manifest-v1",
		"image_digest":   "sha256:" + strings.Repeat("a", 64),
		"toolchain":      "leanprover/lean4:v4.33.1", "allowed_imports": []string{"Mathlib.Data.Nat.Basic"},
	})
	for _, name := range []string{"provider-calls", "lean-receipts", "workspaces"} {
		if err := os.Mkdir(filepath.Join(root, name), 0o700); err != nil {
			t.Fatal(err)
		}
	}
	outputPath := filepath.Join(root, "preflight-output.json")
	costPath := filepath.Join(root, "cost.jsonl")
	args := []string{
		"--preflight-only", "--provider", "nebius-token-factory", "--protocol", "openai-chat-completions-v1",
		"--model", "nvidia/Nemotron-3_5-Lightning", "--base-url", "https://api.tokenfactory.nebius.com/v1",
		"--api-key-env", "MATHCASE_PREFLIGHT_ONLY_TEST_KEY", "--input-price-micros-per-million", "60000",
		"--output-price-micros-per-million", "240000", "--per-call-ceiling-micros", "5000",
		"--run-ceiling-micros", "10000", "--session-ceiling-micros", "10000", "--candidate-ceiling-micros", "5000",
		"--max-provider-calls", "1", "--max-output-tokens", "512", "--problem", problemPath,
		"--owner-authorization", ownerPath, "--input-clearance", clearancePath, "--run-id", "preflight-only-run-r1",
		"--output", outputPath, "--cost-journal", costPath,
		"--provider-evidence-dir", filepath.Join(root, "provider-calls"), "--lean-snapshot-manifest", snapshotPath,
		"--lean-sandbox-image", "sha256:" + strings.Repeat("a", 64), "--lean-receipt-root", filepath.Join(root, "lean-receipts"),
		"--lean-workspace-root", filepath.Join(root, "workspaces"), "--imports", "Mathlib.Data.Nat.Basic",
	}
	var stdout, stderr bytes.Buffer
	if code := runSolveProvider(args, &stdout, &stderr); code != 0 {
		t.Fatalf("runSolveProvider preflight returned %d: stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
	if !strings.Contains(stdout.String(), "exact prompt context passed local preflight; no provider request was sent") || stderr.Len() != 0 {
		t.Fatalf("preflight response = stdout %q stderr %q", stdout.String(), stderr.String())
	}
	if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
		t.Errorf("preflight unexpectedly wrote a solver result at %q (stat error %v)", outputPath, err)
	}
	if info, err := os.Stat(costPath); err == nil && info.Size() != 0 {
		t.Errorf("preflight unexpectedly wrote cost entries to %q", costPath)
	} else if err != nil && !os.IsNotExist(err) {
		t.Errorf("inspect preflight cost journal %q: %v", costPath, err)
	}
	entries, err := os.ReadDir(filepath.Join(root, "provider-calls"))
	if err != nil || len(entries) != 0 {
		t.Fatalf("preflight created provider-call evidence: entries=%v err=%v", entries, err)
	}
}

func TestSolveProviderRequiresExplicitProviderModelEndpointAndSecretProfile(t *testing.T) {
	t.Parallel()

	var stdout, stderr bytes.Buffer
	code := runSolveProvider([]string{"--dispatch", "--problem", "does-not-exist.json"}, &stdout, &stderr)
	if code != 2 {
		t.Fatalf("runSolveProvider(--dispatch without route profile) returned %d, want configuration error", code)
	}
	if !strings.Contains(stderr.String(), "explicit --provider, --protocol, --model, --base-url, and --api-key-env") {
		t.Fatalf("runSolveProvider(--dispatch without route profile) refusal = %q, want explicit provider configuration requirement", stderr.String())
	}
	if strings.Contains(stderr.String(), "load cleared problem") || stdout.Len() != 0 {
		t.Fatalf("runSolveProvider(--dispatch without route profile) touched inputs or wrote output: stdout=%q stderr=%q", stdout.String(), stderr.String())
	}
}

func TestSolveProviderRequiresExplicitModelPricingBeforeReadingInputs(t *testing.T) {
	t.Parallel()

	var stdout, stderr bytes.Buffer
	args := []string{
		"--dispatch",
		"--provider", "compatible-test-provider",
		"--protocol", "openai-chat-completions-v1",
		"--model", "compatible-model-v1",
		"--base-url", "https://api.compatible.example/v1",
		"--api-key-env", "COMPATIBLE_PROVIDER_KEY",
		"--problem", "does-not-exist.json",
	}
	code := runSolveProvider(args, &stdout, &stderr)
	if code != 2 {
		t.Fatalf("runSolveProvider(%v) returned %d, want configuration error", args, code)
	}
	if !strings.Contains(stderr.String(), "requires explicit non-negative --input-price-micros-per-million and --output-price-micros-per-million") {
		t.Fatalf("runSolveProvider(%v) refusal = %q, want explicit model pricing requirement", args, stderr.String())
	}
	if strings.Contains(stderr.String(), "load cleared problem") || stdout.Len() != 0 {
		t.Fatalf("runSolveProvider(%v) touched inputs or wrote output: stdout=%q stderr=%q", args, stdout.String(), stderr.String())
	}
}

func TestSolveProviderHelpDoesNotRequireDispatchOrCredentials(t *testing.T) {
	var stdout, stderr bytes.Buffer
	code := runSolveProvider([]string{"--help"}, &stdout, &stderr)
	if code != 0 {
		t.Fatalf("runSolveProvider(--help) returned %d, want success", code)
	}
	for _, required := range []string{"-dispatch", "-preflight-only", "-check-lean-statement", "-input-clearance", "-provider", "-protocol", "-model", "-base-url", "-api-key-env", "-input-price-micros-per-million", "-max-provider-calls", "-lean-timeout", "anthropic-messages-v1"} {
		if !strings.Contains(stderr.String(), required) {
			t.Errorf("runSolveProvider(--help) omitted %q from the route contract: %q", required, stderr.String())
		}
	}
}
