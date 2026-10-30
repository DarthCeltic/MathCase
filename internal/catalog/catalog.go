// Package catalog defines the source-versioned M0 problem substrate.
package catalog

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"net/url"
	"regexp"
	"sort"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

type ProblemStatus string

var leanDeclarationNamePattern = regexp.MustCompile(`^[A-Za-z_][A-Za-z0-9_']*(?:\.[A-Za-z_][A-Za-z0-9_']*)*$`)

const (
	StatusUnassessed  ProblemStatus = "UNASSESSED"
	StatusProven      ProblemStatus = "PROVEN"
	StatusConjectured ProblemStatus = "CONJECTURED_OPEN"
	StatusObserved    ProblemStatus = "EMPIRICALLY_OBSERVED"
	StatusFalsified   ProblemStatus = "FALSIFIED"
	StatusConditional ProblemStatus = "CONDITIONAL"
)

type RightsStatus string

const (
	RightsUnknown    RightsStatus = "UNKNOWN"
	RightsPending    RightsStatus = "PENDING_REVIEW"
	RightsCleared    RightsStatus = "CLEARED"
	RightsRestricted RightsStatus = "RESTRICTED"
)

// SourceUse names one explicit permission from the item-level rights review.
// A cleared source is not automatically eligible for every downstream use.
type SourceUse string

const (
	UseLocalStorage      SourceUse = "LOCAL_STORAGE"
	UseLocalComputation  SourceUse = "LOCAL_COMPUTATION"
	UseLocalProofAttempt SourceUse = "LOCAL_PROOF_ATTEMPT"
	UseReference         SourceUse = "REFERENCE"
	UseIndex             SourceUse = "INDEX"
	UseProviderInput     SourceUse = "PROVIDER_INPUT"
	UseTraining          SourceUse = "TRAINING"
	UseDerivative        SourceUse = "DERIVATIVE"
	UsePublicExport      SourceUse = "PUBLIC_EXPORT"
)

// SourceLane is the approved project lane for one exact source version.
type SourceLane string

const (
	LaneMathCaseAuthored       SourceLane = "MATHCASE_AUTHORED"
	LaneMathlibProofPairs      SourceLane = "MATHLIB_PROOF_PAIRS"
	LaneHistoricalBountyValues SourceLane = "HISTORICAL_BOUNTY_VALUES"
	LaneFormalConjectures      SourceLane = "FORMAL_CONJECTURES"
	LaneSunPrizeAwards         SourceLane = "SUN_PRIZE_AWARDS"
	LaneM7PedagogicalAnchor    SourceLane = "M7_PEDAGOGICAL_ANCHOR"
	LaneArxivExposition        SourceLane = "ARXIV_EXPOSITION"
	LaneOpenStaxInternal       SourceLane = "OPENSTAX_INTERNAL"
	LaneMITOCWInternal         SourceLane = "MIT_OCW_INTERNAL"
	LaneTaoReference           SourceLane = "TAO_REFERENCE"
	LaneOpenAIMathReference    SourceLane = "OPENAI_MATH_REFERENCE"
)

// ProblemKind separates formal theorem targets from exact local computation
// tasks that do not claim a Lean proof or advance verification gates.
type ProblemKind string

const (
	ProblemKindTheorem             ProblemKind = "THEOREM"
	ProblemKindLocalArithmeticTask ProblemKind = "LOCAL_ARITHMETIC_TASK"
)

