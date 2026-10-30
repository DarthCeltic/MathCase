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

func TestGeneratedLeanRuntimePreflightSourceUsesOnlySelectedImports(t *testing.T) {
	source := generatedLeanRuntimePreflightSource([]string{"Mathlib.Data.Nat.Prime.Basic"})
	want := "import Mathlib.Data.Nat.Prime.Basic\n\nexample : True := by trivial\n"
	if source != want {
		t.Fatalf("generated runtime preflight source = %q, want exact selected import and a non-target smoke theorem %q", source, want)
	}
	if strings.Contains(source, "mathcase_candidate") || strings.Contains(source, "LeanStatement") {
		t.Fatalf("runtime preflight leaked a target theorem: %q", source)
	}
}

func TestLeanRuntimePreflightImportBudgetSupportsColdClosures(t *testing.T) {
	for _, test := range []struct {
		name      string
		candidate time.Duration
		want      time.Duration
	}{
		{name: "short candidate budget", candidate: 2 * time.Minute, want: leanRuntimeImportFloor},
		{name: "long candidate budget", candidate: 8 * time.Minute, want: 8 * time.Minute},
	} {
		t.Run(test.name, func(t *testing.T) {
			if got := leanRuntimePreflightImportBudget(test.candidate); got != test.want {
				t.Fatalf("preflight import budget = %s, want %s", got, test.want)
			}
		})
	}
}

func TestLeanRuntimePreflightCacheBindsIdentityAndExpires(t *testing.T) {
	now := time.Date(2026, time.October, 28, 12, 30, 0, 0, time.UTC)
	imports := []string{"Mathlib.Data.Nat.Prime.Basic"}
	key := leanRuntimePreflightCacheKey(`C:\receipts`, "sha256:image", "manifest-sha", `C:\snapshot\manifest.json`, "docker", imports, "prime-divisibility", "statement-sha", defaultLeanToolchain, defaultLeanToolchain)
	evidence := leanRuntimePreflightEvidence{
		EvidenceID: "lean-preflight-test", ReceiptSHA256: strings.Repeat("a", 64), ReceiptPath: `C:\receipts\lean-preflight-test.json`,
		ManifestSHA: "manifest-sha", Image: "sha256:image", Docker: "docker",
		Imports: strings.Join(imports, "\x00"), ProblemID: "prime-divisibility",
		StatementSHA: "statement-sha", Toolchain: defaultLeanToolchain,
		Expected: defaultLeanToolchain, PreparedAtUTC: now,
	}
	storeLeanRuntimePreflightEvidence(key, evidence)
	if cached, ok := takeLeanRuntimePreflightEvidence(key, now.Add(time.Minute)); !ok || cached.EvidenceID != evidence.EvidenceID {
		t.Fatalf("matching runtime preflight cache lookup = %#v, %t; want stored evidence", cached, ok)
	}
	otherImports := []string{"Mathlib.Data.Nat.Basic"}
	otherKey := leanRuntimePreflightCacheKey(`C:\receipts`, "sha256:image", "manifest-sha", `C:\snapshot\manifest.json`, "docker", otherImports, "prime-divisibility", "statement-sha", defaultLeanToolchain, defaultLeanToolchain)
	if _, ok := takeLeanRuntimePreflightEvidence(otherKey, now.Add(time.Minute)); ok {
		t.Fatal("preflight evidence crossed into a different import closure")
	}
	otherReceiptRootKey := leanRuntimePreflightCacheKey(`C:\other-receipts`, "sha256:image", "manifest-sha", `C:\snapshot\manifest.json`, "docker", imports, "prime-divisibility", "statement-sha", defaultLeanToolchain, defaultLeanToolchain)
	if _, ok := takeLeanRuntimePreflightEvidence(otherReceiptRootKey, now.Add(time.Minute)); ok {
		t.Fatal("preflight evidence crossed into a different receipt root")
	}
	if _, ok := takeLeanRuntimePreflightEvidence(key, now.Add(leanRuntimePreflightTTL+time.Second)); ok {
		t.Fatal("expired preflight evidence was reused")
	}
	futureKey := key + "-future"
	futureEvidence := evidence
	futureEvidence.EvidenceID = "lean-preflight-future-test"
	futureEvidence.PreparedAtUTC = now.Add(time.Minute)
	storeLeanRuntimePreflightEvidence(futureKey, futureEvidence)
	if _, ok := takeLeanRuntimePreflightEvidence(futureKey, now); ok {
		t.Fatal("future-dated preflight evidence was reused")
	}
}

