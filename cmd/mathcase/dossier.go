package main

import (
	"context"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/expositor"
	"github.com/DarthCeltic/MathCase/internal/formalizer"
	"github.com/DarthCeltic/MathCase/internal/persistence"
)

const maxDossierInputBytes = 32 << 20

type dossierGateSummary struct {
	Gate   domain.VerificationGate   `json:"gate"`
	Status domain.VerificationStatus `json:"status"`
}

type dossierTierSummary struct {
	Tier               domain.AudienceTier `json:"tier"`
	ExpositionPresent  bool                `json:"exposition_present"`
	EvaluationPresent  bool                `json:"evaluation_present"`
	EvaluationAccepted bool                `json:"evaluation_accepted"`
}

type dossierEvidenceArtifactAudit struct {
	Status        string `json:"status"`
	RequiredCount int    `json:"required_count"`
	VerifiedCount int    `json:"verified_count"`
	Error         string `json:"error,omitempty"`
}

type dossierCalibrationGate struct {
	Gate          string `json:"gate"`
	Applicability string `json:"applicability"`
	Status        string `json:"status"`
	Rationale     string `json:"rationale"`
}

type dossierCalibrationState string

const (
	dossierCalibrationNotApplicable dossierCalibrationState = "NOT_APPLICABLE"
	dossierCalibrationIncomplete    dossierCalibrationState = "INCOMPLETE"
	dossierCalibrationComplete      dossierCalibrationState = "CALIBRATION-COMPLETE"
)

type dossierCalibrationAudit struct {
	State                      dossierCalibrationState  `json:"state"`
	Signed                     bool                     `json:"signed"`
	Modules                    []dossierCalibrationGate `json:"module_applicability"`
	Gates                      []dossierCalibrationGate `json:"gate_applicability"`
	M7IntegrityVerified        bool                     `json:"m7_integrity_verified"`
	M7ReviewerIdentityVerified bool                     `json:"m7_reviewer_identity_verified"`
	Missing                    []string                 `json:"missing"`
}

type dossierAccountingSummary struct {
	CallID              string `json:"call_id"`
	RunID               string `json:"run_id"`
	ProviderID          string `json:"provider_id"`
	AccountProfile      string `json:"account_profile"`
	ModelID             string `json:"model_id"`
	ModelVersion        string `json:"model_version"`
	CostCeilingMicros   int64  `json:"cost_ceiling_micros"`
	FinalChargeMicros   int64  `json:"final_charge_micros"`
	UsageReported       bool   `json:"usage_reported"`
	UsageValid          bool   `json:"usage_valid"`
	CostKnown           bool   `json:"cost_known"`
	InputTokens         int    `json:"input_tokens"`
	OutputTokens        int    `json:"output_tokens"`
	ProviderOutcome     string `json:"provider_outcome"`
	TransportOutcome    string `json:"transport_outcome"`
	GenerationOutcome   string `json:"generation_outcome"`
	DecoderOutcome      string `json:"decoder_outcome"`
	HTTPStatusCode      int    `json:"http_status_code"`
	JournalPrefixSHA256 string `json:"journal_prefix_sha256"`
	JournalPrefixBytes  int64  `json:"journal_prefix_bytes"`
	StartEvent          int64  `json:"start_event"`
	FinishEvent         int64  `json:"finish_event"`
	LedgerReconciled    bool   `json:"ledger_reconciled"`
}

type dossierAuditOutput struct {
	SchemaVersion        string                                            `json:"schema_version"`
	Status               string                                            `json:"status"`
	CaseID               string                                            `json:"case_id"`
	ProblemID            string                                            `json:"problem_id"`
	ClaimCount           int                                               `json:"claim_count"`
	SourceCount          int                                               `json:"source_count"`
	EvidenceCount        int                                               `json:"evidence_count"`
	AttemptCount         int                                               `json:"attempt_count"`
	GateStatuses         []dossierGateSummary                              `json:"gate_statuses"`
	ExpositionTiers      []dossierTierSummary                              `json:"exposition_tiers"`
	Accounting           *dossierAccountingSummary                         `json:"accounting,omitempty"`
	AgentRunReceipt      *dossierAgentRunSummary                           `json:"agent_run_receipt,omitempty"`
	EvidenceArtifacts    *dossierEvidenceArtifactAudit                     `json:"evidence_artifacts,omitempty"`
	FormalizerCandidates *formalizer.DossierFormalizerCandidateAuditReport `json:"formalizer_candidates,omitempty"`
	M7Evidence           *expositor.M7DossierEvidenceAuditReport           `json:"m7_evidence,omitempty"`
	M0CatalogSnapshot    *persistence.DossierCatalogSnapshotAudit          `json:"m0_catalog_snapshot,omitempty"`
	Calibration          *dossierCalibrationAudit                          `json:"calibration,omitempty"`
	LeanExecution        *dossierLeanExecutionAudit                        `json:"lean_execution,omitempty"`
	ReviewerTrustSHA256  string                                            `json:"reviewer_trust_registry_sha256,omitempty"`
	DeliveryReady        bool                                              `json:"delivery_ready"`
	DeliveryRefusal      string                                            `json:"delivery_refusal,omitempty"`
}

