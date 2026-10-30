// Package gateaudit reopens gate-specific V3-V7 receipts before a dossier
// assessment can be persisted or accepted at the M8 boundary. A SHA pin alone
// is never a gate receipt.
package gateaudit

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"reflect"
	"sort"
	"strings"
	"time"
	"unicode"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

const (
	V3ReceiptSchema = "mathcase-v3-gate-receipt-v1"
	V4ReceiptSchema = "mathcase-v4-gate-receipt-v1"
	V5ReceiptSchema = "mathcase-v5-gate-receipt-v1"
	V6ReceiptSchema = "mathcase-v6-gate-receipt-v1"
	V7ReceiptSchema = "mathcase-v7-gate-receipt-v1"
	maxReceiptBytes = 16 << 20
)

type Header struct {
	SchemaVersion          string                  `json:"schema_version"`
	EvidenceID             string                  `json:"evidence_id"`
	Gate                   domain.VerificationGate `json:"gate"`
	ProblemID              string                  `json:"problem_id"`
	ProblemStatementSHA256 string                  `json:"problem_statement_sha256"`
	ProofSHA256            string                  `json:"proof_sha256,omitempty"`
	RecordedAt             time.Time               `json:"recorded_at"`
}

// ProcessReceipt binds a bounded tool run to the exact problem and the raw
// output bytes. OutputPath is a confined path under the gate evidence root.
type ProcessReceipt struct {
	EvidenceID             string    `json:"evidence_id"`
	Kind                   string    `json:"kind"`
	ProblemID              string    `json:"problem_id"`
	ProblemStatementSHA256 string    `json:"problem_statement_sha256"`
	ProofSHA256            string    `json:"proof_sha256,omitempty"`
	RunID                  string    `json:"run_id"`
	StartedAt              time.Time `json:"started_at"`
	FinishedAt             time.Time `json:"finished_at"`
	ExitCode               int       `json:"exit_code"`
	InputSHA256            string    `json:"input_sha256"`
	InputPath              string    `json:"input_path"`
	OutputPath             string    `json:"output_path"`
	OutputSHA256           string    `json:"output_sha256"`
	Outcome                string    `json:"outcome"`
}

type ReviewerIdentity struct {
	ReviewerID            string `json:"reviewer_id"`
	Issuer                string `json:"issuer"`
	Subject               string `json:"subject"`
	AttestationEvidenceID string `json:"attestation_evidence_id"`
}

type V3ProbeReceipt struct {
	Probe       domain.V3BoundaryProbe `json:"probe"`
	Execution   ProcessReceipt         `json:"execution"`
	SampleIndex int                    `json:"sample_index"`
}

// V3ProbeRunInput binds one finite probe to the exact randomized-check request
// handed to Lean. The child statement digest is distinct from the parent M0
// statement digest and remains explicitly linked to the typed probe.
type V3ProbeRunInput struct {
	SchemaVersion         string                    `json:"schema_version"`
	Probe                 domain.V3BoundaryProbe    `json:"probe"`
	ProblemID             string                    `json:"problem_id"`
	ParentStatement       string                    `json:"parent_statement"`
	InstanceLeanStatement string                    `json:"instance_lean_statement"`
	Seed                  string                    `json:"seed"`
	Imports               []string                  `json:"imports"`
	Binders               []solver.LeanSampleBinder `json:"binders"`
	ClaimBody             string                    `json:"claim_body"`
	HypothesesBody        string                    `json:"hypotheses_body"`
	Cases                 [][]string                `json:"cases"`
}

type V3Receipt struct {
	Header              Header                     `json:"header"`
	CatalogSnapshotPath string                     `json:"catalog_snapshot_path"`
	SourceItemPath      string                     `json:"source_item_path"`
	LeanSourcePath      string                     `json:"lean_source_path"`
	Review              domain.V3StatementFidelity `json:"review"`
	ReviewerIdentity    ReviewerIdentity           `json:"reviewer_identity"`
	ProbeReceipts       []V3ProbeReceipt           `json:"probe_receipts"`
}

type V4Receipt struct {
	Header     Header                      `json:"header"`
	Audit      domain.V4FalsificationAudit `json:"audit"`
	Executions []ProcessReceipt            `json:"executions"`
}

type V5AblationReceipt struct {
	LemmaID                string    `json:"lemma_id"`
	EvidenceID             string    `json:"evidence_id"`
	ProblemID              string    `json:"problem_id"`
	ProblemStatementSHA256 string    `json:"problem_statement_sha256"`
	ProofSHA256            string    `json:"proof_sha256"`
	RunID                  string    `json:"run_id"`
	StartedAt              time.Time `json:"started_at"`
	FinishedAt             time.Time `json:"finished_at"`
	ExitCode               int       `json:"exit_code"`
	InputSHA256            string    `json:"input_sha256"`
	InputPath              string    `json:"input_path"`
	AblatedSourceSHA256    string    `json:"ablated_source_sha256"`
	AblatedSourcePath      string    `json:"ablated_source_path"`
	OutputPath             string    `json:"output_path"`
	OutputSHA256           string    `json:"output_sha256"`
	SearchCompleted        bool      `json:"search_completed"`
	AblatedProofClosed     bool      `json:"ablated_proof_closed"`
}

type V5Receipt struct {
	Header    Header                     `json:"header"`
	Audit     domain.V5EssentialityAudit `json:"audit"`
	Ablations []V5AblationReceipt        `json:"ablations"`
}

type V6SourceRights struct {
	Source       catalog.SourceVersion `json:"source"`
	RequiredUses []catalog.SourceUse   `json:"required_uses"`
}

type V6Receipt struct {
	Header                 Header           `json:"header"`
	CatalogSnapshotSHA256  string           `json:"catalog_snapshot_sha256"`
	CatalogSnapshotPath    string           `json:"catalog_snapshot_path"`
	ArtifactSHA256         string           `json:"artifact_sha256"`
	DatasetSplitSHA256     string           `json:"dataset_split_sha256"`
	DatasetSplitEvidenceID string           `json:"dataset_split_evidence_id"`
	LeakageAuditEvidenceID string           `json:"leakage_audit_evidence_id"`
	SourceIDs              []string         `json:"source_ids"`
	SourceRights           []V6SourceRights `json:"source_rights"`
	SplitExecution         ProcessReceipt   `json:"split_execution"`
	LeakageExecution       ProcessReceipt   `json:"leakage_execution"`
	LeakageDetected        bool             `json:"leakage_detected"`
	ReviewerID             string           `json:"reviewer_id"`
}

type V7SearchReceipt struct {
	EvidenceID             string    `json:"evidence_id"`
	ProblemID              string    `json:"problem_id"`
	ProblemStatementSHA256 string    `json:"problem_statement_sha256"`
	Database               string    `json:"database"`
	Query                  string    `json:"query"`
	SearchedAt             time.Time `json:"searched_at"`
	RunID                  string    `json:"run_id"`
	StartedAt              time.Time `json:"started_at"`
	FinishedAt             time.Time `json:"finished_at"`
	ExitCode               int       `json:"exit_code"`
	InputSHA256            string    `json:"input_sha256"`
	InputPath              string    `json:"input_path"`
	OutputPath             string    `json:"output_path"`
	OutputSHA256           string    `json:"output_sha256"`
	ResultCount            int       `json:"result_count"`
}

type V7SearchInput struct {
	SchemaVersion          string    `json:"schema_version"`
	ProblemID              string    `json:"problem_id"`
	ProblemStatementSHA256 string    `json:"problem_statement_sha256"`
	CatalogSnapshotSHA256  string    `json:"catalog_snapshot_sha256"`
	Database               string    `json:"database"`
	Query                  string    `json:"query"`
	SearchedAt             time.Time `json:"searched_at"`
}

