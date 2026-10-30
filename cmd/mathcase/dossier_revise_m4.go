package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strconv"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

const dossierM4RevisionSchema = "mathcase-dossier-m4-revision-v1"

type dossierM4RevisionOutput struct {
	SchemaVersion         string `json:"schema_version"`
	Status                string `json:"status"`
	CaseID                string `json:"case_id"`
	CatalogSnapshotSHA256 string `json:"catalog_snapshot_sha256"`
	M0Status              string `json:"m0_status"`
	PreviousDossierSHA256 string `json:"previous_dossier_sha256"`
	RevisionDossierPath   string `json:"revision_dossier_path"`
	RevisionDossierSHA256 string `json:"revision_dossier_sha256"`
	LeanReceiptID         string `json:"lean_receipt_id"`
	LeanReceiptSHA256     string `json:"lean_receipt_sha256"`
	SupersededReceiptID   string `json:"superseded_receipt_id"`
	V1V2ReceiptID         string `json:"v1_v2_receipt_id"`
	StatementAuditStatus  string `json:"statement_audit_status"`
	DeliveryReadiness     string `json:"delivery_readiness"`
	Message               string `json:"message"`
}

// runDossierReviseM4 creates an immutable revision of an existing dossier,
// binding V1/V2 to the exact bytes of a reopened execution-bound receipt. It
// can pin the current receipt without duplicating evidence, or replace an old
// receipt with a fresh run. It also copies the exact M0 status label from the
// dossier's pinned catalog snapshot when the legacy dossier omitted it. The
// input dossier is never modified and the output path must be new.
func runDossierReviseM4(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("dossier-revise-m4", flag.ContinueOnError)
	flags.SetOutput(stderr)
	dossierPath := flags.String("dossier", "", "existing strict JSON dossier to revise")
	receiptPath := flags.String("lean-receipt", "", "execution-bound Lean receipt to link")
	catalogSnapshotPath := flags.String("catalog-snapshot", "", "validated M0 snapshot already pinned by the dossier")
	outputPath := flags.String("output", "", "new immutable dossier revision path; existing files are never overwritten")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*dossierPath) == "" || strings.TrimSpace(*receiptPath) == "" || strings.TrimSpace(*catalogSnapshotPath) == "" || strings.TrimSpace(*outputPath) == "" {
		fmt.Fprintln(stderr, "dossier-revise-m4 requires --dossier FILE, --lean-receipt FILE, --catalog-snapshot FILE, and --output NEW_FILE")
		return 2
	}

	dossierBytes, err := readRegularInput(*dossierPath, "existing dossier", maxDossierInputBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read existing dossier: %v\n", err)
		return 2
	}
	var original domain.Dossier
	if err := decodeStrictJSON(dossierBytes, &original, "existing dossier"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode existing dossier: %v\n", err)
		return 2
	}
	if err := original.Validate(); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate existing dossier: %v\n", err)
		return 2
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
	m0Status, err := catalogProblemStatus(snapshot, original.Problem.ID)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read M0 status: %v\n", err)
		return 1
	}
	receiptBytes, err := readRegularInput(*receiptPath, "execution-bound Lean receipt", maxDossierInputBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: read Lean receipt: %v\n", err)
		return 2
	}
	var receipt solver.LeanVerificationReceipt
	if err := decodeStrictJSON(receiptBytes, &receipt, "execution-bound Lean receipt"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode Lean receipt: %v\n", err)
		return 2
	}
	if err := solver.ValidateExecutionBoundReceipt(receipt, original.Problem); err != nil {
		fmt.Fprintf(stderr, "mathcase: Lean receipt is not execution-bound to this exact dossier problem: %v\n", err)
		return 1
	}
	if receipt.RecordedAtUTC.IsZero() || receipt.SandboxExecution.StartedAtUTC.IsZero() || receipt.SandboxExecution.FinishedAtUTC.IsZero() {
		fmt.Fprintln(stderr, "mathcase: Lean receipt is missing run timestamps")
		return 1
	}
	if err := validateDossierRevisionPaths(*dossierPath, *receiptPath, *outputPath, receipt.EvidenceID); err != nil {
		fmt.Fprintf(stderr, "mathcase: dossier revision paths: %v\n", err)
		return 2
	}
	if err := validateDossierRevisionSequence(*dossierPath, *outputPath, original, dossierBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: dossier revision sequence: %v\n", err)
		return 2
	}

	var v1, v2 *domain.VerificationRecord
	for index := range original.Verifications {
		switch original.Verifications[index].Gate {
		case domain.GateKernelBuild:
			v1 = &original.Verifications[index]
		case domain.GateAxiomAudit:
			v2 = &original.Verifications[index]
		}
	}
	if v1 == nil || v2 == nil || v1.Status != domain.VerificationPassed || v2.Status != domain.VerificationPassed ||
		len(v1.EvidenceIDs) != 1 || len(v2.EvidenceIDs) != 1 || v1.EvidenceIDs[0] == "" || v1.EvidenceIDs[0] != v2.EvidenceIDs[0] {
		fmt.Fprintln(stderr, "mathcase: existing dossier must have one shared passed V1/V2 receipt to supersede")
		return 1
	}
	oldReceiptID := v1.EvidenceIDs[0]
	pinExistingReceipt := oldReceiptID == receipt.EvidenceID
	receiptSHA256 := m4ReplayDigestBytes(receiptBytes)
	if pinExistingReceipt && original.M4Receipt != nil && original.M4Receipt.ReceiptSHA256 == receiptSHA256 && original.Problem.M0Status == m0Status {
		fmt.Fprintln(stderr, "mathcase: the current M4 receipt and exact M0 status are already pinned")
		return 1
	}
	if v1.ProblemID != original.Problem.ID || v2.ProblemID != original.Problem.ID ||
		v1.ProblemStatementSHA256 != v2.ProblemStatementSHA256 ||
		v1.ProofSHA256 != receipt.ProofSHA256 || v2.ProofSHA256 != receipt.ProofSHA256 ||
		v1.LeanToolchain != receipt.Toolchain || v1.ExpectedLeanToolchain != receipt.Toolchain {
		fmt.Fprintln(stderr, "mathcase: new receipt does not match the exact existing V1/V2 problem, proof, and toolchain pins")
		return 1
	}
	if v1.ProblemStatementSHA256 != receipt.ProblemStatementSHA256 {
		fmt.Fprintln(stderr, "mathcase: new receipt statement digest differs from the existing V1/V2 records")
		return 1
	}
	if !pinExistingReceipt && hasDossierEvidenceID(original, receipt.EvidenceID) {
		fmt.Fprintln(stderr, "mathcase: receipt evidence ID already exists in the dossier; refusing a duplicate revision")
		return 1
	}
	if _, err := os.Lstat(*outputPath); err == nil {
		fmt.Fprintf(stderr, "mathcase: output revision already exists: %q\n", *outputPath)
		return 2
	} else if !os.IsNotExist(err) {
		fmt.Fprintf(stderr, "mathcase: inspect output revision: %v\n", err)
		return 2
	}

	legacyEvidence, found := dossierEvidenceByID(original, oldReceiptID)
	if !found {
		fmt.Fprintln(stderr, "mathcase: old V1/V2 receipt is not preserved as dossier evidence")
		return 1
	}
	if !pinExistingReceipt && len(original.Problem.SourceIDs) == 0 {
		fmt.Fprintln(stderr, "mathcase: dossier problem has no source to bind the new execution evidence")
		return 1
	}
	var newEvidence domain.Evidence
	if !pinExistingReceipt {
		newEvidence = legacyEvidence
		newEvidence.ID = receipt.EvidenceID
		newEvidence.SourceID = original.Problem.SourceIDs[0]
		newEvidence.Summary = "Fresh pinned-sandbox Lean process receipt; exact statement and proof were reopened, kernel and axiom policy passed. Local receipt hashes bind the run but do not authenticate its issuer."
		newEvidence.Stance = domain.StanceSupports
		newEvidence.AuditStatus = domain.AuditStatusUnaudited
		newEvidence.AddedByRunID = "bootstrap0000-m4-" + receipt.EvidenceID
		newEvidence.CreatedAt = receipt.RecordedAtUTC
	}

	revision, err := cloneDossier(original)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: clone existing dossier: %v\n", err)
		return 2
	}
	revision.Case.Version++
	revision.Problem.M0Status = m0Status
	revision.Case.UpdatedAt = receipt.RecordedAtUTC
	if pinExistingReceipt {
		revision.Case.UpdatedAt = time.Now().UTC()
	}
	if !pinExistingReceipt {
		revision.Evidence = append(revision.Evidence, newEvidence)
		for index := range revision.Claims {
			if containsStringValue(revision.Claims[index].EvidenceIDs, oldReceiptID) {
				revision.Claims[index].EvidenceIDs = appendUniqueString(revision.Claims[index].EvidenceIDs, receipt.EvidenceID)
			}
		}
		revision.Argument.EvidenceIDs = appendUniqueString(revision.Argument.EvidenceIDs, receipt.EvidenceID)
		revision.Verdict.EvidenceIDs = appendUniqueString(revision.Verdict.EvidenceIDs, receipt.EvidenceID)
		for index := range revision.Attempts {
			if containsStringValue(revision.Attempts[index].EvidenceIDs, oldReceiptID) && revision.Attempts[index].VerifiedProofSHA256 == receipt.ProofSHA256 {
				revision.Attempts[index].EvidenceIDs = appendUniqueString(revision.Attempts[index].EvidenceIDs, receipt.EvidenceID)
			}
		}
		newRunID := "bootstrap0000-m4-" + receipt.EvidenceID
		attemptID, err := domain.AttemptIDFor(newRunID, revision.Problem.ID, domain.SolverStageS0, "knownproof-list-mem-pair", receipt.SandboxExecution.StartedAtUTC)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: derive M4 attempt ID: %v\n", err)
			return 2
		}
		revision.Attempts = append(revision.Attempts, domain.SolverAttempt{
			ID: attemptID, RunID: newRunID, ProblemID: revision.Problem.ID, CandidateID: "knownproof-list-mem-pair",
			Stage: domain.SolverStageS0, Toolchain: receipt.Toolchain,
			CandidateSHA256: receipt.GeneratedSourceSHA256, VerifiedProofSHA256: receipt.ProofSHA256,
			Outcome: domain.SolverOutcomePass, CostKnown: false,
			StartedAt: receipt.SandboxExecution.StartedAtUTC, FinishedAt: receipt.SandboxExecution.FinishedAtUTC,
			EvidenceIDs: []string{receipt.EvidenceID},
		})
	}
	updateDossierM4VerificationRecords(&revision, receipt, receiptSHA256, pinExistingReceipt)
	if err := revision.Validate(); err != nil {
		fmt.Fprintf(stderr, "mathcase: revised dossier failed structural validation: %v\n", err)
		return 1
	}
	encoded, err := json.MarshalIndent(revision, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode revised dossier: %v\n", err)
		return 2
	}
	encoded = append(encoded, '\n')
	previousSum := sha256.Sum256(dossierBytes)
	revisionSum := sha256.Sum256(encoded)
	receiptSum := sha256.Sum256(receiptBytes)
	supersededReceiptID := oldReceiptID
	message := "The canonical successor binds V1/V2 to an execution-bound receipt and records the M0 status label from the exact catalog snapshot already pinned by the dossier. This label is not an independent status re-audit. The predecessor remains unchanged; V3-V7, independent M7 review, and owner-held signing remain open."
	if pinExistingReceipt {
		supersededReceiptID = ""
		message = "A canonical successor pins the exact bytes of the existing execution-bound M4 receipt without duplicating evidence or attempts and records the M0 status label from the exact catalog snapshot already pinned by the dossier. This label is not an independent status re-audit. The predecessor and receipt remain unchanged; V3-V7, independent M7 review, and owner-held signing remain open."
	}
	output := dossierM4RevisionOutput{
		SchemaVersion: dossierM4RevisionSchema, Status: "REVISION_WRITTEN_NOT_READY",
		CaseID: revision.Case.ID, CatalogSnapshotSHA256: snapshot.ContentSHA256, M0Status: m0Status,
		PreviousDossierSHA256: hex.EncodeToString(previousSum[:]),
		RevisionDossierPath:   *outputPath, RevisionDossierSHA256: hex.EncodeToString(revisionSum[:]),
		LeanReceiptID: receipt.EvidenceID, LeanReceiptSHA256: hex.EncodeToString(receiptSum[:]),
		SupersededReceiptID: supersededReceiptID, V1V2ReceiptID: receipt.EvidenceID,
		StatementAuditStatus: "NOT_PASSED", DeliveryReadiness: "NOT_READY",
		Message: message,
	}
	resultBytes, err := json.MarshalIndent(output, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode revision summary: %v\n", err)
		return 2
	}
	if err := writeNewRegularOutput(*outputPath, encoded); err != nil {
		fmt.Fprintf(stderr, "mathcase: write immutable dossier revision: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(append(resultBytes, '\n')); err != nil {
		fmt.Fprintf(stderr, "mathcase: write revision summary: %v\n", err)
		return 2
	}
	return 0
}

