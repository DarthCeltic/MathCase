package solver

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
	"strings"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const MaxSolveLocalOutputSize = 4 << 20

type solveLocalOutputForValidation struct {
	RunID                 string                 `json:"run_id"`
	ProblemID             string                 `json:"problem_id"`
	Solved                bool                   `json:"solved"`
	Proof                 string                 `json:"proof,omitempty"`
	Attempts              []domain.SolverAttempt `json:"attempts"`
	RetrievalOutputSHA256 string                 `json:"retrieval_output_sha256,omitempty"`
	RetrievalHintCount    int                    `json:"retrieval_hint_count,omitempty"`
}

type SolveLocalValidationExpectation struct {
	RunID                  string
	LeanSandboxImage       string
	PantographSandboxImage string
	SnapshotManifestSHA256 string
	SnapshotID             string
	RetrievalOutputSHA256  string
	DockerExecutable       string
}

type ValidatedSolveLocalResult struct {
	Status                  string `json:"status"`
	RunID                   string `json:"run_id"`
	ProblemID               string `json:"problem_id"`
	ProofSHA256             string `json:"proof_sha256"`
	StatementSHA256         string `json:"statement_sha256"`
	AttemptID               string `json:"attempt_id"`
	EvidenceID              string `json:"evidence_id"`
	ReceiptSHA256           string `json:"receipt_sha256"`
	SnapshotManifestSHA256  string `json:"snapshot_manifest_sha256"`
	SnapshotID              string `json:"snapshot_id"`
	LeanImage               string `json:"lean_image"`
	PantographImage         string `json:"pantograph_image"`
	LeanContainerName       string `json:"lean_container_name"`
	PantographContainerName string `json:"pantograph_container_name"`
	DockerExecutable        string `json:"docker_executable"`
	RetrievalOutputSHA256   string `json:"retrieval_output_sha256,omitempty"`
	RetrievalHintCount      int    `json:"retrieval_hint_count,omitempty"`
}