type V7Receipt struct {
	Header                Header                          `json:"header"`
	Searches              []domain.LiteratureSearchRecord `json:"searches"`
	SearchResults         []V7SearchReceipt               `json:"search_results"`
	Findings              []string                        `json:"findings"`
	Novelty               domain.NoveltyStatus            `json:"novelty"`
	ReviewerID            string                          `json:"reviewer_id"`
	ReviewerIdentity      ReviewerIdentity                `json:"reviewer_identity"`
	CatalogSnapshotSHA256 string                          `json:"catalog_snapshot_sha256"`
	CatalogSnapshotPath   string                          `json:"catalog_snapshot_path"`
	CatalogStatus         catalog.ProblemStatus           `json:"catalog_status"`
	StatusEvidenceID      string                          `json:"status_evidence_id"`
	StatusEvidencePath    string                          `json:"status_evidence_path"`
	StatusEvidenceSHA256  string                          `json:"status_evidence_sha256"`
}

type V7CatalogStatusEvidence struct {
	SchemaVersion          string                `json:"schema_version"`
	EvidenceID             string                `json:"evidence_id"`
	ProblemID              string                `json:"problem_id"`
	ProblemStatementSHA256 string                `json:"problem_statement_sha256"`
	CatalogSnapshotSHA256  string                `json:"catalog_snapshot_sha256"`
	Status                 catalog.ProblemStatus `json:"status"`
}

type Result struct {
	Status     domain.VerificationStatus
	Summary    string
	EvidenceID string
	SHA256     string
}

// ReviewerIdentityVerifier is backed by an independently controlled trust
// source. LoadReviewerTrustRegistry provides the pinned local implementation.
// Passing nil preserves the review as BLOCKED; identity strings in a dossier
// are not authentication.
type ReviewerIdentityVerifier func(ReviewerIdentity, string) error

// Read reopens one gate-specific receipt and its output files from root. A
// blank expected digest is used by gate-assess before it records the new pin;
// M8 always supplies the previously persisted digest.
func Read(root, evidenceID, expectedSHA256 string, dossier domain.Dossier, record domain.VerificationRecord, verifyReviewer ReviewerIdentityVerifier) (Result, error) {
	if strings.TrimSpace(evidenceID) == "" {
		return Result{}, errors.New("gate receipt evidence ID is required")
	}
	_, data, err := readRootFile(root, evidenceID+".gate.json")
	if err != nil {
		return Result{}, fmt.Errorf("gate receipt %q: %w", evidenceID, err)
	}
	digest := digestBytes(data)
	if expectedSHA256 != "" && digest != expectedSHA256 {
		return Result{}, fmt.Errorf("gate receipt %q SHA-256 differs from the dossier reference", evidenceID)
	}
	result := Result{Status: domain.VerificationBlocked, EvidenceID: evidenceID, SHA256: digest}
	statementSHA, err := domain.ProblemStatementDigest(dossier.Problem.ID, dossier.Problem.Statement, dossier.Problem.LeanStatement)
	if err != nil {
		return Result{}, err
	}
	switch record.Gate {
	case domain.GateStatementFidelity:
		var receipt V3Receipt
		if err := decodeStrict(data, &receipt); err != nil {
			return Result{}, err
		}
		if err := validateHeader(receipt.Header, V3ReceiptSchema, evidenceID, domain.GateStatementFidelity, dossier, statementSHA, ""); err != nil {
			return Result{}, err
		}
		snapshot, problem, err := loadCatalogProblem(root, receipt.CatalogSnapshotPath, dossier.CatalogSnapshotSHA256, dossier.Problem.ID)
		if err != nil {
			return Result{}, fmt.Errorf("V3 catalog snapshot: %w", err)
		}
		if problem.InformalStatement != dossier.Problem.Statement || problem.LeanStatement != dossier.Problem.LeanStatement || receipt.Review.Source.CatalogSnapshotSHA256 != dossier.CatalogSnapshotSHA256 ||
			!sameStringSet(problem.SourceIDs, dossier.Problem.SourceIDs) || dossier.Problem.M0Status != "" && dossier.Problem.M0Status != string(problem.Status) ||
			!v3SourceMatchesSnapshot(receipt.Review.Source, snapshot, problem.SourceIDs) {
			return Result{}, errors.New("V3 receipt catalog statement does not match the dossier's pinned M0 item")
		}
		if record.StatementFidelity == nil || !sameJSON(receipt.Review, *record.StatementFidelity) {
			return Result{}, errors.New("V3 gate receipt review does not match the dossier's typed statement-fidelity record")
		}
		if err := receipt.Review.Validate(dossier.Problem.Statement, dossier.Problem.LeanStatement); err != nil {
			return Result{}, err
		}
		if err := validateV3PinnedSourceFiles(root, receipt); err != nil {
			return Result{}, err
		}
		if err := validateV3ProbeReceipts(root, receipt, dossier.Problem.ID, statementSHA); err != nil {
			return Result{}, err
		}
		if err := validateReviewerIdentity(receipt.ReviewerIdentity, receipt.Review.SemanticComparison.ReviewerID, record.EvidenceIDs); err != nil {
			return Result{}, err
		}
		status, summary := receipt.Review.Conclusion()
		if status == domain.VerificationPassed {
			if verifyReviewer == nil || verifyReviewer(receipt.ReviewerIdentity, statementSHA) != nil {
				status = domain.VerificationBlocked
				summary = "V3 receipt is structurally valid, but the independent reviewer identity is not authenticated by a configured trust source."
			}
		} else if status == domain.VerificationBlocked && strings.Contains(summary, "builder-authored claims") && verifyReviewer != nil && verifyReviewer(receipt.ReviewerIdentity, statementSHA) == nil {
			status, summary = domain.VerificationPassed, "V3 catalog, Lean, semantic-review and boundary-probe receipts were reopened; authenticated reviewer accepted the exact statement pair."
		}
		result.Status, result.Summary = status, summary
	case domain.GateFalsification:
		var receipt V4Receipt
		if err := decodeStrict(data, &receipt); err != nil {
			return Result{}, err
		}
		if err := validateHeader(receipt.Header, V4ReceiptSchema, evidenceID, domain.GateFalsification, dossier, statementSHA, ""); err != nil {
			return Result{}, err
		}
		if record.Falsification == nil || !sameJSON(receipt.Audit, *record.Falsification) {
			return Result{}, errors.New("V4 receipt does not match the dossier's falsification record")
		}
		if err := receipt.Audit.ValidateLinks(receipt.Audit.EvidenceIDs()); err != nil {
			return Result{}, err
		}
		if err := validateV4Executions(root, receipt, dossier.Problem.ID, statementSHA); err != nil {
			return Result{}, err
		}
		result.Status, result.Summary = v4ReceiptOutcome(receipt.Audit)
	case domain.GateEssentiality:
		var receipt V5Receipt
		if err := decodeStrict(data, &receipt); err != nil {
			return Result{}, err
		}
		if err := validateHeader(receipt.Header, V5ReceiptSchema, evidenceID, domain.GateEssentiality, dossier, statementSHA, record.ProofSHA256); err != nil {
			return Result{}, err
		}
		if record.Essentiality == nil || !sameJSON(receipt.Audit, *record.Essentiality) {
			return Result{}, errors.New("V5 receipt does not match the dossier's essentiality record")
		}
		if err := validateV5Ablations(root, receipt, statementSHA, record.ProofSHA256); err != nil {
			return Result{}, err
		}
		result.Status, result.Summary = v5ReceiptOutcome(receipt.Audit)
	case domain.GateProvenanceLeakage:
		var receipt V6Receipt
		if err := decodeStrict(data, &receipt); err != nil {
			return Result{}, err
		}
		if err := validateHeader(receipt.Header, V6ReceiptSchema, evidenceID, domain.GateProvenanceLeakage, dossier, statementSHA, ""); err != nil {
			return Result{}, err
		}
		if err := validateV6Receipt(root, receipt, dossier, record, statementSHA); err != nil {
			return Result{}, err
		}
		if receipt.LeakageDetected {
			result.Status, result.Summary = domain.VerificationFailed, "V6 typed leakage receipt reports leakage."
		} else {
			result.Status, result.Summary = domain.VerificationPassed, "V6 catalog rights, dataset split, and leakage receipts were reopened and matched."
		}
	case domain.GateLiteratureAndStatus:
		var receipt V7Receipt
		if err := decodeStrict(data, &receipt); err != nil {
			return Result{}, err
		}
		if err := validateHeader(receipt.Header, V7ReceiptSchema, evidenceID, domain.GateLiteratureAndStatus, dossier, statementSHA, ""); err != nil {
			return Result{}, err
		}
		if err := validateV7Receipt(root, receipt, dossier, record, statementSHA); err != nil {
			return Result{}, err
		}
		if receipt.Novelty == domain.NoveltyUncertain {
			result.Status, result.Summary = domain.VerificationBlocked, "V7 priority remains uncertain."
		} else if verifyReviewer == nil || verifyReviewer(receipt.ReviewerIdentity, statementSHA) != nil {
			result.Status, result.Summary = domain.VerificationBlocked, "V7 search and status receipts are structurally valid, but reviewer identity is not authenticated by a configured trust source."
		} else {
			result.Status, result.Summary = domain.VerificationPassed, "V7 dated literature results and the catalog status were reopened and matched."
		}
	default:
		return Result{}, fmt.Errorf("typed gate receipts are not supported for %q", record.Gate)
	}
	return result, nil
}