func catalogProblemStatus(snapshot catalog.Snapshot, problemID string) (string, error) {
	for _, problem := range snapshot.Problems {
		if problem.ID == problemID {
			return string(problem.Status), nil
		}
	}
	return "", fmt.Errorf("problem %q is absent from the pinned M0 snapshot", problemID)
}

func cloneDossier(dossier domain.Dossier) (domain.Dossier, error) {
	data, err := json.Marshal(dossier)
	if err != nil {
		return domain.Dossier{}, err
	}
	var clone domain.Dossier
	if err := json.Unmarshal(data, &clone); err != nil {
		return domain.Dossier{}, err
	}
	return clone, nil
}

func hasDossierEvidenceID(dossier domain.Dossier, id string) bool {
	_, found := dossierEvidenceByID(dossier, id)
	return found
}

func dossierEvidenceByID(dossier domain.Dossier, id string) (domain.Evidence, bool) {
	for _, evidence := range dossier.Evidence {
		if evidence.ID == id {
			return evidence, true
		}
	}
	return domain.Evidence{}, false
}

func appendUniqueString(values []string, value string) []string {
	if containsStringValue(values, value) {
		return values
	}
	return append(values, value)
}

func containsStringValue(values []string, value string) bool {
	for _, current := range values {
		if current == value {
			return true
		}
	}
	return false
}

