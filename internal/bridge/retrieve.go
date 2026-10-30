// Package bridge implements MathCase's deterministic, tag-based M5 retrieval
// baseline. It does not synthesize or assert mathematical equivalence.
package bridge

import (
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"math"
	"regexp"
	"sort"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/gateaudit"
	"github.com/DarthCeltic/MathCase/internal/state"
)

type Skeleton struct {
	TheoremID            string   `json:"theorem_id"`
	LeanTheoremName      string   `json:"lean_theorem_name,omitempty"`
	Domain               string   `json:"domain"`
	Tags                 []string `json:"tags"`
	ProofRef             string   `json:"proof_ref"`
	ProofSHA256          string   `json:"proof_sha256"`
	SourceIDs            []string `json:"source_ids"`
	SourceSnapshotSHA256 string   `json:"source_snapshot_sha256"`
}

// ProofReader resolves a local, source-cleared proof reference to its exact
// bytes. Retrieve hashes those bytes before returning a candidate.
type ProofReader interface {
	ReadProof(reference string) ([]byte, error)
}

// SourceReader resolves one exact M0 source item. Solver-facing declaration
// hints require both the source bytes and the source-record digest to reopen.
type SourceReader interface {
	ReadSource(reference string) ([]byte, error)
}

type Query struct {
	ProblemID            string   `json:"problem_id"`
	HomeDomain           string   `json:"home_domain"`
	Tags                 []string `json:"tags"`
	SourceSnapshotSHA256 string   `json:"source_snapshot_sha256"`
	Limit                int      `json:"limit"`
}

type Match struct {
	TheoremID       string   `json:"theorem_id"`
	LeanTheoremName string   `json:"lean_theorem_name,omitempty"`
	Domain          string   `json:"domain"`
	Tags            []string `json:"tags"`
	ProofRef        string   `json:"proof_ref"`
	ProofSHA256     string   `json:"proof_sha256"`
	SourceIDs       []string `json:"source_ids"`
	Snapshot        string   `json:"source_snapshot_sha256"`
	Score           float64  `json:"score"`
	SharedTags      []string `json:"shared_tags"`
	Rationale       string   `json:"rationale"`
}

var leanTheoremNamePattern = regexp.MustCompile(`^[A-Za-z_][A-Za-z0-9_']*(?:\.[A-Za-z_][A-Za-z0-9_']*)*$`)

func Retrieve(query Query, corpus []Skeleton, snapshot catalog.Snapshot, proofs ProofReader) ([]Match, error) {
	return RetrieveWithSources(query, corpus, snapshot, proofs, nil)
}

