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
	"sort"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

const m4ReplayOutputSchema = "mathcase-m4-replay-command-v2"

type m4ReplayOutput struct {
	SchemaVersion             string `json:"schema_version"`
	Status                    string `json:"status"`
	CaseID                    string `json:"case_id"`
	ProblemID                 string `json:"problem_id"`
	DossierSHA256             string `json:"dossier_sha256"`
	CatalogSnapshotSHA256     string `json:"catalog_snapshot_sha256"`
	ProofSHA256               string `json:"proof_sha256"`
	LeanReceiptPath           string `json:"lean_receipt_path,omitempty"`
	LeanReceiptSHA256         string `json:"lean_receipt_sha256,omitempty"`
	LeanReceiptSchema         string `json:"lean_receipt_schema,omitempty"`
	ProbeFailureReceiptPath   string `json:"probe_failure_receipt_path,omitempty"`
	ProbeFailureReceiptSHA256 string `json:"probe_failure_receipt_sha256,omitempty"`
	ProbeFailureReceiptSchema string `json:"probe_failure_receipt_schema,omitempty"`
	ProbeFailureValidated     bool   `json:"probe_failure_validated"`
	ProofExecutionStarted     bool   `json:"proof_execution_started"`
	ProofExecutionStatus      string `json:"proof_execution_status"`
	ExecutionBound            bool   `json:"execution_bound"`
	KernelPassed              bool   `json:"kernel_passed"`
	AxiomsPassed              bool   `json:"axioms_passed"`
	StatementAuditStatus      string `json:"statement_audit_status"`
	DeliveryReadiness         string `json:"delivery_readiness"`
	Message                   string `json:"message"`
}