type dossierAgentRunSummary struct {
	ReceiptID           string `json:"receipt_id"`
	RunID               string `json:"run_id,omitempty"`
	Surface             string `json:"surface"`
	Model               string `json:"model"`
	TargetProblemID     string `json:"target_problem_id"`
	Purpose             string `json:"purpose"`
	Verdict             string `json:"verdict"`
	LedgerReconciled    bool   `json:"ledger_reconciled"`
	ReconciliationError string `json:"reconciliation_error,omitempty"`
}

type dossierVerifyOutput struct {
	SchemaVersion        string                                            `json:"schema_version"`
	Status               string                                            `json:"status"`
	CaseID               string                                            `json:"case_id"`
	ProblemID            string                                            `json:"problem_id"`
	DossierSHA256        string                                            `json:"dossier_sha256"`
	SignerID             string                                            `json:"signer_id"`
	SignerKeySHA256      string                                            `json:"signer_key_sha256"`
	SignedAt             time.Time                                         `json:"signed_at"`
	GateStatuses         []dossierGateSummary                              `json:"gate_statuses"`
	ExpositionTiers      []dossierTierSummary                              `json:"exposition_tiers"`
	Accounting           *dossierAccountingSummary                         `json:"accounting,omitempty"`
	AgentRunReceipt      *dossierAgentRunSummary                           `json:"agent_run_receipt,omitempty"`
	EvidenceArtifacts    *dossierEvidenceArtifactAudit                     `json:"evidence_artifacts,omitempty"`
	FormalizerCandidates *formalizer.DossierFormalizerCandidateAuditReport `json:"formalizer_candidates,omitempty"`
	M7Evidence           *expositor.M7DossierEvidenceAuditReport           `json:"m7_evidence,omitempty"`
	M0CatalogSnapshot    *persistence.DossierCatalogSnapshotAudit          `json:"m0_catalog_snapshot,omitempty"`
	LeanExecution        *dossierLeanExecutionAudit                        `json:"lean_execution,omitempty"`
	ReviewerTrustSHA256  string                                            `json:"reviewer_trust_registry_sha256,omitempty"`
}

var dossierGateOrder = []domain.VerificationGate{
	domain.GateKernelBuild,
	domain.GateAxiomAudit,
	domain.GateStatementFidelity,
	domain.GateFalsification,
	domain.GateEssentiality,
	domain.GateProvenanceLeakage,
	domain.GateLiteratureAndStatus,
}

var dossierTierOrder = []domain.AudienceTier{
	domain.TierHighSchool,
	domain.TierAssociate,
	domain.TierBachelor,
	domain.TierMaster,
	domain.TierDoctorate,
}

