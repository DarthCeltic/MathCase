package telescope

import (
	"encoding/hex"
	"errors"
	"fmt"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/state"
)

const FeatureEvidenceSchemaVersion = "mathcase-telescope-feature-evidence-v1"

type FeatureEvidenceKind string

const (
	FeatureEvidenceTaste                  FeatureEvidenceKind = "TASTE"
	FeatureEvidenceConditionalTaste       FeatureEvidenceKind = "CONDITIONAL_TASTE"
	FeatureEvidenceBoundaryTension        FeatureEvidenceKind = "BOUNDARY_TENSION"
	FeatureEvidenceTechniqueCompatibility FeatureEvidenceKind = "TECHNIQUE_COMPATIBILITY"
)

// FeatureEvidenceRef binds a feature value to the exact bytes of one evidence
// artifact stored beneath the configured evidence root.
type FeatureEvidenceRef struct {
	EvidenceID     string `json:"evidence_id"`
	ArtifactSHA256 string `json:"artifact_sha256"`
}

func (ref FeatureEvidenceRef) Validate() error {
	if err := state.ValidateIdentifier("feature evidence ID", ref.EvidenceID); err != nil {
		return err
	}
	if !validSHA256(ref.ArtifactSHA256) {
		return errors.New("feature evidence artifact SHA-256 must be canonical lowercase hex")
	}
	return nil
}

type ConditionalTasteFeature struct {
	ProblemID string             `json:"problem_id"`
	Score     float64            `json:"score"`
	Evidence  FeatureEvidenceRef `json:"evidence"`
}

type TechniqueCompatibilityFeature struct {
	TechniqueID string             `json:"technique_id"`
	Score       float64            `json:"score"`
	Evidence    FeatureEvidenceRef `json:"evidence"`
}

type FeatureEvidenceSource struct {
	SourceID     string `json:"source_id"`
	SourceSHA256 string `json:"source_sha256"`
}

// FeatureEvidenceRecord is a source-linked observation supporting one exact
// feature value. Conditional and technique dimensions use their corresponding
// ID field; all other kinds leave both fields empty.
type FeatureEvidenceRecord struct {
	SchemaVersion         string                  `json:"schema_version"`
	EvidenceID            string                  `json:"evidence_id"`
	ProblemID             string                  `json:"problem_id"`
	Kind                  FeatureEvidenceKind     `json:"kind"`
	RelatedProblemID      string                  `json:"related_problem_id,omitempty"`
	TechniqueID           string                  `json:"technique_id,omitempty"`
	Value                 float64                 `json:"value"`
	CatalogSnapshotSHA256 string                  `json:"catalog_snapshot_sha256"`
	Sources               []FeatureEvidenceSource `json:"sources"`
	Method                string                  `json:"method"`
	Rationale             string                  `json:"rationale"`
}

// LoadedFeatureEvidence includes the digest computed over the exact JSON bytes
// read from disk. It is kept separate from the record to avoid self-referential
// hashes in the artifact format.
type LoadedFeatureEvidence struct {
	Record         FeatureEvidenceRecord
	ArtifactSHA256 string
}

func (record FeatureEvidenceRecord) Validate() error {
	if record.SchemaVersion != FeatureEvidenceSchemaVersion {
		return fmt.Errorf("unsupported feature evidence schema %q", record.SchemaVersion)
	}
	if err := state.ValidateIdentifier("feature evidence ID", record.EvidenceID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("feature evidence problem ID", record.ProblemID); err != nil {
		return err
	}
	switch record.Kind {
	case FeatureEvidenceTaste, FeatureEvidenceBoundaryTension:
		if record.RelatedProblemID != "" || record.TechniqueID != "" {
			return errors.New("feature evidence kind does not accept a related problem or technique ID")
		}
	case FeatureEvidenceConditionalTaste:
		if err := state.ValidateIdentifier("conditional evidence problem ID", record.RelatedProblemID); err != nil {
			return err
		}
		if record.TechniqueID != "" {
			return errors.New("conditional taste evidence cannot include a technique ID")
		}
	case FeatureEvidenceTechniqueCompatibility:
		if err := state.ValidateIdentifier("technique evidence ID", record.TechniqueID); err != nil {
			return err
		}
		if record.RelatedProblemID != "" {
			return errors.New("technique compatibility evidence cannot include a related problem ID")
		}
	default:
		return fmt.Errorf("invalid feature evidence kind %q", record.Kind)
	}
	if !unitInterval(record.Value) {
		return errors.New("feature evidence value must be in [0,1]")
	}
	if !validSHA256(record.CatalogSnapshotSHA256) {
		return errors.New("feature evidence catalog snapshot SHA-256 must be canonical lowercase hex")
	}
	if len(record.Sources) == 0 {
		return errors.New("feature evidence must cite at least one M0 source")
	}
	seenSources := make(map[string]struct{}, len(record.Sources))
	for _, source := range record.Sources {
		if err := state.ValidateIdentifier("feature evidence source ID", source.SourceID); err != nil {
			return err
		}
		if !validSHA256(source.SourceSHA256) {
			return errors.New("feature evidence source SHA-256 must be canonical lowercase hex")
		}
		if _, exists := seenSources[source.SourceID]; exists {
			return fmt.Errorf("duplicate feature evidence source %q", source.SourceID)
		}
		seenSources[source.SourceID] = struct{}{}
	}
	if strings.TrimSpace(record.Method) == "" || strings.ContainsRune(record.Method, '\x00') {
		return errors.New("feature evidence method must be non-empty text without NUL bytes")
	}
	if strings.TrimSpace(record.Rationale) == "" || strings.ContainsRune(record.Rationale, '\x00') {
		return errors.New("feature evidence rationale must be non-empty text without NUL bytes")
	}
	return nil
}

func validSHA256(value string) bool {
	if len(value) != 64 || strings.ToLower(value) != value {
		return false
	}
	digest, err := hex.DecodeString(value)
	return err == nil && len(digest) == 32
}
