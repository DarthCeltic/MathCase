package domain

import (
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"path"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	CandidateExpositionArtifactSchemaVersion = "mathcase-candidate-exposition-v1"
	CandidateExpositionOriginExistingPreview = "EXISTING_PREVIEW_TEXT_EXTRACTED_LOCALLY"
	CandidateExpositionRunNotLinked          = "NOT_LINKED"
	CandidateExpositionIdentityUnverified    = "UNVERIFIED"
)

// CandidateExpositionArtifact preserves an untiered explanation draft with
// exact mathematical and receipt bindings. The origin fields say how this
// artifact entered MathCase; they do not establish who authored the text.
type CandidateExpositionArtifact struct {
	SchemaVersion          string `json:"schema_version"`
	Status                 string `json:"status"`
	Origin                 string `json:"origin"`
	AuthorRunStatus        string `json:"author_run_status"`
	AuthorIdentityStatus   string `json:"author_identity_status"`
	SourceArtifactPath     string `json:"source_artifact_path"`
	SourceArtifactSHA256   string `json:"source_artifact_sha256"`
	CaseID                 string `json:"case_id"`
	ProblemID              string `json:"problem_id"`
	ProblemStatementSHA256 string `json:"problem_statement_sha256"`
	RunID                  string `json:"run_id"`
	ProofSHA256            string `json:"proof_sha256"`
	GeneratedSourceSHA256  string `json:"generated_source_sha256"`
	M4ReceiptPath          string `json:"m4_receipt_path"`
	M4ReceiptSHA256        string `json:"m4_receipt_sha256"`
	M6MetricsReceiptPath   string `json:"m6_metrics_receipt_path"`
	M6MetricsReceiptSHA256 string `json:"m6_metrics_receipt_sha256"`
	M6RunReceiptPath       string `json:"m6_run_receipt_path"`
	M6RunReceiptSHA256     string `json:"m6_run_receipt_sha256"`
	Text                   string `json:"text"`
	TextSHA256             string `json:"text_sha256"`
}

// Validate limits this record to the existing locally extracted draft and
// exact existing M4/M6 receipts; no provider authorship or M7 acceptance is
// asserted by the artifact.
func (a CandidateExpositionArtifact) Validate() error {
	if a.SchemaVersion != CandidateExpositionArtifactSchemaVersion {
		return fmt.Errorf("candidate exposition: unsupported schema version %q", a.SchemaVersion)
	}
	if a.Status != CandidateExpositionCandidateOnlyStatus {
		return errors.New("candidate exposition: status must remain candidate-only and not accepted M7")
	}
	if a.Origin != CandidateExpositionOriginExistingPreview {
		return errors.New("candidate exposition: origin must record extraction from the existing preview")
	}
	if a.AuthorRunStatus != CandidateExpositionRunNotLinked || a.AuthorIdentityStatus != CandidateExpositionIdentityUnverified {
		return errors.New("candidate exposition: author run and identity must remain explicitly unlinked and unverified")
	}
	if err := state.ValidateIdentifier("candidate exposition case ID", a.CaseID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("candidate exposition problem ID", a.ProblemID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("candidate exposition run ID", a.RunID); err != nil {
		return err
	}
	for label, value := range map[string]string{
		"source artifact": a.SourceArtifactPath, "M4 receipt": a.M4ReceiptPath,
		"M6 metrics receipt": a.M6MetricsReceiptPath, "M6 run receipt": a.M6RunReceiptPath,
	} {
		if value == "" || strings.Contains(value, "\\") || strings.ContainsRune(value, 0) ||
			strings.HasPrefix(value, "/") || value == "." || value == ".." ||
			strings.HasPrefix(value, "../") || path.Clean(value) != value {
			return fmt.Errorf("candidate exposition: %s path is incomplete or unsafe", label)
		}
	}
	for label, digest := range map[string]string{
		"source artifact":    a.SourceArtifactSHA256,
		"problem statement":  a.ProblemStatementSHA256,
		"proof":              a.ProofSHA256,
		"generated source":   a.GeneratedSourceSHA256,
		"M4 receipt":         a.M4ReceiptSHA256,
		"M6 metrics receipt": a.M6MetricsReceiptSHA256,
		"M6 run receipt":     a.M6RunReceiptSHA256,
		"text":               a.TextSHA256,
	} {
		if !validSHA256(digest) {
			return fmt.Errorf("candidate exposition: %s SHA-256 is invalid", label)
		}
	}
	if strings.TrimSpace(a.Text) == "" {
		return errors.New("candidate exposition: draft text is required")
	}
	digest := sha256.Sum256([]byte(a.Text))
	if hex.EncodeToString(digest[:]) != a.TextSHA256 {
		return errors.New("candidate exposition: text digest does not match the exact draft text")
	}
	return nil
}
