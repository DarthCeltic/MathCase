package main

import (
	"errors"
	"fmt"
	"path/filepath"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

type dossierLeanExecutionAudit struct {
	Status           string   `json:"status"`
	EvidenceID       string   `json:"evidence_id,omitempty"`
	ReceiptSchema    string   `json:"receipt_schema,omitempty"`
	MatchedGateCount int      `json:"matched_gate_count"`
	Provenance       string   `json:"provenance,omitempty"`
	Error            string   `json:"error,omitempty"`
	Warnings         []string `json:"warnings,omitempty"`
}

// verifyDossierLeanExecutionReceipts resolves the V1/V2 claims to one exact
// receipt emitted by the shared pinned-sandbox Lean verifier. Hash consistency
// alone is insufficient: the receipt must retain the proof input and the
// verifier's captured Docker command and output.
func verifyDossierLeanExecutionReceipts(root string, dossier domain.Dossier) (*dossierLeanExecutionAudit, error) {
	audit := &dossierLeanExecutionAudit{Status: "NOT_VERIFIED"}
	if strings.TrimSpace(root) == "" {
		audit.Error = "--lean-receipt-root is required to resolve V1/V2 to actual Lean execution receipts"
		return audit, errors.New(audit.Error)
	}
	var kernel, axioms *domain.VerificationRecord
	for index := range dossier.Verifications {
		record := &dossier.Verifications[index]
		switch record.Gate {
		case domain.GateKernelBuild:
			kernel = record
		case domain.GateAxiomAudit:
			axioms = record
		}
	}
	if kernel == nil || axioms == nil || kernel.Status != domain.VerificationPassed || axioms.Status != domain.VerificationPassed {
		audit.Error = "dossier V1 and V2 must both be PASSED before execution receipt reconciliation"
		return audit, errors.New(audit.Error)
	}
	if len(kernel.EvidenceIDs) != 1 || len(axioms.EvidenceIDs) != 1 || kernel.EvidenceIDs[0] == "" || kernel.EvidenceIDs[0] != axioms.EvidenceIDs[0] {
		audit.Error = "dossier V1 and V2 must reference the same single Lean execution receipt"
		return audit, errors.New(audit.Error)
	}
	audit.EvidenceID = kernel.EvidenceIDs[0]
	if kernel.ProblemID != dossier.Problem.ID || axioms.ProblemID != dossier.Problem.ID || kernel.ProblemStatementSHA256 != axioms.ProblemStatementSHA256 || kernel.ProofSHA256 == "" || kernel.ProofSHA256 != axioms.ProofSHA256 {
		audit.Error = "dossier V1/V2 problem, statement, or proof bindings disagree"
		return audit, errors.New(audit.Error)
	}
	path := filepath.Join(root, audit.EvidenceID+".json")
	data, err := readRegularInput(path, "Lean execution receipt", maxDossierInputBytes)
	if err != nil {
		audit.Error = fmt.Sprintf("resolve Lean receipt %q: %v", audit.EvidenceID, err)
		return audit, errors.New(audit.Error)
	}
	var receipt solver.LeanVerificationReceipt
	if err := decodeStrictJSON(data, &receipt, "Lean execution receipt"); err != nil {
		audit.Error = err.Error()
		return audit, err
	}
	audit.ReceiptSchema = receipt.SchemaVersion
	if receipt.SchemaVersion != "mathcase-lean-verification-v3" {
		audit.Status = "INCOMPLETE_LEGACY_PROVENANCE"
		audit.Provenance = "EXECUTION_BOUND_RECEIPT_WITHOUT_RETAINED_INPUT_OR_DOCKER_ARGV"
		audit.Warnings = []string{"This legacy receipt records a real Lean result, but does not retain the exact proof input or outer sandbox invocation; it cannot satisfy the current M8 execution-chain gate."}
		audit.Error = fmt.Sprintf("Lean receipt schema %q lacks current input and sandbox provenance", receipt.SchemaVersion)
		return audit, errors.New(audit.Error)
	}
	if receipt.EvidenceID != audit.EvidenceID {
		audit.Error = "Lean receipt filename and embedded evidence ID differ"
		return audit, errors.New(audit.Error)
	}
	if receipt.ProblemStatementSHA256 != kernel.ProblemStatementSHA256 || receipt.ProofSHA256 != kernel.ProofSHA256 || receipt.Toolchain != kernel.LeanToolchain || receipt.Toolchain != kernel.ExpectedLeanToolchain {
		audit.Error = "Lean execution receipt does not match the exact dossier statement, proof, and toolchain pins"
		return audit, errors.New(audit.Error)
	}
	if err := solver.ValidateExecutionBoundReceipt(receipt, dossier.Problem); err != nil {
		audit.Error = err.Error()
		return audit, err
	}
	audit.Status = "VERIFIED_EXECUTION_BOUND"
	audit.Provenance = "PINNED_SANDBOX_COMMAND_AND_EXACT_INPUT_OUTPUTS_RECONCILED"
	audit.MatchedGateCount = 2
	return audit, nil
}
