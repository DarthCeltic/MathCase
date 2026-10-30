package domain

import (
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"path"
	"strings"
	"time"
	"unicode/utf8"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/state"
)

// VerificationGate names one of the independent MathCase acceptance checks.
type VerificationGate string

const (
	GateKernelBuild         VerificationGate = "V1"
	GateAxiomAudit          VerificationGate = "V2"
	GateStatementFidelity   VerificationGate = "V3"
	GateFalsification       VerificationGate = "V4"
	GateEssentiality        VerificationGate = "V5"
	GateProvenanceLeakage   VerificationGate = "V6"
	GateLiteratureAndStatus VerificationGate = "V7"
)

var allVerificationGates = [...]VerificationGate{
	GateKernelBuild,
	GateAxiomAudit,
	GateStatementFidelity,
	GateFalsification,
	GateEssentiality,
	GateProvenanceLeakage,
	GateLiteratureAndStatus,
}

// MathProblem records the sourced target and both human and formal statements.
type MathProblem struct {
	ID                   string                 `json:"id"`
	Kind                 string                 `json:"kind,omitempty"`
	LocalComputationSpec *LocalComputationSpec  `json:"local_computation_spec,omitempty"`
	Title                string                 `json:"title"`
	Statement            string                 `json:"statement"`
	LeanStatement        string                 `json:"lean_statement,omitempty"`
	ProviderContext      *ProviderPromptContext `json:"provider_context,omitempty"`
	// M0Status preserves the selected catalog label without asserting it was independently re-audited.
	M0Status         string   `json:"m0_status,omitempty"`
	SourceIDs        []string `json:"source_ids,omitempty"`
	HistoricalBounty *int64   `json:"historical_bounty_usd,omitempty"`
}

// ProviderPromptContext is optional reference material sent with an external
// proof request. Its content must be separately pinned by both owner and item
// clearance artifacts before a provider route can use it.
type ProviderPromptContext struct {
	ID      string `json:"id"`
	SHA256  string `json:"sha256"`
	Content string `json:"content"`
}

const MaxProviderPromptContextBytes = 32 << 10

// Validate checks the context's stable identifier, UTF-8 content, size, and
// digest before it can be included in a remote model request.
func (c ProviderPromptContext) Validate() error {
	if err := state.ValidateIdentifier("provider prompt context ID", c.ID); err != nil {
		return err
	}
	if c.Content == "" || !utf8.ValidString(c.Content) || strings.ContainsRune(c.Content, '\x00') {
		return errors.New("provider prompt context must contain valid, non-empty UTF-8 text")
	}
	if len([]byte(c.Content)) > MaxProviderPromptContextBytes {
		return errors.New("provider prompt context exceeds its byte limit")
	}
	digest := sha256.Sum256([]byte(c.Content))
	if len(c.SHA256) != sha256.Size*2 || strings.ToLower(c.SHA256) != c.SHA256 || hex.EncodeToString(digest[:]) != c.SHA256 {
		return errors.New("provider prompt context digest does not match its content")
	}
	return nil
}

// LocalComputationArtifactReference attaches an exact local calculation to
// an unsigned case dossier. It is not a Lean proof receipt or gate outcome.
type LocalComputationArtifactReference struct {
	SchemaVersion          string `json:"schema_version"`
	ArtifactID             string `json:"artifact_id"`
	RelativePath           string `json:"relative_path"`
	ArtifactSHA256         string `json:"artifact_sha256"`
	CaseID                 string `json:"case_id"`
	ProblemID              string `json:"problem_id"`
	CatalogSnapshotSHA256  string `json:"catalog_snapshot_sha256"`
	ProblemStatementSHA256 string `json:"problem_statement_sha256"`
	ParentDossierSHA256    string `json:"parent_dossier_sha256"`
	IdempotencyKey         string `json:"idempotency_key"`
	ToolID                 string `json:"tool_id"`
	ToolVersion            string `json:"tool_version"`
	ResultSHA256           string `json:"result_sha256"`
}

const LocalComputationArtifactReferenceSchemaVersion = "mathcase-local-computation-ref-v1"

// Argument connects a claim to its evidence and records the central proof idea.
type Argument struct {
	ClaimID      string    `json:"claim_id"`
	CoreInsight  string    `json:"core_insight"`
	Text         string    `json:"text"`
	EvidenceIDs  []string  `json:"evidence_ids"`
	CreatedAt    time.Time `json:"created_at"`
	CreatedByRun string    `json:"created_by_run,omitempty"`
}

// VerificationStatus is the recorded outcome of one independent gate.
type VerificationStatus string

const (
	VerificationPending VerificationStatus = "PENDING"
	VerificationPassed  VerificationStatus = "PASSED"
	VerificationFailed  VerificationStatus = "FAILED"
	VerificationBlocked VerificationStatus = "BLOCKED"
)

// NoveltyStatus records what the literature review concluded. A known result
// can pass the review gate, but it must not be described as a new discovery.
type NoveltyStatus string

const (
	NoveltyOpen          NoveltyStatus = "OPEN"
	NoveltyKnownSolution NoveltyStatus = "KNOWN_SOLUTION"
	NoveltyUncertain     NoveltyStatus = "UNCERTAIN"
)

// LiteratureSearchRecord preserves the dated query behind a V7 review.
type LiteratureSearchRecord struct {
	Database   string    `json:"database"`
	Query      string    `json:"query"`
	SearchedAt time.Time `json:"searched_at"`
	EvidenceID string    `json:"evidence_id"`
}

// GateAssessmentSupersession binds a replacement judgment to the exact prior
// dossier revision and preserves the prior disposition and evidence links.
type GateAssessmentSupersession struct {
	DossierSHA256 string             `json:"dossier_sha256"`
	Status        VerificationStatus `json:"status"`
	Summary       string             `json:"summary"`
	EvidenceIDs   []string           `json:"evidence_ids,omitempty"`
}

// GateReceiptReference binds a gate PASS to the exact typed receipt consumed
// by the gate reader. The M8 boundary reopens the referenced bytes; this hash
// alone is never sufficient to pass a gate.
type GateReceiptReference struct {
	EvidenceID    string `json:"evidence_id"`
	ReceiptSHA256 string `json:"receipt_sha256"`
}

// VerificationRecord preserves the result and evidence behind one gate.
type VerificationRecord struct {
	AssessmentRevision     int                         `json:"assessment_revision,omitempty"`
	Supersedes             *GateAssessmentSupersession `json:"supersedes,omitempty"`
	Gate                   VerificationGate            `json:"gate"`
	Status                 VerificationStatus          `json:"status"`
	Summary                string                      `json:"summary"`
	EvidenceIDs            []string                    `json:"evidence_ids,omitempty"`
	EvidenceArtifacts      []EvidenceArtifactRef       `json:"evidence_artifacts,omitempty"`
	GateReceipt            *GateReceiptReference       `json:"gate_receipt,omitempty"`
	ProblemID              string                      `json:"problem_id,omitempty"`
	ProblemStatementSHA256 string                      `json:"problem_statement_sha256,omitempty"`
	ProofSHA256            string                      `json:"proof_sha256,omitempty"`
	LeanToolchain          string                      `json:"lean_toolchain,omitempty"`
	ExpectedLeanToolchain  string                      `json:"expected_lean_toolchain,omitempty"`
	ArtifactSHA256         string                      `json:"artifact_sha256,omitempty"`
	DatasetSplitSHA256     string                      `json:"dataset_split_sha256,omitempty"`
	DatasetSplitEvidenceID string                      `json:"dataset_split_evidence_id,omitempty"`
	LeakageAuditEvidenceID string                      `json:"leakage_audit_evidence_id,omitempty"`
	SourceIDs              []string                    `json:"source_ids,omitempty"`
	SourceRightsAudits     []SourceRightsAudit         `json:"source_rights_audits,omitempty"`
	ReviewerID             string                      `json:"reviewer_id,omitempty"`
	StatementFidelity      *V3StatementFidelity        `json:"statement_fidelity,omitempty"`
	Falsification          *V4FalsificationAudit       `json:"falsification,omitempty"`
	Essentiality           *V5EssentialityAudit        `json:"essentiality,omitempty"`
	Novelty                NoveltyStatus               `json:"novelty,omitempty"`
	Searches               []LiteratureSearchRecord    `json:"searches,omitempty"`
	Findings               []string                    `json:"findings,omitempty"`
	RecordedAt             time.Time                   `json:"recorded_at"`
}

