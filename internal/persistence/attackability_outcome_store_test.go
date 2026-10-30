package persistence

import (
	"context"
	"encoding/json"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/formalizer"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

func TestAttackabilityOutcomeStoreAppendsAndReopensOneFormalizationFailure(t *testing.T) {
	t.Parallel()
	ctx := context.Background()
	forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecast(t)
	formalizerRoot := filepath.Join(t.TempDir(), "formalizer")
	formalizerStore, err := formalizer.NewArtifactStore(formalizerRoot)
	if err != nil {
		t.Fatal(err)
	}
	store, err := NewAttackabilityOutcomeStore(forecasts, formalizerStore)
	if err != nil {
		t.Fatal(err)
	}
	artifactSHA := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-001", "GENERATION_REJECTED", "FORMALIZATION_FAILURE", nil)
	first, err := store.AppendFormalizerOutcome(ctx, forecastSHA, []string{artifactSHA})
	if err != nil {
		t.Fatalf("AppendFormalizerOutcome() error = %v, want evidence-bound outcome", err)
	}
	second, err := store.AppendFormalizerOutcome(ctx, forecastSHA, []string{artifactSHA})
	if err != nil {
		t.Fatalf("AppendFormalizerOutcome() repeat error = %v, want idempotent replay", err)
	}
	if first.ContentSHA256 != second.ContentSHA256 || first.ParentForecastSHA256 != forecastSHA || first.FormalizerArtifactSHA256 != artifactSHA {
		t.Fatalf("outcome receipts = %#v and %#v, want one idempotent linked child", first, second)
	}
	loaded, receipt, err := store.GetChild(ctx, forecastSHA)
	if err != nil {
		t.Fatalf("GetChild() error = %v, want reopened outcome chain", err)
	}
	if receipt.ContentSHA256 != first.ContentSHA256 || loaded.EvidenceClass != attackabilityOutcomeEvidenceClass || loaded.Record.RecordRevision != 2 || loaded.Record.SupersedesRecordID != forecast.Record.RecordID ||
		loaded.Record.ActualOutcome.Status != domain.AttackabilityFormalizationFailure || loaded.Record.Attempts.FormalizationAttempts != 1 ||
		loaded.Record.Attempts.ProofAttempts != 0 || loaded.Record.Cost.AgentQuotaCalls != 2 {
		t.Fatalf("reopened outcome = %#v, receipt = %#v; want one distinct, non-proof formalization failure", loaded.Record, receipt)
	}
	parentAgain, _, err := forecasts.Get(ctx, forecastSHA)
	if err != nil {
		t.Fatal(err)
	}
	if parentAgain.Record.RecordID != forecast.Record.RecordID || parentAgain.Record.ActualOutcome.Status != domain.AttackabilityNotAttempted || parentAgain.Record.RecordRevision != 1 {
		t.Fatalf("parent forecast changed after outcome append: %#v", parentAgain.Record)
	}
}

func TestAttackabilityForecastOutcomeCalibrationSyntheticDryRun(t *testing.T) {
	ctx := context.Background()
	forecastStore, forecastSHA256, _ := newAttackabilityOutcomeForecast(t)
	forecast, forecastReceipt, err := forecastStore.Get(ctx, forecastSHA256)
	if err != nil {
		t.Fatalf("reopen synthetic forecast: %v", err)
	}
	formalizerStore, err := formalizer.NewArtifactStore(filepath.Join(t.TempDir(), "formalizer"))
	if err != nil {
		t.Fatal(err)
	}
	outcomeStore, err := NewAttackabilityOutcomeStore(forecastStore, formalizerStore)
	if err != nil {
		t.Fatal(err)
	}
	formalizerSHA256 := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA256, forecast, "synthetic-formalizer-run-001", "GENERATION_REJECTED", "FORMALIZATION_FAILURE", nil)
	outcomeReceipt, err := outcomeStore.AppendFormalizerOutcome(ctx, forecastSHA256, []string{formalizerSHA256})
	if err != nil {
		t.Fatalf("append synthetic formalization outcome: %v", err)
	}
	outcome, reopenedOutcomeReceipt, err := outcomeStore.Get(ctx, outcomeReceipt.ContentSHA256)
	if err != nil {
		t.Fatalf("reopen synthetic outcome: %v", err)
	}
	fields, err := BuildSyntheticAttackabilityCalibrationFields(ctx, forecast, forecastReceipt, outcome, reopenedOutcomeReceipt)
	if err != nil {
		t.Fatalf("join synthetic forecast, outcome, and calibration fields: %v", err)
	}
	if fields.EvidenceClass != "SYNTHETIC_DRY_RUN_ONLY" || fields.ForecastCount != 1 || fields.MatchedOutcomeCount != 1 ||
		fields.FeatureProfileCount != 1 || fields.EligibleObservationCount != 0 || fields.ExcludedObservationCount != 1 ||
		fields.CalibrationEligible || fields.ObservedSuccess != nil || fields.BrierScore != nil ||
		fields.ObservedOutcomeClass != domain.AttackabilityFormalizationFailure {
		t.Fatalf("synthetic calibration fields = %#v, want joined fields excluded from calibration", fields)
	}
	chainReceipt := struct {
		SchemaVersion    string `json:"schema_version"`
		TestName         string `json:"test_name"`
		EvidenceClass    string `json:"evidence_class"`
		ForecastSHA256   string `json:"forecast_sha256"`
		OutcomeSHA256    string `json:"outcome_sha256"`
		ParentSHA256     string `json:"parent_forecast_sha256"`
		FormalizerSHA256 string `json:"formalizer_sha256"`
	}{
		SchemaVersion:    "mathcase-synthetic-forecast-outcome-dry-run-v1",
		TestName:         "TestAttackabilityForecastOutcomeCalibrationSyntheticDryRun",
		EvidenceClass:    "SYNTHETIC_DRY_RUN_ONLY",
		ForecastSHA256:   forecastReceipt.ContentSHA256,
		OutcomeSHA256:    reopenedOutcomeReceipt.ContentSHA256,
		ParentSHA256:     reopenedOutcomeReceipt.ParentForecastSHA256,
		FormalizerSHA256: reopenedOutcomeReceipt.FormalizerArtifactSHA256,
	}
	chainBytes, err := json.Marshal(chainReceipt)
	if err != nil {
		t.Fatal(err)
	}
	calibrationBytes, err := json.Marshal(fields)
	if err != nil {
		t.Fatal(err)
	}
	t.Logf("SYNTHETIC_FORECAST_DRY_RUN_CHAIN_JSON=%s", chainBytes)
	const calibrationChunkBytes = 300
	chunkCount := (len(calibrationBytes) + calibrationChunkBytes - 1) / calibrationChunkBytes
	for chunkIndex, start := 0, 0; start < len(calibrationBytes); chunkIndex, start = chunkIndex+1, start+calibrationChunkBytes {
		end := min(start+calibrationChunkBytes, len(calibrationBytes))
		t.Logf("SYNTHETIC_FORECAST_DRY_RUN_CALIBRATION_CHUNK=%02d/%02d:%s", chunkIndex+1, chunkCount, calibrationBytes[start:end])
	}
}

func TestAttackabilityOutcomeStoreClassifiesGeneratorInfrastructureFailure(t *testing.T) {
	t.Parallel()
	ctx := context.Background()
	forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecast(t)
	formalizerStore, err := formalizer.NewArtifactStore(filepath.Join(t.TempDir(), "formalizer"))
	if err != nil {
		t.Fatal(err)
	}
	store, err := NewAttackabilityOutcomeStore(forecasts, formalizerStore)
	if err != nil {
		t.Fatal(err)
	}
	artifactSHA := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-infra", "GENERATION_INFRASTRUCTURE_FAILURE", "INFRASTRUCTURE_FAILURE", nil)
	receipt, err := store.AppendFormalizerOutcome(ctx, forecastSHA, []string{artifactSHA})
	if err != nil {
		t.Fatalf("AppendFormalizerOutcome() error = %v, want typed infrastructure outcome", err)
	}
	loaded, _, err := store.Get(ctx, receipt.ContentSHA256)
	if err != nil {
		t.Fatal(err)
	}
	if loaded.Record.ActualOutcome.Status != domain.AttackabilityInfrastructureFailure || loaded.Record.Attempts.FormalizationAttempts != 1 || loaded.Record.Attempts.ProofAttempts != 0 {
		t.Fatalf("infrastructure outcome = %#v, want one formalization attempt and no proof claim", loaded.Record)
	}
}

func TestAttackabilityOutcomeStoreAcceptsElaboratedCandidateAsInProgressOnly(t *testing.T) {
	t.Parallel()
	ctx := context.Background()
	forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecast(t)
	formalizerStore, err := formalizer.NewArtifactStore(filepath.Join(t.TempDir(), "formalizer"))
	if err != nil {
		t.Fatal(err)
	}
	store, err := NewAttackabilityOutcomeStore(forecasts, formalizerStore)
	if err != nil {
		t.Fatal(err)
	}
	artifactSHA := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-elaborated", "PROPOSITION_ELABORATED", "", nil)
	receipt, err := store.AppendFormalizerOutcome(ctx, forecastSHA, []string{artifactSHA})
	if err != nil {
		t.Fatalf("AppendFormalizerOutcome() error = %v, want exact candidate/check receipt accepted", err)
	}
	loaded, reopened, err := store.Get(ctx, receipt.ContentSHA256)
	if err != nil {
		t.Fatalf("Get() error = %v, want reopened candidate-only outcome", err)
	}
	status := loaded.Record.ActualOutcome.Status
	if status != domain.AttackabilityInProgress {
		t.Fatalf("elaborated candidate outcome = %q, want %q", status, domain.AttackabilityInProgress)
	}
	if status == domain.AttackabilityFormalizationPassed || status == domain.AttackabilityProofPassed {
		t.Fatalf("elaborated candidate outcome = %q, want neither verified formalization nor proof success", status)
	}
	if reopened.ContentSHA256 != receipt.ContentSHA256 || loaded.Record.Attempts.FormalizationAttempts != 1 || loaded.Record.Attempts.ProofAttempts != 0 {
		t.Fatalf("reopened candidate outcome = %#v with receipt %#v, want one formalization attempt and zero proof attempts", loaded.Record, reopened)
	}
}

