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
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const importedProofRevisionMaxBytes = 4 << 20

type importedProofReceiptInfo struct {
	EvidenceID      string
	ReceiptSHA256   string
	ProblemID       string
	StatementSHA256 string
	ProofSHA256     string
}

type importedProofReceiptOpener func([]byte, domain.MathProblem) (importedProofReceiptInfo, error)

type dossierAttachImportedProofOutput struct {
	SchemaVersion           string `json:"schema_version"`
	Status                  string `json:"status"`
	CaseID                  string `json:"case_id"`
	ProblemID               string `json:"problem_id"`
	ProofSHA256             string `json:"proof_sha256"`
	ReceiptEvidenceID       string `json:"receipt_evidence_id"`
	ReceiptSHA256           string `json:"receipt_sha256"`
	PacketSHA256            string `json:"packet_sha256"`
	M0CatalogSnapshotSHA256 string `json:"m0_catalog_snapshot_sha256"`
	ParentDossierSHA256     string `json:"parent_dossier_sha256"`
	RevisionDossierPath     string `json:"revision_dossier_path"`
	RevisionDossierSHA256   string `json:"revision_dossier_sha256"`
	PacketArtifactPath      string `json:"packet_artifact_path"`
	ReceiptArtifactPath     string `json:"receipt_artifact_path"`
	DossierGateStatus       string `json:"dossier_gate_status"`
	RightsStatus            string `json:"rights_status"`
}

