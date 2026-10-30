package main

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/gateaudit"
	"github.com/DarthCeltic/MathCase/internal/state"
	"github.com/DarthCeltic/MathCase/internal/verification"
)

const (
	gateAssessmentSchemaVersion       = "mathcase-gate-assessment-v1"
	gateAssessmentOutputSchemaVersion = "mathcase-gate-assessment-output-v1"
	maxGateAssessmentInputBytes       = 8 << 20
	maxGateEvidenceArtifactBytes      = 16 << 20
)

type gateAssessmentInput struct {
	SchemaVersion          string                       `json:"schema_version"`
	Gate                   domain.VerificationGate      `json:"gate"`
	ProblemID              string                       `json:"problem_id"`
	ProblemStatementSHA256 string                       `json:"problem_statement_sha256"`
	ProofSHA256            string                       `json:"proof_sha256,omitempty"`
	RecordedAt             time.Time                    `json:"recorded_at"`
	GateReceiptEvidenceID  string                       `json:"gate_receipt_evidence_id,omitempty"`
	StatementFidelity      *domain.V3StatementFidelity  `json:"statement_fidelity,omitempty"`
	Falsification          *domain.V4FalsificationAudit `json:"falsification,omitempty"`
	Essentiality           *domain.V5EssentialityAudit  `json:"essentiality,omitempty"`
	Provenance             *gateV6ProvenanceEvidence    `json:"provenance,omitempty"`
	Literature             *gateV7LiteratureEvidence    `json:"literature,omitempty"`
}

type gateV6ProvenanceEvidence struct {
	ArtifactSHA256         string                       `json:"artifact_sha256"`
	DatasetSplitSHA256     string                       `json:"dataset_split_sha256"`
	DatasetSplitEvidenceID string                       `json:"dataset_split_evidence_id"`
	LeakageAuditEvidenceID string                       `json:"leakage_audit_evidence_id"`
	SourceIDs              []string                     `json:"source_ids"`
	SourceRights           []gateV6SourceRightsInput    `json:"source_rights"`
	LeakageDetected        bool                         `json:"leakage_detected"`
	ReviewerID             string                       `json:"reviewer_id"`
	EvidenceIDs            []string                     `json:"evidence_ids"`
	EvidenceArtifacts      []domain.EvidenceArtifactRef `json:"evidence_artifacts"`
}

type gateV6SourceRightsInput struct {
	Source       catalog.SourceVersion `json:"source"`
	RequiredUses []catalog.SourceUse   `json:"required_uses"`
}

type gateV7LiteratureEvidence struct {
	Searches    []domain.LiteratureSearchRecord `json:"searches"`
	Findings    []string                        `json:"findings"`
	Novelty     domain.NoveltyStatus            `json:"novelty"`
	ReviewerID  string                          `json:"reviewer_id"`
	EvidenceIDs []string                        `json:"evidence_ids"`
}

type gateAssessmentOutput struct {
	SchemaVersion          string                             `json:"schema_version"`
	Status                 string                             `json:"status"`
	Gate                   domain.VerificationGate            `json:"gate"`
	GateStatus             domain.VerificationStatus          `json:"gate_status"`
	AssessmentRevision     int                                `json:"assessment_revision"`
	Supersedes             *domain.GateAssessmentSupersession `json:"supersedes,omitempty"`
	ProblemID              string                             `json:"problem_id"`
	ProblemStatementSHA256 string                             `json:"problem_statement_sha256"`
	ProofSHA256            string                             `json:"proof_sha256,omitempty"`
	EvidenceIDs            []string                           `json:"evidence_ids"`
	EvidenceArtifacts      []domain.EvidenceArtifactRef       `json:"evidence_artifacts"`
	GateReceipt            *domain.GateReceiptReference       `json:"gate_receipt,omitempty"`
	ReviewerTrustSHA256    string                             `json:"reviewer_trust_registry_sha256,omitempty"`
	DossierSHA256          string                             `json:"dossier_sha256"`
}

func runGateAssess(args []string, stdout, stderr io.Writer) int {
	return runGateAssessWithReviewerVerifier(args, stdout, stderr, nil)
}