func runDossierAudit(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("dossier-audit", flag.ContinueOnError)
	flags.SetOutput(stderr)
	dossierPath := flags.String("dossier", "", "strict JSON file containing one MathCase dossier")
	costLedgerPath := flags.String("cost-ledger", "", "append-only JSONL cost ledger used to reconcile the M7 accounting receipt")
	agentRunLedgerPath := flags.String("agent-run-ledger", "", "append-only JSONL A1.1 run-receipt ledger used to reconcile agent-quota calls")
	evidenceRootPath := flags.String("evidence-root", "", "directory containing hash-pinned V3-V7 evidence artifacts")
	reviewerTrustPath := flags.String("reviewer-trust", "", "independently controlled pinned reviewer-attestation registry")
	leanReceiptRootPath := flags.String("lean-receipt-root", "", "directory containing execution-bound M4 Lean verification receipts")
	formalizerArtifactRootPath := flags.String("formalizer-artifact-root", "", "existing directory containing content-addressed formalizer candidate artifacts")
	m7EvidenceRootPath := flags.String("m7-evidence-root", "", "directory containing raw M7 inputs, run receipts, outputs, and five tier manifests")
	m7IdentityTrustPath := flags.String("m7-identity-trust", "", "host-controlled registry pinning exact M7 run receipts to independently reviewed principals")
	catalogSnapshotPath := flags.String("catalog-snapshot", "", "exact validated M0 catalog snapshot pinned by the dossier")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*dossierPath) == "" {
		fmt.Fprintln(stderr, "dossier-audit requires --dossier FILE and accepts no positional arguments")
		return 2
	}
	m7IdentityTrust, err := loadOptionalM7IdentityTrustRegistry(*m7IdentityTrustPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load M7 identity trust registry: %v\n", err)
		return 2
	}
	verifyReviewer, reviewerTrustSHA256, err := loadReviewerVerifier(*reviewerTrustPath, *evidenceRootPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load reviewer trust registry: %v\n", err)
		return 2
	}
	data, err := readRegularInput(*dossierPath, "dossier", maxDossierInputBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read dossier: %v\n", err)
		return 2
	}
	var dossier domain.Dossier
	if err := decodeStrictJSON(data, &dossier, "dossier"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode dossier: %v\n", err)
		return 2
	}
	if err := dossier.Validate(); err != nil {
		fmt.Fprintf(stderr, "mathcase: invalid dossier: %v\n", err)
		return 2
	}
	output := summarizeDossier(dossier)
	output.ReviewerTrustSHA256 = reviewerTrustSHA256
	m0CatalogAudit, m0CatalogErr := persistence.AuditDossierCatalogSnapshot(*catalogSnapshotPath, dossier)
	output.M0CatalogSnapshot = &m0CatalogAudit
	formalizerCandidateAudit, formalizerCandidateErr := auditDossierFormalizerCandidateArtifacts(*formalizerArtifactRootPath, dossier)
	output.FormalizerCandidates = formalizerCandidateAudit
	m7EvidenceAudit, m7EvidenceErr := auditDossierM7Evidence(*m7EvidenceRootPath, dossier, m7IdentityTrust)
	output.M7Evidence = m7EvidenceAudit
	evidenceArtifactAudit, evidenceArtifactErr := verifyDossierEvidenceArtifacts(*evidenceRootPath, dossier)
	output.EvidenceArtifacts = evidenceArtifactAudit
	leanExecutionAudit, leanExecutionErr := verifyDossierLeanExecutionReceipts(*leanReceiptRootPath, dossier)
	output.LeanExecution = leanExecutionAudit
	var agentRunReconciliationErr error
	if dossier.AuthorAgentRunReceipt != nil && strings.TrimSpace(*agentRunLedgerPath) != "" && strings.TrimSpace(*costLedgerPath) == "" {
		agentRunReconciliationErr = verifyAgentRunReceiptJSONL(*agentRunLedgerPath, *dossier.AuthorAgentRunReceipt)
		if agentRunReconciliationErr == nil {
			output.AgentRunReceipt.LedgerReconciled = true
		} else {
			output.AgentRunReceipt.ReconciliationError = agentRunReconciliationErr.Error()
		}
	}
	if err := dossier.ValidateReadyForDelivery(); err != nil {
		output.Status = "NOT_READY_FOR_DELIVERY"
		output.DeliveryRefusal = err.Error()
	} else {
		switch {
		case dossier.AuthorCallAccounting != nil:
			if strings.TrimSpace(*agentRunLedgerPath) != "" {
				output.Status = "NOT_READY_FOR_DELIVERY"
				output.DeliveryRefusal = "--agent-run-ledger cannot reconcile a cost-ledger author receipt"
			} else if strings.TrimSpace(*costLedgerPath) == "" {
				output.Status = "NOT_READY_FOR_DELIVERY"
				output.DeliveryRefusal = "dossier-audit requires --cost-ledger to reconcile the M7 author-call accounting receipt"
			} else if err := budget.VerifyCostCallReceiptJSONL(*costLedgerPath, *dossier.AuthorCallAccounting); err != nil {
				output.Status = "NOT_READY_FOR_DELIVERY"
				output.DeliveryRefusal = fmt.Sprintf("M7 author-call accounting receipt could not be reconciled: %v", err)
			} else {
				output.Status = "READY_FOR_DELIVERY"
				output.DeliveryReady = true
				output.Accounting.LedgerReconciled = true
			}
		case dossier.AuthorAgentRunReceipt != nil:
			if strings.TrimSpace(*costLedgerPath) != "" {
				output.Status = "NOT_READY_FOR_DELIVERY"
				output.DeliveryRefusal = "--cost-ledger cannot reconcile an agent-quota author receipt; use --agent-run-ledger"
			} else if strings.TrimSpace(*agentRunLedgerPath) == "" {
				output.Status = "NOT_READY_FOR_DELIVERY"
				output.DeliveryRefusal = "dossier-audit requires --agent-run-ledger to reconcile the A1.1 M7 author receipt"
			} else if agentRunReconciliationErr != nil {
				output.Status = "NOT_READY_FOR_DELIVERY"
				output.DeliveryRefusal = fmt.Sprintf("M7 agent-run receipt could not be reconciled: %v", agentRunReconciliationErr)
			} else {
				output.Status = "READY_FOR_DELIVERY"
				output.DeliveryReady = true
				output.AgentRunReceipt.LedgerReconciled = true
			}
		default:
			output.Status = "NOT_READY_FOR_DELIVERY"
			output.DeliveryRefusal = "dossier has no recognized M7 author-call receipt"
		}
	}
	if evidenceArtifactErr != nil {
		output.Status = "NOT_READY_FOR_DELIVERY"
		output.DeliveryReady = false
		message := "evidence artifact reconciliation failed: " + evidenceArtifactErr.Error()
		if output.DeliveryRefusal == "" {
			output.DeliveryRefusal = message
		} else {
			output.DeliveryRefusal += "; " + message
		}
	}
	if leanExecutionErr != nil {
		output.Status = "NOT_READY_FOR_DELIVERY"
		output.DeliveryReady = false
		message := "Lean execution receipt reconciliation failed: " + leanExecutionErr.Error()
		if output.DeliveryRefusal == "" {
			output.DeliveryRefusal = message
		} else {
			output.DeliveryRefusal += "; " + message
		}
	}
	if m7EvidenceErr != nil {
		output.Status = "NOT_READY_FOR_DELIVERY"
		output.DeliveryReady = false
		message := "M7 evidence reconciliation failed: " + m7EvidenceErr.Error()
		if output.DeliveryRefusal == "" {
			output.DeliveryRefusal = message
		} else {
			output.DeliveryRefusal += "; " + message
		}
	}
	if formalizerCandidateErr != nil {
		output.Status = "NOT_READY_FOR_DELIVERY"
		output.DeliveryReady = false
		message := "formalizer candidate artifact reconciliation failed: " + formalizerCandidateErr.Error()
		if output.DeliveryRefusal == "" {
			output.DeliveryRefusal = message
		} else {
			output.DeliveryRefusal += "; " + message
		}
	}
	if m0CatalogErr != nil {
		output.Status = "NOT_READY_FOR_DELIVERY"
		output.DeliveryReady = false
		message := "M0 catalog snapshot reconciliation failed: " + m0CatalogErr.Error()
		if output.DeliveryRefusal == "" {
			output.DeliveryRefusal = message
		} else {
			output.DeliveryRefusal += "; " + message
		}
	}
	if output.DeliveryReady {
		_, readinessErr := persistence.VerifyDossierEvidence(dossier, persistence.DossierEvidencePaths{
			GateEvidenceRoot: *evidenceRootPath, LeanReceiptRoot: *leanReceiptRootPath,
			FormalizerArtifactRoot:  *formalizerArtifactRootPath,
			M7EvidenceRoot:          *m7EvidenceRootPath,
			M7IdentityTrustRegistry: m7IdentityTrust,
			CatalogSnapshotPath:     *catalogSnapshotPath,
			CostLedgerPath:          *costLedgerPath, AgentRunLedgerPath: *agentRunLedgerPath,
			ReviewerVerifier: verifyReviewer,
		})
		if readinessErr != nil {
			output.Status = "NOT_READY_FOR_DELIVERY"
			output.DeliveryReady = false
			if output.DeliveryRefusal == "" {
				output.DeliveryRefusal = readinessErr.Error()
			} else {
				output.DeliveryRefusal += "; " + readinessErr.Error()
			}
		}
	}
	output.Calibration = assessDossierCalibration(dossier, &m0CatalogAudit, leanExecutionAudit, m7EvidenceAudit, output.DeliveryReady)
	encoded, err := json.Marshal(output)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode dossier audit: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(append(encoded, '\n')); err != nil {
		fmt.Fprintf(stderr, "mathcase: write dossier audit: %v\n", err)
		return 2
	}
	if !output.DeliveryReady {
		return 1
	}
	return 0
}

