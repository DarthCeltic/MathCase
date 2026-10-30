package persistence

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	jsonv2 "encoding/json/v2"
	"errors"
	"fmt"
	"io"
	"io/fs"
	"math"
	"os"
	"path/filepath"
	"runtime"
	"sort"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/expositor"
	"github.com/DarthCeltic/MathCase/internal/formalizer"
	"github.com/DarthCeltic/MathCase/internal/fsutil"
)

const (
	m7ExplanationTaxonomySchemaV2 = "mathcase-m7-explanation-taxonomy-v2"
	m7ExplanationTaxonomyDir      = "m7-explanation-taxonomy"
)

var m7ExplanationTiers = []domain.AudienceTier{
	domain.TierHighSchool,
	domain.TierAssociate,
	domain.TierBachelor,
	domain.TierMaster,
	domain.TierDoctorate,
}

// M7ExplanationProblemTag is an unreviewed problem-type candidate tied to
// source IDs already present in the pinned M0 problem record.
type M7ExplanationProblemTag struct {
	Tag               string   `json:"tag"`
	EvidenceSourceIDs []string `json:"evidence_source_ids"`
}

// M7ExplanationAuthorOutput binds move annotations to the reopened five-tier
// author output and its actual run receipt.
type M7ExplanationAuthorOutput struct {
	OutputSHA256        string                            `json:"output_sha256"`
	RunID               string                            `json:"run_id"`
	TierReceiptBindings []M7ExplanationTierReceiptBinding `json:"tier_receipt_bindings"`
}

// M7ExplanationTierReceiptBinding retains each tier-scoped receipt digest.
// M7 receipts bind tier-specific contexts, so one provider run has five
// distinct receipt byte strings under the current protocol.
type M7ExplanationTierReceiptBinding struct {
	Tier             domain.AudienceTier `json:"tier"`
	ManifestSHA256   string              `json:"manifest_sha256"`
	RunReceiptSHA256 string              `json:"run_receipt_sha256"`
}

// M7ExplanationMoveCandidate is a candidate interpretation of an exact span
// in one author-generated tier. It cannot claim review or measured lift.
type M7ExplanationMoveCandidate struct {
	MoveID                string              `json:"move_id"`
	MoveFamily            string              `json:"move_family"`
	Tier                  domain.AudienceTier `json:"tier"`
	ProblemTypeTags       []string            `json:"problem_type_tags"`
	EvidenceRunID         string              `json:"evidence_run_id"`
	EvidenceOutputSHA256  string              `json:"evidence_output_sha256"`
	EvidenceExcerpt       string              `json:"evidence_excerpt"`
	EvidenceExcerptSHA256 string              `json:"evidence_excerpt_sha256"`
	ReviewStatus          string              `json:"review_status"`
	ReviewObservationIDs  []string            `json:"review_observation_ids,omitempty"`
}

type M7ExplanationLiftObservation struct {
	Status           string                             `json:"status"`
	AttributionScope string                             `json:"attribution_scope"`
	TierObservations []M7ExplanationTierLiftObservation `json:"tier_observations,omitempty"`
}

// M7ExplanationTierLiftObservation records the recomputed whole-exposition
// association for one tier and the exact student-attempt run IDs behind it.
// It is not a causal attribution to any one move.
type M7ExplanationTierLiftObservation struct {
	Tier                    domain.AudienceTier `json:"tier"`
	MetricID                string              `json:"metric_id"`
	Estimate                float64             `json:"estimate"`
	BaselineAttemptRunIDs   []string            `json:"baseline_attempt_run_ids"`
	ExpositionAttemptRunIDs []string            `json:"exposition_attempt_run_ids"`
	StudyEvidenceRunIDs     []string            `json:"study_evidence_run_ids"`
}

type M7ExplanationTaxonomyRecord struct {
	SchemaVersion   string                       `json:"schema_version"`
	RecordID        string                       `json:"record_id"`
	TaxonomyVersion string                       `json:"taxonomy_version"`
	Problem         M7ExplanationProblem         `json:"problem"`
	AuthorOutput    M7ExplanationAuthorOutput    `json:"author_output"`
	Moves           []M7ExplanationMoveCandidate `json:"moves"`
	LiftObservation M7ExplanationLiftObservation `json:"lift_observation"`
}

type M7ExplanationProblem struct {
	ProblemID       string                    `json:"problem_id"`
	StatementSHA256 string                    `json:"statement_sha256"`
	ProblemTypeTags []M7ExplanationProblemTag `json:"problem_type_tags"`
}

// M7ExplanationTaxonomyArtifact keeps the complete local chain needed to
// reopen M0, the M7 author/evaluation runs, and the clearance scope. All tags
// remain candidates; identity, reviewer independence, and lift stay blocked.
type M7ExplanationTaxonomyArtifact struct {
	Record                 M7ExplanationTaxonomyRecord                      `json:"record"`
	CatalogSnapshotBytes   []byte                                           `json:"catalog_snapshot_bytes"`
	ClearanceRegisterBytes []byte                                           `json:"clearance_register_bytes"`
	SourceItemBytes        map[string][]byte                                `json:"source_item_bytes"`
	Bundle                 expositor.Bundle                                 `json:"bundle"`
	Reviews                map[domain.AudienceTier]expositor.TierEvaluation `json:"reviews"`
	ManifestPaths          map[domain.AudienceTier]string                   `json:"manifest_paths"`
	EvidenceFiles          map[string][]byte                                `json:"evidence_files"`
	Policy                 expositor.EvaluationPolicy                       `json:"policy"`
	WordLimits             expositor.WordLimits                             `json:"word_limits"`
}