// runGateAssessWithReviewerVerifier keeps the CLI fail-closed by default while
// allowing tests or an independently managed reviewer trust registry to wire
// identity checks through the same gate reader used by M8.
func runGateAssessWithReviewerVerifier(args []string, stdout, stderr io.Writer, verifyReviewer gateaudit.ReviewerIdentityVerifier) int {
	flags := flag.NewFlagSet("gate-assess", flag.ContinueOnError)
	flags.SetOutput(stderr)
	dossierPath := flags.String("dossier", "", "existing strict JSON dossier to assess")
	assessmentPath := flags.String("assessment", "", "strict JSON V3-V7 evidence payload")
	evidenceRoot := flags.String("evidence-root", "", "directory containing exact evidence bytes named <evidence_id>.artifact")
	catalogSnapshotPath := flags.String("catalog-snapshot", "", "validated M0 catalog snapshot required for V3")
	leanSourceRoot := flags.String("lean-source-root", "", "clean Git checkout containing the pinned Lean source required for V3")
	reviewerTrustPath := flags.String("reviewer-trust", "", "independently controlled pinned reviewer-attestation registry")
	outputPath := flags.String("output", "", "new dossier revision; existing files are never overwritten")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*dossierPath) == "" || strings.TrimSpace(*assessmentPath) == "" || strings.TrimSpace(*evidenceRoot) == "" || strings.TrimSpace(*outputPath) == "" {
		fmt.Fprintln(stderr, "gate-assess requires --dossier FILE, --assessment FILE, --evidence-root DIR, and --output NEW_FILE and accepts no positional arguments")
		return 2
	}
	var reviewerTrustSHA256 string
	if strings.TrimSpace(*reviewerTrustPath) != "" {
		var err error
		verifyReviewer, reviewerTrustSHA256, err = loadReviewerVerifier(*reviewerTrustPath, *evidenceRoot)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: load reviewer trust registry: %v\n", err)
			return 2
		}
	}

	dossierBytes, err := readRegularInput(*dossierPath, "dossier", maxDossierInputBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read dossier: %v\n", err)
		return 2
	}
	var dossier domain.Dossier
	if err := decodeStrictJSON(dossierBytes, &dossier, "dossier"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode dossier: %v\n", err)
		return 2
	}
	if err := dossier.Validate(); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate dossier: %v\n", err)
		return 2
	}
	if err := validateDossierRevisionSequence(*dossierPath, *outputPath, dossier, dossierBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: dossier revision sequence: %v\n", err)
		return 2
	}

	assessmentBytes, err := readRegularInput(*assessmentPath, "gate assessment", maxGateAssessmentInputBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read gate assessment: %v\n", err)
		return 2
	}
	var assessment gateAssessmentInput
	if err := decodeStrictJSON(assessmentBytes, &assessment, "gate assessment"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode gate assessment: %v\n", err)
		return 2
	}
	if assessment.SchemaVersion != gateAssessmentSchemaVersion {
		fmt.Fprintf(stderr, "mathcase: unsupported gate-assessment schema %q\n", assessment.SchemaVersion)
		return 2
	}
	if assessment.ProblemID != dossier.Problem.ID {
		fmt.Fprintln(stderr, "mathcase: gate assessment targets a different problem")
		return 2
	}
	statementDigest, err := domain.ProblemStatementDigest(dossier.Problem.ID, dossier.Problem.Statement, dossier.Problem.LeanStatement)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: hash dossier statement: %v\n", err)
		return 2
	}
	if assessment.ProblemStatementSHA256 != statementDigest {
		fmt.Fprintln(stderr, "mathcase: gate assessment statement digest does not match the dossier")
		return 2
	}
	if assessment.RecordedAt.IsZero() {
		fmt.Fprintln(stderr, "mathcase: gate assessment recorded_at is required")
		return 2
	}
	assessment.RecordedAt = assessment.RecordedAt.UTC()
	if !assessment.RecordedAt.After(dossier.Case.UpdatedAt) {
		fmt.Fprintln(stderr, "mathcase: gate assessment recorded_at must advance the predecessor case timestamp")
		return 2
	}

	var record domain.VerificationRecord
	var v3EvidenceHolds []string
	switch assessment.Gate {
	case domain.GateStatementFidelity:
		if assessment.StatementFidelity == nil || assessment.Falsification != nil || assessment.Essentiality != nil || assessment.Provenance != nil || assessment.Literature != nil || assessment.ProofSHA256 != "" {
			fmt.Fprintln(stderr, "mathcase: V3 requires statement_fidelity evidence only and does not accept a proof_sha256 field")
			return 2
		}
		if strings.TrimSpace(assessment.GateReceiptEvidenceID) == "" {
			v3EvidenceHolds, err = validateGateAssessV3Evidence(
				*catalogSnapshotPath,
				*leanSourceRoot,
				*evidenceRoot,
				dossier,
				*assessment.StatementFidelity,
			)
			if err != nil {
				fmt.Fprintf(stderr, "mathcase: validate V3 reopened evidence: %v\n", err)
				return 2
			}
		}
		record = verification.AssessV3(verification.V3StatementEvidence{
			ProblemID:             assessment.ProblemID,
			CatalogStatement:      dossier.Problem.Statement,
			CatalogLeanStatement:  dossier.Problem.LeanStatement,
			CatalogSnapshotSHA256: dossier.CatalogSnapshotSHA256,
			Review:                *assessment.StatementFidelity,
		}, assessment.RecordedAt)
		if len(v3EvidenceHolds) > 0 && record.Status != domain.VerificationFailed {
			if record.Status == domain.VerificationPassed {
				record.Status = domain.VerificationBlocked
			}
			record.Summary = strings.TrimSuffix(record.Summary, ".") + "; V3 provenance holds: " + strings.Join(v3EvidenceHolds, "; ") + "."
		}
	case domain.GateFalsification:
		if assessment.Falsification == nil || assessment.StatementFidelity != nil || assessment.Essentiality != nil || assessment.Provenance != nil || assessment.Literature != nil || assessment.ProofSHA256 != "" {
			fmt.Fprintln(stderr, "mathcase: V4 requires falsification evidence only and does not accept a proof_sha256 field")
			return 2
		}
		record = verification.AssessV4(verification.V4FalsificationEvidence{
			ProblemID:              assessment.ProblemID,
			ProblemStatementSHA256: assessment.ProblemStatementSHA256,
			Audit:                  *assessment.Falsification,
		}, assessment.RecordedAt)
	case domain.GateEssentiality:
		if assessment.Essentiality == nil || assessment.StatementFidelity != nil || assessment.Falsification != nil || assessment.Provenance != nil || assessment.Literature != nil || strings.TrimSpace(assessment.ProofSHA256) == "" {
			fmt.Fprintln(stderr, "mathcase: V5 requires essentiality evidence and the exact verified proof_sha256")
			return 2
		}
		verifiedProofSHA256, err := dossierPassingProofSHA256(dossier)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: V5 prerequisite: %v\n", err)
			return 2
		}
		if assessment.ProofSHA256 != verifiedProofSHA256 {
			fmt.Fprintln(stderr, "mathcase: V5 proof digest does not match the dossier's kernel-verified, axiom-audited proof")
			return 2
		}
		record = verification.AssessV5(verification.V5EssentialityEvidence{
			ProblemID:              assessment.ProblemID,
			ProblemStatementSHA256: assessment.ProblemStatementSHA256,
			ProofSHA256:            assessment.ProofSHA256,
			Ablations:              assessment.Essentiality.Ablations,
		}, assessment.RecordedAt)
	case domain.GateProvenanceLeakage:
		if assessment.Provenance == nil || assessment.StatementFidelity != nil || assessment.Falsification != nil || assessment.Essentiality != nil || assessment.Literature != nil || assessment.ProofSHA256 != "" {
			fmt.Fprintln(stderr, "mathcase: V6 requires provenance evidence only and does not accept proof_sha256")
			return 2
		}
		if assessment.Provenance.ArtifactSHA256 != dossier.ProvenanceArtifactSHA256 {
			fmt.Fprintln(stderr, "mathcase: V6 artifact digest does not match the dossier provenance artifact")
			return 2
		}
		sourceRights := make([]verification.V6SourceRightsEvidence, 0, len(assessment.Provenance.SourceRights))
		for _, item := range assessment.Provenance.SourceRights {
			sourceRights = append(sourceRights, verification.V6SourceRightsEvidence{
				Source: item.Source, RequiredUses: append([]catalog.SourceUse(nil), item.RequiredUses...),
			})
		}
		record = verification.AssessV6(verification.V6ProvenanceEvidence{
			ProblemID:              assessment.ProblemID,
			ProblemStatementSHA256: assessment.ProblemStatementSHA256,
			ArtifactSHA256:         assessment.Provenance.ArtifactSHA256,
			DatasetSplitSHA256:     assessment.Provenance.DatasetSplitSHA256,
			DatasetSplitEvidenceID: assessment.Provenance.DatasetSplitEvidenceID,
			LeakageAuditEvidenceID: assessment.Provenance.LeakageAuditEvidenceID,
			SourceIDs:              append([]string(nil), assessment.Provenance.SourceIDs...),
			SourceRights:           sourceRights,
			LeakageDetected:        assessment.Provenance.LeakageDetected,
			ReviewerID:             assessment.Provenance.ReviewerID,
			EvidenceIDs:            append([]string(nil), assessment.Provenance.EvidenceIDs...),
		}, assessment.RecordedAt)
	case domain.GateLiteratureAndStatus:
		if assessment.Literature == nil || assessment.StatementFidelity != nil || assessment.Falsification != nil || assessment.Essentiality != nil || assessment.Provenance != nil || assessment.ProofSHA256 != "" {
			fmt.Fprintln(stderr, "mathcase: V7 requires literature evidence only and does not accept proof_sha256")
			return 2
		}
		record = verification.AssessV7(verification.V7LiteratureEvidence{
			ProblemID:              assessment.ProblemID,
			ProblemStatementSHA256: assessment.ProblemStatementSHA256,
			Searches:               append([]domain.LiteratureSearchRecord(nil), assessment.Literature.Searches...),
			Findings:               append([]string(nil), assessment.Literature.Findings...),
			Novelty:                assessment.Literature.Novelty,
			ReviewerID:             assessment.Literature.ReviewerID,
			EvidenceIDs:            append([]string(nil), assessment.Literature.EvidenceIDs...),
		}, assessment.RecordedAt)
	default:
		fmt.Fprintf(stderr, "mathcase: gate-assess supports V3-V7, not %q\n", assessment.Gate)
		return 2
	}
	record = refuseUnreopenedV4V7Pass(record)
	artifacts, err := loadGateEvidenceArtifacts(*evidenceRoot, record.EvidenceIDs)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load gate evidence artifacts: %v\n", err)
		return 2
	}
	record.EvidenceArtifacts = artifacts
	if strings.TrimSpace(assessment.GateReceiptEvidenceID) != "" {
		gateReceipt, err := gateaudit.Read(*evidenceRoot, assessment.GateReceiptEvidenceID, "", dossier, record, verifyReviewer)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: reopen typed %s gate receipt: %v\n", record.Gate, err)
			return 2
		}
		record.Status = gateReceipt.Status
		record.Summary = gateReceipt.Summary
		record.GateReceipt = &domain.GateReceiptReference{EvidenceID: gateReceipt.EvidenceID, ReceiptSHA256: gateReceipt.SHA256}
	}

	revision, err := cloneDossier(dossier)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: clone predecessor dossier: %v\n", err)
		return 2
	}
	revision.Case.Version++
	revision.Case.UpdatedAt = assessment.RecordedAt
	if err := replacePendingGate(&revision, &record, dossierBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: record gate assessment: %v\n", err)
		return 2
	}
	if err := revision.Validate(); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate assessed dossier: %v\n", err)
		return 2
	}
	outputBytes, err := json.MarshalIndent(revision, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode assessed dossier: %v\n", err)
		return 2
	}
	outputBytes = append(outputBytes, '\n')
	dossierDigest := sha256.Sum256(outputBytes)
	output := gateAssessmentOutput{
		SchemaVersion:          gateAssessmentOutputSchemaVersion,
		Status:                 "RECORDED",
		Gate:                   record.Gate,
		GateStatus:             record.Status,
		AssessmentRevision:     record.AssessmentRevision,
		Supersedes:             record.Supersedes,
		ProblemID:              revision.Problem.ID,
		ProblemStatementSHA256: statementDigest,
		ProofSHA256:            record.ProofSHA256,
		EvidenceIDs:            append([]string{}, record.EvidenceIDs...),
		EvidenceArtifacts:      append([]domain.EvidenceArtifactRef{}, record.EvidenceArtifacts...),
		GateReceipt:            record.GateReceipt,
		ReviewerTrustSHA256:    reviewerTrustSHA256,
		DossierSHA256:          hex.EncodeToString(dossierDigest[:]),
	}
	if err := validateDossierRevisionSequence(*dossierPath, *outputPath, dossier, dossierBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: dossier revision sequence changed before write: %v\n", err)
		return 2
	}
	if err := writeNewRegularOutput(*outputPath, outputBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: write assessed dossier: %v\n", err)
		return 2
	}
	encoded, err := json.Marshal(output)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode gate-assessment summary: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(append(encoded, '\n')); err != nil {
		fmt.Fprintf(stderr, "mathcase: write gate-assessment summary: %v\n", err)
		return 2
	}
	return 0
}