// SourceVersion identifies exactly which upstream material informed a record.
// Unverified terms keep the source visible while preventing model use.
type SourceVersion struct {
	ID               string       `json:"id"`
	URL              string       `json:"url"`
	ItemLocator      string       `json:"item_locator,omitempty"`
	Lane             SourceLane   `json:"source_lane,omitempty"`
	Revision         string       `json:"revision"`
	RetrievedAt      time.Time    `json:"retrieved_at"`
	ContentSHA256    string       `json:"content_sha256"`
	AuthorOrHolder   string       `json:"author_or_rights_holder,omitempty"`
	License          string       `json:"license,omitempty"`
	LicenseTermsURL  string       `json:"license_terms_url,omitempty"`
	TermsNote        string       `json:"terms_note,omitempty"`
	Attribution      string       `json:"attribution,omitempty"`
	AllowedUses      []SourceUse  `json:"allowed_uses,omitempty"`
	RightsReviewerID string       `json:"rights_reviewer_id,omitempty"`
	RightsReviewedAt time.Time    `json:"rights_reviewed_at,omitempty"`
	RightsEvidenceID string       `json:"rights_evidence_id,omitempty"`
	Rights           RightsStatus `json:"rights_status"`
}

func (s SourceVersion) Validate() error {
	if err := state.ValidateIdentifier("catalog source ID", s.ID); err != nil {
		return err
	}
	if strings.TrimSpace(s.URL) == "" || strings.ContainsAny(s.URL, "\x00\r\n") {
		return errors.New("catalog: source URL or locator is required")
	}
	if strings.TrimSpace(s.Revision) == "" || strings.ContainsAny(s.Revision, "\x00\r\n") {
		return errors.New("catalog: immutable source revision is required")
	}
	if s.RetrievedAt.IsZero() {
		return errors.New("catalog: source retrieval time is required")
	}
	if !validDigest(s.ContentSHA256) {
		return errors.New("catalog: source content digest must be canonical SHA-256 hex")
	}
	switch s.Rights {
	case RightsUnknown, RightsPending, RightsCleared, RightsRestricted:
	default:
		return fmt.Errorf("catalog: invalid source rights status %q", s.Rights)
	}
	if err := validateSourceLane(s.Lane); err != nil {
		return err
	}
	if err := validateSourceUses(s.AllowedUses); err != nil {
		return err
	}
	if s.Rights != RightsCleared && len(s.AllowedUses) > 0 {
		return errors.New("catalog: allowed uses cannot be granted before rights review is cleared")
	}
	if s.Rights != RightsCleared {
		return nil
	}
	if s.Lane == "" {
		return errors.New("catalog: cleared source requires an approved source lane")
	}
	if strings.TrimSpace(s.ItemLocator) == "" {
		return errors.New("catalog: cleared source requires an exact item locator")
	}
	if s.Lane == LaneMathCaseAuthored {
		if !containsSourceUse(s.AllowedUses, UseLocalComputation) || len(s.AllowedUses) != 2 || !containsSourceUse(s.AllowedUses, UseLocalStorage) {
			return errors.New("catalog: MathCase-authored local exercises require exactly LOCAL_STORAGE and LOCAL_COMPUTATION")
		}
		if strings.TrimSpace(s.AuthorOrHolder) == "" || s.License != "OWNER_AUTHORIZATION_LOCAL_ONLY" || s.LicenseTermsURL != "" {
			return errors.New("catalog: MathCase-authored local exercises must use owner-only authorization without an external license URL")
		}
	} else if strings.TrimSpace(s.AuthorOrHolder) == "" || strings.TrimSpace(s.License) == "" || !validHTTPSURL(s.LicenseTermsURL) {
		return errors.New("catalog: cleared source requires rights holder, exact license, and HTTPS license terms URL")
	}
	if strings.TrimSpace(s.TermsNote) == "" || strings.TrimSpace(s.Attribution) == "" {
		return errors.New("catalog: cleared source requires reviewed terms and attribution")
	}
	if err := state.ValidateIdentifier("source rights reviewer ID", s.RightsReviewerID); err != nil {
		return err
	}
	if s.RightsReviewedAt.IsZero() {
		return errors.New("catalog: cleared source requires a rights review timestamp")
	}
	if err := state.ValidateIdentifier("source rights evidence ID", s.RightsEvidenceID); err != nil {
		return err
	}
	if len(s.AllowedUses) == 0 {
		return errors.New("catalog: cleared source requires at least one explicit allowed use")
	}
	if !containsSourceUse(s.AllowedUses, UseLocalStorage) {
		return errors.New("catalog: every cleared use requires explicit local storage permission")
	}
	if s.Lane == LaneOpenAIMathReference && s.License != "Apache-2.0" {
		return errors.New("catalog: OpenAI math reference sources require the reviewed Apache-2.0 license")
	}
	if err := validateTrainingLane(s); err != nil {
		return err
	}
	if err := validateLaneExport(s); err != nil {
		return err
	}
	return nil
}

