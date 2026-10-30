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

	"github.com/DarthCeltic/MathCase/internal/book"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/gateaudit"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

func runScoreProof(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("score-proof", flag.ContinueOnError)
	flags.SetOutput(stderr)
	requestPath := flags.String("request", "", "strict JSON file with score config, proof identity, ratings, and verification records")
	metricsPath := flags.String("metrics-receipt", "", "v4 pinned-Lean expression metrics receipt; its launch request, run, snapshot, and raw outputs are read from the same directory")
	r0bReceiptPath := flags.String("r0b-verification-receipt", "", "optional typed R0b V1/V2 receipt; must bind the exact Nat.add_assoc statement and proof")
	problemPath := flags.String("problem", "", "strict M0 problem JSON paired with --lean-verification-receipt")
	leanVerificationReceiptPath := flags.String("lean-verification-receipt", "", "typed M4 execution-bound Lean receipt paired with --problem")
	v5DossierPath := flags.String("v5-dossier", "", "dossier containing the V5 typed-receipt reference for this exact proof")
	v5EvidenceRoot := flags.String("v5-evidence-root", "", "root directory containing the V5 typed receipt and its raw ablation evidence")
	outputPath := flags.String("output", "", "new score output file; existing files are never overwritten")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*requestPath) == "" || strings.TrimSpace(*metricsPath) == "" || strings.TrimSpace(*outputPath) == "" {
		fmt.Fprintln(stderr, "score-proof requires --request FILE, --metrics-receipt FILE, and --output NEW_FILE; positional arguments are not accepted")
		return 2
	}
	requestBytes, err := readRegularInput(*requestPath, "M6 score request", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load score request: %v\n", err)
		return 2
	}
	var request bookScoreRequest
	if err := decodeStrictJSON(requestBytes, &request, "M6 score request"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode score request: %v\n", err)
		return 2
	}
	if request.SchemaVersion != "mathcase-m6-score-request-v1" {
		fmt.Fprintf(stderr, "mathcase: unsupported M6 score request schema %q\n", request.SchemaVersion)
		return 2
	}
	if hasCallerAuthoredV5Record(request.Proof.VerificationRecords) {
		fmt.Fprintln(stderr, "mathcase: score-proof refuses caller-supplied V5 records; V5 must be loaded from a dossier and reopened as a typed receipt")
		return 2
	}
	if (*v5DossierPath == "") != (*v5EvidenceRoot == "") {
		fmt.Fprintln(stderr, "mathcase: --v5-dossier and --v5-evidence-root must be supplied together")
		return 2
	}
	if (*problemPath == "") != (*leanVerificationReceiptPath == "") {
		fmt.Fprintln(stderr, "mathcase: --problem and --lean-verification-receipt must be supplied together")
		return 2
	}
	if strings.TrimSpace(*v5DossierPath) != "" &&
		strings.TrimSpace(*r0bReceiptPath) == "" && strings.TrimSpace(*leanVerificationReceiptPath) == "" {
		fmt.Fprintln(stderr, "mathcase: --v5-dossier requires an opened --r0b-verification-receipt or --problem with --lean-verification-receipt")
		return 2
	}
	if strings.TrimSpace(*r0bReceiptPath) != "" && strings.TrimSpace(*leanVerificationReceiptPath) != "" {
		fmt.Fprintln(stderr, "mathcase: use either --r0b-verification-receipt or the typed M4 receipt path, not both")
		return 2
	}
	var m4Receipt *solver.LeanVerificationReceipt
	var m4Problem *domain.MathProblem
	var requestedDeclaration string
	if strings.TrimSpace(*leanVerificationReceiptPath) != "" {
		problemBytes, err := readRegularInput(*problemPath, "M4 problem", maxProblemFileBytes)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: load M4 problem: %v\n", err)
			return 2
		}
		var problem domain.MathProblem
		if err := decodeStrictJSON(problemBytes, &problem, "M4 problem"); err != nil {
			fmt.Fprintf(stderr, "mathcase: decode M4 problem: %v\n", err)
			return 2
		}
		receipt, err := attachLeanVerificationReceipt(&request, problem, *leanVerificationReceiptPath)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: bind M4 verification receipt: %v\n", err)
			return 2
		}
		m4Receipt = &receipt
		m4Problem = &problem
		requestedDeclaration = request.Proof.LeanDeclaration
	}
	if strings.TrimSpace(*r0bReceiptPath) != "" {
		if err := attachR0BVerificationReceipt(&request, *r0bReceiptPath); err != nil {
			fmt.Fprintf(stderr, "mathcase: bind R0b verification receipt: %v\n", err)
			return 2
		}
	}
	metricsBytes, err := readRegularInput(*metricsPath, "Lean metrics receipt", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load Lean metrics receipt: %v\n", err)
		return 2
	}
	metricsDir := filepath.Dir(*metricsPath)
	runReceiptBytes, err := readRegularInput(filepath.Join(metricsDir, "run-receipt.json"), "Lean metrics run receipt", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load Lean metrics run receipt: %v\n", err)
		return 2
	}
	runRequestBytes, err := readM6RawOutput(filepath.Join(metricsDir, "run-request.json"), "Lean metrics run request", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load Lean metrics run request: %v\n", err)
		return 2
	}
	snapshotBytes, err := readRegularInput(filepath.Join(metricsDir, "snapshot", "snapshot-manifest.json"), "Lean metrics snapshot manifest", 4<<20)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load Lean metrics snapshot manifest: %v\n", err)
		return 2
	}
	stdoutBytes, err := readM6RawOutput(filepath.Join(metricsDir, "stdout.bin"), "Lean metrics stdout", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load Lean metrics stdout: %v\n", err)
		return 2
	}
	stderrBytes, err := readM6RawOutput(filepath.Join(metricsDir, "stderr.bin"), "Lean metrics stderr", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load Lean metrics stderr: %v\n", err)
		return 2
	}
	proof, err := book.AttachLeanMetricsArtifacts(request.Proof, metricsBytes, runReceiptBytes, runRequestBytes, snapshotBytes, stdoutBytes, stderrBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: bind Lean metrics receipt: %v\n", err)
		return 2
	}
	if m4Receipt != nil {
		if proof.LeanDeclaration != requestedDeclaration {
			fmt.Fprintf(stderr, "mathcase: M6 declaration %q does not match the declared M4 proof target %q\n", proof.LeanDeclaration, requestedDeclaration)
			return 2
		}
		if err := validateM4M6ExecutionJoin(*m4Receipt, proof); err != nil {
			fmt.Fprintf(stderr, "mathcase: validate M4/M6 execution join: %v\n", err)
			return 2
		}
		proof.LeanDeclaration = requestedDeclaration
		proof.LeanVerificationReceiptSHA256 = request.Proof.LeanVerificationReceiptSHA256
		proof.LeanProofInputSHA256 = request.Proof.LeanProofInputSHA256
	}
	if strings.TrimSpace(*v5DossierPath) != "" {
		var m4Binding *v5M4Binding
		if m4Receipt != nil && m4Problem != nil {
			m4Binding = &v5M4Binding{
				Problem: *m4Problem, Receipt: *m4Receipt, ReceiptPath: *leanVerificationReceiptPath,
				ReceiptSHA256: request.Proof.LeanVerificationReceiptSHA256, Metrics: proof,
			}
		}
		if err := attachV5VerificationReceipt(&request, &proof, *v5DossierPath, *v5EvidenceRoot, m4Binding); err != nil {
			fmt.Fprintf(stderr, "mathcase: bind V5 verification receipt: %v\n", err)
			return 2
		}
	}
	result, err := book.Score(request.Config, proof)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: score proof: %v\n", err)
		return 2
	}
	output, err := json.MarshalIndent(result, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode M6 score: %v\n", err)
		return 2
	}
	output = append(output, '\n')
	if err := writeNewRegularOutput(*outputPath, output); err != nil {
		fmt.Fprintf(stderr, "mathcase: write M6 score: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(output); err != nil {
		fmt.Fprintf(stderr, "mathcase: write M6 score output: %v\n", err)
		return 2
	}
	if result.Refusal != "" {
		return 1
	}
	return 0
}

