package persistence

import (
	"bytes"
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"io/fs"
	"path/filepath"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/expositor"
	"github.com/DarthCeltic/MathCase/internal/formalizer"
	"github.com/DarthCeltic/MathCase/internal/gateaudit"
	"github.com/DarthCeltic/MathCase/internal/solver"
	"github.com/DarthCeltic/MathCase/internal/state"
)

// DossierEvidencePaths names the external evidence needed to cross the M8
// persistence boundary. A dossier's own status flags and hashes are not enough
// to establish delivery readiness.
type DossierEvidencePaths struct {
	GateEvidenceRoot        string
	LeanReceiptRoot         string
	FormalizerArtifactRoot  string
	M7EvidenceRoot          string
	CatalogSnapshotPath     string
	CostLedgerPath          string
	AgentRunLedgerPath      string
	ReviewerVerifier        gateaudit.ReviewerIdentityVerifier
	M7IdentityTrustRegistry *expositor.M7IdentityTrustRegistry
}

// VerifiedDossierEvidence is an opaque, dossier-bound proof that the external
// M0 catalog snapshot, M4/M7 receipts, and hash-pinned gate artifacts were
// reopened successfully.
// Production APIs reopen those same paths again at their boundary and compare
// the fresh receipt digests, so this value cannot go stale between calls.
// Its fields are intentionally private: callers cannot manufacture a passing
// value by setting booleans or copying an evidence ID.
type VerifiedDossierEvidence struct {
	dossierSHA256         string
	leanReceiptSHA256     string
	catalogSnapshotSHA256 string
	m7ReceiptID           string
	m7EvidenceSHA256      string
	gateArtifactCount     int
	catalogSnapshotAudit  DossierCatalogSnapshotAudit
	paths                 DossierEvidencePaths
}

// CatalogSnapshotAudit returns the M0 source audit bound to this verification.
func (evidence VerifiedDossierEvidence) CatalogSnapshotAudit() DossierCatalogSnapshotAudit {
	return evidence.catalogSnapshotAudit
}