// M4ReceiptReference pins the exact Lean execution receipt shared by V1 and
// V2. EvidenceIDs alone identify a receipt but do not prevent same-ID byte
// substitution at the M8 persistence boundary.
type M4ReceiptReference struct {
	EvidenceID    string `json:"evidence_id"`
	ReceiptSHA256 string `json:"receipt_sha256"`
}

// M6StructuralMetricsReference attaches an exact, reopened M6 execution chain
// to the checked proof in an unsigned dossier. These counts describe Lean's
// elaborated expression structure; they are not proof-quality judgments.
type M6StructuralMetricsReference struct {
	SchemaVersion            string `json:"schema_version"`
	Status                   string `json:"status"`
	EvidenceClass            string `json:"evidence_class"`
	ParentDossierSHA256      string `json:"parent_dossier_sha256"`
	M4ReceiptEvidenceID      string `json:"m4_receipt_evidence_id"`
	M4ReceiptRelativePath    string `json:"m4_receipt_relative_path"`
	M4ReceiptSHA256          string `json:"m4_receipt_sha256"`
	ProblemStatementSHA256   string `json:"problem_statement_sha256"`
	GeneratedSourceSHA256    string `json:"generated_source_sha256"`
	InstrumentedSourceSHA256 string `json:"instrumented_source_sha256"`
	MetricsDirectoryPath     string `json:"metrics_directory_path"`
	MetricsReceiptSHA256     string `json:"metrics_receipt_sha256"`
	RunReceiptSHA256         string `json:"run_receipt_sha256"`
	RunRequestSHA256         string `json:"run_request_sha256"`
	SnapshotID               string `json:"snapshot_id"`
	SnapshotManifestSHA256   string `json:"snapshot_manifest_sha256"`
	StdoutSHA256             string `json:"stdout_sha256"`
	StderrSHA256             string `json:"stderr_sha256"`
	Declaration              string `json:"declaration"`
	LeanToolchain            string `json:"lean_toolchain"`
	LeanVersion              string `json:"lean_version"`
	CoreExprNodes            int    `json:"core_expr_nodes"`
	CoreExprDepth            int    `json:"core_expr_depth"`
	BinderNodes              int    `json:"binder_nodes"`
	ConstantReferenceNodes   int    `json:"constant_reference_nodes"`
	ScopeNote                string `json:"scope_note"`
}

const M6StructuralMetricsReferenceSchemaVersion = "mathcase-m6-structural-metrics-ref-v1"
const M6StructuralMetricsAttachedStatus = "ATTACHED_STRUCTURAL_ONLY"
const M6StructuralMetricsPinnedExecutionClass = "PINNED_ISOLATED_EXECUTION"

// CandidateExpositionReference links an untiered, provenance-limited draft to
// its content-addressed artifact. It is deliberately separate from Exposition
// and ExpositionEvaluation: this record cannot be mistaken for accepted M7.
type CandidateExpositionReference struct {
	SchemaVersion          string `json:"schema_version"`
	Status                 string `json:"status"`
	RelativePath           string `json:"relative_path"`
	ArtifactSHA256         string `json:"artifact_sha256"`
	CaseID                 string `json:"case_id"`
	ProblemID              string `json:"problem_id"`
	ProblemStatementSHA256 string `json:"problem_statement_sha256"`
	RunID                  string `json:"run_id"`
	ProofSHA256            string `json:"proof_sha256"`
	GeneratedSourceSHA256  string `json:"generated_source_sha256"`
	M4ReceiptSHA256        string `json:"m4_receipt_sha256"`
	M6MetricsReceiptSHA256 string `json:"m6_metrics_receipt_sha256"`
	M6RunReceiptSHA256     string `json:"m6_run_receipt_sha256"`
}

const CandidateExpositionReferenceSchemaVersion = "mathcase-candidate-exposition-ref-v1"
const CandidateExpositionCandidateOnlyStatus = "CANDIDATE_ONLY_NOT_ACCEPTED_M7"

// SourceRightsAudit binds one source's allowed uses to the evidence reviewed
// for the exact provenance artifact assessed by V6.
type SourceRightsAudit struct {
	SourceID         string   `json:"source_id"`
	RightsEvidenceID string   `json:"rights_evidence_id"`
	RightsStatus     string   `json:"rights_status"`
	License          string   `json:"license"`
	RequiredUses     []string `json:"required_uses"`
	AllowedUses      []string `json:"allowed_uses"`
}

// AudienceTier is one of the five required Expositor outputs.
type AudienceTier string

const (
	TierHighSchool AudienceTier = "HIGH_SCHOOL"
	TierAssociate  AudienceTier = "ASSOCIATE"
	TierBachelor   AudienceTier = "BACHELOR"
	TierMaster     AudienceTier = "MASTER"
	TierDoctorate  AudienceTier = "DOCTORATE"
)

var allAudienceTiers = [...]AudienceTier{
	TierHighSchool,
	TierAssociate,
	TierBachelor,
	TierMaster,
	TierDoctorate,
}

// Exposition is a self-contained explanation for one audience tier.
type Exposition struct {
	Tier          AudienceTier `json:"tier"`
	Text          string       `json:"text"`
	CoreInsightID string       `json:"core_insight_id,omitempty"`
	CoreInsight   string       `json:"core_insight"`
	ProofRef      string       `json:"proof_ref"`
}

// VerdictStatus is the case's current mathematical conclusion.
type VerdictStatus string

const (
	VerdictProven     VerdictStatus = "PROVEN"
	VerdictDisproved  VerdictStatus = "DISPROVED"
	VerdictUnresolved VerdictStatus = "UNRESOLVED"
)

// Verdict records the conclusion without overstating what the evidence proves.
type Verdict struct {
	Status      VerdictStatus `json:"status"`
	Summary     string        `json:"summary"`
	EvidenceIDs []string      `json:"evidence_ids,omitempty"`
	RecordedAt  time.Time     `json:"recorded_at"`
}

// DossierClaimClass identifies the epistemic class of the dossier's result.
type DossierClaimClass string

const (
	ClaimClassBootstrapCalibration DossierClaimClass = "BOOTSTRAP/CALIBRATION"
	ClaimClassDiscovery            DossierClaimClass = "DISCOVERY"
	ClaimClassBootstrapNote                          = "Known result; plumbing proof only; not a discovery-class dossier."
)

// Dossier is the integrated M8 record: claim, sources, evidence, argument,
// verification outcomes, all five expositions, and the verdict.
type Dossier struct {
	SchemaVersion                string                              `json:"schema_version"`
	ClaimClass                   DossierClaimClass                   `json:"claim_class,omitempty"`
	ClaimClassNote               string                              `json:"claim_class_note,omitempty"`
	CatalogSnapshotSHA256        string                              `json:"catalog_snapshot_sha256,omitempty"`
	CatalogSnapshotPath          string                              `json:"catalog_snapshot_path,omitempty"`
	Case                         Case                                `json:"case"`
	Problem                      MathProblem                         `json:"problem"`
	ProvenanceArtifactSHA256     string                              `json:"provenance_artifact_sha256,omitempty"`
	FormalizerCandidateArtifacts []FormalizerCandidateArtifactRef    `json:"formalizer_candidate_artifacts,omitempty"`
	Claims                       []Claim                             `json:"claims"`
	Sources                      []Source                            `json:"sources"`
	SourceFamilies               []SourceFamily                      `json:"source_families,omitempty"`
	Evidence                     []Evidence                          `json:"evidence"`
	Attempts                     []SolverAttempt                     `json:"attempts,omitempty"`
	Argument                     Argument                            `json:"argument"`
	Verifications                []VerificationRecord                `json:"verifications"`
	M4Receipt                    *M4ReceiptReference                 `json:"m4_receipt,omitempty"`
	M6StructuralMetrics          *M6StructuralMetricsReference       `json:"m6_structural_metrics,omitempty"`
	CandidateExposition          *CandidateExpositionReference       `json:"candidate_exposition,omitempty"`
	LocalComputationArtifacts    []LocalComputationArtifactReference `json:"local_computation_artifacts,omitempty"`
	Expositions                  []Exposition                        `json:"expositions"`
	ExpositionEvaluations        []ExpositionEvaluation              `json:"exposition_evaluations,omitempty"`
	ExpositionWordLimits         *ExpositionWordLimits               `json:"exposition_word_limits,omitempty"`
	AuthorCallAccounting         *budget.CostCallReceipt             `json:"author_call_accounting,omitempty"`
	AuthorAgentRunReceipt        *AgentRunReceipt                    `json:"author_agent_run_receipt,omitempty"`
	Verdict                      Verdict                             `json:"verdict"`
}