// M6 V5 records must originate from the dossier and pass the typed reader.
// Caller-provided status and hash pins are never sufficient.
func hasCallerAuthoredV5Record(records []domain.VerificationRecord) bool {
	for _, record := range records {
		if record.Gate == domain.GateEssentiality {
			return true
		}
	}
	return false
}

const (
	r0bScoreProblemID     = "nat-add-assoc"
	r0bScoreProofID       = "r0b-nat-add-assoc"
	r0bScoreTheorem       = "mathcaseNatAddAssoc"
	r0bScoreProblem       = "Nat.add_assoc"
	r0bScoreToolchain     = "leanprover/lean4:v4.33.1"
	r0bScoreStatement     = "Natural-number addition is associative."
	r0bScoreLeanStatement = "forall (n m k : Nat), (n + m) + k = n + (m + k)"
)

// r0bScoreReceipt is the complete v2 R0b receipt schema. Keeping it typed and
// strict means score-proof derives V1/V2 records from reopened receipt bytes,
// rather than trusting caller-authored gate labels in the score request.
type r0bScoreReceipt struct {
	SchemaVersion   string    `json:"schema_version"`
	RecordedAtUTC   time.Time `json:"recorded_at_utc"`
	Problem         string    `json:"problem"`
	Theorem         string    `json:"theorem"`
	Statement       string    `json:"statement"`
	StatementSHA256 string    `json:"statement_sha256"`
	ProofSHA256     string    `json:"proof_sha256"`
	Toolchain       string    `json:"toolchain"`
	LeanVersion     string    `json:"lean_version"`
	Gates           struct {
		V1 string `json:"V1_kernel_build"`
		V2 string `json:"V2_axiom_audit"`
	} `json:"gates"`
	AxiomOutput                         string `json:"axiom_output"`
	BuildExitCode                       int    `json:"build_exit_code"`
	AxiomCommandExitCode                int    `json:"axiom_command_exit_code"`
	GitHead                             string `json:"git_head"`
	PrimaryWorktreeUnchanged            bool   `json:"primary_worktree_unchanged"`
	CleanGitCheckoutWithTrackedProof    bool   `json:"clean_git_checkout_with_tracked_proof"`
	CleanSourceSnapshotRebuild          bool   `json:"clean_source_snapshot_rebuild"`
	AxiomAuditPassed                    bool   `json:"axiom_audit_passed"`
	CleanSourceSnapshotSHA256           string `json:"clean_source_snapshot_sha256"`
	CleanSnapshotProofMatchesWorktree   bool   `json:"clean_snapshot_proof_matches_worktree"`
	SameProofPantographLeanDojoRequired bool   `json:"same_proof_pantograph_leandojo_comparison_required"`
	SameProofPantographLeanDojoStatus   string `json:"same_proof_pantograph_leandojo_comparison_status"`
	GateAmendment                       struct {
		AmendedAtDate  string   `json:"amended_at_date"`
		AuthorizedBy   string   `json:"authorized_by"`
		RemovedCheck   string   `json:"removed_check"`
		Reason         string   `json:"reason"`
		RequiredChecks []string `json:"required_checks"`
	} `json:"gate_amendment"`
	FullR0BClosed    bool     `json:"full_r0b_closed"`
	R0BGateStatus    string   `json:"r0b_gate_status"`
	RemainingR0BWork []string `json:"remaining_r0b_work"`
}

