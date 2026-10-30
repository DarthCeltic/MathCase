package persistence

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestAttackabilityForecastStoreRoundTripsValidatedPreAttemptEvidence(t *testing.T) {
	t.Parallel()
	store, err := NewAttackabilityForecastStore(filepath.Join(t.TempDir(), "store"))
	if err != nil {
		t.Fatal(err)
	}
	artifact := validAttackabilityForecastArtifact(t)
	first, err := store.Put(context.Background(), artifact)
	if err != nil {
		t.Fatalf("Put() error = %v, want validated pre-attempt forecast", err)
	}
	second, err := store.Put(context.Background(), artifact)
	if err != nil {
		t.Fatalf("Put() repeat error = %v, want idempotent content-addressed write", err)
	}
	if first.ContentSHA256 != second.ContentSHA256 || first.RelativePath != second.RelativePath {
		t.Fatalf("identical forecast writes = %#v and %#v, want same content address", first, second)
	}
	loaded, receipt, err := store.Get(context.Background(), first.ContentSHA256)
	if err != nil {
		t.Fatalf("Get(%q) error = %v, want reopened evidence chain", first.ContentSHA256, err)
	}
	if receipt.ContentSHA256 != first.ContentSHA256 || loaded.Record.RecordID != artifact.Record.RecordID ||
		loaded.Record.ActualOutcome.Status != domain.AttackabilityNotAttempted ||
		string(loaded.ForecastOutputBytes) != string(artifact.ForecastOutputBytes) {
		t.Fatalf("reopened forecast = %#v, receipt = %#v; want exact pre-attempt record and raw output", loaded, receipt)
	}
}

func TestAttackabilityForecastStoreRefusesHashOnlyAndMisboundEvidence(t *testing.T) {
	t.Parallel()
	tests := []struct {
		name   string
		mutate func(*AttackabilityForecastArtifact)
		want   string
	}{
		{
			name: "missing clearance bytes",
			mutate: func(artifact *AttackabilityForecastArtifact) {
				artifact.ProviderInputs = nil
			},
			want: "does not cover every receipt clearance",
		},
		{
			name: "raw probability differs from record",
			mutate: func(artifact *AttackabilityForecastArtifact) {
				var output AttackabilityForecastOutput
				if err := json.Unmarshal(artifact.ForecastOutputBytes, &output); err != nil {
					t.Fatal(err)
				}
				output.SuccessProbability += 0.1
				artifact.ForecastOutputBytes, _ = json.Marshal(output)
			},
			want: "raw forecast output differs",
		},
		{
			name: "receipt target differs",
			mutate: func(artifact *AttackabilityForecastArtifact) {
				var receipt domain.AgentRunReceipt
				if err := json.Unmarshal(artifact.ForecastReceiptBytes, &receipt); err != nil {
					t.Fatal(err)
				}
				receipt.Target.StatementSHA256 = strings.Repeat("9", 64)
				artifact.ForecastReceiptBytes, _ = json.Marshal(receipt)
			},
			want: "label target does not match",
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			artifact := validAttackabilityForecastArtifact(t)
			test.mutate(&artifact)
			if err := artifact.Validate(context.Background()); err == nil || !strings.Contains(err.Error(), test.want) {
				t.Fatalf("Validate() error = %v, want refusal containing %q", err, test.want)
			}
		})
	}
}

func TestAttackabilityForecastStoreReopensAndChecksProviderInputScope(t *testing.T) {
	t.Parallel()
	artifact := validAttackabilityForecastArtifact(t)
	register := string(artifact.ProviderInputs[0].ClearanceRegisterBytes)
	register = strings.Replace(register, `"allowed_use":"PROVIDER_INPUT"`, `"allowed_use":"REFERENCE"`, 1)
	artifact.ProviderInputs[0].ClearanceRegisterBytes = []byte(register)

	var receipt domain.AgentRunReceipt
	if err := json.Unmarshal(artifact.ForecastReceiptBytes, &receipt); err != nil {
		t.Fatal(err)
	}
	receipt.InputClearance[0].EvidenceSHA256 = digestForTest(artifact.ProviderInputs[0].ClearanceRegisterBytes)
	artifact.ForecastReceiptBytes, _ = json.Marshal(receipt)

	if err := artifact.Validate(context.Background()); err == nil || !strings.Contains(err.Error(), "not an active PROVIDER_INPUT grant") {
		t.Fatalf("Validate() error = %v, want item-scope refusal", err)
	}
}

