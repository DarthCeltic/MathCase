package domain

import (
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	V3BackTranslationWitnessRole = "COMPARISON_WITNESS_NOT_GROUND_TRUTH"
	V3NaturalParametersPresent   = "PRESENT"
	V3NaturalParametersNone      = "NONE"
	V3EmptyObjectRelevant        = "RELEVANT"
	V3EmptyObjectNotApplicable   = "NOT_APPLICABLE"
)

type V3SemanticStatus string

const (
	V3SemanticPass        V3SemanticStatus = "PASS"
	V3SemanticMismatch    V3SemanticStatus = "MISMATCH"
	V3SemanticNeedsReview V3SemanticStatus = "NEEDS_REVIEW"
)

type V3BoundaryProbeKind string

const (
	V3BoundaryNaturalValue V3BoundaryProbeKind = "NATURAL_VALUE"
	V3BoundaryEmptyObject  V3BoundaryProbeKind = "EMPTY_OBJECT"
)

type V3BoundaryOutcome string

const (
	V3BoundaryConsistent    V3BoundaryOutcome = "CONSISTENT"
	V3BoundaryMismatch      V3BoundaryOutcome = "MISMATCH"
	V3BoundaryNotApplicable V3BoundaryOutcome = "NOT_APPLICABLE"
)

type V3SourceStatementPin struct {
	URL                   string `json:"url"`
	ItemLocator           string `json:"item_locator"`
	Revision              string `json:"revision"`
	RawItemSHA256         string `json:"raw_item_sha256"`
	CatalogSnapshotSHA256 string `json:"catalog_snapshot_sha256"`
	Statement             string `json:"statement"`
	EvidenceID            string `json:"evidence_id"`
}

type V3LeanStatementPin struct {
	AuthorID                  string `json:"author_id"`
	Revision                  string `json:"revision"`
	FileLocator               string `json:"file_locator"`
	DeclarationName           string `json:"declaration_name"`
	SourceFileSHA256          string `json:"source_file_sha256"`
	NormalizedStatement       string `json:"normalized_statement"`
	NormalizedStatementSHA256 string `json:"normalized_statement_sha256"`
	EvidenceID                string `json:"evidence_id"`
}

type V3BackTranslation struct {
	Text         string    `json:"text"`
	ProducedByID string    `json:"produced_by_id"`
	Role         string    `json:"role"`
	RecordedAt   time.Time `json:"recorded_at"`
	EvidenceID   string    `json:"evidence_id"`
}

type V3SemanticDifference struct {
	Description string `json:"description"`
	Material    bool   `json:"material"`
	Rationale   string `json:"rationale"`
}

type V3SemanticComparison struct {
	Status                V3SemanticStatus       `json:"status"`
	Differences           []V3SemanticDifference `json:"differences"`
	Rationale             string                 `json:"rationale"`
	UnresolvedAssumptions []string               `json:"unresolved_assumptions"`
	ReviewerID            string                 `json:"reviewer_id"`
	HumanSpotReview       bool                   `json:"human_spot_review"`
	ReviewerAccepted      bool                   `json:"reviewer_accepted"`
	RecordedAt            time.Time              `json:"recorded_at"`
	EvidenceID            string                 `json:"evidence_id"`
}

type V3BoundaryProbe struct {
	Kind           V3BoundaryProbeKind `json:"kind"`
	ParameterID    string              `json:"parameter_id"`
	Value          string              `json:"value"`
	SourceInstance string              `json:"source_instance,omitempty"`
	LeanInstance   string              `json:"lean_instance,omitempty"`
	Outcome        V3BoundaryOutcome   `json:"outcome"`
	Rationale      string              `json:"rationale"`
	EvidenceID     string              `json:"evidence_id"`
}

