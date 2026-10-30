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

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
	"github.com/DarthCeltic/MathCase/internal/state"
)

type queueDossierAttachSolveResult struct {
	RunID                 string                 `json:"run_id"`
	ProblemID             string                 `json:"problem_id"`
	Solved                bool                   `json:"solved"`
	Proof                 string                 `json:"proof"`
	Attempts              []domain.SolverAttempt `json:"attempts"`
	RetrievalOutputSHA256 string                 `json:"retrieval_output_sha256,omitempty"`
	RetrievalHintCount    int                    `json:"retrieval_hint_count,omitempty"`
}

type queueDossierAttachOutput struct {
	SchemaVersion         string   `json:"schema_version"`
	Status                string   `json:"status"`
	CaseID                string   `json:"case_id"`
	ProblemID             string   `json:"problem_id"`
	QueueItemID           string   `json:"queue_item_id"`
	PlanID                string   `json:"plan_id"`
	QueueAttemptID        string   `json:"queue_attempt_id"`
	SolverAttemptID       string   `json:"solver_attempt_id"`
	ProofSHA256           string   `json:"proof_sha256"`
	ReceiptEvidenceID     string   `json:"receipt_evidence_id"`
	ReceiptSHA256         string   `json:"receipt_sha256"`
	PreviousDossierSHA256 string   `json:"previous_dossier_sha256"`
	RevisionDossierPath   string   `json:"revision_dossier_path"`
	RevisionDossierSHA256 string   `json:"revision_dossier_sha256"`
	ReceiptCopyPath       string   `json:"receipt_copy_path"`
	RemainingPendingGates []string `json:"remaining_pending_gates"`
	DeliveryReadiness     string   `json:"delivery_readiness"`
}