func runDossierAttachImportedProof(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("dossier-attach-imported-proof", flag.ContinueOnError)
	flags.SetOutput(stderr)
	dossierPath := flags.String("dossier", "", "exact unsigned dossier revision to extend")
	packetPath := flags.String("packet", "", "exact verify-imported-proof packet")
	catalogPath := flags.String("catalog-snapshot", "", "exact validated M0 catalog snapshot authorizing the statement and source uses")
	receiptRoot := flags.String("receipt-root", "", "directory containing the exact Lean verification receipt")
	artifactRoot := flags.String("artifact-root", "", "existing local root for immutable case candidate artifacts")
	outputPath := flags.String("output", "", "new dossier revision path; existing files are never overwritten")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*dossierPath) == "" || strings.TrimSpace(*packetPath) == "" || strings.TrimSpace(*catalogPath) == "" ||
		strings.TrimSpace(*receiptRoot) == "" || strings.TrimSpace(*artifactRoot) == "" || strings.TrimSpace(*outputPath) == "" {
		fmt.Fprintln(stderr, "dossier-attach-imported-proof requires --dossier, --packet, --catalog-snapshot, --receipt-root, --artifact-root, and --output")
		return 2
	}
	dossierBytes, err := readRegularInput(*dossierPath, "imported-proof dossier", maxDossierInputBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read dossier: %v\n", err)
		return 2
	}
	var dossier domain.Dossier
	if err := decodeStrictJSON(dossierBytes, &dossier, "imported-proof dossier"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode dossier: %v\n", err)
		return 2
	}
	if err := dossier.Validate(); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate dossier: %v\n", err)
		return 1
	}
	packetBytes, err := readRegularInput(*packetPath, "imported-proof packet", importedProofRevisionMaxBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read imported-proof packet: %v\n", err)
		return 2
	}
	var packet importedProofPacket
	if err := decodeStrictJSON(packetBytes, &packet, "imported-proof packet"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode imported-proof packet: %v\n", err)
		return 2
	}
	catalogSnapshot, err := loadCatalogSnapshot(*catalogPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load exact M0 catalog snapshot: %v\n", err)
		return 2
	}
	statementAuditEvidenceID, authorizationErr := validateImportedProofSourceUse(catalogSnapshot, dossier.Problem)
	if authorizationErr != nil || catalogSnapshot.ContentSHA256 != dossier.CatalogSnapshotSHA256 ||
		catalogSnapshot.ContentSHA256 != packet.M0CatalogSnapshotSHA256 || statementAuditEvidenceID != packet.M0StatementAuditEvidenceID {
		fmt.Fprintln(stderr, "mathcase: dossier, packet, and exact M0 statement/source-use authorization do not match")
		return 1
	}
	if err := validateImportedProofPacketForAttachment(packet, dossier.Problem); err != nil {
		fmt.Fprintf(stderr, "mathcase: imported-proof packet is not attachable: %v\n", err)
		return 1
	}
	receiptPath := filepath.Join(*receiptRoot, packet.LeanReceiptFile)
	receiptBytes, err := readRegularInput(receiptPath, "imported-proof Lean receipt", maxImportedReceipt)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read imported-proof Lean receipt: %v\n", err)
		return 2
	}
	receiptInfo, err := openImportedProofReceipt(receiptBytes, dossier.Problem)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: reopen exact imported-proof Lean receipt: %v\n", err)
		return 1
	}
	packetHash := sha256.Sum256(packetBytes)
	prepared, err := prepareImportedProofCandidateRevision(dossier, dossierBytes, packet, hex.EncodeToString(packetHash[:]), receiptInfo)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: prepare imported-proof dossier revision: %v\n", err)
		return 1
	}
	if err := ensureImportedProofArtifactFiles(*artifactRoot, dossier.Case.ID, prepared.packetPath, packetBytes, prepared.receiptPath, receiptBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: preserve imported-proof artifacts: %v\n", err)
		return 1
	}
	revisionBytes, err := json.MarshalIndent(prepared.revision, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode imported-proof dossier revision: %v\n", err)
		return 2
	}
	revisionBytes = append(revisionBytes, '\n')
	if err := writeNewRegularOutput(*outputPath, revisionBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: preserve imported-proof dossier revision: %v\n", err)
		return 2
	}
	revisionHash := sha256.Sum256(revisionBytes)
	output := dossierAttachImportedProofOutput{
		SchemaVersion: "mathcase-dossier-imported-proof-attachment-v1", Status: "CANDIDATE_ATTACHED_M4_UNCHANGED",
		CaseID: dossier.Case.ID, ProblemID: dossier.Problem.ID, ProofSHA256: receiptInfo.ProofSHA256,
		ReceiptEvidenceID: receiptInfo.EvidenceID, ReceiptSHA256: receiptInfo.ReceiptSHA256,
		PacketSHA256: prepared.reference.PacketSHA256, ParentDossierSHA256: prepared.reference.ParentDossierSHA256,
		M0CatalogSnapshotSHA256: prepared.reference.M0CatalogSnapshotSHA256,
		RevisionDossierPath:     *outputPath, RevisionDossierSHA256: hex.EncodeToString(revisionHash[:]),
		PacketArtifactPath: prepared.packetPath, ReceiptArtifactPath: prepared.receiptPath,
		DossierGateStatus: "UNCHANGED_PENDING_OR_PRIOR_VALUES", RightsStatus: domain.ImportedProofRightsClearedByCatalog,
	}
	encoded, err := json.Marshal(output)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode imported-proof attachment summary: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(append(encoded, '\n')); err != nil {
		fmt.Fprintf(stderr, "mathcase: write imported-proof attachment summary: %v\n", err)
		return 2
	}
	return 0
}

type preparedImportedProofRevision struct {
	revision    domain.Dossier
	reference   domain.ImportedProofCandidateReference
	packetPath  string
	receiptPath string
}

func validateImportedProofPacketForAttachment(packet importedProofPacket, problem domain.MathProblem) error {
	if packet.SchemaVersion != importedProofSchema || packet.Status != "VERIFIED_FOR_EXACT_FORMAL_STATEMENT" {
		return errors.New("packet is not a verified imported-proof candidate")
	}
	if packet.ProblemID != problem.ID || packet.ProblemStatementSHA256 == "" ||
		packet.RightsStatus != domain.ImportedProofRightsClearedByCatalog ||
		packet.SourceUseAuthorizationStatus != "CLEARED_BY_PINNED_M0_CATALOG" ||
		!isCanonicalSHA256(packet.M0CatalogSnapshotSHA256) || packet.M0StatementAuditEvidenceID == "" ||
		packet.ProblemM0StatusInput != problem.M0Status ||
		packet.SourceLabelStatus != "OPERATOR_ENTERED_NOT_VERIFIED" ||
		packet.ExecutionScope != domain.ImportedProofSingleCheckDisposition ||
		packet.MathCaseDiscoveryClaim || !packet.HumanReviewRequired || packet.DossierAttachmentStatus != "NOT_ATTACHED" {
		return errors.New("packet identity, single-check scope, rights status, or candidate-only labels are invalid")
	}
	statementDigest, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		return err
	}
	if packet.ProblemStatementSHA256 != statementDigest || !isCanonicalSHA256(packet.ProofSHA256) ||
		!isCanonicalSHA256(packet.LeanReceiptSHA256) || packet.LeanEvidenceID == "" || packet.LeanReceiptFile != packet.LeanEvidenceID+".json" ||
		packet.LeanStatus != "PASSED" || !packet.KernelPassed || !packet.AxiomsPassed {
		return errors.New("packet is not bound to this exact statement and passed Lean receipt")
	}
	if err := state.ValidateIdentifier("imported Lean evidence ID", packet.LeanEvidenceID); err != nil {
		return err
	}
	return nil
}