type M7ExplanationTaxonomyAuditReport struct {
	Disposition                    string `json:"disposition"`
	IntegrityVerified              bool   `json:"integrity_verified"`
	ProviderInputScopeConsistent   bool   `json:"provider_input_scope_consistent"`
	ExternalIdentityAuthenticated  bool   `json:"external_identity_authenticated"`
	IndependentReviewAuthenticated bool   `json:"independent_review_authenticated"`
	LiftMeasured                   bool   `json:"lift_measured"`
	TrainingEligible               bool   `json:"training_eligible"`
	CatalogSnapshotSHA256          string `json:"catalog_snapshot_sha256"`
	StatementSHA256                string `json:"statement_sha256"`
	AuthorRunID                    string `json:"author_run_id"`
	AuthorOutputSHA256             string `json:"author_output_sha256"`
	TierCount                      int    `json:"tier_count"`
	MoveCandidateCount             int    `json:"move_candidate_count"`
}

type M7ExplanationTaxonomyReceipt struct {
	RecordID                      string `json:"record_id"`
	ContentSHA256                 string `json:"content_sha256"`
	RelativePath                  string `json:"relative_path"`
	Size                          int64  `json:"size"`
	Disposition                   string `json:"disposition"`
	IntegrityVerified             bool   `json:"integrity_verified"`
	ProviderInputScopeConsistent  bool   `json:"provider_input_scope_consistent"`
	ExternalIdentityAuthenticated bool   `json:"external_identity_authenticated"`
	TrainingEligible              bool   `json:"training_eligible"`
}

type M7ExplanationTaxonomyStore struct{ root string }