func runDossierVerify(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("dossier-verify", flag.ContinueOnError)
	flags.SetOutput(stderr)
	storeRoot := flags.String("store-root", "", "existing immutable dossier store root")
	caseID := flags.String("case-id", "", "case identity in the immutable dossier store")
	dossierSHA256 := flags.String("dossier-sha256", "", "canonical SHA-256 digest of the dossier")
	signerID := flags.String("signer-id", "", "trusted signer identity")
	trustedSignersPath := flags.String("trusted-signers", "", "JSON file containing trusted Ed25519 public keys")
	costLedgerPath := flags.String("cost-ledger", "", "append-only JSONL cost ledger used to reconcile the M7 accounting receipt")
	agentRunLedgerPath := flags.String("agent-run-ledger", "", "append-only JSONL A1.1 run-receipt ledger used to reconcile quota-funded M7 author calls")
	evidenceRootPath := flags.String("evidence-root", "", "directory containing hash-pinned V3-V7 evidence artifacts")
	reviewerTrustPath := flags.String("reviewer-trust", "", "independently controlled pinned reviewer-attestation registry")
	leanReceiptRootPath := flags.String("lean-receipt-root", "", "directory containing execution-bound M4 Lean verification receipts")
	formalizerArtifactRootPath := flags.String("formalizer-artifact-root", "", "existing directory containing content-addressed formalizer candidate artifacts")
	m7EvidenceRootPath := flags.String("m7-evidence-root", "", "directory containing raw M7 inputs, run receipts, outputs, and five tier manifests")
	m7IdentityTrustPath := flags.String("m7-identity-trust", "", "host-controlled registry pinning exact M7 run receipts to independently reviewed principals")
	catalogSnapshotPath := flags.String("catalog-snapshot", "", "exact validated M0 catalog snapshot pinned by the dossier")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*storeRoot) == "" || strings.TrimSpace(*caseID) == "" || strings.TrimSpace(*dossierSHA256) == "" || strings.TrimSpace(*signerID) == "" || strings.TrimSpace(*trustedSignersPath) == "" || strings.TrimSpace(*leanReceiptRootPath) == "" || strings.TrimSpace(*catalogSnapshotPath) == "" {
		fmt.Fprintln(stderr, "dossier-verify requires --store-root, --case-id, --dossier-sha256, --signer-id, --trusted-signers, --lean-receipt-root, and --catalog-snapshot and accepts no positional arguments")
		return 2
	}
	m7IdentityTrust, err := loadOptionalM7IdentityTrustRegistry(*m7IdentityTrustPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load M7 identity trust registry: %v\n", err)
		return 2
	}
	trusted, err := loadTrustedSigners(*trustedSignersPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load trusted signers: %v\n", err)
		return 2
	}
	verifyReviewer, reviewerTrustSHA256, err := loadReviewerVerifier(*reviewerTrustPath, *evidenceRootPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load reviewer trust registry: %v\n", err)
		return 2
	}
	store, err := openDossierStore(*storeRoot)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: open dossier store: %v\n", err)
		return 2
	}
	dossier, err := store.Get(context.Background(), *caseID, *dossierSHA256)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load signed dossier: %v\n", err)
		return 2
	}
	readiness, err := persistence.VerifyDossierEvidence(dossier, persistence.DossierEvidencePaths{
		GateEvidenceRoot: *evidenceRootPath, LeanReceiptRoot: *leanReceiptRootPath,
		FormalizerArtifactRoot:  *formalizerArtifactRootPath,
		M7EvidenceRoot:          *m7EvidenceRootPath,
		M7IdentityTrustRegistry: m7IdentityTrust,
		CatalogSnapshotPath:     *catalogSnapshotPath,
		CostLedgerPath:          *costLedgerPath, AgentRunLedgerPath: *agentRunLedgerPath,
		ReviewerVerifier: verifyReviewer,
	})
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: verify signed dossier evidence: %v\n", err)
		return 2
	}
	dossier, signature, err := store.GetSigned(context.Background(), *caseID, *dossierSHA256, *signerID, trusted, readiness)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: verify signed dossier: %v\n", err)
		return 2
	}
	evidenceArtifactAudit, err := verifyDossierEvidenceArtifacts(*evidenceRootPath, dossier)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: verify signed dossier evidence artifacts: %v\n", err)
		return 2
	}
	leanExecutionAudit, err := verifyDossierLeanExecutionReceipts(*leanReceiptRootPath, dossier)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: verify signed dossier Lean execution receipts: %v\n", err)
		return 2
	}
	m7EvidenceAudit, err := auditDossierM7Evidence(*m7EvidenceRootPath, dossier, m7IdentityTrust)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: verify signed dossier M7 evidence: %v\n", err)
		return 2
	}
	formalizerCandidateAudit, err := auditDossierFormalizerCandidateArtifacts(*formalizerArtifactRootPath, dossier)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: verify signed dossier formalizer candidates: %v\n", err)
		return 2
	}
	catalogSnapshotAudit := readiness.CatalogSnapshotAudit()
	summary := summarizeDossier(dossier)
	output := dossierVerifyOutput{
		SchemaVersion:        "mathcase-dossier-verification-v2",
		Status:               "VERIFIED_AND_LEDGER_RECONCILED",
		CaseID:               dossier.Case.ID,
		ProblemID:            dossier.Problem.ID,
		DossierSHA256:        *dossierSHA256,
		SignerID:             signature.SignerID,
		SignerKeySHA256:      signature.SignerKeySHA256,
		SignedAt:             signature.SignedAt.UTC(),
		GateStatuses:         summary.GateStatuses,
		ExpositionTiers:      summary.ExpositionTiers,
		Accounting:           summary.Accounting,
		AgentRunReceipt:      summary.AgentRunReceipt,
		EvidenceArtifacts:    evidenceArtifactAudit,
		FormalizerCandidates: formalizerCandidateAudit,
		M7Evidence:           m7EvidenceAudit,
		M0CatalogSnapshot:    &catalogSnapshotAudit,
		LeanExecution:        leanExecutionAudit,
		ReviewerTrustSHA256:  reviewerTrustSHA256,
	}
	if dossier.AuthorCallAccounting != nil {
		if strings.TrimSpace(*agentRunLedgerPath) != "" {
			fmt.Fprintln(stderr, "mathcase: --agent-run-ledger cannot reconcile a cost-ledger author receipt")
			return 2
		}
		if strings.TrimSpace(*costLedgerPath) == "" {
			fmt.Fprintln(stderr, "mathcase: signed dossier verification requires --cost-ledger for its M7 author receipt")
			return 2
		}
		if err := budget.VerifyCostCallReceiptJSONL(*costLedgerPath, *dossier.AuthorCallAccounting); err != nil {
			fmt.Fprintf(stderr, "mathcase: reconcile signed dossier M7 cost receipt: %v\n", err)
			return 2
		}
		output.Accounting.LedgerReconciled = true
	} else if dossier.AuthorAgentRunReceipt != nil {
		if strings.TrimSpace(*costLedgerPath) != "" {
			fmt.Fprintln(stderr, "mathcase: --cost-ledger cannot reconcile an agent-quota author receipt; use --agent-run-ledger")
			return 2
		}
		if strings.TrimSpace(*agentRunLedgerPath) == "" {
			fmt.Fprintln(stderr, "mathcase: signed dossier verification requires --agent-run-ledger for its M7 A1.1 receipt")
			return 2
		}
		if err := persistence.VerifyAgentRunReceiptJSONL(*agentRunLedgerPath, *dossier.AuthorAgentRunReceipt); err != nil {
			fmt.Fprintf(stderr, "mathcase: reconcile signed dossier M7 agent-run receipt: %v\n", err)
			return 2
		}
		output.AgentRunReceipt.LedgerReconciled = true
	} else {
		fmt.Fprintln(stderr, "mathcase: signed dossier has no M7 author receipt")
		return 2
	}
	encoded, err := json.Marshal(output)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode dossier verification: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(append(encoded, '\n')); err != nil {
		fmt.Fprintf(stderr, "mathcase: write dossier verification: %v\n", err)
		return 2
	}
	return 0
}