func attachR0BVerificationReceipt(request *bookScoreRequest, path string) error {
	data, err := readRegularInput(path, "R0b verification receipt", 1<<20)
	if err != nil {
		return err
	}
	var receipt r0bScoreReceipt
	if err := decodeStrictJSON(data, &receipt, "R0b verification receipt"); err != nil {
		return err
	}
	if receipt.SchemaVersion != "mathcase-r0b-verification-v2" {
		return fmt.Errorf("unsupported R0b receipt schema %q", receipt.SchemaVersion)
	}
	statementHash := sha256.Sum256([]byte(receipt.Statement))
	if receipt.Problem != r0bScoreProblem || receipt.Theorem != r0bScoreTheorem ||
		receipt.Statement != r0bScoreLeanStatement ||
		receipt.StatementSHA256 != hex.EncodeToString(statementHash[:]) {
		return errors.New("R0b receipt does not identify the pinned Nat.add_assoc statement")
	}
	if receipt.Gates.V1 != "PASSED" || receipt.Gates.V2 != "PASSED" ||
		receipt.BuildExitCode != 0 || receipt.AxiomCommandExitCode != 0 ||
		!receipt.CleanSourceSnapshotRebuild || !receipt.AxiomAuditPassed ||
		!receipt.CleanSnapshotProofMatchesWorktree || !receipt.PrimaryWorktreeUnchanged ||
		!receipt.FullR0BClosed || receipt.R0BGateStatus != "PASSED" ||
		len(receipt.RemainingR0BWork) != 0 || !strings.Contains(receipt.AxiomOutput, "does not depend on any axioms") {
		return errors.New("R0b receipt does not contain a complete passing V1/V2 clean-snapshot result")
	}
	if receipt.Toolchain != r0bScoreToolchain || !strings.HasPrefix(receipt.LeanVersion, "Lean (version 4.33.1,") {
		return errors.New("R0b receipt does not match the pinned Lean 4.33.1 toolchain")
	}
	if receipt.RecordedAtUTC.IsZero() || receipt.RecordedAtUTC.After(time.Now().Add(5*time.Minute)) {
		return errors.New("R0b receipt timestamp is missing or in the future")
	}
	sourcePath := filepath.Join(filepath.Dir(path), "MathCaseR0b.lean")
	sourceBytes, err := readRegularInput(sourcePath, "R0b proof source", maxProblemFileBytes)
	if err != nil {
		return err
	}
	sourceHash := sha256.Sum256(sourceBytes)
	if receipt.ProofSHA256 != hex.EncodeToString(sourceHash[:]) {
		return errors.New("R0b proof source bytes do not match the receipt proof digest")
	}
	canonicalStatementSHA256, err := domain.ProblemStatementDigest(r0bScoreProblemID, r0bScoreStatement, r0bScoreLeanStatement)
	if err != nil {
		return fmt.Errorf("derive canonical R0b statement digest: %w", err)
	}
	if request.Proof.ProblemID != r0bScoreProblemID || request.Proof.ProofID != r0bScoreProofID ||
		request.Proof.LeanDeclaration != receipt.Theorem ||
		request.Proof.ProblemStatementSHA256 != canonicalStatementSHA256 ||
		request.Proof.ProofSHA256 != receipt.ProofSHA256 {
		return errors.New("R0b receipt statement, declaration, or proof digest does not match the exact scored proof")
	}
	for _, record := range request.Proof.VerificationRecords {
		if record.Gate == domain.GateKernelBuild || record.Gate == domain.GateAxiomAudit {
			return errors.New("R0b receipt cannot be combined with caller-supplied V1/V2 records")
		}
	}
	receiptHash := sha256.Sum256(data)
	receiptSHA256 := hex.EncodeToString(receiptHash[:])
	request.Proof.VerificationRecords = append(request.Proof.VerificationRecords,
		r0bVerificationRecord(domain.GateKernelBuild, "v1", receipt, receiptSHA256, request.Proof),
		r0bVerificationRecord(domain.GateAxiomAudit, "v2", receipt, receiptSHA256, request.Proof),
	)
	return nil
}

