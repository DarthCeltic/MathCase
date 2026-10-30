package main

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"os"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/formalizer"
)

type dossierFormalizerCandidateRevisionOutput struct {
	SchemaVersion            string                    `json:"schema_version"`
	Status                   string                    `json:"status"`
	CaseID                   string                    `json:"case_id"`
	PreviousDossierSHA256    string                    `json:"previous_dossier_sha256"`
	RevisionDossierPath      string                    `json:"revision_dossier_path"`
	RevisionDossierSHA256    string                    `json:"revision_dossier_sha256"`
	FormalizerArtifactSHA256 string                    `json:"formalizer_artifact_sha256"`
	CandidateID              string                    `json:"candidate_id"`
	CandidateRevisionSHA256  string                    `json:"candidate_revision_sha256"`
	GenerationReceiptID      string                    `json:"generation_receipt_id"`
	V3Status                 domain.VerificationStatus `json:"v3_status"`
	M0LeanStatementUnchanged bool                      `json:"m0_lean_statement_unchanged"`
}

// runDossierReviseFormalizerCandidate writes one immutable successor linking
// a reopened formalizer candidate. It never mutates the pinned M0 statement
// and never changes a V1-V7 judgment.
func runDossierReviseFormalizerCandidate(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("dossier-revise-formalizer-candidate", flag.ContinueOnError)
	flags.SetOutput(stderr)
	dossierPath := flags.String("dossier", "", "existing strict JSON dossier revision")
	artifactRoot := flags.String("formalizer-artifact-root", "", "existing content-addressed formalizer artifact store")
	artifactSHA256 := flags.String("artifact-sha256", "", "content-addressed formalizer artifact digest to attach")
	outputPath := flags.String("output", "", "canonical next dossier revision path; existing files are never overwritten")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*dossierPath) == "" || strings.TrimSpace(*artifactRoot) == "" ||
		strings.TrimSpace(*artifactSHA256) == "" || strings.TrimSpace(*outputPath) == "" {
		fmt.Fprintln(stderr, "dossier-revise-formalizer-candidate requires --dossier FILE, --formalizer-artifact-root DIR, --artifact-sha256 SHA256, and --output NEW_FILE")
		return 2
	}
	dossierBytes, err := readRegularInput(*dossierPath, "existing dossier", maxDossierInputBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read existing dossier: %v\n", err)
		return 2
	}
	var original domain.Dossier
	if err := decodeStrictJSON(dossierBytes, &original, "existing dossier"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode existing dossier: %v\n", err)
		return 2
	}
	if err := original.Validate(); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate existing dossier: %v\n", err)
		return 2
	}
	if err := validateDossierRevisionSequence(*dossierPath, *outputPath, original, dossierBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: dossier revision sequence: %v\n", err)
		return 2
	}
	if _, err := os.Lstat(*outputPath); err == nil {
		fmt.Fprintf(stderr, "mathcase: output revision already exists: %q\n", *outputPath)
		return 2
	} else if !os.IsNotExist(err) {
		fmt.Fprintf(stderr, "mathcase: inspect output revision: %v\n", err)
		return 2
	}
	store, err := formalizer.OpenArtifactStore(*artifactRoot)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: open existing formalizer artifact store: %v\n", err)
		return 2
	}
	updated, handoff, err := store.AttachCandidateToDossier(context.Background(), original, *artifactSHA256)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: attach formalizer candidate: %v\n", err)
		return 1
	}
	updated.Case.Version++
	updated.Case.UpdatedAt = time.Now().UTC()
	if err := updated.Validate(); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate candidate dossier revision: %v\n", err)
		return 1
	}
	encoded, err := json.MarshalIndent(updated, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode candidate dossier revision: %v\n", err)
		return 2
	}
	encoded = append(encoded, '\n')
	if err := writeNewRegularOutput(*outputPath, encoded); err != nil {
		fmt.Fprintf(stderr, "mathcase: write immutable candidate dossier revision: %v\n", err)
		return 2
	}
	previousHash := sha256.Sum256(dossierBytes)
	revisionHash := sha256.Sum256(encoded)
	var v3Status domain.VerificationStatus
	for _, record := range updated.Verifications {
		if record.Gate == domain.GateStatementFidelity {
			v3Status = record.Status
			break
		}
	}
	output := dossierFormalizerCandidateRevisionOutput{
		SchemaVersion:            "mathcase-dossier-formalizer-candidate-revision-v1",
		Status:                   "CANDIDATE_ATTACHED_NOT_V3_PASS",
		CaseID:                   updated.Case.ID,
		PreviousDossierSHA256:    hex.EncodeToString(previousHash[:]),
		RevisionDossierPath:      *outputPath,
		RevisionDossierSHA256:    hex.EncodeToString(revisionHash[:]),
		FormalizerArtifactSHA256: handoff.Artifact.ArtifactSHA256,
		CandidateID:              handoff.Result.Candidate.CandidateID,
		CandidateRevisionSHA256:  handoff.Result.CandidateRevision.SHA256,
		GenerationReceiptID:      handoff.Result.RunReceipt.ReceiptID,
		V3Status:                 v3Status,
		M0LeanStatementUnchanged: original.Problem.LeanStatement == updated.Problem.LeanStatement,
	}
	resultBytes, err := json.Marshal(output)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode candidate dossier revision summary: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(append(resultBytes, '\n')); err != nil {
		fmt.Fprintf(stderr, "mathcase: write candidate dossier revision summary: %v\n", err)
		return 2
	}
	return 0
}
