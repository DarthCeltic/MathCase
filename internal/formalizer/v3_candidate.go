package formalizer

import (
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/verification"
)

const (
	CandidateV3AssessmentSchemaVersion = "mathcase-nl-lean-v3-candidate-assessment-v1"
	CandidateV3AssessmentStatus        = "CANDIDATE_ONLY"
)

// CandidateV3Assessment is a non-canonical assessment of a generated Lean
// candidate against the exact informal statement in an immutable M0 snapshot.
// Its status never describes a V3 pass; V3Record remains blocked or failed.
type CandidateV3Assessment struct {
	SchemaVersion            string                    `json:"schema_version"`
	Status                   string                    `json:"status"`
	ProblemID                string                    `json:"problem_id"`
	CandidateID              string                    `json:"candidate_id"`
	CandidateRevision        CandidateRevision         `json:"candidate_revision"`
	CatalogSnapshotSHA256    string                    `json:"catalog_snapshot_sha256"`
	RawSourceItemSHA256      string                    `json:"raw_source_item_sha256"`
	GenerationResponseSHA256 string                    `json:"generation_response_sha256"`
	GenerationReceiptID      string                    `json:"generation_receipt_id"`
	StatementCheckEvidenceID string                    `json:"statement_check_evidence_id"`
	V3Record                 domain.VerificationRecord `json:"v3_record"`
}

// AssessV3Candidate validates a candidate-only formalizer result against one
// source-only M0 item, reopens its raw source bytes by digest, and invokes the
// existing V3 assessor with the candidate statement as the review comparison
// value. It does not alter the snapshot, run Lean, create a dossier, or emit a
// V3 pass. The caller must independently reopen/authenticate any review
// artifacts before treating their claims as evidence; this function validates
// their typed bindings only.
func AssessV3Candidate(snapshot catalog.Snapshot, result Result, review domain.V3StatementFidelity, rawSourceItem []byte, at time.Time) (CandidateV3Assessment, error) {
	seed, err := result.V3Seed()
	if err != nil {
		return CandidateV3Assessment{}, fmt.Errorf("formalizer: candidate is not ready for V3 assessment: %w", err)
	}
	if err := snapshot.Validate(); err != nil {
		return CandidateV3Assessment{}, fmt.Errorf("formalizer: validate pinned M0 snapshot: %w", err)
	}
	if at.IsZero() {
		return CandidateV3Assessment{}, errors.New("formalizer: candidate V3 assessment time is required")
	}
	if len(rawSourceItem) == 0 {
		return CandidateV3Assessment{}, errors.New("formalizer: exact raw source item bytes are required")
	}

	problem, ok := catalogProblem(snapshot, seed.ProblemID)
	if !ok {
		return CandidateV3Assessment{}, fmt.Errorf("formalizer: problem %q is absent from the pinned M0 snapshot", seed.ProblemID)
	}
	if strings.TrimSpace(problem.LeanStatement) != "" || problem.StatementAudit.Passed {
		return CandidateV3Assessment{}, errors.New("formalizer: candidate-only assessment requires source-only M0; canonical Lean statement or passing statement audit is already present")
	}
	if seed.Source.CatalogSnapshotSHA256 != snapshot.ContentSHA256 || seed.Source.Statement != problem.InformalStatement {
		return CandidateV3Assessment{}, errors.New("formalizer: candidate source pin does not match the exact M0 snapshot and informal statement")
	}
	if seed.LeanCandidate.ProblemID != problem.ID || seed.LeanCandidate.CatalogSnapshotSHA256 != snapshot.ContentSHA256 ||
		seed.LeanCandidate.SourceStatementSHA256 != digestText(problem.InformalStatement) {
		return CandidateV3Assessment{}, errors.New("formalizer: generated Lean candidate is not bound to the pinned M0 statement")
	}
	if err := matchCatalogSource(snapshot, problem, seed.Source); err != nil {
		return CandidateV3Assessment{}, err
	}
	if digestBytes(rawSourceItem) != seed.Source.RawItemSHA256 {
		return CandidateV3Assessment{}, errors.New("formalizer: reopened M0 source-item bytes do not match the pinned SHA-256")
	}
	if review.Source != seed.Source {
		return CandidateV3Assessment{}, errors.New("formalizer: V3 review source pin does not match the generated candidate handoff")
	}
	if review.Lean.NormalizedStatement != seed.LeanCandidate.LeanStatement || review.Lean.DeclarationName != seed.LeanCandidate.DeclarationName {
		return CandidateV3Assessment{}, errors.New("formalizer: V3 Lean pin does not match the generated candidate proposition and declaration")
	}

	record := verification.AssessV3(verification.V3StatementEvidence{
		ProblemID:             problem.ID,
		CatalogStatement:      problem.InformalStatement,
		CatalogLeanStatement:  seed.LeanCandidate.LeanStatement,
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		Review:                review,
	}, at)
	// Candidate assessment is never a gate-passing path, even if a future
	// assessor version changes its handling of typed reviewer/probe fields.
	if record.Status == domain.VerificationPassed {
		record.Status = domain.VerificationBlocked
		record.Summary = "Candidate-only assessment cannot pass V3; authenticated independent-review and execution-bound probe receipts are still required."
	}

	return CandidateV3Assessment{
		SchemaVersion:            CandidateV3AssessmentSchemaVersion,
		Status:                   CandidateV3AssessmentStatus,
		ProblemID:                problem.ID,
		CandidateID:              seed.LeanCandidate.CandidateID,
		CandidateRevision:        seed.CandidateRevision,
		CatalogSnapshotSHA256:    snapshot.ContentSHA256,
		RawSourceItemSHA256:      seed.Source.RawItemSHA256,
		GenerationResponseSHA256: result.GenerationResponseSHA256,
		GenerationReceiptID:      seed.GenerationReceiptID,
		StatementCheckEvidenceID: seed.StatementCheckEvidenceID,
		V3Record:                 record,
	}, nil
}

func catalogProblem(snapshot catalog.Snapshot, problemID string) (catalog.Problem, bool) {
	for _, problem := range snapshot.Problems {
		if problem.ID == problemID {
			return problem, true
		}
	}
	return catalog.Problem{}, false
}

func matchCatalogSource(snapshot catalog.Snapshot, problem catalog.Problem, pin domain.V3SourceStatementPin) error {
	var match *catalog.SourceVersion
	for index := range snapshot.Sources {
		source := &snapshot.Sources[index]
		if !containsString(problem.SourceIDs, source.ID) || source.URL != pin.URL || source.ItemLocator != pin.ItemLocator || source.Revision != pin.Revision {
			continue
		}
		if source.ContentSHA256 != pin.RawItemSHA256 {
			continue
		}
		if match != nil {
			return errors.New("formalizer: V3 source metadata matches more than one source linked by M0")
		}
		match = source
	}
	if match == nil {
		return errors.New("formalizer: V3 source URL, item locator, revision, or raw-item digest does not match a source linked by M0")
	}
	return nil
}

func digestBytes(value []byte) string {
	digest := sha256.Sum256(value)
	return hex.EncodeToString(digest[:])
}