func refuseUnreopenedV4V7Pass(record domain.VerificationRecord) domain.VerificationRecord {
	if record.Status != domain.VerificationPassed {
		return record
	}
	var reason string
	switch record.Gate {
	case domain.GateFalsification:
		reason = "randomized, SMT, and negation-search execution receipts are not reopened"
	case domain.GateEssentiality:
		reason = "lemma-ablation execution receipts are not reopened against the exact proof and source"
	case domain.GateProvenanceLeakage:
		reason = "pinned M0 source-rights, dataset-split, and leakage computations are not reopened"
	case domain.GateLiteratureAndStatus:
		reason = "literature-search results and status cross-checks are not reopened"
	default:
		return record
	}
	record.Status = domain.VerificationBlocked
	record.Summary = "Caller-authored V" + strings.TrimPrefix(string(record.Gate), "V") + " claims cannot pass: " + reason + "; the required typed receipt reader is unavailable."
	return record
}

func loadGateEvidenceArtifacts(root string, evidenceIDs []string) ([]domain.EvidenceArtifactRef, error) {
	if strings.TrimSpace(root) == "" {
		return nil, errors.New("evidence root is required")
	}
	absolute, err := filepath.Abs(root)
	if err != nil {
		return nil, fmt.Errorf("resolve evidence root: %w", err)
	}
	info, err := os.Lstat(absolute)
	if err != nil {
		return nil, fmt.Errorf("inspect evidence root: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return nil, errors.New("evidence root must be a regular non-symlink directory")
	}
	artifacts := make([]domain.EvidenceArtifactRef, 0, len(evidenceIDs))
	seen := make(map[string]struct{}, len(evidenceIDs))
	for _, evidenceID := range evidenceIDs {
		if err := state.ValidateIdentifier("gate evidence ID", evidenceID); err != nil {
			return nil, err
		}
		if _, duplicate := seen[evidenceID]; duplicate {
			return nil, fmt.Errorf("duplicate gate evidence ID %q", evidenceID)
		}
		seen[evidenceID] = struct{}{}
		path := filepath.Join(absolute, evidenceID+".artifact")
		data, err := readRegularInput(path, "gate evidence artifact "+evidenceID, maxGateEvidenceArtifactBytes)
		if err != nil {
			return nil, err
		}
		artifacts = append(artifacts, domain.EvidenceArtifactRef{EvidenceID: evidenceID, ArtifactSHA256: digestBytes(data)})
	}
	return artifacts, nil
}

func verifyDossierEvidenceArtifacts(root string, dossier domain.Dossier) (*dossierEvidenceArtifactAudit, error) {
	expectedByID := make(map[string]string)
	for _, record := range dossier.Verifications {
		for _, artifact := range record.EvidenceArtifacts {
			if previous, exists := expectedByID[artifact.EvidenceID]; exists && previous != artifact.ArtifactSHA256 {
				return &dossierEvidenceArtifactAudit{Status: "FAILED", RequiredCount: len(expectedByID), Error: "conflicting recorded digests for evidence ID " + artifact.EvidenceID}, fmt.Errorf("evidence ID %q has conflicting recorded digests", artifact.EvidenceID)
			}
			expectedByID[artifact.EvidenceID] = artifact.ArtifactSHA256
		}
	}
	if len(expectedByID) == 0 {
		return nil, nil
	}
	audit := &dossierEvidenceArtifactAudit{Status: "NOT_RECONCILED", RequiredCount: len(expectedByID)}
	if strings.TrimSpace(root) == "" {
		err := errors.New("--evidence-root is required when the dossier contains hash-pinned gate evidence")
		audit.Error = err.Error()
		return audit, err
	}
	evidenceIDs := make([]string, 0, len(expectedByID))
	for evidenceID := range expectedByID {
		evidenceIDs = append(evidenceIDs, evidenceID)
	}
	sort.Strings(evidenceIDs)
	actualArtifacts, err := loadGateEvidenceArtifacts(root, evidenceIDs)
	if err != nil {
		audit.Error = err.Error()
		return audit, err
	}
	for _, artifact := range actualArtifacts {
		if expectedByID[artifact.EvidenceID] != artifact.ArtifactSHA256 {
			err := fmt.Errorf("artifact bytes for evidence %q do not match the dossier SHA-256", artifact.EvidenceID)
			audit.Status = "FAILED"
			audit.Error = err.Error()
			return audit, err
		}
		audit.VerifiedCount++
	}
	audit.Status = "RECONCILED"
	return audit, nil
}

func replacePendingGate(dossier *domain.Dossier, assessment *domain.VerificationRecord, predecessorBytes []byte) error {
	for index, existing := range dossier.Verifications {
		if existing.Gate != assessment.Gate {
			continue
		}
		switch existing.Status {
		case domain.VerificationPending:
			if hasGateAssessmentEvidence(existing) || existing.AssessmentRevision != 0 || existing.Supersedes != nil {
				return fmt.Errorf("gate %s pending row already contains assessment evidence; refusing to replace it", assessment.Gate)
			}
			assessment.AssessmentRevision = 1
		case domain.VerificationBlocked, domain.VerificationFailed:
			if !hasNewGateEvidenceIDs(assessment.EvidenceIDs, existing.EvidenceIDs) {
				return fmt.Errorf("gate %s reassessment must name at least one new evidence ID", assessment.Gate)
			}
			priorDigest := sha256.Sum256(predecessorBytes)
			assessment.AssessmentRevision = existing.AssessmentRevision + 1
			if assessment.AssessmentRevision < 2 {
				assessment.AssessmentRevision = 2
			}
			assessment.Supersedes = &domain.GateAssessmentSupersession{
				DossierSHA256: hex.EncodeToString(priorDigest[:]),
				Status:        existing.Status,
				Summary:       existing.Summary,
				EvidenceIDs:   append([]string(nil), existing.EvidenceIDs...),
			}
		default:
			return fmt.Errorf("gate %s already has a non-reassessable %s judgment", assessment.Gate, existing.Status)
		}
		dossier.Verifications[index] = *assessment
		return nil
	}
	assessment.AssessmentRevision = 1
	dossier.Verifications = append(dossier.Verifications, *assessment)
	return nil
}

func hasGateAssessmentEvidence(record domain.VerificationRecord) bool {
	return record.AssessmentRevision != 0 || record.Supersedes != nil || len(record.EvidenceIDs) != 0 || record.StatementFidelity != nil || record.Falsification != nil || record.Essentiality != nil ||
		record.DatasetSplitSHA256 != "" || record.DatasetSplitEvidenceID != "" || record.LeakageAuditEvidenceID != "" ||
		len(record.SourceIDs) != 0 || len(record.SourceRightsAudits) != 0 || record.ReviewerID != "" || record.Novelty != "" ||
		len(record.Searches) != 0 || len(record.Findings) != 0
}

func hasNewGateEvidenceIDs(current, previous []string) bool {
	for _, evidenceID := range current {
		if !containsStringValue(previous, evidenceID) {
			return true
		}
	}
	return false
}

func dossierPassingProofSHA256(dossier domain.Dossier) (string, error) {
	var kernelProofSHA256 string
	var axiomProofSHA256 string
	for _, record := range dossier.Verifications {
		switch record.Gate {
		case domain.GateKernelBuild:
			if record.Status == domain.VerificationPassed {
				kernelProofSHA256 = record.ProofSHA256
			}
		case domain.GateAxiomAudit:
			if record.Status == domain.VerificationPassed {
				axiomProofSHA256 = record.ProofSHA256
			}
		}
	}
	if kernelProofSHA256 == "" || axiomProofSHA256 == "" || kernelProofSHA256 != axiomProofSHA256 {
		return "", errors.New("V5 requires V1 and V2 to pass on the same proof")
	}
	for _, attempt := range dossier.Attempts {
		if attempt.Outcome == domain.SolverOutcomePass && attempt.VerifiedProofSHA256 == kernelProofSHA256 {
			return kernelProofSHA256, nil
		}
	}
	return "", errors.New("V5 proof is not linked to a passing kernel-verification attempt")
}
