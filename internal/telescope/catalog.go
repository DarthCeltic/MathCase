package telescope

import (
	"errors"
	"fmt"
	"math"

	"github.com/DarthCeltic/MathCase/internal/catalog"
)

// RankFromCatalog validates every feature row and its exact source-linked
// evidence artifacts against an M0 snapshot before applying the deterministic
// M1 formula.
func RankFromCatalog(snapshot catalog.Snapshot, features []Features, evidence map[string]LoadedFeatureEvidence) ([]Result, error) {
	if err := snapshot.Validate(); err != nil {
		return nil, fmt.Errorf("telescope: invalid M0 catalog snapshot: %w", err)
	}
	if len(features) == 0 {
		return nil, errors.New("telescope: at least one feature row is required")
	}
	if evidence == nil {
		return nil, errors.New("telescope: feature evidence is required")
	}
	sources := make(map[string]catalog.SourceVersion, len(snapshot.Sources))
	for _, source := range snapshot.Sources {
		sources[source.ID] = source
	}
	problems := make(map[string]catalog.Problem, len(snapshot.Problems))
	for _, problem := range snapshot.Problems {
		problems[problem.ID] = problem
	}
	usedEvidence := make(map[string]struct{}, len(evidence))
	evidenceValidator := featureEvidenceValidator{
		snapshot: snapshot,
		sources:  sources,
		problems: problems,
		evidence: evidence,
		used:     usedEvidence,
	}
	for _, feature := range features {
		if err := feature.Validate(); err != nil {
			return nil, fmt.Errorf("telescope: problem %q: %w", feature.ProblemID, err)
		}
		if feature.SourceSnapshotSHA256 != snapshot.ContentSHA256 {
			return nil, fmt.Errorf("telescope: problem %q uses a different M0 catalog snapshot", feature.ProblemID)
		}
		problem, exists := problems[feature.ProblemID]
		if !exists {
			return nil, fmt.Errorf("telescope: problem %q is absent from the M0 catalog", feature.ProblemID)
		}
		if !sameSourceIDs(feature.SourceIDs, problem.SourceIDs) {
			return nil, fmt.Errorf("telescope: problem %q source IDs do not match its M0 record", feature.ProblemID)
		}
		for _, sourceID := range problem.SourceIDs {
			source := sources[sourceID]
			if !source.EligibleFor(catalog.UseIndex) {
				return nil, fmt.Errorf("telescope: problem %q source %q is not cleared for INDEX use", feature.ProblemID, sourceID)
			}
		}
		if err := evidenceValidator.validate(feature.ProblemID, featureEvidenceExpectation{
			ref: feature.TasteEvidence, kind: FeatureEvidenceTaste, value: feature.TasteScore,
			allowedSourceIDs: problem.SourceIDs,
		}); err != nil {
			return nil, fmt.Errorf("telescope: problem %q taste evidence: %w", feature.ProblemID, err)
		}
		if err := evidenceValidator.validate(feature.ProblemID, featureEvidenceExpectation{
			ref: feature.BoundaryEvidence, kind: FeatureEvidenceBoundaryTension, value: feature.BoundaryTension,
			allowedSourceIDs: problem.SourceIDs,
		}); err != nil {
			return nil, fmt.Errorf("telescope: problem %q boundary evidence: %w", feature.ProblemID, err)
		}
		for _, conditional := range feature.ConditionalTaste {
			relatedProblem, exists := problems[conditional.ProblemID]
			if !exists {
				return nil, fmt.Errorf("telescope: conditional problem %q is absent from the M0 catalog", conditional.ProblemID)
			}
			allowedSources := append(append([]string(nil), problem.SourceIDs...), relatedProblem.SourceIDs...)
			if err := evidenceValidator.validate(feature.ProblemID, featureEvidenceExpectation{
				ref: conditional.Evidence, kind: FeatureEvidenceConditionalTaste,
				relatedProblemID: conditional.ProblemID, value: conditional.Score, allowedSourceIDs: allowedSources,
			}); err != nil {
				return nil, fmt.Errorf("telescope: problem %q conditional taste evidence for %q: %w", feature.ProblemID, conditional.ProblemID, err)
			}
		}
		for _, technique := range feature.TechniqueCompatibilities {
			if err := evidenceValidator.validate(feature.ProblemID, featureEvidenceExpectation{
				ref: technique.Evidence, kind: FeatureEvidenceTechniqueCompatibility,
				techniqueID: technique.TechniqueID, value: technique.Score, allowedSourceIDs: problem.SourceIDs,
			}); err != nil {
				return nil, fmt.Errorf("telescope: problem %q technique evidence for %q: %w", feature.ProblemID, technique.TechniqueID, err)
			}
		}
	}
	if len(usedEvidence) != len(evidence) {
		return nil, errors.New("telescope: evidence set contains unreferenced feature artifacts")
	}
	return Rank(features)
}

