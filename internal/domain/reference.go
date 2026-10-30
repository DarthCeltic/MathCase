// MathCase project contact: DarthCeltic
// Email: 178664201+DarthCeltic@users.noreply.github.com
// Repository: https://github.com/DarthCeltic/MathCase

package domain

import "time"

// SourceType classifies what kind of source a Source is.
type SourceType string

const (
	SourceTypePrimary   SourceType = "PRIMARY"
	SourceTypeSecondary SourceType = "SECONDARY"
	SourceTypeAnonymous SourceType = "ANONYMOUS"
	SourceTypeOther     SourceType = "OTHER"
)

// FetchStatus tracks whether a source's content was actually retrievable.
// A failed fetch must never be represented as negative evidence
// (docs/backend/00, §7 and docs/backend/01, §4 Researcher rules).
type FetchStatus string

const (
	FetchStatusPending     FetchStatus = "PENDING"
	FetchStatusOK          FetchStatus = "OK"
	FetchStatusUnavailable FetchStatus = "UNAVAILABLE"
	FetchStatusFailed      FetchStatus = "FAILED"
)

// AuditStatus tracks whether the Source Auditor has assessed a
// source's provenance/independence yet. Only audited evidence may be
// used in the final synthesized verdict (docs/backend/00, §8).
type AuditStatus string

const (
	AuditStatusUnaudited AuditStatus = "UNAUDITED"
	AuditStatusAudited   AuditStatus = "AUDITED"
	AuditStatusFlagged   AuditStatus = "FLAGGED"
)

// Source is a single retrieved document/article/etc. FamilyID links it
// to a SourceFamily once the auditor has traced its lineage.
type Source struct {
	ID           string            `json:"id"`
	CaseID       string            `json:"case_id"`
	URL          string            `json:"url"`
	CanonicalURL string            `json:"canonical_url,omitempty"`
	Title        string            `json:"title,omitempty"`
	Publisher    string            `json:"publisher,omitempty"`
	Author       string            `json:"author,omitempty"`
	PublishedAt  *time.Time        `json:"published_at,omitempty"`
	SourceType   SourceType        `json:"source_type"`
	Primary      bool              `json:"primary"`
	FamilyID     string            `json:"family_id,omitempty"`
	FetchStatus  FetchStatus       `json:"fetch_status"`
	AuditStatus  AuditStatus       `json:"audit_status"`
	Metadata     map[string]string `json:"metadata,omitempty"`
}

// SourceFamily groups sources with shared lineage so repeated reports are
// not counted as independent evidence.
type SourceFamily struct {
	ID             string   `json:"id"`
	CaseID         string   `json:"case_id"`
	Label          string   `json:"label"`
	OriginSourceID string   `json:"origin_source_id"`
	MemberIDs      []string `json:"member_ids"`
	Confidence     float64  `json:"confidence"` // confidence in the lineage collapse itself
	Rationale      string   `json:"rationale"`
}
