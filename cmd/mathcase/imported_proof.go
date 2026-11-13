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
	"path/filepath"
	"strings"
	"time"
	"unicode/utf8"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	maxImportedProofBytes = 64 << 10
	maxImportedReceipt    = 1 << 20
	importedProofSchema   = "mathcase-imported-proof-packet-v1"
)

type importedProofPacket struct {
	SchemaVersion                string    `json:"schema_version"`
	CreatedAtUTC                 time.Time `json:"created_at_utc"`
	Status                       string    `json:"status"`
	ProblemID                    string    `json:"problem_id"`
	ProblemJSONSHA256            string    `json:"problem_json_sha256"`
	ProblemStatementSHA256       string    `json:"problem_statement_sha256"`
	M0CatalogSnapshotSHA256      string    `json:"m0_catalog_snapshot_sha256"`
	M0StatementAuditEvidenceID   string    `json:"m0_statement_audit_evidence_id"`
	ProblemM0StatusInput         string    `json:"problem_m0_status_input,omitempty"`
	M0AssessmentStatus           string    `json:"m0_assessment_status"`
	ProofSHA256                  string    `json:"proof_sha256"`
	SourceLabel                  string    `json:"source_label,omitempty"`
	SourceLabelStatus            string    `json:"source_label_status"`
	ExecutionScope               string    `json:"execution_scope"`
	RightsStatus                 string    `json:"rights_status"`
	SourceUseAuthorizationStatus string    `json:"source_use_authorization_status"`
	NoveltyStatus                string    `json:"novelty_status"`
	MathCaseDiscoveryClaim       bool      `json:"mathcase_discovery_claim"`
	HumanReviewRequired          bool      `json:"human_review_required"`
	LeanEvidenceID               string    `json:"lean_evidence_id,omitempty"`
	LeanReceiptFile              string    `json:"lean_receipt_file,omitempty"`
	LeanReceiptSHA256            string    `json:"lean_receipt_sha256,omitempty"`
	LeanStatus                   string    `json:"lean_status,omitempty"`
	KernelPassed                 bool      `json:"kernel_passed"`
	AxiomsPassed                 bool      `json:"axioms_passed"`
	Summary                      string    `json:"summary"`
	VerificationError            string    `json:"verification_error,omitempty"`
	DossierAttachmentStatus      string    `json:"dossier_attachment_status"`
}

type importedProofVerifier interface {
	Verify(context.Context, domain.MathProblem, string) (solver.Verification, error)
}

