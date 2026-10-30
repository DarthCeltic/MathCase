// MathCase project contact: DarthCeltic
// Email: 178664201+DarthCeltic@users.noreply.github.com
// Repository: https://github.com/DarthCeltic/MathCase

package domain

import "time"

// CaseStatus is the coarse lifecycle status of a Case.
type CaseStatus string

const (
	CaseStatusActive    CaseStatus = "ACTIVE"
	CaseStatusCompleted CaseStatus = "COMPLETED"
	CaseStatusFailed    CaseStatus = "FAILED"
)

// Phase is the fine-grained investigation phase. Only the case coordinator
// should transition it through the persistence boundary.
type Phase string

const (
	PhaseDraft             Phase = "DRAFT"
	PhasePlanning          Phase = "PLANNING"
	PhaseWaitingForUser    Phase = "WAITING_FOR_USER"
	PhaseResearching       Phase = "RESEARCHING"
	PhaseAuditing          Phase = "AUDITING"
	PhaseAdversarialReview Phase = "ADVERSARIAL_REVIEW"
	PhaseFalsification     Phase = "FALSIFICATION"
	PhaseGapCheck          Phase = "GAP_CHECK"
	PhaseSynthesizing      Phase = "SYNTHESIZING"
	PhaseComplete          Phase = "COMPLETE"
	PhaseFailed            Phase = "FAILED"
)

// Scope captures user-supplied constraints for the mathematical investigation.
type Scope struct {
	Geography []string `json:"geography,omitempty"`
}

// Budget is the hard ceiling on how far a case run may proceed. The case
// must conclude honestly when any limit is reached.
type Budget struct {
	MaxActions           int     `json:"max_actions"`
	MaxModelCalls        int     `json:"max_model_calls"`
	MaxFlashCalls        int     `json:"max_flash_calls"` // calls to the expensive model (e.g. 3.6 Flash)
	MaxSearchCalls       int     `json:"max_search_calls"`
	MaxInputTokens       int64   `json:"max_input_tokens"`
	MaxOutputTokens      int64   `json:"max_output_tokens"`
	MaxEstimatedModelUSD float64 `json:"max_estimated_model_usd"`
	MaxElapsedMinutes    int     `json:"max_elapsed_minutes"`
	MaxTaskRetries       int     `json:"max_task_retries"`
}

// CostState is the running cost and usage tally checked before new work.
type CostState struct {
	ModelCalls   int     `json:"model_calls"`
	FlashCalls   int     `json:"flash_calls"`
	SearchCalls  int     `json:"search_calls"`
	InputTokens  int64   `json:"input_tokens"`
	OutputTokens int64   `json:"output_tokens"`
	EstimatedUSD float64 `json:"estimated_usd"`
}

// AnonymousSourceWeight expresses how heavily anonymous testimony should
// be weighted when the Chair re-evaluates evidence.
type AnonymousSourceWeight string

const (
	AnonymousSourceWeightLow    AnonymousSourceWeight = "LOW"
	AnonymousSourceWeightNormal AnonymousSourceWeight = "NORMAL"
	AnonymousSourceWeightHigh   AnonymousSourceWeight = "HIGH"
)

// UserPolicy captures source and scope preferences without allowing policy
// changes to rewrite or delete recorded evidence.
type UserPolicy struct {
	Geography             []string              `json:"geography,omitempty"`
	TimeRange             *TimeRange            `json:"time_range,omitempty"`
	PreferPrimarySources  bool                  `json:"prefer_primary_sources"`
	AnonymousSourceWeight AnonymousSourceWeight `json:"anonymous_source_weight,omitempty"`
	ExcludedDomains       []string              `json:"excluded_domains,omitempty"`
	// IncludedDomains is a hard allowlist applied to retrieved sources.
	// Empty means there is no domain restriction.
	IncludedDomains []string `json:"included_domains,omitempty"`
	UserNotes       []string `json:"user_notes,omitempty"`
}

// TimeRange bounds the investigation to a window of time.
type TimeRange struct {
	Start *time.Time `json:"start,omitempty"`
	End   *time.Time `json:"end,omitempty"`
}

// Position is the current overall read on the case, including its explicit
// confidence level and update time.
type Position struct {
	Summary           string    `json:"summary"`
	ConsensusStrength string    `json:"consensus_strength"` // e.g. LOW, MODERATE, HIGH
	UpdatedAt         time.Time `json:"updated_at"`
}

// Case is the top-level investigation aggregate. Lifecycle and position
// transitions must pass through persistence and increment Version.
type Case struct {
	ID              string     `json:"id"`
	Question        string     `json:"question"`
	Scope           Scope      `json:"scope"`
	Status          CaseStatus `json:"status"`
	Phase           Phase      `json:"phase"`
	Budget          Budget     `json:"budget"`
	Cost            CostState  `json:"cost"`
	UserPolicy      UserPolicy `json:"user_policy"`
	Watching        bool       `json:"watching"`
	CurrentPosition *Position  `json:"current_position,omitempty"`
	// OwnerUID is the stable identifier of the user who owns this case. The
	// field is provider-neutral; authentication policy belongs to the host.
	OwnerUID  string    `json:"owner_uid,omitempty"`
	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
	Version   int64     `json:"version"`
	// StopRequested is consumed by the active run loop at a safe boundary.
	// A stop request does not discard evidence already recorded.
	StopRequested bool `json:"stop_requested,omitempty"`
}