func validateDossierRevisionPaths(dossierPath, receiptPath, outputPath, receiptID string) error {
	dossierAbs, err := filepath.Abs(dossierPath)
	if err != nil {
		return fmt.Errorf("resolve dossier path: %w", err)
	}
	receiptAbs, err := filepath.Abs(receiptPath)
	if err != nil {
		return fmt.Errorf("resolve Lean receipt path: %w", err)
	}
	outputAbs, err := filepath.Abs(outputPath)
	if err != nil {
		return fmt.Errorf("resolve output path: %w", err)
	}
	dossierDirInfo, err := os.Stat(filepath.Dir(dossierAbs))
	if err != nil || !dossierDirInfo.IsDir() {
		return errors.New("existing dossier parent is not a directory")
	}
	outputDirInfo, err := os.Stat(filepath.Dir(outputAbs))
	if err != nil || !outputDirInfo.IsDir() || !os.SameFile(dossierDirInfo, outputDirInfo) {
		return errors.New("immutable dossier revision must be written beside its predecessor in the same bundle")
	}
	expectedReceiptDir := filepath.Join(filepath.Dir(dossierAbs), "receipts")
	expectedReceiptInfo, err := os.Stat(expectedReceiptDir)
	if err != nil || !expectedReceiptInfo.IsDir() {
		return errors.New("existing dossier bundle has no receipts directory")
	}
	actualReceiptDirInfo, err := os.Stat(filepath.Dir(receiptAbs))
	if err != nil || !actualReceiptDirInfo.IsDir() || !os.SameFile(expectedReceiptInfo, actualReceiptDirInfo) {
		return errors.New("Lean receipt must come from this dossier bundle's receipts directory")
	}
	if filepath.Base(receiptAbs) != receiptID+".json" {
		return errors.New("Lean receipt filename must match its embedded evidence ID")
	}
	if filepath.Base(outputAbs) == filepath.Base(dossierAbs) {
		return errors.New("revision output must use a new path and preserve its predecessor")
	}
	return nil
}