// V3StatementFidelity is the persisted dual-check record for the exact
// catalog-to-Lean correspondence. It preserves the back-translation as a
// comparison witness, never as the source of truth.
type V3StatementFidelity struct {
	Source                        V3SourceStatementPin `json:"source"`
	Lean                          V3LeanStatementPin   `json:"lean"`
	BackTranslation               V3BackTranslation    `json:"back_translation"`
	SemanticComparison            V3SemanticComparison `json:"semantic_comparison"`
	NaturalParameterApplicability string               `json:"natural_parameter_applicability"`
	MeaningfulNaturalParameters   []string             `json:"meaningful_natural_parameters"`
	EmptyObjectApplicability      string               `json:"empty_object_applicability"`
	BoundaryProbes                []V3BoundaryProbe    `json:"boundary_probes"`
	IndependentRoute              string               `json:"independent_route"`
}

// EvidenceIDs returns the unique evidence references used by the V3 review.
func (v V3StatementFidelity) EvidenceIDs() []string {
	all := []string{v.Source.EvidenceID, v.Lean.EvidenceID, v.BackTranslation.EvidenceID, v.SemanticComparison.EvidenceID}
	for _, probe := range v.BoundaryProbes {
		all = append(all, probe.EvidenceID)
	}
	seen := make(map[string]struct{}, len(all))
	result := make([]string, 0, len(all))
	for _, id := range all {
		if id == "" {
			continue
		}
		if _, exists := seen[id]; exists {
			continue
		}
		seen[id] = struct{}{}
		result = append(result, id)
	}
	return result
}