// runDossierAttachQueueM4 creates the first immutable proof-bearing revision
// for a governed queue case. The queue calls this only after its own journal,
// forecast, process cleanup, container cleanup, and typed result readbacks pass.
// This command independently reopens the exact solve-local output and M4
// receipt, and never changes V3-V7, M7 review, or dossier signing state.
func runDossierAttachQueueM4(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("dossier-attach-queue-m4", flag.ContinueOnError)
	flags.SetOutput(stderr)
	dossierPath := flags.String("dossier", "", "exact intake dossier to revise")
	problemPath := flags.String("problem", "", "exact frozen M0 problem JSON used by the solver")
	solveResultPath := flags.String("solve-result", "", "exact saved solve-local stdout JSON")
	receiptRootPath := flags.String("receipt-root", "", "directory containing the exact solve-local M4 receipt")
	catalogSnapshotPath := flags.String("catalog-snapshot", "", "exact validated M0 snapshot pinned by the dossier")
	outputPath := flags.String("output", "", "new immutable dossier revision path")
	runID := flags.String("run-id", "", "exact reserved queue run ID")
	queueItemID := flags.String("queue-item-id", "", "governed queue item identity")
	planID := flags.String("plan-id", "", "exact frozen queue plan identity")
	queueAttemptID := flags.String("queue-attempt-id", "", "exact durable queue attempt identity")
	leanImage := flags.String("lean-image", "", "expected immutable Lean verification image ID")
	pantographImage := flags.String("pantograph-image", "", "expected immutable Pantograph search image ID")
	snapshotSHA256 := flags.String("snapshot-manifest-sha256", "", "expected pinned Lean snapshot manifest digest")
	snapshotID := flags.String("snapshot-id", "", "expected pinned Lean snapshot ID")
	dockerExecutable := flags.String("docker-executable", "", "exact Docker executable used by both pinned local containers")
	retrievalSHA256 := flags.String("retrieval-output-sha256", "", "expected exact retrieval output digest when retrieval was authorized")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*dossierPath) == "" || strings.TrimSpace(*problemPath) == "" ||
		strings.TrimSpace(*solveResultPath) == "" || strings.TrimSpace(*receiptRootPath) == "" ||
		strings.TrimSpace(*catalogSnapshotPath) == "" || strings.TrimSpace(*outputPath) == "" ||
		strings.TrimSpace(*runID) == "" || strings.TrimSpace(*queueItemID) == "" || strings.TrimSpace(*planID) == "" ||
		strings.TrimSpace(*queueAttemptID) == "" || strings.TrimSpace(*leanImage) == "" ||
		strings.TrimSpace(*pantographImage) == "" || strings.TrimSpace(*snapshotSHA256) == "" ||
		strings.TrimSpace(*snapshotID) == "" || strings.TrimSpace(*dockerExecutable) == "" {
		fmt.Fprintln(stderr, "dossier-attach-queue-m4 requires the exact dossier, problem, solve result, receipt root, M0 snapshot, output, queue identities, and pinned solver identities")
		return 2
	}
	for name, value := range map[string]string{"queue item ID": *queueItemID, "plan ID": *planID, "queue attempt ID": *queueAttemptID} {
		if err := state.ValidateIdentifier(name, value); err != nil {
			fmt.Fprintf(stderr, "mathcase: invalid %s: %v\n", name, err)
			return 2
		}
	}

	dossierBytes, err := readRegularInput(*dossierPath, "queue intake dossier", maxDossierInputBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read queue intake dossier: %v\n", err)
		return 2
	}
	var original domain.Dossier
	if err := decodeStrictJSON(dossierBytes, &original, "queue intake dossier"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode queue intake dossier: %v\n", err)
		return 2
	}
	if err := original.Validate(); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate queue intake dossier: %v\n", err)
		return 1
	}
	snapshot, err := loadCatalogSnapshot(*catalogSnapshotPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load pinned M0 snapshot: %v\n", err)
		return 2
	}
	if err := validateM4ReplayProblemBinding(original, snapshot); err != nil {
		fmt.Fprintf(stderr, "mathcase: dossier/M0 binding: %v\n", err)
		return 1
	}
	if err := validateQueueFirstProofPermission(snapshot, original.Problem.ID); err != nil {
		fmt.Fprintf(stderr, "mathcase: queue proof permission: %v\n", err)
		return 1
	}
	problem, err := loadProblem(*problemPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load exact frozen M0 problem: %v\n", err)
		return 2
	}
	if !queueSolveProblemMatchesDossier(problem, original.Problem) {
		fmt.Fprintln(stderr, "mathcase: exact frozen solver problem differs from the intake dossier")
		return 1
	}
	resultBytes, err := readRegularInput(*solveResultPath, "saved solve-local result", solver.MaxSolveLocalOutputSize)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read saved solve-local result: %v\n", err)
		return 2
	}
	var solveResult queueDossierAttachSolveResult
	if err := decodeStrictJSON(resultBytes, &solveResult, "saved solve-local result"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode saved solve-local result: %v\n", err)
		return 2
	}
	validated, err := solver.ValidateSolveLocalOutput(resultBytes, problem, *receiptRootPath, solver.SolveLocalValidationExpectation{
		RunID: *runID, LeanSandboxImage: *leanImage, PantographSandboxImage: *pantographImage,
		SnapshotManifestSHA256: *snapshotSHA256, SnapshotID: *snapshotID,
		RetrievalOutputSHA256: *retrievalSHA256, DockerExecutable: *dockerExecutable,
	})
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: reopen exact queue proof and M4 receipt: %v\n", err)
		return 1
	}
	if validated.Status != "VALIDATED" || validated.RunID != *runID || validated.ProblemID != original.Problem.ID ||
		solveResult.RunID != *runID || solveResult.ProblemID != original.Problem.ID || !solveResult.Solved || strings.TrimSpace(solveResult.Proof) == "" {
		fmt.Fprintln(stderr, "mathcase: solver result is not the exact successful proof bound to this queue item")
		return 1
	}
	receiptPath := filepath.Join(*receiptRootPath, validated.EvidenceID+".json")
	receiptBytes, err := readRegularInput(receiptPath, "exact M4 receipt", maxDossierInputBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read exact M4 receipt: %v\n", err)
		return 2
	}
	if digestBytes(receiptBytes) != validated.ReceiptSHA256 {
		fmt.Fprintln(stderr, "mathcase: exact M4 receipt bytes changed after solver validation")
		return 1
	}
	var receipt solver.LeanVerificationReceipt
	if err := decodeStrictJSON(receiptBytes, &receipt, "exact M4 receipt"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode exact M4 receipt: %v\n", err)
		return 2
	}
	if err := solver.ValidateExecutionBoundReceipt(receipt, problem); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate execution-bound M4 receipt: %v\n", err)
		return 1
	}
	if receipt.EvidenceID != validated.EvidenceID || receipt.ProofSHA256 != validated.ProofSHA256 || receipt.RecordedAtUTC.IsZero() ||
		receipt.SandboxExecution.StartedAtUTC.IsZero() || receipt.SandboxExecution.FinishedAtUTC.IsZero() {
		fmt.Fprintln(stderr, "mathcase: M4 receipt identity, proof, or run timestamps differ from the validated solve result")
		return 1
	}
	revision, err := buildQueueFirstProofRevision(original, snapshot, problem, solveResult, receipt, validated)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: build first queue proof revision: %v\n", err)
		return 1
	}
	encoded, err := json.MarshalIndent(revision, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode first queue proof revision: %v\n", err)
		return 2
	}
	encoded = append(encoded, '\n')
	revisionSHA256 := digestBytes(encoded)
	previousSHA256 := digestBytes(dossierBytes)
	outputAbs, err := filepath.Abs(*outputPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: resolve revision output: %v\n", err)
		return 2
	}
	canonicalOutput := filepath.Join(filepath.Dir(filepath.Clean(*dossierPath)), fmt.Sprintf("dossier-revision-v%d.json", revision.Case.Version))
	canonicalAbs, err := filepath.Abs(canonicalOutput)
	if err != nil || filepath.Clean(outputAbs) != filepath.Clean(canonicalAbs) {
		fmt.Fprintf(stderr, "mathcase: output must be the canonical immutable revision path %q\n", canonicalOutput)
		return 2
	}
	status := "REVISION_WRITTEN_NOT_READY"
	if existing, readErr := readRegularInput(*outputPath, "existing queue dossier successor", maxDossierInputBytes); readErr == nil {
		if !equalBytes(existing, encoded) {
			fmt.Fprintln(stderr, "mathcase: existing successor differs from this exact verified queue result; refusing overwrite")
			return 1
		}
		status = "REVISION_ALREADY_ATTACHED"
	} else {
		if _, statErr := os.Lstat(*outputPath); statErr == nil || !errors.Is(statErr, os.ErrNotExist) {
			fmt.Fprintf(stderr, "mathcase: inspect existing successor: %v\n", readErr)
			return 2
		}
		if err := validateDossierRevisionSequence(*dossierPath, *outputPath, original, dossierBytes); err != nil {
			fmt.Fprintf(stderr, "mathcase: dossier revision sequence: %v\n", err)
			return 2
		}
	}
	receiptDirectory := filepath.Join(filepath.Dir(*dossierPath), "receipts")
	receiptCopyPath := filepath.Join(receiptDirectory, receipt.EvidenceID+".json")
	if err := ensureQueueDossierReceiptDirectory(receiptDirectory, status == "REVISION_WRITTEN_NOT_READY"); err != nil {
		fmt.Fprintf(stderr, "mathcase: inspect dossier receipt directory: %v\n", err)
		return 2
	}
	if err := validateDossierRevisionPaths(*dossierPath, receiptCopyPath, *outputPath, receipt.EvidenceID); err != nil {
		fmt.Fprintf(stderr, "mathcase: dossier revision paths: %v\n", err)
		return 2
	}
	if err := ensureExactQueueReceiptCopy(receiptCopyPath, receiptBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: preserve exact queue receipt in dossier bundle: %v\n", err)
		return 2
	}
	if status == "REVISION_WRITTEN_NOT_READY" {
		if err := writeNewRegularOutput(*outputPath, encoded); err != nil {
			fmt.Fprintf(stderr, "mathcase: write immutable queue dossier revision: %v\n", err)
			return 2
		}
	}
	output := queueDossierAttachOutput{
		SchemaVersion: "mathcase-queue-m4-dossier-attachment-v1", Status: status,
		CaseID: revision.Case.ID, ProblemID: revision.Problem.ID, QueueItemID: *queueItemID,
		PlanID: *planID, QueueAttemptID: *queueAttemptID, SolverAttemptID: validated.AttemptID,
		ProofSHA256: validated.ProofSHA256, ReceiptEvidenceID: validated.EvidenceID,
		ReceiptSHA256: validated.ReceiptSHA256, PreviousDossierSHA256: previousSHA256,
		RevisionDossierPath: filepath.ToSlash(filepath.Clean(*outputPath)), RevisionDossierSHA256: revisionSHA256,
		ReceiptCopyPath:       filepath.ToSlash(receiptCopyPath),
		RemainingPendingGates: []string{"V3", "V4", "V5", "V6", "V7"}, DeliveryReadiness: "NOT_READY",
	}
	summaryBytes, err := json.MarshalIndent(output, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode queue dossier attachment summary: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(append(summaryBytes, '\n')); err != nil {
		fmt.Fprintf(stderr, "mathcase: write queue dossier attachment summary: %v\n", err)
		return 2
	}
	return 0
}