// validateDossierRevisionSequence prevents branching and duplicate revisions.
// The next output name uses the incremented dossier version, and the
// predecessor must be the current tip in this bundle. O_EXCL in the final
// write closes the same-path race between concurrent invocations.
func validateDossierRevisionSequence(dossierPath, outputPath string, predecessor domain.Dossier, expectedPredecessorBytes []byte) error {
	dossierAbs, err := filepath.Abs(dossierPath)
	if err != nil {
		return fmt.Errorf("resolve predecessor dossier: %w", err)
	}
	outputAbs, err := filepath.Abs(outputPath)
	if err != nil {
		return fmt.Errorf("resolve revision output: %w", err)
	}
	dossierDirInfo, err := os.Stat(filepath.Dir(dossierAbs))
	if err != nil || !dossierDirInfo.IsDir() {
		return errors.New("predecessor dossier parent is not a directory")
	}
	outputDirInfo, err := os.Stat(filepath.Dir(outputAbs))
	if err != nil || !outputDirInfo.IsDir() || !os.SameFile(dossierDirInfo, outputDirInfo) {
		return errors.New("revision output must be written in the same bundle directory as its predecessor")
	}
	if len(expectedPredecessorBytes) == 0 {
		return errors.New("exact loaded predecessor bytes are required")
	}
	inputBytes, err := readRegularInput(dossierAbs, "predecessor dossier", maxDossierInputBytes)
	if err != nil {
		return fmt.Errorf("read predecessor dossier: %w", err)
	}
	if !bytes.Equal(inputBytes, expectedPredecessorBytes) {
		return errors.New("predecessor bytes changed after loading; refusing a stale assessment")
	}
	expectedVersion := predecessor.Case.Version + 1
	if expectedVersion <= predecessor.Case.Version {
		return errors.New("dossier revision version cannot be incremented")
	}
	expectedName := "dossier-revision-v" + strconv.FormatInt(expectedVersion, 10) + ".json"
	if filepath.Base(outputAbs) != expectedName {
		return fmt.Errorf("output must be the canonical next revision %q", expectedName)
	}
	entries, err := os.ReadDir(filepath.Dir(dossierAbs))
	if err != nil {
		return fmt.Errorf("read dossier bundle directory: %w", err)
	}
	var tipPath string
	var tipVersion int64 = -1
	for _, entry := range entries {
		name := entry.Name()
		if entry.IsDir() || !strings.HasPrefix(name, "dossier-revision-v") || !strings.HasSuffix(name, ".json") {
			continue
		}
		versionText := strings.TrimSuffix(strings.TrimPrefix(name, "dossier-revision-v"), ".json")
		namedVersion, err := strconv.ParseInt(versionText, 10, 64)
		if err != nil || namedVersion < 1 || strconv.FormatInt(namedVersion, 10) != versionText {
			return fmt.Errorf("revision file %q has a noncanonical version name", name)
		}
		path := filepath.Join(filepath.Dir(dossierAbs), name)
		data, err := readRegularInput(path, "existing dossier revision", maxDossierInputBytes)
		if err != nil {
			return fmt.Errorf("read existing revision %q: %w", name, err)
		}
		var existing domain.Dossier
		if err := decodeStrictJSON(data, &existing, "existing dossier revision"); err != nil {
			return fmt.Errorf("decode existing revision %q: %w", name, err)
		}
		if existing.Case.ID != predecessor.Case.ID {
			return fmt.Errorf("revision file %q belongs to case %q, not bundle case %q", name, existing.Case.ID, predecessor.Case.ID)
		}
		if existing.Case.Version != namedVersion {
			return fmt.Errorf("revision file %q names version %d but contains case version %d", name, namedVersion, existing.Case.Version)
		}
		if existing.Case.Version <= tipVersion {
			return fmt.Errorf("bundle contains duplicate or non-increasing revision versions for case %q", predecessor.Case.ID)
		}
		tipVersion = existing.Case.Version
		tipPath = path
	}
	if tipPath == "" {
		if filepath.Base(dossierAbs) != "dossier.json" {
			return errors.New("bundle has no revision history and predecessor is not the canonical dossier.json")
		}
		return nil
	}
	if predecessor.Case.Version != tipVersion {
		return fmt.Errorf("predecessor version %d is stale; current bundle tip is version %d", predecessor.Case.Version, tipVersion)
	}
	tipBytes, err := readRegularInput(tipPath, "current dossier revision", maxDossierInputBytes)
	if err != nil {
		return fmt.Errorf("read current dossier revision: %w", err)
	}
	if !bytes.Equal(inputBytes, tipBytes) {
		return errors.New("predecessor bytes are not the current bundle tip; refusing a branch")
	}
	return nil
}