// VerifyDossierEvidence reopens all external evidence required by the CLI
// delivery audit. It validates the dossier's structural contract, the exact
// M0 catalog snapshot, execution-bound M4 receipt, M7 author-call ledger
// record, and every hash-pinned V3-V7 artifact. The resulting proof is bound
// to these exact canonical dossier bytes and must be supplied to production
// signing and signed-storage APIs.
func VerifyDossierEvidence(dossier domain.Dossier, paths DossierEvidencePaths) (VerifiedDossierEvidence, error) {
	if err := verifyDossierTypedGateReceipts(paths.GateEvidenceRoot, dossier, paths.ReviewerVerifier); err != nil {
		return VerifiedDossierEvidence{}, err
	}
	if err := dossier.ValidateReadyForDelivery(); err != nil {
		return VerifiedDossierEvidence{}, fmt.Errorf("persistence: dossier is not structurally ready: %w", err)
	}
	if _, err := verifyDossierFormalizerCandidateArtifacts(paths.FormalizerArtifactRoot, dossier); err != nil {
		return VerifiedDossierEvidence{}, fmt.Errorf("persistence: reconcile dossier formalizer candidates: %w", err)
	}
	m7ReceiptID := ""
	switch {
	case dossier.AuthorCallAccounting != nil:
		if strings.TrimSpace(paths.CostLedgerPath) == "" {
			return VerifiedDossierEvidence{}, errors.New("persistence: M7 cost ledger is required to reconcile the author-call receipt")
		}
		if err := budget.VerifyCostCallReceiptJSONL(paths.CostLedgerPath, *dossier.AuthorCallAccounting); err != nil {
			return VerifiedDossierEvidence{}, fmt.Errorf("persistence: reconcile M7 author-call cost receipt: %w", err)
		}
		m7ReceiptID = dossier.AuthorCallAccounting.CallID
	case dossier.AuthorAgentRunReceipt != nil:
		if strings.TrimSpace(paths.AgentRunLedgerPath) == "" {
			return VerifiedDossierEvidence{}, errors.New("persistence: A1.1 run ledger is required to reconcile the M7 author receipt")
		}
		if err := dossier.AuthorAgentRunReceipt.ValidateForFutureRun(); err != nil {
			return VerifiedDossierEvidence{}, fmt.Errorf("persistence: M7 author receipt is not a current run receipt: %w", err)
		}
		if err := VerifyAgentRunReceiptJSONL(paths.AgentRunLedgerPath, *dossier.AuthorAgentRunReceipt); err != nil {
			return VerifiedDossierEvidence{}, fmt.Errorf("persistence: reconcile M7 author run receipt: %w", err)
		}
		m7ReceiptID = dossier.AuthorAgentRunReceipt.ReceiptID
	default:
		return VerifiedDossierEvidence{}, errors.New("persistence: M7 author receipt is required for M8 readiness")
	}
	if strings.TrimSpace(paths.GateEvidenceRoot) == "" {
		return VerifiedDossierEvidence{}, errors.New("persistence: gate evidence root is required for M8 readiness")
	}
	gateCount, err := verifyDossierGateArtifacts(paths.GateEvidenceRoot, dossier)
	if err != nil {
		return VerifiedDossierEvidence{}, fmt.Errorf("persistence: reconcile dossier gate artifacts: %w", err)
	}
	if strings.TrimSpace(paths.LeanReceiptRoot) == "" {
		return VerifiedDossierEvidence{}, errors.New("persistence: Lean receipt root is required for M8 readiness")
	}
	leanReceiptSHA256, err := verifyDossierLeanReceipt(paths.LeanReceiptRoot, dossier)
	if err != nil {
		return VerifiedDossierEvidence{}, fmt.Errorf("persistence: reconcile dossier M4 execution receipt: %w", err)
	}
	m7EvidenceSHA256, err := verifyDossierM7Evidence(paths.M7EvidenceRoot, dossier, paths.M7IdentityTrustRegistry)
	if err != nil {
		return VerifiedDossierEvidence{}, fmt.Errorf("persistence: reconcile dossier M7 evidence: %w", err)
	}
	catalogAudit, err := AuditDossierCatalogSnapshot(paths.CatalogSnapshotPath, dossier)
	if err != nil {
		return VerifiedDossierEvidence{}, fmt.Errorf("persistence: reconcile dossier M0 catalog snapshot: %w", err)
	}

	dossierSHA256, err := canonicalDossierSHA256(dossier)
	if err != nil {
		return VerifiedDossierEvidence{}, err
	}
	return VerifiedDossierEvidence{
		dossierSHA256: dossierSHA256, leanReceiptSHA256: leanReceiptSHA256,
		catalogSnapshotSHA256: catalogAudit.RawFileSHA256,
		m7ReceiptID:           m7ReceiptID, m7EvidenceSHA256: m7EvidenceSHA256,
		gateArtifactCount: gateCount, catalogSnapshotAudit: catalogAudit, paths: paths,
	}, nil
}

func verifyDossierFormalizerCandidateArtifacts(root string, dossier domain.Dossier) (int, error) {
	if len(dossier.FormalizerCandidateArtifacts) == 0 {
		return 0, nil
	}
	if strings.TrimSpace(root) == "" {
		return 0, errors.New("formalizer artifact root is required when the dossier references formalizer candidates")
	}
	store, err := formalizer.OpenArtifactStore(root)
	if err != nil {
		return 0, err
	}
	report, err := store.AuditDossierCandidateArtifacts(context.Background(), dossier)
	if err != nil {
		return 0, err
	}
	if report.Status != "REOPENED_ALL" || report.CandidateCount != len(dossier.FormalizerCandidateArtifacts) {
		return 0, errors.New("formalizer candidate artifact reader did not reopen every dossier reference")
	}
	return report.CandidateCount, nil
}