// buildQueueFirstProofRevision consumes only the exact result and receipt
// already validated by runDossierAttachQueueM4. It creates the first V1/V2
// records and keeps the formal statement's human-facing claim OPEN while V3-V7
// remain untouched.
func buildQueueFirstProofRevision(original domain.Dossier, snapshot catalog.Snapshot, problem domain.MathProblem, result queueDossierAttachSolveResult, receipt solver.LeanVerificationReceipt, validated solver.ValidatedSolveLocalResult) (domain.Dossier, error) {
	if original.Problem.Kind == string(catalog.ProblemKindLocalArithmeticTask) || original.Problem.LocalComputationSpec != nil {
		return domain.Dossier{}, errors.New("local arithmetic cases cannot be attached through the Lean queue-proof path")
	}
	if err := validateM4ReplayProblemBinding(original, snapshot); err != nil {
		return domain.Dossier{}, err
	}
	if err := validateQueueFirstProofPermission(snapshot, original.Problem.ID); err != nil {
		return domain.Dossier{}, err
	}
	if original.M4Receipt != nil || len(original.Attempts) != 0 || len(original.Claims) != 0 || len(original.Evidence) != 0 {
		return domain.Dossier{}, errors.New("first queue-proof attachment requires an untouched intake dossier without prior proof records")
	}
	if !result.Solved || strings.TrimSpace(result.Proof) == "" || result.RunID == "" || result.RunID != validated.RunID ||
		result.ProblemID != original.Problem.ID || validated.Status != "VALIDATED" || validated.ProblemID != original.Problem.ID ||
		validated.StatementSHA256 == "" || validated.ProofSHA256 == "" || receipt.EvidenceID != validated.EvidenceID ||
		receipt.ProofSHA256 != validated.ProofSHA256 || receipt.ProblemStatementSHA256 != validated.StatementSHA256 || receipt.RecordedAtUTC.IsZero() {
		return domain.Dossier{}, errors.New("validated queue result, exact statement, proof, run, and M4 receipt do not agree")
	}
	var passed *domain.SolverAttempt
	for index := range result.Attempts {
		attempt := &result.Attempts[index]
		if err := attempt.Validate(); err != nil {
			return domain.Dossier{}, fmt.Errorf("queue solver attempt %d is invalid: %w", index, err)
		}
		if attempt.RunID != validated.RunID || attempt.ProblemID != original.Problem.ID {
			return domain.Dossier{}, errors.New("queue solver attempt is bound to a different run or problem")
		}
		if attempt.Outcome == domain.SolverOutcomePass {
			if passed != nil {
				return domain.Dossier{}, errors.New("queue result contains more than one passing solver attempt")
			}
			passed = attempt
		}
	}
	if passed == nil || passed.ID != validated.AttemptID || passed.VerifiedProofSHA256 != validated.ProofSHA256 ||
		passed.CandidateSHA256 != validated.ProofSHA256 || len(passed.EvidenceIDs) != 1 || passed.EvidenceIDs[0] != receipt.EvidenceID {
		return domain.Dossier{}, errors.New("queue result has no unique attempt matching the exact validated proof and receipt")
	}
	statementSHA256, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil || statementSHA256 != validated.StatementSHA256 {
		return domain.Dossier{}, errors.New("validated queue result is not bound to the exact dossier statement")
	}
	if len(original.Problem.SourceIDs) == 0 {
		return domain.Dossier{}, errors.New("queue dossier has no source to bind the exact M4 result")
	}

	revision, err := cloneDossier(original)
	if err != nil {
		return domain.Dossier{}, fmt.Errorf("clone queue dossier: %w", err)
	}
	revision.Case.Version++
	revision.Case.UpdatedAt = receipt.RecordedAtUTC
	revision.M4Receipt = &domain.M4ReceiptReference{EvidenceID: receipt.EvidenceID, ReceiptSHA256: validated.ReceiptSHA256}
	claimDigest := sha256.Sum256([]byte(receipt.EvidenceID))
	claimID := "queue-proof-" + hex.EncodeToString(claimDigest[:])
	revision.Claims = append(revision.Claims, domain.Claim{
		ID: claimID, CaseID: revision.Case.ID,
		Text:       "The exact formal statement has one local solver attempt with a proof accepted by the pinned Lean kernel and axiom policy; statement fidelity remains pending.",
		Importance: domain.PriorityP1, Status: domain.ClaimStatusOpen,
		Assessment: domain.Assessment{Confidence: 0}, EvidenceIDs: []string{receipt.EvidenceID},
		CreatedAt: receipt.RecordedAtUTC, UpdatedAt: receipt.RecordedAtUTC,
	})
	revision.Evidence = append(revision.Evidence, domain.Evidence{
		ID: receipt.EvidenceID, CaseID: revision.Case.ID, ClaimID: claimID, SourceID: original.Problem.SourceIDs[0],
		Summary: "Exact queue-run M4 Lean receipt; V1 kernel and V2 axiom-policy checks were independently reopened. This is not a statement-fidelity or discovery assessment.",
		Stance:  domain.StanceSupports, Strength: 0, Independence: 0, AuditStatus: domain.AuditStatusUnaudited,
		AddedByRunID: validated.RunID, CreatedAt: receipt.RecordedAtUTC,
	})
	revision.Attempts = append(revision.Attempts, *passed)
	for index := range revision.Verifications {
		record := &revision.Verifications[index]
		if record.Gate != domain.GateKernelBuild && record.Gate != domain.GateAxiomAudit {
			continue
		}
		if record.Status != domain.VerificationPending || len(record.EvidenceIDs) != 0 {
			return domain.Dossier{}, errors.New("first queue-proof attachment requires pending V1/V2 records without previous evidence")
		}
		record.Status = domain.VerificationPassed
		record.EvidenceIDs = []string{receipt.EvidenceID}
		record.ProblemID = original.Problem.ID
		record.ProblemStatementSHA256 = validated.StatementSHA256
		record.ProofSHA256 = validated.ProofSHA256
		record.LeanToolchain = receipt.Toolchain
		record.ExpectedLeanToolchain = receipt.Toolchain
		record.RecordedAt = receipt.RecordedAtUTC
		if record.Gate == domain.GateKernelBuild {
			record.Summary = "V1 passed: the exact queue proof was accepted by the pinned Lean kernel from the execution-bound M4 receipt."
		} else {
			record.Summary = "V2 passed: the exact queue proof passed the recorded axiom policy in the execution-bound M4 receipt."
		}
	}
	for _, record := range revision.Verifications {
		if (record.Gate == domain.GateStatementFidelity || record.Gate == domain.GateFalsification || record.Gate == domain.GateEssentiality || record.Gate == domain.GateProvenanceLeakage || record.Gate == domain.GateLiteratureAndStatus) && record.Status != domain.VerificationPending {
			return domain.Dossier{}, fmt.Errorf("first queue-proof attachment refuses a non-pending %s gate", record.Gate)
		}
	}
	if err := revision.Validate(); err != nil {
		return domain.Dossier{}, fmt.Errorf("first queue-proof dossier revision is invalid: %w", err)
	}
	return revision, nil
}