func TestAttackabilityForecastStoreRefusesWorkOutcomeWithoutAttemptConsumer(t *testing.T) {
	t.Parallel()
	artifact := validAttackabilityForecastArtifact(t)
	firstAttempt := artifact.Record.Prediction.PredictedAtUTC.Add(time.Second)
	artifact.Record.Attempts.ProofAttempts = 1
	artifact.Record.Attempts.SolverAttemptReceiptIDs = []string{"solver-attempt-001"}
	artifact.Record.Attempts.FirstWorkAttemptAtUTC = &firstAttempt
	artifact.Record.ActualOutcome = domain.AttackabilityActualOutcome{
		Status: domain.AttackabilityInProgress, EvidenceIDs: []string{"attempt-output-001"}, RecordedAtUTC: artifact.Record.RecordedAtUTC,
	}
	if err := artifact.Record.Validate(); err != nil {
		t.Fatalf("Record.Validate() error = %v, want structurally valid attempted outcome for consumer refusal", err)
	}
	if err := artifact.Validate(context.Background()); err == nil || !strings.Contains(err.Error(), "before work attempts") {
		t.Fatalf("Artifact.Validate() error = %v, want refusal until the attempt consumer exists", err)
	}
}

func TestAttackabilityForecastStoreDetectsTamperedObject(t *testing.T) {
	t.Parallel()
	root := filepath.Join(t.TempDir(), "store")
	store, err := NewAttackabilityForecastStore(root)
	if err != nil {
		t.Fatal(err)
	}
	receipt, err := store.Put(context.Background(), validAttackabilityForecastArtifact(t))
	if err != nil {
		t.Fatal(err)
	}
	path := filepath.Join(root, filepath.FromSlash(receipt.RelativePath))
	if err := os.WriteFile(path, []byte("tampered"), 0o600); err != nil {
		t.Fatal(err)
	}
	if _, _, err := store.Get(context.Background(), receipt.ContentSHA256); err == nil || !strings.Contains(err.Error(), "content hash or size is invalid") {
		t.Fatalf("Get() error = %v, want content-address refusal", err)
	}
}