// VerifyDossierGateReceipts reopens every V3-V7 receipt referenced by a
// dossier. This is the shared typed-receipt boundary used by M8 persistence;
// matching a hash-pinned generic artifact never substitutes for a gate
// receipt, and a missing typed receipt cannot preserve a caller-authored PASS.
func VerifyDossierGateReceipts(root string, dossier domain.Dossier, verifyReviewer ReviewerIdentityVerifier) error {
	for _, record := range dossier.Verifications {
		if record.Gate != domain.GateStatementFidelity && record.Gate != domain.GateFalsification && record.Gate != domain.GateEssentiality && record.Gate != domain.GateProvenanceLeakage && record.Gate != domain.GateLiteratureAndStatus {
			continue
		}
		if record.GateReceipt == nil {
			if record.Status == domain.VerificationPassed {
				return fmt.Errorf("refuse M8 readiness for %s PASSED claim: gate-specific typed receipt is missing", record.Gate)
			}
			continue
		}
		result, err := Read(root, record.GateReceipt.EvidenceID, record.GateReceipt.ReceiptSHA256, dossier, record, verifyReviewer)
		if err != nil {
			return fmt.Errorf("reopen %s typed gate receipt: %w", record.Gate, err)
		}
		if result.Status != record.Status {
			return fmt.Errorf("%s dossier status %s differs from reopened typed receipt status %s", record.Gate, record.Status, result.Status)
		}
		if record.Status == domain.VerificationPassed && result.Status != domain.VerificationPassed {
			return fmt.Errorf("refuse M8 readiness for %s PASSED claim: typed receipt reader did not pass", record.Gate)
		}
	}
	return nil
}

func validateHeader(header Header, schema, evidenceID string, gate domain.VerificationGate, dossier domain.Dossier, statementSHA, proofSHA string) error {
	if header.SchemaVersion != schema || header.EvidenceID != evidenceID || header.Gate != gate || header.ProblemID != dossier.Problem.ID ||
		header.ProblemStatementSHA256 != statementSHA || header.ProofSHA256 != proofSHA || header.RecordedAt.IsZero() ||
		header.RecordedAt.Before(dossier.Case.CreatedAt) {
		return fmt.Errorf("%s receipt header is malformed or bound to a different problem, statement, proof, or time", gate)
	}
	return nil
}

func validateV3ProbeReceipts(root string, receipt V3Receipt, problemID, statementSHA string) error {
	if len(receipt.ProbeReceipts) != len(receipt.Review.BoundaryProbes) {
		return errors.New("V3 receipt does not contain one execution receipt per boundary probe")
	}
	byID := make(map[string]domain.V3BoundaryProbe, len(receipt.ProbeReceipts))
	for _, item := range receipt.ProbeReceipts {
		if _, exists := byID[item.Probe.EvidenceID]; exists {
			return errors.New("V3 receipt repeats a boundary probe ID")
		}
		byID[item.Probe.EvidenceID] = item.Probe
		instanceSHA, instanceErr := domain.ProblemStatementDigest(problemID, receipt.Review.Source.Statement, item.Probe.LeanInstance)
		if item.Probe.Outcome != domain.V3BoundaryConsistent || item.SampleIndex != 0 || item.Execution.EvidenceID != item.Probe.EvidenceID || item.Execution.Kind != "V3_BOUNDARY_PROBE" || item.Execution.ProblemID != problemID || instanceErr != nil || item.Execution.ProblemStatementSHA256 != instanceSHA || item.Execution.ExitCode != 0 || item.Execution.Outcome != string(item.Probe.Outcome) {
			return errors.New("V3 boundary-probe execution receipt is malformed or misbound")
		}
		if err := verifyInput(root, item.Execution.InputPath, item.Execution.InputSHA256); err != nil {
			return err
		}
		inputBytes, err := readRootBytes(root, item.Execution.InputPath)
		if err != nil {
			return err
		}
		var input V3ProbeRunInput
		if err := decodeStrict(inputBytes, &input); err != nil {
			return fmt.Errorf("decode V3 probe run input: %w", err)
		}
		if input.SchemaVersion != "mathcase-v3-probe-run-input-v1" || !sameJSON(input.Probe, item.Probe) || input.ProblemID != problemID ||
			input.ParentStatement != receipt.Review.Source.Statement || input.InstanceLeanStatement != item.Probe.LeanInstance || len(input.Binders) != 0 ||
			input.ClaimBody != item.Probe.LeanInstance || input.HypothesesBody != "True" || len(input.Cases) != 1 || len(input.Cases[0]) != 0 {
			return errors.New("V3 probe run input does not bind the typed boundary instance to the exact local Lean request")
		}
		if err := validateV3LocalLeanRun(root, receipt, problemID, statementSHA, item, input); err != nil {
			return err
		}
	}
	for _, probe := range receipt.Review.BoundaryProbes {
		if actual, ok := byID[probe.EvidenceID]; !ok || !sameJSON(actual, probe) {
			return fmt.Errorf("V3 boundary probe %q is missing or differs from its execution receipt", probe.EvidenceID)
		}
	}
	return nil
}