func runVerifyImportedProof(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("verify-imported-proof", flag.ContinueOnError)
	flags.SetOutput(stderr)
	problemPath := flags.String("problem", "", "exact MathProblem JSON with informal and Lean statements")
	catalogPath := flags.String("catalog-snapshot", "", "validated M0 catalog snapshot with exact statement review and source-use permissions")
	proofPath := flags.String("proof-term", "", "regular file containing one Lean by-block, not a whole Lean source file")
	projectRoot := flags.String("lean-project", "", "selected Lake project covered by the qualified snapshot")
	snapshotManifest := flags.String("lean-snapshot-manifest", "", "qualified Lean snapshot manifest; no environment fallback")
	imageDefault := strings.TrimSpace(os.Getenv("MATHCASE_LEAN_SANDBOX_IMAGE"))
	leanImage := flags.String("lean-image", imageDefault, "immutable sha256 Lean sandbox image ID; defaults to MATHCASE_LEAN_SANDBOX_IMAGE")
	dockerExecutable := flags.String("docker-executable", "docker", "local Docker executable")
	importsValue := flags.String("imports", "Init", "comma-separated imports covered by the qualified snapshot")
	workspaceRoot := flags.String("workspace-root", "", "optional temporary verification workspace root")
	receiptRoot := flags.String("receipt-root", "", "local durable Lean receipt directory")
	packetPath := flags.String("packet-output", "", "new imported-proof packet path; existing files are never overwritten")
	sourceLabel := flags.String("source-label", "", "optional operator-entered origin label; not a rights or provenance review")
	timeout := flags.Duration("timeout", 2*time.Minute, "bounded Lean verification timeout (maximum 30m)")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*problemPath) == "" || strings.TrimSpace(*catalogPath) == "" ||
		strings.TrimSpace(*proofPath) == "" || strings.TrimSpace(*packetPath) == "" {
		fmt.Fprintln(stderr, "verify-imported-proof requires --problem, --catalog-snapshot, --proof-term, and --packet-output")
		return 2
	}
	if len(*sourceLabel) > 512 || !utf8.ValidString(*sourceLabel) || strings.ContainsRune(*sourceLabel, '\x00') {
		fmt.Fprintln(stderr, "source label must be valid UTF-8, no longer than 512 bytes, and contain no NUL")
		return 2
	}

	problemBytes, problem, err := loadImportedProofProblem(*problemPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load imported-proof problem: %v\n", err)
		return 2
	}
	proofBytes, err := readRegularInput(*proofPath, "imported Lean proof term", maxImportedProofBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load imported Lean proof term: %v\n", err)
		return 2
	}
	if !utf8.Valid(proofBytes) || strings.ContainsRune(string(proofBytes), '\x00') {
		fmt.Fprintln(stderr, "imported Lean proof term must be valid UTF-8 and contain no NUL")
		return 2
	}
	catalogSnapshot, err := loadCatalogSnapshot(*catalogPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load exact M0 catalog snapshot: %v\n", err)
		return 2
	}
	statementAuditEvidenceID, authorizationErr := validateImportedProofSourceUse(catalogSnapshot, problem)
	if authorizationErr != nil {
		packet := runImportedProofVerification(context.Background(), nil, problemBytes, problem, proofBytes,
			*sourceLabel, "", catalogSnapshot.ContentSHA256, statementAuditEvidenceID, authorizationErr)
		return writeImportedProofPacket(packet, *packetPath, stdout, stderr)
	}
	if strings.TrimSpace(*projectRoot) == "" || strings.TrimSpace(*snapshotManifest) == "" ||
		strings.TrimSpace(*leanImage) == "" || strings.TrimSpace(*receiptRoot) == "" {
		fmt.Fprintln(stderr, "a cleared M0 source-use decision also requires --lean-project, --lean-snapshot-manifest, --lean-image, and --receipt-root")
		return 2
	}
	if *timeout <= 0 || *timeout > 30*time.Minute {
		fmt.Fprintln(stderr, "verify-imported-proof timeout must be positive and no greater than 30m")
		return 2
	}
	if err := state.ValidateIdentifier("problem ID", problem.ID); err != nil {
		fmt.Fprintf(stderr, "mathcase: invalid imported-proof problem ID: %v\n", err)
		return 2
	}
	imports := parseImports(*importsValue)
	if len(imports) == 0 {
		fmt.Fprintln(stderr, "verify-imported-proof requires at least one --imports entry")
		return 2
	}
	project, err := filepath.Abs(*projectRoot)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: resolve selected Lean project: %v\n", err)
		return 2
	}
	toolchainBytes, err := os.ReadFile(filepath.Join(project, "lean-toolchain"))
	if err != nil || strings.TrimSpace(string(toolchainBytes)) == "" {
		fmt.Fprintln(stderr, "mathcase: selected Lean project must contain a nonempty lean-toolchain pin")
		return 2
	}
	toolchain := strings.TrimSpace(string(toolchainBytes))
	verifier := solver.LeanVerifier{
		DockerExecutable:     *dockerExecutable,
		SandboxImage:         *leanImage,
		SnapshotManifestPath: *snapshotManifest,
		ProjectRoot:          project,
		WorkspaceRoot:        *workspaceRoot,
		ReceiptRoot:          *receiptRoot,
		ExpectedToolchain:    toolchain,
		Imports:              imports,
		Timeout:              *timeout,
	}
	packet := runImportedProofVerification(context.Background(), verifier, problemBytes, problem, proofBytes, *sourceLabel, *receiptRoot,
		catalogSnapshot.ContentSHA256, statementAuditEvidenceID, authorizationErr)
	return writeImportedProofPacket(packet, *packetPath, stdout, stderr)
}