// ValidateSolveLocalOutput requires a typed, execution-bound M4 receipt for
// the exact solver run, M0 problem statement, proof bytes, and pinned images.
func ValidateSolveLocalOutput(
	outputBytes []byte,
	problem domain.MathProblem,
	receiptRoot string,
	expectation SolveLocalValidationExpectation,
) (ValidatedSolveLocalResult, error) {
	if len(outputBytes) == 0 || len(outputBytes) > MaxSolveLocalOutputSize {
		return ValidatedSolveLocalResult{}, errors.New("solver: solve-local output is empty or exceeds 4 MiB")
	}
	if err := state.ValidateIdentifier("expected solve-local run ID", expectation.RunID); err != nil {
		return ValidatedSolveLocalResult{}, err
	}
	if !validImageDigest(expectation.LeanSandboxImage) || !validImageDigest(expectation.PantographSandboxImage) ||
		!validSHA256(expectation.SnapshotManifestSHA256) || strings.TrimSpace(expectation.SnapshotID) == "" || strings.TrimSpace(expectation.DockerExecutable) == "" {
		return ValidatedSolveLocalResult{}, errors.New("solver: expected image or Lean snapshot identity is missing or malformed")
	}
	decoder := json.NewDecoder(bytes.NewReader(outputBytes))
	decoder.DisallowUnknownFields()
	var output solveLocalOutputForValidation
	if err := decoder.Decode(&output); err != nil {
		return ValidatedSolveLocalResult{}, fmt.Errorf("solver: decode solve-local output: %w", err)
	}
	var extra any
	if err := decoder.Decode(&extra); err != io.EOF {
		if err == nil {
			return ValidatedSolveLocalResult{}, errors.New("solver: solve-local output contains multiple JSON values")
		}
		return ValidatedSolveLocalResult{}, fmt.Errorf("solver: trailing solve-local output: %w", err)
	}
	if output.RunID != expectation.RunID || output.ProblemID != problem.ID || !output.Solved || strings.TrimSpace(output.Proof) == "" {
		return ValidatedSolveLocalResult{}, errors.New("solver: solve-local output does not bind a solved result to the exact run and M0 problem")
	}
	if expectation.RetrievalOutputSHA256 == "" {
		if output.RetrievalOutputSHA256 != "" || output.RetrievalHintCount != 0 {
			return ValidatedSolveLocalResult{}, errors.New("solver: solve-local output claims retrieval use without an expected retrieval input")
		}
	} else if !validSHA256(expectation.RetrievalOutputSHA256) || output.RetrievalOutputSHA256 != expectation.RetrievalOutputSHA256 || output.RetrievalHintCount < 1 || output.RetrievalHintCount > 8 {
		return ValidatedSolveLocalResult{}, errors.New("solver: solve-local output does not bind the exact retrieval bytes and bounded hint count")
	}
	if len(output.Attempts) == 0 || len(output.Attempts) > 128 {
		return ValidatedSolveLocalResult{}, errors.New("solver: solve-local output has no bounded attempt evidence")
	}
	proofDigest := sha256.Sum256([]byte(output.Proof))
	proofSHA256 := hex.EncodeToString(proofDigest[:])
	var passing *domain.SolverAttempt
	for index := range output.Attempts {
		attempt := &output.Attempts[index]
		if err := attempt.Validate(); err != nil {
			return ValidatedSolveLocalResult{}, fmt.Errorf("solver: solve-local attempt %d is invalid: %w", index, err)
		}
		if attempt.RunID != expectation.RunID || attempt.ProblemID != problem.ID {
			return ValidatedSolveLocalResult{}, fmt.Errorf("solver: solve-local attempt %d is not bound to the exact run and problem", index)
		}
		if attempt.ProviderID != "" || attempt.ProviderCallID != "" || attempt.ProviderRequestSHA256 != "" ||
			attempt.ProviderResponseSHA256 != "" || attempt.ProviderRequestPath != "" || attempt.ProviderResponsePath != "" ||
			attempt.ProviderCallReceiptPath != "" || attempt.ProviderCallReceiptSHA256 != "" || attempt.ProviderInputClearanceID != "" ||
			attempt.ProviderInputClearanceSHA256 != "" || attempt.ProviderInputClearancePath != "" || attempt.CostKnown || attempt.CostMicros != 0 {
			return ValidatedSolveLocalResult{}, fmt.Errorf("solver: solve-local attempt %d contains provider or paid-call evidence", index)
		}
		if attempt.LocalProcessTrace == nil || attempt.LocalProcessTrace.ContainerExecution == nil ||
			attempt.LocalProcessTrace.ContainerExecution.ImageID != expectation.PantographSandboxImage ||
			attempt.LocalProcessTrace.ExecutablePath != expectation.DockerExecutable ||
			!hasArgumentPair(attempt.LocalProcessTrace.Arguments, "--label", queueRunContainerLabel+"="+expectation.RunID) {
			return ValidatedSolveLocalResult{}, fmt.Errorf("solver: solve-local attempt %d lacks the exact labeled Pantograph container execution", index)
		}
		if attempt.Outcome == domain.SolverOutcomePass {
			if passing != nil {
				return ValidatedSolveLocalResult{}, errors.New("solver: solve-local output contains more than one passing attempt")
			}
			passing = attempt
		}
	}
	if passing == nil || passing.VerifiedProofSHA256 != proofSHA256 || passing.CandidateSHA256 != proofSHA256 || len(passing.EvidenceIDs) != 1 {
		return ValidatedSolveLocalResult{}, errors.New("solver: solve-local output has no unique pass bound to the exact returned proof and verifier evidence")
	}
	if err := state.ValidateIdentifier("Lean evidence ID", passing.EvidenceIDs[0]); err != nil {
		return ValidatedSolveLocalResult{}, err
	}
	root, err := resolveReceiptRoot(receiptRoot)
	if err != nil {
		return ValidatedSolveLocalResult{}, err
	}
	receiptPath := filepath.Join(root, passing.EvidenceIDs[0]+".json")
	receiptBytes, err := readExactLeanReceipt(receiptPath)
	if err != nil {
		return ValidatedSolveLocalResult{}, err
	}
	opened, err := OpenLeanVerificationReceipt(receiptBytes, problem)
	if err != nil || !opened.IsValid() {
		if err == nil {
			err = errors.New("typed M4 receipt did not produce a valid verification capability")
		}
		return ValidatedSolveLocalResult{}, err
	}
	if opened.EvidenceID() != passing.EvidenceIDs[0] || opened.ProblemID() != problem.ID ||
		opened.ProofInputSHA256() != proofSHA256 || opened.ExecutionImage() != expectation.LeanSandboxImage ||
		opened.SnapshotManifestSHA256() != expectation.SnapshotManifestSHA256 || opened.SnapshotID() != expectation.SnapshotID ||
		opened.SandboxDockerExecutable() != expectation.DockerExecutable ||
		!opened.HasSandboxContainerLabel(queueRunContainerLabel, expectation.RunID) {
		return ValidatedSolveLocalResult{}, errors.New("solver: typed M4 receipt does not match the exact proof, run label, image, or Lean snapshot")
	}
	statementSHA256, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		return ValidatedSolveLocalResult{}, fmt.Errorf("solver: compute exact M0 statement identity: %w", err)
	}
	return ValidatedSolveLocalResult{
		Status: "VALIDATED", RunID: expectation.RunID, ProblemID: problem.ID,
		ProofSHA256: proofSHA256, StatementSHA256: statementSHA256,
		AttemptID: passing.ID, EvidenceID: opened.EvidenceID(), ReceiptSHA256: opened.ReceiptSHA256(),
		SnapshotManifestSHA256: opened.SnapshotManifestSHA256(), SnapshotID: opened.SnapshotID(),
		LeanImage: opened.ExecutionImage(), PantographImage: expectation.PantographSandboxImage,
		LeanContainerName:       opened.SandboxContainerName(),
		PantographContainerName: passing.LocalProcessTrace.ContainerExecution.ContainerName,
		RetrievalOutputSHA256:   output.RetrievalOutputSHA256, RetrievalHintCount: output.RetrievalHintCount,
		DockerExecutable: expectation.DockerExecutable,
	}, nil
}

