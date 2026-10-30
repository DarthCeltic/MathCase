// Package taste builds transparent first-stage Taste labels from historical
// Erdős bounty values. It does not train or call a model.
package taste

import (
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"math"
	"sort"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/state"
)

type BountyLabel struct {
	ProblemID    string `json:"problem_id"`
	AmountUSD    int64  `json:"amount_usd"`
	SourceID     string `json:"source_id"`
	SourceSHA256 string `json:"source_sha256"`
}

func (l BountyLabel) Validate() error {
	if err := state.ValidateIdentifier("taste problem ID", l.ProblemID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("taste bounty source ID", l.SourceID); err != nil {
		return err
	}
	if l.AmountUSD < 0 {
		return errors.New("taste: bounty amount cannot be negative")
	}
	if !validDigest(l.SourceSHA256) {
		return errors.New("taste: source content digest must be canonical SHA-256")
	}
	return nil
}

// PreferencePair retains the cardinal reward difference alongside the
// derived preference. Ties intentionally produce no training pair.
type PreferencePair struct {
	PreferredProblemID string `json:"preferred_problem_id"`
	OtherProblemID     string `json:"other_problem_id"`
	RewardDifference   int64  `json:"reward_difference_usd"`
}

func HistoricalLabels(snapshot catalog.Snapshot) ([]BountyLabel, error) {
	if err := snapshot.Validate(); err != nil {
		return nil, fmt.Errorf("taste: invalid catalog snapshot: %w", err)
	}
	sources := make(map[string]catalog.SourceVersion, len(snapshot.Sources))
	for _, source := range snapshot.Sources {
		if err := source.Validate(); err != nil {
			return nil, fmt.Errorf("taste: invalid source %q: %w", source.ID, err)
		}
		sources[source.ID] = source
	}
	labels := make([]BountyLabel, 0)
	for _, problem := range snapshot.Problems {
		if err := problem.Validate(); err != nil {
			return nil, fmt.Errorf("taste: invalid problem %q: %w", problem.ID, err)
		}
		if problem.HistoricalBounty == nil {
			continue
		}
		source, ok := sources[problem.HistoricalBounty.SourceID]
		if !ok {
			return nil, fmt.Errorf("taste: problem %q bounty source is missing", problem.ID)
		}
		if !source.EligibleForModelUse() {
			continue
		}
		labels = append(labels, BountyLabel{
			ProblemID:    problem.ID,
			AmountUSD:    problem.HistoricalBounty.AmountUSD,
			SourceID:     source.ID,
			SourceSHA256: source.ContentSHA256,
		})
	}
	sort.Slice(labels, func(i, j int) bool { return labels[i].ProblemID < labels[j].ProblemID })
	return labels, nil
}

func PairwisePreferences(labels []BountyLabel) ([]PreferencePair, error) {
	ordered := append([]BountyLabel(nil), labels...)
	for _, label := range ordered {
		if err := label.Validate(); err != nil {
			return nil, err
		}
	}
	sort.Slice(ordered, func(i, j int) bool { return ordered[i].ProblemID < ordered[j].ProblemID })
	for i := 1; i < len(ordered); i++ {
		if ordered[i-1].ProblemID == ordered[i].ProblemID {
			return nil, fmt.Errorf("taste: duplicate problem label %q", ordered[i].ProblemID)
		}
	}
	pairs := make([]PreferencePair, 0, len(ordered)*(len(ordered)-1)/2)
	for i := 0; i < len(ordered); i++ {
		for j := i + 1; j < len(ordered); j++ {
			if ordered[i].AmountUSD == ordered[j].AmountUSD {
				continue
			}
			preferred, other := ordered[i], ordered[j]
			if preferred.AmountUSD < other.AmountUSD {
				preferred, other = other, preferred
			}
			pairs = append(pairs, PreferencePair{
				PreferredProblemID: preferred.ProblemID,
				OtherProblemID:     other.ProblemID,
				RewardDifference:   preferred.AmountUSD - other.AmountUSD,
			})
		}
	}
	return pairs, nil
}

// BaselineScores maps cardinal bounty values monotonically to [0,1] using the
// maximum observed reward as the normalization anchor. It is a baseline, not a
// learned Taste model.
func BaselineScores(labels []BountyLabel) (map[string]float64, error) {
	if len(labels) == 0 {
		return nil, errors.New("taste: no cleared historical bounty labels")
	}
	maxReward := int64(0)
	for _, label := range labels {
		if err := label.Validate(); err != nil {
			return nil, err
		}
		if label.AmountUSD > maxReward {
			maxReward = label.AmountUSD
		}
	}
	if maxReward == 0 {
		return nil, errors.New("taste: historical bounty labels contain no positive reward")
	}
	denominator := math.Log1p(float64(maxReward))
	scores := make(map[string]float64, len(labels))
	for _, label := range labels {
		if _, exists := scores[label.ProblemID]; exists {
			return nil, fmt.Errorf("taste: duplicate problem label %q", label.ProblemID)
		}
		scores[label.ProblemID] = math.Log1p(float64(label.AmountUSD)) / denominator
	}
	return scores, nil
}

func validDigest(value string) bool {
	if len(value) != sha256.Size*2 {
		return false
	}
	decoded, err := hex.DecodeString(value)
	return err == nil && len(decoded) == sha256.Size && hex.EncodeToString(decoded) == value
}
