package domain

import (
	"errors"
	"fmt"

	"github.com/DarthCeltic/MathCase/internal/state"
)

// FormalizerCandidateArtifactRef binds a versioned Lean statement candidate
// to its complete immutable formalizer artifact. It is a candidate reference,
// not a V3 judgment or proof result; M8 readers must reopen the artifact.
type FormalizerCandidateArtifactRef struct {
	ArtifactSHA256          string `json:"artifact_sha256"`
	CandidateID             string `json:"candidate_id"`
	CandidateRevisionSHA256 string `json:"candidate_revision_sha256"`
	GenerationReceiptID     string `json:"generation_receipt_id"`
}

func (ref FormalizerCandidateArtifactRef) Validate() error {
	if !validSHA256(ref.ArtifactSHA256) {
		return errors.New("formalizer candidate artifact digest must be canonical lowercase SHA-256 hex")
	}
	if err := state.ValidateIdentifier("formalizer candidate ID", ref.CandidateID); err != nil {
		return err
	}
	if !validSHA256(ref.CandidateRevisionSHA256) {
		return errors.New("formalizer candidate revision digest must be canonical lowercase SHA-256 hex")
	}
	if err := state.ValidateIdentifier("formalizer generation receipt ID", ref.GenerationReceiptID); err != nil {
		return err
	}
	return nil
}

func validateFormalizerCandidateArtifactRefs(refs []FormalizerCandidateArtifactRef, catalogSnapshotSHA256 string) error {
	if len(refs) == 0 {
		return nil
	}
	if !validSHA256(catalogSnapshotSHA256) {
		return errors.New("formalizer candidate references require the exact M0 catalog snapshot digest")
	}
	seen := make(map[string]struct{}, len(refs))
	for _, ref := range refs {
		if err := ref.Validate(); err != nil {
			return fmt.Errorf("invalid formalizer candidate artifact reference: %w", err)
		}
		if _, exists := seen[ref.ArtifactSHA256]; exists {
			return fmt.Errorf("formalizer candidate artifact %q is duplicated", ref.ArtifactSHA256)
		}
		seen[ref.ArtifactSHA256] = struct{}{}
	}
	return nil
}