func TestAttackabilityForecastArtifactRejectsMisboundPredictionFeatures(t *testing.T) {
	t.Parallel()
	ctx := context.Background()
	t.Run("feature digest mismatch", func(t *testing.T) {
		artifact := validAttackabilityForecastArtifact(t)
		var input AttackabilityForecastInput
		if err := json.Unmarshal(artifact.ForecastInputBytes, &input); err != nil {
			t.Fatal(err)
		}
		input.FeatureProfile.DomainTags = []string{"ALGEBRA"}
		encoded, err := json.Marshal(input)
		if err != nil {
			t.Fatal(err)
		}
		artifact.ForecastInputBytes = encoded
		if err := artifact.Validate(ctx); err == nil || !strings.Contains(err.Error(), "feature profile digest") {
			t.Fatalf("Validate() error = %v, want feature-profile digest refusal", err)
		}
	})
	t.Run("input bundle no longer matches pinned configuration", func(t *testing.T) {
		artifact := validAttackabilityForecastArtifact(t)
		var input AttackabilityForecastInput
		if err := json.Unmarshal(artifact.ForecastInputBytes, &input); err != nil {
			t.Fatal(err)
		}
		input.FeatureProfile.DomainTags = []string{"ALGEBRA"}
		profileSHA256, err := input.FeatureProfile.Digest()
		if err != nil {
			t.Fatal(err)
		}
		input.FeatureProfileSHA256 = profileSHA256
		encoded, err := json.Marshal(input)
		if err != nil {
			t.Fatal(err)
		}
		artifact.ForecastInputBytes = encoded
		if err := artifact.Validate(ctx); err == nil || !strings.Contains(err.Error(), "input bytes do not match") {
			t.Fatalf("Validate() error = %v, want configuration-bound input refusal", err)
		}
	})
	t.Run("raw output profile digest mismatch", func(t *testing.T) {
		artifact := validAttackabilityForecastArtifact(t)
		var output AttackabilityForecastOutput
		if err := json.Unmarshal(artifact.ForecastOutputBytes, &output); err != nil {
			t.Fatal(err)
		}
		output.FeatureProfileSHA256 = strings.Repeat("0", 64)
		encoded, err := json.Marshal(output)
		if err != nil {
			t.Fatal(err)
		}
		artifact.ForecastOutputBytes = encoded
		if err := artifact.Validate(ctx); err == nil || !strings.Contains(err.Error(), "raw forecast output is not bound") {
			t.Fatalf("Validate() error = %v, want raw-output feature binding refusal", err)
		}
	})
}