// RetrieveWithSources performs the same deterministic ranking as Retrieve,
// while also reopening the source bytes for every solver-facing Lean name.
// Without this check, a syntactically valid name could be substituted into
// M0 metadata without being present in its pinned source item.
func RetrieveWithSources(query Query, corpus []Skeleton, snapshot catalog.Snapshot, proofs ProofReader, sourceReader SourceReader) ([]Match, error) {
	if err := validateQuery(query); err != nil {
		return nil, err
	}
	if err := snapshot.Validate(); err != nil {
		return nil, fmt.Errorf("bridge: invalid M0 catalog snapshot: %w", err)
	}
	if query.SourceSnapshotSHA256 != snapshot.ContentSHA256 {
		return nil, errors.New("bridge: query is not bound to the supplied M0 catalog snapshot")
	}
	if len(corpus) > 0 && proofs == nil {
		return nil, errors.New("bridge: proof reader is required for a non-empty retrieval corpus")
	}
	sources := make(map[string]catalog.SourceVersion, len(snapshot.Sources))
	for _, source := range snapshot.Sources {
		sources[source.ID] = source
	}
	problems := make(map[string]catalog.Problem, len(snapshot.Problems))
	for _, problem := range snapshot.Problems {
		problems[problem.ID] = problem
	}
	queryProblem, exists := problems[query.ProblemID]
	if !exists {
		return nil, fmt.Errorf("bridge: query problem %q is absent from the M0 snapshot", query.ProblemID)
	}
	if !tagsSubset(query.Tags, queryProblem.DomainTags) || !containsTag(queryProblem.DomainTags, query.HomeDomain) {
		return nil, errors.New("bridge: query tags and home domain must come from the M0 problem record")
	}
	if err := requireIndexRights(queryProblem, sources); err != nil {
		return nil, fmt.Errorf("bridge: query problem %q: %w", query.ProblemID, err)
	}
	queryTags := toSet(query.Tags)
	matches := make([]Match, 0)
	seen := make(map[string]struct{}, len(corpus))
	for _, candidate := range corpus {
		if err := validateSkeleton(candidate); err != nil {
			return nil, fmt.Errorf("bridge: invalid skeleton %q: %w", candidate.TheoremID, err)
		}
		if candidate.TheoremID == query.ProblemID {
			return nil, fmt.Errorf("bridge: query target %q cannot appear as a retrieval hint", query.ProblemID)
		}
		if candidate.SourceSnapshotSHA256 != query.SourceSnapshotSHA256 {
			return nil, fmt.Errorf("bridge: theorem %q belongs to a different source snapshot", candidate.TheoremID)
		}
		problem, exists := problems[candidate.TheoremID]
		if !exists {
			return nil, fmt.Errorf("bridge: theorem %q is absent from the M0 snapshot", candidate.TheoremID)
		}
		if problem.Status != catalog.StatusProven {
			return nil, fmt.Errorf("bridge: theorem %q is not marked PROVEN in the M0 snapshot", candidate.TheoremID)
		}
		if candidate.LeanTheoremName != "" && (problem.LeanDeclaration == nil || candidate.LeanTheoremName != problem.LeanDeclaration.Name) {
			return nil, fmt.Errorf("bridge: theorem %q declaration name is not bound by its M0 source record", candidate.TheoremID)
		}
		if candidate.LeanTheoremName != "" {
			if sourceReader == nil {
				return nil, fmt.Errorf("bridge: theorem %q solver hint requires a bounded M0 source reader", candidate.TheoremID)
			}
			var declarationSource *catalog.SourceVersion
			for index := range snapshot.Sources {
				if snapshot.Sources[index].ID == problem.LeanDeclaration.SourceID {
					declarationSource = &snapshot.Sources[index]
					break
				}
			}
			if declarationSource == nil || !containsSourceID(problem.SourceIDs, declarationSource.ID) {
				return nil, fmt.Errorf("bridge: theorem %q declaration source is not linked by its M0 problem", candidate.TheoremID)
			}
			sourceBytes, err := sourceReader.ReadSource(declarationSource.ItemLocator)
			if err != nil {
				return nil, fmt.Errorf("bridge: theorem %q: read exact M0 declaration source: %w", candidate.TheoremID, err)
			}
			sourceDigest := sha256.Sum256(sourceBytes)
			if hex.EncodeToString(sourceDigest[:]) != declarationSource.ContentSHA256 {
				return nil, fmt.Errorf("bridge: theorem %q M0 declaration source bytes do not match the pinned SHA-256", candidate.TheoremID)
			}
			if !gateaudit.LeanDeclarationMatchesExactSource(sourceBytes, candidate.LeanTheoremName, problem.LeanStatement) {
				return nil, fmt.Errorf("bridge: theorem %q declaration name and Lean statement do not match its pinned source item", candidate.TheoremID)
			}
		}
		if !sameIDs(candidate.SourceIDs, problem.SourceIDs) || !tagsSubset(candidate.Tags, problem.DomainTags) || !containsTag(problem.DomainTags, candidate.Domain) {
			return nil, fmt.Errorf("bridge: theorem %q provenance or tags do not match its M0 problem record", candidate.TheoremID)
		}
		if err := requireIndexRights(problem, sources); err != nil {
			return nil, fmt.Errorf("bridge: theorem %q: %w", candidate.TheoremID, err)
		}
		proofBytes, err := proofs.ReadProof(candidate.ProofRef)
		if err != nil {
			return nil, fmt.Errorf("bridge: theorem %q: read proof reference: %w", candidate.TheoremID, err)
		}
		if len(proofBytes) == 0 || len(proofBytes) > MaxProofBytes {
			return nil, fmt.Errorf("bridge: theorem %q proof must contain 1..%d bytes", candidate.TheoremID, MaxProofBytes)
		}
		proofDigest := sha256.Sum256(proofBytes)
		if hex.EncodeToString(proofDigest[:]) != candidate.ProofSHA256 {
			return nil, fmt.Errorf("bridge: theorem %q proof content digest does not match recorded SHA-256", candidate.TheoremID)
		}
		if _, exists := seen[candidate.TheoremID]; exists {
			return nil, fmt.Errorf("bridge: duplicate theorem %q", candidate.TheoremID)
		}
		seen[candidate.TheoremID] = struct{}{}
		if strings.EqualFold(strings.TrimSpace(candidate.Domain), strings.TrimSpace(query.HomeDomain)) {
			continue
		}
		candidateTags := toSet(candidate.Tags)
		shared := make([]string, 0)
		for tag := range queryTags {
			if _, ok := candidateTags[tag]; ok {
				shared = append(shared, tag)
			}
		}
		if len(shared) == 0 {
			continue
		}
		sort.Strings(shared)
		union := len(queryTags) + len(candidateTags) - len(shared)
		score := float64(len(shared)) / float64(union)
		if err := validateScore(score); err != nil {
			return nil, err
		}
		sourceIDs := append([]string(nil), candidate.SourceIDs...)
		sort.Strings(sourceIDs)
		matches = append(matches, Match{
			TheoremID:       candidate.TheoremID,
			LeanTheoremName: candidate.LeanTheoremName,
			Domain:          candidate.Domain,
			Tags:            append([]string(nil), candidate.Tags...),
			ProofRef:        candidate.ProofRef,
			ProofSHA256:     candidate.ProofSHA256,
			SourceIDs:       sourceIDs,
			Snapshot:        snapshot.ContentSHA256,
			Score:           score,
			SharedTags:      shared,
			Rationale:       fmt.Sprintf("tag Jaccard %.3f; shared skeleton tags: %s", score, strings.Join(shared, ", ")),
		})
	}
	sort.Slice(matches, func(i, j int) bool {
		if matches[i].Score == matches[j].Score {
			if matches[i].Domain == matches[j].Domain {
				return matches[i].TheoremID < matches[j].TheoremID
			}
			return matches[i].Domain < matches[j].Domain
		}
		return matches[i].Score > matches[j].Score
	})
	if len(matches) > query.Limit {
		matches = matches[:query.Limit]
	}
	return matches, nil
}