func countLeanRuntimePreflightReceipts(t *testing.T, root string) (int, string) {
	t.Helper()
	entries, err := os.ReadDir(root)
	if err != nil {
		t.Fatalf("read runtime preflight receipt directory: %v", err)
	}
	count := 0
	path := ""
	for _, entry := range entries {
		if entry.IsDir() || filepath.Ext(entry.Name()) != ".json" {
			continue
		}
		data, err := os.ReadFile(filepath.Join(root, entry.Name()))
		if err != nil {
			t.Fatalf("read candidate runtime receipt header %q: %v", entry.Name(), err)
		}
		var header struct {
			SchemaVersion string `json:"schema_version"`
		}
		if err := json.Unmarshal(data, &header); err != nil {
			t.Fatalf("decode candidate runtime receipt header %q: %v", entry.Name(), err)
		}
		if header.SchemaVersion == leanRuntimePreflightSchema {
			count++
			path = filepath.Join(root, entry.Name())
		}
	}
	return count, path
}

// This exact-image integration test is opt-in because it starts isolated
// Docker containers. It measures a preflight followed by valid and invalid
// candidates under the same imports; the receipts remain runtime/proof
// evidence, not additional campaign attempts.
func TestLeanRuntimePreflightWarmsPinnedImportClosureBeforeCandidateChecks(t *testing.T) {
	verifier, available := localLeanVerifier(t)
	if !available {
		t.Skip("pinned Lean snapshot image and manifest are not configured")
	}
	verifier.Imports = []string{"Mathlib.Data.Nat.Prime.Basic"}
	verifier.Timeout = 2 * time.Minute
	diagnosticRoot := strings.TrimSpace(os.Getenv("MATHCASE_RUNTIME_PREFLIGHT_EVIDENCE_ROOT"))
	if diagnosticRoot == "" {
		diagnosticRoot = t.TempDir()
	} else {
		absoluteRoot, err := filepath.Abs(diagnosticRoot)
		if err != nil {
			t.Fatal(err)
		}
		diagnosticRoot = absoluteRoot
	}
	verifier.WorkspaceRoot = filepath.Join(diagnosticRoot, "workspaces")
	verifier.ReceiptRoot = filepath.Join(diagnosticRoot, "receipts")
	problem := domain.MathProblem{
		ID:            "prime-divisibility-runtime-diagnostic",
		Statement:     "If p is prime and p divides n squared, then p divides n.",
		LeanStatement: "∀ (p n : Nat), p.Prime → p ∣ n ^ 2 → p ∣ n",
	}
	started := time.Now()
	if err := verifier.Preflight(context.Background(), "run-runtime-diagnostic", problem); err != nil {
		t.Fatalf("exact-import runtime preflight failed before any provider call: %v", err)
	}
	preflightElapsed := time.Since(started)
	preflightFiles, preflightPath := countLeanRuntimePreflightReceipts(t, verifier.ReceiptRoot)
	if preflightFiles != 1 {
		t.Fatalf("runtime preflight receipts = %d, want exactly one independent receipt", preflightFiles)
	}
	preflightBytes, err := os.ReadFile(preflightPath)
	if err != nil {
		t.Fatal(err)
	}
	var preflight LeanRuntimePreflightReceipt
	if err := json.Unmarshal(preflightBytes, &preflight); err != nil {
		t.Fatal(err)
	}
	if err := ValidateLeanRuntimePreflightReceipt(preflight); err != nil {
		t.Fatalf("runtime preflight receipt did not reopen: %v", err)
	}
	if preflight.Status != "PASSED" {
		t.Fatalf("runtime-only preflight status = %q, want PASSED", preflight.Status)
	}
	t.Logf("runtime preflight: total=%s version-container=%s import-container=%s evidence=%s", preflightElapsed, preflight.LeanVersionCheck.Execution.FinishedAtUTC.Sub(preflight.LeanVersionCheck.Execution.StartedAtUTC), preflight.SandboxExecution.FinishedAtUTC.Sub(preflight.SandboxExecution.StartedAtUTC), preflight.EvidenceID)

	// Simulate a new solver process by discarding the in-memory cache. The
	// second dispatch must reopen the exact receipt and avoid a new Lean import
	// container while still checking the current pinned image and manifest.
	leanRuntimePreflightCache.Lock()
	leanRuntimePreflightCache.entries = make(map[string]leanRuntimePreflightEvidence)
	leanRuntimePreflightCache.Unlock()
	warmVerifier := verifier
	warmStarted := time.Now()
	if err := warmVerifier.Preflight(context.Background(), "run-runtime-diagnostic-reuse", problem); err != nil {
		t.Fatalf("reopen exact recent preflight receipt in a fresh-process cache: %v", err)
	}
	warmElapsed := time.Since(warmStarted)
	preflightFiles, _ = countLeanRuntimePreflightReceipts(t, verifier.ReceiptRoot)
	if preflightFiles != 1 {
		t.Fatalf("warm cross-process preflight wrote %d receipts, want the original runtime receipt only", preflightFiles)
	}
	t.Logf("warm persisted preflight: total=%s reused_evidence=%s", warmElapsed, preflight.EvidenceID)

	validStarted := time.Now()
	valid, err := verifier.Verify(context.Background(), problem, "by\n  intro p n hp h\n  exact hp.dvd_of_dvd_pow h")
	validElapsed := time.Since(validStarted)
	if err != nil {
		t.Fatalf("known-valid prime divisibility proof returned error: %v", err)
	}
	validReceipt := readLeanReceipt(t, verifier.ReceiptRoot, valid.EvidenceID)
	if !valid.KernelPassed || !valid.AxiomsPassed || validReceipt.Status != "PASSED" || validReceipt.LeanPreflightEvidenceID != preflight.EvidenceID {
		t.Fatalf("known-valid proof did not pass with linked preflight evidence: result=%#v receipt=%#v", valid, validReceipt)
	}
	t.Logf("known-valid proof: total=%s candidate-container=%s evidence=%s", validElapsed, validReceipt.SandboxExecution.FinishedAtUTC.Sub(validReceipt.SandboxExecution.StartedAtUTC), valid.EvidenceID)

	invalidStarted := time.Now()
	invalid, err := verifier.Verify(context.Background(), problem, "by repeat intro; simp [Nat.prime_dvd_mul]")
	invalidElapsed := time.Since(invalidStarted)
	if err != nil {
		t.Fatalf("known-invalid provider candidate returned infrastructure error: %v", err)
	}
	invalidReceipt := readLeanReceipt(t, verifier.ReceiptRoot, invalid.EvidenceID)
	if invalid.KernelPassed || invalidReceipt.Status != "KERNEL_REJECTED" || invalidReceipt.LeanPreflightEvidenceID != preflight.EvidenceID {
		t.Fatalf("known-invalid proof verdict or preflight link is wrong: result=%#v receipt=%#v", invalid, invalidReceipt)
	}
	t.Logf("known-invalid proof: total=%s candidate-container=%s status=%s evidence=%s", invalidElapsed, invalidReceipt.SandboxExecution.FinishedAtUTC.Sub(invalidReceipt.SandboxExecution.StartedAtUTC), invalidReceipt.Status, invalid.EvidenceID)
}