// EligibleFor reports whether this exact source version passed review for use.
func (s SourceVersion) EligibleFor(use SourceUse) bool {
	if s.Rights != RightsCleared || s.Validate() != nil {
		return false
	}
	return containsSourceUse(s.AllowedUses, use)
}

// EligibleForModelUse requires an explicit training permission. Reference or
// indexing permission alone never authorizes the source as training data.
func (s SourceVersion) EligibleForModelUse() bool {
	return s.EligibleFor(UseTraining)
}

func validateSourceUses(uses []SourceUse) error {
	seen := make(map[SourceUse]struct{}, len(uses))
	for _, use := range uses {
		switch use {
		case UseLocalStorage, UseLocalComputation, UseLocalProofAttempt, UseReference, UseIndex, UseProviderInput, UseTraining, UseDerivative, UsePublicExport:
		default:
			return fmt.Errorf("catalog: unsupported source use %q", use)
		}
		if _, exists := seen[use]; exists {
			return fmt.Errorf("catalog: duplicate allowed source use %q", use)
		}
		seen[use] = struct{}{}
	}
	return nil
}

func validateSourceLane(lane SourceLane) error {
	switch lane {
	case "", LaneMathCaseAuthored, LaneMathlibProofPairs, LaneHistoricalBountyValues, LaneFormalConjectures,
		LaneSunPrizeAwards, LaneM7PedagogicalAnchor, LaneArxivExposition, LaneOpenStaxInternal, LaneMITOCWInternal,
		LaneTaoReference, LaneOpenAIMathReference:
		return nil
	default:
		return fmt.Errorf("catalog: unsupported source lane %q", lane)
	}
}

func validateTrainingLane(source SourceVersion) error {
	if !containsSourceUse(source.AllowedUses, UseTraining) {
		return nil
	}
	switch source.Lane {
	case LaneMathlibProofPairs:
		if source.License != "Apache-2.0" {
			return errors.New("catalog: Mathlib training requires the reviewed Apache-2.0 license")
		}
	case LaneHistoricalBountyValues:
		if source.License != "CC-BY-4.0" {
			return errors.New("catalog: bounty-label training requires the reviewed CC-BY-4.0 license")
		}
	default:
		return fmt.Errorf("catalog: training is outside the approved initial Taste lanes for source lane %q", source.Lane)
	}
	return nil
}

func validateLaneExport(source SourceVersion) error {
	if !containsSourceUse(source.AllowedUses, UsePublicExport) {
		return nil
	}
	switch source.Lane {
	case LaneOpenStaxInternal, LaneMITOCWInternal:
		return errors.New("catalog: internal-only source lane cannot be publicly exported")
	case LaneTaoReference:
		return errors.New("catalog: reference-only Tao excerpts cannot be publicly exported as corpus material")
	case LaneOpenAIMathReference:
		return errors.New("catalog: OpenAI math reference corpus public export is not approved")
	default:
		return nil
	}
}

func containsSourceUse(uses []SourceUse, requested SourceUse) bool {
	for _, use := range uses {
		if use == requested {
			return true
		}
	}
	return false
}

func validHTTPSURL(value string) bool {
	parsed, err := url.Parse(strings.TrimSpace(value))
	return err == nil && strings.EqualFold(parsed.Scheme, "https") && parsed.Hostname() != "" && parsed.User == nil
}