// attachLeanVerificationReceipt reopens the typed M4 receipt against its M0
// problem and binds V1/V2 to the generated source identity. The full source
// digest remains the scorer's ProofSHA256; the retained proof fragment digest
// and M4 receipt digest are recorded separately for audit.
func attachLeanVerificationReceipt(request *bookScoreRequest, problem domain.MathProblem, path string) (solver.LeanVerificationReceipt, error) {
	data, err := readRegularInput(path, "M4 verification receipt", 1<<20)
	if err != nil {
		return solver.LeanVerificationReceipt{}, err
	}
	var receipt solver.LeanVerificationReceipt
	if err := decodeStrictJSON(data, &receipt, "M4 verification receipt"); err != nil {
		return solver.LeanVerificationReceipt{}, err
	}
	if err := solver.ValidateExecutionBoundReceipt(receipt, problem); err != nil {
		return solver.LeanVerificationReceipt{}, fmt.Errorf("reopen typed M4 receipt: %w", err)
	}
	receiptHash := sha256.Sum256(data)
	receiptSHA256 := hex.EncodeToString(receiptHash[:])
	if err := bindLeanVerificationReceipt(request, problem, receipt, receiptSHA256); err != nil {
		return solver.LeanVerificationReceipt{}, err
	}
	return receipt, nil
}