func auditDossierFormalizerCandidateArtifacts(root string, dossier domain.Dossier) (*formalizer.DossierFormalizerCandidateAuditReport, error) {
	if len(dossier.FormalizerCandidateArtifacts) == 0 {
		return &formalizer.DossierFormalizerCandidateAuditReport{Status: "NOT_PRESENT"}, nil
	}
	if strings.TrimSpace(root) == "" {
		return &formalizer.DossierFormalizerCandidateAuditReport{Status: "NOT_REOPENED"}, errors.New("--formalizer-artifact-root is required when the dossier references formalizer candidates")
	}
	store, err := formalizer.OpenArtifactStore(root)
	if err != nil {
		return &formalizer.DossierFormalizerCandidateAuditReport{Status: "NOT_REOPENED"}, err
	}
	report, err := store.AuditDossierCandidateArtifacts(context.Background(), dossier)
	if err != nil {
		return &report, err
	}
	return &report, nil
}

func summarizeDossier(dossier domain.Dossier) dossierAuditOutput {
	statuses := make(map[domain.VerificationGate]domain.VerificationStatus, len(dossier.Verifications))
	for _, record := range dossier.Verifications {
		statuses[record.Gate] = record.Status
	}
	gateSummaries := make([]dossierGateSummary, 0, len(dossierGateOrder))
	for _, gate := range dossierGateOrder {
		status, exists := statuses[gate]
		if !exists {
			status = "MISSING"
		}
		gateSummaries = append(gateSummaries, dossierGateSummary{Gate: gate, Status: status})
	}
	expositions := make(map[domain.AudienceTier]struct{}, len(dossier.Expositions))
	for _, exposition := range dossier.Expositions {
		expositions[exposition.Tier] = struct{}{}
	}
	evaluations := make(map[domain.AudienceTier]bool, len(dossier.ExpositionEvaluations))
	for _, evaluation := range dossier.ExpositionEvaluations {
		evaluations[evaluation.Tier] = evaluation.Accepted
	}
	tierSummaries := make([]dossierTierSummary, 0, len(dossierTierOrder))
	for _, tier := range dossierTierOrder {
		_, hasExposition := expositions[tier]
		accepted, hasEvaluation := evaluations[tier]
		tierSummaries = append(tierSummaries, dossierTierSummary{
			Tier: tier, ExpositionPresent: hasExposition,
			EvaluationPresent: hasEvaluation, EvaluationAccepted: hasEvaluation && accepted,
		})
	}
	output := dossierAuditOutput{
		SchemaVersion:   "mathcase-dossier-audit-v2",
		CaseID:          dossier.Case.ID,
		ProblemID:       dossier.Problem.ID,
		ClaimCount:      len(dossier.Claims),
		SourceCount:     len(dossier.Sources),
		EvidenceCount:   len(dossier.Evidence),
		AttemptCount:    len(dossier.Attempts),
		GateStatuses:    gateSummaries,
		ExpositionTiers: tierSummaries,
	}
	if receipt := dossier.AuthorCallAccounting; receipt != nil {
		finish := receipt.Finish
		output.Accounting = &dossierAccountingSummary{
			CallID: receipt.CallID, RunID: finish.RunID, ProviderID: finish.ProviderID,
			AccountProfile: finish.AccountProfile, ModelID: finish.Model, ModelVersion: finish.ModelVersion,
			CostCeilingMicros: finish.CostCeilingMicros, FinalChargeMicros: finish.EstimatedCostMicros,
			UsageReported: finish.UsageReported, UsageValid: finish.UsageValid, CostKnown: finish.CostKnown,
			InputTokens: finish.InputTokens, OutputTokens: finish.OutputTokens,
			ProviderOutcome: finish.ProviderOutcome, TransportOutcome: finish.TransportOutcome,
			GenerationOutcome: finish.GenerationOutcome, DecoderOutcome: finish.DecoderOutcome,
			HTTPStatusCode: finish.HTTPStatusCode, JournalPrefixSHA256: receipt.JournalPrefixSHA256,
			JournalPrefixBytes: receipt.JournalPrefixBytes, StartEvent: receipt.StartEvent,
			FinishEvent: receipt.FinishEvent, LedgerReconciled: false,
		}
	}
	if receipt := dossier.AuthorAgentRunReceipt; receipt != nil {
		summary := &dossierAgentRunSummary{
			ReceiptID: receipt.ReceiptID, Surface: receipt.Surface, Model: receipt.Model,
			TargetProblemID: receipt.Target.ProblemID, Purpose: receipt.Purpose, Verdict: receipt.Verdict,
		}
		if receipt.RunID != nil {
			summary.RunID = *receipt.RunID
		}
		output.AgentRunReceipt = summary
	}
	return output
}

