package solver

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

// OpenedLeanVerificationReceipt is an opaque capability proving that the
// canonical execution-bound M4 reader accepted specific receipt bytes against
// a specific M0 problem. Its fields are private so callers cannot construct a
// populated capability from matching digest strings alone.
type OpenedLeanVerificationReceipt struct {
	receipt                LeanVerificationReceipt
	receiptSHA256          string
	problemID              string
	problemStatementSHA256 string
}

// OpenLeanVerificationReceipt reads strict M4 JSON and validates its complete
// execution chain against the exact supplied M0 MathProblem before returning a
// capability that downstream readers can consume.
func OpenLeanVerificationReceipt(data []byte, problem domain.MathProblem) (OpenedLeanVerificationReceipt, error) {
	if len(data) == 0 || len(data) > 1<<20 {
		return OpenedLeanVerificationReceipt{}, errors.New("solver: M4 receipt is empty or exceeds 1 MiB")
	}
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	var receipt LeanVerificationReceipt
	if err := decoder.Decode(&receipt); err != nil {
		return OpenedLeanVerificationReceipt{}, fmt.Errorf("solver: decode M4 receipt: %w", err)
	}
	var extra any
	if err := decoder.Decode(&extra); err != io.EOF {
		if err == nil {
			return OpenedLeanVerificationReceipt{}, errors.New("solver: M4 receipt contains multiple JSON values")
		}
		return OpenedLeanVerificationReceipt{}, fmt.Errorf("solver: trailing M4 receipt content: %w", err)
	}
	if err := ValidateExecutionBoundReceipt(receipt, problem); err != nil {
		return OpenedLeanVerificationReceipt{}, fmt.Errorf("solver: reopen typed M4 receipt against M0: %w", err)
	}
	digest := sha256.Sum256(data)
	return OpenedLeanVerificationReceipt{
		receipt: receipt, receiptSHA256: hex.EncodeToString(digest[:]),
		problemID: problem.ID, problemStatementSHA256: receipt.ProblemStatementSHA256,
	}, nil
}

// IsValid rejects zero-value capabilities and values missing the identities
// established by OpenLeanVerificationReceipt.
func (r OpenedLeanVerificationReceipt) IsValid() bool {
	if len(r.receiptSHA256) != sha256.Size*2 || r.problemID == "" || r.problemStatementSHA256 == "" ||
		r.receipt.EvidenceID == "" || r.receipt.Status != "PASSED" || !r.receipt.KernelPassed || !r.receipt.AxiomsPassed {
		return false
	}
	_, err := hex.DecodeString(r.receiptSHA256)
	return err == nil
}

func (r OpenedLeanVerificationReceipt) ReceiptSHA256() string { return r.receiptSHA256 }
func (r OpenedLeanVerificationReceipt) EvidenceID() string    { return r.receipt.EvidenceID }
func (r OpenedLeanVerificationReceipt) ProblemID() string     { return r.problemID }
func (r OpenedLeanVerificationReceipt) ProblemStatementSHA256() string {
	return r.problemStatementSHA256
}
func (r OpenedLeanVerificationReceipt) ProofInputSHA256() string { return r.receipt.ProofSHA256 }
func (r OpenedLeanVerificationReceipt) GeneratedSourceSHA256() string {
	return r.receipt.GeneratedSourceSHA256
}
func (r OpenedLeanVerificationReceipt) ExecutionImage() string { return r.receipt.ExecutionImage }
func (r OpenedLeanVerificationReceipt) SnapshotID() string     { return r.receipt.SnapshotID }
func (r OpenedLeanVerificationReceipt) SnapshotManifestSHA256() string {
	return r.receipt.SnapshotManifestSHA256
}
func (r OpenedLeanVerificationReceipt) SandboxContainerName() string {
	return r.receipt.SandboxExecution.ContainerName
}
func (r OpenedLeanVerificationReceipt) SandboxDockerExecutable() string {
	return r.receipt.SandboxExecution.DockerExecutable
}
func (r OpenedLeanVerificationReceipt) HasSandboxContainerLabel(name, value string) bool {
	args := r.receipt.SandboxExecution.CommandArgv
	for index := 0; index+1 < len(args); index++ {
		if args[index] == "--label" && args[index+1] == name+"="+value {
			return true
		}
	}
	return false
}
func (r OpenedLeanVerificationReceipt) Toolchain() string   { return r.receipt.Toolchain }
func (r OpenedLeanVerificationReceipt) LeanVersion() string { return r.receipt.LeanVersion }
func (r OpenedLeanVerificationReceipt) Imports() []string {
	return append([]string(nil), r.receipt.Imports...)
}