// MaxProofBytes bounds one raw proof file loaded during local retrieval.
const MaxProofBytes = 8 << 20

func validateQuery(query Query) error {
	if err := state.ValidateIdentifier("bridge problem ID", query.ProblemID); err != nil {
		return err
	}
	if strings.TrimSpace(query.HomeDomain) == "" || !validSHA256(query.SourceSnapshotSHA256) {
		return errors.New("bridge: home domain and canonical source snapshot SHA-256 are required")
	}
	if query.Limit <= 0 {
		return errors.New("bridge: result limit must be positive")
	}
	if err := validateTags(query.Tags); err != nil {
		return err
	}
	return nil
}

func validateSkeleton(skeleton Skeleton) error {
	if err := state.ValidateIdentifier("bridge theorem ID", skeleton.TheoremID); err != nil {
		return err
	}
	if strings.TrimSpace(skeleton.Domain) == "" || strings.TrimSpace(skeleton.ProofRef) == "" || !validSHA256(skeleton.ProofSHA256) || !validSHA256(skeleton.SourceSnapshotSHA256) {
		return errors.New("bridge: theorem domain, proof reference, canonical proof SHA-256, and source snapshot SHA-256 are required")
	}
	if err := validateTags(skeleton.Tags); err != nil {
		return err
	}
	if len(skeleton.SourceIDs) == 0 {
		return errors.New("bridge: theorem source IDs are required")
	}
	if skeleton.LeanTheoremName != "" && !leanTheoremNamePattern.MatchString(skeleton.LeanTheoremName) {
		return errors.New("bridge: Lean theorem name must be a bounded qualified declaration name")
	}
	seen := make(map[string]struct{}, len(skeleton.SourceIDs))
	for _, id := range skeleton.SourceIDs {
		if err := state.ValidateIdentifier("bridge theorem source ID", id); err != nil {
			return err
		}
		if _, exists := seen[id]; exists {
			return fmt.Errorf("bridge: duplicate theorem source ID %q", id)
		}
		seen[id] = struct{}{}
	}
	return nil
}

