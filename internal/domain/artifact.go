// MathCase project contact: DarthCeltic
// Email: 178664201+DarthCeltic@users.noreply.github.com
// Repository: https://github.com/DarthCeltic/MathCase

package domain

import "time"

// Stance is how a piece of evidence relates to the claim it's attached to.
type Stance string

const (
	StanceSupports    Stance = "SUPPORTS"
	StanceContradicts Stance = "CONTRADICTS"
	StanceNeutral     Stance = "NEUTRAL"
)

// Evidence links a Source to a Claim with a model-assessed stance,
// strength, and independence. Independence is reduced when the
// underlying source lineage overlaps with other evidence for the same
// claim (see SourceFamily). Only audited evidence may back the final
// verdict (docs/backend/00, §8).
type Evidence struct {
	ID             string `json:"id"`
	CaseID         string `json:"case_id"`
	ClaimID        string `json:"claim_id"`
	SourceID       string `json:"source_id"`
	SourceFamilyID string `json:"source_family_id,omitempty"`

	Summary      string      `json:"summary"`
	Stance       Stance      `json:"stance"`
	Strength     float64     `json:"strength"`     // model assessment, 0..1
	Independence float64     `json:"independence"` // reduced when lineage overlaps
	AuditStatus  AuditStatus `json:"audit_status"`
	Quote        string      `json:"quote,omitempty"`   // short excerpt only when appropriate
	Locator      string      `json:"locator,omitempty"` // page/section/timestamp/etc

	AddedByRunID string    `json:"added_by_run_id"`
	CreatedAt    time.Time `json:"created_at"`
}