// runM4Replay replays the exact proof from an existing dossier through the
// shared isolated Lean verifier. It writes only a new M4 receipt and never
// edits or assembles a dossier.
func runM4Replay(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("m4-replay", flag.ContinueOnError)
	flags.SetOutput(stderr)
	dossierPath := flags.String("dossier", "", "strict JSON file containing the existing dossier")
	snapshotPath := flags.String("snapshot", "", "strict JSON file containing the exact M0 catalog snapshot")
	proofPath := flags.String("proof", "", "exact proof text file to replay")
	leanSnapshotManifest := flags.String("lean-snapshot-manifest", "", "qualified clean-build Lean snapshot manifest")
	projectRoot := flags.String("project-root", "", "optional Lean source tree to compare byte-for-byte with the qualified snapshot")
	receiptRoot := flags.String("receipt-root", "", "existing directory for new immutable Lean receipts")
	dockerPath := flags.String("docker", "", "Docker executable; defaults to the configured local executable")
	image := flags.String("sandbox-image", "", "immutable Docker image digest for the pinned Lean sandbox")
	expectedToolchain := flags.String("expected-toolchain", "leanprover/lean4:v4.33.1", "expected Lean toolchain recorded by the pinned project")
	importsText := flags.String("imports", "Init", "comma-separated Lean imports for the isolated replay")
	timeoutText := flags.String("timeout", "2m", "bounded execution timeout (Go duration)")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*dossierPath) == "" || strings.TrimSpace(*snapshotPath) == "" ||
		strings.TrimSpace(*proofPath) == "" || strings.TrimSpace(*leanSnapshotManifest) == "" || strings.TrimSpace(*receiptRoot) == "" ||
		strings.TrimSpace(*image) == "" || strings.TrimSpace(*expectedToolchain) == "" {
		fmt.Fprintln(stderr, "m4-replay requires --dossier FILE, --snapshot FILE, --proof FILE, --lean-snapshot-manifest FILE, --receipt-root DIR, and --sandbox-image sha256:DIGEST")
		return 2
	}
	timeout, err := time.ParseDuration(strings.TrimSpace(*timeoutText))
	if err != nil || timeout <= 0 {
		fmt.Fprintln(stderr, "mathcase: --timeout must be a positive Go duration")
		return 2
	}
	imports, err := parseCommaSeparatedImports(*importsText)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: invalid --imports: %v\n", err)
		return 2
	}

	dossierBytes, err := readRegularInput(*dossierPath, "dossier", maxDossierInputBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load dossier: %v\n", err)
		return 2
	}
	var dossier domain.Dossier
	if err := decodeStrictJSON(dossierBytes, &dossier, "dossier"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode dossier: %v\n", err)
		return 2
	}
	if err := dossier.Validate(); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate dossier: %v\n", err)
		return 2
	}
	snapshot, err := loadCatalogSnapshot(*snapshotPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load M0 snapshot: %v\n", err)
		return 2
	}
	if err := validateM4ReplayProblemBinding(dossier, snapshot); err != nil {
		fmt.Fprintf(stderr, "mathcase: dossier/M0 binding: %v\n", err)
		return 2
	}
	proofBytes, err := readRegularInput(*proofPath, "proof", 128<<10)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load proof: %v\n", err)
		return 2
	}
	proof := string(proofBytes)
	proofDigest := sha256.Sum256(proofBytes)
	proofSHA := hex.EncodeToString(proofDigest[:])
	if err := validateM4ReplayExistingGateBinding(dossier, proofSHA); err != nil {
		fmt.Fprintf(stderr, "mathcase: existing V1/V2 proof binding: %v\n", err)
		return 2
	}
	if info, err := os.Stat(*receiptRoot); err != nil || !info.IsDir() {
		fmt.Fprintf(stderr, "mathcase: receipt root must already exist as a directory: %q\n", *receiptRoot)
		return 2
	}

	verifier := solver.LeanVerifier{
		DockerExecutable:     *dockerPath,
		SandboxImage:         *image,
		SnapshotManifestPath: *leanSnapshotManifest,
		ProjectRoot:          *projectRoot,
		ReceiptRoot:          *receiptRoot,
		ExpectedToolchain:    *expectedToolchain,
		Imports:              imports,
		Timeout:              timeout,
	}
	verification, runErr := verifier.Verify(context.Background(), dossier.Problem, proof)
	result := m4ReplayOutput{
		SchemaVersion:         m4ReplayOutputSchema,
		Status:                "EXECUTION_FAILED_OR_INCOMPLETE",
		CaseID:                dossier.Case.ID,
		ProblemID:             dossier.Problem.ID,
		DossierSHA256:         m4ReplayDigestBytes(dossierBytes),
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		ProofSHA256:           proofSHA,
		KernelPassed:          verification.KernelPassed,
		AxiomsPassed:          verification.AxiomsPassed,
		StatementAuditStatus:  statementAuditStatus(snapshot, dossier.Problem.ID),
		DeliveryReadiness:     "NOT_READY",
		Message:               "This M4 replay does not pass statement fidelity or dossier readiness. The existing dossier was not modified.",
	}
	if runErr != nil {
		fmt.Fprintf(stderr, "mathcase: Lean replay reported an execution error: %v\n", runErr)
	}
	if verification.EvidenceID != "" {
		receiptPath := filepath.Join(*receiptRoot, verification.EvidenceID+".json")
		receiptBytes, readErr := readRegularInput(receiptPath, "new Lean receipt", maxDossierInputBytes)
		if readErr == nil {
			var receipt solver.LeanVerificationReceipt
			if decodeErr := decodeStrictJSON(receiptBytes, &receipt, "new Lean receipt"); decodeErr == nil {
				result.LeanReceiptPath = receiptPath
				result.LeanReceiptSHA256 = m4ReplayDigestBytes(receiptBytes)
				result.LeanReceiptSchema = receipt.SchemaVersion
				result.ProofExecutionStatus = m4ProofExecutionStatus(receipt.SandboxExecution)
				result.ProofExecutionStarted = result.ProofExecutionStatus == "STARTED"
				if validateErr := solver.ValidateExecutionBoundReceipt(receipt, dossier.Problem); validateErr == nil && receipt.ProofSHA256 == proofSHA {
					result.ExecutionBound = true
					if receipt.KernelPassed && receipt.AxiomsPassed && receipt.Status == "PASSED" {
						result.Status = "EXECUTION_BOUND_PASS"
					}
				} else if validateErr != nil {
					fmt.Fprintf(stderr, "mathcase: new Lean receipt did not pass execution-bound validation: %v\n", validateErr)
				}
			} else {
				fmt.Fprintf(stderr, "mathcase: decode new Lean receipt: %v\n", decodeErr)
			}
		} else {
			probePath := filepath.Join(*receiptRoot, verification.EvidenceID+".toolchain-probe.json")
			probeBytes, probeReadErr := readRegularInput(probePath, "Lean toolchain probe failure receipt", maxDossierInputBytes)
			if probeReadErr != nil {
				fmt.Fprintf(stderr, "mathcase: no successful Lean receipt or validated toolchain-probe receipt: proof receipt: %v; probe receipt: %v\n", readErr, probeReadErr)
			} else {
				var probe solver.LeanToolchainProbeFailureReceipt
				if decodeErr := decodeStrictJSON(probeBytes, &probe, "Lean toolchain probe failure receipt"); decodeErr != nil {
					fmt.Fprintf(stderr, "mathcase: decode Lean toolchain probe failure receipt: %v\n", decodeErr)
				} else {
					result.ProbeFailureReceiptPath = probePath
					result.ProbeFailureReceiptSHA256 = m4ReplayDigestBytes(probeBytes)
					result.ProbeFailureReceiptSchema = probe.SchemaVersion
					result.ProofExecutionStarted = probe.ProofExecutionStarted
					result.ProofExecutionStatus = "NOT_STARTED"
					if probe.ProofExecutionStarted {
						result.ProofExecutionStatus = "STARTED"
					}
					if validateErr := solver.ValidateToolchainProbeFailureReceipt(probe, dossier.Problem, proof); validateErr != nil {
						fmt.Fprintf(stderr, "mathcase: Lean toolchain probe receipt did not pass failure-record validation: %v\n", validateErr)
					} else if !probe.ProofExecutionStarted {
						result.ProbeFailureValidated = true
						result.Status = "M4_BLOCKED_BEFORE_PROOF_EXECUTION"
						result.Message = "A real pinned-sandbox toolchain probe failed before proof execution; the failure receipt is preserved. No proof run or readiness claim is implied."
					}
				}
			}
		}
	}
	encoded, err := json.MarshalIndent(result, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode M4 replay result: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(append(encoded, '\n')); err != nil {
		fmt.Fprintf(stderr, "mathcase: write M4 replay result: %v\n", err)
		return 2
	}
	if result.Status != "EXECUTION_BOUND_PASS" {
		return 1
	}
	return 0
}