func resolveReceiptRoot(path string) (string, error) {
	if strings.TrimSpace(path) == "" {
		return "", errors.New("solver: M4 receipt root is required")
	}
	absolute, err := filepath.Abs(path)
	if err != nil {
		return "", fmt.Errorf("solver: resolve M4 receipt root: %w", err)
	}
	info, err := os.Lstat(absolute)
	if err != nil || !info.IsDir() || info.Mode()&os.ModeSymlink != 0 {
		return "", errors.New("solver: M4 receipt root is missing, not a directory, or a symbolic link")
	}
	resolved, err := filepath.EvalSymlinks(absolute)
	if err != nil || !samePath(filepath.Clean(resolved), filepath.Clean(absolute)) {
		return "", errors.New("solver: M4 receipt root crosses a symbolic link")
	}
	return absolute, nil
}

func readExactLeanReceipt(path string) ([]byte, error) {
	info, err := os.Lstat(path)
	if err != nil || !info.Mode().IsRegular() || info.Mode()&os.ModeSymlink != 0 || info.Size() < 1 || info.Size() > 1<<20 {
		return nil, errors.New("solver: exact M4 receipt is missing, oversized, or unsafe")
	}
	data, err := os.ReadFile(path)
	if err != nil {
		return nil, fmt.Errorf("solver: read exact M4 receipt: %w", err)
	}
	return data, nil
}

func hasArgumentPair(arguments []string, key, value string) bool {
	for index := 0; index+1 < len(arguments); index++ {
		if arguments[index] == key && arguments[index+1] == value {
			return true
		}
	}
	return false
}