func prepareImportedProofCandidateRevision(dossier domain.Dossier, dossierBytes []byte, packet importedProofPacket, packetSHA256 string, receipt importedProofReceiptInfo) (preparedImportedProofRevision, error) {
	if err := state.ValidateIdentifier("case ID", dossier.Case.ID); err != nil {
		return preparedImportedProofRevision{}, err
	}
	if dossier.M4Receipt != nil {
		return preparedImportedProofRevision{}, errors.New("dossier already has an M4 receipt; imported candidate path is only for the first proof attachment")
	}
	for _, attempt := range dossier.Attempts {
		if attempt.Outcome == domain.SolverOutcomePass {
			return preparedImportedProofRevision{}, errors.New("dossier already has a passing proof attempt; imported candidate path is only for the first proof attachment")
		}
	}
	if len(dossier.ImportedProofCandidates) != 0 {
		return preparedImportedProofRevision{}, errors.New("dossier already has an imported proof candidate attached")
	}
	if err := validateImportedProofPacketForAttachment(packet, dossier.Problem); err != nil {
		return preparedImportedProofRevision{}, err
	}
	if receipt.EvidenceID != packet.LeanEvidenceID || receipt.ProblemID != packet.ProblemID ||
		receipt.StatementSHA256 != packet.ProblemStatementSHA256 || receipt.ProofSHA256 != packet.ProofSHA256 ||
		receipt.ReceiptSHA256 != packet.LeanReceiptSHA256 {
		return preparedImportedProofRevision{}, errors.New("Lean receipt does not match the exact packet candidate")
	}
	if dossier.CatalogSnapshotSHA256 == "" || dossier.CatalogSnapshotSHA256 != packet.M0CatalogSnapshotSHA256 {
		return preparedImportedProofRevision{}, errors.New("dossier does not pin the exact M0 catalog snapshot bound by the packet")
	}
	if !isCanonicalSHA256(packetSHA256) {
		return preparedImportedProofRevision{}, errors.New("packet digest is not canonical SHA-256")
	}
	parentHash := sha256.Sum256(dossierBytes)
	packetPath := fmt.Sprintf("cases/%s/imported-proof-candidates/%s.packet.json", dossier.Case.ID, packetSHA256)
	receiptPath := fmt.Sprintf("cases/%s/imported-proof-candidates/%s.lean-receipt.json", dossier.Case.ID, receipt.ReceiptSHA256)
	revision := dossier
	revision.Case.Version++
	updatedAt := time.Now().UTC()
	if updatedAt.Before(revision.Case.UpdatedAt) {
		updatedAt = revision.Case.UpdatedAt
	}
	revision.Case.UpdatedAt = updatedAt
	revision.ImportedProofCandidates = append(append([]domain.ImportedProofCandidateReference(nil), dossier.ImportedProofCandidates...), domain.ImportedProofCandidateReference{
		SchemaVersion:      domain.ImportedProofCandidateReferenceSchemaVersion,
		Status:             domain.ImportedProofCandidateOnlyStatus,
		PacketRelativePath: packetPath, PacketSHA256: packetSHA256,
		ReceiptRelativePath: receiptPath, ReceiptSHA256: receipt.ReceiptSHA256,
		CaseID: dossier.Case.ID, ProblemID: dossier.Problem.ID,
		ProblemStatementSHA256: packet.ProblemStatementSHA256, ProofSHA256: packet.ProofSHA256,
		M0CatalogSnapshotSHA256: packet.M0CatalogSnapshotSHA256,
		ReceiptEvidenceID:       receipt.EvidenceID, ParentDossierSHA256: hex.EncodeToString(parentHash[:]),
		SourceUseDisposition: domain.ImportedProofSingleCheckDisposition, RightsStatus: domain.ImportedProofRightsClearedByCatalog,
	})
	if err := revision.Validate(); err != nil {
		return preparedImportedProofRevision{}, fmt.Errorf("revised dossier is invalid: %w", err)
	}
	return preparedImportedProofRevision{revision: revision,
		reference: revision.ImportedProofCandidates[len(revision.ImportedProofCandidates)-1], packetPath: packetPath, receiptPath: receiptPath}, nil
}