// Problem is one catalog entry with the original statement and optional formal
// counterpart kept side by side. Status is evidence-bearing metadata, not a
// conclusion inferred from a solver run.
type Problem struct {
	ID                   string                       `json:"id"`
	Kind                 ProblemKind                  `json:"kind,omitempty"`
	LocalComputationSpec *domain.LocalComputationSpec `json:"local_computation_spec,omitempty"`
	Title                string                       `json:"title"`
	InformalStatement    string                       `json:"informal_statement"`
	LeanStatement        string                       `json:"lean_statement,omitempty"`
	LeanDeclaration      *LeanDeclaration             `json:"lean_declaration,omitempty"`
	Status               ProblemStatus                `json:"status"`
	YearPosed            int                          `json:"year_posed,omitempty"`
	DomainTags           []string                     `json:"domain_tags,omitempty"`
	SourceIDs            []string                     `json:"source_ids"`
	HistoricalBounty     *HistoricalBounty            `json:"historical_bounty,omitempty"`
	StatementAudit       StatementAuditRecord         `json:"statement_audit"`
}

// LeanDeclaration binds a solver-facing declaration name to the exact source
// record in this M0 snapshot. A retrieval request cannot supply or rename it.
type LeanDeclaration struct {
	Name     string `json:"name"`
	SourceID string `json:"source_id"`
}

type HistoricalBounty struct {
	AmountUSD int64  `json:"amount_usd"`
	SourceID  string `json:"source_id"`
}

// StatementAuditRecord is human-audited V3 evidence. A text similarity score
// alone cannot certify mathematical equivalence.
type StatementAuditRecord struct {
	BackTranslation string    `json:"back_translation,omitempty"`
	ReviewerID      string    `json:"reviewer_id,omitempty"`
	ReviewedAt      time.Time `json:"reviewed_at,omitempty"`
	Passed          bool      `json:"passed"`
	EvidenceID      string    `json:"evidence_id,omitempty"`
}

func (p Problem) Validate() error {
	if err := state.ValidateIdentifier("catalog problem ID", p.ID); err != nil {
		return err
	}
	if strings.TrimSpace(p.Title) == "" || strings.TrimSpace(p.InformalStatement) == "" {
		return errors.New("catalog: problem title and informal statement are required")
	}
	if strings.ContainsAny(p.Title+p.InformalStatement+p.LeanStatement, "\x00") {
		return errors.New("catalog: problem text contains a NUL byte")
	}
	switch p.Status {
	case StatusUnassessed, StatusProven, StatusConjectured, StatusObserved, StatusFalsified, StatusConditional:
	default:
		return fmt.Errorf("catalog: invalid epistemic status %q", p.Status)
	}
	switch p.Kind {
	case "", ProblemKindTheorem:
		if p.LocalComputationSpec != nil {
			return errors.New("catalog: theorem problems cannot carry a local computation spec")
		}
	case ProblemKindLocalArithmeticTask:
		if p.Status != StatusUnassessed || strings.TrimSpace(p.LeanStatement) != "" || p.LeanDeclaration != nil || p.StatementAudit.Passed || p.LocalComputationSpec == nil {
			return errors.New("catalog: local arithmetic tasks must remain unassessed and cannot carry a Lean statement, declaration, or passed V3 audit")
		}
		if err := p.LocalComputationSpec.Validate(); err != nil {
			return err
		}
	default:
		return fmt.Errorf("catalog: unsupported problem kind %q", p.Kind)
	}
	if p.YearPosed < 0 || p.YearPosed > 9999 {
		return errors.New("catalog: year posed is outside the supported range")
	}
	if len(p.SourceIDs) == 0 {
		return errors.New("catalog: at least one source ID is required")
	}
	seen := make(map[string]struct{}, len(p.SourceIDs))
	for _, id := range p.SourceIDs {
		if err := state.ValidateIdentifier("catalog problem source ID", id); err != nil {
			return err
		}
		if _, exists := seen[id]; exists {
			return fmt.Errorf("catalog: duplicate problem source ID %q", id)
		}
		seen[id] = struct{}{}
	}
	if p.LeanDeclaration != nil {
		if strings.TrimSpace(p.LeanStatement) == "" {
			return errors.New("catalog: Lean declaration binding requires a Lean statement")
		}
		if !leanDeclarationNamePattern.MatchString(p.LeanDeclaration.Name) {
			return errors.New("catalog: Lean declaration name must be a bounded qualified declaration name")
		}
		if err := state.ValidateIdentifier("catalog Lean declaration source ID", p.LeanDeclaration.SourceID); err != nil {
			return err
		}
		if _, exists := seen[p.LeanDeclaration.SourceID]; !exists {
			return errors.New("catalog: Lean declaration source must be linked from the problem")
		}
	}
	for _, tag := range p.DomainTags {
		if strings.TrimSpace(tag) == "" || strings.ContainsAny(tag, "\x00\r\n") {
			return errors.New("catalog: domain tags must be non-empty single-line text")
		}
	}
	if p.HistoricalBounty != nil {
		if p.HistoricalBounty.AmountUSD < 0 {
			return errors.New("catalog: historical bounty cannot be negative")
		}
		if err := state.ValidateIdentifier("bounty source ID", p.HistoricalBounty.SourceID); err != nil {
			return err
		}
		if _, ok := seen[p.HistoricalBounty.SourceID]; !ok {
			return errors.New("catalog: bounty source must be linked from the problem")
		}
	}
	if p.StatementAudit.Passed {
		if strings.TrimSpace(p.LeanStatement) == "" || strings.TrimSpace(p.StatementAudit.BackTranslation) == "" || strings.TrimSpace(p.StatementAudit.ReviewerID) == "" || p.StatementAudit.ReviewedAt.IsZero() || strings.TrimSpace(p.StatementAudit.EvidenceID) == "" {
			return errors.New("catalog: passing V3 audit requires both statements, reviewer, time, and evidence")
		}
	}
	return nil
}