func loadOptionalM7IdentityTrustRegistry(path string) (*expositor.M7IdentityTrustRegistry, error) {
	if strings.TrimSpace(path) == "" {
		return nil, nil
	}
	registry, _, err := expositor.LoadM7IdentityTrustRegistry(path)
	if err != nil {
		return nil, err
	}
	return registry, nil
}

func auditDossierM7Evidence(root string, dossier domain.Dossier, identityTrust *expositor.M7IdentityTrustRegistry) (*expositor.M7DossierEvidenceAuditReport, error) {
	hasManifestReference := false
	for _, evaluation := range dossier.ExpositionEvaluations {
		if evaluation.EvidenceManifestPath != "" || evaluation.EvidenceManifestSHA256 != "" {
			hasManifestReference = true
			break
		}
	}
	if !hasManifestReference {
		report, err := expositor.AuditDossierExpositionEvidenceWithIdentityTrust(dossier, nil, identityTrust)
		return &report, err
	}
	if strings.TrimSpace(root) == "" {
		return nil, errors.New("--m7-evidence-root is required when dossier M7 manifests are referenced")
	}
	evidenceRoot, err := expositor.OpenM7EvidenceRoot(root)
	if err != nil {
		return nil, err
	}
	defer evidenceRoot.Close()
	report, err := expositor.AuditDossierExpositionEvidenceWithIdentityTrust(dossier, evidenceRoot, identityTrust)
	return &report, err
}

