package main

import (
	"context"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/persistence"
)

type attackabilityForecastValidationOutput struct {
	SchemaVersion         string `json:"schema_version"`
	Status                string `json:"status"`
	Digest                string `json:"digest"`
	RecordID              string `json:"record_id"`
	ProblemID             string `json:"problem_id"`
	StatementID           string `json:"statement_id"`
	CatalogSnapshotSHA256 string `json:"catalog_snapshot_sha256"`
	StatementSHA256       string `json:"statement_sha256"`
	PredictionKind        string `json:"prediction_kind"`
	SuccessProbability    any    `json:"success_probability,omitempty"`
	CalibrationClaim      string `json:"calibration_claim"`
}

// runAttackabilityForecastValidate reopens a content-addressed M1 artifact
// through the typed store and confirms it targets one exact queued M0 item.
func runAttackabilityForecastValidate(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("attackability-forecast-validate", flag.ContinueOnError)
	flags.SetOutput(stderr)
	storeRoot := flags.String("store-root", "", "application-owned forecast store root")
	digest := flags.String("digest", "", "content SHA-256 of the forecast artifact")
	problemID := flags.String("problem-id", "", "exact M0 problem ID")
	statementID := flags.String("statement-id", "", "exact M0 statement ID")
	catalogDigest := flags.String("catalog-snapshot-sha256", "", "exact M0 catalog content digest")
	statementDigest := flags.String("statement-sha256", "", "SHA-256 of the exact M0 informal statement bytes")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*storeRoot) == "" || strings.TrimSpace(*digest) == "" ||
		strings.TrimSpace(*problemID) == "" || strings.TrimSpace(*statementID) == "" ||
		strings.TrimSpace(*catalogDigest) == "" || strings.TrimSpace(*statementDigest) == "" {
		fmt.Fprintln(stderr, "attackability-forecast-validate requires store root, digest, problem ID, statement ID, catalog digest, and statement digest")
		return 2
	}
	store, err := persistence.NewAttackabilityForecastStore(*storeRoot)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: open typed forecast store: %v\n", err)
		return 2
	}
	artifact, receipt, err := store.Get(context.Background(), *digest)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: reopen typed pre-attempt forecast: %v\n", err)
		return 2
	}
	target := artifact.Record.Target
	if target.ProblemID != *problemID || target.StatementID != *statementID ||
		target.CatalogSnapshotSHA256 != *catalogDigest || target.StatementSHA256 != *statementDigest {
		fmt.Fprintln(stderr, "mathcase: typed forecast target does not match the exact queued M0 problem and statement")
		return 2
	}
	output := attackabilityForecastValidationOutput{
		SchemaVersion:         "mathcase-attackability-forecast-validation-v1",
		Status:                "VALIDATED",
		Digest:                receipt.ContentSHA256,
		RecordID:              artifact.Record.RecordID,
		ProblemID:             target.ProblemID,
		StatementID:           target.StatementID,
		CatalogSnapshotSHA256: target.CatalogSnapshotSHA256,
		StatementSHA256:       target.StatementSHA256,
		PredictionKind:        string(artifact.Record.Prediction.Kind),
		SuccessProbability:    artifact.Record.Prediction.SuccessProbability,
		CalibrationClaim:      "Typed evidence and exact target integrity only; forecast accuracy and calibration are not established by this validation.",
	}
	encoder := json.NewEncoder(stdout)
	encoder.SetIndent("", "  ")
	if err := encoder.Encode(output); err != nil {
		fmt.Fprintf(stderr, "mathcase: encode typed forecast validation: %v\n", err)
		return 2
	}
	return 0
}
