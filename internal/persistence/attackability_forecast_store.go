package persistence

import (
	"context"
	jsonv2 "encoding/json/v2"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/formalizer"
	"github.com/DarthCeltic/MathCase/internal/fsutil"
)

const (
	attackabilityForecastDirectory = "attackability-forecasts"
	attackabilityForecastSchemaV1  = "mathcase-attackability-forecast-evidence-v1"
	attackabilityForecastSchema    = "mathcase-attackability-forecast-evidence-v2"
	attackabilityForecastInputV1   = "mathcase-attackability-forecast-input-v1"
	attackabilityForecastBytes     = 32 << 20
)

// AttackabilityForecastOutput is the strict response shape expected from a
// forecasting run. The raw response is retained separately and checked against
// the pre-attempt label; this type does not authenticate the model surface.
type AttackabilityForecastOutput struct {
	SchemaVersion              string                     `json:"schema_version"`
	RecordID                   string                     `json:"record_id"`
	Target                     domain.AttackabilityTarget `json:"target"`
	ModelID                    string                     `json:"model_id"`
	ModelIdentityCapturedAtUTC time.Time                  `json:"model_identity_captured_at_utc"`
	ModelSnapshotID            *string                    `json:"model_snapshot_id,omitempty"`
	PredictedAtUTC             time.Time                  `json:"predicted_at_utc"`
	SuccessProbability         float64                    `json:"success_probability"`
	HorizonProofAttempts       int                        `json:"horizon_proof_attempts"`
	SolverConfigurationSHA256  string                     `json:"solver_configuration_sha256"`
	ForecastInputSHA256        string                     `json:"forecast_input_sha256,omitempty"`
	FeatureProfileSHA256       string                     `json:"feature_profile_sha256,omitempty"`
}

// AttackabilityForecastInput is the exact typed prediction-time input bundle.
// Its raw bytes are stored in the forecast artifact and hashed by the pinned
// solver configuration, so the feature profile cannot be added after a run.
type AttackabilityForecastInput struct {
	SchemaVersion        string                             `json:"schema_version"`
	RecordID             string                             `json:"record_id"`
	Target               domain.AttackabilityTarget         `json:"target"`
	FeatureProfile       domain.AttackabilityFeatureProfile `json:"feature_profile_at_prediction"`
	FeatureProfileSHA256 string                             `json:"feature_profile_sha256"`
}

// AttackabilityProviderInputEvidence carries one exact source item and the
// clearance-register bytes named by a V2 run receipt. Each input is checked
// through the existing M0/clearance preflight before it can be stored.
type AttackabilityProviderInputEvidence struct {
	StatementID            string `json:"statement_id"`
	ProblemID              string `json:"problem_id"`
	SourceID               string `json:"source_id"`
	SourceItemBytes        []byte `json:"source_item_bytes"`
	ClearanceRegisterBytes []byte `json:"clearance_register_bytes"`
}

// AttackabilityForecastArtifact is the pre-attempt half of an outcome chain.
// Outcomes are intentionally not accepted here: they require reopened work
// attempt receipts and a separate append-only outcome consumer.
type AttackabilityForecastArtifact struct {
	SchemaVersion        string                               `json:"schema_version"`
	Record               domain.AttackabilityOutcomeRecord    `json:"record"`
	ForecastInputBytes   []byte                               `json:"forecast_input_bytes,omitempty"`
	ForecastReceiptBytes []byte                               `json:"forecast_receipt_bytes"`
	ForecastOutputBytes  []byte                               `json:"forecast_output_bytes"`
	CatalogSnapshotBytes []byte                               `json:"catalog_snapshot_bytes"`
	ProviderInputs       []AttackabilityProviderInputEvidence `json:"provider_inputs"`
}

type AttackabilityForecastReceipt struct {
	ContentSHA256 string `json:"content_sha256"`
	RelativePath  string `json:"relative_path"`
	Size          int64  `json:"size"`
}

// AttackabilityForecastStore persists only validated pre-attempt forecasts in
// immutable content-addressed objects under an application-owned directory.
type AttackabilityForecastStore struct {
	root string
}