// bindLeanVerificationReceipt is the identity join used only after the caller
// has reopened and validated the typed M4 receipt.
func bindLeanVerificationReceipt(request *bookScoreRequest, problem domain.MathProblem, receipt solver.LeanVerificationReceipt, receiptSHA256 string) error {
	if !isCanonicalM6SHA256(receiptSHA256) {
		return errors.New("M4 receipt must have a canonical SHA-256")
	}
	if receipt.Status != "PASSED" || !receipt.KernelPassed || !receipt.AxiomsPassed || receipt.ProblemID != problem.ID {
		return errors.New("M4 receipt does not record a passing kernel and axiom result for this problem")
	}
	if receipt.Toolchain != r0bScoreToolchain || !strings.Contains(receipt.LeanVersion, "(version 4.33.1,") {
		return errors.New("M4 receipt does not match the pinned Lean 4.33.1 identity")
	}
	statementSHA256, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		return fmt.Errorf("derive M4 problem statement digest: %w", err)
	}
	proofInputHash := sha256.Sum256([]byte(receipt.InputProof))
	generatedSourceHash := sha256.Sum256([]byte(receipt.GeneratedSource))
	if receipt.ProblemStatementSHA256 != statementSHA256 || receipt.ProofSHA256 != hex.EncodeToString(proofInputHash[:]) ||
		receipt.GeneratedSourceSHA256 != hex.EncodeToString(generatedSourceHash[:]) ||
		!strings.Contains(receipt.GeneratedSource, "theorem mathcase_candidate :") || !strings.Contains(receipt.GeneratedSource, "#print axioms mathcase_candidate") {
		return errors.New("M4 receipt statement, retained proof input, or generated source binding is invalid")
	}
	if request.Proof.ProblemID != problem.ID || request.Proof.ProblemStatementSHA256 != statementSHA256 ||
		request.Proof.ProofSHA256 != receipt.GeneratedSourceSHA256 {
		return errors.New("M4 receipt problem, canonical statement, or generated source does not match the scored proof")
	}
	if request.Proof.LeanDeclaration != "mathcase_candidate" {
		return errors.New("M4 score request must name the generated mathcase_candidate declaration")
	}
	if !sameCoreOnlyImports(receipt.Imports) {
		return errors.New("cross-run M4/M6 linkage is currently qualified only for the exact Init-only import boundary")
	}
	for _, record := range request.Proof.VerificationRecords {
		if record.Gate == domain.GateKernelBuild || record.Gate == domain.GateAxiomAudit {
			return errors.New("typed M4 receipt cannot be combined with caller-supplied V1/V2 records")
		}
	}
	request.Proof.LeanVerificationReceiptSHA256 = receiptSHA256
	request.Proof.LeanProofInputSHA256 = receipt.ProofSHA256
	request.Proof.VerificationRecords = append(request.Proof.VerificationRecords,
		leanVerificationRecord(domain.GateKernelBuild, "v1", receipt, receiptSHA256, request.Proof),
		leanVerificationRecord(domain.GateAxiomAudit, "v2", receipt, receiptSHA256, request.Proof),
	)
	return nil
}

func sameCoreOnlyImports(imports []string) bool {
	return len(imports) == 1 && imports[0] == "Init"
}