type Snapshot struct {
	SchemaVersion string          `json:"schema_version"`
	CapturedAt    time.Time       `json:"captured_at"`
	Sources       []SourceVersion `json:"sources"`
	Problems      []Problem       `json:"problems"`
	ContentSHA256 string          `json:"content_sha256"`
}

type snapshotPayload struct {
	SchemaVersion string          `json:"schema_version"`
	CapturedAt    time.Time       `json:"captured_at"`
	Sources       []SourceVersion `json:"sources"`
	Problems      []Problem       `json:"problems"`
}

// Validate recomputes the canonical catalog digest and all snapshot
// cross-references before the snapshot is used as a model input.
func (s Snapshot) Validate() error {
	if s.SchemaVersion != "mathcase-catalog-v1" {
		return fmt.Errorf("catalog: unsupported snapshot schema %q", s.SchemaVersion)
	}
	if !validDigest(s.ContentSHA256) {
		return errors.New("catalog: snapshot content digest must be canonical SHA-256 hex")
	}
	rebuilt, err := NewSnapshot(s.CapturedAt, s.Sources, s.Problems)
	if err != nil {
		return err
	}
	if rebuilt.ContentSHA256 != s.ContentSHA256 {
		return errors.New("catalog: snapshot content does not match its recorded digest")
	}
	return nil
}

