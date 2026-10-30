package persistence

import (
	"context"
	jsonv2 "encoding/json/v2"
	"errors"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

const attackabilityCalibrationFieldsSchema = "mathcase-attackability-calibration-fields-v1"

// AttackabilityCalibrationFields is the joined forecast/outcome view consumed
// by calibration reporting. Synthetic dry-run rows are explicitly excluded;
// they exercise the join and feature plumbing but never become observations.
type AttackabilityCalibrationFields struct {
	SchemaVersion               string                            `json:"schema_version"`
	EvidenceClass               string                            `json:"evidence_class"`
	ForecastSHA256              string                            `json:"forecast_sha256"`
	OutcomeSHA256               string                            `json:"outcome_sha256"`
	RecordID                    string                            `json:"record_id"`
	Target                      domain.AttackabilityTarget        `json:"target"`
	FeatureProfileSHA256        string                            `json:"feature_profile_sha256"`
	PredictedSuccessProbability float64                           `json:"predicted_success_probability"`
	ObservedOutcomeClass        domain.AttackabilityOutcomeStatus `json:"observed_outcome_class"`
	CalibrationEligible         bool                              `json:"calibration_eligible"`
	ObservedSuccess             *bool                             `json:"observed_success"`
	BrierScore                  *float64                          `json:"brier_score"`
	ForecastCount               int                               `json:"forecast_count"`
	MatchedOutcomeCount         int                               `json:"matched_outcome_count"`
	FeatureProfileCount         int                               `json:"feature_profile_count"`
	EligibleObservationCount    int                               `json:"eligible_observation_count"`
	ExcludedObservationCount    int                               `json:"excluded_observation_count"`
	ExclusionReason             string                            `json:"exclusion_reason"`
}

// BuildSyntheticAttackabilityCalibrationFields joins reopened local forecast
// and outcome artifacts for a plumbing dry run. It deliberately yields no
// binary label or score because synthetic evidence cannot calibrate a model.
func BuildSyntheticAttackabilityCalibrationFields(
	ctx context.Context,
	forecast AttackabilityForecastArtifact,
	forecastReceipt AttackabilityForecastReceipt,
	outcome AttackabilityOutcomeArtifact,
	outcomeReceipt AttackabilityOutcomeReceipt,
) (AttackabilityCalibrationFields, error) {
	if ctx == nil {
		return AttackabilityCalibrationFields{}, errors.New("persistence: calibration dry run context is required")
	}
	if err := forecast.Validate(ctx); err != nil {
		return AttackabilityCalibrationFields{}, err
	}
	forecastBytes, err := jsonv2.Marshal(forecast, jsonv2.Deterministic(true))
	if err != nil {
		return AttackabilityCalibrationFields{}, err
	}
	if sha256Hex(forecastBytes) != forecastReceipt.ContentSHA256 {
		return AttackabilityCalibrationFields{}, errors.New("persistence: calibration dry run forecast receipt does not match the exact forecast bytes")
	}
	if forecast.SchemaVersion != attackabilityForecastSchema {
		return AttackabilityCalibrationFields{}, errors.New("persistence: calibration dry run requires a v2 forecast with prediction-time features")
	}
	if !validSHA256(forecastReceipt.ContentSHA256) || forecastReceipt.ContentSHA256 != outcome.ParentForecastSHA256 || forecastReceipt.ContentSHA256 != outcomeReceipt.ParentForecastSHA256 {
		return AttackabilityCalibrationFields{}, errors.New("persistence: calibration dry run forecast and outcome receipt do not form one exact parent/child chain")
	}
	if !validSHA256(outcomeReceipt.ContentSHA256) {
		return AttackabilityCalibrationFields{}, errors.New("persistence: calibration dry run outcome receipt lacks a canonical content digest")
	}
	if outcome.EvidenceClass != attackabilityOutcomeEvidenceClass || outcome.Record.Target != forecast.Record.Target ||
		outcome.Record.RecordRevision != forecast.Record.RecordRevision+1 || outcome.Record.SupersedesRecordID != forecast.Record.RecordID {
		return AttackabilityCalibrationFields{}, errors.New("persistence: calibration dry run outcome is not the exact next child revision of its forecast")
	}
	outcomeBytes, err := marshalOutcomeArtifact(outcome)
	if err != nil {
		return AttackabilityCalibrationFields{}, err
	}
	if sha256Hex(outcomeBytes) != outcomeReceipt.ContentSHA256 {
		return AttackabilityCalibrationFields{}, errors.New("persistence: calibration dry run outcome receipt does not match the exact outcome bytes")
	}
	if forecast.Record.Prediction.SuccessProbability == nil {
		return AttackabilityCalibrationFields{}, errors.New("persistence: calibration dry run forecast has no success probability")
	}
	var input AttackabilityForecastInput
	if err := decodeStrictEvidenceJSON(forecast.ForecastInputBytes, &input); err != nil {
		return AttackabilityCalibrationFields{}, err
	}
	profileSHA256, err := input.FeatureProfile.Digest()
	if err != nil || profileSHA256 != input.FeatureProfileSHA256 {
		return AttackabilityCalibrationFields{}, errors.New("persistence: calibration dry run feature profile is not digest-bound")
	}
	if outcome.Record.ActualOutcome.Status == domain.AttackabilityNotAttempted {
		return AttackabilityCalibrationFields{}, errors.New("persistence: calibration dry run requires an appended outcome")
	}

	return AttackabilityCalibrationFields{
		SchemaVersion:               attackabilityCalibrationFieldsSchema,
		EvidenceClass:               "SYNTHETIC_DRY_RUN_ONLY",
		ForecastSHA256:              forecastReceipt.ContentSHA256,
		OutcomeSHA256:               outcomeReceipt.ContentSHA256,
		RecordID:                    forecast.Record.RecordID,
		Target:                      forecast.Record.Target,
		FeatureProfileSHA256:        profileSHA256,
		PredictedSuccessProbability: *forecast.Record.Prediction.SuccessProbability,
		ObservedOutcomeClass:        outcome.Record.ActualOutcome.Status,
		CalibrationEligible:         false,
		ObservedSuccess:             nil,
		BrierScore:                  nil,
		ForecastCount:               1,
		MatchedOutcomeCount:         1,
		FeatureProfileCount:         1,
		EligibleObservationCount:    0,
		ExcludedObservationCount:    1,
		ExclusionReason:             "synthetic dry-run evidence cannot enter calibration",
	}, nil
}
