package formalizer

import (
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"io"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	providerInputRegisterSchemaVersion  = "mathcase-provider-input-clearance-register-v1"
	providerInputClearanceSchemaVersion = "mathcase-provider-input-clearance-v1"
	providerInputOperationFormalization = "NL_TO_LEAN_FORMALIZATION"
)

// ProviderInputClearanceRegister is the exact owner-reviewed item-clearance
// register whose bytes are pinned by AgentRunInputClearance.EvidenceSHA256.
type ProviderInputClearanceRegister struct {
	SchemaVersion         string                         `json:"schema_version"`
	CatalogSnapshotSHA256 string                         `json:"catalog_snapshot_sha256"`
	Clearances            []ProviderInputClearanceRecord `json:"clearances"`
}

// ProviderInputClearanceRecord binds one provider-input permission to one
// source item and one exact statement in a pinned M0 snapshot.
type ProviderInputClearanceRecord struct {
	SchemaVersion           string `json:"schema_version"`
	ClearanceID             string `json:"clearance_id"`
	ProblemID               string `json:"problem_id"`
	StatementID             string `json:"statement_id"`
	SourceID                string `json:"source_id"`
	SourceRevision          string `json:"source_revision"`
	SourceLocator           string `json:"source_locator"`
	SourceFileSHA256        string `json:"source_file_sha256"`
	SourceGitBlob           string `json:"source_git_blob"`
	StatementSHA256         string `json:"statement_sha256"`
	SubmittedFragmentPath   string `json:"submitted_fragment_path"`
	SubmittedFragmentSHA256 string `json:"submitted_fragment_sha256"`
	RightsEvidenceID        string `json:"rights_evidence_id"`
	CatalogSnapshotSHA256   string `json:"catalog_snapshot_sha256"`
	AllowedUse              string `json:"allowed_use"`
	AuthorizedOperation     string `json:"authorized_operation,omitempty"`
	Scope                   string `json:"scope"`
	Status                  string `json:"status"`
	CatalogSnapshotPath     string `json:"catalog_snapshot_path"`
	CatalogProblemID        string `json:"catalog_problem_id"`
}

// PinnedProviderInputPreflight verifies the exact M0 snapshot, source bytes,
// M0 rights grant, and item record in the clearance register before dispatch.
// Hash consistency does not authenticate who issued the rights review.
type PinnedProviderInputPreflight struct {
	Snapshot               catalog.Snapshot
	ClearanceRegisterBytes []byte
	SourceItemBytes        map[string][]byte
}

func (p PinnedProviderInputPreflight) VerifyProviderInput(ctx context.Context, request Request) error {
	if err := request.Validate(); err != nil {
		return fmt.Errorf("formalizer: validate clearance request: %w", err)
	}
	return p.verifyProviderInput(ctx, providerInputOperationFormalization, request.ProblemID, request.Source, request.InputClearance)
}