func validateV3PinnedSourceFiles(root string, receipt V3Receipt) error {
	for _, item := range []struct {
		label, path, expected string
	}{
		{"M0 source item", receipt.SourceItemPath, receipt.Review.Source.RawItemSHA256},
		{"Lean declaration source", receipt.LeanSourcePath, receipt.Review.Lean.SourceFileSHA256},
	} {
		if !safeRelative(item.path) {
			return fmt.Errorf("V3 %s path is not a safe evidence-root-relative path", item.label)
		}
		data, err := readRootBytes(root, item.path)
		if err != nil {
			return fmt.Errorf("V3 %s: %w", item.label, err)
		}
		if digestBytes(data) != item.expected {
			return fmt.Errorf("V3 %s bytes do not match the typed source pin", item.label)
		}
		if item.label == "Lean declaration source" && !LeanDeclarationMatches(data, receipt.Review.Lean.DeclarationName, receipt.Review.Lean.NormalizedStatement) {
			return errors.New("V3 Lean declaration type does not match the pinned M0 formal statement")
		}
	}
	return nil
}

func validateV3LocalLeanRun(root string, receipt V3Receipt, problemID, parentStatementSHA string, item V3ProbeReceipt, input V3ProbeRunInput) error {
	data, err := readRootBytes(root, item.Execution.OutputPath)
	if err != nil {
		return err
	}
	if digestBytes(data) != item.Execution.OutputSHA256 {
		return errors.New("V3 local Lean run receipt digest differs from the boundary-probe receipt")
	}
	var local solver.LeanRandomizedCheckReceipt
	if err := decodeStrict(data, &local); err != nil {
		return fmt.Errorf("decode V3 local Lean run receipt: %w", err)
	}
	probeProblem := domain.MathProblem{ID: problemID, Statement: receipt.Review.Source.Statement, LeanStatement: item.Probe.LeanInstance}
	instanceStatementSHA, err := domain.ProblemStatementDigest(problemID, probeProblem.Statement, probeProblem.LeanStatement)
	if err != nil {
		return err
	}
	if local.ProblemStatementSHA256 != instanceStatementSHA || parentStatementSHA == instanceStatementSHA {
		return errors.New("V3 local Lean run is not bound to a child instance distinct from the exact M0 statement")
	}
	if local.Seed != input.Seed || !sameJSON(local.Imports, input.Imports) || !sameJSON(local.Binders, input.Binders) ||
		local.ClaimBody != input.ClaimBody || local.HypothesesBody != input.HypothesesBody || len(local.Cases) != len(input.Cases) ||
		len(local.Cases) != 1 || !sameJSON(local.Cases[0].Values, input.Cases[0]) {
		return errors.New("V3 probe run input differs from the reopened randomized-check receipt")
	}
	if err := solver.ValidateRandomizedCheckReceipt(local, probeProblem, item.Probe.LeanInstance, [][]string{{}}); err != nil {
		return fmt.Errorf("V3 local Lean run receipt is invalid: %w", err)
	}
	if item.Execution.RunID != local.SandboxExecution.ContainerName || !item.Execution.FinishedAt.Equal(local.SandboxExecution.FinishedAtUTC) || !item.Execution.StartedAt.Equal(local.SandboxExecution.StartedAtUTC) {
		return errors.New("V3 boundary process metadata does not match the captured Lean run")
	}
	return nil
}

// LeanDeclarationMatches verifies that a pinned source file contains the named
// theorem/lemma and that its declared proposition body matches the body of the
// M0 statement after removing its explicit universal binder list. Binder
// declarations in the source header must be present in the M0 binder list.
// Human semantic review remains required; this is a source linkage check.
func LeanDeclarationMatches(source []byte, declarationName, normalizedStatement string) bool {
	code := stripLeanCommentText(string(source))
	for _, line := range strings.Split(code, "\n") {
		trimmed := strings.TrimSpace(line)
		fields := strings.Fields(trimmed)
		if len(fields) < 3 || (fields[0] != "theorem" && fields[0] != "lemma") || strings.TrimRight(fields[1], ":") != declarationName {
			continue
		}
		headerAndType := strings.TrimSpace(strings.TrimPrefix(trimmed, fields[0]+" "))
		nameAndRest := strings.TrimPrefix(headerAndType, fields[1])
		separator := topLevelIndex(nameAndRest, ':')
		if separator < 0 {
			return false
		}
		sourceBinders := compactLeanWhitespace(nameAndRest[:separator])
		typeText := strings.TrimSpace(nameAndRest[separator+1:])
		if assignment := strings.Index(typeText, ":="); assignment >= 0 {
			typeText = strings.TrimSpace(typeText[:assignment])
		}
		targetBinders, targetBody, ok := splitUniversalStatement(normalizedStatement)
		if !ok {
			return false
		}
		if sourceBinders == "" {
			return compactLeanWhitespace(typeText) == compactLeanWhitespace(normalizedStatement)
		}
		if !containsLeanTokenSequence(normalizeLeanBinderList(targetBinders), normalizeLeanBinderList(sourceBinders)) {
			return false
		}
		return compactLeanWhitespace(typeText) == compactLeanWhitespace(targetBody)
	}
	return false
}

type leanSourceScope struct {
	kind         string
	name         string
	hasVariables bool
}

// LeanDeclarationMatchesExactSource is the strict retrieval-boundary check.
// It requires one unambiguous, single-line theorem/lemma declaration in the
// pinned source item, resolves its active namespace, rejects inherited
// `variable` contexts it cannot reconstruct, and compares every declaration
// binder and the full proposition body with the M0 Lean statement. Unsupported
// source layouts fail closed; this lexical check does not replace Lean or V3.
func LeanDeclarationMatchesExactSource(source []byte, declarationName, normalizedStatement string) bool {
	if strings.TrimSpace(declarationName) != declarationName || declarationName == "" || strings.TrimSpace(normalizedStatement) == "" {
		return false
	}
	code := stripLeanCommentText(string(source))
	scopes := make([]leanSourceScope, 0, 8)
	fileVariables := false
	for _, rawLine := range strings.Split(code, "\n") {
		line := strings.TrimSpace(rawLine)
		if line == "" {
			continue
		}
		fields := strings.Fields(line)
		if len(fields) == 0 {
			continue
		}
		switch fields[0] {
		case "namespace":
			name := strings.TrimSpace(strings.TrimPrefix(line, "namespace"))
			if name == "" || strings.ContainsAny(name, "\t\r\n") {
				return false
			}
			scopes = append(scopes, leanSourceScope{kind: "namespace", name: name})
			continue
		case "section":
			name := ""
			if len(fields) > 1 {
				name = fields[1]
			}
			scopes = append(scopes, leanSourceScope{kind: "section", name: name})
			continue
		case "end":
			label := ""
			if len(fields) > 1 {
				label = fields[1]
			}
			if len(scopes) == 0 {
				return false
			}
			closeAt := len(scopes) - 1
			foundLabel := label == ""
			if label != "" {
				for index := len(scopes) - 1; index >= 0; index-- {
					if scopes[index].name == label {
						closeAt = index
						foundLabel = true
						break
					}
				}
			}
			if !foundLabel {
				return false
			}
			scopes = scopes[:closeAt]
			continue
		case "variable":
			if len(scopes) == 0 {
				fileVariables = true
			} else {
				scopes[len(scopes)-1].hasVariables = true
			}
			continue
		}

		_, keyword, ok := leanDeclarationKeyword(fields)
		if !ok {
			continue
		}
		// A declaration is accepted only when its complete header and type are
		// on one physical source line. Multiline syntax needs a Lean-backed
		// reader; guessing at its boundary here would weaken provenance.
		keywordOffset := strings.Index(line, keyword)
		if keywordOffset < 0 {
			return false
		}
		rest := strings.TrimSpace(line[keywordOffset+len(keyword):])
		nameEnd := strings.IndexAny(rest, " \t\r\n:")
		if nameEnd < 0 {
			return false
		}
		declaredName := rest[:nameEnd]
		nameForResolution := declaredName
		if universeAt := strings.Index(nameForResolution, ".{"); universeAt >= 0 {
			nameForResolution = nameForResolution[:universeAt]
		}
		rootQualified := strings.HasPrefix(nameForResolution, "_root_.")
		if rootQualified {
			nameForResolution = strings.TrimPrefix(nameForResolution, "_root_.")
		}
		if nameForResolution == "" || strings.HasPrefix(nameForResolution, ".") {
			return false
		}
		namespaceParts := make([]string, 0, len(scopes))
		hasScopedVariables := fileVariables
		for _, scope := range scopes {
			if scope.kind == "namespace" && scope.name != "" {
				namespaceParts = append(namespaceParts, scope.name)
			}
			hasScopedVariables = hasScopedVariables || scope.hasVariables
		}
		fullName := nameForResolution
		if !rootQualified && len(namespaceParts) > 0 {
			fullName = strings.Join(append(namespaceParts, nameForResolution), ".")
		}
		if fullName != declarationName {
			continue
		}
		if hasScopedVariables {
			return false
		}
		binderAndType := strings.TrimSpace(rest[nameEnd:])
		colon := topLevelLeanTokenIndex(binderAndType, ":")
		if colon < 0 {
			return false
		}
		sourceBinders := strings.TrimSpace(binderAndType[:colon])
		typeText := strings.TrimSpace(binderAndType[colon+1:])
		if assignment := topLevelLeanTokenIndex(typeText, ":="); assignment >= 0 {
			typeText = strings.TrimSpace(typeText[:assignment])
		}
		if sourceBinders == "" {
			return !strings.HasPrefix(strings.TrimSpace(normalizedStatement), "forall ") &&
				!strings.HasPrefix(strings.TrimSpace(normalizedStatement), "∀") &&
				compactLeanWhitespace(typeText) == compactLeanWhitespace(normalizedStatement)
		}
		targetBinders, targetBody, ok := splitUniversalStatement(normalizedStatement)
		return ok && normalizeLeanBinderList(sourceBinders) == normalizeLeanBinderList(targetBinders) &&
			compactLeanWhitespace(typeText) == compactLeanWhitespace(targetBody)
	}
	return false
}