func m4ProofExecutionStatus(execution solver.LeanSandboxExecution) string {
	if execution.StartedAtUTC.IsZero() || execution.FinishedAtUTC.IsZero() {
		return "NOT_STARTED"
	}
	if execution.ExitCode == nil || *execution.ExitCode < 0 {
		return "UNKNOWN"
	}
	if *execution.ExitCode <= 124 {
		return "STARTED"
	}
	if *execution.ExitCode <= 127 {
		return "NOT_STARTED"
	}
	return "UNKNOWN"
}

func validateM4ReplayProblemBinding(dossier domain.Dossier, snapshot catalog.Snapshot) error {
	if dossier.CatalogSnapshotSHA256 != snapshot.ContentSHA256 {
		return errors.New("dossier does not reference the supplied M0 snapshot digest")
	}
	var problem *catalog.Problem
	for index := range snapshot.Problems {
		if snapshot.Problems[index].ID == dossier.Problem.ID {
			problem = &snapshot.Problems[index]
			break
		}
	}
	if problem == nil {
		return errors.New("dossier problem is absent from the validated M0 snapshot")
	}
	if dossier.Problem.Title != problem.Title || dossier.Problem.Statement != problem.InformalStatement ||
		dossier.Problem.LeanStatement != problem.LeanStatement ||
		(dossier.Problem.M0Status != "" && dossier.Problem.M0Status != string(problem.Status)) {
		return errors.New("dossier problem text or M0 status differs from the exact catalog item")
	}
	left := append([]string(nil), dossier.Problem.SourceIDs...)
	right := append([]string(nil), problem.SourceIDs...)
	sort.Strings(left)
	sort.Strings(right)
	if !sameStringSequence(left, right) {
		return errors.New("dossier problem source IDs differ from the exact catalog item")
	}
	if (dossier.Problem.HistoricalBounty == nil) != (problem.HistoricalBounty == nil) {
		return errors.New("dossier historical bounty differs from the exact catalog item")
	}
	if problem.HistoricalBounty != nil && *dossier.Problem.HistoricalBounty != problem.HistoricalBounty.AmountUSD {
		return errors.New("dossier historical bounty amount differs from the exact catalog item")
	}
	sources := make(map[string]catalog.SourceVersion, len(snapshot.Sources))
	for _, source := range snapshot.Sources {
		sources[source.ID] = source
	}
	for _, sourceID := range problem.SourceIDs {
		source, exists := sources[sourceID]
		if !exists || !source.EligibleFor(catalog.UseLocalStorage) {
			return fmt.Errorf("M0 source %q is not cleared for local storage", sourceID)
		}
	}
	return nil
}

func validateM4ReplayExistingGateBinding(dossier domain.Dossier, proofSHA string) error {
	statementDigest, err := domain.ProblemStatementDigest(dossier.Problem.ID, dossier.Problem.Statement, dossier.Problem.LeanStatement)
	if err != nil {
		return err
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
		return errors.New("the existing dossier must contain its known V1 and V2 pass claims before an M4 replay")
	}
	for _, record := range []*domain.VerificationRecord{kernel, axioms} {
		if record.ProblemID != dossier.Problem.ID || record.ProblemStatementSHA256 != statementDigest || record.ProofSHA256 != proofSHA {
			return errors.New("existing V1/V2 claims do not bind the exact dossier problem and supplied proof")
		}
	}
	if len(kernel.EvidenceIDs) != 1 || len(axioms.EvidenceIDs) != 1 || kernel.EvidenceIDs[0] == "" || kernel.EvidenceIDs[0] != axioms.EvidenceIDs[0] {
		return errors.New("existing V1/V2 claims must reference one shared historical receipt")
	}
	return nil
}

func parseCommaSeparatedImports(value string) ([]string, error) {
	parts := strings.Split(value, ",")
	imports := make([]string, 0, len(parts))
	for _, part := range parts {
		part = strings.TrimSpace(part)
		if part == "" {
			return nil, errors.New("imports must be comma-separated non-empty module paths")
		}
		imports = append(imports, part)
	}
	return imports, nil
}

func sameStringSequence(left, right []string) bool {
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

func m4ReplayDigestBytes(data []byte) string {
	sum := sha256.Sum256(data)
	return hex.EncodeToString(sum[:])
}

func statementAuditStatus(snapshot catalog.Snapshot, problemID string) string {
	for _, problem := range snapshot.Problems {
		if problem.ID == problemID {
			if problem.StatementAudit.Passed {
				return "PASSED"
			}
			return "NOT_PASSED"
		}
	}
	return "NOT_FOUND"
}