func verifyDossierM7Evidence(root string, dossier domain.Dossier, identityTrust *expositor.M7IdentityTrustRegistry) (string, error) {
	hasManifestReference := false
	for _, evaluation := range dossier.ExpositionEvaluations {
		if evaluation.EvidenceManifestPath != "" || evaluation.EvidenceManifestSHA256 != "" {
			hasManifestReference = true
			break
		}
	}
	if hasManifestReference && strings.TrimSpace(root) == "" {
		return "", errors.New("M7 evidence root is required for manifest-bearing dossier evaluations")
	}
	var evidenceFS fs.FS
	var closeEvidenceRoot func() error
	if strings.TrimSpace(root) != "" {
		opened, err := expositor.OpenM7EvidenceRoot(root)
		if err != nil {
			return "", err
		}
		evidenceFS = opened
		closeEvidenceRoot = opened.Close
		defer closeEvidenceRoot()
	}
	var report expositor.M7DossierEvidenceAuditReport
	var err error
	if evidenceFS == nil {
		report, err = expositor.AuditDossierExpositionEvidenceWithIdentityTrust(dossier, nil, identityTrust)
	} else {
		report, err = expositor.AuditDossierExpositionEvidenceWithIdentityTrust(dossier, evidenceFS, identityTrust)
	}
	if err != nil {
		return "", err
	}
	if report.LegacyWithoutEvidence || !report.IntegrityVerified ||
		!report.ExternalIdentityAuthenticated || report.Disposition != expositor.M7AuditAuthenticated || identityTrust == nil {
		return "", errors.New("M7 evidence is incomplete or reviewer identity is not authenticated")
	}
	encoded, err := json.Marshal(report)
	if err != nil {
		return "", fmt.Errorf("encode M7 evidence audit report: %w", err)
	}
	return sha256Hex(encoded), nil
}

// verifyDossierTypedGateReceipts prevents caller-authored gate records from
// becoming M8 readiness evidence merely because their artifact bytes match
// caller-supplied hashes. Each PASS is re-judged from its gate-specific typed
// receipt; a missing, malformed, or misbound receipt fails closed.
func verifyDossierTypedGateReceipts(root string, dossier domain.Dossier, verifyReviewer gateaudit.ReviewerIdentityVerifier) error {
	if err := gateaudit.VerifyDossierGateReceipts(root, dossier, verifyReviewer); err != nil {
		return fmt.Errorf("persistence: %w", err)
	}
	return nil
}

func requireVerifiedDossierEvidence(dossier domain.Dossier, evidence []VerifiedDossierEvidence) error {
	if len(evidence) != 1 {
		return errors.New("persistence: exactly one reopened M8 evidence proof is required")
	}
	dossierSHA256, err := canonicalDossierSHA256(dossier)
	if err != nil {
		return err
	}
	proof := evidence[0]
	if proof.dossierSHA256 == "" || proof.dossierSHA256 != dossierSHA256 || proof.leanReceiptSHA256 == "" ||
		proof.catalogSnapshotSHA256 == "" ||
		proof.m7ReceiptID == "" || proof.m7EvidenceSHA256 == "" || proof.gateArtifactCount == 0 {
		return errors.New("persistence: reopened M8 evidence proof is empty or bound to a different dossier")
	}
	fresh, err := VerifyDossierEvidence(dossier, proof.paths)
	if err != nil {
		return fmt.Errorf("persistence: reopen M8 evidence at API boundary: %w", err)
	}
	if fresh.dossierSHA256 != proof.dossierSHA256 || fresh.leanReceiptSHA256 != proof.leanReceiptSHA256 ||
		fresh.catalogSnapshotSHA256 != proof.catalogSnapshotSHA256 ||
		fresh.m7ReceiptID != proof.m7ReceiptID || fresh.m7EvidenceSHA256 != proof.m7EvidenceSHA256 ||
		fresh.gateArtifactCount != proof.gateArtifactCount {
		return errors.New("persistence: external M8 evidence changed after verification")
	}
	return nil
}