func TestAttackabilityOutcomeStoreReopensCandidateProofAttemptsWithoutClaimingFaithfulProof(t *testing.T) {
	t.Parallel()
	ctx := context.Background()
	forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecastWithBudget(t, 3)
	formalizerStore, err := formalizer.NewArtifactStore(filepath.Join(t.TempDir(), "formalizer"))
	if err != nil {
		t.Fatal(err)
	}
	receiptRoot := filepath.Join(t.TempDir(), "lean-receipts")
	if err := os.MkdirAll(receiptRoot, 0o700); err != nil {
		t.Fatal(err)
	}
	store, err := NewAttackabilityOutcomeStoreWithLeanReceipts(forecasts, formalizerStore, receiptRoot)
	if err != nil {
		t.Fatal(err)
	}
	formalizerSHA := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-proof-attempt", "PROPOSITION_ELABORATED", "", nil)
	formalizerArtifact, _, err := formalizerStore.Get(ctx, formalizerSHA)
	if err != nil {
		t.Fatal(err)
	}
	attempt := putAttackabilitySolverAttemptReceipt(t, receiptRoot, forecast, formalizerArtifact.Result)
	secondAttempt := nextAttackabilitySolverAttempt(t, receiptRoot, attempt, "synthetic-proof-attempt-002")
	if _, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{"hash-only-attempt-id"}); err == nil {
		t.Fatal("outcome store accepted an unbacked solver-attempt receipt ID")
	}
	if _, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{secondAttempt.EvidenceID, attempt.EvidenceID}); err == nil {
		t.Fatal("outcome store accepted solver attempts in reverse execution order")
	}
	receipt, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{attempt.EvidenceID, secondAttempt.EvidenceID})
	if err != nil {
		t.Fatalf("AppendCandidateProofAttemptsOutcome() error = %v", err)
	}
	loaded, reopenedReceipt, err := store.GetChild(ctx, forecastSHA)
	if err != nil {
		t.Fatalf("GetChild() error = %v", err)
	}
	if loaded.SchemaVersion != attackabilityOutcomeSchemaV2 || len(loaded.SolverAttempts) != 2 || loaded.SolverAttempts[0].Disposition != solver.LeanAttemptProofPassed || loaded.SolverAttempts[1].Disposition != solver.LeanAttemptProofPassed ||
		loaded.Record.ActualOutcome.Status != domain.AttackabilityInProgress || loaded.Record.Attempts.FormalizationAttempts != 1 || loaded.Record.Attempts.ProofAttempts != 2 ||
		len(loaded.Record.Attempts.SolverAttemptReceiptIDs) != 3 || loaded.Record.Cost.AccountingMode != domain.AttackabilityMixedCost || loaded.Record.Cost.LocalElapsedMillis != attempt.ElapsedMilliseconds+secondAttempt.ElapsedMilliseconds ||
		reopenedReceipt.ContentSHA256 != receipt.ContentSHA256 {
		t.Fatalf("reopened candidate proof outcome = %#v, solver attempts=%#v, receipt=%#v", loaded.Record, loaded.SolverAttempts, reopenedReceipt)
	}
	if loaded.Record.ActualOutcome.Status == domain.AttackabilityProofPassed {
		t.Fatal("candidate-level Lean proof was treated as a faithful M0 proof without a V3 pass")
	}

	// A changed receipt body must not silently rewrite the already persisted label.
	changed := attempt
	changed.Status = "KERNEL_REJECTED"
	changed.KernelPassed = false
	changed.AxiomsPassed = false
	changed.ExitCode = 1
	changed.SandboxExecution.ExitCode = intPointerForTest(1)
	changed.StderrExcerpt = "error: unsolved goals\n"
	changed.StderrSHA256 = digestForTest([]byte(changed.StderrExcerpt))
	changed.AxiomOutput = changed.StdoutExcerpt
	changedBytes, err := json.Marshal(changed)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(receiptRoot, attempt.EvidenceID+".json"), changedBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	if _, _, err := store.Get(ctx, receipt.ContentSHA256); err == nil {
		t.Fatal("outcome reader accepted a changed solver receipt under the original evidence ID")
	}
}

func TestAttackabilityOutcomeStoreDerivesBudgetExhaustionOnlyFromCompleteRejectedAttemptReceipts(t *testing.T) {
	t.Run("every slot rejected", func(t *testing.T) {
		ctx := context.Background()
		forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecastWithBudget(t, 3)
		formalizerStore, err := formalizer.NewArtifactStore(filepath.Join(t.TempDir(), "formalizer"))
		if err != nil {
			t.Fatal(err)
		}
		receiptRoot := filepath.Join(t.TempDir(), "lean-receipts")
		if err := os.MkdirAll(receiptRoot, 0o700); err != nil {
			t.Fatal(err)
		}
		store, err := NewAttackabilityOutcomeStoreWithLeanReceipts(forecasts, formalizerStore, receiptRoot)
		if err != nil {
			t.Fatal(err)
		}
		formalizerSHA := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-budget-exhausted", "PROPOSITION_ELABORATED", "", nil)
		formalizerArtifact, _, err := formalizerStore.Get(ctx, formalizerSHA)
		if err != nil {
			t.Fatal(err)
		}
		first := putAttackabilitySolverAttemptReceipt(t, receiptRoot, forecast, formalizerArtifact.Result)
		rewriteSyntheticAttemptAsKernelRejected(t, receiptRoot, &first)
		second := nextAttackabilitySolverAttempt(t, receiptRoot, first, "synthetic-proof-attempt-002")
		rewriteSyntheticAttemptAsKernelRejected(t, receiptRoot, &second)

		receipt, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{first.EvidenceID, second.EvidenceID})
		if err != nil {
			t.Fatalf("AppendCandidateProofAttemptsOutcome() error = %v", err)
		}
		loaded, _, err := store.GetChild(ctx, forecastSHA)
		if err != nil {
			t.Fatalf("GetChild() error = %v", err)
		}
		if loaded.Record.ActualOutcome.Status != domain.AttackabilityBudgetExhausted || loaded.Record.Attempts.FormalizationAttempts+loaded.Record.Attempts.ProofAttempts != forecast.Record.Attempts.AttemptBudget ||
			len(loaded.SolverAttempts) != 2 || loaded.SolverAttempts[0].Disposition != solver.LeanAttemptRejectedProof || loaded.SolverAttempts[1].Disposition != solver.LeanAttemptRejectedProof || receipt.ContentSHA256 == "" {
			t.Fatalf("full rejected attempt chain = status %q, attempts %#v, evidence %#v", loaded.Record.ActualOutcome.Status, loaded.Record.Attempts, loaded.SolverAttempts)
		}
	})

	t.Run("partial rejection remains open", func(t *testing.T) {
		ctx := context.Background()
		forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecastWithBudget(t, 3)
		formalizerStore, err := formalizer.NewArtifactStore(filepath.Join(t.TempDir(), "formalizer"))
		if err != nil {
			t.Fatal(err)
		}
		receiptRoot := filepath.Join(t.TempDir(), "lean-receipts")
		if err := os.MkdirAll(receiptRoot, 0o700); err != nil {
			t.Fatal(err)
		}
		store, err := NewAttackabilityOutcomeStoreWithLeanReceipts(forecasts, formalizerStore, receiptRoot)
		if err != nil {
			t.Fatal(err)
		}
		formalizerSHA := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-partial-rejection", "PROPOSITION_ELABORATED", "", nil)
		formalizerArtifact, _, err := formalizerStore.Get(ctx, formalizerSHA)
		if err != nil {
			t.Fatal(err)
		}
		attempt := putAttackabilitySolverAttemptReceipt(t, receiptRoot, forecast, formalizerArtifact.Result)
		rewriteSyntheticAttemptAsKernelRejected(t, receiptRoot, &attempt)
		receipt, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{attempt.EvidenceID})
		if err != nil {
			t.Fatalf("AppendCandidateProofAttemptsOutcome() error = %v", err)
		}
		loaded, _, err := store.Get(ctx, receipt.ContentSHA256)
		if err != nil {
			t.Fatalf("Get() error = %v", err)
		}
		if loaded.Record.ActualOutcome.Status != domain.AttackabilityInProgress || loaded.SolverAttempts[0].Disposition != solver.LeanAttemptRejectedProof {
			t.Fatalf("partial rejected attempt chain = status %q, evidence %#v; want pending outcome and retained rejection", loaded.Record.ActualOutcome.Status, loaded.SolverAttempts)
		}
	})

	t.Run("infrastructure failure stays distinct", func(t *testing.T) {
		ctx := context.Background()
		forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecastWithBudget(t, 3)
		formalizerStore, err := formalizer.NewArtifactStore(filepath.Join(t.TempDir(), "formalizer"))
		if err != nil {
			t.Fatal(err)
		}
		receiptRoot := filepath.Join(t.TempDir(), "lean-receipts")
		if err := os.MkdirAll(receiptRoot, 0o700); err != nil {
			t.Fatal(err)
		}
		store, err := NewAttackabilityOutcomeStoreWithLeanReceipts(forecasts, formalizerStore, receiptRoot)
		if err != nil {
			t.Fatal(err)
		}
		formalizerSHA := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-infrastructure-attempt", "PROPOSITION_ELABORATED", "", nil)
		formalizerArtifact, _, err := formalizerStore.Get(ctx, formalizerSHA)
		if err != nil {
			t.Fatal(err)
		}
		first := putAttackabilitySolverAttemptReceipt(t, receiptRoot, forecast, formalizerArtifact.Result)
		rewriteSyntheticAttemptAsExecutionFailure(t, receiptRoot, &first)
		second := nextAttackabilitySolverAttempt(t, receiptRoot, first, "synthetic-proof-attempt-002")
		rewriteSyntheticAttemptAsKernelRejected(t, receiptRoot, &second)
		receipt, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{first.EvidenceID, second.EvidenceID})
		if err != nil {
			t.Fatalf("AppendCandidateProofAttemptsOutcome() error = %v", err)
		}
		loaded, _, err := store.GetChild(ctx, forecastSHA)
		if err != nil {
			t.Fatalf("GetChild() error = %v", err)
		}
		if loaded.Record.ActualOutcome.Status != domain.AttackabilityInfrastructureFailure || loaded.SolverAttempts[0].Disposition != solver.LeanAttemptInfrastructureFailure || loaded.SolverAttempts[1].Disposition != solver.LeanAttemptRejectedProof || receipt.ContentSHA256 == "" {
			t.Fatalf("mixed infrastructure/rejection chain = status %q, evidence %#v", loaded.Record.ActualOutcome.Status, loaded.SolverAttempts)
		}
	})
}