func requireIndexRights(problem catalog.Problem, sources map[string]catalog.SourceVersion) error {
	for _, sourceID := range problem.SourceIDs {
		source, exists := sources[sourceID]
		if !exists {
			return fmt.Errorf("catalog source %q is missing", sourceID)
		}
		if !source.EligibleFor(catalog.UseIndex) {
			return fmt.Errorf("catalog source %q is not cleared for INDEX use", sourceID)
		}
	}
	return nil
}

func tagsSubset(tags, allowed []string) bool {
	allowedSet := toSet(allowed)
	for tag := range toSet(tags) {
		if _, exists := allowedSet[tag]; !exists {
			return false
		}
	}
	return len(tags) > 0
}

func containsTag(tags []string, target string) bool {
	target = strings.ToLower(strings.TrimSpace(target))
	for _, tag := range tags {
		if strings.ToLower(strings.TrimSpace(tag)) == target {
			return true
		}
	}
	return false
}

func containsSourceID(sourceIDs []string, target string) bool {
	for _, sourceID := range sourceIDs {
		if sourceID == target {
			return true
		}
	}
	return false
}

func sameIDs(actual, expected []string) bool {
	if len(actual) != len(expected) {
		return false
	}
	set := make(map[string]struct{}, len(actual))
	for _, id := range actual {
		set[id] = struct{}{}
	}
	for _, id := range expected {
		if _, exists := set[id]; !exists {
			return false
		}
	}
	return true
}

func validSHA256(value string) bool {
	if len(value) != 64 || strings.ToLower(value) != value {
		return false
	}
	decoded, err := hex.DecodeString(value)
	return err == nil && len(decoded) == 32
}

func validateTags(tags []string) error {
	if len(tags) == 0 {
		return errors.New("bridge: at least one skeleton tag is required")
	}
	seen := make(map[string]struct{}, len(tags))
	for _, tag := range tags {
		tag = strings.TrimSpace(tag)
		if tag == "" || strings.ContainsAny(tag, "\x00\r\n") {
			return errors.New("bridge: skeleton tags must be non-empty single-line text")
		}
		key := strings.ToLower(tag)
		if _, exists := seen[key]; exists {
			return fmt.Errorf("bridge: duplicate skeleton tag %q", tag)
		}
		seen[key] = struct{}{}
	}
	return nil
}

func toSet(tags []string) map[string]struct{} {
	set := make(map[string]struct{}, len(tags))
	for _, tag := range tags {
		set[strings.ToLower(strings.TrimSpace(tag))] = struct{}{}
	}
	return set
}

func validateScore(score float64) error {
	if math.IsNaN(score) || math.IsInf(score, 0) || score < 0 || score > 1 {
		return errors.New("bridge: match score is outside [0,1]")
	}
	return nil
}