func leanDeclarationKeyword(fields []string) (int, string, bool) {
	if len(fields) == 0 {
		return 0, "", false
	}
	for index, field := range fields {
		if field != "theorem" && field != "lemma" {
			continue
		}
		for _, prefix := range fields[:index] {
			switch prefix {
			case "private", "protected", "noncomputable", "unsafe", "partial":
			default:
				return 0, "", false
			}
		}
		if index+1 >= len(fields) {
			return 0, "", false
		}
		return index, field, true
	}
	return 0, "", false
}

func topLevelLeanTokenIndex(value, target string) int {
	depth := 0
	inString := false
	escaped := false
	for index := 0; index < len(value); index++ {
		character := value[index]
		if inString {
			if escaped {
				escaped = false
			} else if character == '\\' {
				escaped = true
			} else if character == '"' {
				inString = false
			}
			continue
		}
		if character == '"' {
			inString = true
			continue
		}
		if depth == 0 && strings.HasPrefix(value[index:], target) {
			return index
		}
		switch character {
		case '{', '(', '[':
			depth++
		case '}', ')', ']':
			depth--
			if depth < 0 {
				return -1
			}
		}
	}
	return -1
}

// normalizeLeanBinderList removes the explicit grouping parentheses that Lean
// requires around declaration binders, while preserving parentheses inside a
// binder's type and preserving implicit binder braces. The M0 form writes
// explicit universal binders without declaration-level grouping, so compare
// their contents rather than their surface grouping syntax.
func normalizeLeanBinderList(value string) string {
	runes := []rune(value)
	removed := make(map[int]struct{})
	for index, character := range runes {
		if character != '(' {
			continue
		}
		previous := index - 1
		for previous >= 0 && unicode.IsSpace(runes[previous]) {
			previous--
		}
		if previous >= 0 && runes[previous] != '}' && runes[previous] != ')' {
			continue
		}
		depth, close := 0, -1
		for cursor := index; cursor < len(runes); cursor++ {
			switch runes[cursor] {
			case '(':
				depth++
			case ')':
				depth--
				if depth == 0 {
					close = cursor
					cursor = len(runes)
				}
			}
		}
		if close < 0 {
			continue
		}
		next := close + 1
		for next < len(runes) && unicode.IsSpace(runes[next]) {
			next++
		}
		if next < len(runes) && runes[next] != '{' && runes[next] != '(' {
			continue
		}
		removed[index] = struct{}{}
		removed[close] = struct{}{}
	}
	var normalized strings.Builder
	for index, character := range runes {
		if _, skip := removed[index]; !skip {
			normalized.WriteRune(character)
		}
	}
	return compactLeanWhitespace(normalized.String())
}

func containsLeanTokenSequence(haystack, needle string) bool {
	haystackTokens := leanTokens(haystack)
	needleTokens := leanTokens(needle)
	if len(needleTokens) == 0 || len(needleTokens) > len(haystackTokens) {
		return false
	}
	for start := 0; start+len(needleTokens) <= len(haystackTokens); start++ {
		matched := true
		for offset, token := range needleTokens {
			if haystackTokens[start+offset] != token {
				matched = false
				break
			}
		}
		if matched {
			return true
		}
	}
	return false
}

func leanTokens(value string) []string {
	tokens := make([]string, 0)
	var identifier strings.Builder
	flush := func() {
		if identifier.Len() == 0 {
			return
		}
		tokens = append(tokens, identifier.String())
		identifier.Reset()
	}
	for _, character := range value {
		if unicode.IsLetter(character) || unicode.IsNumber(character) || character == '_' || character == '\'' {
			identifier.WriteRune(character)
			continue
		}
		flush()
		if unicode.IsSpace(character) {
			continue
		}
		tokens = append(tokens, string(character))
	}
	flush()
	return tokens
}

func splitUniversalStatement(statement string) (binders, body string, ok bool) {
	trimmed := strings.TrimSpace(statement)
	prefix := ""
	switch {
	case strings.HasPrefix(trimmed, "∀"):
		prefix = "∀"
	case strings.HasPrefix(trimmed, "forall "):
		prefix = "forall"
	default:
		return "", "", false
	}
	remainder := strings.TrimSpace(trimmed[len(prefix):])
	comma := topLevelIndex(remainder, ',')
	if comma < 0 {
		return "", "", false
	}
	binders = strings.TrimSpace(remainder[:comma])
	body = strings.TrimSpace(remainder[comma+1:])
	return binders, body, body != ""
}

func topLevelIndex(value string, target rune) int {
	depth := 0
	for offset, character := range value {
		switch character {
		case '{', '(', '[':
			depth++
		case '}', ')', ']':
			depth--
		default:
			if character == target && depth == 0 {
				return offset
			}
		}
	}
	return -1
}

func compactLeanWhitespace(value string) string {
	return strings.Join(strings.Fields(value), " ")
}