func TestAttackabilityOutcomeStoreAppendsPartialProofAttemptRevisionsWithoutRewritingHistory(t *testing.T) {
	t.Parallel()
	ctx := context.Background()
	forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecastWithBudget(t, 3)
	formalizerStore, err := formalizer.NewArtifactStore(filepath.Join(t.TempDir(), "formalizer"))
	if err != nil {
		t.Fatal(err)
	}
	receiptRoot := filepath.Join(t.TempDir(), "lean-receipts")
	if err := os.MkdirAll(receiptRoot, 0o700); err != nil {
		t.Fatal(err)
	}
	store, err := NewAttackabilityOutcomeStoreWithLeanReceipts(forecasts, formalizerStore, receiptRoot)
	if err != nil {
		t.Fatal(err)
	}
	formalizerSHA := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-iterated-attempts", "PROPOSITION_ELABORATED", "", nil)
	formalizerReceipt, err := store.AppendFormalizerOutcome(ctx, forecastSHA, []string{formalizerSHA})
	if err != nil {
		t.Fatalf("AppendFormalizerOutcome() error = %v", err)
	}
	formalizerOutcome, _, err := store.Get(ctx, formalizerReceipt.ContentSHA256)
	if err != nil {
		t.Fatalf("Get(formalizer outcome) error = %v", err)
	}
	formalizerArtifact, _, err := formalizerStore.Get(ctx, formalizerSHA)
	if err != nil {
		t.Fatal(err)
	}
	first := putAttackabilitySolverAttemptReceipt(t, receiptRoot, forecast, formalizerArtifact.Result)
	rewriteSyntheticAttemptAsKernelRejected(t, receiptRoot, &first)
	firstReceipt, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{first.EvidenceID})
	if err != nil {
		t.Fatalf("AppendCandidateProofAttemptsOutcome(first partial attempt) error = %v", err)
	}
	firstOutcome, _, err := store.Get(ctx, firstReceipt.ContentSHA256)
	if err != nil {
		t.Fatalf("Get(first partial outcome) error = %v", err)
	}
	if firstOutcome.SchemaVersion != attackabilityOutcomeSchemaV3 || firstOutcome.Record.RecordRevision != formalizerOutcome.Record.RecordRevision+1 ||
		firstOutcome.PreviousOutcomeSHA256 != formalizerReceipt.ContentSHA256 || firstOutcome.Record.SupersedesRecordID != formalizerOutcome.Record.RecordID ||
		firstOutcome.Record.ActualOutcome.Status != domain.AttackabilityInProgress {
		t.Fatalf("first partial revision = %#v; want a v3 append-only IN_PROGRESS child", firstOutcome)
	}

	second := nextAttackabilitySolverAttempt(t, receiptRoot, first, "synthetic-proof-attempt-002")
	rewriteSyntheticAttemptAsKernelRejected(t, receiptRoot, &second)
	latestReceipt, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{first.EvidenceID, second.EvidenceID})
	if err != nil {
		t.Fatalf("AppendCandidateProofAttemptsOutcome(second cumulative attempt) error = %v", err)
	}
	latest, latestReopenedReceipt, err := store.GetChild(ctx, forecastSHA)
	if err != nil {
		t.Fatalf("GetChild(latest) error = %v", err)
	}
	if latest.SchemaVersion != attackabilityOutcomeSchemaV3 || latest.Record.RecordRevision != firstOutcome.Record.RecordRevision+1 ||
		latest.PreviousOutcomeSHA256 != firstReceipt.ContentSHA256 || latest.Record.SupersedesRecordID != firstOutcome.Record.RecordID ||
		latest.Record.ActualOutcome.Status != domain.AttackabilityBudgetExhausted || latest.Record.Attempts.ProofAttempts != 2 ||
		latestReceipt.ContentSHA256 != latestReopenedReceipt.ContentSHA256 {
		t.Fatalf("latest iterated outcome = %#v, receipt %#v; want append-only exhausted revision", latest, latestReopenedReceipt)
	}
	if _, _, err := store.Get(ctx, firstReceipt.ContentSHA256); err != nil {
		t.Fatalf("Get(previous partial outcome) error = %v; earlier evidence must remain readable", err)
	}
	retryReceipt, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{first.EvidenceID, second.EvidenceID})
	if err != nil || retryReceipt.ContentSHA256 != latestReceipt.ContentSHA256 {
		t.Fatalf("repeat append = %#v, %v; want idempotent latest receipt", retryReceipt, err)
	}
	if _, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{second.EvidenceID, first.EvidenceID}); err == nil {
		t.Fatal("outcome revision accepted a reordered cumulative attempt list")
	}
	if _, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{first.EvidenceID, second.EvidenceID, "synthetic-proof-attempt-003"}); err == nil {
		t.Fatal("terminal exhausted outcome accepted an additional attempt")
	}
	linkPath := filepath.Join(forecasts.root, attackabilityOutcomeDirectory, "revisions", forecastSHA, "000004.json")
	linkBytes, err := os.ReadFile(linkPath)
	if err != nil {
		t.Fatal(err)
	}
	var revisionLink AttackabilityOutcomeRevisionLink
	if err := json.Unmarshal(linkBytes, &revisionLink); err != nil {
		t.Fatal(err)
	}
	revisionLink.PreviousOutcomeSHA256 = strings.Repeat("0", 64)
	tamperedLink, err := json.Marshal(revisionLink)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(linkPath, tamperedLink, 0o600); err != nil {
		t.Fatal(err)
	}
	if _, _, err := store.GetChild(ctx, forecastSHA); err == nil {
		t.Fatal("GetChild() accepted a revision link misbound to its predecessor")
	}
}