func NewAttackabilityForecastStore(root string) (*AttackabilityForecastStore, error) {
	if strings.TrimSpace(root) == "" {
		return nil, errors.New("persistence: attackability forecast root is required")
	}
	if err := os.MkdirAll(root, 0o700); err != nil {
		return nil, fmt.Errorf("persistence: create attackability forecast root: %w", err)
	}
	canonical, err := fsutil.CanonicalPath(root)
	if err != nil {
		return nil, fmt.Errorf("persistence: resolve attackability forecast root: %w", err)
	}
	info, err := os.Lstat(canonical)
	if err != nil {
		return nil, fmt.Errorf("persistence: inspect attackability forecast root: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return nil, errors.New("persistence: attackability forecast root is not a regular directory")
	}
	return &AttackabilityForecastStore{root: canonical}, nil
}

// Validate reopens every source, clearance, receipt, and raw forecast output.
// Passing establishes local byte integrity and item-level scope consistency;
// it does not authenticate the clearance issuer or provider execution.
func (a AttackabilityForecastArtifact) Validate(ctx context.Context) error {
	if ctx == nil {
		return errors.New("persistence: attackability forecast context is required")
	}
	if err := ctx.Err(); err != nil {
		return err
	}
	if a.SchemaVersion != attackabilityForecastSchema && a.SchemaVersion != attackabilityForecastSchemaV1 {
		return errors.New("persistence: unsupported attackability forecast evidence schema")
	}
	if err := a.Record.Validate(); err != nil {
		return fmt.Errorf("persistence: invalid attackability forecast label: %w", err)
	}
	if a.Record.Prediction.Kind != domain.AttackabilityModelPrediction || a.Record.ActualOutcome.Status != domain.AttackabilityNotAttempted ||
		a.Record.RecordRevision != 1 || a.Record.SupersedesRecordID != "" || a.Record.Attempts.FormalizationAttempts != 0 || a.Record.Attempts.ProofAttempts != 0 {
		return errors.New("persistence: forecast artifact must be a first-revision model prediction recorded before work attempts")
	}
	if len(a.CatalogSnapshotBytes) == 0 || len(a.CatalogSnapshotBytes) > 16<<20 {
		return errors.New("persistence: embedded M0 snapshot is empty or exceeds its size limit")
	}
	var snapshot catalog.Snapshot
	if err := decodeStrictEvidenceJSON(a.CatalogSnapshotBytes, &snapshot); err != nil {
		return fmt.Errorf("persistence: decode exact attackability M0 snapshot: %w", err)
	}
	if err := snapshot.Validate(); err != nil {
		return fmt.Errorf("persistence: validate exact attackability M0 snapshot: %w", err)
	}
	if snapshot.ContentSHA256 != a.Record.Target.CatalogSnapshotSHA256 {
		return errors.New("persistence: attackability target is not bound to the embedded M0 snapshot")
	}

	var receipt domain.AgentRunReceipt
	if len(a.ForecastReceiptBytes) == 0 || len(a.ForecastReceiptBytes) > 1<<20 {
		return errors.New("persistence: exact forecast run receipt is empty or exceeds its size limit")
	}
	if err := decodeStrictEvidenceJSON(a.ForecastReceiptBytes, &receipt); err != nil {
		return fmt.Errorf("persistence: decode exact forecast run receipt: %w", err)
	}
	if err := a.Record.ValidateAgainstAgentRunReceipt(receipt); err != nil {
		return fmt.Errorf("persistence: forecast label/receipt reconciliation failed: %w", err)
	}

	if len(a.ForecastOutputBytes) == 0 || len(a.ForecastOutputBytes) > 1<<20 {
		return errors.New("persistence: raw forecast output is empty or exceeds its size limit")
	}
	var output AttackabilityForecastOutput
	if err := decodeStrictEvidenceJSON(a.ForecastOutputBytes, &output); err != nil {
		return fmt.Errorf("persistence: decode raw forecast output: %w", err)
	}
	if err := validateAttackabilityForecastOutput(a.Record, output); err != nil {
		return err
	}
	if a.SchemaVersion == attackabilityForecastSchema {
		if len(a.ForecastInputBytes) == 0 || len(a.ForecastInputBytes) > 1<<20 {
			return errors.New("persistence: exact prediction-time input bundle is empty or exceeds its size limit")
		}
		var forecastInput AttackabilityForecastInput
		if err := decodeStrictEvidenceJSON(a.ForecastInputBytes, &forecastInput); err != nil {
			return fmt.Errorf("persistence: decode exact prediction-time input bundle: %w", err)
		}
		if forecastInput.SchemaVersion != attackabilityForecastInputV1 || forecastInput.RecordID != a.Record.RecordID || forecastInput.Target != a.Record.Target {
			return errors.New("persistence: prediction-time input bundle does not identify the exact forecast record and target")
		}
		profileSHA256, err := forecastInput.FeatureProfile.Digest()
		if err != nil {
			return fmt.Errorf("persistence: invalid prediction-time feature profile: %w", err)
		}
		if forecastInput.FeatureProfileSHA256 != profileSHA256 {
			return errors.New("persistence: prediction-time feature profile digest does not match its fields")
		}
		inputSHA256 := sha256Hex(a.ForecastInputBytes)
		if a.Record.Prediction.SolverConfiguration == nil || a.Record.Prediction.SolverConfiguration.InputBundleSHA256 != inputSHA256 {
			return errors.New("persistence: prediction-time input bytes do not match the pinned solver input-bundle digest")
		}
		if output.SchemaVersion != "mathcase-attackability-forecast-output-v2" || output.ForecastInputSHA256 != inputSHA256 || output.FeatureProfileSHA256 != profileSHA256 {
			return errors.New("persistence: raw forecast output is not bound to the exact prediction-time inputs and feature profile")
		}
	} else if len(a.ForecastInputBytes) != 0 || output.SchemaVersion != "mathcase-attackability-forecast-output-v1" {
		return errors.New("persistence: legacy forecast evidence v1 cannot claim prediction-time input evidence")
	}

	if len(receipt.InputClearance) == 0 || len(a.ProviderInputs) != len(receipt.InputClearance) {
		return errors.New("persistence: provider input evidence set does not cover every receipt clearance")
	}
	clearanceArtifacts := make(map[string][]byte, len(a.ProviderInputs))
	inputByStatement := make(map[string]AttackabilityProviderInputEvidence, len(a.ProviderInputs))
	for _, input := range a.ProviderInputs {
		if input.StatementID == "" || input.ProblemID == "" || input.SourceID == "" || len(input.SourceItemBytes) == 0 || len(input.ClearanceRegisterBytes) == 0 {
			return errors.New("persistence: provider input evidence requires statement, problem, source, source bytes, and clearance bytes")
		}
		if _, duplicate := inputByStatement[input.StatementID]; duplicate {
			return fmt.Errorf("persistence: duplicate provider input evidence for statement %q", input.StatementID)
		}
		inputByStatement[input.StatementID] = input
	}
	targetStatementFound := false
	for _, clearance := range receipt.InputClearance {
		input, ok := inputByStatement[clearance.StatementID]
		if !ok {
			return fmt.Errorf("persistence: provider input evidence is missing statement %q", clearance.StatementID)
		}
		if _, duplicate := clearanceArtifacts[clearance.EvidenceID]; duplicate {
			return errors.New("persistence: shared clearance-register IDs are unsupported; provide a distinct pinned register per statement")
		}
		clearanceArtifacts[clearance.EvidenceID] = input.ClearanceRegisterBytes
		if clearance.StatementID == a.Record.Target.StatementID && input.ProblemID == a.Record.Target.ProblemID {
			targetStatementFound = true
		}
		problem, found := attackabilityCatalogProblem(snapshot, input.ProblemID)
		if !found {
			return fmt.Errorf("persistence: clearance problem %q is absent from M0", input.ProblemID)
		}
		source, found := attackabilityCatalogSource(snapshot, input.SourceID)
		if !found || !containsCatalogSource(problem.SourceIDs, source.ID) {
			return fmt.Errorf("persistence: clearance source %q is not linked to M0 problem %q", input.SourceID, input.ProblemID)
		}
		if clearance.StatementID == a.Record.Target.StatementID && input.ProblemID == a.Record.Target.ProblemID && sha256Hex([]byte(problem.InformalStatement)) != a.Record.Target.StatementSHA256 {
			return errors.New("persistence: exact M0 target statement digest does not match the attackability label")
		}
		sourcePin := domain.V3SourceStatementPin{
			URL:                   source.URL,
			ItemLocator:           source.ItemLocator,
			Revision:              source.Revision,
			RawItemSHA256:         source.ContentSHA256,
			CatalogSnapshotSHA256: snapshot.ContentSHA256,
			Statement:             problem.InformalStatement,
			EvidenceID:            source.ID,
		}
		request := formalizer.NewRequest(a.Record.RecordID, problem.ID, sourcePin, clearance, a.Record.RecordID, receipt.ReceiptID)
		preflight := formalizer.PinnedProviderInputPreflight{
			Snapshot:               snapshot,
			ClearanceRegisterBytes: input.ClearanceRegisterBytes,
			SourceItemBytes:        map[string][]byte{source.ID: input.SourceItemBytes},
		}
		if err := preflight.VerifyProviderInput(ctx, request); err != nil {
			return fmt.Errorf("persistence: reopen provider-input scope for statement %q: %w", clearance.StatementID, err)
		}
	}
	if !targetStatementFound {
		return errors.New("persistence: target statement has no matching provider-input clearance")
	}
	if err := receipt.ValidateInputClearanceArtifactBytes(clearanceArtifacts); err != nil {
		return fmt.Errorf("persistence: reopen forecast receipt clearance bytes: %w", err)
	}
	return ctx.Err()
}

func validateAttackabilityForecastOutput(record domain.AttackabilityOutcomeRecord, output AttackabilityForecastOutput) error {
	if (output.SchemaVersion != "mathcase-attackability-forecast-output-v1" && output.SchemaVersion != "mathcase-attackability-forecast-output-v2") || output.RecordID != record.RecordID || output.Target != record.Target {
		return errors.New("persistence: raw forecast output does not identify the exact label and target")
	}
	prediction := record.Prediction
	if output.ModelID != prediction.ModelID || prediction.ModelIdentityCapturedAtUTC == nil || !output.ModelIdentityCapturedAtUTC.Equal(*prediction.ModelIdentityCapturedAtUTC) {
		return errors.New("persistence: raw forecast output model identity does not match the launch-bound label")
	}
	if !sameOptionalModelSnapshot(output.ModelSnapshotID, prediction.ModelSnapshotID) {
		return errors.New("persistence: raw forecast output model snapshot does not match the label")
	}
	if !output.PredictedAtUTC.Equal(prediction.PredictedAtUTC) || prediction.SuccessProbability == nil || output.SuccessProbability != *prediction.SuccessProbability ||
		output.HorizonProofAttempts != prediction.HorizonProofAttempts || output.SolverConfigurationSHA256 != prediction.SolverConfigurationSHA256 {
		return errors.New("persistence: raw forecast output differs from the persisted probability, horizon, or solver configuration")
	}
	return nil
}

func sameOptionalModelSnapshot(left, right *string) bool {
	if left == nil || right == nil {
		return left == nil && right == nil
	}
	return *left == *right
}

// Put validates before writing an immutable, content-addressed pre-attempt
// record. It refuses replacement; changed forecasts receive different hashes.
func (s *AttackabilityForecastStore) Put(ctx context.Context, artifact AttackabilityForecastArtifact) (AttackabilityForecastReceipt, error) {
	if s == nil || s.root == "" {
		return AttackabilityForecastReceipt{}, errors.New("persistence: attackability forecast store is nil")
	}
	if artifact.SchemaVersion != attackabilityForecastSchema {
		return AttackabilityForecastReceipt{}, errors.New("persistence: new forecast writes require v2 prediction-time input evidence; v1 is read-only")
	}
	if err := artifact.Validate(ctx); err != nil {
		return AttackabilityForecastReceipt{}, err
	}
	body, err := jsonv2.Marshal(artifact, jsonv2.Deterministic(true))
	if err != nil {
		return AttackabilityForecastReceipt{}, fmt.Errorf("persistence: encode attackability forecast artifact: %w", err)
	}
	if len(body) == 0 || len(body) > attackabilityForecastBytes {
		return AttackabilityForecastReceipt{}, errors.New("persistence: attackability forecast artifact size is invalid")
	}
	digest := sha256Hex(body)
	directory := filepath.Join(s.root, attackabilityForecastDirectory)
	if err := ensureDirectory(directory); err != nil {
		return AttackabilityForecastReceipt{}, err
	}
	target := filepath.Join(directory, digest+".json")
	if receipt, ok, err := s.verifyExisting(ctx, target, digest); err != nil || ok {
		return receipt, err
	}
	if err := ctx.Err(); err != nil {
		return AttackabilityForecastReceipt{}, err
	}
	temp, err := os.CreateTemp(directory, ".mathcase-attackability-forecast-*.tmp")
	if err != nil {
		return AttackabilityForecastReceipt{}, fmt.Errorf("persistence: create attackability forecast temporary file: %w", err)
	}
	tempPath := temp.Name()
	defer func() { _ = os.Remove(tempPath) }()
	if err := temp.Chmod(0o600); err != nil {
		_ = temp.Close()
		return AttackabilityForecastReceipt{}, fmt.Errorf("persistence: restrict attackability forecast artifact: %w", err)
	}
	if err := writeAll(temp, body); err != nil {
		_ = temp.Close()
		return AttackabilityForecastReceipt{}, fmt.Errorf("persistence: write attackability forecast artifact: %w", err)
	}
	if err := temp.Sync(); err != nil {
		_ = temp.Close()
		return AttackabilityForecastReceipt{}, fmt.Errorf("persistence: sync attackability forecast artifact: %w", err)
	}
	if err := temp.Close(); err != nil {
		return AttackabilityForecastReceipt{}, fmt.Errorf("persistence: close attackability forecast artifact: %w", err)
	}
	if err := ctx.Err(); err != nil {
		return AttackabilityForecastReceipt{}, err
	}
	if err := os.Link(tempPath, target); err != nil {
		if receipt, ok, verifyErr := s.verifyExisting(ctx, target, digest); verifyErr == nil && ok {
			return receipt, nil
		}
		return AttackabilityForecastReceipt{}, fmt.Errorf("persistence: append attackability forecast artifact: %w", err)
	}
	if err := os.Remove(tempPath); err != nil {
		return AttackabilityForecastReceipt{}, fmt.Errorf("persistence: remove attackability forecast temporary link: %w", err)
	}
	if runtime.GOOS != "windows" {
		directoryFile, err := os.Open(directory)
		if err != nil {
			return AttackabilityForecastReceipt{}, fmt.Errorf("persistence: open attackability forecast directory: %w", err)
		}
		syncErr := directoryFile.Sync()
		closeErr := directoryFile.Close()
		if syncErr != nil {
			return AttackabilityForecastReceipt{}, fmt.Errorf("persistence: sync attackability forecast directory: %w", syncErr)
		}
		if closeErr != nil {
			return AttackabilityForecastReceipt{}, fmt.Errorf("persistence: close attackability forecast directory: %w", closeErr)
		}
	}
	return attackabilityForecastReceipt(s.root, target, digest, int64(len(body))), nil
}

// Get reopens the exact forecast and repeats all typed and item-scope checks.
func (s *AttackabilityForecastStore) Get(ctx context.Context, digest string) (AttackabilityForecastArtifact, AttackabilityForecastReceipt, error) {
	if s == nil || s.root == "" {
		return AttackabilityForecastArtifact{}, AttackabilityForecastReceipt{}, errors.New("persistence: attackability forecast store is nil")
	}
	if ctx == nil {
		return AttackabilityForecastArtifact{}, AttackabilityForecastReceipt{}, errors.New("persistence: context is required")
	}
	if !validSHA256(digest) {
		return AttackabilityForecastArtifact{}, AttackabilityForecastReceipt{}, errors.New("persistence: attackability forecast digest must be canonical SHA-256 hex")
	}
	if err := ctx.Err(); err != nil {
		return AttackabilityForecastArtifact{}, AttackabilityForecastReceipt{}, err
	}
	directory := filepath.Join(s.root, attackabilityForecastDirectory)
	if err := checkDirectory(directory); err != nil {
		return AttackabilityForecastArtifact{}, AttackabilityForecastReceipt{}, err
	}
	path := filepath.Join(directory, digest+".json")
	if err := ensureContained(s.root, path); err != nil {
		return AttackabilityForecastArtifact{}, AttackabilityForecastReceipt{}, err
	}
	file, err := openRegular(path)
	if err != nil {
		return AttackabilityForecastArtifact{}, AttackabilityForecastReceipt{}, fmt.Errorf("persistence: open attackability forecast artifact: %w", err)
	}
	defer file.Close()
	body, err := io.ReadAll(io.LimitReader(file, attackabilityForecastBytes+1))
	if err != nil {
		return AttackabilityForecastArtifact{}, AttackabilityForecastReceipt{}, fmt.Errorf("persistence: read attackability forecast artifact: %w", err)
	}
	if len(body) == 0 || len(body) > attackabilityForecastBytes || sha256Hex(body) != digest {
		return AttackabilityForecastArtifact{}, AttackabilityForecastReceipt{}, errors.New("persistence: attackability forecast content hash or size is invalid")
	}
	var artifact AttackabilityForecastArtifact
	if err := jsonv2.Unmarshal(body, &artifact, jsonv2.RejectUnknownMembers(true)); err != nil {
		return AttackabilityForecastArtifact{}, AttackabilityForecastReceipt{}, fmt.Errorf("persistence: decode attackability forecast artifact: %w", err)
	}
	if err := artifact.Validate(ctx); err != nil {
		return AttackabilityForecastArtifact{}, AttackabilityForecastReceipt{}, fmt.Errorf("persistence: reopened attackability forecast artifact is invalid: %w", err)
	}
	return artifact, attackabilityForecastReceipt(s.root, path, digest, int64(len(body))), nil
}

func (s *AttackabilityForecastStore) verifyExisting(ctx context.Context, target, digest string) (AttackabilityForecastReceipt, bool, error) {
	if err := ctx.Err(); err != nil {
		return AttackabilityForecastReceipt{}, false, err
	}
	file, err := openRegular(target)
	if errors.Is(err, os.ErrNotExist) {
		return AttackabilityForecastReceipt{}, false, nil
	}
	if err != nil {
		return AttackabilityForecastReceipt{}, false, err
	}
	defer file.Close()
	body, err := io.ReadAll(io.LimitReader(file, attackabilityForecastBytes+1))
	if err != nil {
		return AttackabilityForecastReceipt{}, false, err
	}
	if len(body) == 0 || len(body) > attackabilityForecastBytes || sha256Hex(body) != digest {
		return AttackabilityForecastReceipt{}, false, errors.New("persistence: existing attackability forecast does not match its content address")
	}
	var artifact AttackabilityForecastArtifact
	if err := jsonv2.Unmarshal(body, &artifact, jsonv2.RejectUnknownMembers(true)); err != nil {
		return AttackabilityForecastReceipt{}, false, fmt.Errorf("persistence: decode existing attackability forecast artifact: %w", err)
	}
	if err := artifact.Validate(ctx); err != nil {
		return AttackabilityForecastReceipt{}, false, fmt.Errorf("persistence: existing attackability forecast artifact is invalid: %w", err)
	}
	return attackabilityForecastReceipt(s.root, target, digest, int64(len(body))), true, nil
}

func attackabilityForecastReceipt(root, path, digest string, size int64) AttackabilityForecastReceipt {
	relative, _ := filepath.Rel(root, path)
	return AttackabilityForecastReceipt{ContentSHA256: digest, RelativePath: filepath.ToSlash(relative), Size: size}
}

func attackabilityCatalogProblem(snapshot catalog.Snapshot, id string) (catalog.Problem, bool) {
	for _, problem := range snapshot.Problems {
		if problem.ID == id {
			return problem, true
		}
	}
	return catalog.Problem{}, false
}

func attackabilityCatalogSource(snapshot catalog.Snapshot, id string) (catalog.SourceVersion, bool) {
	for _, source := range snapshot.Sources {
		if source.ID == id {
			return source, true
		}
	}
	return catalog.SourceVersion{}, false
}

func containsCatalogSource(values []string, expected string) bool {
	for _, value := range values {
		if value == expected {
			return true
		}
	}
	return false
}