func NewM7ExplanationTaxonomyStore(root string) (*M7ExplanationTaxonomyStore, error) {
	if strings.TrimSpace(root) == "" {
		return nil, errors.New("persistence: M7 explanation taxonomy root is required")
	}
	if err := os.MkdirAll(root, 0o700); err != nil {
		return nil, fmt.Errorf("persistence: create M7 explanation taxonomy root: %w", err)
	}
	canonical, err := fsutil.CanonicalPath(root)
	if err != nil {
		return nil, fmt.Errorf("persistence: resolve M7 explanation taxonomy root: %w", err)
	}
	info, err := os.Lstat(canonical)
	if err != nil {
		return nil, fmt.Errorf("persistence: inspect M7 explanation taxonomy root: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return nil, errors.New("persistence: M7 explanation taxonomy root is not a regular directory")
	}
	return &M7ExplanationTaxonomyStore{root: canonical}, nil
}

// Audit reopens the exact M0 item, provider-input clearance scope, five-tier
// M7 evidence, and each quoted annotation span. The result remains candidate
// only even when all local bytes reconcile.
func (a M7ExplanationTaxonomyArtifact) Audit(ctx context.Context) (M7ExplanationTaxonomyAuditReport, error) {
	report := M7ExplanationTaxonomyAuditReport{
		Disposition:                   "CANDIDATE_INTEGRITY_VERIFIED_REVIEW_BLOCKED",
		ExternalIdentityAuthenticated: false, IndependentReviewAuthenticated: false,
		LiftMeasured: false, TrainingEligible: false,
	}
	if ctx == nil {
		return report, errors.New("persistence: M7 explanation taxonomy context is required")
	}
	if err := ctx.Err(); err != nil {
		return report, err
	}
	if a.Record.SchemaVersion != m7ExplanationTaxonomySchemaV2 || a.Record.TaxonomyVersion != "mathcase-taxonomy-v1" {
		return report, errors.New("persistence: unsupported M7 explanation taxonomy schema or taxonomy version")
	}
	if err := validateTaxonomyRecordShape(a.Record); err != nil {
		return report, err
	}
	if len(a.CatalogSnapshotBytes) == 0 || len(a.CatalogSnapshotBytes) > 16<<20 {
		return report, errors.New("persistence: M7 taxonomy M0 snapshot is empty or exceeds its size limit")
	}
	var snapshot catalog.Snapshot
	if err := decodeStrictEvidenceJSON(a.CatalogSnapshotBytes, &snapshot); err != nil {
		return report, fmt.Errorf("persistence: decode M7 taxonomy M0 snapshot: %w", err)
	}
	if err := snapshot.Validate(); err != nil {
		return report, fmt.Errorf("persistence: validate M7 taxonomy M0 snapshot: %w", err)
	}
	problem, found := expositionCatalogProblem(snapshot, a.Record.Problem.ProblemID)
	if !found || a.Bundle.ProblemID != problem.ID {
		return report, errors.New("persistence: M7 taxonomy problem is absent from or mismatched with M0")
	}
	statementSHA, err := domain.ProblemStatementDigest(problem.ID, problem.InformalStatement, problem.LeanStatement)
	if err != nil {
		return report, fmt.Errorf("persistence: digest pinned M0 statement: %w", err)
	}
	if statementSHA != a.Record.Problem.StatementSHA256 {
		return report, errors.New("persistence: M7 taxonomy statement digest does not match exact M0 statement bytes")
	}
	if err := validateTaxonomyTagSources(a.Record.Problem.ProblemTypeTags, problem.SourceIDs); err != nil {
		return report, err
	}
	if len(a.SourceItemBytes) == 0 || len(a.ClearanceRegisterBytes) == 0 {
		return report, errors.New("persistence: M7 taxonomy requires exact source-item and clearance-register bytes")
	}
	if err := validateExpositionPairEvidenceFileBudget(a.EvidenceFiles); err != nil {
		return report, fmt.Errorf("persistence: M7 taxonomy evidence files: %w", err)
	}
	if err := a.Bundle.Validate(a.WordLimits); err != nil {
		return report, fmt.Errorf("persistence: validate M7 taxonomy five-tier bundle: %w", err)
	}
	evidenceFS := expositionPairMemoryFS(a.EvidenceFiles)
	bundleAudit, err := expositor.AuditM7BundleEvidence(expositor.M7BundleEvidenceAuditRequest{
		EvidenceFS: evidenceFS, ManifestPaths: a.ManifestPaths, Bundle: a.Bundle,
		Reviews: a.Reviews, Policy: a.Policy, WordLimits: a.WordLimits,
	})
	if err != nil {
		return report, fmt.Errorf("persistence: reopen M7 five-tier evidence: %w", err)
	}
	if !bundleAudit.IntegrityVerified || bundleAudit.Disposition != expositor.M7AuditBlocked || bundleAudit.ExternalIdentityAuthenticated {
		return report, errors.New("persistence: M7 taxonomy requires integrity-only BLOCKED five-tier evidence")
	}
	if err := validateM7TaxonomyEvidenceFiles(a.EvidenceFiles, a.ManifestPaths); err != nil {
		return report, err
	}
	authorInputPath := bundleAudit.Tiers[0].Audit.AuthorInputPath
	inputBytes, ok := a.EvidenceFiles[authorInputPath]
	if !ok {
		return report, errors.New("persistence: M7 author input bytes are missing from the evidence set")
	}
	var input expositor.BundleGenerationInput
	if err := decodeStrictEvidenceJSON(inputBytes, &input); err != nil {
		return report, fmt.Errorf("persistence: decode exact M7 author input: %w", err)
	}
	if err := input.Validate(); err != nil {
		return report, fmt.Errorf("persistence: validate exact M7 author input: %w", err)
	}
	if input.AuthorCallID != a.Bundle.AuthorCallID || input.ProblemID != problem.ID || input.Statement != problem.InformalStatement ||
		input.Source.CatalogSnapshotSHA256 != snapshot.ContentSHA256 || input.ProofSHA256 != a.Bundle.ProofSHA256 ||
		input.CanonSnapshotSHA256 != a.Bundle.CanonSnapshotSHA256 || !equalWordLimits(input.WordLimits, a.WordLimits) {
		return report, errors.New("persistence: M7 author input does not match exact M0 statement, bundle, and frozen limits")
	}
	if err := validateM7TaxonomySourceBytes(snapshot, problem, input.Source, a.SourceItemBytes); err != nil {
		return report, err
	}
	preflight := formalizer.PinnedProviderInputPreflight{
		Snapshot: snapshot, ClearanceRegisterBytes: a.ClearanceRegisterBytes, SourceItemBytes: a.SourceItemBytes,
	}
	if err := preflight.VerifyM7ProviderInput(ctx, input.ProblemID, input.Source, input.InputClearance); err != nil {
		return report, fmt.Errorf("persistence: re-open M7 provider-input scope: %w", err)
	}
	if bundleAudit.AuthorRunID != a.Record.AuthorOutput.RunID || bundleAudit.AuthorOutputSHA256 != a.Record.AuthorOutput.OutputSHA256 {
		return report, errors.New("persistence: M7 taxonomy author output binding does not match reopened five-tier run")
	}
	seenReceiptTiers := make(map[domain.AudienceTier]M7ExplanationTierReceiptBinding, len(m7ExplanationTiers))
	for _, tier := range m7ExplanationTiers {
		manifestPath := a.ManifestPaths[tier]
		manifestBytes := a.EvidenceFiles[manifestPath]
		var manifest domain.M7EvidenceManifestV1
		if err := decodeStrictEvidenceJSON(manifestBytes, &manifest); err != nil {
			return report, fmt.Errorf("persistence: decode M7 %s manifest for taxonomy linkage: %w", tier, err)
		}
		if manifest.Author.ID != a.Bundle.AuthorCallID || manifest.Author.OutputSHA256 != bundleAudit.AuthorOutputSHA256 {
			return report, fmt.Errorf("persistence: M7 %s manifest does not bind the shared author output", tier)
		}
		seenReceiptTiers[tier] = M7ExplanationTierReceiptBinding{
			Tier: tier, ManifestSHA256: sha256Text(string(manifestBytes)), RunReceiptSHA256: manifest.Author.RunReceiptSHA256,
		}
	}
	for _, binding := range a.Record.AuthorOutput.TierReceiptBindings {
		if got := seenReceiptTiers[binding.Tier]; got != binding {
			return report, fmt.Errorf("persistence: M7 taxonomy author receipt binding for %s does not match reopened manifest bytes", binding.Tier)
		}
	}
	for _, move := range a.Record.Moves {
		if move.EvidenceRunID != bundleAudit.AuthorRunID || move.EvidenceOutputSHA256 != bundleAudit.AuthorOutputSHA256 {
			return report, fmt.Errorf("persistence: move candidate %q is not bound to the exact M7 author run and output", move.MoveID)
		}
		output, found := expositionTierOutput(a.Bundle, move.Tier)
		if !found || !strings.Contains(output.Render(), move.EvidenceExcerpt) || sha256Hex([]byte(move.EvidenceExcerpt)) != move.EvidenceExcerptSHA256 {
			return report, fmt.Errorf("persistence: move candidate %q excerpt is not a verified span in its exact tier output", move.MoveID)
		}
	}
	report.IntegrityVerified = true
	report.ProviderInputScopeConsistent = true
	report.CatalogSnapshotSHA256 = snapshot.ContentSHA256
	report.StatementSHA256 = statementSHA
	report.AuthorRunID = bundleAudit.AuthorRunID
	report.AuthorOutputSHA256 = bundleAudit.AuthorOutputSHA256
	report.TierCount = len(bundleAudit.Tiers)
	report.MoveCandidateCount = len(a.Record.Moves)
	liftMeasured, err := auditM7ExplanationLift(a.Record.LiftObservation, bundleAudit, a.ManifestPaths, a.EvidenceFiles)
	if err != nil {
		return M7ExplanationTaxonomyAuditReport{}, err
	}
	report.LiftMeasured = liftMeasured
	return report, nil
}

func validateTaxonomyRecordShape(record M7ExplanationTaxonomyRecord) error {
	if err := validateM7TaxonomyID("record ID", record.RecordID); err != nil {
		return err
	}
	if err := validateM7TaxonomyID("problem ID", record.Problem.ProblemID); err != nil {
		return err
	}
	if !validSHA256(record.Problem.StatementSHA256) || !validSHA256(record.AuthorOutput.OutputSHA256) {
		return errors.New("persistence: M7 taxonomy requires canonical statement and output SHA-256 values")
	}
	if err := validateM7TaxonomyID("author run ID", record.AuthorOutput.RunID); err != nil {
		return err
	}
	if len(record.Problem.ProblemTypeTags) == 0 || len(record.Moves) < len(m7ExplanationTiers) {
		return errors.New("persistence: M7 taxonomy requires problem-type candidates and move candidates for every tier")
	}
	if len(record.AuthorOutput.TierReceiptBindings) != len(m7ExplanationTiers) {
		return errors.New("persistence: M7 taxonomy requires one author-receipt binding per audience tier")
	}
	seenReceiptTiers := make(map[domain.AudienceTier]struct{}, len(m7ExplanationTiers))
	for _, binding := range record.AuthorOutput.TierReceiptBindings {
		if !knownM7ExplanationTier(binding.Tier) || !validSHA256(binding.ManifestSHA256) || !validSHA256(binding.RunReceiptSHA256) {
			return fmt.Errorf("persistence: M7 taxonomy has an invalid %s author-receipt binding", binding.Tier)
		}
		if _, duplicate := seenReceiptTiers[binding.Tier]; duplicate {
			return fmt.Errorf("persistence: duplicate M7 author-receipt binding for %s", binding.Tier)
		}
		seenReceiptTiers[binding.Tier] = struct{}{}
	}
	switch record.LiftObservation.Status {
	case "NOT_MEASURED":
		if record.LiftObservation.AttributionScope != "NONE" || len(record.LiftObservation.TierObservations) != 0 {
			return errors.New("persistence: NOT_MEASURED lift cannot carry tier observations or an attribution scope")
		}
	case "MEASURED":
		if record.LiftObservation.AttributionScope != "WHOLE_EXPOSITION_ASSOCIATION" || len(record.LiftObservation.TierObservations) != len(m7ExplanationTiers) {
			return errors.New("persistence: measured M7 lift requires five tier records with whole-exposition attribution")
		}
	default:
		return errors.New("persistence: unsupported M7 lift status")
	}
	seenMoves := make(map[string]struct{}, len(record.Moves))
	seenTiers := make(map[domain.AudienceTier]struct{}, len(m7ExplanationTiers))
	for _, move := range record.Moves {
		if err := validateM7TaxonomyID("move ID", move.MoveID); err != nil {
			return err
		}
		if _, duplicate := seenMoves[move.MoveID]; duplicate {
			return fmt.Errorf("persistence: duplicate M7 move ID %q", move.MoveID)
		}
		seenMoves[move.MoveID] = struct{}{}
		if !knownExplanationMoveFamily(move.MoveFamily) || !knownM7ExplanationTier(move.Tier) {
			return fmt.Errorf("persistence: move candidate %q has unknown move family or audience tier", move.MoveID)
		}
		if move.ReviewStatus != "UNREVIEWED_CANDIDATE" || len(move.ReviewObservationIDs) != 0 {
			return fmt.Errorf("persistence: move candidate %q cannot claim review without a review-observation reader", move.MoveID)
		}
		if move.EvidenceRunID == "" || !validSHA256(move.EvidenceOutputSHA256) || strings.TrimSpace(move.EvidenceExcerpt) == "" ||
			!validSHA256(move.EvidenceExcerptSHA256) {
			return fmt.Errorf("persistence: move candidate %q lacks an exact output-span evidence link", move.MoveID)
		}
		if len(move.ProblemTypeTags) == 0 {
			return fmt.Errorf("persistence: move candidate %q has no linked problem-type tags", move.MoveID)
		}
		for _, tag := range move.ProblemTypeTags {
			if !containsTaxonomyTag(record.Problem.ProblemTypeTags, tag) {
				return fmt.Errorf("persistence: move candidate %q references an absent problem-type tag %q", move.MoveID, tag)
			}
		}
		seenTiers[move.Tier] = struct{}{}
	}
	for _, tier := range m7ExplanationTiers {
		if _, found := seenTiers[tier]; !found {
			return fmt.Errorf("persistence: M7 taxonomy has no move candidate for %s", tier)
		}
	}
	return nil
}

func auditM7ExplanationLift(
	observation M7ExplanationLiftObservation,
	bundleAudit expositor.M7BundleEvidenceAuditReport,
	manifestPaths map[domain.AudienceTier]string,
	evidenceFiles map[string][]byte,
) (bool, error) {
	if observation.Status == "NOT_MEASURED" {
		return false, nil
	}
	actual := make(map[domain.AudienceTier]M7ExplanationTierLiftObservation, len(m7ExplanationTiers))
	allStudentRuns := make(map[string]domain.AudienceTier)
	for _, tierReport := range bundleAudit.Tiers {
		manifestBytes := evidenceFiles[manifestPaths[tierReport.Tier]]
		var manifest domain.M7EvidenceManifestV1
		if err := decodeStrictEvidenceJSON(manifestBytes, &manifest); err != nil {
			return false, fmt.Errorf("persistence: decode %s student attempts: %w", tierReport.Tier, err)
		}
		row := M7ExplanationTierLiftObservation{Tier: tierReport.Tier, MetricID: "M7_RECOMPUTED_PROGRESS_LIFT", Estimate: tierReport.Audit.RecomputedProgressLift}
		seen := make(map[string]struct{}, len(manifest.StudentTrials))
		for _, binding := range manifest.StudentTrials {
			var receipt domain.M7RunReceiptV2
			if err := decodeStrictEvidenceJSON(evidenceFiles[binding.RunReceiptPath], &receipt); err != nil {
				return false, fmt.Errorf("persistence: decode %s student receipt %q: %w", tierReport.Tier, binding.ID, err)
			}
			if _, duplicate := seen[receipt.RunID]; duplicate {
				return false, fmt.Errorf("persistence: %s M7 student run %q is duplicated", tierReport.Tier, receipt.RunID)
			}
			if previousTier, duplicate := allStudentRuns[receipt.RunID]; duplicate {
				return false, fmt.Errorf("persistence: student run %q is reused across %s and %s tiers", receipt.RunID, previousTier, tierReport.Tier)
			}
			seen[receipt.RunID] = struct{}{}
			allStudentRuns[receipt.RunID] = tierReport.Tier
			var attempt domain.M7StudentAttemptOutputV1
			if err := decodeStrictEvidenceJSON(evidenceFiles[binding.OutputPath], &attempt); err != nil {
				return false, fmt.Errorf("persistence: decode %s student output %q: %w", tierReport.Tier, binding.ID, err)
			}
			switch attempt.Arm {
			case domain.M7ArmBaseline:
				row.BaselineAttemptRunIDs = append(row.BaselineAttemptRunIDs, receipt.RunID)
			case domain.M7ArmExposition:
				row.ExpositionAttemptRunIDs = append(row.ExpositionAttemptRunIDs, receipt.RunID)
			default:
				return false, fmt.Errorf("persistence: %s student run %q has unsupported arm %q", tierReport.Tier, receipt.RunID, attempt.Arm)
			}
			row.StudyEvidenceRunIDs = append(row.StudyEvidenceRunIDs, receipt.RunID)
		}
		sort.Strings(row.BaselineAttemptRunIDs)
		sort.Strings(row.ExpositionAttemptRunIDs)
		sort.Strings(row.StudyEvidenceRunIDs)
		actual[tierReport.Tier] = row
	}
	if len(actual) != len(m7ExplanationTiers) {
		return false, errors.New("persistence: measured M7 lift lacks exactly five audited tier reports")
	}
	seen := make(map[domain.AudienceTier]struct{}, len(observation.TierObservations))
	for _, claimed := range observation.TierObservations {
		if _, duplicate := seen[claimed.Tier]; duplicate {
			return false, fmt.Errorf("persistence: measured M7 lift repeats %s tier", claimed.Tier)
		}
		seen[claimed.Tier] = struct{}{}
		if got, found := actual[claimed.Tier]; !found || !sameM7ExplanationTierLift(got, claimed) {
			return false, fmt.Errorf("persistence: measured M7 lift for %s does not match recomputed attempt evidence (got %#v, want %#v)", claimed.Tier, claimed, got)
		}
	}
	if len(seen) != len(actual) {
		return false, errors.New("persistence: measured M7 lift omits a tier")
	}
	return true, nil
}

func sameM7ExplanationTierLift(left, right M7ExplanationTierLiftObservation) bool {
	return left.Tier == right.Tier && left.MetricID == right.MetricID && !math.IsNaN(left.Estimate) && !math.IsInf(left.Estimate, 0) &&
		!math.IsNaN(right.Estimate) && !math.IsInf(right.Estimate, 0) && math.Abs(left.Estimate-right.Estimate) <= 1e-12 &&
		equalExpositionPairStrings(left.BaselineAttemptRunIDs, right.BaselineAttemptRunIDs) &&
		equalExpositionPairStrings(left.ExpositionAttemptRunIDs, right.ExpositionAttemptRunIDs) &&
		equalExpositionPairStrings(left.StudyEvidenceRunIDs, right.StudyEvidenceRunIDs)
}

func validateTaxonomyTagSources(tags []M7ExplanationProblemTag, sourceIDs []string) error {
	seen := make(map[string]struct{}, len(tags))
	for _, tag := range tags {
		if err := validateM7TaxonomyID("problem-type tag", tag.Tag); err != nil {
			return err
		}
		if _, duplicate := seen[tag.Tag]; duplicate {
			return fmt.Errorf("persistence: duplicate M7 problem-type tag %q", tag.Tag)
		}
		seen[tag.Tag] = struct{}{}
		if len(tag.EvidenceSourceIDs) == 0 {
			return fmt.Errorf("persistence: problem-type tag %q has no M0 source evidence", tag.Tag)
		}
		for _, sourceID := range tag.EvidenceSourceIDs {
			if !containsTaxonomySource(sourceIDs, sourceID) {
				return fmt.Errorf("persistence: problem-type tag %q cites a source outside its M0 problem", tag.Tag)
			}
		}
	}
	return nil
}

func validateM7TaxonomySourceBytes(snapshot catalog.Snapshot, problem catalog.Problem, pin domain.V3SourceStatementPin, raw map[string][]byte) error {
	if len(raw) != 1 {
		return errors.New("persistence: M7 taxonomy requires exactly the one M0 source item consumed by the author run")
	}
	var matched *catalog.SourceVersion
	for index := range snapshot.Sources {
		source := &snapshot.Sources[index]
		if source.URL != pin.URL || source.ItemLocator != pin.ItemLocator || source.Revision != pin.Revision {
			continue
		}
		if matched != nil {
			return errors.New("persistence: M7 author source pin matches multiple M0 source items")
		}
		matched = source
	}
	if matched == nil || !containsTaxonomySource(problem.SourceIDs, matched.ID) || matched.ContentSHA256 != pin.RawItemSHA256 {
		return errors.New("persistence: M7 author source pin does not resolve to the exact M0 problem source")
	}
	bytes, found := raw[matched.ID]
	if !found || sha256Hex(bytes) != matched.ContentSHA256 {
		return errors.New("persistence: M7 raw source-item bytes do not match the exact M0 source digest")
	}
	return nil
}

func validateM7TaxonomyEvidenceFiles(files map[string][]byte, manifests map[domain.AudienceTier]string) error {
	expected := make(map[string]struct{}, len(files))
	for _, tier := range m7ExplanationTiers {
		manifestPath := manifests[tier]
		if manifestPath == "" || !fs.ValidPath(manifestPath) || strings.Contains(manifestPath, "\\") {
			return fmt.Errorf("persistence: unsafe or missing %s M7 manifest path", tier)
		}
		manifestBytes, ok := files[manifestPath]
		if !ok {
			return fmt.Errorf("persistence: missing %s M7 manifest bytes", tier)
		}
		expected[manifestPath] = struct{}{}
		var manifest domain.M7EvidenceManifestV1
		if err := decodeStrictEvidenceJSON(manifestBytes, &manifest); err != nil {
			return fmt.Errorf("persistence: decode %s M7 manifest: %w", tier, err)
		}
		bindings := []domain.M7ArtifactBinding{manifest.Author, manifest.RoundTrip, manifest.Canon, manifest.Leakage}
		bindings = append(bindings, manifest.StudentTrials...)
		for _, binding := range bindings {
			receiptBytes, ok := files[binding.RunReceiptPath]
			if !ok || sha256Hex(receiptBytes) != binding.RunReceiptSHA256 {
				return fmt.Errorf("persistence: %s M7 receipt %q is missing or misbound", tier, binding.ID)
			}
			var receipt domain.M7RunReceiptV2
			if err := decodeStrictEvidenceJSON(receiptBytes, &receipt); err != nil {
				return fmt.Errorf("persistence: decode %s M7 receipt %q: %w", tier, binding.ID, err)
			}
			for _, referenced := range []string{binding.RunReceiptPath, receipt.InputPath, binding.OutputPath} {
				if referenced == "" || !fs.ValidPath(referenced) || strings.Contains(referenced, "\\") {
					return fmt.Errorf("persistence: unsafe %s M7 evidence reference %q", tier, referenced)
				}
				if _, ok := files[referenced]; !ok {
					return fmt.Errorf("persistence: %s M7 evidence is missing referenced file %q", tier, referenced)
				}
				expected[referenced] = struct{}{}
			}
		}
	}
	if len(expected) != len(files) {
		return errors.New("persistence: M7 taxonomy evidence set contains unreferenced bytes")
	}
	return nil
}

func knownM7ExplanationTier(tier domain.AudienceTier) bool {
	for _, candidate := range m7ExplanationTiers {
		if candidate == tier {
			return true
		}
	}
	return false
}

func knownExplanationMoveFamily(family string) bool {
	switch family {
	case "PROOF_ROADMAP", "DEFINITION", "MOTIVATION", "INTUITION", "ANALOGY", "WORKED_EXAMPLE", "INFERENCE_BRIDGE", "BOUNDARY_CASE", "CANONICAL_CONTEXT", "SUMMARY", "OTHER":
		return true
	default:
		return false
	}
}

func validateM7TaxonomyID(name, value string) error {
	if strings.TrimSpace(value) == "" || strings.ContainsAny(value, "\x00\r\n") {
		return fmt.Errorf("persistence: M7 taxonomy %s must be non-empty single-line text", name)
	}
	return nil
}

func containsTaxonomyTag(tags []M7ExplanationProblemTag, tag string) bool {
	for _, candidate := range tags {
		if candidate.Tag == tag {
			return true
		}
	}
	return false
}

func containsTaxonomySource(sourceIDs []string, sourceID string) bool {
	for _, candidate := range sourceIDs {
		if candidate == sourceID {
			return true
		}
	}
	return false
}

func equalWordLimits(left, right expositor.WordLimits) bool {
	if len(left) != len(right) {
		return false
	}
	for _, tier := range m7ExplanationTiers {
		if left[tier] != right[tier] {
			return false
		}
	}
	return true
}

func (s *M7ExplanationTaxonomyStore) Put(ctx context.Context, artifact M7ExplanationTaxonomyArtifact) (M7ExplanationTaxonomyReceipt, error) {
	if s == nil || s.root == "" || ctx == nil {
		return M7ExplanationTaxonomyReceipt{}, errors.New("persistence: initialized M7 explanation taxonomy store and context are required")
	}
	if err := ctx.Err(); err != nil {
		return M7ExplanationTaxonomyReceipt{}, err
	}
	body, err := jsonv2.Marshal(artifact, jsonv2.Deterministic(true))
	if err != nil {
		return M7ExplanationTaxonomyReceipt{}, fmt.Errorf("persistence: encode M7 explanation taxonomy artifact: %w", err)
	}
	if len(body) == 0 || len(body) > maxExpositionPairEvidenceBytes {
		return M7ExplanationTaxonomyReceipt{}, errors.New("persistence: M7 explanation taxonomy artifact size is invalid")
	}
	var reopened M7ExplanationTaxonomyArtifact
	if err := jsonv2.Unmarshal(body, &reopened, jsonv2.RejectUnknownMembers(true)); err != nil {
		return M7ExplanationTaxonomyReceipt{}, fmt.Errorf("persistence: reopen encoded M7 explanation taxonomy: %w", err)
	}
	report, err := reopened.Audit(ctx)
	if err != nil {
		return M7ExplanationTaxonomyReceipt{}, err
	}
	if !report.IntegrityVerified || !report.ProviderInputScopeConsistent || report.ExternalIdentityAuthenticated || report.TrainingEligible {
		return M7ExplanationTaxonomyReceipt{}, errors.New("persistence: M7 explanation taxonomy audit returned an invalid candidate-only state")
	}
	digest := sha256Hex(body)
	directory := filepath.Join(s.root, m7ExplanationTaxonomyDir)
	if err := ensureDirectory(directory); err != nil {
		return M7ExplanationTaxonomyReceipt{}, err
	}
	target := filepath.Join(directory, digest+".json")
	if receipt, ok, err := s.verifyExisting(ctx, target, digest); err != nil || ok {
		return receipt, err
	}
	if err := ctx.Err(); err != nil {
		return M7ExplanationTaxonomyReceipt{}, err
	}
	temp, err := os.CreateTemp(directory, ".mathcase-m7-taxonomy-*.tmp")
	if err != nil {
		return M7ExplanationTaxonomyReceipt{}, fmt.Errorf("persistence: create M7 taxonomy temporary file: %w", err)
	}
	tempPath := temp.Name()
	defer func() { _ = os.Remove(tempPath) }()
	if err := temp.Chmod(0o600); err != nil {
		_ = temp.Close()
		return M7ExplanationTaxonomyReceipt{}, err
	}
	if err := writeAll(temp, body); err != nil {
		_ = temp.Close()
		return M7ExplanationTaxonomyReceipt{}, err
	}
	if err := temp.Sync(); err != nil {
		_ = temp.Close()
		return M7ExplanationTaxonomyReceipt{}, err
	}
	if err := temp.Close(); err != nil {
		return M7ExplanationTaxonomyReceipt{}, err
	}
	if err := ctx.Err(); err != nil {
		return M7ExplanationTaxonomyReceipt{}, err
	}
	if err := os.Link(tempPath, target); err != nil {
		if receipt, ok, verifyErr := s.verifyExisting(ctx, target, digest); verifyErr == nil && ok {
			return receipt, nil
		}
		return M7ExplanationTaxonomyReceipt{}, fmt.Errorf("persistence: append M7 explanation taxonomy: %w", err)
	}
	if err := os.Remove(tempPath); err != nil {
		return M7ExplanationTaxonomyReceipt{}, fmt.Errorf("persistence: remove M7 taxonomy temporary link: %w", err)
	}
	if runtime.GOOS != "windows" {
		dir, err := os.Open(directory)
		if err != nil {
			return M7ExplanationTaxonomyReceipt{}, err
		}
		syncErr, closeErr := dir.Sync(), dir.Close()
		if syncErr != nil {
			return M7ExplanationTaxonomyReceipt{}, syncErr
		}
		if closeErr != nil {
			return M7ExplanationTaxonomyReceipt{}, closeErr
		}
	}
	return m7ExplanationTaxonomyReceipt(s.root, target, digest, int64(len(body)), reopened.Record.RecordID), nil
}

func (s *M7ExplanationTaxonomyStore) Get(ctx context.Context, digest string) (M7ExplanationTaxonomyArtifact, M7ExplanationTaxonomyReceipt, error) {
	if s == nil || s.root == "" || ctx == nil || !validSHA256(digest) {
		return M7ExplanationTaxonomyArtifact{}, M7ExplanationTaxonomyReceipt{}, errors.New("persistence: store, context, and canonical M7 taxonomy content digest are required")
	}
	if err := ctx.Err(); err != nil {
		return M7ExplanationTaxonomyArtifact{}, M7ExplanationTaxonomyReceipt{}, err
	}
	directory := filepath.Join(s.root, m7ExplanationTaxonomyDir)
	if err := checkDirectory(directory); err != nil {
		return M7ExplanationTaxonomyArtifact{}, M7ExplanationTaxonomyReceipt{}, err
	}
	filePath := filepath.Join(directory, digest+".json")
	if err := ensureContained(s.root, filePath); err != nil {
		return M7ExplanationTaxonomyArtifact{}, M7ExplanationTaxonomyReceipt{}, err
	}
	file, err := openRegular(filePath)
	if err != nil {
		return M7ExplanationTaxonomyArtifact{}, M7ExplanationTaxonomyReceipt{}, err
	}
	defer file.Close()
	body, err := io.ReadAll(io.LimitReader(file, maxExpositionPairEvidenceBytes+1))
	if err != nil {
		return M7ExplanationTaxonomyArtifact{}, M7ExplanationTaxonomyReceipt{}, err
	}
	if len(body) == 0 || len(body) > maxExpositionPairEvidenceBytes || sha256Hex(body) != digest {
		return M7ExplanationTaxonomyArtifact{}, M7ExplanationTaxonomyReceipt{}, errors.New("persistence: M7 explanation taxonomy content hash or size is invalid")
	}
	var artifact M7ExplanationTaxonomyArtifact
	if err := jsonv2.Unmarshal(body, &artifact, jsonv2.RejectUnknownMembers(true)); err != nil {
		return M7ExplanationTaxonomyArtifact{}, M7ExplanationTaxonomyReceipt{}, fmt.Errorf("persistence: decode M7 explanation taxonomy: %w", err)
	}
	report, err := artifact.Audit(ctx)
	if err != nil {
		return M7ExplanationTaxonomyArtifact{}, M7ExplanationTaxonomyReceipt{}, fmt.Errorf("persistence: reopened M7 explanation taxonomy is invalid: %w", err)
	}
	if !report.IntegrityVerified || !report.ProviderInputScopeConsistent || report.ExternalIdentityAuthenticated || report.TrainingEligible {
		return M7ExplanationTaxonomyArtifact{}, M7ExplanationTaxonomyReceipt{}, errors.New("persistence: reopened M7 explanation taxonomy audit returned an invalid candidate-only state")
	}
	return artifact, m7ExplanationTaxonomyReceipt(s.root, filePath, digest, int64(len(body)), artifact.Record.RecordID), nil
}

func (s *M7ExplanationTaxonomyStore) verifyExisting(ctx context.Context, target, digest string) (M7ExplanationTaxonomyReceipt, bool, error) {
	if err := ctx.Err(); err != nil {
		return M7ExplanationTaxonomyReceipt{}, false, err
	}
	file, err := openRegular(target)
	if errors.Is(err, os.ErrNotExist) {
		return M7ExplanationTaxonomyReceipt{}, false, nil
	}
	if err != nil {
		return M7ExplanationTaxonomyReceipt{}, false, err
	}
	defer file.Close()
	body, err := io.ReadAll(io.LimitReader(file, maxExpositionPairEvidenceBytes+1))
	if err != nil {
		return M7ExplanationTaxonomyReceipt{}, false, err
	}
	if len(body) == 0 || len(body) > maxExpositionPairEvidenceBytes || sha256Hex(body) != digest {
		return M7ExplanationTaxonomyReceipt{}, false, errors.New("persistence: existing M7 taxonomy does not match its content address")
	}
	var artifact M7ExplanationTaxonomyArtifact
	if err := jsonv2.Unmarshal(body, &artifact, jsonv2.RejectUnknownMembers(true)); err != nil {
		return M7ExplanationTaxonomyReceipt{}, false, err
	}
	report, err := artifact.Audit(ctx)
	if err != nil {
		return M7ExplanationTaxonomyReceipt{}, false, err
	}
	if !report.IntegrityVerified || !report.ProviderInputScopeConsistent || report.ExternalIdentityAuthenticated || report.TrainingEligible {
		return M7ExplanationTaxonomyReceipt{}, false, errors.New("persistence: existing M7 taxonomy audit returned invalid candidate-only state")
	}
	return m7ExplanationTaxonomyReceipt(s.root, target, digest, int64(len(body)), artifact.Record.RecordID), true, nil
}

func m7ExplanationTaxonomyReceipt(root, target, digest string, size int64, recordID string) M7ExplanationTaxonomyReceipt {
	relative, _ := filepath.Rel(root, target)
	return M7ExplanationTaxonomyReceipt{
		RecordID: recordID, ContentSHA256: digest, RelativePath: filepath.ToSlash(relative), Size: size,
		Disposition: "CANDIDATE_INTEGRITY_VERIFIED_REVIEW_BLOCKED", IntegrityVerified: true,
		ProviderInputScopeConsistent: true, ExternalIdentityAuthenticated: false, TrainingEligible: false,
	}
}

func sha256Text(value string) string {
	digest := sha256.Sum256([]byte(value))
	return hex.EncodeToString(digest[:])
}