func stripLeanCommentText(source string) string {
	output := []byte(source)
	const (
		codeState = iota
		lineCommentState
		blockCommentState
		stringState
	)
	state, blockDepth := codeState, 0
	escaped := false
	for index := 0; index < len(source); index++ {
		if state == lineCommentState {
			if source[index] == '\n' {
				state = codeState
			} else {
				output[index] = ' '
			}
			continue
		}
		if state == blockCommentState {
			if index+1 < len(source) && source[index:index+2] == "/-" {
				output[index], output[index+1] = ' ', ' '
				blockDepth++
				index++
				continue
			}
			if index+1 < len(source) && source[index:index+2] == "-/" {
				output[index], output[index+1] = ' ', ' '
				blockDepth--
				index++
				if blockDepth == 0 {
					state = codeState
				}
				continue
			}
			if source[index] != '\n' {
				output[index] = ' '
			}
			continue
		}
		if state == stringState {
			if escaped {
				escaped = false
				continue
			}
			if source[index] == '\\' {
				escaped = true
				continue
			}
			if source[index] == '"' {
				state = codeState
			}
			continue
		}
		if index+1 < len(source) && source[index:index+2] == "--" {
			output[index], output[index+1] = ' ', ' '
			index++
			state = lineCommentState
			continue
		}
		if index+1 < len(source) && source[index:index+2] == "/-" {
			output[index], output[index+1] = ' ', ' '
			index++
			state = blockCommentState
			blockDepth = 1
			continue
		}
		if source[index] == '"' {
			state = stringState
		}
	}
	return string(output)
}

func validateV4Executions(root string, receipt V4Receipt, problemID, statementSHA string) error {
	want := make(map[string]string)
	if receipt.Audit.HypothesesPresent {
		want[receipt.Audit.HypothesisEvidenceID] = "HYPOTHESIS"
	}
	want[receipt.Audit.RandomizedEvidenceID] = "RANDOMIZED"
	want[receipt.Audit.SMTEvidenceID] = "SMT"
	for _, id := range receipt.Audit.NegationSearchEvidenceIDs {
		want[id] = "NEGATION"
	}
	if len(want) != len(receipt.Executions) {
		return errors.New("V4 receipt does not contain exactly one run receipt for each required search")
	}
	seen := make(map[string]struct{}, len(receipt.Executions))
	for _, run := range receipt.Executions {
		kind, ok := want[run.EvidenceID]
		if !ok || kind != run.Kind {
			return fmt.Errorf("V4 run receipt %q has the wrong search role", run.EvidenceID)
		}
		if _, duplicate := seen[run.EvidenceID]; duplicate {
			return errors.New("V4 receipt repeats a run evidence ID")
		}
		seen[run.EvidenceID] = struct{}{}
		if err := validateProcess(run, domain.GateFalsification, problemID, statementSHA, ""); err != nil {
			return err
		}
		if run.ExitCode != 0 {
			return fmt.Errorf("V4 search %q did not exit successfully", run.EvidenceID)
		}
		if err := verifyInput(root, run.InputPath, run.InputSHA256); err != nil {
			return err
		}
		if err := verifyOutput(root, run.OutputPath, run.OutputSHA256); err != nil {
			return err
		}
	}
	return nil
}

func v4ReceiptOutcome(audit domain.V4FalsificationAudit) (domain.VerificationStatus, string) {
	status, summary := audit.Conclusion()
	if status == domain.VerificationFailed {
		return status, summary
	}
	if status == domain.VerificationBlocked && strings.Contains(summary, "typed falsification claims do not prove") {
		return domain.VerificationPassed, "V4 bounded searches have execution-bound typed receipts; absence of a counterexample is not a proof of truth."
	}
	return status, summary
}

func v5ReceiptOutcome(audit domain.V5EssentialityAudit) (domain.VerificationStatus, string) {
	status, summary := audit.Conclusion()
	if status == domain.VerificationFailed {
		return status, summary
	}
	if status == domain.VerificationBlocked && strings.Contains(summary, "typed ablation claims do not prove") {
		return domain.VerificationPassed, "V5 ablation runs and their exact proof/source inputs and outputs were reopened; every required lemma ablation failed to close the proof."
	}
	return status, summary
}

func validateV5Ablations(root string, receipt V5Receipt, statementSHA, proofSHA string) error {
	if len(receipt.Ablations) != len(receipt.Audit.Ablations) || len(receipt.Ablations) == 0 {
		return errors.New("V5 receipt does not contain an execution receipt for every ablation")
	}
	byLemma := make(map[string]V5AblationReceipt, len(receipt.Ablations))
	for _, run := range receipt.Ablations {
		if _, duplicate := byLemma[run.LemmaID]; duplicate {
			return errors.New("V5 receipt repeats a lemma ablation")
		}
		if run.ProblemID != receipt.Header.ProblemID || run.ProblemStatementSHA256 != statementSHA || run.ProofSHA256 != proofSHA || !validRun(run.RunID, run.StartedAt, run.FinishedAt, run.ExitCode, run.InputSHA256, run.InputPath, run.OutputSHA256, run.OutputPath) || run.ExitCode != 0 {
			return errors.New("V5 ablation run is malformed or bound to a different proof")
		}
		if err := verifyInput(root, run.InputPath, run.InputSHA256); err != nil {
			return err
		}
		if err := verifyOutput(root, run.AblatedSourcePath, run.AblatedSourceSHA256); err != nil {
			return err
		}
		if err := verifyOutput(root, run.OutputPath, run.OutputSHA256); err != nil {
			return err
		}
		byLemma[run.LemmaID] = run
	}
	for _, ablation := range receipt.Audit.Ablations {
		run, ok := byLemma[ablation.LemmaID]
		if !ok || run.EvidenceID != ablation.EvidenceID || run.AblatedSourceSHA256 != ablation.AblatedSourceSHA256 || run.SearchCompleted != ablation.SearchCompleted || run.AblatedProofClosed != ablation.AblatedProofClosed {
			return fmt.Errorf("V5 ablation %q does not match its execution receipt", ablation.LemmaID)
		}
	}
	return nil
}

func validateV6Receipt(root string, receipt V6Receipt, dossier domain.Dossier, record domain.VerificationRecord, statementSHA string) error {
	if receipt.CatalogSnapshotSHA256 != dossier.CatalogSnapshotSHA256 || receipt.ArtifactSHA256 != dossier.ProvenanceArtifactSHA256 || receipt.ArtifactSHA256 != record.ArtifactSHA256 ||
		receipt.DatasetSplitSHA256 != record.DatasetSplitSHA256 || receipt.DatasetSplitEvidenceID != record.DatasetSplitEvidenceID || receipt.LeakageAuditEvidenceID != record.LeakageAuditEvidenceID ||
		!sameJSON(receipt.SourceIDs, record.SourceIDs) {
		return errors.New("V6 receipt does not match the dossier's M0, provenance, split, or source-rights pins")
	}
	snapshot, _, err := loadCatalogProblem(root, receipt.CatalogSnapshotPath, dossier.CatalogSnapshotSHA256, dossier.Problem.ID)
	if err != nil {
		return fmt.Errorf("V6 catalog snapshot: %w", err)
	}
	if err := validateSourceRightsAgainstCatalog(snapshot, receipt, record); err != nil {
		return err
	}
	if err := validateProcess(receipt.SplitExecution, domain.GateProvenanceLeakage, dossier.Problem.ID, statementSHA, ""); err != nil {
		return err
	}
	if receipt.SplitExecution.EvidenceID != receipt.DatasetSplitEvidenceID || receipt.SplitExecution.Kind != "DATASET_SPLIT" {
		return errors.New("V6 dataset-split receipt identity or role is invalid")
	}
	if err := validateProcess(receipt.LeakageExecution, domain.GateProvenanceLeakage, dossier.Problem.ID, statementSHA, ""); err != nil {
		return err
	}
	if receipt.LeakageExecution.EvidenceID != receipt.LeakageAuditEvidenceID || receipt.LeakageExecution.Kind != "LEAKAGE_AUDIT" {
		return errors.New("V6 leakage receipt identity or role is invalid")
	}
	for _, run := range []ProcessReceipt{receipt.SplitExecution, receipt.LeakageExecution} {
		if run.ExitCode != 0 {
			return errors.New("V6 provenance computation did not exit successfully")
		}
		if err := verifyInput(root, run.InputPath, run.InputSHA256); err != nil {
			return err
		}
		if err := verifyOutput(root, run.OutputPath, run.OutputSHA256); err != nil {
			return err
		}
	}
	if len(receipt.SourceRights) != len(receipt.SourceIDs) {
		return errors.New("V6 receipt lacks item-level rights for each source")
	}
	for _, item := range receipt.SourceRights {
		if !contains(receipt.SourceIDs, item.Source.ID) || item.Source.Rights != catalog.RightsCleared || item.Source.Validate() != nil || len(item.RequiredUses) == 0 {
			return fmt.Errorf("V6 source %q has incomplete or uncleared rights evidence", item.Source.ID)
		}
		for _, use := range item.RequiredUses {
			if !item.Source.EligibleFor(use) {
				return fmt.Errorf("V6 source %q is not cleared for %s", item.Source.ID, use)
			}
		}
	}
	return nil
}

