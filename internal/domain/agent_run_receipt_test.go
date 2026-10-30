package domain

import (
	"crypto/sha256"
	"encoding/hex"
	"strings"
	"testing"
	"time"
)

func testAgentRunReceipt(problemID string) AgentRunReceipt {
	return AgentRunReceipt{
		SchemaVersion: AgentRunReceiptSchemaVersion,
		ReceiptID:     "3c435a85-a892-4d13-971c-183b06f61f87",
		RecordedAtUTC: time.Date(2026, time.October, 20, 18, 20, 31, 0, time.UTC),
		Surface:       "Delegated worker quota",
		Model:         "gpt-6-astra",
		Target: AgentRunTarget{
			ProblemID:             problemID,
			CatalogSnapshotSHA256: strings.Repeat("f", 64),
		},
		Purpose: "reviewer/expositor",
		Verdict: "completed: five-tier bootstrap exposition received; independent evaluation and acceptance remain pending",
		InputClearance: []AgentRunInputClearance{{
			StatementID: problemID,
			EvidenceID:  "provider_input_mathlib_list_mem_pair_bootstrap_20261020",
		}},
	}
}

func TestAgentRunReceiptValidatesA11QuotaRecord(t *testing.T) {
	receipt := testAgentRunReceipt("mathlib_list_mem_pair_v4331")
	if err := receipt.Validate(); err != nil {
		t.Fatalf("Validate() error = %v, want valid A1.1 receipt", err)
	}
	if got, want := receipt.AuthorCallID(), "agent-run-3c435a85-a892-4d13-971c-183b06f61f87"; got != want {
		t.Fatalf("AuthorCallID() = %q, want %q", got, want)
	}
}

func TestAgentRunReceiptRejectsMissingClearanceAndInvalidTargetDigest(t *testing.T) {
	t.Run("missing clearance", func(t *testing.T) {
		receipt := testAgentRunReceipt("mathlib_list_mem_pair_v4331")
		receipt.InputClearance = nil
		if err := receipt.Validate(); err == nil || !strings.Contains(err.Error(), "clearance") {
			t.Fatalf("Validate() error = %v, want clearance refusal", err)
		}
	})
	t.Run("invalid digest", func(t *testing.T) {
		receipt := testAgentRunReceipt("mathlib_list_mem_pair_v4331")
		receipt.Target.CatalogSnapshotSHA256 = "not-a-digest"
		if err := receipt.Validate(); err == nil || !strings.Contains(err.Error(), "catalog snapshot digest") {
			t.Fatalf("Validate() error = %v, want snapshot digest refusal", err)
		}
	})
}

func TestFutureAgentRunReceiptRequiresLaunchIdentityAndFlywheelLabel(t *testing.T) {
	newReceipt := func() AgentRunReceipt {
		receipt := testAgentRunReceipt("mathlib_list_mem_pair_v4331")
		capturedAt := receipt.RecordedAtUTC.Add(-time.Second)
		receipt.SchemaVersion = AgentRunReceiptSchemaVersion2
		receipt.ModelIdentityCapturedAtUTC = &capturedAt
		receipt.LabelRecordIDs = []string{"attackability-run-001"}
		receipt.Target.StatementID = receipt.InputClearance[0].StatementID
		receipt.Target.StatementSHA256 = strings.Repeat("a", 64)
		receipt.InputClearance[0].EvidenceSHA256 = strings.Repeat("b", 64)
		return receipt
	}

	t.Run("valid v2", func(t *testing.T) {
		receipt := newReceipt()
		if err := receipt.ValidateForFutureRun(); err != nil {
			t.Fatalf("ValidateForFutureRun() error = %v, want valid v2 receipt", err)
		}
	})
	t.Run("missing launch identity time", func(t *testing.T) {
		receipt := newReceipt()
		receipt.ModelIdentityCapturedAtUTC = nil
		if err := receipt.ValidateForFutureRun(); err == nil || !strings.Contains(err.Error(), "captured at launch") {
			t.Fatalf("ValidateForFutureRun() error = %v, want launch-identity refusal", err)
		}
	})
	t.Run("missing label", func(t *testing.T) {
		receipt := newReceipt()
		receipt.LabelRecordIDs = nil
		if err := receipt.ValidateForFutureRun(); err == nil || !strings.Contains(err.Error(), "label record ID") {
			t.Fatalf("ValidateForFutureRun() error = %v, want label refusal", err)
		}
	})
	t.Run("missing exact statement pin", func(t *testing.T) {
		receipt := newReceipt()
		receipt.Target.StatementSHA256 = ""
		if err := receipt.ValidateForFutureRun(); err == nil || !strings.Contains(err.Error(), "exact target statement") {
			t.Fatalf("ValidateForFutureRun() error = %v, want exact-statement refusal", err)
		}
	})
	t.Run("clearance omits target statement", func(t *testing.T) {
		receipt := newReceipt()
		receipt.Target.StatementID = "target-statement-001"
		if err := receipt.ValidateForFutureRun(); err == nil || !strings.Contains(err.Error(), "exact target statement ID") {
			t.Fatalf("ValidateForFutureRun() error = %v, want target-clearance refusal", err)
		}
	})
	t.Run("clearance omits evidence digest", func(t *testing.T) {
		receipt := newReceipt()
		receipt.InputClearance[0].EvidenceSHA256 = ""
		if err := receipt.ValidateForFutureRun(); err == nil || !strings.Contains(err.Error(), "each input-clearance artifact") {
			t.Fatalf("ValidateForFutureRun() error = %v, want evidence-digest refusal", err)
		}
	})
	t.Run("capture after receipt", func(t *testing.T) {
		receipt := newReceipt()
		capturedAt := receipt.RecordedAtUTC.Add(time.Second)
		receipt.ModelIdentityCapturedAtUTC = &capturedAt
		if err := receipt.ValidateForFutureRun(); err == nil || !strings.Contains(err.Error(), "after receipt recording") {
			t.Fatalf("ValidateForFutureRun() error = %v, want impossible capture time refusal", err)
		}
	})
	t.Run("v1 remains historical only", func(t *testing.T) {
		receipt := testAgentRunReceipt("mathlib_list_mem_pair_v4331")
		if err := receipt.Validate(); err != nil {
			t.Fatalf("Validate() error = %v, want historical v1 accepted", err)
		}
		if err := receipt.ValidateForFutureRun(); err == nil || !strings.Contains(err.Error(), "require schema v2") {
			t.Fatalf("ValidateForFutureRun() error = %v, want v2-only refusal", err)
		}
	})
}