func verifyDossierLeanReceipt(root string, dossier domain.Dossier) (string, error) {
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
		return "", errors.New("V1 and V2 must both pass before M4 receipt reconciliation")
	}
	if dossier.M4Receipt == nil {
		return "", errors.New("dossier is missing the typed M4 receipt digest reference")
	}
	if len(kernel.EvidenceIDs) != 1 || len(axioms.EvidenceIDs) != 1 || kernel.EvidenceIDs[0] == "" || kernel.EvidenceIDs[0] != axioms.EvidenceIDs[0] {
		return "", errors.New("V1 and V2 must reference the same single M4 receipt")
	}
	if dossier.M4Receipt.EvidenceID != kernel.EvidenceIDs[0] || !validSHA256(dossier.M4Receipt.ReceiptSHA256) {
		return "", errors.New("typed M4 receipt reference does not match the V1/V2 receipt identity or digest format")
	}
	if kernel.ProblemID != dossier.Problem.ID || axioms.ProblemID != dossier.Problem.ID ||
		kernel.ProblemStatementSHA256 == "" || kernel.ProblemStatementSHA256 != axioms.ProblemStatementSHA256 ||
		kernel.ProofSHA256 == "" || kernel.ProofSHA256 != axioms.ProofSHA256 ||
		kernel.LeanToolchain == "" || kernel.LeanToolchain != kernel.ExpectedLeanToolchain {
		return "", errors.New("V1/V2 problem, statement, proof, or toolchain bindings disagree")
	}
	evidenceID := kernel.EvidenceIDs[0]
	if err := state.ValidateIdentifier("Lean receipt evidence ID", evidenceID); err != nil {
		return "", err
	}
	data, err := readEvidenceFile(root, evidenceID+".json")
	if err != nil {
		return "", fmt.Errorf("open M4 receipt %q: %w", evidenceID, err)
	}
	digest := sha256.Sum256(data)
	digestHex := hex.EncodeToString(digest[:])
	if digestHex != dossier.M4Receipt.ReceiptSHA256 {
		return "", errors.New("M4 receipt bytes do not match the dossier's pinned receipt SHA-256")
	}
	var receipt solver.LeanVerificationReceipt
	if err := decodeStrictEvidenceJSON(data, &receipt); err != nil {
		return "", fmt.Errorf("decode M4 receipt %q: %w", evidenceID, err)
	}
	if receipt.SchemaVersion != "mathcase-lean-verification-v3" {
		return "", fmt.Errorf("M4 receipt schema %q lacks the current execution-bound input and sandbox fields", receipt.SchemaVersion)
	}
	if receipt.EvidenceID != evidenceID || receipt.ProblemID != dossier.Problem.ID ||
		receipt.ProblemStatementSHA256 != kernel.ProblemStatementSHA256 || receipt.ProofSHA256 != kernel.ProofSHA256 ||
		receipt.Toolchain != kernel.LeanToolchain || receipt.Toolchain != kernel.ExpectedLeanToolchain {
		return "", errors.New("M4 receipt does not match the exact V1/V2 problem, statement, proof, and toolchain")
	}
	if err := solver.ValidateExecutionBoundReceipt(receipt, dossier.Problem); err != nil {
		return "", err
	}
	return digestHex, nil
}

func verifyDossierGateArtifacts(root string, dossier domain.Dossier) (int, error) {
	expected := make(map[string]string)
	for _, record := range dossier.Verifications {
		for _, artifact := range record.EvidenceArtifacts {
			if previous, exists := expected[artifact.EvidenceID]; exists && previous != artifact.ArtifactSHA256 {
				return 0, fmt.Errorf("evidence ID %q has conflicting recorded digests", artifact.EvidenceID)
			}
			expected[artifact.EvidenceID] = artifact.ArtifactSHA256
		}
	}
	if len(expected) == 0 {
		return 0, errors.New("no hash-pinned V3-V7 gate artifacts are attached")
	}
	for evidenceID, expectedDigest := range expected {
		if err := state.ValidateIdentifier("gate evidence ID", evidenceID); err != nil {
			return 0, err
		}
		data, err := readEvidenceFile(root, evidenceID+".artifact")
		if err != nil {
			return 0, fmt.Errorf("open gate evidence %q: %w", evidenceID, err)
		}
		if sha256Hex(data) != expectedDigest {
			return 0, fmt.Errorf("artifact bytes for evidence %q do not match the dossier SHA-256", evidenceID)
		}
	}
	return len(expected), nil
}