// updateDossierM4VerificationRecords only rebinds V1/V2. Exposition ProofRef
// values remain untouched because they may refer to a separate proof artifact
// and the M7 evaluations are not rewritten by an M4 replay.
func updateDossierM4VerificationRecords(revision *domain.Dossier, receipt solver.LeanVerificationReceipt, receiptSHA256 string, preserveRecords bool) {
	revision.M4Receipt = &domain.M4ReceiptReference{
		EvidenceID: receipt.EvidenceID, ReceiptSHA256: receiptSHA256,
	}
	if preserveRecords {
		return
	}
	for index := range revision.Verifications {
		record := &revision.Verifications[index]
		if record.Gate != domain.GateKernelBuild && record.Gate != domain.GateAxiomAudit {
			continue
		}
		record.EvidenceIDs = []string{receipt.EvidenceID}
		record.RecordedAt = receipt.RecordedAtUTC
		if record.Gate == domain.GateKernelBuild {
			imports := strings.Join(receipt.Imports, ", ")
			if imports == "" {
				imports = "Lean core"
			}
			record.Summary = fmt.Sprintf(
				"V1 passed: fresh execution-bound pinned Docker replay accepted the exact theorem statement and proof with imports %s against snapshot %s (image %s). This is a direct Lean check, not a Lake-project build.",
				imports, receipt.SnapshotID, receipt.ExecutionImage,
			)
		} else {
			record.Summary = "V2 passed: the fresh Lean replay parsed #print axioms from captured stdout; observed axioms remain within the recorded allowlist."
		}
	}
}