const DossierSchemaVersion = "mathcase-dossier-v2"

// Validate checks internal identities and cross-references. It permits an
// incomplete research case so failed and unresolved work can still be recorded.
func (d Dossier) Validate() error {
	if d.SchemaVersion != DossierSchemaVersion {
		return fmt.Errorf("dossier: unsupported schema version %q", d.SchemaVersion)
	}
	switch d.ClaimClass {
	case "":
		if d.ClaimClassNote != "" {
			return errors.New("dossier: claim-class note requires a claim class")
		}
	case ClaimClassBootstrapCalibration:
		if d.ClaimClassNote != ClaimClassBootstrapNote {
			return errors.New("dossier: bootstrap/calibration claim requires the known-result plumbing-only note")
		}
	case ClaimClassDiscovery:
		if d.ClaimClassNote != "" {
			return errors.New("dossier: discovery claim must not carry the bootstrap-only note")
		}
	default:
		return fmt.Errorf("dossier: unsupported claim class %q", d.ClaimClass)
	}
	if strings.TrimSpace(d.Case.ID) == "" {
		return errors.New("dossier: case ID is required")
	}
	if strings.TrimSpace(d.Problem.ID) == "" || strings.TrimSpace(d.Problem.Statement) == "" {
		return errors.New("dossier: problem ID and statement are required")
	}
	switch d.Problem.Kind {
	case "", "THEOREM":
		if d.Problem.LocalComputationSpec != nil {
			return errors.New("dossier: theorem problems cannot carry a local computation spec")
		}
	case "LOCAL_ARITHMETIC_TASK":
		if strings.TrimSpace(d.Problem.LeanStatement) != "" || d.Problem.M0Status != "UNASSESSED" || d.Problem.LocalComputationSpec == nil {
			return errors.New("dossier: local arithmetic tasks must remain unassessed and cannot carry a Lean statement")
		}
		if err := d.Problem.LocalComputationSpec.Validate(); err != nil {
			return err
		}
	default:
		return fmt.Errorf("dossier: unsupported problem kind %q", d.Problem.Kind)
	}
	switch d.Problem.M0Status {
	case "", "UNASSESSED", "PROVEN", "CONJECTURED_OPEN", "EMPIRICALLY_OBSERVED", "FALSIFIED", "CONDITIONAL":
	default:
		return fmt.Errorf("dossier: unsupported M0 problem status %q", d.Problem.M0Status)
	}
	if d.Case.Question == "" {
		return errors.New("dossier: case question is required")
	}
	if d.Problem.HistoricalBounty != nil && *d.Problem.HistoricalBounty < 0 {
		return errors.New("dossier: historical bounty cannot be negative")
	}

	claimIDs := make(map[string]struct{}, len(d.Claims))
	for _, claim := range d.Claims {
		if err := addUnique(claimIDs, claim.ID, "claim"); err != nil {
			return err
		}
		if claim.CaseID != d.Case.ID {
			return fmt.Errorf("dossier: claim %q belongs to another case", claim.ID)
		}
	}
	sourceIDs := make(map[string]struct{}, len(d.Sources))
	for _, source := range d.Sources {
		if err := addUnique(sourceIDs, source.ID, "source"); err != nil {
			return err
		}
		if source.CaseID != d.Case.ID {
			return fmt.Errorf("dossier: source %q belongs to another case", source.ID)
		}
	}
	if d.ProvenanceArtifactSHA256 != "" && !validSHA256(d.ProvenanceArtifactSHA256) {
		return errors.New("dossier: provenance artifact digest must be canonical SHA-256 hex")
	}
	if d.CatalogSnapshotSHA256 != "" && !validSHA256(d.CatalogSnapshotSHA256) {
		return errors.New("dossier: catalog snapshot digest must be canonical SHA-256 hex")
	}
	if d.CatalogSnapshotPath != "" && !safeRelativeArtifactPath(d.CatalogSnapshotPath) {
		return errors.New("dossier: catalog snapshot path must be a safe project-relative path")
	}
	if err := validateFormalizerCandidateArtifactRefs(d.FormalizerCandidateArtifacts, d.CatalogSnapshotSHA256); err != nil {
		return fmt.Errorf("dossier: %w", err)
	}
	if d.AuthorCallAccounting != nil {
		if err := d.AuthorCallAccounting.Validate(); err != nil {
			return fmt.Errorf("dossier: invalid author-call accounting receipt: %w", err)
		}
	}
	if d.AuthorCallAccounting != nil && d.AuthorAgentRunReceipt != nil {
		return errors.New("dossier: cost-ledger and agent-quota author receipts are mutually exclusive")
	}
	if receipt := d.AuthorAgentRunReceipt; receipt != nil {
		if err := receipt.Validate(); err != nil {
			return fmt.Errorf("dossier: invalid author agent-run receipt: %w", err)
		}
		if receipt.Target.ProblemID != d.Problem.ID {
			return errors.New("dossier: author agent-run receipt targets a different problem")
		}
		targetStatementID := d.Problem.ID
		if receipt.SchemaVersion == AgentRunReceiptSchemaVersion2 {
			if receipt.Target.CatalogSnapshotSHA256 != d.CatalogSnapshotSHA256 {
				return errors.New("dossier: v2 author agent-run receipt uses a different M0 catalog snapshot")
			}
			statementDigest := sha256.Sum256([]byte(d.Problem.Statement))
			if receipt.Target.StatementSHA256 != hex.EncodeToString(statementDigest[:]) {
				return errors.New("dossier: v2 author agent-run receipt does not pin the exact dossier statement")
			}
			targetStatementID = receipt.Target.StatementID
		}
		if receipt.Purpose != "reviewer/expositor" {
			return errors.New("dossier: author agent-run receipt purpose must be reviewer/expositor")
		}
		cleared := false
		for _, clearance := range receipt.InputClearance {
			if clearance.StatementID == targetStatementID {
				cleared = true
				break
			}
		}
		if !cleared {
			return errors.New("dossier: author agent-run receipt has no provider-input clearance for this problem")
		}
	}
	for _, sourceID := range d.Problem.SourceIDs {
		if _, ok := sourceIDs[sourceID]; !ok {
			return fmt.Errorf("dossier: problem references missing source %q", sourceID)
		}
	}
	evidenceIDs := make(map[string]struct{}, len(d.Evidence))
	for _, evidence := range d.Evidence {
		if err := addUnique(evidenceIDs, evidence.ID, "evidence"); err != nil {
			return err
		}
		if evidence.CaseID != d.Case.ID {
			return fmt.Errorf("dossier: evidence %q belongs to another case", evidence.ID)
		}
		if _, ok := claimIDs[evidence.ClaimID]; !ok {
			return fmt.Errorf("dossier: evidence %q references missing claim %q", evidence.ID, evidence.ClaimID)
		}
		if _, ok := sourceIDs[evidence.SourceID]; !ok {
			return fmt.Errorf("dossier: evidence %q references missing source %q", evidence.ID, evidence.SourceID)
		}
	}
	attemptIDs := make(map[string]SolverAttempt, len(d.Attempts))
	for _, attempt := range d.Attempts {
		if err := attempt.Validate(); err != nil {
			return fmt.Errorf("dossier: invalid solver attempt %q: %w", attempt.ID, err)
		}
		if attempt.ProblemID != d.Problem.ID {
			return fmt.Errorf("dossier: attempt %q belongs to another problem", attempt.ID)
		}
		if _, exists := attemptIDs[attempt.ID]; exists {
			return fmt.Errorf("dossier: duplicate attempt %q", attempt.ID)
		}
		if err := validateReferences(attempt.EvidenceIDs, evidenceIDs, "attempt "+attempt.ID); err != nil {
			return err
		}
		attemptIDs[attempt.ID] = attempt
	}
	for _, attempt := range d.Attempts {
		if attempt.ParentAttemptID == "" {
			continue
		}
		parent, exists := attemptIDs[attempt.ParentAttemptID]
		if !exists || parent.RunID != attempt.RunID || parent.ProblemID != attempt.ProblemID {
			return fmt.Errorf("dossier: attempt %q has a missing or mismatched parent", attempt.ID)
		}
		seen := map[string]struct{}{attempt.ID: {}}
		current := attempt
		for current.ParentAttemptID != "" {
			if _, exists := seen[current.ParentAttemptID]; exists {
				return fmt.Errorf("dossier: attempt lineage for %q is cyclic", attempt.ID)
			}
			seen[current.ParentAttemptID] = struct{}{}
			current = attemptIDs[current.ParentAttemptID]
		}
	}
	passingProofs := make(map[string]struct{})
	for _, attempt := range d.Attempts {
		if attempt.Outcome == SolverOutcomePass {
			passingProofs[attempt.VerifiedProofSHA256] = struct{}{}
		}
	}
	for _, claim := range d.Claims {
		for _, id := range claim.EvidenceIDs {
			if _, ok := evidenceIDs[id]; !ok {
				return fmt.Errorf("dossier: claim %q references missing evidence %q", claim.ID, id)
			}
		}
	}
	if d.Argument.ClaimID != "" {
		if _, ok := claimIDs[d.Argument.ClaimID]; !ok {
			return fmt.Errorf("dossier: argument references missing claim %q", d.Argument.ClaimID)
		}
	}
	if err := validateReferences(d.Argument.EvidenceIDs, evidenceIDs, "argument"); err != nil {
		return err
	}
	if err := validateReferences(d.Verdict.EvidenceIDs, evidenceIDs, "verdict"); err != nil {
		return err
	}

	gateIDs := make(map[VerificationGate]struct{}, len(d.Verifications))
	statementDigest, err := ProblemStatementDigest(d.Problem.ID, d.Problem.Statement, d.Problem.LeanStatement)
	if err != nil {
		return fmt.Errorf("dossier: hash problem statement: %w", err)
	}
	for _, record := range d.Verifications {
		if !knownGate(record.Gate) {
			return fmt.Errorf("dossier: unknown verification gate %q", record.Gate)
		}
		if record.GateReceipt != nil {
			if record.Gate != GateStatementFidelity && record.Gate != GateFalsification && record.Gate != GateEssentiality && record.Gate != GateProvenanceLeakage && record.Gate != GateLiteratureAndStatus {
				return fmt.Errorf("dossier: gate %s cannot carry a V3-V7 typed receipt", record.Gate)
			}
			if err := state.ValidateIdentifier("gate receipt evidence ID", record.GateReceipt.EvidenceID); err != nil {
				return err
			}
			if !validSHA256(record.GateReceipt.ReceiptSHA256) {
				return fmt.Errorf("dossier: gate %s has an invalid typed receipt digest", record.Gate)
			}
		}
		if record.Status == VerificationPassed && record.Gate != GateKernelBuild && record.Gate != GateAxiomAudit && record.GateReceipt == nil {
			return fmt.Errorf("dossier: passed gate %s requires a typed receipt reference reopened by the M8 reader", record.Gate)
		}
		switch record.Status {
		case VerificationPending, VerificationPassed, VerificationFailed, VerificationBlocked:
		default:
			return fmt.Errorf("dossier: invalid status %q for gate %s", record.Status, record.Gate)
		}
		if strings.TrimSpace(record.Summary) == "" || record.RecordedAt.IsZero() {
			return fmt.Errorf("dossier: gate %s requires a summary and recorded time", record.Gate)
		}
		if record.AssessmentRevision < 0 {
			return fmt.Errorf("dossier: gate %s assessment revision cannot be negative", record.Gate)
		}
		if record.AssessmentRevision <= 1 && record.Supersedes != nil {
			return fmt.Errorf("dossier: gate %s first assessment cannot supersede a prior judgment", record.Gate)
		}
		if record.AssessmentRevision > 1 {
			if record.Supersedes == nil || !validSHA256(record.Supersedes.DossierSHA256) ||
				(record.Supersedes.Status != VerificationBlocked && record.Supersedes.Status != VerificationFailed) ||
				strings.TrimSpace(record.Supersedes.Summary) == "" {
				return fmt.Errorf("dossier: gate %s reassessment must preserve the prior blocked/failed judgment and dossier digest", record.Gate)
			}
			if err := validateIdentifierList("superseded gate evidence ID", record.Supersedes.EvidenceIDs, false); err != nil {
				return fmt.Errorf("dossier: gate %s supersession: %w", record.Gate, err)
			}
		}
		if err := validateEvidenceArtifactRefs(record.EvidenceIDs, record.EvidenceArtifacts); err != nil {
			return fmt.Errorf("dossier: gate %s: %w", record.Gate, err)
		}
		if (record.Status == VerificationPassed || record.Status == VerificationFailed) && len(record.EvidenceIDs) == 0 {
			return fmt.Errorf("dossier: decided gate %s requires evidence", record.Gate)
		}
		if record.ProblemID != "" {
			if err := state.ValidateIdentifier("verification problem ID", record.ProblemID); err != nil {
				return err
			}
			if record.ProblemID != d.Problem.ID {
				return fmt.Errorf("dossier: gate %s references a different problem", record.Gate)
			}
		}
		if record.ProblemStatementSHA256 != "" {
			if !validSHA256(record.ProblemStatementSHA256) || record.ProblemStatementSHA256 != statementDigest {
				return fmt.Errorf("dossier: gate %s is not bound to the stored problem statement", record.Gate)
			}
		}
		if record.ProofSHA256 != "" && !validSHA256(record.ProofSHA256) {
			return fmt.Errorf("dossier: gate %s has an invalid proof digest", record.Gate)
		}
		if record.ArtifactSHA256 != "" && !validSHA256(record.ArtifactSHA256) {
			return fmt.Errorf("dossier: gate %s has an invalid artifact digest", record.Gate)
		}
		if record.DatasetSplitSHA256 != "" && !validSHA256(record.DatasetSplitSHA256) {
			return fmt.Errorf("dossier: gate %s has an invalid dataset-split digest", record.Gate)
		}
		for _, linkedEvidence := range []struct {
			label string
			id    string
		}{
			{label: "dataset-split", id: record.DatasetSplitEvidenceID},
			{label: "leakage-audit", id: record.LeakageAuditEvidenceID},
		} {
			if linkedEvidence.id == "" {
				continue
			}
			if err := state.ValidateIdentifier("verification "+linkedEvidence.label+" evidence ID", linkedEvidence.id); err != nil {
				return err
			}
			if !containsString(record.EvidenceIDs, linkedEvidence.id) {
				return fmt.Errorf("dossier: gate %s does not link its %s evidence ID", record.Gate, linkedEvidence.label)
			}
		}
		seenRightsSources := make(map[string]struct{}, len(record.SourceRightsAudits))
		for _, audit := range record.SourceRightsAudits {
			if audit.SourceID != "" {
				if err := state.ValidateIdentifier("verification rights source ID", audit.SourceID); err != nil {
					return err
				}
				if _, duplicate := seenRightsSources[audit.SourceID]; duplicate {
					return fmt.Errorf("dossier: gate %s contains duplicate source-rights audit %q", record.Gate, audit.SourceID)
				}
				seenRightsSources[audit.SourceID] = struct{}{}
			}
			if audit.RightsEvidenceID != "" {
				if err := state.ValidateIdentifier("verification rights evidence ID", audit.RightsEvidenceID); err != nil {
					return err
				}
				if !containsString(record.EvidenceIDs, audit.RightsEvidenceID) {
					return fmt.Errorf("dossier: gate %s does not link source-rights evidence %q", record.Gate, audit.RightsEvidenceID)
				}
			}
			if audit.RightsStatus != "" && !validRightsStatus(audit.RightsStatus) {
				return fmt.Errorf("dossier: gate %s contains an invalid source-rights status", record.Gate)
			}
			if err := validateRightsUseList(audit.RequiredUses); err != nil {
				return fmt.Errorf("dossier: gate %s has invalid required source uses: %w", record.Gate, err)
			}
			if err := validateRightsUseList(audit.AllowedUses); err != nil {
				return fmt.Errorf("dossier: gate %s has invalid allowed source uses: %w", record.Gate, err)
			}
		}
		if record.ReviewerID != "" {
			if err := state.ValidateIdentifier("verification reviewer ID", record.ReviewerID); err != nil {
				return err
			}
		}
		if record.StatementFidelity != nil {
			if record.Gate != GateStatementFidelity {
				return fmt.Errorf("dossier: gate %s carries V3 statement-fidelity evidence", record.Gate)
			}
			if err := record.StatementFidelity.Validate(d.Problem.Statement, d.Problem.LeanStatement); err != nil {
				if record.Status != VerificationBlocked {
					return fmt.Errorf("dossier: invalid V3 evidence: %w", err)
				}
			} else {
				status, _ := record.StatementFidelity.Conclusion()
				if record.GateReceipt == nil && record.Status != status || status == VerificationFailed && record.Status != VerificationFailed {
					return errors.New("dossier: V3 status does not match its persisted statement-fidelity evidence")
				}
			}
		}
		if record.Falsification != nil {
			if record.Gate != GateFalsification {
				return fmt.Errorf("dossier: gate %s carries V4 falsification evidence", record.Gate)
			}
			if err := record.Falsification.ValidateLinks(record.EvidenceIDs); err != nil {
				if record.Status != VerificationBlocked {
					return fmt.Errorf("dossier: invalid V4 evidence: %w", err)
				}
			} else {
				status, _ := record.Falsification.Conclusion()
				if record.GateReceipt == nil && record.Status != status || status == VerificationFailed && record.Status != VerificationFailed {
					return errors.New("dossier: V4 status does not match its persisted falsification evidence")
				}
			}
		}
		if record.Essentiality != nil {
			if record.Gate != GateEssentiality {
				return fmt.Errorf("dossier: gate %s carries V5 essentiality evidence", record.Gate)
			}
			if err := record.Essentiality.ValidateLinks(record.EvidenceIDs); err != nil {
				if record.Status != VerificationBlocked {
					return fmt.Errorf("dossier: invalid V5 evidence: %w", err)
				}
			} else {
				status, _ := record.Essentiality.Conclusion()
				if record.GateReceipt == nil && record.Status != status || status == VerificationFailed && record.Status != VerificationFailed {
					return errors.New("dossier: V5 status does not match its persisted ablation evidence")
				}
			}
		}
		if record.Status == VerificationPassed {
			if record.ProblemID != d.Problem.ID || record.ProblemStatementSHA256 != statementDigest {
				return fmt.Errorf("dossier: passed gate %s is not bound to this problem and statement", record.Gate)
			}
			switch record.Gate {
			case GateKernelBuild, GateAxiomAudit, GateEssentiality:
				if !validSHA256(record.ProofSHA256) {
					return fmt.Errorf("dossier: passed gate %s requires a proof digest", record.Gate)
				}
				if record.Gate == GateEssentiality && record.Essentiality == nil {
					return errors.New("dossier: passed V5 requires its persisted lemma-ablation evidence")
				}
			case GateFalsification:
				if record.Falsification == nil {
					return errors.New("dossier: passed V4 requires its persisted randomized, SMT, and negation evidence")
				}
			case GateStatementFidelity:
				if record.ReviewerID == "" || record.StatementFidelity == nil || !validSHA256(d.CatalogSnapshotSHA256) {
					return errors.New("dossier: passed V3 requires a reviewer, pinned catalog snapshot, and complete dual-check evidence schema")
				}
				if err := record.StatementFidelity.Validate(d.Problem.Statement, d.Problem.LeanStatement); err != nil {
					return fmt.Errorf("dossier: passed V3 statement-fidelity evidence is invalid: %w", err)
				}
				if record.StatementFidelity.Source.CatalogSnapshotSHA256 != d.CatalogSnapshotSHA256 {
					return errors.New("dossier: passed V3 review is not bound to the dossier's pinned catalog snapshot")
				}
				if status, _ := record.StatementFidelity.Conclusion(); record.GateReceipt == nil && status != VerificationPassed || status == VerificationFailed {
					return errors.New("dossier: passed V3 statement-fidelity evidence does not support passage")
				}
				if record.ReviewerID != record.StatementFidelity.SemanticComparison.ReviewerID {
					return errors.New("dossier: passed V3 reviewer ID does not match the semantic comparison reviewer")
				}
				for _, evidenceID := range record.StatementFidelity.EvidenceIDs() {
					if !containsString(record.EvidenceIDs, evidenceID) {
						return fmt.Errorf("dossier: passed V3 record does not link its statement-fidelity evidence %q", evidenceID)
					}
				}
			case GateProvenanceLeakage:
				if !validSHA256(record.ArtifactSHA256) || !validSHA256(record.DatasetSplitSHA256) || record.ReviewerID == "" || len(record.SourceIDs) == 0 || len(record.SourceRightsAudits) != len(record.SourceIDs) {
					return errors.New("dossier: passed V6 requires provenance, split, source-rights, and reviewer evidence")
				}
				if record.DatasetSplitEvidenceID == "" || record.LeakageAuditEvidenceID == "" {
					return errors.New("dossier: passed V6 requires linked dataset-split and leakage-audit evidence")
				}
				rightsAudits := make(map[string]SourceRightsAudit, len(record.SourceRightsAudits))
				for _, audit := range record.SourceRightsAudits {
					if audit.SourceID == "" || audit.RightsEvidenceID == "" || audit.RightsStatus != "CLEARED" || strings.TrimSpace(audit.License) == "" || len(audit.RequiredUses) == 0 || len(audit.AllowedUses) == 0 {
						return errors.New("dossier: passed V6 contains an incomplete source-rights audit")
					}
					allowedUses := make(map[string]struct{}, len(audit.AllowedUses))
					for _, use := range audit.AllowedUses {
						allowedUses[use] = struct{}{}
					}
					for _, use := range audit.RequiredUses {
						if _, ok := allowedUses[use]; !ok {
							return fmt.Errorf("dossier: V6 source %q lacks required use %q", audit.SourceID, use)
						}
					}
					rightsAudits[audit.SourceID] = audit
				}
				for _, sourceID := range record.SourceIDs {
					if _, ok := sourceIDs[sourceID]; !ok {
						return fmt.Errorf("dossier: V6 references missing source %q", sourceID)
					}
					if _, ok := rightsAudits[sourceID]; !ok {
						return fmt.Errorf("dossier: V6 has no source-rights audit for %q", sourceID)
					}
				}
			case GateLiteratureAndStatus:
				if record.ReviewerID == "" || record.Novelty == NoveltyUncertain || (record.Novelty != NoveltyOpen && record.Novelty != NoveltyKnownSolution) || len(record.Searches) == 0 || len(record.Findings) == 0 {
					return errors.New("dossier: passed V7 requires reviewed searches and a resolved novelty status")
				}
				for _, search := range record.Searches {
					if strings.TrimSpace(search.Database) == "" || strings.TrimSpace(search.Query) == "" || search.SearchedAt.IsZero() || search.EvidenceID == "" || !containsString(record.EvidenceIDs, search.EvidenceID) {
						return errors.New("dossier: passed V7 contains an incomplete literature search")
					}
				}
				for _, finding := range record.Findings {
					if strings.TrimSpace(finding) == "" {
						return errors.New("dossier: passed V7 contains an empty finding")
					}
				}
			}
		}
		seenGateSources := make(map[string]struct{}, len(record.SourceIDs))
		for _, sourceID := range record.SourceIDs {
			if err := state.ValidateIdentifier("verification source ID", sourceID); err != nil {
				return err
			}
			if _, duplicate := seenGateSources[sourceID]; duplicate {
				return fmt.Errorf("dossier: gate %s has duplicate source %q", record.Gate, sourceID)
			}
			seenGateSources[sourceID] = struct{}{}
		}
		if _, exists := gateIDs[record.Gate]; exists {
			return fmt.Errorf("dossier: duplicate verification gate %q", record.Gate)
		}
		gateIDs[record.Gate] = struct{}{}
		if err := validateReferences(record.EvidenceIDs, evidenceIDs, string(record.Gate)); err != nil {
			return err
		}
	}

	tierIDs := make(map[AudienceTier]struct{}, len(d.Expositions))
	expositionByTier := make(map[AudienceTier]Exposition, len(d.Expositions))
	for _, exposition := range d.Expositions {
		if !knownTier(exposition.Tier) {
			return fmt.Errorf("dossier: unknown exposition tier %q", exposition.Tier)
		}
		if exposition.CoreInsightID != "" {
			if err := state.ValidateIdentifier("exposition core insight ID", exposition.CoreInsightID); err != nil {
				return err
			}
		}
		if _, exists := tierIDs[exposition.Tier]; exists {
			return fmt.Errorf("dossier: duplicate exposition tier %q", exposition.Tier)
		}
		tierIDs[exposition.Tier] = struct{}{}
		expositionByTier[exposition.Tier] = exposition
	}
	evaluationTiers := make(map[AudienceTier]struct{}, len(d.ExpositionEvaluations))
	evaluationEvidence := make(map[string]AudienceTier, len(d.ExpositionEvaluations)*4)
	hasM7EvidenceManifest := false
	for _, evaluation := range d.ExpositionEvaluations {
		if evaluation.EvidenceManifestPath != "" || evaluation.EvidenceManifestSHA256 != "" {
			hasM7EvidenceManifest = true
			if evaluation.EvidenceManifestPath == "" || !validSHA256(evaluation.EvidenceManifestSHA256) ||
				strings.Contains(evaluation.EvidenceManifestPath, "\\") || strings.ContainsRune(evaluation.EvidenceManifestPath, 0) ||
				strings.HasPrefix(evaluation.EvidenceManifestPath, "/") ||
				strings.HasPrefix(evaluation.EvidenceManifestPath, "../") || evaluation.EvidenceManifestPath == ".." ||
				evaluation.EvidenceManifestPath == "." ||
				path.Clean(evaluation.EvidenceManifestPath) != evaluation.EvidenceManifestPath {
				return fmt.Errorf("dossier: %s M7 evidence manifest reference is incomplete or unsafe", evaluation.Tier)
			}
		}
		if err := evaluation.validate(); err != nil {
			return err
		}
		if evaluation.ProblemID != d.Problem.ID {
			return fmt.Errorf("dossier: %s exposition evaluation belongs to another problem", evaluation.Tier)
		}
		if _, exists := evaluationTiers[evaluation.Tier]; exists {
			return fmt.Errorf("dossier: duplicate exposition evaluation for tier %q", evaluation.Tier)
		}
		evaluationTiers[evaluation.Tier] = struct{}{}
		for _, evidenceID := range evaluation.ReviewEvidenceIDs() {
			if previousTier, exists := evaluationEvidence[evidenceID]; exists {
				return fmt.Errorf("dossier: exposition review evidence %q is reused across %s and %s tiers", evidenceID, previousTier, evaluation.Tier)
			}
			evaluationEvidence[evidenceID] = evaluation.Tier
		}
		exposition, exists := expositionByTier[evaluation.Tier]
		if !exists {
			return fmt.Errorf("dossier: %s evaluation references a missing exposition", evaluation.Tier)
		}
		digest, err := ExpositionDigest(exposition)
		if err != nil {
			return fmt.Errorf("dossier: hash %s exposition: %w", evaluation.Tier, err)
		}
		if evaluation.ExpositionSHA256 != digest {
			return fmt.Errorf("dossier: %s evaluation is not bound to the stored exposition", evaluation.Tier)
		}
		if err := evaluation.validateDecision(exposition); err != nil {
			return fmt.Errorf("dossier: %s exposition evaluation: %w", evaluation.Tier, err)
		}
		if _, exists := passingProofs[evaluation.ProofSHA256]; !exists {
			return fmt.Errorf("dossier: %s evaluation references no passing proof attempt", evaluation.Tier)
		}
		if err := validateReferences(evaluation.ReviewEvidenceIDs(), evidenceIDs, "exposition evaluation "+string(evaluation.Tier)); err != nil {
			return err
		}
	}
	if d.ExpositionWordLimits != nil {
		if err := d.ExpositionWordLimits.Validate(); err != nil {
			return err
		}
	}
	if hasM7EvidenceManifest {
		if d.ExpositionWordLimits == nil {
			return errors.New("dossier: reopened M7 evidence requires caller-pinned five-tier word limits")
		}
		if len(d.ExpositionEvaluations) != len(allAudienceTiers) {
			return errors.New("dossier: reopened M7 evidence requires all five tier evaluations")
		}
		for _, tier := range allAudienceTiers {
			found := false
			for _, evaluation := range d.ExpositionEvaluations {
				if evaluation.Tier == tier && evaluation.EvidenceManifestPath != "" && evaluation.EvidenceManifestSHA256 != "" {
					found = true
					break
				}
			}
			if !found {
				return fmt.Errorf("dossier: reopened M7 evidence is missing the %s tier manifest", tier)
			}
		}
	}
	if err := d.validateM4ReceiptReference(false); err != nil {
		return err
	}
	if err := d.validateM6StructuralMetricsReference(); err != nil {
		return err
	}
	if err := d.validateCandidateExpositionReference(statementDigest); err != nil {
		return err
	}
	if err := d.validateLocalComputationArtifactReferences(statementDigest); err != nil {
		return err
	}
	if d.Problem.Kind == "LOCAL_ARITHMETIC_TASK" {
		if d.CatalogSnapshotPath == "" || !validSHA256(d.CatalogSnapshotSHA256) {
			return errors.New("dossier: local arithmetic tasks require their exact M0 snapshot path and digest")
		}
		if len(d.Claims) > 0 || len(d.Evidence) > 0 || len(d.Attempts) > 0 || len(d.Expositions) > 0 || len(d.ExpositionEvaluations) > 0 ||
			d.M4Receipt != nil || d.M6StructuralMetrics != nil || d.CandidateExposition != nil || d.AuthorCallAccounting != nil || d.AuthorAgentRunReceipt != nil ||
			d.Argument.ClaimID != "" || d.Argument.CoreInsight != "" || d.Argument.Text != "" || d.Verdict.Status != VerdictUnresolved {
			return errors.New("dossier: local arithmetic tasks cannot claim Lean proof, exposition, M7, or resolved verdict evidence")
		}
		for _, record := range d.Verifications {
			if record.Status != VerificationPending {
				return errors.New("dossier: local arithmetic tasks cannot advance proof verification gates")
			}
		}
	}
	return nil
}