func readEvidenceFile(root, name string) ([]byte, error) {
	if strings.TrimSpace(root) == "" {
		return nil, errors.New("evidence root is required")
	}
	absoluteRoot, err := filepath.Abs(root)
	if err != nil {
		return nil, fmt.Errorf("resolve evidence root: %w", err)
	}
	if err := checkDirectory(absoluteRoot); err != nil {
		return nil, err
	}
	if filepath.Base(name) != name || name == "." || name == ".." {
		return nil, errors.New("evidence filename is not a simple basename")
	}
	path := filepath.Join(absoluteRoot, name)
	if err := ensureContained(absoluteRoot, path); err != nil {
		return nil, err
	}
	file, err := openRegular(path)
	if err != nil {
		return nil, err
	}
	defer file.Close()
	data, err := io.ReadAll(io.LimitReader(file, maxDossierBytes+1))
	if err != nil {
		return nil, err
	}
	if len(data) == 0 || len(data) > maxDossierBytes {
		return nil, errors.New("evidence file is empty or exceeds the size limit")
	}
	return data, nil
}

func decodeStrictEvidenceJSON(data []byte, destination any) error {
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

// VerifyAgentRunReceiptJSONL requires exactly one byte-equivalent receipt in
// the local A1.1 append-only ledger. This establishes copy integrity; it does
// not claim an independent provider-side signature for the ledger.
func VerifyAgentRunReceiptJSONL(path string, expected domain.AgentRunReceipt) error {
	if err := expected.Validate(); err != nil {
		return fmt.Errorf("invalid expected agent-run receipt: %w", err)
	}
	file, err := openRegular(path)
	if err != nil {
		return fmt.Errorf("open agent-run receipt ledger: %w", err)
	}
	defer file.Close()
	data, err := io.ReadAll(io.LimitReader(file, maxDossierBytes+1))
	if err != nil {
		return err
	}
	if len(data) == 0 || len(data) > maxDossierBytes {
		return errors.New("agent-run receipt ledger is empty or exceeds the size limit")
	}
	expectedJSON, err := json.Marshal(expected)
	if err != nil {
		return err
	}
	found := 0
	lines := bytes.Split(data, []byte{'\n'})
	for lineNumber, line := range lines {
		line = bytes.TrimSuffix(line, []byte{'\r'})
		if len(bytes.TrimSpace(line)) == 0 {
			if lineNumber == len(lines)-1 {
				continue
			}
			return fmt.Errorf("blank record at line %d", lineNumber+1)
		}
		var receipt domain.AgentRunReceipt
		if err := decodeStrictEvidenceJSON(line, &receipt); err != nil {
			return fmt.Errorf("line %d: %w", lineNumber+1, err)
		}
		if receipt.ReceiptID != expected.ReceiptID {
			continue
		}
		found++
		if err := receipt.Validate(); err != nil {
			return fmt.Errorf("line %d contains an invalid target receipt: %w", lineNumber+1, err)
		}
		actualJSON, err := json.Marshal(receipt)
		if err != nil {
			return err
		}
		if !bytes.Equal(actualJSON, expectedJSON) {
			return fmt.Errorf("line %d receipt with matching ID differs from the dossier", lineNumber+1)
		}
	}
	if found == 0 {
		return errors.New("matching agent-run receipt ID was not found")
	}
	if found > 1 {
		return errors.New("matching agent-run receipt ID appears more than once")
	}
	return nil
}