func validateM4M6ExecutionJoin(m4 solver.LeanVerificationReceipt, m6 book.ProofMetrics) error {
	if !sameCoreOnlyImports(m4.Imports) {
		return errors.New("cross-run linkage is qualified only for the exact Init-only import boundary")
	}
	if m6.ProofSHA256 != m4.GeneratedSourceSHA256 || m6.LeanMetricsSourceSHA256 != m4.GeneratedSourceSHA256 {
		return errors.New("M6 metrics do not name the exact generated source retained by M4")
	}
	if m6.LeanDeclaration != "mathcase_candidate" {
		return errors.New("M6 metrics declaration does not identify the generated M4 theorem")
	}
	if m6.LeanMetricsToolchain != m4.Toolchain || m6.LeanMetricsLeanVersion != m4.LeanVersion {
		return errors.New("M4 and M6 Lean toolchain identities differ")
	}
	return nil
}

func leanVerificationRecord(gate domain.VerificationGate, suffix string, receipt solver.LeanVerificationReceipt, receiptSHA256 string, proof book.ProofMetrics) domain.VerificationRecord {
	evidenceID := "m4-" + suffix + "-" + receiptSHA256
	summary := "M4 kernel verification passed for the exact generated Lean source and retained proof input"
	if gate == domain.GateAxiomAudit {
		summary = "M4 axiom policy passed for the exact generated Lean source and retained proof input"
	}
	return domain.VerificationRecord{
		Gate: gate, Status: domain.VerificationPassed, Summary: summary,
		EvidenceIDs:       []string{evidenceID},
		EvidenceArtifacts: []domain.EvidenceArtifactRef{{EvidenceID: evidenceID, ArtifactSHA256: receiptSHA256}},
		GateReceipt:       &domain.GateReceiptReference{EvidenceID: evidenceID, ReceiptSHA256: receiptSHA256},
		ProblemID:         proof.ProblemID, ProblemStatementSHA256: proof.ProblemStatementSHA256,
		ProofSHA256: proof.ProofSHA256, LeanToolchain: receipt.Toolchain,
		ExpectedLeanToolchain: receipt.Toolchain, RecordedAt: receipt.RecordedAtUTC,
	}
}

type v5M4Binding struct {
	Problem       domain.MathProblem
	Receipt       solver.LeanVerificationReceipt
	ReceiptPath   string
	ReceiptSHA256 string
	Metrics       book.ProofMetrics
}