func validateV7Receipt(root string, receipt V7Receipt, dossier domain.Dossier, record domain.VerificationRecord, statementSHA string) error {
	if !sameJSON(receipt.Searches, record.Searches) || !sameJSON(receipt.Findings, record.Findings) || receipt.Novelty != record.Novelty || receipt.ReviewerID != record.ReviewerID || receipt.CatalogSnapshotSHA256 != dossier.CatalogSnapshotSHA256 || receipt.StatusEvidenceID == "" {
		return errors.New("V7 receipt does not match the dossier's searches, findings, or catalog pins")
	}
	if err := validateReviewerIdentity(receipt.ReviewerIdentity, receipt.ReviewerID, record.EvidenceIDs); err != nil {
		return fmt.Errorf("V7 reviewer identity: %w", err)
	}
	snapshot, problem, err := loadCatalogProblem(root, receipt.CatalogSnapshotPath, dossier.CatalogSnapshotSHA256, dossier.Problem.ID)
	if err != nil {
		return fmt.Errorf("V7 catalog snapshot: %w", err)
	}
	if receipt.CatalogSnapshotSHA256 != snapshot.ContentSHA256 || receipt.CatalogStatus != problem.Status || dossier.Problem.M0Status != string(problem.Status) {
		return errors.New("V7 catalog status does not match the reopened pinned M0 problem")
	}
	statusBytes, err := readRootBytes(root, receipt.StatusEvidencePath)
	if err != nil {
		return fmt.Errorf("V7 status evidence: %w", err)
	}
	if digestBytes(statusBytes) != receipt.StatusEvidenceSHA256 {
		return errors.New("V7 raw status evidence digest differs from its receipt")
	}
	var statusEvidence V7CatalogStatusEvidence
	if err := decodeStrict(statusBytes, &statusEvidence); err != nil {
		return fmt.Errorf("decode V7 catalog status evidence: %w", err)
	}
	if statusEvidence.SchemaVersion != "mathcase-v7-catalog-status-evidence-v1" || statusEvidence.EvidenceID != receipt.StatusEvidenceID || statusEvidence.ProblemID != dossier.Problem.ID || statusEvidence.ProblemStatementSHA256 != statementSHA || statusEvidence.CatalogSnapshotSHA256 != snapshot.ContentSHA256 || statusEvidence.Status != problem.Status {
		return errors.New("V7 catalog status evidence is malformed or misbound")
	}
	if !contains(record.EvidenceIDs, receipt.StatusEvidenceID) {
		return errors.New("V7 catalog status evidence is not linked by the dossier record")
	}
	if len(receipt.SearchResults) != len(record.Searches) {
		return errors.New("V7 receipt lacks a raw result artifact for every dated search")
	}
	for index, result := range receipt.SearchResults {
		search := record.Searches[index]
		if result.EvidenceID != search.EvidenceID || result.ProblemID != dossier.Problem.ID || result.ProblemStatementSHA256 != statementSHA || result.Database != search.Database || result.Query != search.Query || !result.SearchedAt.Equal(search.SearchedAt) || result.ResultCount < 0 || !validRun(result.RunID, result.StartedAt, result.FinishedAt, result.ExitCode, result.InputSHA256, result.InputPath, result.OutputSHA256, result.OutputPath) || result.ExitCode != 0 {
			return errors.New("V7 search receipt is malformed or misbound")
		}
		if err := verifyInput(root, result.InputPath, result.InputSHA256); err != nil {
			return err
		}
		inputBytes, err := readRootBytes(root, result.InputPath)
		if err != nil {
			return err
		}
		expectedInput, err := json.Marshal(V7SearchInput{
			SchemaVersion: "mathcase-v7-search-input-v1", ProblemID: dossier.Problem.ID,
			ProblemStatementSHA256: statementSHA, CatalogSnapshotSHA256: snapshot.ContentSHA256,
			Database: search.Database, Query: search.Query, SearchedAt: search.SearchedAt,
		})
		if err != nil || !bytes.Equal(inputBytes, expectedInput) {
			return errors.New("V7 raw search input does not match the dated query in the dossier")
		}
		if err := verifyOutput(root, result.OutputPath, result.OutputSHA256); err != nil {
			return err
		}
	}
	return nil
}

func validateReviewerIdentity(identity ReviewerIdentity, expectedSubject string, evidenceIDs []string) error {
	if strings.TrimSpace(identity.ReviewerID) == "" || identity.ReviewerID != expectedSubject || strings.TrimSpace(identity.Issuer) == "" ||
		strings.TrimSpace(identity.Subject) == "" || identity.Subject != expectedSubject ||
		strings.TrimSpace(identity.AttestationEvidenceID) == "" || !contains(evidenceIDs, identity.AttestationEvidenceID) {
		return errors.New("reviewer identity is incomplete, does not match the recorded reviewer, or lacks a linked attestation artifact")
	}
	return nil
}

func v3SourceMatchesSnapshot(pin domain.V3SourceStatementPin, snapshot catalog.Snapshot, sourceIDs []string) bool {
	for _, source := range snapshot.Sources {
		if !contains(sourceIDs, source.ID) {
			continue
		}
		if source.URL == pin.URL && source.ItemLocator == pin.ItemLocator && source.Revision == pin.Revision && source.ContentSHA256 == pin.RawItemSHA256 {
			return true
		}
	}
	return false
}

func validateProcess(run ProcessReceipt, gate domain.VerificationGate, problemID, statementSHA, proofSHA string) error {
	if run.EvidenceID == "" || run.Kind == "" || run.ProblemID != problemID || run.ProblemStatementSHA256 != statementSHA || run.ProofSHA256 != proofSHA || !validRun(run.RunID, run.StartedAt, run.FinishedAt, run.ExitCode, run.InputSHA256, run.InputPath, run.OutputSHA256, run.OutputPath) {
		return fmt.Errorf("%s process receipt is incomplete or misbound", gate)
	}
	return nil
}

func validRun(id string, started, finished time.Time, exit int, inputSHA, inputPath, outputSHA, outputPath string) bool {
	return strings.TrimSpace(id) != "" && !started.IsZero() && !finished.Before(started) && exit >= 0 && validDigest(inputSHA) && safeRelative(inputPath) && validDigest(outputSHA) && safeRelative(outputPath)
}