func assessDossierCalibration(
	dossier domain.Dossier,
	m0 *persistence.DossierCatalogSnapshotAudit,
	leanExecution *dossierLeanExecutionAudit,
	m7 *expositor.M7DossierEvidenceAuditReport,
	deliveryReady bool,
) *dossierCalibrationAudit {
	report := &dossierCalibrationAudit{
		State:  dossierCalibrationNotApplicable,
		Signed: false,
	}
	if dossier.ClaimClass != domain.ClaimClassBootstrapCalibration {
		return report
	}
	report.State = dossierCalibrationIncomplete
	report.Modules = []dossierCalibrationGate{
		{Gate: "M0", Applicability: "REQUIRED", Status: "EVIDENCE_REQUIRED", Rationale: "Pin the known result, exact source, catalog snapshot, and permitted-use evidence."},
		{Gate: "M1", Applicability: "NOT_APPLICABLE", Status: "NOT_APPLICABLE", Rationale: "The calibration theorem is preselected; no target-ranking claim is made."},
		{Gate: "M2", Applicability: "NOT_APPLICABLE", Status: "NOT_APPLICABLE", Rationale: "The run tests the fixed pipeline; it does not mutate or campaign on an open problem."},
		{Gate: "M3", Applicability: "NOT_APPLICABLE", Status: "NOT_APPLICABLE", Rationale: "No taste model, training, or tuning claim is made by this plumbing dossier."},
		{Gate: "M4", Applicability: "REQUIRED", Status: "EVIDENCE_REQUIRED", Rationale: "Reopen the exact Lean execution, kernel result, and axiom audit."},
		{Gate: "M5", Applicability: "NOT_APPLICABLE", Status: "NOT_APPLICABLE", Rationale: "No retrieval-quality claim is made for a supplied known proof."},
		{Gate: "M6", Applicability: "NOT_APPLICABLE", Status: "NOT_APPLICABLE", Rationale: "No proof-elegance or rewrite-quality claim is made."},
		{Gate: "M7", Applicability: "REQUIRED", Status: "EVIDENCE_REQUIRED", Rationale: "All five tiers and independent evaluation evidence are part of the calibration deliverable."},
		{Gate: "M8", Applicability: "REQUIRED", Status: "NOT_READY_FOR_DELIVERY", Rationale: "Assemble one unsigned dossier; signing remains owner-held."},
	}
	m0Status := "MISSING"
	if m0 != nil {
		m0Status = m0.Status
	}
	setCalibrationModuleStatus(report.Modules, "M0", m0Status,
		"Status comes from the typed M0 snapshot reader, which reopens the exact statement, source identities, source rights, and local-storage eligibility.")
	m4Status := "MISSING"
	if leanExecution != nil {
		m4Status = leanExecution.Status
	}
	setCalibrationModuleStatus(report.Modules, "M4", m4Status,
		"Status comes from the typed M4 execution-receipt reader; only VERIFIED_EXECUTION_BOUND satisfies this calibration module.")
	m7Status := calibrationM7Status(dossier, m7)
	setCalibrationModuleStatus(report.Modules, "M7", m7Status,
		"Status requires reopened five-tier evidence, authenticated reviewer identity, and five recomputed accepted tier decisions.")
	m8Status := "NOT_READY_FOR_DELIVERY"
	if deliveryReady {
		m8Status = "READY_FOR_DELIVERY"
	}
	setCalibrationModuleStatus(report.Modules, "M8", m8Status,
		"Status reflects evidence delivery readiness only; this calibration artifact remains unsigned and owner signing authority is unchanged.")
	report.Gates = make([]dossierCalibrationGate, 0, len(dossierGateOrder)+1)
	statuses := make(map[domain.VerificationGate]domain.VerificationStatus, len(dossier.Verifications))
	for _, record := range dossier.Verifications {
		statuses[record.Gate] = record.Status
	}
	for _, gate := range dossierGateOrder {
		status, exists := statuses[gate]
		if !exists {
			status = "MISSING"
		}
		report.Gates = append(report.Gates, dossierCalibrationGate{
			Gate: string(gate), Applicability: "REQUIRED", Status: string(status),
			Rationale: "The known-result classification waives a novelty claim, not statement, proof, provenance, or status verification.",
		})
		if status != domain.VerificationPassed {
			report.Missing = append(report.Missing, fmt.Sprintf("%s gate is %s", gate, status))
		}
	}
	noveltyStatus := dossierNoveltyStatus(dossier)
	noveltyApplicability := "REQUIRED"
	noveltyGateStatus := string(noveltyStatus)
	if noveltyStatus == domain.NoveltyKnownSolution {
		noveltyApplicability = "NOT_APPLICABLE"
		noveltyGateStatus = "NOT_APPLICABLE"
	} else if noveltyGateStatus == "" {
		noveltyGateStatus = "MISSING"
	}
	report.Gates = append(report.Gates, dossierCalibrationGate{
		Gate: "V7_NOVELTY", Applicability: noveltyApplicability, Status: noveltyGateStatus,
		Rationale: "Only a KNOWN_SOLUTION disposition makes novelty inapplicable for this plumbing calibration; the V7 catalog/status cross-check remains required above.",
	})
	if noveltyStatus != domain.NoveltyKnownSolution {
		report.Missing = append(report.Missing, "V7 must record a source-backed KNOWN_SOLUTION disposition")
	}
	if dossier.CatalogSnapshotSHA256 == "" {
		report.Missing = append(report.Missing, "M0 catalog snapshot digest is missing")
	}
	if m0Status != "VERIFIED" {
		report.Missing = append(report.Missing, fmt.Sprintf("M0 catalog snapshot reader status is %s", m0Status))
	}
	if dossier.Problem.M0Status != "PROVEN" {
		report.Missing = append(report.Missing, "M0 known-result status is not recorded as PROVEN")
	}
	if dossier.M4Receipt == nil {
		report.Missing = append(report.Missing, "M4 exact execution receipt is not linked")
	}
	if m4Status != "VERIFIED_EXECUTION_BOUND" {
		report.Missing = append(report.Missing, fmt.Sprintf("M4 execution-receipt reader status is %s", m4Status))
	}
	if m7 != nil {
		report.M7IntegrityVerified = m7.IntegrityVerified
		report.M7ReviewerIdentityVerified = m7.ExternalIdentityAuthenticated
	}
	if m7 == nil || !m7.IntegrityVerified || m7.LegacyWithoutEvidence {
		report.Missing = append(report.Missing, "M7 raw run/output evidence is not integrity-verified")
	}
	if m7 == nil || !m7.ExternalIdentityAuthenticated {
		report.Missing = append(report.Missing, "M7 reviewer identity and independence are not authenticated")
	}
	if m7Status != "AUTHENTICATED_FIVE_TIER_ACCEPTED" {
		report.Missing = append(report.Missing, fmt.Sprintf("M7 complete five-tier evaluation status is %s", m7Status))
	}
	if !deliveryReady {
		report.Missing = append(report.Missing, "M8 delivery evidence has not passed; calibration remains unsigned and incomplete")
	}
	if len(report.Missing) == 0 && m0Status == "VERIFIED" && m4Status == "VERIFIED_EXECUTION_BOUND" &&
		m7Status == "AUTHENTICATED_FIVE_TIER_ACCEPTED" && m8Status == "READY_FOR_DELIVERY" {
		report.State = dossierCalibrationComplete
	}
	return report
}