func attachV5VerificationReceipt(request *bookScoreRequest, proof *book.ProofMetrics, dossierPath, evidenceRoot string, m4Binding *v5M4Binding) error {
	data, err := readRegularInput(dossierPath, "M6 V5 dossier", maxProblemFileBytes)
	if err != nil {
		return err
	}
	var dossier domain.Dossier
	if err := decodeStrictJSON(data, &dossier, "M6 V5 dossier"); err != nil {
		return err
	}
	if dossier.SchemaVersion != domain.DossierSchemaVersion || strings.TrimSpace(dossier.Case.ID) == "" || dossier.Case.CreatedAt.IsZero() {
		return errors.New("M6 V5 dossier schema, case ID, or case creation time is invalid")
	}
	statementSHA256, err := domain.ProblemStatementDigest(dossier.Problem.ID, dossier.Problem.Statement, dossier.Problem.LeanStatement)
	if err != nil {
		return fmt.Errorf("hash M6 V5 dossier statement: %w", err)
	}
	if request.Proof.ProblemID != dossier.Problem.ID || request.Proof.ProblemStatementSHA256 != statementSHA256 {
		return errors.New("M6 V5 dossier problem or canonical statement digest differs from the scored proof")
	}
	if m4Binding == nil {
		if dossier.Problem.ID != r0bScoreProblemID || dossier.Problem.Statement != r0bScoreStatement || dossier.Problem.LeanStatement != r0bScoreLeanStatement ||
			request.Proof.ProofID != r0bScoreProofID || request.Proof.LeanDeclaration != r0bScoreTheorem {
			return errors.New("M6 V5 dossier without typed M4 binding must identify the pinned R0b proof")
		}
	} else {
		if dossier.Problem.ID != m4Binding.Problem.ID || dossier.Problem.Statement != m4Binding.Problem.Statement || dossier.Problem.LeanStatement != m4Binding.Problem.LeanStatement {
			return errors.New("M6 V5 dossier M0 statement differs from the typed M4 problem")
		}
		if err := validateV5M4Binding(request, dossier, *m4Binding); err != nil {
			return err
		}
	}
	var v5Record *domain.VerificationRecord
	for index := range dossier.Verifications {
		if dossier.Verifications[index].Gate != domain.GateEssentiality {
			continue
		}
		if v5Record != nil {
			return errors.New("M6 V5 dossier contains duplicate essentiality records")
		}
		v5Record = &dossier.Verifications[index]
	}
	if v5Record == nil || v5Record.GateReceipt == nil || strings.TrimSpace(v5Record.GateReceipt.EvidenceID) == "" {
		return errors.New("M6 V5 dossier has no typed essentiality receipt reference")
	}
	if !isCanonicalM6SHA256(v5Record.GateReceipt.ReceiptSHA256) {
		return errors.New("M6 V5 dossier receipt reference requires a nonempty canonical SHA-256")
	}
	expectedDossierProofSHA256 := request.Proof.ProofSHA256
	if m4Binding != nil {
		expectedDossierProofSHA256 = m4Binding.Receipt.ProofSHA256
	}
	if v5Record.ProblemID != request.Proof.ProblemID || v5Record.ProblemStatementSHA256 != request.Proof.ProblemStatementSHA256 ||
		v5Record.ProofSHA256 != expectedDossierProofSHA256 || v5Record.Essentiality == nil {
		return errors.New("M6 V5 dossier record is not bound to the exact scored problem, statement, and proof")
	}
	result, err := gateaudit.Read(evidenceRoot, v5Record.GateReceipt.EvidenceID, v5Record.GateReceipt.ReceiptSHA256, dossier, *v5Record, nil)
	if err != nil {
		return err
	}
	if result.Status != v5Record.Status {
		return fmt.Errorf("M6 V5 dossier status %s differs from reopened typed receipt status %s", v5Record.Status, result.Status)
	}
	scoreRecord := *v5Record
	if m4Binding != nil {
		// Dossier V5 is bound to M4's retained proof input. The score view uses
		// the full generated source, connected to that input by the exact M4
		// receipt and the validated M4/M6 execution join above.
		scoreRecord.ProofSHA256 = request.Proof.ProofSHA256
		scoreRecord.Summary += " Score view maps the dossier's proof-input digest to the full generated-source digest through the exact M4 receipt."
	}
	request.Proof.VerificationRecords = append(request.Proof.VerificationRecords, scoreRecord)
	proof.VerificationRecords = append(proof.VerificationRecords, scoreRecord)
	return nil
}

