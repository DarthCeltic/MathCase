// Package telescope implements the deterministic M1 allocation baseline.
package telescope

import (
	"errors"
	"fmt"
	"math"
	"sort"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/state"
)

const FormulaVersion = "telescope-v1"

// Features are the exact, logged inputs to the deterministic allocation
// formula. Conditional and technique values are supplied by M0/M3/M6 evidence;
// the ranker does not invent them.
type Features struct {
	ProblemID                string                          `json:"problem_id"`
	SourceIDs                []string                        `json:"source_ids"`
	TasteScore               float64                         `json:"taste_score"`
	TasteEvidence            FeatureEvidenceRef              `json:"taste_evidence"`
	ConditionalTaste         []ConditionalTasteFeature       `json:"conditional_taste,omitempty"`
	BoundaryTension          float64                         `json:"boundary_tension"`
	BoundaryEvidence         FeatureEvidenceRef              `json:"boundary_evidence"`
	TechniqueCompatibilities []TechniqueCompatibilityFeature `json:"technique_compatibilities"`
	SourceSnapshotSHA256     string                          `json:"source_snapshot_sha256"`
	Rationale                string                          `json:"rationale"`
}

type Result struct {
	FormulaVersion string   `json:"formula_version"`
	Features       Features `json:"features"`
	Score          float64  `json:"score"`
}

func (f Features) Validate() error {
	if err := state.ValidateIdentifier("telescope problem ID", f.ProblemID); err != nil {
		return err
	}
	if len(f.SourceIDs) == 0 {
		return errors.New("telescope: at least one catalog source ID is required")
	}
	seenSources := make(map[string]struct{}, len(f.SourceIDs))
	for _, sourceID := range f.SourceIDs {
		if err := state.ValidateIdentifier("telescope source ID", sourceID); err != nil {
			return err
		}
		if _, exists := seenSources[sourceID]; exists {
			return fmt.Errorf("telescope: duplicate source ID %q", sourceID)
		}
		seenSources[sourceID] = struct{}{}
	}
	if !unitInterval(f.TasteScore) || !unitInterval(f.BoundaryTension) {
		return errors.New("telescope: taste and boundary tension must be in [0,1]")
	}
	if err := f.TasteEvidence.Validate(); err != nil {
		return fmt.Errorf("telescope: taste score evidence: %w", err)
	}
	if err := f.BoundaryEvidence.Validate(); err != nil {
		return fmt.Errorf("telescope: boundary-tension evidence: %w", err)
	}
	seenConditional := make(map[string]struct{}, len(f.ConditionalTaste))
	for _, conditional := range f.ConditionalTaste {
		if err := state.ValidateIdentifier("conditional problem ID", conditional.ProblemID); err != nil {
			return err
		}
		if conditional.ProblemID == f.ProblemID {
			return errors.New("telescope: a problem cannot contribute its own conditional taste score")
		}
		if _, exists := seenConditional[conditional.ProblemID]; exists {
			return fmt.Errorf("telescope: duplicate conditional problem %q", conditional.ProblemID)
		}
		seenConditional[conditional.ProblemID] = struct{}{}
		if !unitInterval(conditional.Score) {
			return fmt.Errorf("telescope: conditional taste score for %q must be in [0,1]", conditional.ProblemID)
		}
		if err := conditional.Evidence.Validate(); err != nil {
			return fmt.Errorf("telescope: conditional taste evidence for %q: %w", conditional.ProblemID, err)
		}
	}
	if len(f.TechniqueCompatibilities) == 0 {
		return errors.New("telescope: at least one technique compatibility value is required")
	}
	seenTechniques := make(map[string]struct{}, len(f.TechniqueCompatibilities))
	for _, technique := range f.TechniqueCompatibilities {
		if err := state.ValidateIdentifier("technique ID", technique.TechniqueID); err != nil {
			return err
		}
		if _, exists := seenTechniques[technique.TechniqueID]; exists {
			return fmt.Errorf("telescope: duplicate technique ID %q", technique.TechniqueID)
		}
		seenTechniques[technique.TechniqueID] = struct{}{}
		if !unitInterval(technique.Score) {
			return fmt.Errorf("telescope: technique compatibility for %q must be in [0,1]", technique.TechniqueID)
		}
		if err := technique.Evidence.Validate(); err != nil {
			return fmt.Errorf("telescope: technique compatibility evidence for %q: %w", technique.TechniqueID, err)
		}
	}
	if !validSHA256(f.SourceSnapshotSHA256) {
		return errors.New("telescope: source snapshot SHA-256 must be canonical lowercase hex")
	}
	if strings.TrimSpace(f.Rationale) == "" || strings.ContainsRune(f.Rationale, '\x00') {
		return errors.New("telescope: a written rationale without NUL bytes is required")
	}
	return nil
}

func Score(features Features) (Result, error) {
	if err := features.Validate(); err != nil {
		return Result{}, err
	}
	conditional := 0.0
	for _, feature := range features.ConditionalTaste {
		conditional += feature.Score
	}
	compatibility := 0.0
	for _, feature := range features.TechniqueCompatibilities {
		if feature.Score > compatibility {
			compatibility = feature.Score
		}
	}
	score := features.TasteScore * (1 + conditional) * features.BoundaryTension * compatibility
	if math.IsNaN(score) || math.IsInf(score, 0) {
		return Result{}, errors.New("telescope: computed score is not finite")
	}
	return Result{FormulaVersion: FormulaVersion, Features: cloneFeatures(features), Score: score}, nil
}

func Rank(features []Features) ([]Result, error) {
	results := make([]Result, 0, len(features))
	seen := make(map[string]struct{}, len(features))
	for _, item := range features {
		if _, exists := seen[item.ProblemID]; exists {
			return nil, fmt.Errorf("telescope: duplicate problem %q", item.ProblemID)
		}
		result, err := Score(item)
		if err != nil {
			return nil, fmt.Errorf("telescope: problem %q: %w", item.ProblemID, err)
		}
		seen[item.ProblemID] = struct{}{}
		results = append(results, result)
	}
	sort.Slice(results, func(i, j int) bool {
		if results[i].Score == results[j].Score {
			return results[i].Features.ProblemID < results[j].Features.ProblemID
		}
		return results[i].Score > results[j].Score
	})
	return results, nil
}

// Audit recomputes a stored allocation from the frozen inputs and exact
// formula version. Callers should reject unknown formula versions.
func Audit(recorded Result) error {
	if recorded.FormulaVersion != FormulaVersion {
		return fmt.Errorf("telescope: unsupported formula version %q", recorded.FormulaVersion)
	}
	recomputed, err := Score(recorded.Features)
	if err != nil {
		return err
	}
	if math.Float64bits(recomputed.Score) != math.Float64bits(recorded.Score) {
		return errors.New("telescope: recorded score does not match deterministic recomputation")
	}
	return nil
}

func unitInterval(value float64) bool {
	return !math.IsNaN(value) && !math.IsInf(value, 0) && value >= 0 && value <= 1
}

func cloneFeatures(features Features) Features {
	features.SourceIDs = append([]string(nil), features.SourceIDs...)
	sort.Strings(features.SourceIDs)
	features.ConditionalTaste = append([]ConditionalTasteFeature(nil), features.ConditionalTaste...)
	features.TechniqueCompatibilities = append([]TechniqueCompatibilityFeature(nil), features.TechniqueCompatibilities...)
	return features
}
