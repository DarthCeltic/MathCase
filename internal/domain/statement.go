// MathCase project contact: DarthCeltic
// Email: 178664201+DarthCeltic@users.noreply.github.com
// Repository: https://github.com/DarthCeltic/MathCase

package domain

import "time"

// ClaimStatus is the resolution state of an atomic claim.
type ClaimStatus string

const (
	ClaimStatusOpen         ClaimStatus = "OPEN"
	ClaimStatusSupported    ClaimStatus = "SUPPORTED"
	ClaimStatusContradicted ClaimStatus = "CONTRADICTED"
	ClaimStatusUnresolved   ClaimStatus = "UNRESOLVED"
)

// Priority is a coarse importance ranking for a claim.
type Priority string

const (
	PriorityP0 Priority = "P0"
	PriorityP1 Priority = "P1"
	PriorityP2 Priority = "P2"
)

// Assessment is the Chair's current confidence read on a claim, with a
// visible, clickable revision history maintained via ConfidenceRevision.
type Assessment struct {
	Confidence float64 `json:"confidence"` // 0.0-1.0
	Rationale  string  `json:"rationale,omitempty"`
}

// Claim is a single atomic, independently testable hypothesis from the case
// question. A case can retain multiple claims instead of flattening its
// conclusion to one Boolean.
type Claim struct {
	ID          string      `json:"id"`
	CaseID      string      `json:"case_id"`
	ParentID    string      `json:"parent_id,omitempty"`
	Text        string      `json:"text"`
	Importance  Priority    `json:"importance"`
	Status      ClaimStatus `json:"status"`
	Assessment  Assessment  `json:"assessment"`
	EvidenceIDs []string    `json:"evidence_ids,omitempty"`
	CreatedAt   time.Time   `json:"created_at"`
	UpdatedAt   time.Time   `json:"updated_at"`
}