func validateV5M4Binding(request *bookScoreRequest, dossier domain.Dossier, binding v5M4Binding) error {
	if !isCanonicalM6SHA256(binding.ReceiptSHA256) || binding.ReceiptSHA256 != request.Proof.LeanVerificationReceiptSHA256 {
		return errors.New("V5 M4 receipt digest differs from the score request's exact M4 receipt")
	}
	data, err := readRegularInput(binding.ReceiptPath, "M4 verification receipt for V5", 1<<20)
	if err != nil {
		return err
	}
	digest := sha256.Sum256(data)
	if hex.EncodeToString(digest[:]) != binding.ReceiptSHA256 {
		return errors.New("M4 receipt bytes changed between the M4/M6 join and V5 receipt consumption")
	}
	// The score command creates this binding only after attachLeanVerificationReceipt
	// has reopened the execution-bound M4 receipt. Here we recheck its exact bytes
	// and carry forward that already-validated typed identity.
	receipt := binding.Receipt
	if err := validateM4M6ExecutionJoin(receipt, binding.Metrics); err != nil {
		return fmt.Errorf("validate V5 M4/M6 join: %w", err)
	}
	statementSHA256, err := domain.ProblemStatementDigest(binding.Problem.ID, binding.Problem.Statement, binding.Problem.LeanStatement)
	if err != nil {
		return fmt.Errorf("derive V5 M0 statement digest: %w", err)
	}
	if request.Proof.ProblemID != binding.Problem.ID || request.Proof.ProblemStatementSHA256 != statementSHA256 ||
		request.Proof.ProofSHA256 != receipt.GeneratedSourceSHA256 || request.Proof.LeanProofInputSHA256 != receipt.ProofSHA256 ||
		request.Proof.LeanDeclaration != "mathcase_candidate" {
		return errors.New("V5 proof digest roles or identity do not match the typed M4 generated source and retained proof input")
	}
	if dossier.M4Receipt == nil || dossier.M4Receipt.EvidenceID != receipt.EvidenceID || dossier.M4Receipt.ReceiptSHA256 != binding.ReceiptSHA256 {
		return errors.New("V5 dossier M4 receipt reference does not match the exact reopened M4 receipt")
	}
	for _, gate := range []domain.VerificationGate{domain.GateKernelBuild, domain.GateAxiomAudit} {
		var match *domain.VerificationRecord
		for index := range dossier.Verifications {
			if dossier.Verifications[index].Gate != gate {
				continue
			}
			if match != nil {
				return fmt.Errorf("V5 dossier contains duplicate %s records", gate)
			}
			match = &dossier.Verifications[index]
		}
		if match == nil || match.Status != domain.VerificationPassed ||
			len(match.EvidenceIDs) != 1 || match.EvidenceIDs[0] != receipt.EvidenceID ||
			match.ProblemID != binding.Problem.ID || match.ProblemStatementSHA256 != statementSHA256 || match.ProofSHA256 != receipt.ProofSHA256 {
			return fmt.Errorf("V5 dossier %s record is not bound to the exact typed M4 receipt and retained proof input", gate)
		}
		if match.GateReceipt != nil && (match.GateReceipt.ReceiptSHA256 != binding.ReceiptSHA256 ||
			match.GateReceipt.EvidenceID != receipt.EvidenceID) {
			return fmt.Errorf("V5 dossier %s typed receipt reference differs from the exact M4 receipt", gate)
		}
	}
	return nil
}

func isCanonicalM6SHA256(value string) bool {
	decoded, err := hex.DecodeString(value)
	return err == nil && len(decoded) == sha256.Size && hex.EncodeToString(decoded) == value
}

func r0bVerificationRecord(gate domain.VerificationGate, suffix string, receipt r0bScoreReceipt, receiptSHA256 string, proof book.ProofMetrics) domain.VerificationRecord {
	evidenceID := "r0b-" + suffix + "-" + receiptSHA256
	summary := "R0b clean source snapshot rebuild and axiom audit passed for the exact scored proof"
	if gate == domain.GateKernelBuild {
		summary = "R0b clean source snapshot kernel build passed for the exact scored proof"
	}
	return domain.VerificationRecord{
		Gate: gate, Status: domain.VerificationPassed, Summary: summary,
		EvidenceIDs:       []string{evidenceID},
		EvidenceArtifacts: []domain.EvidenceArtifactRef{{EvidenceID: evidenceID, ArtifactSHA256: receiptSHA256}},
		GateReceipt:       &domain.GateReceiptReference{EvidenceID: evidenceID, ReceiptSHA256: receiptSHA256},
		ProblemID:         proof.ProblemID, ProblemStatementSHA256: proof.ProblemStatementSHA256,
		ProofSHA256: proof.ProofSHA256, LeanToolchain: receipt.Toolchain,
		ExpectedLeanToolchain: receipt.Toolchain, RecordedAt: receipt.RecordedAtUTC,
	}
}

func readM6RawOutput(path, label string, maximum int64) ([]byte, error) {
	info, err := os.Lstat(path)
	if err != nil {
		return nil, fmt.Errorf("%s: inspect file: %w", label, err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() || info.Size() > maximum {
		return nil, fmt.Errorf("%s must be a regular non-symlink file no larger than %d bytes", label, maximum)
	}
	file, err := os.Open(path)
	if err != nil {
		return nil, fmt.Errorf("%s: open file: %w", label, err)
	}
	defer file.Close()
	data, err := io.ReadAll(io.LimitReader(file, maximum+1))
	if err != nil {
		return nil, fmt.Errorf("%s: read file: %w", label, err)
	}
	if int64(len(data)) > maximum {
		return nil, fmt.Errorf("%s exceeds %d bytes", label, maximum)
	}
	return data, nil
}