func TestAttackabilityOutcomeStoreFinalizesPartialRejectedProofWithStopEvidence(t *testing.T) {
	t.Parallel()
	ctx := context.Background()
	forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecastWithBudget(t, 3)
	formalizerStore, err := formalizer.NewArtifactStore(filepath.Join(t.TempDir(), "formalizer"))
	if err != nil {
		t.Fatal(err)
	}
	receiptRoot := filepath.Join(t.TempDir(), "lean-receipts")
	if err := os.MkdirAll(receiptRoot, 0o700); err != nil {
		t.Fatal(err)
	}
	store, err := NewAttackabilityOutcomeStoreWithLeanReceipts(forecasts, formalizerStore, receiptRoot)
	if err != nil {
		t.Fatal(err)
	}
	formalizerSHA := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-explicit-stop", "PROPOSITION_ELABORATED", "", nil)
	formalizerReceipt, err := store.AppendFormalizerOutcome(ctx, forecastSHA, []string{formalizerSHA})
	if err != nil {
		t.Fatalf("AppendFormalizerOutcome() error = %v", err)
	}
	formalizerArtifact, _, err := formalizerStore.Get(ctx, formalizerSHA)
	if err != nil {
		t.Fatal(err)
	}
	attempt := putAttackabilitySolverAttemptReceipt(t, receiptRoot, forecast, formalizerArtifact.Result)
	rewriteSyntheticAttemptAsKernelRejected(t, receiptRoot, &attempt)
	partialReceipt, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{attempt.EvidenceID})
	if err != nil {
		t.Fatalf("AppendCandidateProofAttemptsOutcome() error = %v", err)
	}
	partial, _, err := store.Get(ctx, partialReceipt.ContentSHA256)
	if err != nil {
		t.Fatalf("Get(partial outcome) error = %v", err)
	}
	if partial.Record.ActualOutcome.Status != domain.AttackabilityInProgress || partial.Record.Attempts.AttemptBudget != 3 {
		t.Fatalf("partial outcome = %#v, want IN_PROGRESS with budget remaining", partial.Record)
	}
	if _, err := store.FinalizeRejectedProofOutcome(ctx, forecastSHA, "", "stopped after the declared timebox"); err == nil {
		t.Fatal("FinalizeRejectedProofOutcome() accepted an empty requester ID")
	}

	terminalReceipt, err := store.FinalizeRejectedProofOutcome(ctx, forecastSHA, "operator-local", "stopped after the declared timebox")
	if err != nil {
		t.Fatalf("FinalizeRejectedProofOutcome() error = %v", err)
	}
	terminal, reopenedReceipt, err := store.GetChild(ctx, forecastSHA)
	if err != nil {
		t.Fatalf("GetChild() error = %v", err)
	}
	if terminal.SchemaVersion != attackabilityOutcomeSchemaV4 || terminal.StopEvidence == nil || terminal.Record.ActualOutcome.Status != domain.AttackabilityRejectedProof ||
		terminal.Record.RecordRevision != partial.Record.RecordRevision+1 || terminal.PreviousOutcomeSHA256 != partialReceipt.ContentSHA256 ||
		terminal.Record.SupersedesRecordID != partial.Record.RecordID || terminal.Record.Attempts.ProofAttempts != 1 ||
		terminal.Record.Attempts.FormalizationAttempts+terminal.Record.Attempts.ProofAttempts >= terminal.Record.Attempts.AttemptBudget ||
		len(terminal.StopEvidence.SolverAttemptReceiptIDs) != 1 || terminal.StopEvidence.SolverAttemptReceiptIDs[0] != attempt.EvidenceID ||
		terminal.StopEvidence.RequestedBy != "operator-local" || terminal.StopEvidence.Reason != "stopped after the declared timebox" ||
		terminal.Record.ActualOutcome.EvidenceIDs[len(terminal.Record.ActualOutcome.EvidenceIDs)-1] != terminal.StopEvidence.EvidenceID ||
		terminalReceipt.ContentSHA256 != reopenedReceipt.ContentSHA256 || terminal.Record.Cost.AgentQuotaCalls != 2 {
		t.Fatalf("reopened stopped outcome = %#v with receipt %#v; want v4 REJECTED_PROOF bound to the prior rejected attempt and remaining budget", terminal, reopenedReceipt)
	}
	if _, err := store.FinalizeRejectedProofOutcome(ctx, forecastSHA, "operator-local", "stopped after the declared timebox"); err != nil {
		t.Fatalf("FinalizeRejectedProofOutcome() idempotent retry error = %v", err)
	}
	if _, err := store.FinalizeRejectedProofOutcome(ctx, forecastSHA, "operator-local", "different stop reason"); err == nil {
		t.Fatal("FinalizeRejectedProofOutcome() accepted a different request after the stop was terminal")
	}
	if _, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{attempt.EvidenceID, "unlogged-attempt"}); err == nil {
		t.Fatal("AppendCandidateProofAttemptsOutcome() extended a terminal stopped outcome")
	}
	prior, _, err := store.Get(ctx, partialReceipt.ContentSHA256)
	if err != nil {
		t.Fatalf("Get(prior partial outcome) error = %v; prior evidence must remain readable", err)
	}
	if prior.Record.ActualOutcome.Status != domain.AttackabilityInProgress || prior.Record.RecordRevision != partial.Record.RecordRevision {
		t.Fatalf("prior outcome changed after stop finalization: %#v", prior.Record)
	}

	misbound := *terminal.StopEvidence
	misbound.PreviousOutcomeSHA256 = strings.Repeat("0", 64)
	misbound.EvidenceID = attackabilityStopEvidenceID(misbound)
	if _, err := deriveStoppedRejectedProofOutcome(partial, partialReceipt.ContentSHA256, misbound); err == nil {
		t.Fatal("deriveStoppedRejectedProofOutcome() accepted stop evidence misbound to another predecessor")
	}
	hashOnly := *terminal.StopEvidence
	hashOnly.SolverAttemptReceiptIDs = []string{"hash-only-proof-attempt-id"}
	hashOnly.EvidenceID = attackabilityStopEvidenceID(hashOnly)
	if _, err := deriveStoppedRejectedProofOutcome(partial, partialReceipt.ContentSHA256, hashOnly); err == nil {
		t.Fatal("deriveStoppedRejectedProofOutcome() accepted a hash-only substitute for the exact solver-attempt receipt")
	}

	objectPath := filepath.Join(store.root, attackabilityOutcomeDirectory, "objects", terminalReceipt.ContentSHA256+".json")
	terminalBytes, err := os.ReadFile(objectPath)
	if err != nil {
		t.Fatal(err)
	}
	var tampered AttackabilityOutcomeArtifact
	if err := json.Unmarshal(terminalBytes, &tampered); err != nil {
		t.Fatal(err)
	}
	tampered.StopEvidence.PreviousOutcomeSHA256 = strings.Repeat("0", 64)
	tampered.StopEvidence.EvidenceID = attackabilityStopEvidenceID(*tampered.StopEvidence)
	tamperedBytes, err := marshalOutcomeArtifact(tampered)
	if err != nil {
		t.Fatal(err)
	}
	tamperedSHA := sha256Hex(tamperedBytes)
	if _, err := writeOutcomeObject(filepath.Dir(objectPath), filepath.Join(filepath.Dir(objectPath), tamperedSHA+".json"), tamperedSHA, tamperedBytes); err != nil {
		t.Fatal(err)
	}
	revisionPath := filepath.Join(store.root, attackabilityOutcomeDirectory, "revisions", forecastSHA, fmt.Sprintf("%06d.json", terminal.Record.RecordRevision))
	revisionBytes, err := os.ReadFile(revisionPath)
	if err != nil {
		t.Fatal(err)
	}
	var revisionLink AttackabilityOutcomeRevisionLink
	if err := json.Unmarshal(revisionBytes, &revisionLink); err != nil {
		t.Fatal(err)
	}
	revisionLink.OutcomeSHA256 = tamperedSHA
	revisionBytes, err = json.Marshal(revisionLink)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(revisionPath, revisionBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	if _, _, err := store.Get(ctx, tamperedSHA); err == nil {
		t.Fatal("Get() accepted a content-addressed, revision-linked stop record misbound to another predecessor")
	}
	if formalizerReceipt.ContentSHA256 == partialReceipt.ContentSHA256 {
		t.Fatal("partial outcome unexpectedly reused the formalizer-only content address")
	}
}

func nextAttackabilitySolverAttempt(t *testing.T, root string, previous solver.LeanVerificationReceipt, evidenceID string) solver.LeanVerificationReceipt {
	t.Helper()
	next := previous
	next.EvidenceID = evidenceID
	next.SandboxExecution.ContainerName = "mathcase-" + strings.TrimPrefix(evidenceID, "synthetic-")
	next.SandboxExecution.CommandArgv = append([]string(nil), previous.SandboxExecution.CommandArgv...)
	for index, arg := range next.SandboxExecution.CommandArgv {
		if arg == previous.SandboxExecution.ContainerName && index > 0 && next.SandboxExecution.CommandArgv[index-1] == "--name" {
			next.SandboxExecution.CommandArgv[index] = next.SandboxExecution.ContainerName
			break
		}
	}
	next.SandboxExecution.StartedAtUTC = previous.SandboxExecution.FinishedAtUTC.Add(time.Second)
	next.SandboxExecution.FinishedAtUTC = next.SandboxExecution.StartedAtUTC.Add(150 * time.Millisecond)
	next.RecordedAtUTC = next.SandboxExecution.FinishedAtUTC.Add(10 * time.Millisecond)
	next.ElapsedMilliseconds = 160
	data, err := json.Marshal(next)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(root, next.EvidenceID+".json"), data, 0o600); err != nil {
		t.Fatal(err)
	}
	return next
}

func TestAttackabilityOutcomeStoreRetainsRejectedProofDispositionAsCandidateLevel(t *testing.T) {
	t.Parallel()
	ctx := context.Background()
	forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecastWithBudget(t, 3)
	formalizerStore, err := formalizer.NewArtifactStore(filepath.Join(t.TempDir(), "formalizer"))
	if err != nil {
		t.Fatal(err)
	}
	receiptRoot := filepath.Join(t.TempDir(), "lean-receipts")
	if err := os.MkdirAll(receiptRoot, 0o700); err != nil {
		t.Fatal(err)
	}
	store, err := NewAttackabilityOutcomeStoreWithLeanReceipts(forecasts, formalizerStore, receiptRoot)
	if err != nil {
		t.Fatal(err)
	}
	formalizerSHA := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-rejected-proof", "PROPOSITION_ELABORATED", "", nil)
	formalizerArtifact, _, err := formalizerStore.Get(ctx, formalizerSHA)
	if err != nil {
		t.Fatal(err)
	}
	attempt := putAttackabilitySolverAttemptReceipt(t, receiptRoot, forecast, formalizerArtifact.Result)
	rewriteSyntheticAttemptAsKernelRejected(t, receiptRoot, &attempt)
	receipt, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{attempt.EvidenceID})
	if err != nil {
		t.Fatalf("AppendCandidateProofAttemptsOutcome(rejected proof) error = %v", err)
	}
	loaded, _, err := store.Get(ctx, receipt.ContentSHA256)
	if err != nil {
		t.Fatalf("Get(rejected proof outcome) error = %v", err)
	}
	if len(loaded.SolverAttempts) != 1 || loaded.SolverAttempts[0].Disposition != solver.LeanAttemptRejectedProof || loaded.Record.ActualOutcome.Status != domain.AttackabilityInProgress ||
		loaded.Record.Attempts.ProofAttempts != 1 || loaded.Record.Attempts.SolverAttemptReceiptIDs[1] != attempt.EvidenceID {
		t.Fatalf("reopened rejected candidate proof = %#v / %#v", loaded.Record, loaded.SolverAttempts)
	}
}

func TestAttackabilityOutcomeStoreReopensOutputLimitAsInfrastructureFailure(t *testing.T) {
	t.Parallel()
	ctx := context.Background()
	forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecastWithBudget(t, 3)
	formalizerStore, err := formalizer.NewArtifactStore(filepath.Join(t.TempDir(), "formalizer"))
	if err != nil {
		t.Fatal(err)
	}
	receiptRoot := filepath.Join(t.TempDir(), "lean-receipts")
	if err := os.MkdirAll(receiptRoot, 0o700); err != nil {
		t.Fatal(err)
	}
	store, err := NewAttackabilityOutcomeStoreWithLeanReceipts(forecasts, formalizerStore, receiptRoot)
	if err != nil {
		t.Fatal(err)
	}
	formalizerSHA := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-output-limit", "PROPOSITION_ELABORATED", "", nil)
	formalizerArtifact, _, err := formalizerStore.Get(ctx, formalizerSHA)
	if err != nil {
		t.Fatal(err)
	}
	attempt := putAttackabilitySolverAttemptReceipt(t, receiptRoot, forecast, formalizerArtifact.Result)
	rewriteSyntheticAttemptAsOutputLimit(t, receiptRoot, &attempt)
	outcomeReceipt, err := store.AppendCandidateProofAttemptsOutcome(ctx, forecastSHA, []string{formalizerSHA}, []string{attempt.EvidenceID})
	if err != nil {
		t.Fatalf("AppendCandidateProofAttemptsOutcome(OUTPUT_LIMIT) error = %v", err)
	}
	loaded, reopened, err := store.Get(ctx, outcomeReceipt.ContentSHA256)
	if err != nil {
		t.Fatalf("Get(OUTPUT_LIMIT outcome) error = %v", err)
	}
	if loaded.Record.ActualOutcome.Status != domain.AttackabilityInfrastructureFailure || loaded.Record.Attempts.FormalizationAttempts != 1 ||
		loaded.Record.Attempts.ProofAttempts != 1 || len(loaded.SolverAttempts) != 1 ||
		loaded.SolverAttempts[0].Disposition != solver.LeanAttemptInfrastructureFailure || reopened.ContentSHA256 != outcomeReceipt.ContentSHA256 {
		t.Fatalf("reopened OUTPUT_LIMIT outcome = %#v / %#v / %#v, want one proof infrastructure failure", loaded.Record, loaded.SolverAttempts, reopened)
	}
}