// VerifyM7ProviderInput reuses the same pinned M0/source/rights checker for
// the all-tier Expositor route, without requiring formalizer-only candidate
// and label IDs.
func (p PinnedProviderInputPreflight) VerifyM7ProviderInput(
	ctx context.Context,
	problemID string,
	sourcePin domain.V3SourceStatementPin,
	clearance domain.AgentRunInputClearance,
) error {
	if err := state.ValidateIdentifier("M7 provider-input problem ID", problemID); err != nil {
		return err
	}
	if err := validateSourcePin(sourcePin); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("M7 provider-input clearance statement ID", clearance.StatementID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("M7 provider-input clearance evidence ID", clearance.EvidenceID); err != nil {
		return err
	}
	if !validSHA256(clearance.EvidenceSHA256) {
		return errors.New("formalizer: M7 input clearance must pin the exact evidence artifact SHA-256")
	}
	return p.verifyProviderInput(ctx, "", problemID, sourcePin, clearance)
}

func (p PinnedProviderInputPreflight) verifyProviderInput(
	ctx context.Context,
	requiredOperation string,
	problemID string,
	sourcePin domain.V3SourceStatementPin,
	clearance domain.AgentRunInputClearance,
) error {
	if ctx == nil {
		return errors.New("formalizer: clearance preflight context is required")
	}
	select {
	case <-ctx.Done():
		return ctx.Err()
	default:
	}
	if err := p.Snapshot.Validate(); err != nil {
		return fmt.Errorf("formalizer: validate pinned M0 snapshot: %w", err)
	}
	if p.Snapshot.ContentSHA256 != sourcePin.CatalogSnapshotSHA256 {
		return errors.New("formalizer: clearance preflight M0 digest does not match the request")
	}
	if len(p.ClearanceRegisterBytes) == 0 || digestBytes(p.ClearanceRegisterBytes) != clearance.EvidenceSHA256 {
		return errors.New("formalizer: reopened clearance register does not match its exact SHA-256 pin")
	}

	var register ProviderInputClearanceRegister
	if err := decodeProviderInputJSON(p.ClearanceRegisterBytes, &register); err != nil {
		return fmt.Errorf("formalizer: decode provider-input clearance register: %w", err)
	}
	if register.SchemaVersion != providerInputRegisterSchemaVersion || register.CatalogSnapshotSHA256 != p.Snapshot.ContentSHA256 {
		return errors.New("formalizer: provider-input clearance register is not bound to the exact M0 snapshot")
	}

	problem, ok := catalogProblem(p.Snapshot, problemID)
	if !ok || problem.InformalStatement != sourcePin.Statement {
		return errors.New("formalizer: target statement does not match the pinned M0 problem")
	}
	var source *catalog.SourceVersion
	for index := range p.Snapshot.Sources {
		candidate := &p.Snapshot.Sources[index]
		if candidate.URL != sourcePin.URL || candidate.ItemLocator != sourcePin.ItemLocator || candidate.Revision != sourcePin.Revision {
			continue
		}
		if source != nil {
			return errors.New("formalizer: M0 source pin matches more than one source item")
		}
		source = candidate
	}
	if source == nil || !containsString(problem.SourceIDs, source.ID) || source.ContentSHA256 != sourcePin.RawItemSHA256 {
		return errors.New("formalizer: M0 source pin does not identify the exact target source")
	}
	if !source.EligibleFor(catalog.UseProviderInput) {
		return errors.New("formalizer: pinned M0 source is not cleared for PROVIDER_INPUT")
	}
	if err := matchCatalogSource(p.Snapshot, problem, sourcePin); err != nil {
		return err
	}
	rawSource, ok := p.SourceItemBytes[source.ID]
	if !ok || digestBytes(rawSource) != source.ContentSHA256 || digestBytes(rawSource) != sourcePin.RawItemSHA256 {
		return errors.New("formalizer: reopened raw M0 source bytes do not match the exact source pin")
	}

	var matched *ProviderInputClearanceRecord
	for index := range register.Clearances {
		record := &register.Clearances[index]
		if record.ClearanceID != clearance.EvidenceID {
			continue
		}
		if matched != nil {
			return errors.New("formalizer: provider-input clearance ID is duplicated in its register")
		}
		matched = record
	}
	if matched == nil {
		return errors.New("formalizer: exact item clearance is missing from the pinned register")
	}
	if matched.SchemaVersion != providerInputClearanceSchemaVersion || matched.Status != "CLEARED" || matched.AllowedUse != string(catalog.UseProviderInput) {
		return errors.New("formalizer: item clearance is not an active PROVIDER_INPUT grant")
	}
	if requiredOperation != "" && matched.AuthorizedOperation != requiredOperation {
		return fmt.Errorf("formalizer: item clearance does not authorize %s", requiredOperation)
	}
	if matched.ProblemID != problem.ID || matched.CatalogProblemID != problem.ID || matched.StatementID != clearance.StatementID ||
		matched.SourceID != source.ID || matched.SourceRevision != source.Revision || matched.SourceLocator != source.ItemLocator ||
		matched.SourceFileSHA256 != source.ContentSHA256 || matched.RightsEvidenceID != source.RightsEvidenceID ||
		matched.CatalogSnapshotSHA256 != p.Snapshot.ContentSHA256 || matched.StatementSHA256 != digestText(problem.InformalStatement) {
		return errors.New("formalizer: item clearance fields do not match the exact M0 problem, source, rights record, or statement")
	}
	if matched.SubmittedFragmentPath == "" || !validSHA256(matched.SubmittedFragmentSHA256) || matched.Scope == "" {
		return errors.New("formalizer: item clearance lacks a scoped, hash-pinned provider-input fragment")
	}
	return nil
}

func decodeProviderInputJSON(data []byte, dst any) error {
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(dst); err != nil {
		return err
	}
	var trailing any
	if err := decoder.Decode(&trailing); !errors.Is(err, io.EOF) {
		if err != nil {
			return err
		}
		return errors.New("provider-input clearance register contains multiple JSON values")
	}
	return nil
}