func ensureImportedProofArtifactFiles(root, caseID, packetRelative string, packetBytes []byte, receiptRelative string, receiptBytes []byte) error {
	rootPath, err := filepath.Abs(root)
	if err != nil {
		return fmt.Errorf("resolve artifact root: %w", err)
	}
	rootInfo, err := os.Lstat(rootPath)
	if err != nil || !rootInfo.IsDir() || rootInfo.Mode()&os.ModeSymlink != 0 {
		return errors.New("artifact root must already exist as a real, non-symlink directory")
	}
	directory := filepath.Join(rootPath, "cases")
	for _, component := range []string{directory, filepath.Join(directory, caseID), filepath.Join(directory, caseID, "imported-proof-candidates")} {
		if err := ensureRealDirectory(component); err != nil {
			return err
		}
	}
	for _, artifact := range []struct {
		relative string
		data     []byte
	}{{packetRelative, packetBytes}, {receiptRelative, receiptBytes}} {
		if !strings.HasPrefix(artifact.relative, "cases/"+caseID+"/imported-proof-candidates/") {
			return errors.New("generated imported-proof artifact path escaped its case directory")
		}
		path := filepath.Join(rootPath, filepath.FromSlash(artifact.relative))
		if err := writeContentAddressedFile(path, artifact.data); err != nil {
			return err
		}
	}
	return nil
}

func ensureRealDirectory(path string) error {
	info, err := os.Lstat(path)
	if errors.Is(err, os.ErrNotExist) {
		if err := os.Mkdir(path, 0o700); err != nil && !errors.Is(err, os.ErrExist) {
			return fmt.Errorf("create artifact directory: %w", err)
		}
		info, err = os.Lstat(path)
	}
	if err != nil || !info.IsDir() || info.Mode()&os.ModeSymlink != 0 {
		return errors.New("artifact path component must be a real, non-symlink directory")
	}
	return nil
}

func writeContentAddressedFile(path string, data []byte) error {
	if existing, err := readRegularInput(path, "existing content-addressed artifact", importedProofRevisionMaxBytes); err == nil {
		if string(existing) != string(data) {
			return errors.New("content-addressed artifact path already contains different bytes")
		}
		return nil
	} else if !errors.Is(err, os.ErrNotExist) {
		return err
	}
	if err := writeNewRegularOutput(path, data); err != nil {
		if existing, readErr := readRegularInput(path, "raced content-addressed artifact", importedProofRevisionMaxBytes); readErr == nil && string(existing) == string(data) {
			return nil
		}
		return err
	}
	return nil
}

func openImportedProofReceipt(data []byte, problem domain.MathProblem) (importedProofReceiptInfo, error) {
	opened, err := solver.OpenLeanVerificationReceipt(data, problem)
	if err != nil {
		return importedProofReceiptInfo{}, err
	}
	if !opened.IsValid() {
		return importedProofReceiptInfo{}, errors.New("Lean receipt is not a valid passed proof receipt")
	}
	return importedProofReceiptInfo{
		EvidenceID: opened.EvidenceID(), ReceiptSHA256: opened.ReceiptSHA256(),
		ProblemID: opened.ProblemID(), StatementSHA256: opened.ProblemStatementSHA256(),
		ProofSHA256: opened.ProofInputSHA256(),
	}, nil
}

func isCanonicalSHA256(value string) bool {
	if len(value) != sha256.Size*2 || strings.ToLower(value) != value {
		return false
	}
	_, err := hex.DecodeString(value)
	return err == nil
}