type featureEvidenceExpectation struct {
	ref              FeatureEvidenceRef
	kind             FeatureEvidenceKind
	relatedProblemID string
	techniqueID      string
	value            float64
	allowedSourceIDs []string
}

type featureEvidenceValidator struct {
	snapshot catalog.Snapshot
	sources  map[string]catalog.SourceVersion
	problems map[string]catalog.Problem
	evidence map[string]LoadedFeatureEvidence
	used     map[string]struct{}
}

func (validator *featureEvidenceValidator) validate(problemID string, expected featureEvidenceExpectation) error {
	if _, duplicate := validator.used[expected.ref.EvidenceID]; duplicate {
		return fmt.Errorf("evidence ID %q is reused by multiple feature values", expected.ref.EvidenceID)
	}
	loaded, exists := validator.evidence[expected.ref.EvidenceID]
	if !exists {
		return fmt.Errorf("evidence artifact %q is missing", expected.ref.EvidenceID)
	}
	if loaded.ArtifactSHA256 != expected.ref.ArtifactSHA256 {
		return fmt.Errorf("evidence artifact %q does not match its recorded SHA-256", expected.ref.EvidenceID)
	}
	record := loaded.Record
	if err := record.Validate(); err != nil {
		return fmt.Errorf("evidence artifact %q: %w", expected.ref.EvidenceID, err)
	}
	if record.EvidenceID != expected.ref.EvidenceID || record.ProblemID != problemID || record.Kind != expected.kind || record.RelatedProblemID != expected.relatedProblemID || record.TechniqueID != expected.techniqueID {
		return fmt.Errorf("evidence artifact %q identity does not match the feature input", expected.ref.EvidenceID)
	}
	if math.Float64bits(record.Value) != math.Float64bits(expected.value) {
		return fmt.Errorf("evidence artifact %q value does not match the feature input", expected.ref.EvidenceID)
	}
	if record.CatalogSnapshotSHA256 != validator.snapshot.ContentSHA256 {
		return fmt.Errorf("evidence artifact %q uses a different M0 catalog snapshot", expected.ref.EvidenceID)
	}
	for _, citation := range record.Sources {
		source, exists := validator.sources[citation.SourceID]
		if !exists || source.ContentSHA256 != citation.SourceSHA256 {
			return fmt.Errorf("evidence artifact %q source identity or SHA-256 does not match M0", expected.ref.EvidenceID)
		}
		if !source.EligibleFor(catalog.UseIndex) {
			return fmt.Errorf("evidence artifact %q source %q is not cleared for INDEX use", expected.ref.EvidenceID, citation.SourceID)
		}
		if !containsSourceID(expected.allowedSourceIDs, citation.SourceID) {
			return fmt.Errorf("evidence artifact %q source %q is not linked to the ranked or related problem", expected.ref.EvidenceID, citation.SourceID)
		}
	}
	if _, exists := validator.problems[record.ProblemID]; !exists {
		return fmt.Errorf("evidence artifact %q problem is absent from the M0 catalog", expected.ref.EvidenceID)
	}
	validator.used[expected.ref.EvidenceID] = struct{}{}
	return nil
}

func containsSourceID(sourceIDs []string, wanted string) bool {
	for _, sourceID := range sourceIDs {
		if sourceID == wanted {
			return true
		}
	}
	return false
}

func sameSourceIDs(actual, expected []string) bool {
	if len(actual) != len(expected) {
		return false
	}
	seen := make(map[string]struct{}, len(actual))
	for _, id := range actual {
		seen[id] = struct{}{}
	}
	for _, id := range expected {
		if _, exists := seen[id]; !exists {
			return false
		}
	}
	return true
}