// Validate checks the complete evidence schema against the exact dossier
// statements. It does not infer mathematical equivalence from prose; the
// recorded human semantic comparison supplies that disposition.
func (v V3StatementFidelity) Validate(informalStatement, leanStatement string) error {
	if strings.TrimSpace(v.Source.URL) == "" || strings.TrimSpace(v.Source.ItemLocator) == "" || strings.TrimSpace(v.Source.Revision) == "" ||
		!validSHA256(v.Source.RawItemSHA256) || !validSHA256(v.Source.CatalogSnapshotSHA256) || v.Source.Statement == "" || v.Source.Statement != informalStatement {
		return errors.New("V3: pinned source statement, locator, revision, item hash, catalog snapshot, and exact dossier text are required")
	}
	if err := state.ValidateIdentifier("V3 source evidence ID", v.Source.EvidenceID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("V3 Lean author ID", v.Lean.AuthorID); err != nil {
		return err
	}
	if strings.TrimSpace(v.Lean.Revision) == "" || strings.TrimSpace(v.Lean.FileLocator) == "" {
		return errors.New("V3: Lean source revision and file locator are required")
	}
	if err := state.ValidateIdentifier("V3 Lean declaration name", v.Lean.DeclarationName); err != nil {
		return err
	}
	if !validSHA256(v.Lean.SourceFileSHA256) || v.Lean.NormalizedStatement == "" || v.Lean.NormalizedStatement != leanStatement ||
		!validSHA256(v.Lean.NormalizedStatementSHA256) || v.Lean.NormalizedStatementSHA256 != sha256Text(v.Lean.NormalizedStatement) {
		return errors.New("V3: Lean source hash and exact normalized dossier statement are required")
	}
	if err := state.ValidateIdentifier("V3 Lean source evidence ID", v.Lean.EvidenceID); err != nil {
		return err
	}
	if strings.TrimSpace(v.BackTranslation.Text) == "" || v.BackTranslation.Role != V3BackTranslationWitnessRole || v.BackTranslation.RecordedAt.IsZero() {
		return errors.New("V3: independent back-translation must be recorded as a comparison witness, not ground truth")
	}
	if err := state.ValidateIdentifier("V3 back-translation author ID", v.BackTranslation.ProducedByID); err != nil {
		return err
	}
	if v.BackTranslation.ProducedByID == v.Lean.AuthorID {
		return errors.New("V3: back-translation author must be independent of the Lean statement author")
	}
	if err := state.ValidateIdentifier("V3 back-translation evidence ID", v.BackTranslation.EvidenceID); err != nil {
		return err
	}
	comparison := v.SemanticComparison
	switch comparison.Status {
	case V3SemanticPass, V3SemanticMismatch, V3SemanticNeedsReview:
	default:
		return errors.New("V3: semantic comparison requires an explicit disposition")
	}
	if comparison.Differences == nil || comparison.UnresolvedAssumptions == nil || strings.TrimSpace(comparison.Rationale) == "" || comparison.RecordedAt.IsZero() {
		return errors.New("V3: semantic comparison requires an explicit diff, rationale, unresolved-assumption list, and review time")
	}
	if err := state.ValidateIdentifier("V3 semantic reviewer ID", comparison.ReviewerID); err != nil {
		return err
	}
	if comparison.ReviewerID == v.Lean.AuthorID {
		return errors.New("V3: semantic reviewer must be independent of the Lean statement author")
	}
	if err := state.ValidateIdentifier("V3 semantic comparison evidence ID", comparison.EvidenceID); err != nil {
		return err
	}
	for _, difference := range comparison.Differences {
		if strings.TrimSpace(difference.Description) == "" || strings.TrimSpace(difference.Rationale) == "" {
			return errors.New("V3: every semantic difference needs a description and rationale")
		}
	}
	for _, assumption := range comparison.UnresolvedAssumptions {
		if strings.TrimSpace(assumption) == "" {
			return errors.New("V3: unresolved-assumption entries cannot be empty")
		}
	}
	if strings.TrimSpace(v.IndependentRoute) == "" {
		return errors.New("V3: an independent statement-review route is required")
	}
	if v.MeaningfulNaturalParameters == nil {
		return errors.New("V3: natural-parameter applicability must be explicitly recorded")
	}
	parameterSet := make(map[string]struct{}, len(v.MeaningfulNaturalParameters))
	for _, parameter := range v.MeaningfulNaturalParameters {
		if err := state.ValidateIdentifier("V3 natural parameter ID", parameter); err != nil {
			return err
		}
		if _, duplicate := parameterSet[parameter]; duplicate {
			return fmt.Errorf("V3: duplicate meaningful natural parameter %q", parameter)
		}
		parameterSet[parameter] = struct{}{}
	}
	switch v.NaturalParameterApplicability {
	case V3NaturalParametersPresent:
		if len(parameterSet) == 0 {
			return errors.New("V3: natural parameters are marked present but none are named")
		}
	case V3NaturalParametersNone:
		if len(parameterSet) != 0 {
			return errors.New("V3: natural parameters are marked absent but names were supplied")
		}
	default:
		return errors.New("V3: natural-parameter applicability must be PRESENT or NONE")
	}
	if v.BoundaryProbes == nil {
		return errors.New("V3: explicit boundary-probe results are required")
	}
	probeKeys := make(map[string]struct{}, len(v.BoundaryProbes))
	naturalProbeValues := make(map[string]map[string]V3BoundaryOutcome, len(parameterSet))
	emptyProbeCount := 0
	for _, probe := range v.BoundaryProbes {
		if err := state.ValidateIdentifier("V3 boundary probe parameter ID", probe.ParameterID); err != nil {
			return err
		}
		if err := state.ValidateIdentifier("V3 boundary probe evidence ID", probe.EvidenceID); err != nil {
			return err
		}
		if strings.TrimSpace(probe.Rationale) == "" {
			return errors.New("V3: each boundary probe requires a result rationale")
		}
		key := fmt.Sprintf("%s:%s:%s", probe.Kind, probe.ParameterID, probe.Value)
		if _, duplicate := probeKeys[key]; duplicate {
			return errors.New("V3: duplicate boundary probe")
		}
		probeKeys[key] = struct{}{}
		switch probe.Kind {
		case V3BoundaryNaturalValue:
			if _, ok := parameterSet[probe.ParameterID]; !ok || (probe.Value != "0" && probe.Value != "1") {
				return errors.New("V3: natural boundary probe must name a meaningful parameter at 0 or 1")
			}
			if probe.Outcome != V3BoundaryConsistent && probe.Outcome != V3BoundaryMismatch {
				return errors.New("V3: natural boundary probe must report CONSISTENT or MISMATCH")
			}
			if strings.TrimSpace(probe.SourceInstance) == "" || strings.TrimSpace(probe.LeanInstance) == "" {
				return errors.New("V3: natural boundary probes require exact source and Lean instances")
			}
			if naturalProbeValues[probe.ParameterID] == nil {
				naturalProbeValues[probe.ParameterID] = make(map[string]V3BoundaryOutcome, 2)
			}
			naturalProbeValues[probe.ParameterID][probe.Value] = probe.Outcome
		case V3BoundaryEmptyObject:
			emptyProbeCount++
			if probe.Value != "empty" {
				return errors.New("V3: empty-object boundary probe must use value 'empty'")
			}
			switch v.EmptyObjectApplicability {
			case V3EmptyObjectRelevant:
				if probe.Outcome != V3BoundaryConsistent && probe.Outcome != V3BoundaryMismatch {
					return errors.New("V3: relevant empty-object probe must report CONSISTENT or MISMATCH")
				}
				if strings.TrimSpace(probe.SourceInstance) == "" || strings.TrimSpace(probe.LeanInstance) == "" {
					return errors.New("V3: relevant empty-object probe requires exact source and Lean instances")
				}
			case V3EmptyObjectNotApplicable:
				if probe.Outcome != V3BoundaryNotApplicable || strings.TrimSpace(probe.SourceInstance) != "" || strings.TrimSpace(probe.LeanInstance) != "" {
					return errors.New("V3: inapplicable empty-object probe requires NOT_APPLICABLE without instantiated claims")
				}
			default:
				return errors.New("V3: empty-object applicability must be RELEVANT or NOT_APPLICABLE")
			}
		default:
			return fmt.Errorf("V3: unknown boundary probe kind %q", probe.Kind)
		}
	}
	for parameter := range parameterSet {
		values := naturalProbeValues[parameter]
		if values["0"] == "" || values["1"] == "" {
			return fmt.Errorf("V3: natural parameter %q requires both n=0 and n=1 boundary probes", parameter)
		}
	}
	if emptyProbeCount != 1 {
		return errors.New("V3: exactly one empty-object probe or explicit NOT_APPLICABLE result is required")
	}
	if v.EmptyObjectApplicability != V3EmptyObjectRelevant && v.EmptyObjectApplicability != V3EmptyObjectNotApplicable {
		return errors.New("V3: empty-object applicability must be RELEVANT or NOT_APPLICABLE")
	}
	return nil
}

// Conclusion preserves semantic mismatches as failures, but typed human and
// probe claims cannot pass without authenticated reviewer and execution
// receipts. Finite boundary probes never establish general equivalence.
func (v V3StatementFidelity) Conclusion() (VerificationStatus, string) {
	if v.SemanticComparison.Status == V3SemanticMismatch {
		return VerificationFailed, "V3 semantic comparison found a statement mismatch."
	}
	for _, difference := range v.SemanticComparison.Differences {
		if difference.Material {
			return VerificationFailed, "V3 semantic diff contains a material mismatch."
		}
	}
	for _, probe := range v.BoundaryProbes {
		if probe.Outcome == V3BoundaryMismatch {
			return VerificationFailed, "V3 boundary probe found a source/formal mismatch."
		}
	}
	if v.SemanticComparison.Status == V3SemanticNeedsReview || !v.SemanticComparison.HumanSpotReview || !v.SemanticComparison.ReviewerAccepted || len(v.SemanticComparison.UnresolvedAssumptions) > 0 {
		return VerificationBlocked, "V3 independent semantic comparison or human spot review remains incomplete."
	}
	if v.SemanticComparison.Status != V3SemanticPass {
		return VerificationBlocked, "V3 semantic comparison has no accepted pass disposition."
	}
	return VerificationBlocked, "V3 typed review fields are builder-authored claims; authenticated independent-review and exact-instance Lean probe receipts are required before passage."
}

func sha256Text(value string) string {
	digest := sha256.Sum256([]byte(value))
	return hex.EncodeToString(digest[:])
}