func (d Dossier) validateM6StructuralMetricsReference() error {
	ref := d.M6StructuralMetrics
	if ref == nil {
		return nil
	}
	if d.Problem.Kind == "LOCAL_ARITHMETIC_TASK" {
		return errors.New("dossier: local arithmetic tasks cannot carry Lean M6 measurements")
	}
	if ref.SchemaVersion != M6StructuralMetricsReferenceSchemaVersion || ref.Status != M6StructuralMetricsAttachedStatus || ref.EvidenceClass != M6StructuralMetricsPinnedExecutionClass {
		return errors.New("dossier: M6 structural metrics reference schema, status, or evidence class is unsupported")
	}
	if d.M4Receipt == nil || ref.M4ReceiptEvidenceID != d.M4Receipt.EvidenceID || ref.M4ReceiptSHA256 != d.M4Receipt.ReceiptSHA256 {
		return errors.New("dossier: M6 structural metrics reference does not bind the dossier's exact M4 receipt")
	}
	if !validSHA256(ref.ParentDossierSHA256) {
		return errors.New("dossier: M6 structural metrics reference requires the exact parent dossier SHA-256")
	}
	statementDigest, err := ProblemStatementDigest(d.Problem.ID, d.Problem.Statement, d.Problem.LeanStatement)
	if err != nil {
		return fmt.Errorf("dossier: compute statement digest for M6 metrics: %w", err)
	}
	if ref.ProblemStatementSHA256 != statementDigest || !validSHA256(ref.GeneratedSourceSHA256) || !validSHA256(ref.InstrumentedSourceSHA256) {
		return errors.New("dossier: M6 structural metrics statement or generated-source binding is invalid")
	}
	if !safeRelativeArtifactPath(ref.M4ReceiptRelativePath) || !strings.HasSuffix(ref.M4ReceiptRelativePath, ".json") ||
		!safeRelativeArtifactPath(ref.MetricsDirectoryPath) || strings.HasSuffix(ref.MetricsDirectoryPath, ".json") {
		return errors.New("dossier: M6 structural metrics artifact paths are incomplete or unsafe")
	}
	for label, digest := range map[string]string{
		"M4 receipt": ref.M4ReceiptSHA256, "metrics receipt": ref.MetricsReceiptSHA256,
		"run receipt": ref.RunReceiptSHA256, "run request": ref.RunRequestSHA256,
		"snapshot manifest": ref.SnapshotManifestSHA256, "stdout": ref.StdoutSHA256,
		"stderr": ref.StderrSHA256,
	} {
		if !validSHA256(digest) {
			return fmt.Errorf("dossier: M6 structural metrics reference has invalid %s SHA-256", label)
		}
	}
	if err := state.ValidateIdentifier("M6 snapshot ID", ref.SnapshotID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("M6 declaration", ref.Declaration); err != nil {
		return err
	}
	if strings.TrimSpace(ref.LeanToolchain) == "" || strings.TrimSpace(ref.LeanVersion) == "" || strings.TrimSpace(ref.ScopeNote) == "" {
		return errors.New("dossier: M6 structural metrics require toolchain, version, and scope note")
	}
	if ref.CoreExprNodes < 1 || ref.CoreExprDepth < 1 || ref.BinderNodes < 0 || ref.ConstantReferenceNodes < 0 {
		return errors.New("dossier: M6 structural metric counts are outside their valid ranges")
	}
	return nil
}

func (d Dossier) validateLocalComputationArtifactReferences(statementDigest string) error {
	seen := make(map[string]struct{}, len(d.LocalComputationArtifacts))
	for _, ref := range d.LocalComputationArtifacts {
		if ref.SchemaVersion != LocalComputationArtifactReferenceSchemaVersion {
			return fmt.Errorf("dossier: unsupported local computation reference schema %q", ref.SchemaVersion)
		}
		if d.Problem.Kind != "LOCAL_ARITHMETIC_TASK" {
			return errors.New("dossier: local computation evidence can only attach to an explicitly typed local arithmetic task")
		}
		if ref.CaseID != d.Case.ID || ref.ProblemID != d.Problem.ID ||
			ref.CatalogSnapshotSHA256 != d.CatalogSnapshotSHA256 || ref.ProblemStatementSHA256 != statementDigest {
			return errors.New("dossier: local computation reference is not bound to this exact M0 case statement")
		}
		if err := state.ValidateIdentifier("local computation artifact ID", ref.ArtifactID); err != nil {
			return err
		}
		if err := state.ValidateIdentifier("local computation tool ID", ref.ToolID); err != nil {
			return err
		}
		if err := state.ValidateIdentifier("local computation tool version", ref.ToolVersion); err != nil {
			return err
		}
		if err := state.ValidateIdentifier("local computation idempotency key", ref.IdempotencyKey); err != nil {
			return err
		}
		for label, digest := range map[string]string{
			"artifact": ref.ArtifactSHA256, "catalog snapshot": ref.CatalogSnapshotSHA256,
			"problem statement": ref.ProblemStatementSHA256, "parent dossier": ref.ParentDossierSHA256,
			"result": ref.ResultSHA256,
		} {
			if !validSHA256(digest) {
				return fmt.Errorf("dossier: local computation reference has an invalid %s SHA-256", label)
			}
		}
		if !safeRelativeArtifactPath(ref.RelativePath) || !strings.HasPrefix(ref.RelativePath, "cases/"+d.Case.ID+"/local-computations/") || !strings.HasSuffix(ref.RelativePath, ".json") {
			return errors.New("dossier: local computation artifact path is incomplete or unsafe")
		}
		if _, exists := seen[ref.ArtifactSHA256]; exists {
			return errors.New("dossier: duplicate local computation artifact reference")
		}
		seen[ref.ArtifactSHA256] = struct{}{}
	}
	return nil
}

func safeRelativeArtifactPath(value string) bool {
	return value != "" && !strings.Contains(value, "\\") && !strings.Contains(value, ":") &&
		!strings.ContainsRune(value, 0) && !strings.HasPrefix(value, "/") && value != "." && value != ".." &&
		!strings.HasPrefix(value, "../") && path.Clean(value) == value
}

func (d Dossier) validateCandidateExpositionReference(statementDigest string) error {
	ref := d.CandidateExposition
	if ref == nil {
		return nil
	}
	if ref.SchemaVersion != CandidateExpositionReferenceSchemaVersion {
		return fmt.Errorf("dossier: unsupported candidate exposition reference schema %q", ref.SchemaVersion)
	}
	if ref.Status != CandidateExpositionCandidateOnlyStatus {
		return errors.New("dossier: candidate exposition must remain candidate-only and not accepted M7")
	}
	if ref.CaseID != d.Case.ID || ref.ProblemID != d.Problem.ID || ref.ProblemStatementSHA256 != statementDigest {
		return errors.New("dossier: candidate exposition reference belongs to a different case, problem, or statement")
	}
	if strings.TrimSpace(ref.RunID) == "" {
		return errors.New("dossier: candidate exposition reference requires its parent solver run")
	}
	for label, digest := range map[string]string{
		"artifact": ref.ArtifactSHA256, "problem statement": ref.ProblemStatementSHA256,
		"proof": ref.ProofSHA256, "generated source": ref.GeneratedSourceSHA256,
		"M4 receipt": ref.M4ReceiptSHA256, "M6 metrics receipt": ref.M6MetricsReceiptSHA256,
		"M6 run receipt": ref.M6RunReceiptSHA256,
	} {
		if !validSHA256(digest) {
			return fmt.Errorf("dossier: candidate exposition reference has an invalid %s SHA-256", label)
		}
	}
	if d.M4Receipt == nil || d.M4Receipt.ReceiptSHA256 != ref.M4ReceiptSHA256 {
		return errors.New("dossier: candidate exposition reference does not bind the dossier's exact M4 receipt")
	}
	pathValue := ref.RelativePath
	if pathValue == "" || strings.Contains(pathValue, "\\") || strings.Contains(pathValue, ":") || strings.ContainsRune(pathValue, 0) ||
		strings.HasPrefix(pathValue, "/") || pathValue == "." || pathValue == ".." ||
		strings.HasPrefix(pathValue, "../") || path.Clean(pathValue) != pathValue {
		return errors.New("dossier: candidate exposition artifact path is incomplete or unsafe")
	}
	return nil
}

// ValidateReadyForDelivery enforces the full-map output contract. Every
// independent verification gate must pass and all five Expositor tiers must
// be complete before a proven result is packaged as a deliverable.
func (d Dossier) ValidateReadyForDelivery() error {
	if err := d.Validate(); err != nil {
		return err
	}
	if strings.TrimSpace(d.Problem.LeanStatement) == "" {
		return errors.New("dossier: Lean statement is required for delivery")
	}
	if strings.TrimSpace(d.Argument.CoreInsight) == "" || strings.TrimSpace(d.Argument.Text) == "" {
		return errors.New("dossier: argument and core insight are required for delivery")
	}
	if d.Verdict.Status != VerdictProven || strings.TrimSpace(d.Verdict.Summary) == "" {
		return errors.New("dossier: a proven verdict is required for delivery")
	}
	if d.AuthorCallAccounting == nil && d.AuthorAgentRunReceipt == nil {
		return errors.New("dossier: an M7 author-call cost or agent-quota receipt is required for delivery")
	}
	if receipt := d.AuthorCallAccounting; receipt != nil {
		if receipt.Start.TaskID != budget.TaskM7Expositor || receipt.Start.CandidateID != d.Problem.ID ||
			strings.TrimSpace(receipt.Start.AccountProfile) == "" || receipt.Finish.ProviderOutcome != "returned" ||
			receipt.Finish.GenerationOutcome != "complete" || receipt.Finish.DecoderOutcome != "accepted" {
			return errors.New("dossier: author-call accounting receipt is not a successful M7 call for this problem")
		}
		if receipt.Finish.EstimatedCostMicros > receipt.Finish.CostCeilingMicros {
			return fmt.Errorf("dossier: successful M7 author-call charge %d micro-USD exceeds cost ceiling %d micro-USD", receipt.Finish.EstimatedCostMicros, receipt.Finish.CostCeilingMicros)
		}
	} else {
		receipt := d.AuthorAgentRunReceipt
		if receipt.Purpose != "reviewer/expositor" || !strings.HasPrefix(strings.ToLower(strings.TrimSpace(receipt.Verdict)), "completed:") {
			return errors.New("dossier: author agent-run receipt is not a completed M7 Expositor call")
		}
	}
	verifiedAttempt := false
	for _, attempt := range d.Attempts {
		if attempt.Outcome == SolverOutcomePass {
			verifiedAttempt = true
			break
		}
	}
	if !verifiedAttempt {
		return errors.New("dossier: at least one passing solver attempt is required for delivery")
	}
	gateIDs := make(map[VerificationGate]VerificationStatus, len(d.Verifications))
	for _, record := range d.Verifications {
		gateIDs[record.Gate] = record.Status
	}
	var expectedProofSHA256 string
	var expectedCanonSnapshotSHA256 string
	var expectedPolicySHA256 string
	var expectedCoreInsightID string
	var expectedAuthorModelID string
	var expectedAuthorModelVersion string
	var expectedAuthorCallID string
	for _, tier := range allAudienceTiers {
		var found *Exposition
		for i := range d.Expositions {
			if d.Expositions[i].Tier == tier {
				found = &d.Expositions[i]
				break
			}
		}
		if found == nil || strings.TrimSpace(found.Text) == "" || strings.TrimSpace(found.CoreInsight) == "" {
			return fmt.Errorf("dossier: complete %s exposition is required for delivery", tier)
		}
		if err := state.ValidateIdentifier("exposition core insight ID", found.CoreInsightID); err != nil {
			return fmt.Errorf("dossier: %s exposition has no valid shared core insight ID: %w", tier, err)
		}
		if expectedCoreInsightID == "" {
			expectedCoreInsightID = found.CoreInsightID
		} else if found.CoreInsightID != expectedCoreInsightID {
			return errors.New("dossier: all five expositions must share one core insight ID")
		}
		var evaluation *ExpositionEvaluation
		for i := range d.ExpositionEvaluations {
			if d.ExpositionEvaluations[i].Tier == tier {
				evaluation = &d.ExpositionEvaluations[i]
				break
			}
		}
		if evaluation == nil || !evaluation.Accepted {
			return fmt.Errorf("dossier: accepted M7 evaluation is required for %s exposition", tier)
		}
		if expectedProofSHA256 == "" {
			expectedProofSHA256 = evaluation.ProofSHA256
			expectedCanonSnapshotSHA256 = evaluation.CanonSnapshotSHA256
			expectedPolicySHA256 = evaluation.PolicySHA256
			expectedAuthorModelID = evaluation.AuthorModelID
			expectedAuthorModelVersion = evaluation.AuthorModelVersion
			expectedAuthorCallID = evaluation.AuthorCallID
		} else if evaluation.ProofSHA256 != expectedProofSHA256 || evaluation.CanonSnapshotSHA256 != expectedCanonSnapshotSHA256 || evaluation.PolicySHA256 != expectedPolicySHA256 {
			return errors.New("dossier: five exposition evaluations must share one proof, canon snapshot, and policy")
		} else if evaluation.AuthorModelID != expectedAuthorModelID || evaluation.AuthorModelVersion != expectedAuthorModelVersion {
			return errors.New("dossier: five exposition evaluations must share one author model and version")
		} else if evaluation.AuthorCallID != expectedAuthorCallID {
			return errors.New("dossier: five exposition evaluations must share one author call ID")
		}
	}
	if receipt := d.AuthorCallAccounting; receipt != nil {
		if receipt.CallID != expectedAuthorCallID {
			return errors.New("dossier: author-call accounting receipt does not match the five exposition evaluations")
		}
		if receipt.Start.Model != expectedAuthorModelID || receipt.Start.ModelVersion != expectedAuthorModelVersion {
			return errors.New("dossier: author-call accounting receipt model identity does not match the five exposition evaluations")
		}
	} else {
		receipt := d.AuthorAgentRunReceipt
		if receipt.AuthorCallID() != expectedAuthorCallID {
			return errors.New("dossier: author agent-run receipt does not match the five exposition evaluations")
		}
		if receipt.Model != expectedAuthorModelID {
			return errors.New("dossier: author agent-run receipt model alias does not match the five exposition evaluations")
		}
	}
	for _, record := range d.Verifications {
		if record.Status == VerificationPassed && record.Gate != GateKernelBuild && record.Gate != GateAxiomAudit && len(record.EvidenceIDs) != len(record.EvidenceArtifacts) {
			return fmt.Errorf("dossier: passed gate %s is missing hash-pinned evidence artifacts", record.Gate)
		}
		switch record.Gate {
		case GateKernelBuild:
			if record.ProofSHA256 != expectedProofSHA256 {
				return fmt.Errorf("dossier: gate %s is not bound to the five-tier proof", record.Gate)
			}
			if strings.TrimSpace(record.LeanToolchain) == "" || strings.TrimSpace(record.ExpectedLeanToolchain) == "" {
				return errors.New("dossier: V1 is missing the observed or expected Lean toolchain")
			}
			if record.LeanToolchain != record.ExpectedLeanToolchain {
				return errors.New("dossier: V1 build toolchain does not match the pinned project toolchain")
			}
		case GateAxiomAudit, GateEssentiality:
			if record.ProofSHA256 != expectedProofSHA256 {
				return fmt.Errorf("dossier: gate %s is not bound to the five-tier proof", record.Gate)
			}
		case GateProvenanceLeakage:
			if !validSHA256(d.ProvenanceArtifactSHA256) || record.ArtifactSHA256 != d.ProvenanceArtifactSHA256 {
				return errors.New("dossier: V6 is not bound to the recorded provenance artifact")
			}
			auditedSources := make(map[string]struct{}, len(record.SourceIDs))
			for _, sourceID := range record.SourceIDs {
				auditedSources[sourceID] = struct{}{}
			}
			for _, sourceID := range d.Problem.SourceIDs {
				if _, ok := auditedSources[sourceID]; !ok {
					return fmt.Errorf("dossier: V6 did not audit problem source %q", sourceID)
				}
			}
		}
	}
	// Report independently detectable contract defects before the final gate
	// hold. This does not promote a dossier: every gate must still pass, and
	// evidence-bound checks below remain mandatory for delivery.
	for _, gate := range allVerificationGates {
		if _, exists := gateIDs[gate]; !exists {
			return fmt.Errorf("dossier: gate %s is missing", gate)
		}
	}
	for _, gate := range allVerificationGates {
		if gateIDs[gate] != VerificationPassed {
			return fmt.Errorf("dossier: gate %s has not passed", gate)
		}
	}
	if err := d.validateM4ReceiptReference(true); err != nil {
		return err
	}
	return nil
}

func (d Dossier) validateM4ReceiptReference(required bool) error {
	if d.M4Receipt == nil {
		if required {
			return errors.New("dossier: exact M4 Lean receipt reference is required for delivery")
		}
		return nil
	}
	if err := state.ValidateIdentifier("M4 receipt evidence ID", d.M4Receipt.EvidenceID); err != nil {
		return err
	}
	if !validSHA256(d.M4Receipt.ReceiptSHA256) {
		return errors.New("dossier: M4 receipt reference requires a canonical receipt SHA-256")
	}

	var kernel, axioms *VerificationRecord
	for index := range d.Verifications {
		record := &d.Verifications[index]
		switch record.Gate {
		case GateKernelBuild:
			kernel = record
		case GateAxiomAudit:
			axioms = record
		}
	}
	if kernel == nil || axioms == nil {
		return errors.New("dossier: M4 receipt reference must bind both V1 and V2")
	}
	for _, record := range []*VerificationRecord{kernel, axioms} {
		if len(record.EvidenceIDs) != 1 || record.EvidenceIDs[0] != d.M4Receipt.EvidenceID {
			return errors.New("dossier: M4 receipt reference does not match the single V1/V2 evidence ID")
		}
	}
	return nil
}

func addUnique(ids map[string]struct{}, id, kind string) error {
	if strings.TrimSpace(id) == "" {
		return fmt.Errorf("dossier: %s ID is required", kind)
	}
	if _, exists := ids[id]; exists {
		return fmt.Errorf("dossier: duplicate %s ID %q", kind, id)
	}
	ids[id] = struct{}{}
	return nil
}

func validateReferences(ids []string, known map[string]struct{}, owner string) error {
	for _, id := range ids {
		if _, ok := known[id]; !ok {
			return fmt.Errorf("dossier: %s references missing evidence %q", owner, id)
		}
	}
	return nil
}

func containsString(values []string, target string) bool {
	for _, value := range values {
		if value == target {
			return true
		}
	}
	return false
}

func validRightsStatus(value string) bool {
	switch value {
	case "UNKNOWN", "PENDING_REVIEW", "CLEARED", "RESTRICTED":
		return true
	default:
		return false
	}
}

func validateRightsUseList(values []string) error {
	seen := make(map[string]struct{}, len(values))
	for _, value := range values {
		switch value {
		case "LOCAL_STORAGE", "LOCAL_PROOF_ATTEMPT", "REFERENCE", "INDEX", "PROVIDER_INPUT", "TRAINING", "DERIVATIVE", "PUBLIC_EXPORT":
		default:
			return fmt.Errorf("unsupported source-use value %q", value)
		}
		if _, duplicate := seen[value]; duplicate {
			return fmt.Errorf("duplicate source-use value %q", value)
		}
		seen[value] = struct{}{}
	}
	return nil
}

func knownGate(gate VerificationGate) bool {
	for _, candidate := range allVerificationGates {
		if gate == candidate {
			return true
		}
	}
	return false
}

func knownTier(tier AudienceTier) bool {
	for _, candidate := range allAudienceTiers {
		if tier == candidate {
			return true
		}
	}
	return false
}