func validateQueueFirstProofPermission(snapshot catalog.Snapshot, problemID string) error {
	var problem *catalog.Problem
	for index := range snapshot.Problems {
		if snapshot.Problems[index].ID == problemID {
			problem = &snapshot.Problems[index]
			break
		}
	}
	if problem == nil || !problem.StatementAudit.Passed {
		return errors.New("exact M0 statement review is not passed")
	}
	sources := make(map[string]catalog.SourceVersion, len(snapshot.Sources))
	for _, source := range snapshot.Sources {
		sources[source.ID] = source
	}
	for _, sourceID := range problem.SourceIDs {
		source, exists := sources[sourceID]
		if !exists || !source.EligibleFor(catalog.UseLocalProofAttempt) || !source.EligibleFor(catalog.UseLocalStorage) {
			return fmt.Errorf("M0 source %q is not cleared for local proof attempts and storage", sourceID)
		}
	}
	return nil
}

func queueSolveProblemMatchesDossier(problem domain.MathProblem, dossier domain.MathProblem) bool {
	if problem.ID != dossier.ID || problem.Title != dossier.Title || problem.Statement != dossier.Statement ||
		problem.LeanStatement != dossier.LeanStatement || problem.M0Status != dossier.M0Status || len(problem.SourceIDs) != len(dossier.SourceIDs) {
		return false
	}
	for index, sourceID := range problem.SourceIDs {
		if dossier.SourceIDs[index] != sourceID {
			return false
		}
	}
	return true
}