func validAttackabilityForecastArtifact(t *testing.T) AttackabilityForecastArtifact {
	t.Helper()
	now := time.Date(2026, time.October, 21, 4, 0, 0, 0, time.UTC)
	statement := "For each natural number n, the stated property holds."
	sourceItem := []byte("Source item containing the exact approved statement.")
	problemID := "synthetic-problem-001"
	statementID := "synthetic-statement-001"
	sourceID := "synthetic-source-001"
	problem := catalog.Problem{
		ID: problemID, Title: "Synthetic fixture problem", InformalStatement: statement,
		Status: catalog.StatusConjectured, SourceIDs: []string{sourceID},
	}
	source := catalog.SourceVersion{
		ID: sourceID, URL: "https://example.org/synthetic/item-001", ItemLocator: "synthetic-item-001", Lane: catalog.LaneSunPrizeAwards,
		Revision: "catalog-commit-001", RetrievedAt: now.Add(-time.Hour), ContentSHA256: digestForTest(sourceItem),
		AuthorOrHolder: "Synthetic fixture source", License: "CC-BY-4.0",
		LicenseTermsURL: "https://creativecommons.org/licenses/by/4.0/", TermsNote: "Test fixture item-level permission.",
		Attribution: "Synthetic fixture source", Rights: catalog.RightsCleared,
		RightsReviewerID: "synthetic-review-fixture", RightsReviewedAt: now.Add(-30 * time.Minute), RightsEvidenceID: "rights-synthetic-001",
		AllowedUses: []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseReference, catalog.UseProviderInput},
	}
	snapshot, err := catalog.NewSnapshot(now.Add(-20*time.Minute), []catalog.SourceVersion{source}, []catalog.Problem{problem})
	if err != nil {
		t.Fatalf("catalog.NewSnapshot() error = %v", err)
	}
	snapshotBytes, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	statementSHA := digestForTest([]byte(statement))
	register := providerInputClearanceRegisterFixture{
		SchemaVersion: "mathcase-provider-input-clearance-register-v1", CatalogSnapshotSHA256: snapshot.ContentSHA256,
		Clearances: []providerInputClearanceFixture{{
			SchemaVersion: "mathcase-provider-input-clearance-v1", ClearanceID: "clearance-synthetic-001",
			ProblemID: problemID, StatementID: statementID, SourceID: sourceID, SourceRevision: source.Revision,
			SourceLocator: source.ItemLocator, SourceFileSHA256: source.ContentSHA256, SourceGitBlob: strings.Repeat("a", 40),
			StatementSHA256: statementSHA, SubmittedFragmentPath: "source/synthetic-item.txt", SubmittedFragmentSHA256: strings.Repeat("b", 64),
			RightsEvidenceID: source.RightsEvidenceID, CatalogSnapshotSHA256: snapshot.ContentSHA256,
			AllowedUse: string(catalog.UseProviderInput), AuthorizedOperation: "NL_TO_LEAN_FORMALIZATION", Scope: "formalizing this exact statement", Status: "CLEARED",
			CatalogSnapshotPath: "catalog.snapshot.json", CatalogProblemID: problemID,
		}},
	}
	clearanceBytes, err := json.Marshal(register)
	if err != nil {
		t.Fatal(err)
	}
	clearance := domain.AgentRunInputClearance{
		StatementID: statementID, EvidenceID: "clearance-synthetic-001", EvidenceSHA256: digestForTest(clearanceBytes),
	}
	target := domain.AttackabilityTarget{
		ProblemID: problemID, StatementID: statementID, CatalogSnapshotSHA256: snapshot.ContentSHA256, StatementSHA256: statementSHA,
	}
	featureProfile := domain.AttackabilityFeatureProfile{
		DomainTags: []string{"UNKNOWN"}, QuantifierShape: "FORALL",
		HypothesisProfile: []string{"NO_HYPOTHESES"}, ClaimType: "UNIVERSAL_PROPERTY",
	}
	featureProfileSHA256, err := featureProfile.Digest()
	if err != nil {
		t.Fatal(err)
	}
	forecastInputBytes, err := json.Marshal(AttackabilityForecastInput{
		SchemaVersion: attackabilityForecastInputV1, RecordID: "synthetic-attackability-001", Target: target,
		FeatureProfile: featureProfile, FeatureProfileSHA256: featureProfileSHA256,
	})
	if err != nil {
		t.Fatal(err)
	}
	config := domain.AttackabilitySolverConfiguration{
		SolverID: "mathcase-engine", SolverRevision: "engine-revision-1", SolverModelID: "gpt-6-astra",
		Toolchain: "lean-4.33.1", InputBundleSHA256: digestForTest(forecastInputBytes), ToolsetSHA256: strings.Repeat("d", 64),
		TimeBudgetMillis: 60000, TokenBudget: 20000, AttemptBudget: 2,
		RetrievalPolicySHA256: strings.Repeat("e", 64), AssistancePolicySHA256: strings.Repeat("f", 64),
	}
	configDigest, err := config.Digest()
	if err != nil {
		t.Fatal(err)
	}
	probability := 0.25
	modelCaptured := now.Add(-time.Minute)
	predictedAt := now.Add(-30 * time.Second)
	record := domain.AttackabilityOutcomeRecord{
		SchemaVersion: domain.AttackabilityOutcomeSchemaVersion, RecordID: "synthetic-attackability-001", CampaignID: "synthetic-campaign",
		RunReceiptID: "synthetic-forecast-run-001", RecordRevision: 1,
		Target: target,
		Prediction: domain.AttackabilityPrediction{
			Kind: domain.AttackabilityModelPrediction, Source: "MODEL_RUN", SourceRecordID: "synthetic-forecast-run-001",
			PredictedAtUTC: predictedAt, ModelID: "gpt-6-astra", ModelIdentityCapturedAtUTC: &modelCaptured,
			SuccessProbability: &probability, HorizonProofAttempts: config.AttemptBudget,
			SolverConfiguration: &config, SolverConfigurationSHA256: configDigest,
		},
		ActualOutcome: domain.AttackabilityActualOutcome{Status: domain.AttackabilityNotAttempted, EvidenceIDs: []string{}, RecordedAtUTC: now},
		Attempts: domain.AttackabilityAttemptCounts{
			InferenceRuns: 1, AttemptBudget: config.AttemptBudget, RunReceiptIDs: []string{"synthetic-forecast-run-001"}, SolverAttemptReceiptIDs: []string{},
		},
		Cost:          domain.AttackabilityRunCost{AccountingMode: domain.AttackabilityAgentQuota, AgentQuotaCalls: 1, ResourceReceiptIDs: []string{"synthetic-forecast-run-001"}},
		RecordedAtUTC: now,
	}
	configDigestCopy := configDigest
	receipt := domain.AgentRunReceipt{
		SchemaVersion: domain.AgentRunReceiptSchemaVersion2, ReceiptID: "synthetic-forecast-run-001", RecordedAtUTC: now,
		Surface: "Delegated worker quota", Model: "gpt-6-astra", ModelIdentityCapturedAtUTC: &modelCaptured,
		Target:  domain.AgentRunTarget{ProblemID: problemID, StatementID: statementID, CatalogSnapshotSHA256: snapshot.ContentSHA256, StatementSHA256: statementSHA},
		Purpose: "attackability forecast", Verdict: "completed", InputClearance: []domain.AgentRunInputClearance{clearance},
		LabelRecordIDs: []string{record.RecordID}, SolverConfigurationSHA256: &configDigestCopy,
	}
	receiptBytes, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	outputBytes, err := json.Marshal(AttackabilityForecastOutput{
		SchemaVersion: "mathcase-attackability-forecast-output-v2", RecordID: record.RecordID, Target: record.Target,
		ModelID: record.Prediction.ModelID, ModelIdentityCapturedAtUTC: modelCaptured,
		PredictedAtUTC: predictedAt, SuccessProbability: probability, HorizonProofAttempts: config.AttemptBudget,
		SolverConfigurationSHA256: configDigest, ForecastInputSHA256: digestForTest(forecastInputBytes),
		FeatureProfileSHA256: featureProfileSHA256,
	})
	if err != nil {
		t.Fatal(err)
	}
	return AttackabilityForecastArtifact{
		SchemaVersion: attackabilityForecastSchema, Record: record,
		ForecastInputBytes:   forecastInputBytes,
		ForecastReceiptBytes: receiptBytes, ForecastOutputBytes: outputBytes, CatalogSnapshotBytes: snapshotBytes,
		ProviderInputs: []AttackabilityProviderInputEvidence{{
			StatementID: statementID, ProblemID: problemID, SourceID: sourceID,
			SourceItemBytes: sourceItem, ClearanceRegisterBytes: clearanceBytes,
		}},
	}
}