func verifyInput(root, relative, expectedSHA string) error {
	data, err := readRootBytes(root, relative)
	if err != nil {
		return err
	}
	if digestBytes(data) != expectedSHA {
		return fmt.Errorf("raw input %q does not match its typed receipt digest", relative)
	}
	return nil
}

func verifyOutput(root, relative, expectedSHA string) error {
	data, err := readRootBytes(root, relative)
	if err != nil {
		return err
	}
	if digestBytes(data) != expectedSHA {
		return fmt.Errorf("raw output %q does not match its typed receipt digest", relative)
	}
	return nil
}

func readRootBytes(root, relative string) ([]byte, error) {
	_, data, err := readRootFile(root, relative)
	return data, err
}

func readRootFile(root, relative string) (string, []byte, error) {
	if !safeRelative(relative) {
		return "", nil, errors.New("gate receipt path must be a safe relative path")
	}
	abs, err := filepath.Abs(root)
	if err != nil {
		return "", nil, err
	}
	baseInfo, err := os.Lstat(abs)
	if err != nil || baseInfo.Mode()&os.ModeSymlink != 0 || !baseInfo.IsDir() {
		return "", nil, errors.New("gate evidence root must be a regular non-symlink directory")
	}
	path := filepath.Join(abs, filepath.FromSlash(relative))
	current := abs
	rel := filepath.Clean(filepath.FromSlash(relative))
	parts := strings.Split(rel, string(os.PathSeparator))
	for index, part := range parts {
		current = filepath.Join(current, part)
		info, statErr := os.Lstat(current)
		if statErr != nil {
			return "", nil, statErr
		}
		if info.Mode()&os.ModeSymlink != 0 || index < len(parts)-1 && !info.IsDir() {
			return "", nil, errors.New("gate evidence path contains a symlink or non-directory parent")
		}
		if index == len(parts)-1 && !info.Mode().IsRegular() {
			return "", nil, errors.New("gate evidence file is not regular")
		}
	}
	file, err := os.Open(path)
	if err != nil {
		return "", nil, err
	}
	defer file.Close()
	data, err := io.ReadAll(io.LimitReader(file, maxReceiptBytes+1))
	if err != nil || len(data) == 0 || len(data) > maxReceiptBytes {
		return "", nil, errors.New("gate evidence file is empty or exceeds the size limit")
	}
	return path, data, nil
}

func safeRelative(value string) bool {
	if value == "" || filepath.IsAbs(value) || filepath.VolumeName(value) != "" || strings.ContainsAny(value, "\x00\r\n") {
		return false
	}
	clean := filepath.Clean(filepath.FromSlash(value))
	return clean != "." && clean != ".." && !strings.HasPrefix(clean, ".."+string(os.PathSeparator))
}

func decodeStrict(data []byte, destination any) error {
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(destination); err != nil {
		return err
	}
	var extra any
	if err := decoder.Decode(&extra); !errors.Is(err, io.EOF) {
		if err == nil {
			return errors.New("trailing JSON document")
		}
		return err
	}
	return nil
}

func sameJSON(left, right any) bool {
	leftBytes, leftErr := json.Marshal(left)
	rightBytes, rightErr := json.Marshal(right)
	return leftErr == nil && rightErr == nil && reflect.DeepEqual(leftBytes, rightBytes)
}

func validateSourceRightsAgainstCatalog(snapshot catalog.Snapshot, receipt V6Receipt, record domain.VerificationRecord) error {
	if len(receipt.SourceRights) != len(receipt.SourceIDs) || len(record.SourceRightsAudits) != len(receipt.SourceRights) {
		return errors.New("V6 receipt lacks an exact item-level rights record for each source")
	}
	snapshotSources := make(map[string]catalog.SourceVersion, len(snapshot.Sources))
	for _, source := range snapshot.Sources {
		snapshotSources[source.ID] = source
	}
	byAudit := make(map[string]domain.SourceRightsAudit, len(record.SourceRightsAudits))
	for _, audit := range record.SourceRightsAudits {
		if _, duplicate := byAudit[audit.SourceID]; duplicate {
			return fmt.Errorf("V6 dossier repeats source-rights audit %q", audit.SourceID)
		}
		byAudit[audit.SourceID] = audit
	}
	seen := make(map[string]struct{}, len(receipt.SourceRights))
	for _, item := range receipt.SourceRights {
		id := item.Source.ID
		if _, duplicate := seen[id]; duplicate {
			return fmt.Errorf("V6 receipt repeats source-rights record %q", id)
		}
		seen[id] = struct{}{}
		pinned, exists := snapshotSources[id]
		if !exists || !sameJSON(item.Source, pinned) {
			return fmt.Errorf("V6 source %q does not match the pinned M0 source version", id)
		}
		audit, exists := byAudit[id]
		if !exists || audit.RightsStatus != string(item.Source.Rights) || audit.RightsEvidenceID != item.Source.RightsEvidenceID || audit.License != item.Source.License || !sameStringSet(audit.AllowedUses, sourceUsesToStrings(item.Source.AllowedUses)) || !sameStringSet(audit.RequiredUses, sourceUsesToStrings(item.RequiredUses)) {
			return fmt.Errorf("V6 source %q does not match the dossier's item-level rights audit", id)
		}
		if item.Source.Rights != catalog.RightsCleared || item.Source.Validate() != nil || len(item.RequiredUses) == 0 {
			return fmt.Errorf("V6 source %q has incomplete or uncleared rights evidence", id)
		}
		for _, use := range item.RequiredUses {
			if !item.Source.EligibleFor(use) {
				return fmt.Errorf("V6 source %q is not cleared for %s", id, use)
			}
		}
	}
	return nil
}

func sourceUsesToStrings(uses []catalog.SourceUse) []string {
	values := make([]string, len(uses))
	for index, use := range uses {
		values[index] = string(use)
	}
	return values
}

func sameStringSet(left, right []string) bool {
	leftCopy, rightCopy := append([]string(nil), left...), append([]string(nil), right...)
	sort.Strings(leftCopy)
	sort.Strings(rightCopy)
	return reflect.DeepEqual(leftCopy, rightCopy)
}

func loadCatalogProblem(root, relative, expectedSHA, problemID string) (catalog.Snapshot, catalog.Problem, error) {
	data, err := readRootBytes(root, relative)
	if err != nil {
		return catalog.Snapshot{}, catalog.Problem{}, err
	}
	var snapshot catalog.Snapshot
	if err := decodeStrict(data, &snapshot); err != nil {
		return catalog.Snapshot{}, catalog.Problem{}, fmt.Errorf("decode pinned catalog snapshot: %w", err)
	}
	if err := snapshot.Validate(); err != nil {
		return catalog.Snapshot{}, catalog.Problem{}, fmt.Errorf("validate pinned catalog snapshot: %w", err)
	}
	if expectedSHA == "" || snapshot.ContentSHA256 != expectedSHA {
		return catalog.Snapshot{}, catalog.Problem{}, errors.New("pinned catalog content digest differs from the dossier")
	}
	for _, problem := range snapshot.Problems {
		if problem.ID == problemID {
			return snapshot, problem, nil
		}
	}
	return catalog.Snapshot{}, catalog.Problem{}, fmt.Errorf("pinned catalog snapshot does not contain problem %q", problemID)
}

func contains(values []string, target string) bool {
	for _, value := range values {
		if value == target {
			return true
		}
	}
	return false
}
func validDigest(value string) bool {
	if len(value) != 64 || strings.ToLower(value) != value {
		return false
	}
	_, err := hex.DecodeString(value)
	return err == nil
}
func digestBytes(value []byte) string { sum := sha256.Sum256(value); return hex.EncodeToString(sum[:]) }