func ensureExactQueueReceiptCopy(path string, contents []byte) error {
	if strings.TrimSpace(path) == "" || len(contents) == 0 {
		return errors.New("receipt copy path and exact receipt bytes are required")
	}
	if info, err := os.Lstat(path); err == nil {
		if !info.Mode().IsRegular() || info.Mode()&os.ModeSymlink != 0 {
			return errors.New("existing dossier receipt copy is not a regular file")
		}
		existing, err := os.ReadFile(path)
		if err != nil || !equalBytes(existing, contents) {
			return errors.New("existing dossier receipt copy differs from the exact queue M4 receipt")
		}
		return nil
	} else if !os.IsNotExist(err) {
		return fmt.Errorf("inspect dossier receipt copy: %w", err)
	}
	return writeNewRegularOutput(path, contents)
}

func ensureQueueDossierReceiptDirectory(path string, allowCreate bool) error {
	info, err := os.Lstat(path)
	if err == nil {
		if !info.IsDir() || info.Mode()&os.ModeSymlink != 0 {
			return errors.New("dossier receipts path must be a real directory, not a symlink or file")
		}
		return nil
	}
	if !errors.Is(err, os.ErrNotExist) {
		return fmt.Errorf("inspect dossier receipts path: %w", err)
	}
	if !allowCreate {
		return errors.New("existing dossier successor has no receipts directory")
	}
	if err := os.Mkdir(path, 0o700); err != nil && !errors.Is(err, os.ErrExist) {
		return fmt.Errorf("create dossier receipts directory: %w", err)
	}
	info, err = os.Lstat(path)
	if err != nil || !info.IsDir() || info.Mode()&os.ModeSymlink != 0 {
		return errors.New("dossier receipts path was replaced or is not a real directory")
	}
	return nil
}

func equalBytes(left, right []byte) bool {
	if len(left) != len(right) {
		return false
	}
	for index := range left {
		if left[index] != right[index] {
			return false
		}
	}
	return true
}