func rewriteSyntheticAttemptAsKernelRejected(t *testing.T, root string, receipt *solver.LeanVerificationReceipt) {
	t.Helper()
	receipt.InputProof = "by\n  exact False.elim (by trivial)"
	receipt.ProofSHA256 = digestForTest([]byte(receipt.InputProof))
	receipt.GeneratedSource = "import Init\n\ntheorem mathcase_candidate : (True) := by\n  exact False.elim (by trivial)\n\n#print axioms mathcase_candidate\n"
	receipt.GeneratedSourceSHA256 = digestForTest([]byte(receipt.GeneratedSource))
	receipt.CompiledArtifactStatus = "NOT_PRODUCED"
	receipt.CompiledArtifact = nil
	receipt.CompiledArtifactSHA256 = ""
	receipt.CompiledArtifactSize = 0
	receipt.KernelPassed = false
	receipt.AxiomsPassed = false
	receipt.ObservedAxioms = nil
	receipt.Status = "KERNEL_REJECTED"
	receipt.AxiomOutput = ""
	receipt.StdoutExcerpt = ""
	receipt.StdoutSHA256 = digestForTest(nil)
	receipt.StderrExcerpt = "error: unsolved goals\n"
	receipt.StderrSHA256 = digestForTest([]byte(receipt.StderrExcerpt))
	receipt.ExitCode = 1
	receipt.SandboxExecution.ExitCode = intPointerForTest(1)
	data, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(root, receipt.EvidenceID+".json"), data, 0o600); err != nil {
		t.Fatal(err)
	}
}

func rewriteSyntheticAttemptAsExecutionFailure(t *testing.T, root string, receipt *solver.LeanVerificationReceipt) {
	t.Helper()
	receipt.CompiledArtifactStatus = "NOT_PRODUCED"
	receipt.CompiledArtifact = nil
	receipt.CompiledArtifactSHA256 = ""
	receipt.CompiledArtifactSize = 0
	receipt.KernelPassed = false
	receipt.AxiomsPassed = false
	receipt.ObservedAxioms = nil
	receipt.Status = "EXECUTION_ERROR"
	receipt.AxiomOutput = ""
	receipt.StdoutExcerpt = ""
	receipt.StdoutSHA256 = digestForTest(nil)
	receipt.StderrExcerpt = "docker execution failed\n"
	receipt.StderrSHA256 = digestForTest([]byte(receipt.StderrExcerpt))
	receipt.ExitCode = -1
	receipt.SandboxExecution.ExitCode = intPointerForTest(1)
	data, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(root, receipt.EvidenceID+".json"), data, 0o600); err != nil {
		t.Fatal(err)
	}
}

func rewriteSyntheticAttemptAsOutputLimit(t *testing.T, root string, receipt *solver.LeanVerificationReceipt) {
	t.Helper()
	prefix := []byte("12345678")
	receipt.KernelPassed = false
	receipt.AxiomsPassed = false
	receipt.ObservedAxioms = nil
	receipt.Status = "OUTPUT_LIMIT"
	receipt.AxiomOutput = ""
	receipt.StdoutSHA256 = ""
	receipt.StderrSHA256 = ""
	receipt.StdoutExcerpt = string(prefix)
	receipt.StderrExcerpt = ""
	receipt.StdoutCapturedSHA256 = digestForTest(prefix)
	receipt.StderrCapturedSHA256 = digestForTest(nil)
	receipt.StdoutPrefix = prefix
	receipt.StderrPrefix = nil
	receipt.StdoutBytesObserved = int64(len(prefix) + 1)
	receipt.StderrBytesObserved = 0
	receipt.StdoutBytesCaptured = int64(len(prefix))
	receipt.StderrBytesCaptured = 0
	receipt.OutputLimitBytes = int64(len(prefix))
	receipt.OutputTruncated = true
	receipt.ExitCode = -1
	receipt.SandboxExecution.ExitCode = nil
	receipt.SandboxExecution.CleanupAttempted = true
	receipt.SandboxExecution.CleanupSucceeded = true
	cleanupExitCode := 0
	receipt.SandboxExecution.CleanupExitCode = &cleanupExitCode
	data, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(root, receipt.EvidenceID+".json"), data, 0o600); err != nil {
		t.Fatal(err)
	}
}

func putAttackabilitySolverAttemptReceipt(t *testing.T, root string, forecast AttackabilityForecastArtifact, formalizerResult formalizer.Result) solver.LeanVerificationReceipt {
	t.Helper()
	if formalizerResult.StatementCheck == nil {
		t.Fatal("formalizer result has no proposition-check receipt")
	}
	var snapshot catalog.Snapshot
	if err := json.Unmarshal(forecast.CatalogSnapshotBytes, &snapshot); err != nil {
		t.Fatal(err)
	}
	problem, ok := attackabilityCatalogProblem(snapshot, forecast.Record.Target.ProblemID)
	if !ok {
		t.Fatal("forecast target problem is missing from its pinned M0 snapshot")
	}
	leanSnapshot := newAttackabilityOutcomeLeanSnapshot(t)
	leanStatement := formalizerResult.Candidate.LeanStatement
	statementDigest, err := domain.ProblemStatementDigest(problem.ID, problem.InformalStatement, leanStatement)
	if err != nil {
		t.Fatal(err)
	}
	proof := "by\n  exact True.intro"
	generatedSource := "import Init\n\ntheorem mathcase_candidate : (True) := by\n  exact True.intro\n\n#print axioms mathcase_candidate\n"
	compiled := []byte("synthetic compiled proof artifact; no Lean process executed")
	started := formalizerResult.StatementCheck.RecordedAtUTC.Add(time.Second)
	finished := started.Add(150 * time.Millisecond)
	version := "Lean (version 4.33.1, synthetic fixture)"
	versionStart := started.Add(-500 * time.Millisecond)
	versionExecution := syntheticAttackabilityOutcomeCheckExecution(leanSnapshot.manifest, false, versionStart)
	versionOutput := version + "\n"
	container := "mathcase-synthetic-proof-attempt"
	argv := []string{
		"docker", "run", "--rm", "--name", container, "--pull=never", "--network=none", "--read-only", "--user=65532:65532",
		"--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128",
		"--ulimit", "fsize=16777216:16777216", "--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"--tmpfs", "/mathcase/work:rw,noexec,nosuid,nodev,size=128m,mode=1777", "--tmpfs", "/mathcase/cache:rw,noexec,nosuid,nodev,size=512m,mode=1777",
		"--workdir=/mathcase/work", "--env=HOME=/tmp", "--env=TMPDIR=/tmp", "--env=TMP=/tmp", "--env=LAKE_HOME=/mathcase/cache", "--env=LEAN_SYSROOT=/opt/lean",
		"--env=LEAN_PATH=" + strings.Join(leanSnapshot.manifest.ModuleSearchPath, ":"),
		"--mount", "type=bind,source=C:/synthetic/MathCaseCandidate.lean,target=/mathcase/input/MathCaseCandidate.lean,readonly",
		"--mount", "type=bind,source=C:/synthetic/output,target=/mathcase/output", "--entrypoint=lean", leanSnapshot.manifest.ImageDigest,
		"--root=/mathcase/input", "-o", "/mathcase/output/MathCaseCandidate.olean", "/mathcase/input/MathCaseCandidate.lean",
	}
	exitCode := 0
	receipt := solver.LeanVerificationReceipt{
		SchemaVersion: "mathcase-lean-verification-v3", EvidenceID: "synthetic-proof-attempt-001", RecordedAtUTC: finished.Add(10 * time.Millisecond),
		ProblemID: problem.ID, InputProof: proof, ProblemStatementSHA256: statementDigest, ProofSHA256: digestForTest([]byte(proof)),
		GeneratedSourceSHA256: digestForTest([]byte(generatedSource)), ArtifactSnapshotSchema: solver.LeanArtifactSnapshotSchemaVersion, GeneratedSource: generatedSource,
		CompiledArtifactStatus: "CAPTURED", CompiledArtifact: compiled, CompiledArtifactSHA256: digestForTest(compiled), CompiledArtifactSize: int64(len(compiled)),
		ProjectSnapshotSHA256: leanSnapshot.manifest.ProjectSnapshot.SHA256, ProjectSnapshot: leanSnapshot.manifest.ProjectSnapshot,
		SnapshotID: leanSnapshot.manifest.SnapshotID, SnapshotManifestPath: leanSnapshot.manifestPath, SnapshotManifestSHA256: leanSnapshot.manifestSHA256,
		SnapshotImageCheck: attackabilityOutcomeSnapshotImageCheck(leanSnapshot.manifest), Toolchain: "leanprover/lean4:v4.33.1", LeanVersion: version,
		LeanVersionCheck: solver.LeanVersionCheck{Version: version, StdoutSHA256: digestForTest([]byte(versionOutput)), StderrSHA256: digestForTest(nil), StdoutExcerpt: versionOutput, Execution: versionExecution},
		Imports:          []string{"Init"}, AllowedAxioms: []string{"Classical.choice", "Quot.sound", "propext"}, ObservedAxioms: []string{"propext"},
		KernelPassed: true, AxiomsPassed: true, Status: "PASSED", AxiomOutput: "'mathcase_candidate' depends on axioms: [propext]\n",
		StdoutSHA256: digestForTest([]byte("'mathcase_candidate' depends on axioms: [propext]\n")), StderrSHA256: digestForTest(nil),
		StdoutExcerpt: "'mathcase_candidate' depends on axioms: [propext]\n", ExitCode: 0, ElapsedMilliseconds: 160,
		ExecutionIsolation: "Docker network disabled with immutable image " + leanSnapshot.manifest.ImageDigest, ExecutionImage: leanSnapshot.manifest.ImageDigest,
		SandboxExecution: solver.LeanSandboxExecution{DockerExecutable: "docker", ContainerName: container, ExecutionMode: solver.LeanExecutionModeDirect,
			CommandArgv: argv, StartedAtUTC: started, FinishedAtUTC: finished, ExitCode: &exitCode},
	}
	data, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(root, receipt.EvidenceID+".json"), data, 0o600); err != nil {
		t.Fatal(err)
	}
	return receipt
}