type providerInputClearanceRegisterFixture struct {
	SchemaVersion         string                          `json:"schema_version"`
	CatalogSnapshotSHA256 string                          `json:"catalog_snapshot_sha256"`
	Clearances            []providerInputClearanceFixture `json:"clearances"`
}

type providerInputClearanceFixture struct {
	SchemaVersion           string `json:"schema_version"`
	ClearanceID             string `json:"clearance_id"`
	ProblemID               string `json:"problem_id"`
	StatementID             string `json:"statement_id"`
	SourceID                string `json:"source_id"`
	SourceRevision          string `json:"source_revision"`
	SourceLocator           string `json:"source_locator"`
	SourceFileSHA256        string `json:"source_file_sha256"`
	SourceGitBlob           string `json:"source_git_blob"`
	StatementSHA256         string `json:"statement_sha256"`
	SubmittedFragmentPath   string `json:"submitted_fragment_path"`
	SubmittedFragmentSHA256 string `json:"submitted_fragment_sha256"`
	RightsEvidenceID        string `json:"rights_evidence_id"`
	CatalogSnapshotSHA256   string `json:"catalog_snapshot_sha256"`
	AllowedUse              string `json:"allowed_use"`
	AuthorizedOperation     string `json:"authorized_operation,omitempty"`
	Scope                   string `json:"scope"`
	Status                  string `json:"status"`
	CatalogSnapshotPath     string `json:"catalog_snapshot_path"`
	CatalogProblemID        string `json:"catalog_problem_id"`
}

func digestForTest(data []byte) string {
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:])
}
