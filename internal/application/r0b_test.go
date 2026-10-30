package application

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

func TestR0bRuntimeRunsPantographThroughRealLeanAndAxiomAudit(t *testing.T) {
	image := strings.TrimPrefix(os.Getenv("MATHCASE_LEAN_SANDBOX_IMAGE"), "sha256:")
	if len(image) != 64 {
		t.Skip("immutable MATHCASE_LEAN_SANDBOX_IMAGE is not configured")
	}
	if _, err := hex.DecodeString(image); err != nil {
		t.Skip("immutable MATHCASE_LEAN_SANDBOX_IMAGE is not configured")
	}
	if _, err := exec.LookPath("docker"); err != nil {
		t.Skip("Docker is not installed")
	}
	pantographImage := strings.TrimSpace(os.Getenv("MATHCASE_PANTOGRAPH_SANDBOX_IMAGE"))
	pantographDigest := strings.TrimPrefix(pantographImage, "sha256:")
	if len(pantographDigest) != 64 {
		t.Skip("immutable MATHCASE_PANTOGRAPH_SANDBOX_IMAGE is not configured")
	}
	if _, err := hex.DecodeString(pantographDigest); err != nil {
		t.Skip("immutable MATHCASE_PANTOGRAPH_SANDBOX_IMAGE is not configured")
	}
	manifest := strings.TrimSpace(os.Getenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST"))
	if manifest == "" {
		t.Skip("qualified MATHCASE_LEAN_SNAPSHOT_MANIFEST is not configured")
	} else if _, err := os.Stat(manifest); err != nil {
		t.Skip("qualified MATHCASE_LEAN_SNAPSHOT_MANIFEST is unavailable")
	}
	repositoryRoot, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	tempRoot := t.TempDir()
	persistedRoot := strings.TrimSpace(os.Getenv("MATHCASE_R0B_E2E_OUTPUT_ROOT"))
	if persistedRoot != "" {
		tempRoot, err = filepath.Abs(persistedRoot)
		if err != nil {
			t.Fatal(err)
		}
		if _, statErr := os.Lstat(tempRoot); statErr == nil || !os.IsNotExist(statErr) {
			t.Fatalf("persistent R0b evidence root must be new and absent: %s", tempRoot)
		}
		if err := os.MkdirAll(tempRoot, 0o700); err != nil {
			t.Fatal(err)
		}
	}
	startedAt := time.Now().UTC()
	runReceipt := map[string]any{
		"schema_version":       "mathcase-r0b-container-e2e-receipt-v1",
		"run_id":               "r0b-e2e-run",
		"started_at_utc":       startedAt,
		"status":               "INCOMPLETE",
		"request_path":         "run-request.json",
		"claim_class":          "known-result plumbing run; not a discovery",
		"provider_call":        "NONE",
		"provider_cost_micros": 0,
	}
	defer func() {
		if persistedRoot == "" {
			return
		}
		if runReceipt["status"] != "PASSED" {
			runReceipt["status"] = "FAILED"
			if runReceipt["error"] == nil {
				runReceipt["error"] = "run ended before all acceptance assertions passed"
			}
		}
		runReceipt["finished_at_utc"] = time.Now().UTC()
		receiptBytes, marshalErr := json.MarshalIndent(runReceipt, "", "  ")
		if marshalErr != nil {
			t.Errorf("marshal persistent R0b integration receipt: %v", marshalErr)
			return
		}
		if writeErr := os.WriteFile(filepath.Join(tempRoot, "integration-run-receipt.json"), append(receiptBytes, '\n'), 0o600); writeErr != nil {
			t.Errorf("write persistent R0b integration receipt: %v", writeErr)
		}
	}()
	workspaceRoot, err := filepath.Rel(repositoryRoot, filepath.Join(tempRoot, "workspaces"))
	if err != nil {
		t.Fatal(err)
	}
	receiptRoot, err := filepath.Rel(repositoryRoot, filepath.Join(tempRoot, "receipts"))
	if err != nil {
		t.Fatal(err)
	}
	planPath := filepath.Join(repositoryRoot, "proofs", "r0b", "pantograph_plan.json")
	proofPath := filepath.Join(repositoryRoot, "proofs", "r0b", "MathCaseR0b.lean")
	planBytes, err := os.ReadFile(planPath)
	if err != nil {
		t.Fatal(err)
	}
	proofBytes, err := os.ReadFile(proofPath)
	if err != nil {
		t.Fatal(err)
	}
	manifestBytes, err := os.ReadFile(manifest)
	if err != nil {
		t.Fatal(err)
	}
	request := map[string]any{
		"schema_version":           "mathcase-r0b-container-e2e-request-v1",
		"run_id":                   "r0b-e2e-run",
		"test_name":                t.Name(),
		"started_at_utc":           startedAt,
		"lean_image":               "sha256:" + image,
		"pantograph_image":         pantographImage,
		"snapshot_manifest_path":   manifest,
		"snapshot_manifest_sha256": fmt.Sprintf("%x", sha256.Sum256(manifestBytes)),
		"pantograph_plan_path":     planPath,
		"pantograph_plan_sha256":   fmt.Sprintf("%x", sha256.Sum256(planBytes)),
		"r0b_source_path":          proofPath,
		"r0b_source_sha256":        fmt.Sprintf("%x", sha256.Sum256(proofBytes)),
		"network_policy":           "none for both containers",
		"claim_class":              "known-result plumbing run; not a discovery",
	}
	requestBytes, err := json.MarshalIndent(request, "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	runReceipt["request_sha256"] = fmt.Sprintf("%x", sha256.Sum256(append(requestBytes, '\n')))
	if persistedRoot != "" {
		inputRoot := filepath.Join(tempRoot, "inputs")
		if err := os.MkdirAll(inputRoot, 0o700); err != nil {
			t.Fatal(err)
		}
		for name, data := range map[string][]byte{"pantograph_plan.json": planBytes, "MathCaseR0b.lean": proofBytes, "snapshot-manifest.json": manifestBytes} {
			if err := os.WriteFile(filepath.Join(inputRoot, name), data, 0o600); err != nil {
				t.Fatal(err)
			}
		}
		if err := os.WriteFile(filepath.Join(tempRoot, "run-request.json"), append(requestBytes, '\n'), 0o600); err != nil {
			t.Fatal(err)
		}
	}
	runtime, err := NewR0bRuntime(R0bConfig{
		RepositoryRoot:           repositoryRoot,
		PantographSandboxImage:   pantographImage,
		LeanSandboxImage:         "sha256:" + image,
		LeanSnapshotManifestPath: manifest,
		WorkspaceRoot:            workspaceRoot,
		ReceiptRoot:              receiptRoot,
	})
	if err != nil {
		t.Fatal(err)
	}
	result, err := runtime.Solve(context.Background(), "r0b-e2e-run")
	if persistedRoot != "" {
		resultBytes, marshalErr := json.MarshalIndent(result, "", "  ")
		if marshalErr != nil {
			t.Fatal(marshalErr)
		}
		if writeErr := os.WriteFile(filepath.Join(tempRoot, "run-result.json"), append(resultBytes, '\n'), 0o600); writeErr != nil {
			t.Fatal(writeErr)
		}
		runReceipt["result_path"] = "run-result.json"
		runReceipt["result_sha256"] = fmt.Sprintf("%x", sha256.Sum256(append(resultBytes, '\n')))
		runReceipt["solved"] = result.Solved
		if len(result.Attempts) > 0 {
			attempt := result.Attempts[0]
			runReceipt["attempt_outcome"] = attempt.Outcome
			runReceipt["attempt_failure_class"] = attempt.FailureClass
			runReceipt["attempt_failure_summary"] = attempt.FailureSummary
		}
	}
	if err != nil {
		runReceipt["error"] = err.Error()
		t.Fatal(err)
	}
	if !result.Solved || len(result.Attempts) != 1 {
		runReceipt["error"] = "local R0b runtime did not solve the known proof or returned multiple attempts"
		t.Fatalf("local R0b runtime did not solve the known proof: %#v", result)
	}
	attempt := result.Attempts[0]
	if attempt.Outcome != domain.SolverOutcomePass || attempt.ProviderID != "" || attempt.CostMicros != 0 || len(attempt.EvidenceIDs) != 1 {
		runReceipt["error"] = "R0b attempt lacked a provider-free verified receipt"
		t.Fatalf("R0b attempt lacks a verified provider-free receipt: %#v", attempt)
	}
	data, err := os.ReadFile(filepath.Join(runtime.Cascade.Verifier.(solver.LeanVerifier).ReceiptRoot, attempt.EvidenceIDs[0]+".json"))
	if err != nil {
		runReceipt["error"] = err.Error()
		t.Fatal(err)
	}
	var receipt solver.LeanVerificationReceipt
	if err := json.Unmarshal(data, &receipt); err != nil {
		runReceipt["error"] = err.Error()
		t.Fatal(err)
	}
	if persistedRoot != "" {
		runReceipt["lean_receipt_path"] = filepath.ToSlash(filepath.Join("receipts", filepath.Base(filepath.Join(runtime.Cascade.Verifier.(solver.LeanVerifier).ReceiptRoot, attempt.EvidenceIDs[0]+".json"))))
		runReceipt["lean_receipt_sha256"] = fmt.Sprintf("%x", sha256.Sum256(data))
	}
	if err := validateR0bE2EResult(result, receipt); err != nil {
		runReceipt["error"] = err.Error()
		t.Fatalf("R0b end-to-end result validation: %v", err)
	}
	runReceipt["status"] = "PASSED"
	runReceipt["validation"] = "solver outcome, provider/cost boundary, Lean kernel, axiom audit, and exact proof hash all passed"
}

func validateR0bE2EResult(result solver.Result, receipt solver.LeanVerificationReceipt) error {
	if !result.Solved || len(result.Attempts) != 1 {
		return fmt.Errorf("expected a solved result with exactly one attempt; solved=%t attempts=%d", result.Solved, len(result.Attempts))
	}
	attempt := result.Attempts[0]
	if attempt.Outcome != domain.SolverOutcomePass || attempt.ProviderID != "" || attempt.CostMicros != 0 || len(attempt.EvidenceIDs) != 1 {
		return fmt.Errorf("attempt is not a provider-free verified pass: outcome=%q provider=%q cost=%d evidence=%v", attempt.Outcome, attempt.ProviderID, attempt.CostMicros, attempt.EvidenceIDs)
	}
	proofDigest := sha256.Sum256([]byte(result.Proof))
	proofSHA := fmt.Sprintf("%x", proofDigest)
	if receipt.Status != "PASSED" || !receipt.KernelPassed || !receipt.AxiomsPassed || receipt.EvidenceID != attempt.EvidenceIDs[0] || receipt.ProofSHA256 != attempt.VerifiedProofSHA256 || attempt.VerifiedProofSHA256 != proofSHA {
		return fmt.Errorf("Lean receipt does not bind the passing attempt and exact result proof: status=%q kernel=%t axioms=%t evidence=%q proof=%q attempt_proof=%q result_proof=%q", receipt.Status, receipt.KernelPassed, receipt.AxiomsPassed, receipt.EvidenceID, receipt.ProofSHA256, attempt.VerifiedProofSHA256, proofSHA)
	}
	return nil
}

func TestR0bRuntimeUsesPinnedPantographImageWithoutHostPython(t *testing.T) {
	repositoryRoot, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	image := "sha256:" + strings.Repeat("a", 64)
	runtime, err := NewR0bRuntime(R0bConfig{
		RepositoryRoot:         repositoryRoot,
		PantographSandboxImage: image,
		WorkspaceRoot:          filepath.Join(t.TempDir(), "workspaces"),
		ReceiptRoot:            filepath.Join(t.TempDir(), "receipts"),
	})
	if err != nil {
		t.Fatalf("NewR0bRuntime() with a pinned Pantograph image and no host Python = %v", err)
	}
	localSolver, ok := runtime.Cascade.Solvers[0].(solver.PantographTacticSolver)
	if !ok {
		t.Fatalf("configured R0b solver = %T, want PantographTacticSolver", runtime.Cascade.Solvers[0])
	}
	if localSolver.PythonExecutable != "" || localSolver.SandboxImage != image {
		t.Fatalf("R0b container configuration = %#v, want no host Python and image %q", localSolver, image)
	}
}

func TestValidateR0bE2EResultRefusesRejectedAttemptWithEvidenceID(t *testing.T) {
	proof := "by exact Nat.add_assoc _ _ _"
	proofDigest := sha256.Sum256([]byte(proof))
	proofSHA := fmt.Sprintf("%x", proofDigest)
	result := solver.Result{
		Solved: false,
		Proof:  proof,
		Attempts: []domain.SolverAttempt{{
			Outcome:             domain.SolverOutcomeRejected,
			EvidenceIDs:         []string{"evidence-123"},
			VerifiedProofSHA256: proofSHA,
		}},
	}
	receipt := solver.LeanVerificationReceipt{
		EvidenceID:   "evidence-123",
		Status:       "PASSED",
		KernelPassed: true,
		AxiomsPassed: true,
		ProofSHA256:  proofSHA,
	}
	if err := validateR0bE2EResult(result, receipt); err == nil {
		t.Fatal("validateR0bE2EResult() accepted a rejected attempt with an evidence ID")
	}
}