func setCalibrationModuleStatus(modules []dossierCalibrationGate, module, status, rationale string) {
	for index := range modules {
		if modules[index].Gate == module {
			modules[index].Status = status
			modules[index].Rationale = rationale
			return
		}
	}
}

func calibrationM7Status(dossier domain.Dossier, m7 *expositor.M7DossierEvidenceAuditReport) string {
	if m7 == nil {
		return "MISSING"
	}
	if m7.LegacyWithoutEvidence {
		return "BLOCKED_NO_EVIDENCE"
	}
	if !m7.IntegrityVerified {
		return "INTEGRITY_NOT_VERIFIED"
	}
	if m7.Disposition != expositor.M7AuditAuthenticated || !m7.ExternalIdentityAuthenticated ||
		m7.BundleAudit == nil || !m7.BundleAudit.IntegrityVerified || !m7.BundleAudit.ExternalIdentityAuthenticated ||
		m7.BundleAudit.Disposition != expositor.M7AuditAuthenticated || len(m7.BundleAudit.Tiers) != len(dossierTierOrder) {
		return "IDENTITY_OR_BUNDLE_NOT_AUTHENTICATED"
	}
	if !dossierHasFiveAcceptedM7Tiers(dossier) {
		return "FIVE_TIER_NOT_ACCEPTED"
	}
	return "AUTHENTICATED_FIVE_TIER_ACCEPTED"
}

func dossierHasFiveAcceptedM7Tiers(dossier domain.Dossier) bool {
	if len(dossier.ExpositionEvaluations) != len(dossierTierOrder) {
		return false
	}
	evaluations := make(map[domain.AudienceTier]domain.ExpositionEvaluation, len(dossier.ExpositionEvaluations))
	for _, evaluation := range dossier.ExpositionEvaluations {
		if _, duplicate := evaluations[evaluation.Tier]; duplicate {
			return false
		}
		evaluations[evaluation.Tier] = evaluation
	}
	for _, tier := range dossierTierOrder {
		evaluation, ok := evaluations[tier]
		if !ok || !evaluation.Accepted || evaluation.Score <= 0 || evaluation.Refusal != "" {
			return false
		}
	}
	return true
}

func dossierNoveltyStatus(dossier domain.Dossier) domain.NoveltyStatus {
	for _, record := range dossier.Verifications {
		if record.Gate == domain.GateLiteratureAndStatus {
			return record.Novelty
		}
	}
	return domain.NoveltyOpen
}

func verifyAgentRunReceiptJSONL(path string, expected domain.AgentRunReceipt) error {
	return persistence.VerifyAgentRunReceiptJSONL(path, expected)
}