func intPointerForTest(value int) *int { return &value }

func TestAttackabilityOutcomeStoreRefusesMissingMultipleAndHashOnlyArtifacts(t *testing.T) {
	t.Parallel()
	ctx := context.Background()
	forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecast(t)
	formalizerStore, err := formalizer.NewArtifactStore(filepath.Join(t.TempDir(), "formalizer"))
	if err != nil {
		t.Fatal(err)
	}
	store, err := NewAttackabilityOutcomeStore(forecasts, formalizerStore)
	if err != nil {
		t.Fatal(err)
	}
	validSHA := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-002", "GENERATION_REJECTED", "FORMALIZATION_FAILURE", nil)
	tests := []struct {
		name    string
		inputs  []string
		fixture string
	}{
		{name: "zero artifacts", inputs: nil, fixture: "zero-formalizer-artifacts"},
		{name: "multiple attempts", inputs: []string{validSHA, validSHA}, fixture: "multiple-formalizer-artifacts"},
		{name: "hash-only artifact", inputs: []string{strings.Repeat("1", 64)}, fixture: "hash-only-artifact"},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			want := attackabilityOutcomeRefusalFixture(t, test.fixture)
			if _, err := store.AppendFormalizerOutcome(ctx, forecastSHA, test.inputs); err == nil || !strings.Contains(err.Error(), want) {
				t.Fatalf("AppendFormalizerOutcome() error = %v, want refusal containing %q", err, want)
			}
		})
	}
}

func TestAttackabilityOutcomeStoreRefusesMisboundFailureRunReceipt(t *testing.T) {
	t.Parallel()
	ctx := context.Background()
	forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecast(t)
	formalizerRoot := filepath.Join(t.TempDir(), "formalizer")
	formalizerStore, err := formalizer.NewArtifactStore(formalizerRoot)
	if err != nil {
		t.Fatal(err)
	}
	store, err := NewAttackabilityOutcomeStore(forecasts, formalizerStore)
	if err != nil {
		t.Fatal(err)
	}
	validSHA := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-003", "GENERATION_REJECTED", "FORMALIZATION_FAILURE", nil)
	artifact, _, err := formalizerStore.Get(ctx, validSHA)
	if err != nil {
		t.Fatalf("open valid formalizer artifact: %v", err)
	}
	artifact.Result.RunReceipt.Target.ProblemID = "different-problem"
	tamperedBytes, err := json.Marshal(artifact)
	if err != nil {
		t.Fatalf("marshal misbound artifact fixture: %v", err)
	}
	artifactSHA := digestForTest(tamperedBytes)
	if err := os.WriteFile(filepath.Join(formalizerRoot, "objects", artifactSHA+".json"), tamperedBytes, 0o600); err != nil {
		t.Fatalf("write hash-consistent misbound artifact fixture: %v", err)
	}
	want := attackabilityOutcomeRefusalFixture(t, "misbound-run-receipt")
	if _, err := store.AppendFormalizerOutcome(ctx, forecastSHA, []string{artifactSHA}); err == nil || !strings.Contains(err.Error(), want) {
		t.Fatalf("AppendFormalizerOutcome() error = %v, want misbound launch receipt refusal", err)
	}
}

func TestAttackabilityOutcomeStoreRefusesRevisionBranching(t *testing.T) {
	t.Parallel()
	ctx := context.Background()
	forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecast(t)
	formalizerStore, err := formalizer.NewArtifactStore(filepath.Join(t.TempDir(), "formalizer"))
	if err != nil {
		t.Fatal(err)
	}
	store, err := NewAttackabilityOutcomeStore(forecasts, formalizerStore)
	if err != nil {
		t.Fatal(err)
	}
	first := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-004", "GENERATION_REJECTED", "FORMALIZATION_FAILURE", nil)
	second := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-005", "GENERATION_INFRASTRUCTURE_FAILURE", "INFRASTRUCTURE_FAILURE", nil)
	if _, err := store.AppendFormalizerOutcome(ctx, forecastSHA, []string{first}); err != nil {
		t.Fatalf("first AppendFormalizerOutcome() error = %v", err)
	}
	want := attackabilityOutcomeRefusalFixture(t, "revision-branching")
	if _, err := store.AppendFormalizerOutcome(ctx, forecastSHA, []string{second}); err == nil || !strings.Contains(err.Error(), want) {
		t.Fatalf("second AppendFormalizerOutcome() error = %v, want append-only branch refusal", err)
	}
}

