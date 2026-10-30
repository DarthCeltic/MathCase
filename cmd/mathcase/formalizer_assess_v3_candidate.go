package main

import (
	"context"
	"encoding/base64"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"path/filepath"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/formalizer"
)

const (
	formalizerV3CandidateReportSchema = "mathcase-formalizer-v3-candidate-report-v1"
	formalizerV3CandidateReportLimit  = 4 << 20
)

type formalizerV3CandidateReport struct {
	SchemaVersion     string                           `json:"schema_version"`
	Status            string                           `json:"status"`
	ClaimBoundary     string                           `json:"claim_boundary"`
	ArtifactSHA256    string                           `json:"artifact_sha256"`
	ReviewInputClass  string                           `json:"review_input_class"`
	ReviewInputSHA256 string                           `json:"review_input_sha256"`
	ReviewInputBase64 string                           `json:"review_input_base64"`
	RecordedAtUTC     time.Time                        `json:"recorded_at_utc"`
	Assessment        formalizer.CandidateV3Assessment `json:"assessment"`
}

type formalizerV3CandidateSummary struct {
	SchemaVersion     string                    `json:"schema_version"`
	Status            string                    `json:"status"`
	ProblemID         string                    `json:"problem_id"`
	CandidateID       string                    `json:"candidate_id"`
	V3RecordStatus    domain.VerificationStatus `json:"v3_record_status"`
	ReportPath        string                    `json:"report_path"`
	ReportSHA256      string                    `json:"report_sha256"`
	ReviewInputSHA256 string                    `json:"review_input_sha256"`
}

// runFormalizerAssessV3Candidate reopens one durable M0-bound formalizer
// artifact and evaluates caller-supplied typed comparison data against it.
// The report is deliberately candidate-only: it cannot create a dossier gate
// receipt, authenticate the reviewer, or modify M0.
func runFormalizerAssessV3Candidate(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("formalizer-assess-v3-candidate", flag.ContinueOnError)
	flags.SetOutput(stderr)
	artifactRoot := flags.String("formalizer-artifact-root", "", "existing durable formalizer artifact store")
	artifactSHA256 := flags.String("artifact-sha256", "", "content-addressed formalizer artifact SHA-256")
	reviewPath := flags.String("review", "", "strict JSON typed V3 comparison input; caller claims are not authenticated")
	outputPath := flags.String("output", "", "new candidate-only report path; existing files are never overwritten")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*artifactRoot) == "" || strings.TrimSpace(*artifactSHA256) == "" ||
		strings.TrimSpace(*reviewPath) == "" || strings.TrimSpace(*outputPath) == "" {
		fmt.Fprintln(stderr, "formalizer-assess-v3-candidate requires --formalizer-artifact-root DIR, --artifact-sha256 SHA256, --review FILE, and --output NEW_FILE")
		return 2
	}
	if err := ensureFormalizerCandidateReportOutsideStore(*artifactRoot, *outputPath); err != nil {
		fmt.Fprintf(stderr, "mathcase: candidate report path: %v\n", err)
		return 2
	}
	reviewBytes, err := readRegularInput(*reviewPath, "caller-supplied V3 comparison input", formalizerV3CandidateReportLimit)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read V3 comparison input: %v\n", err)
		return 2
	}
	var review domain.V3StatementFidelity
	if err := decodeStrictJSON(reviewBytes, &review, "caller-supplied V3 comparison input"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode V3 comparison input: %v\n", err)
		return 2
	}
	store, err := formalizer.OpenArtifactStore(*artifactRoot)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: open existing formalizer artifact store: %v\n", err)
		return 2
	}
	handoff, err := store.OpenV3(context.Background(), *artifactSHA256)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: reopen formalizer candidate: %v\n", err)
		return 2
	}
	assessedAt := time.Now().UTC()
	assessment, err := handoff.Assess(review, assessedAt)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: assess formalizer candidate: %v\n", err)
		return 1
	}
	if assessment.Status != formalizer.CandidateV3AssessmentStatus || assessment.V3Record.Status == domain.VerificationPassed {
		fmt.Fprintln(stderr, "mathcase: candidate assessment crossed its non-passing V3 boundary")
		return 1
	}
	report := formalizerV3CandidateReport{
		SchemaVersion:     formalizerV3CandidateReportSchema,
		Status:            formalizer.CandidateV3AssessmentStatus,
		ClaimBoundary:     "Not a dossier gate receipt or V3 pass. The typed review fields are caller-supplied and unauthenticated; M0 and dossier state are unchanged.",
		ArtifactSHA256:    handoff.Artifact.ArtifactSHA256,
		ReviewInputClass:  "CALLER_SUPPLIED_UNAUTHENTICATED",
		ReviewInputSHA256: digestBytes(reviewBytes),
		ReviewInputBase64: base64.StdEncoding.EncodeToString(reviewBytes),
		RecordedAtUTC:     assessedAt,
		Assessment:        assessment,
	}
	reportBytes, err := json.MarshalIndent(report, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode candidate V3 report: %v\n", err)
		return 2
	}
	reportBytes = append(reportBytes, '\n')
	if len(reportBytes) > formalizerV3CandidateReportLimit {
		fmt.Fprintln(stderr, "mathcase: candidate V3 report exceeds its size limit")
		return 2
	}
	if err := writeNewRegularOutput(*outputPath, reportBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: write candidate V3 report: %v\n", err)
		return 2
	}
	summary := formalizerV3CandidateSummary{
		SchemaVersion:     formalizerV3CandidateReportSchema,
		Status:            formalizer.CandidateV3AssessmentStatus,
		ProblemID:         assessment.ProblemID,
		CandidateID:       assessment.CandidateID,
		V3RecordStatus:    assessment.V3Record.Status,
		ReportPath:        *outputPath,
		ReportSHA256:      digestBytes(reportBytes),
		ReviewInputSHA256: report.ReviewInputSHA256,
	}
	encodedSummary, err := json.Marshal(summary)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode candidate V3 summary: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(append(encodedSummary, '\n')); err != nil {
		fmt.Fprintf(stderr, "mathcase: write candidate V3 summary: %v\n", err)
		return 2
	}
	return 0
}

func ensureFormalizerCandidateReportOutsideStore(storeRoot, outputPath string) error {
	rootAbs, err := filepath.Abs(storeRoot)
	if err != nil {
		return fmt.Errorf("resolve formalizer artifact root: %w", err)
	}
	rootReal, err := filepath.EvalSymlinks(rootAbs)
	if err != nil {
		return fmt.Errorf("resolve existing formalizer artifact root: %w", err)
	}
	outputAbs, err := filepath.Abs(outputPath)
	if err != nil {
		return fmt.Errorf("resolve report path: %w", err)
	}
	parentReal, err := filepath.EvalSymlinks(filepath.Dir(outputAbs))
	if err != nil {
		return fmt.Errorf("resolve existing report directory: %w", err)
	}
	resolvedOutput := filepath.Join(parentReal, filepath.Base(outputAbs))
	relative, err := filepath.Rel(rootReal, resolvedOutput)
	if err == nil && (relative == "." || (relative != ".." && !filepath.IsAbs(relative) && !strings.HasPrefix(relative, ".."+string(filepath.Separator)))) {
		return errors.New("candidate report must be outside the immutable formalizer artifact store")
	}
	return nil
}
