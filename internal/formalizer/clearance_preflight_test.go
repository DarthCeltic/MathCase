package formalizer

import (
	"context"
	"encoding/json"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestPinnedProviderInputPreflightReopensExactClearanceAndM0Source(t *testing.T) {
	t.Parallel()
	preflight, request := pinnedPreflightFixture(t)
	if err := preflight.VerifyProviderInput(context.Background(), request); err != nil {
		t.Fatalf("VerifyProviderInput() error = %v, want exact item clearance accepted", err)
	}

	t.Run("changed source bytes", func(t *testing.T) {
		changed := preflight
		changed.SourceItemBytes = map[string][]byte{"source-001": []byte("changed source bytes")}
		if err := changed.VerifyProviderInput(context.Background(), request); err == nil || !strings.Contains(err.Error(), "raw M0 source bytes") {
			t.Fatalf("VerifyProviderInput(changed bytes) error = %v, want source-byte refusal", err)
		}
	})
	t.Run("changed clearance bytes", func(t *testing.T) {
		changed := preflight
		changed.ClearanceRegisterBytes = append(append([]byte(nil), preflight.ClearanceRegisterBytes...), ' ')
		if err := changed.VerifyProviderInput(context.Background(), request); err == nil || !strings.Contains(err.Error(), "exact SHA-256 pin") {
			t.Fatalf("VerifyProviderInput(changed clearance) error = %v, want clearance-byte refusal", err)
		}
	})
	t.Run("changed statement clearance", func(t *testing.T) {
		var register ProviderInputClearanceRegister
		if err := json.Unmarshal(preflight.ClearanceRegisterBytes, &register); err != nil {
			t.Fatal(err)
		}
		register.Clearances[0].StatementSHA256 = digestText("different statement")
		bytes, err := json.Marshal(register)
		if err != nil {
			t.Fatal(err)
		}
		changed := preflight
		changed.ClearanceRegisterBytes = bytes
		changedRequest := request
		changedRequest.InputClearance.EvidenceSHA256 = digestBytes(bytes)
		if err := changed.VerifyProviderInput(context.Background(), changedRequest); err == nil || !strings.Contains(err.Error(), "statement") {
			t.Fatalf("VerifyProviderInput(wrong statement clearance) error = %v, want statement-binding refusal", err)
		}
	})
}

func TestPinnedProviderInputPreflightRequiresFormalizationPurpose(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	if err := preflight.VerifyProviderInput(context.Background(), request); err != nil {
		t.Fatalf("VerifyProviderInput() error = %v, want formalization-scoped grant accepted", err)
	}

	var register ProviderInputClearanceRegister
	if err := json.Unmarshal(preflight.ClearanceRegisterBytes, &register); err != nil {
		t.Fatalf("decode clearance register: %v", err)
	}
	register.Clearances[0].AuthorizedOperation = "M7_EXPOSITION"
	changedBytes, err := json.Marshal(register)
	if err != nil {
		t.Fatalf("encode wrong-purpose clearance register: %v", err)
	}
	changed := preflight
	changed.ClearanceRegisterBytes = changedBytes
	request.InputClearance.EvidenceSHA256 = digestBytes(changedBytes)
	if err := changed.VerifyProviderInput(context.Background(), request); err == nil || !strings.Contains(err.Error(), "does not authorize NL_TO_LEAN_FORMALIZATION") {
		t.Fatalf("VerifyProviderInput(wrong-purpose grant) error = %v, want explicit formalization-purpose refusal", err)
	}
}

func TestPinnedProviderInputPreflightReusesExactM0CheckForM7(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	if err := preflight.VerifyM7ProviderInput(context.Background(), request.ProblemID, request.Source, request.InputClearance); err != nil {
		t.Fatalf("VerifyM7ProviderInput() error = %v, want exact M7 source and clearance accepted", err)
	}

	changedSource := request.Source
	changedSource.Statement = "A different statement."
	if err := preflight.VerifyM7ProviderInput(context.Background(), request.ProblemID, changedSource, request.InputClearance); err == nil || !strings.Contains(err.Error(), "target statement") {
		t.Fatalf("VerifyM7ProviderInput(changed statement) error = %v, want exact M0 statement refusal", err)
	}

	changedClearance := request.InputClearance
	changedClearance.StatementID = "another-statement"
	if err := preflight.VerifyM7ProviderInput(context.Background(), request.ProblemID, request.Source, changedClearance); err == nil || !strings.Contains(err.Error(), "item clearance fields") {
		t.Fatalf("VerifyM7ProviderInput(changed clearance) error = %v, want item-clearance binding refusal", err)
	}
}

func pinnedPreflightFixture(t *testing.T) (PinnedProviderInputPreflight, Request) {
	t.Helper()
	now := time.Date(2026, time.October, 20, 20, 0, 0, 0, time.UTC)
	statement := "For each natural number n, n equals itself."
	rawSource := []byte("theorem source_problem_001 : True := by trivial\n")
	fragment := []byte("theorem source_problem_001 : True\n")
	source := catalog.SourceVersion{
		ID:               "source-001",
		URL:              "https://example.invalid/source-001",
		ItemLocator:      "FormalConjectures/1.lean",
		Lane:             catalog.LaneFormalConjectures,
		Revision:         "source-revision-001",
		RetrievedAt:      now,
		ContentSHA256:    digestBytes(rawSource),
		AuthorOrHolder:   "Formal Conjectures Authors",
		License:          "Apache-2.0",
		LicenseTermsURL:  "https://www.apache.org/licenses/LICENSE-2.0",
		TermsNote:        "Synthetic test fixture rights terms.",
		Attribution:      "Synthetic test fixture attribution.",
		AllowedUses:      []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseProviderInput},
		RightsReviewerID: "synthetic-rights-reviewer",
		RightsReviewedAt: now,
		RightsEvidenceID: "rights-evidence-001",
		Rights:           catalog.RightsCleared,
	}
	problem := catalog.Problem{
		ID:                "problem-001",
		Title:             "Synthetic source-bound problem",
		InformalStatement: statement,
		Status:            catalog.StatusConjectured,
		SourceIDs:         []string{source.ID},
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, []catalog.Problem{problem})
	if err != nil {
		t.Fatalf("NewSnapshot() error = %v", err)
	}
	clearance := ProviderInputClearanceRecord{
		SchemaVersion:           providerInputClearanceSchemaVersion,
		ClearanceID:             "clearance-001",
		ProblemID:               problem.ID,
		StatementID:             "statement-001",
		SourceID:                source.ID,
		SourceRevision:          source.Revision,
		SourceLocator:           source.ItemLocator,
		SourceFileSHA256:        source.ContentSHA256,
		SourceGitBlob:           strings.Repeat("a", 40),
		StatementSHA256:         digestText(statement),
		SubmittedFragmentPath:   "provider-input-fragments/source-001.lean",
		SubmittedFragmentSHA256: digestBytes(fragment),
		RightsEvidenceID:        source.RightsEvidenceID,
		CatalogSnapshotSHA256:   snapshot.ContentSHA256,
		AllowedUse:              string(catalog.UseProviderInput),
		AuthorizedOperation:     providerInputOperationFormalization,
		Scope:                   "Exact statement only.",
		Status:                  "CLEARED",
		CatalogSnapshotPath:     "catalog.snapshot.json",
		CatalogProblemID:        problem.ID,
	}
	register := ProviderInputClearanceRegister{
		SchemaVersion:         providerInputRegisterSchemaVersion,
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		Clearances:            []ProviderInputClearanceRecord{clearance},
	}
	registerBytes, err := json.Marshal(register)
	if err != nil {
		t.Fatalf("Marshal() clearance register error = %v", err)
	}
	request := NewRequest(
		"candidate-001",
		problem.ID,
		domain.V3SourceStatementPin{
			URL:                   source.URL,
			ItemLocator:           source.ItemLocator,
			Revision:              source.Revision,
			RawItemSHA256:         source.ContentSHA256,
			CatalogSnapshotSHA256: snapshot.ContentSHA256,
			Statement:             statement,
			EvidenceID:            "m0-source-evidence-001",
		},
		domain.AgentRunInputClearance{
			StatementID:    "statement-001",
			EvidenceID:     clearance.ClearanceID,
			EvidenceSHA256: digestBytes(registerBytes),
		},
		"label-001",
		"receipt-001",
	)
	return PinnedProviderInputPreflight{
		Snapshot:               snapshot,
		ClearanceRegisterBytes: registerBytes,
		SourceItemBytes:        map[string][]byte{source.ID: rawSource},
	}, request
}