// NewSnapshot builds a deterministic immutable snapshot without fetching any
// source. Caller-supplied retrieval records are the only inputs.
func NewSnapshot(capturedAt time.Time, sources []SourceVersion, problems []Problem) (Snapshot, error) {
	if capturedAt.IsZero() {
		return Snapshot{}, errors.New("catalog: snapshot capture time is required")
	}
	sources = append([]SourceVersion(nil), sources...)
	problems = append([]Problem(nil), problems...)
	for index := range sources {
		sources[index].AllowedUses = append([]SourceUse(nil), sources[index].AllowedUses...)
		sort.Slice(sources[index].AllowedUses, func(i, j int) bool {
			return sources[index].AllowedUses[i] < sources[index].AllowedUses[j]
		})
		sources[index].RetrievedAt = sources[index].RetrievedAt.UTC()
		if !sources[index].RightsReviewedAt.IsZero() {
			sources[index].RightsReviewedAt = sources[index].RightsReviewedAt.UTC()
		}
	}
	for index := range problems {
		problems[index].SourceIDs = append([]string(nil), problems[index].SourceIDs...)
		problems[index].DomainTags = append([]string(nil), problems[index].DomainTags...)
		if problems[index].LeanDeclaration != nil {
			declarationCopy := *problems[index].LeanDeclaration
			problems[index].LeanDeclaration = &declarationCopy
		}
		if problems[index].LocalComputationSpec != nil {
			specCopy := *problems[index].LocalComputationSpec
			specCopy.Inputs = make(map[string]string, len(problems[index].LocalComputationSpec.Inputs))
			for key, value := range problems[index].LocalComputationSpec.Inputs {
				specCopy.Inputs[key] = value
			}
			problems[index].LocalComputationSpec = &specCopy
		}
		if !problems[index].StatementAudit.ReviewedAt.IsZero() {
			problems[index].StatementAudit.ReviewedAt = problems[index].StatementAudit.ReviewedAt.UTC()
		}
		if problems[index].HistoricalBounty != nil {
			bountyCopy := *problems[index].HistoricalBounty
			problems[index].HistoricalBounty = &bountyCopy
		}
		sort.Strings(problems[index].SourceIDs)
		sort.Strings(problems[index].DomainTags)
	}
	sort.Slice(sources, func(i, j int) bool { return sources[i].ID < sources[j].ID })
	sort.Slice(problems, func(i, j int) bool { return problems[i].ID < problems[j].ID })
	sourceIDs := make(map[string]SourceVersion, len(sources))
	for _, source := range sources {
		if err := source.Validate(); err != nil {
			return Snapshot{}, fmt.Errorf("catalog: source %q: %w", source.ID, err)
		}
		if _, exists := sourceIDs[source.ID]; exists {
			return Snapshot{}, fmt.Errorf("catalog: duplicate source %q", source.ID)
		}
		sourceIDs[source.ID] = source
	}
	problemIDs := make(map[string]struct{}, len(problems))
	for _, problem := range problems {
		if err := problem.Validate(); err != nil {
			return Snapshot{}, fmt.Errorf("catalog: problem %q: %w", problem.ID, err)
		}
		if _, exists := problemIDs[problem.ID]; exists {
			return Snapshot{}, fmt.Errorf("catalog: duplicate problem %q", problem.ID)
		}
		problemIDs[problem.ID] = struct{}{}
		for _, id := range problem.SourceIDs {
			if _, exists := sourceIDs[id]; !exists {
				return Snapshot{}, fmt.Errorf("catalog: problem %q references missing source %q", problem.ID, id)
			}
		}
	}
	payload := snapshotPayload{SchemaVersion: "mathcase-catalog-v1", CapturedAt: capturedAt.UTC(), Sources: sources, Problems: problems}
	body, err := json.Marshal(payload)
	if err != nil {
		return Snapshot{}, fmt.Errorf("catalog: encode snapshot: %w", err)
	}
	digest := sha256.Sum256(body)
	return Snapshot{SchemaVersion: payload.SchemaVersion, CapturedAt: payload.CapturedAt, Sources: sources, Problems: problems, ContentSHA256: hex.EncodeToString(digest[:])}, nil
}

func validDigest(value string) bool {
	if len(value) != sha256.Size*2 || strings.ToLower(value) != value {
		return false
	}
	decoded, err := hex.DecodeString(value)
	return err == nil && len(decoded) == sha256.Size
}

// HistoricalBountyFromDomain adapts the optional source-backed bounty amount
// into the source-versioned M0 catalog shape.
func HistoricalBountyFromDomain(problem domain.MathProblem, sourceID string) (*HistoricalBounty, error) {
	if problem.HistoricalBounty == nil {
		return nil, nil
	}
	if err := state.ValidateIdentifier("bounty source ID", sourceID); err != nil {
		return nil, err
	}
	return &HistoricalBounty{AmountUSD: *problem.HistoricalBounty, SourceID: sourceID}, nil
}