func writeImportedProofPacket(packet importedProofPacket, packetPath string, stdout, stderr io.Writer) int {
	packetBytes, err := json.MarshalIndent(packet, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode imported-proof packet: %v\n", err)
		return 2
	}
	packetBytes = append(packetBytes, '\n')
	if err := writeNewRegularOutput(packetPath, packetBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: preserve imported-proof packet: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(packetBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: write imported-proof packet summary: %v\n", err)
		return 2
	}
	if packet.Status != "VERIFIED_FOR_EXACT_FORMAL_STATEMENT" {
		return 1
	}
	return 0
}

func loadImportedProofProblem(path string) ([]byte, domain.MathProblem, error) {
	data, err := readRegularInput(path, "problem JSON", maxProblemFileBytes)
	if err != nil {
		return nil, domain.MathProblem{}, err
	}
	var problem domain.MathProblem
	if err := decodeStrictJSON(data, &problem, "problem"); err != nil {
		return nil, domain.MathProblem{}, err
	}
	if strings.TrimSpace(problem.ID) == "" || strings.TrimSpace(problem.Statement) == "" || strings.TrimSpace(problem.LeanStatement) == "" {
		return nil, domain.MathProblem{}, errors.New("problem ID, informal statement, and Lean statement are required")
	}
	if err := state.ValidateIdentifier("problem ID", problem.ID); err != nil {
		return nil, domain.MathProblem{}, err
	}
	return data, problem, nil
}

func runImportedProofVerification(ctx context.Context, verifier importedProofVerifier, problemBytes []byte, problem domain.MathProblem, proofBytes []byte, sourceLabel, receiptRoot, catalogSnapshotSHA256, statementAuditEvidenceID string, authorizationErr error) importedProofPacket {
	problemHash := sha256.Sum256(problemBytes)
	proofHash := sha256.Sum256(proofBytes)
	statementDigest, digestErr := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	packet := importedProofPacket{
		SchemaVersion: importedProofSchema, CreatedAtUTC: time.Now().UTC(), Status: "PREFLIGHT_OR_INFRASTRUCTURE_FAILURE",
		ProblemID: problem.ID, ProblemJSONSHA256: hex.EncodeToString(problemHash[:]),
		ProblemStatementSHA256: statementDigest, M0CatalogSnapshotSHA256: catalogSnapshotSHA256,
		M0StatementAuditEvidenceID: statementAuditEvidenceID, ProblemM0StatusInput: problem.M0Status,
		M0AssessmentStatus: "NOT_ASSESSED_OR_CHANGED",
		ProofSHA256:        hex.EncodeToString(proofHash[:]), SourceLabel: strings.TrimSpace(sourceLabel),
		SourceLabelStatus: "OPERATOR_ENTERED_NOT_VERIFIED",
		ExecutionScope:    domain.ImportedProofSingleCheckDisposition, RightsStatus: domain.ImportedProofRightsUnassessed,
		SourceUseAuthorizationStatus: "BLOCKED_NO_LEAN_RUN",
		NoveltyStatus:                "NOT_ASSESSED", MathCaseDiscoveryClaim: false, HumanReviewRequired: true,
		Summary:                 "No MathCase discovery, M0 status change, source-rights grant, or dossier gate change is implied.",
		DossierAttachmentStatus: "NOT_ATTACHED",
	}
	if digestErr != nil {
		packet.Summary = "Could not compute the exact problem statement digest: " + digestErr.Error()
		return packet
	}
	if authorizationErr != nil {
		packet.Status = "SOURCE_USE_BLOCKED"
		packet.Summary = "No Lean proof attempt was run because the exact M0 statement or source-use clearance did not pass: " + authorizationErr.Error()
		return packet
	}
	if verifier == nil {
		packet.Summary = "No local Lean verifier was configured."
		return packet
	}
	if !isCanonicalSHA256(catalogSnapshotSHA256) || statementAuditEvidenceID == "" {
		packet.Status = "SOURCE_USE_BLOCKED"
		packet.Summary = "No Lean proof attempt was run because the exact M0 authorization binding is incomplete."
		return packet
	}
	packet.RightsStatus = domain.ImportedProofRightsClearedByCatalog
	packet.SourceUseAuthorizationStatus = "CLEARED_BY_PINNED_M0_CATALOG"
	verificationResult, verifyErr := verifier.Verify(ctx, problem, string(proofBytes))
	packet.LeanEvidenceID = verificationResult.EvidenceID
	packet.KernelPassed = verificationResult.KernelPassed
	packet.AxiomsPassed = verificationResult.AxiomsPassed
	packet.Summary = verificationResult.Summary
	if verifyErr != nil {
		packet.VerificationError = verifyErr.Error()
	}
	if verificationResult.EvidenceID == "" {
		if verifyErr != nil {
			packet.Summary = "Lean preflight did not produce a proof-attempt receipt: " + verifyErr.Error()
		}
		return packet
	}
	packet.LeanReceiptFile = verificationResult.EvidenceID + ".json"
	receiptPath := filepath.Join(receiptRoot, packet.LeanReceiptFile)
	receiptBytes, err := readRegularInput(receiptPath, "imported-proof Lean receipt", maxImportedReceipt)
	if err != nil {
		packet.Status = "RECEIPT_MISSING_OR_UNSAFE"
		packet.Summary = "Lean returned an evidence ID, but its exact receipt could not be safely reopened: " + err.Error()
		return packet
	}
	receiptHash := sha256.Sum256(receiptBytes)
	packet.LeanReceiptSHA256 = hex.EncodeToString(receiptHash[:])
	var receipt solver.LeanVerificationReceipt
	if err := decodeStrictJSON(receiptBytes, &receipt, "imported-proof Lean receipt"); err != nil {
		packet.Status = "RECEIPT_UNQUALIFIED"
		packet.Summary = "The saved Lean receipt was not a typed execution-bound proof receipt: " + err.Error()
		return packet
	}
	packet.LeanStatus = receipt.Status
	disposition, receiptErr := solver.ValidateExecutionBoundAttemptReceipt(receipt, problem)
	if receiptErr != nil || receipt.EvidenceID != verificationResult.EvidenceID || receipt.ProofSHA256 != packet.ProofSHA256 {
		packet.Status = "RECEIPT_UNQUALIFIED"
		packet.Summary = "The exact Lean receipt did not reopen against this problem and proof input."
		if receiptErr != nil {
			packet.Summary += " " + receiptErr.Error()
		}
		return packet
	}
	switch disposition {
	case solver.LeanAttemptProofPassed:
		if !verificationResult.KernelPassed || !verificationResult.AxiomsPassed {
			packet.Status = "RECEIPT_UNQUALIFIED"
			packet.Summary = "Lean receipt says pass, but the verifier result did not report both kernel and axiom-policy success."
			return packet
		}
		packet.Status = "VERIFIED_FOR_EXACT_FORMAL_STATEMENT"
		packet.Summary = "Lean kernel and configured axiom policy accepted this operator-supplied proof term for the exact supplied formal statement; human statement review remains separate."
	case solver.LeanAttemptRejectedProof:
		packet.Status = "PROOF_REJECTED_BY_LEAN"
		packet.Summary = receipt.Summary
	case solver.LeanAttemptInfrastructureFailure:
		packet.Status = "VERIFICATION_INFRASTRUCTURE_FAILURE"
		packet.Summary = receipt.Summary
	default:
		packet.Status = "RECEIPT_UNQUALIFIED"
		packet.Summary = "The Lean receipt has no recognized proof-attempt disposition."
	}
	return packet
}

func validateImportedProofSourceUse(snapshot catalog.Snapshot, problem domain.MathProblem) (string, error) {
	var target *catalog.Problem
	for index := range snapshot.Problems {
		if snapshot.Problems[index].ID == problem.ID {
			target = &snapshot.Problems[index]
			break
		}
	}
	if target == nil {
		return "", errors.New("problem is absent from the pinned M0 catalog snapshot")
	}
	if target.Kind == catalog.ProblemKindLocalArithmeticTask || problem.Kind == string(catalog.ProblemKindLocalArithmeticTask) {
		return "", errors.New("local arithmetic tasks cannot enter the Lean proof-import path")
	}
	catalogProblem := domain.MathProblem{
		ID: target.ID, Title: target.Title, Statement: target.InformalStatement,
		LeanStatement: target.LeanStatement, M0Status: string(target.Status),
		SourceIDs: append([]string(nil), target.SourceIDs...),
	}
	if problem.Kind != string(target.Kind) || !queueSolveProblemMatchesDossier(problem, catalogProblem) {
		return "", errors.New("problem JSON does not exactly match the pinned M0 statement and source IDs")
	}
	if !target.StatementAudit.Passed {
		return "", errors.New("exact M0 human statement review is not passed")
	}
	if err := validateQueueFirstProofPermission(snapshot, problem.ID); err != nil {
		return "", err
	}
	return target.StatementAudit.EvidenceID, nil
}