func TestAttackabilityOutcomeStoreRefusesUnsupportedProofStatusArtifact(t *testing.T) {
	t.Parallel()
	ctx := context.Background()
	forecasts, forecastSHA, forecast := newAttackabilityOutcomeForecast(t)
	formalizerRoot := filepath.Join(t.TempDir(), "formalizer")
	formalizerStore, err := formalizer.NewArtifactStore(formalizerRoot)
	if err != nil {
		t.Fatal(err)
	}
	store, err := NewAttackabilityOutcomeStore(forecasts, formalizerStore)
	if err != nil {
		t.Fatal(err)
	}
	valid := putAttackabilityFormalizerArtifact(t, formalizerStore, forecastSHA, forecast, "formalizer-run-006", "GENERATION_REJECTED", "FORMALIZATION_FAILURE", nil)
	artifact, _, err := formalizerStore.Get(ctx, valid)
	if err != nil {
		t.Fatal(err)
	}
	artifact.Result.Status = "PROOF_VERIFIED"
	forgedBytes, err := json.Marshal(artifact)
	if err != nil {
		t.Fatal(err)
	}
	forgedSHA := digestForTest(forgedBytes)
	if err := os.WriteFile(filepath.Join(formalizerRoot, "objects", forgedSHA+".json"), forgedBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	want := attackabilityOutcomeRefusalFixture(t, "unsupported-proof-status")
	if _, err := store.AppendFormalizerOutcome(ctx, forecastSHA, []string{forgedSHA}); err == nil || !strings.Contains(err.Error(), want) {
		t.Fatalf("AppendFormalizerOutcome() error = %v, want formalizer typed-status refusal", err)
	}
}

func attackabilityOutcomeRefusalFixture(t *testing.T, caseID string) string {
	t.Helper()
	file, err := os.Open(filepath.Join("testdata", "attackability_outcome_refusal_fixtures_v1.json"))
	if err != nil {
		t.Fatal(err)
	}
	defer file.Close()
	var fixture struct {
		SchemaVersion string `json:"schema_version"`
		EvidenceClass string `json:"evidence_class"`
		Fixtures      []struct {
			CaseID                string `json:"case_id"`
			ExpectedErrorContains string `json:"expected_error_contains"`
		} `json:"fixtures"`
	}
	decoder := json.NewDecoder(file)
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(&fixture); err != nil {
		t.Fatalf("decode refusal fixture: %v", err)
	}
	if err := decoder.Decode(new(any)); err != io.EOF {
		t.Fatalf("refusal fixture has trailing data: %v", err)
	}
	if fixture.SchemaVersion != "mathcase-attackability-outcome-refusal-fixtures-v1" || fixture.EvidenceClass != "SYNTHETIC_EXPECTED_REFUSALS_ONLY" {
		t.Fatalf("refusal fixture identity = (%q, %q), want synthetic expectation fixtures", fixture.SchemaVersion, fixture.EvidenceClass)
	}
	for _, item := range fixture.Fixtures {
		if item.CaseID == caseID && item.ExpectedErrorContains != "" {
			return item.ExpectedErrorContains
		}
	}
	t.Fatalf("refusal fixture %q is missing", caseID)
	return ""
}

func newAttackabilityOutcomeForecast(t *testing.T) (*AttackabilityForecastStore, string, AttackabilityForecastArtifact) {
	t.Helper()
	store, err := NewAttackabilityForecastStore(filepath.Join(t.TempDir(), "forecasts"))
	if err != nil {
		t.Fatal(err)
	}
	forecast := validAttackabilityForecastArtifact(t)
	receipt, err := store.Put(context.Background(), forecast)
	if err != nil {
		t.Fatal(err)
	}
	return store, receipt.ContentSHA256, forecast
}

func newAttackabilityOutcomeForecastWithBudget(t *testing.T, attemptBudget int) (*AttackabilityForecastStore, string, AttackabilityForecastArtifact) {
	t.Helper()
	if attemptBudget < 2 {
		t.Fatal("attempt budget must leave at least one slot after formalization")
	}
	forecast := validAttackabilityForecastArtifact(t)
	configuration := *forecast.Record.Prediction.SolverConfiguration
	configuration.AttemptBudget = attemptBudget
	configurationSHA256, err := configuration.Digest()
	if err != nil {
		t.Fatal(err)
	}
	forecast.Record.Prediction.SolverConfiguration = &configuration
	forecast.Record.Prediction.SolverConfigurationSHA256 = configurationSHA256
	forecast.Record.Prediction.HorizonProofAttempts = attemptBudget
	forecast.Record.Attempts.AttemptBudget = attemptBudget

	var receipt domain.AgentRunReceipt
	if err := json.Unmarshal(forecast.ForecastReceiptBytes, &receipt); err != nil {
		t.Fatal(err)
	}
	configurationSHA := configurationSHA256
	receipt.SolverConfigurationSHA256 = &configurationSHA
	forecast.ForecastReceiptBytes, err = json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	var output AttackabilityForecastOutput
	if err := json.Unmarshal(forecast.ForecastOutputBytes, &output); err != nil {
		t.Fatal(err)
	}
	output.HorizonProofAttempts = attemptBudget
	output.SolverConfigurationSHA256 = configurationSHA256
	forecast.ForecastOutputBytes, err = json.Marshal(output)
	if err != nil {
		t.Fatal(err)
	}
	store, err := NewAttackabilityForecastStore(filepath.Join(t.TempDir(), "forecasts"))
	if err != nil {
		t.Fatal(err)
	}
	stored, err := store.Put(context.Background(), forecast)
	if err != nil {
		t.Fatalf("AttackabilityForecastStore.Put(budget=%d) error = %v", attemptBudget, err)
	}
	return store, stored.ContentSHA256, forecast
}

func putAttackabilityFormalizerArtifact(t *testing.T, store *formalizer.ArtifactStore, forecastSHA string, forecast AttackabilityForecastArtifact, receiptID, status, failureClass string, mutateReceipt func(*domain.AgentRunReceipt)) string {
	t.Helper()
	var snapshot catalog.Snapshot
	if err := json.Unmarshal(forecast.CatalogSnapshotBytes, &snapshot); err != nil {
		t.Fatal(err)
	}
	var problem catalog.Problem
	for _, item := range snapshot.Problems {
		if item.ID == forecast.Record.Target.ProblemID {
			problem = item
			break
		}
	}
	if problem.ID == "" {
		t.Fatal("forecast target problem missing from M0 snapshot")
	}
	var source catalog.SourceVersion
	for _, item := range snapshot.Sources {
		if item.ID == forecast.ProviderInputs[0].SourceID {
			source = item
			break
		}
	}
	if source.ID == "" {
		t.Fatal("forecast target source missing from M0 snapshot")
	}
	launchAt := forecast.Record.RecordedAtUTC.Add(time.Minute)
	recordedAt := launchAt.Add(5 * time.Second)
	clearanceBytes, err := json.Marshal(formalizer.ProviderInputClearanceRegister{
		SchemaVersion:         "mathcase-provider-input-clearance-register-v1",
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		Clearances: []formalizer.ProviderInputClearanceRecord{{
			SchemaVersion: "mathcase-provider-input-clearance-v1", ClearanceID: "formalizer-clearance-001",
			ProblemID: problem.ID, StatementID: forecast.Record.Target.StatementID, SourceID: source.ID,
			SourceRevision: source.Revision, SourceLocator: source.ItemLocator, SourceFileSHA256: source.ContentSHA256,
			SourceGitBlob: strings.Repeat("a", 40), StatementSHA256: digestForTest([]byte(problem.InformalStatement)),
			SubmittedFragmentPath: "formalizer/target.txt", SubmittedFragmentSHA256: strings.Repeat("b", 64),
			RightsEvidenceID: source.RightsEvidenceID, CatalogSnapshotSHA256: snapshot.ContentSHA256,
			AllowedUse: "PROVIDER_INPUT", AuthorizedOperation: "NL_TO_LEAN_FORMALIZATION", Scope: "formalizing this exact pinned statement", Status: "CLEARED",
			CatalogSnapshotPath: "catalog.snapshot.json", CatalogProblemID: problem.ID,
		}},
	})
	if err != nil {
		t.Fatal(err)
	}
	clearance := domain.AgentRunInputClearance{StatementID: forecast.Record.Target.StatementID, EvidenceID: "formalizer-clearance-001", EvidenceSHA256: digestForTest(clearanceBytes)}
	request := formalizer.NewRequest("candidate-synthetic-001", problem.ID, domain.V3SourceStatementPin{
		URL: source.URL, ItemLocator: source.ItemLocator, Revision: source.Revision, RawItemSHA256: source.ContentSHA256,
		CatalogSnapshotSHA256: snapshot.ContentSHA256, Statement: problem.InformalStatement, EvidenceID: source.ID,
	}, clearance, attackabilityOutcomeRecordID(forecastSHA, receiptID), receiptID)
	configurationSHA := forecast.Record.Prediction.SolverConfigurationSHA256
	configurationSHACopy := configurationSHA
	receipt := domain.AgentRunReceipt{
		SchemaVersion: domain.AgentRunReceiptSchemaVersion2, ReceiptID: receiptID, RecordedAtUTC: recordedAt,
		Surface: "Delegated worker quota", Model: forecast.Record.Prediction.SolverConfiguration.SolverModelID,
		ModelIdentityCapturedAtUTC: &launchAt, ModelSnapshotID: forecast.Record.Prediction.SolverConfiguration.SolverModelSnapshotID,
		Target: domain.AgentRunTarget{ProblemID: problem.ID, StatementID: forecast.Record.Target.StatementID,
			CatalogSnapshotSHA256: snapshot.ContentSHA256, StatementSHA256: forecast.Record.Target.StatementSHA256},
		Purpose: "formalization", Verdict: "completed", InputClearance: []domain.AgentRunInputClearance{clearance},
		LabelRecordIDs: []string{request.LabelRecordID}, SolverConfigurationSHA256: &configurationSHACopy,
	}
	if mutateReceipt != nil {
		mutateReceipt(&receipt)
	}
	result := formalizer.Result{
		SchemaVersion: formalizer.ResultSchemaVersion, Status: status, FailureClass: failureClass,
		FailureReason: "synthetic fixture refusal by formalizer", Request: request, RunReceipt: receipt,
	}
	if status == "GENERATION_REJECTED" {
		result.GenerationResponse = "not a valid formalizer candidate"
		result.GenerationResponseSHA256 = digestForTest([]byte(result.GenerationResponse))
	} else if status == "PROPOSITION_ELABORATED" {
		candidate := formalizer.GeneratedCandidate{
			SchemaVersion:         formalizer.ResponseSchemaVersion,
			CandidateID:           request.CandidateID,
			ProblemID:             request.ProblemID,
			CatalogSnapshotSHA256: request.Source.CatalogSnapshotSHA256,
			SourceStatementSHA256: digestForTest([]byte(request.Source.Statement)),
			DeclarationName:       "mathcase_candidate",
			LeanStatement:         "True",
		}
		responseBytes, err := json.Marshal(candidate)
		if err != nil {
			t.Fatal(err)
		}
		result.Candidate = candidate
		result.CandidateRevision = formalizer.CandidateRevision{
			SchemaVersion: formalizer.CandidateRevisionSchemaVersion,
			CandidateID:   candidate.CandidateID,
			SHA256:        digestForTest(append([]byte(formalizer.CandidateRevisionSchemaVersion+"\x00"), responseBytes...)),
		}
		result.GenerationResponse = string(responseBytes)
		result.GenerationResponseSHA256 = digestForTest(responseBytes)
		result.FailureReason = ""
		result.StatementCheck = attackabilityOutcomeStatementCheck(t, request, candidate, receipt.RecordedAtUTC)
	}
	artifact := formalizer.NewDurableArtifact(result, forecast.CatalogSnapshotBytes, forecast.ProviderInputs[0].SourceItemBytes, clearanceBytes)
	stored, err := store.Put(context.Background(), artifact)
	if err != nil {
		t.Fatalf("formalizer ArtifactStore.Put() error = %v", err)
	}
	return stored.ArtifactSHA256
}

// attackabilityOutcomeStatementCheck creates a structurally complete synthetic
// typed receipt. It does not execute Docker or Lean and is not runtime evidence.
func attackabilityOutcomeStatementCheck(t *testing.T, request formalizer.Request, candidate formalizer.GeneratedCandidate, runRecordedAt time.Time) *solver.LeanStatementCheckReceipt {
	t.Helper()
	snapshot := newAttackabilityOutcomeLeanSnapshot(t)
	statementDigest, err := domain.ProblemStatementDigest(request.ProblemID, request.Source.Statement, candidate.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	generatedSource := "#check (show Prop from (" + candidate.LeanStatement + "))\n"
	versionStart := runRecordedAt.Add(time.Second)
	candidateStart := runRecordedAt.Add(2 * time.Second)
	candidateExecution := syntheticAttackabilityOutcomeCheckExecution(snapshot.manifest, true, candidateStart)
	version := "Lean (version 4.33.1, synthetic fixture)"
	versionOutput := version + "\n"
	receipt := solver.LeanStatementCheckReceipt{
		SchemaVersion:          "mathcase-lean-statement-check-v3",
		EvidenceID:             "attackability-outcome-elaboration-check",
		RecordedAtUTC:          candidateExecution.FinishedAtUTC.Add(time.Second),
		ProblemID:              request.ProblemID,
		ProblemStatementSHA256: statementDigest,
		PropositionSHA256:      digestForTest([]byte(candidate.LeanStatement)),
		GeneratedSourceSHA256:  digestForTest([]byte(generatedSource)),
		ArtifactSnapshotSchema: solver.LeanArtifactSnapshotSchemaVersion,
		GeneratedSource:        generatedSource,
		ProjectSnapshotSHA256:  snapshot.manifest.ProjectSnapshot.SHA256,
		ProjectSnapshot:        snapshot.manifest.ProjectSnapshot,
		SnapshotID:             snapshot.manifest.SnapshotID,
		SnapshotManifestPath:   snapshot.manifestPath,
		SnapshotManifestSHA256: snapshot.manifestSHA256,
		SnapshotImageCheck:     attackabilityOutcomeSnapshotImageCheck(snapshot.manifest),
		Toolchain:              "leanprover/lean4:v4.33.1",
		LeanVersion:            version,
		ExecutionImage:         snapshot.manifest.ImageDigest,
		ExecutionIsolation:     "synthetic structurally-bound snapshot; no process executed",
		SandboxExecution:       candidateExecution,
		TypecheckPassed:        true,
		Status:                 "PASSED",
		StdoutSHA256:           digestForTest(nil),
		StderrSHA256:           digestForTest(nil),
		ExitCode:               0,
	}
	versionExecution := syntheticAttackabilityOutcomeCheckExecution(snapshot.manifest, false, versionStart)
	receipt.LeanVersionCheck = solver.LeanVersionCheck{
		Version: version, StdoutSHA256: digestForTest([]byte(versionOutput)), StderrSHA256: digestForTest(nil), StdoutExcerpt: versionOutput,
		Execution: versionExecution,
	}
	compiled := []byte("synthetic .olean bytes from fake checker; no Lean execution")
	receipt.CompiledArtifactStatus = "CAPTURED"
	receipt.CompiledArtifact = compiled
	receipt.CompiledArtifactSHA256 = digestForTest(compiled)
	receipt.CompiledArtifactSize = int64(len(compiled))
	return &receipt
}

type attackabilityOutcomeSnapshotFixture struct {
	manifest       solver.LeanSnapshotManifest
	manifestPath   string
	manifestSHA256 string
}

func newAttackabilityOutcomeLeanSnapshot(t *testing.T) attackabilityOutcomeSnapshotFixture {
	t.Helper()
	root := t.TempDir()
	projectRoot := filepath.Join(root, "project")
	for name, contents := range map[string]string{
		"lean-toolchain":         "leanprover/lean4:v4.33.1\n",
		"lakefile.toml":          "name = \"attackability-outcome-fixture\"\n",
		"lake-manifest.json":     "{\"packagesDir\":\".lake/packages\",\"packages\":[]}\n",
		"MathCaseStatement.lean": "import Init\n#check True\n",
		filepath.Join(".lake", "build", "lib", "lean", "MathCaseStatement.olean"): "synthetic compiled artifact; no Lean run\n",
	} {
		path := filepath.Join(projectRoot, name)
		if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(path, []byte(contents), 0o600); err != nil {
			t.Fatal(err)
		}
	}
	sourceSnapshot, sourceEntries, err := solver.BuildLeanSnapshotInventory(projectRoot, false)
	if err != nil {
		t.Fatal(err)
	}
	projectSnapshot, projectEntries, err := solver.BuildLeanSnapshotInventory(projectRoot, true)
	if err != nil {
		t.Fatal(err)
	}
	sourceManifestPath := filepath.Join(root, "source-inventory.jsonl")
	sourceManifestSHA, err := solver.WriteLeanSnapshotInventory(sourceManifestPath, sourceSnapshot, sourceEntries)
	if err != nil {
		t.Fatal(err)
	}
	inventoryPath := filepath.Join(root, "compiled-inventory.jsonl")
	inventorySHA, err := solver.WriteLeanSnapshotInventory(inventoryPath, projectSnapshot, projectEntries)
	if err != nil {
		t.Fatal(err)
	}
	image := "sha256:" + strings.Repeat("a", 64)
	baseImage := "sha256:" + strings.Repeat("b", 64)
	gitToolImage := "sha256:" + strings.Repeat("c", 64)
	recipeSHA := digestForTest([]byte("attackability outcome synthetic snapshot recipe"))
	projectSnapshot.SourceManifestSHA256 = sourceManifestSHA
	projectSnapshot.InventorySHA256 = inventorySHA
	projectSnapshot.ImageDigest = image
	started := time.Date(2026, time.October, 20, 18, 59, 0, 0, time.UTC)
	stdoutPath := filepath.Join(root, "build.stdout.log")
	stderrPath := filepath.Join(root, "build.stderr.log")
	preBuildPath := filepath.Join(root, "pre-build-summary.json")
	for _, path := range []string{stdoutPath, stderrPath} {
		if err := os.WriteFile(path, nil, 0o600); err != nil {
			t.Fatal(err)
		}
	}
	preBuildBytes, err := json.Marshal(struct {
		SchemaVersion                    string                     `json:"schema_version"`
		ProjectBuildArtifactFileCount    int64                      `json:"project_build_artifact_file_count"`
		DependencyBuildArtifactFileCount int64                      `json:"dependency_build_artifact_file_count"`
		ProjectSnapshot                  solver.LeanProjectSnapshot `json:"project_snapshot"`
	}{SchemaVersion: solver.LeanSnapshotInventorySchemaVersion, ProjectSnapshot: sourceSnapshot})
	if err != nil {
		t.Fatal(err)
	}
	preBuildBytes = append(preBuildBytes, '\n')
	if err := os.WriteFile(preBuildPath, preBuildBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	buildReceipt := solver.LeanSnapshotBuildReceipt{
		SchemaVersion:                   "mathcase-lean-snapshot-build-v1",
		RunID:                           "attackability-outcome-synthetic-run",
		StartedAtUTC:                    started,
		FinishedAtUTC:                   started.Add(time.Minute),
		DockerExecutable:                "docker",
		DockerVersion:                   "29.6.2",
		SourceManifestSHA256:            sourceManifestSHA,
		SourceSnapshot:                  sourceSnapshot,
		RecipeSHA256:                    recipeSHA,
		BaseImageDigest:                 baseImage,
		GitToolImageDigest:              gitToolImage,
		ImageDigest:                     image,
		Toolchain:                       "leanprover/lean4:v4.33.1",
		BuildTarget:                     "attackability-outcome-fixture",
		BuildArguments:                  []string{"docker", "build", "--network=none", "attackability-outcome-fixture"},
		BuildStdoutPath:                 stdoutPath,
		BuildStderrPath:                 stderrPath,
		BuildStdoutSHA256:               digestForTest(nil),
		BuildStderrSHA256:               digestForTest(nil),
		BuildExitCode:                   0,
		PreBuildSummaryPath:             preBuildPath,
		PreBuildSummarySHA256:           digestForTest(preBuildBytes),
		NetworkDisabled:                 true,
		PreBuildProjectArtifactCount:    0,
		PreBuildDependencyArtifactCount: 0,
		PostBuildProjectSnapshot:        projectSnapshot,
	}
	buildBytes, err := json.Marshal(buildReceipt)
	if err != nil {
		t.Fatal(err)
	}
	buildReceiptPath := filepath.Join(root, "build-receipt.json")
	if err := os.WriteFile(buildReceiptPath, append(buildBytes, '\n'), 0o600); err != nil {
		t.Fatal(err)
	}
	buildReceiptBytes, err := os.ReadFile(buildReceiptPath)
	if err != nil {
		t.Fatal(err)
	}
	buildReceiptSHA := digestForTest(buildReceiptBytes)
	manifest := solver.LeanSnapshotManifest{
		SchemaVersion:                   solver.LeanSnapshotManifestSchemaVersion,
		SourceManifestPath:              sourceManifestPath,
		SourceManifestSHA256:            sourceManifestSHA,
		SourceSnapshot:                  sourceSnapshot,
		InventoryPath:                   inventoryPath,
		InventorySHA256:                 inventorySHA,
		BuildReceiptPath:                buildReceiptPath,
		BuildReceiptSHA256:              buildReceiptSHA,
		RecipeSHA256:                    recipeSHA,
		BaseImageDigest:                 baseImage,
		GitToolImageDigest:              gitToolImage,
		ImageDigest:                     image,
		Toolchain:                       "leanprover/lean4:v4.33.1",
		BuildTarget:                     "attackability-outcome-fixture",
		AllowedImports:                  []string{"Init"},
		ModuleSearchPath:                []string{"/mathcase/project/.lake/build/lib/lean"},
		ProjectSnapshot:                 projectSnapshot,
		CleanBuild:                      true,
		NetworkDisabled:                 true,
		PreBuildProjectArtifactCount:    0,
		PreBuildDependencyArtifactCount: 0,
	}
	manifest.SnapshotID = solver.ComputeLeanSnapshotID(sourceManifestSHA, buildReceiptSHA, image, projectSnapshot.SHA256)
	manifestPath := filepath.Join(root, "snapshot-manifest.json")
	manifestBytes, err := json.MarshalIndent(manifest, "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	manifestBytes = append(manifestBytes, '\n')
	if err := os.WriteFile(manifestPath, manifestBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	return attackabilityOutcomeSnapshotFixture{manifest: manifest, manifestPath: manifestPath, manifestSHA256: digestForTest(manifestBytes)}
}

func attackabilityOutcomeSnapshotImageCheck(manifest solver.LeanSnapshotManifest) solver.LeanSnapshotImageCheck {
	return solver.LeanSnapshotImageCheck{
		Image: manifest.ImageDigest, ImageID: manifest.ImageDigest,
		Labels: map[string]string{
			"org.mathcase.snapshot.source-manifest-sha256": manifest.SourceManifestSHA256,
			"org.mathcase.snapshot.source-root-sha256":     manifest.SourceSnapshot.SHA256,
			"org.mathcase.snapshot.recipe-sha256":          manifest.RecipeSHA256,
			"org.mathcase.snapshot.base-image-id":          manifest.BaseImageDigest,
			"org.mathcase.snapshot.git-tool-image-id":      manifest.GitToolImageDigest,
			"org.mathcase.snapshot.build-target":           manifest.BuildTarget,
		},
		StdoutSHA256: digestForTest([]byte("[]")), StartedAtUTC: time.Date(2026, time.October, 20, 18, 58, 0, 0, time.UTC),
		FinishedAtUTC: time.Date(2026, time.October, 20, 18, 58, 1, 0, time.UTC), ExitCode: 0,
	}
}

func syntheticAttackabilityOutcomeCheckExecution(manifest solver.LeanSnapshotManifest, candidate bool, started time.Time) solver.LeanSandboxExecution {
	finished := started.Add(100 * time.Millisecond)
	container := "mathcase-synthetic-attackability-outcome"
	args := []string{
		"docker", "run", "--rm", "--name", container, "--pull=never", "--network=none", "--read-only", "--user=65532:65532",
		"--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128",
		"--ulimit", "fsize=16777216:16777216",
		"--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"--tmpfs", "/mathcase/work:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"--tmpfs", "/mathcase/cache:rw,noexec,nosuid,nodev,size=512m,mode=1777",
		"--workdir=/mathcase/work", "--env=HOME=/tmp", "--env=TMPDIR=/tmp", "--env=TMP=/tmp",
		"--env=LAKE_HOME=/mathcase/cache", "--env=LEAN_SYSROOT=/opt/lean",
		"--env=LEAN_PATH=" + strings.Join(manifest.ModuleSearchPath, ":"),
	}
	if candidate {
		args = append(args, "--mount", "type=bind,source=C:/synthetic/MathCaseStatement.lean,target=/mathcase/input/MathCaseStatement.lean,readonly")
		args = append(args, "--mount", "type=bind,source=C:/synthetic/output,target=/mathcase/output")
	}
	args = append(args, "--entrypoint=lean", manifest.ImageDigest)
	if candidate {
		args = append(args, "--root=/mathcase/input", "-o", "/mathcase/output/MathCaseStatement.olean", "/mathcase/input/MathCaseStatement.lean")
	} else {
		args = append(args, "--version")
		finished = started.Add(50 * time.Millisecond)
	}
	exitCode := 0
	return solver.LeanSandboxExecution{
		DockerExecutable: "docker", ExecutionMode: solver.LeanExecutionModeDirect, ContainerName: container,
		CommandArgv: args, StartedAtUTC: started, FinishedAtUTC: finished, ExitCode: &exitCode,
	}
}