func TestFutureAgentRunReceiptPreservesProviderModelIdentifiers(t *testing.T) {
	receipt := testAgentRunReceipt("mathlib_list_mem_pair_v4331")
	capturedAt := receipt.RecordedAtUTC.Add(-time.Second)
	receipt.SchemaVersion = AgentRunReceiptSchemaVersion2
	receipt.Model = "Qwen/Qwen3-30B-A3B-Instruct-2507"
	receipt.ModelIdentityCapturedAtUTC = &capturedAt
	receipt.LabelRecordIDs = []string{"attackability-run-001"}
	receipt.Target.StatementID = receipt.InputClearance[0].StatementID
	receipt.Target.StatementSHA256 = strings.Repeat("a", 64)
	receipt.InputClearance[0].EvidenceSHA256 = strings.Repeat("b", 64)
	receipt.CostRecordID = "nebius-call-0123456789abcdef0123456789abcdef"
	if err := receipt.ValidateForFutureRun(); err != nil {
		t.Fatalf("ValidateForFutureRun() error = %v, want exact provider model ID and cost link accepted", err)
	}
}

func TestAgentRunReceiptReopensExactClearanceArtifactBytes(t *testing.T) {
	receipt := testAgentRunReceipt("mathlib_list_mem_pair_v4331")
	capturedAt := receipt.RecordedAtUTC.Add(-time.Second)
	clearanceBytes := []byte("pinned provider-input clearance")
	digest := sha256.Sum256(clearanceBytes)
	receipt.SchemaVersion = AgentRunReceiptSchemaVersion2
	receipt.ModelIdentityCapturedAtUTC = &capturedAt
	receipt.LabelRecordIDs = []string{"attackability-run-001"}
	receipt.Target.StatementID = receipt.InputClearance[0].StatementID
	receipt.Target.StatementSHA256 = strings.Repeat("a", 64)
	receipt.InputClearance[0].EvidenceSHA256 = hex.EncodeToString(digest[:])
	artifacts := map[string][]byte{receipt.InputClearance[0].EvidenceID: clearanceBytes}
	if err := receipt.ValidateInputClearanceArtifactBytes(artifacts); err != nil {
		t.Fatalf("ValidateInputClearanceArtifactBytes() error = %v, want exact clearance bytes accepted", err)
	}
	tests := []struct {
		name      string
		artifacts map[string][]byte
	}{
		{name: "missing artifact", artifacts: map[string][]byte{}},
		{name: "altered artifact", artifacts: map[string][]byte{receipt.InputClearance[0].EvidenceID: []byte("different clearance")}},
		{name: "unreferenced artifact", artifacts: map[string][]byte{receipt.InputClearance[0].EvidenceID: clearanceBytes, "extra-clearance": clearanceBytes}},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			if err := receipt.ValidateInputClearanceArtifactBytes(test.artifacts); err == nil {
				t.Fatal("ValidateInputClearanceArtifactBytes() succeeded, want clearance-artifact refusal")
			}
		})
	}
}

func TestDossierBindsQuotaAuthorReceiptToProblemAndRejectsTwoAccountingRoutes(t *testing.T) {
	t.Run("pinned problem and clearance accepted", func(t *testing.T) {
		dossier := validDossier()
		dossier.AuthorCallAccounting = nil
		dossier.AuthorAgentRunReceipt = ptr(testAgentRunReceipt(dossier.Problem.ID))
		if err := dossier.Validate(); err != nil {
			t.Fatalf("Validate() error = %v, want structurally valid quota receipt", err)
		}
	})
	t.Run("wrong problem refused", func(t *testing.T) {
		dossier := validDossier()
		dossier.AuthorCallAccounting = nil
		dossier.AuthorAgentRunReceipt = ptr(testAgentRunReceipt("another-problem"))
		if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "different problem") {
			t.Fatalf("Validate() error = %v, want mismatched target refusal", err)
		}
	})
	t.Run("both routes refused", func(t *testing.T) {
		dossier := validDossier()
		dossier.AuthorAgentRunReceipt = ptr(testAgentRunReceipt(dossier.Problem.ID))
		if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "mutually exclusive") {
			t.Fatalf("Validate() error = %v, want mutually exclusive accounting refusal", err)
		}
	})
}

func ptr[T any](value T) *T { return &value }
