package solver

import (
	"encoding/json"
	"strings"
	"testing"
)

func TestOpenLeanVerificationReceiptCreatesProblemBoundCapability(t *testing.T) {
	problem, receipt := newSyntheticExecutionBoundAttemptReceipt(t, "PASSED")
	data, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}

	opened, err := OpenLeanVerificationReceipt(data, problem)
	if err != nil {
		t.Fatalf("OpenLeanVerificationReceipt(valid receipt) error = %v, want nil", err)
	}
	if !opened.IsValid() || opened.ProblemID() != problem.ID ||
		opened.ProblemStatementSHA256() != receipt.ProblemStatementSHA256 ||
		opened.ProofInputSHA256() != receipt.ProofSHA256 ||
		opened.GeneratedSourceSHA256() != receipt.GeneratedSourceSHA256 ||
		opened.EvidenceID() != receipt.EvidenceID {
		t.Fatalf("opened M4 capability = %#v, does not expose the validated receipt identity", opened)
	}

	wrongProblem := problem
	wrongProblem.Statement = "A different statement."
	if _, err := OpenLeanVerificationReceipt(data, wrongProblem); err == nil {
		t.Fatal("OpenLeanVerificationReceipt accepted a receipt against a different M0 statement")
	}

	var fields map[string]any
	if err := json.Unmarshal(data, &fields); err != nil {
		t.Fatal(err)
	}
	fields["caller_authored_pass"] = true
	withUnknownField, err := json.Marshal(fields)
	if err != nil {
		t.Fatal(err)
	}
	if _, err := OpenLeanVerificationReceipt(withUnknownField, problem); err == nil || !strings.Contains(err.Error(), "unknown field") {
		t.Fatalf("OpenLeanVerificationReceipt(unknown field) error = %v, want strict JSON refusal", err)
	}
	if (OpenedLeanVerificationReceipt{}).IsValid() {
		t.Fatal("zero-value M4 capability unexpectedly reports valid")
	}
}
