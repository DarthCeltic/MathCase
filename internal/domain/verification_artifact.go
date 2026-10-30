package domain

import (
	"errors"
	"fmt"

	"github.com/DarthCeltic/MathCase/internal/state"
)

// EvidenceArtifactRef binds an evidence identity in a verification record to
// the exact local bytes reviewed for that assessment. The bytes remain in the
// private evidence store and are rechecked by dossier-audit.
type EvidenceArtifactRef struct {
	EvidenceID     string `json:"evidence_id"`
	ArtifactSHA256 string `json:"artifact_sha256"`
}

func (ref EvidenceArtifactRef) Validate() error {
	if err := state.ValidateIdentifier("verification evidence artifact ID", ref.EvidenceID); err != nil {
		return err
	}
	if !validSHA256(ref.ArtifactSHA256) {
		return errors.New("verification evidence artifact SHA-256 must be canonical lowercase hex")
	}
	return nil
}

func validateEvidenceArtifactRefs(evidenceIDs []string, artifacts []EvidenceArtifactRef) error {
	if len(artifacts) == 0 {
		return nil
	}
	if len(artifacts) != len(evidenceIDs) {
		return errors.New("evidence artifact references must cover every linked evidence ID exactly once")
	}
	linked := make(map[string]struct{}, len(evidenceIDs))
	for _, evidenceID := range evidenceIDs {
		if _, exists := linked[evidenceID]; exists {
			return fmt.Errorf("linked evidence ID %q is duplicated", evidenceID)
		}
		linked[evidenceID] = struct{}{}
	}
	seen := make(map[string]struct{}, len(artifacts))
	for _, artifact := range artifacts {
		if err := artifact.Validate(); err != nil {
			return err
		}
		if _, exists := linked[artifact.EvidenceID]; !exists {
			return fmt.Errorf("artifact %q is not linked by the verification record", artifact.EvidenceID)
		}
		if _, exists := seen[artifact.EvidenceID]; exists {
			return fmt.Errorf("evidence artifact %q is duplicated", artifact.EvidenceID)
		}
		seen[artifact.EvidenceID] = struct{}{}
	}
	return nil
}
