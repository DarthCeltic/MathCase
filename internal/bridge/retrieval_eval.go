package bridge

import (
	"errors"
	"fmt"
	"math"
	"sort"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	RetrievalJudgmentsSchemaVersion = "mathcase-retrieval-judgments-v1"
	RetrievalEvidenceSchemaVersion  = "mathcase-retrieval-judgment-evidence-v1"
	RetrievalMetricsVersion         = "mathcase-retrieval-metrics-v1"
	MaxRelevance                    = 3
)

// RelevanceJudgment is one human-supplied label for a candidate in the full
// request pool. The referenced evidence is required before metrics are emitted.
type RelevanceJudgment struct {
	TheoremID      string `json:"theorem_id"`
	Relevance      int    `json:"relevance"`
	EvidenceID     string `json:"evidence_id"`
	EvidenceSHA256 string `json:"evidence_sha256"`
}

// RetrievalJudgments binds relevance labels to one exact query, candidate
// pool, ranked output, and M0 snapshot. It contains no generated labels.
type RetrievalJudgments struct {
	SchemaVersion          string              `json:"schema_version"`
	QueryProblemID         string              `json:"query_problem_id"`
	RetrievalRequestSHA256 string              `json:"retrieval_request_sha256"`
	RetrievalOutputSHA256  string              `json:"retrieval_output_sha256"`
	CatalogSnapshotSHA256  string              `json:"catalog_snapshot_sha256"`
	TopK                   int                 `json:"top_k"`
	Judgments              []RelevanceJudgment `json:"judgments"`
}

// RetrievalJudgmentEvidence is the auditable rationale for one human label.
// Source IDs bind the review to the query and candidate records in M0.
type RetrievalJudgmentEvidence struct {
	SchemaVersion          string    `json:"schema_version"`
	EvidenceID             string    `json:"evidence_id"`
	QueryProblemID         string    `json:"query_problem_id"`
	CandidateTheoremID     string    `json:"candidate_theorem_id"`
	CatalogSnapshotSHA256  string    `json:"catalog_snapshot_sha256"`
	RetrievalRequestSHA256 string    `json:"retrieval_request_sha256"`
	RetrievalOutputSHA256  string    `json:"retrieval_output_sha256"`
	ReviewerID             string    `json:"reviewer_id"`
	ReviewedAt             time.Time `json:"reviewed_at"`
	Relevance              int       `json:"relevance"`
	Rationale              string    `json:"rationale"`
	QuerySourceIDs         []string  `json:"query_source_ids"`
	CandidateSourceIDs     []string  `json:"candidate_source_ids"`
}

// LoadedRetrievalJudgmentEvidence pairs a decoded review record with the
// digest of the exact artifact bytes loaded by the caller.
type LoadedRetrievalJudgmentEvidence struct {
	Record         RetrievalJudgmentEvidence
	ArtifactSHA256 string
}

type RetrievalMetrics struct {
	PrecisionAtK float64 `json:"precision_at_k"`
	RecallAtK    float64 `json:"recall_at_k"`
	MRR          float64 `json:"mrr"`
	NDCGAtK      float64 `json:"ndcg_at_k"`
}

type RetrievalEvaluation struct {
	MetricVersion          string           `json:"metric_version"`
	QueryProblemID         string           `json:"query_problem_id"`
	CatalogSnapshotSHA256  string           `json:"catalog_snapshot_sha256"`
	RetrievalRequestSHA256 string           `json:"retrieval_request_sha256"`
	RetrievalOutputSHA256  string           `json:"retrieval_output_sha256"`
	JudgmentManifestSHA256 string           `json:"judgment_manifest_sha256"`
	CandidatePoolCount     int              `json:"candidate_pool_count"`
	ReturnedCount          int              `json:"returned_count"`
	RelevantCandidateCount int              `json:"relevant_candidate_count"`
	RelevanceThreshold     int              `json:"relevance_threshold"`
	TopK                   int              `json:"top_k"`
	JudgmentEvidenceCount  int              `json:"judgment_evidence_count"`
	ReviewerIDs            []string         `json:"reviewer_ids"`
	Metrics                RetrievalMetrics `json:"metrics"`
}

// EvaluateRetrieval computes ranking metrics only when every request candidate
// has a source-bound, hash-verified human judgment. Callers must independently
// recompute retrieval from the request and exact proof bytes before invoking it.
func EvaluateRetrieval(
	query Query,
	corpus []Skeleton,
	matches []Match,
	snapshot catalog.Snapshot,
	judgments RetrievalJudgments,
	retrievalRequestSHA256 string,
	retrievalOutputSHA256 string,
	judgmentManifestSHA256 string,
	evidence map[string]LoadedRetrievalJudgmentEvidence,
) (RetrievalEvaluation, error) {
	if err := snapshot.Validate(); err != nil {
		return RetrievalEvaluation{}, fmt.Errorf("bridge: invalid M0 snapshot for evaluation: %w", err)
	}
	if err := validateQuery(query); err != nil {
		return RetrievalEvaluation{}, err
	}
	if query.SourceSnapshotSHA256 != snapshot.ContentSHA256 {
		return RetrievalEvaluation{}, errors.New("bridge: evaluation query is not bound to the M0 snapshot")
	}
	if judgments.SchemaVersion != RetrievalJudgmentsSchemaVersion {
		return RetrievalEvaluation{}, fmt.Errorf("bridge: unsupported retrieval judgments schema %q", judgments.SchemaVersion)
	}
	if err := state.ValidateIdentifier("retrieval evaluation query problem ID", judgments.QueryProblemID); err != nil {
		return RetrievalEvaluation{}, err
	}
	if judgments.QueryProblemID != query.ProblemID {
		return RetrievalEvaluation{}, errors.New("bridge: judgments belong to a different query problem")
	}
	if !validSHA256(retrievalRequestSHA256) || !validSHA256(retrievalOutputSHA256) || !validSHA256(judgmentManifestSHA256) {
		return RetrievalEvaluation{}, errors.New("bridge: retrieval request, output, and judgment manifest digests must be canonical SHA-256 values")
	}
	if judgments.RetrievalRequestSHA256 != retrievalRequestSHA256 || judgments.RetrievalOutputSHA256 != retrievalOutputSHA256 || judgments.CatalogSnapshotSHA256 != snapshot.ContentSHA256 {
		return RetrievalEvaluation{}, errors.New("bridge: judgment manifest is not bound to the exact request, output, and M0 snapshot")
	}
	if judgments.TopK <= 0 || judgments.TopK > query.Limit || judgments.TopK > len(corpus) {
		return RetrievalEvaluation{}, errors.New("bridge: top_k must be positive and no larger than the query limit or candidate pool")
	}
	queryProblem, exists := findProblem(snapshot, query.ProblemID)
	if !exists {
		return RetrievalEvaluation{}, fmt.Errorf("bridge: query problem %q is absent from the M0 snapshot", query.ProblemID)
	}
	candidateByID := make(map[string]Skeleton, len(corpus))
	for _, candidate := range corpus {
		if err := validateSkeleton(candidate); err != nil {
			return RetrievalEvaluation{}, fmt.Errorf("bridge: invalid evaluation candidate: %w", err)
		}
		if _, duplicate := candidateByID[candidate.TheoremID]; duplicate {
			return RetrievalEvaluation{}, fmt.Errorf("bridge: duplicate evaluation candidate %q", candidate.TheoremID)
		}
		problem, exists := findProblem(snapshot, candidate.TheoremID)
		if !exists || problem.Status != catalog.StatusProven || !sameIDs(candidate.SourceIDs, problem.SourceIDs) {
			return RetrievalEvaluation{}, fmt.Errorf("bridge: candidate %q does not match a proven M0 problem", candidate.TheoremID)
		}
		candidateByID[candidate.TheoremID] = candidate
	}
	if len(candidateByID) == 0 {
		return RetrievalEvaluation{}, errors.New("bridge: retrieval evaluation requires a non-empty candidate pool")
	}
	if len(judgments.Judgments) != len(candidateByID) {
		return RetrievalEvaluation{}, errors.New("bridge: every candidate in the request pool must have exactly one relevance judgment")
	}
	if len(evidence) != len(judgments.Judgments) {
		return RetrievalEvaluation{}, errors.New("bridge: every relevance judgment must have one loaded evidence artifact")
	}
	judgmentByID := make(map[string]RelevanceJudgment, len(judgments.Judgments))
	evidenceIDs := make(map[string]struct{}, len(judgments.Judgments))
	reviewerIDs := make(map[string]struct{})
	relevantCount := 0
	for _, judgment := range judgments.Judgments {
		if err := state.ValidateIdentifier("retrieval judgment theorem ID", judgment.TheoremID); err != nil {
			return RetrievalEvaluation{}, err
		}
		if _, exists := candidateByID[judgment.TheoremID]; !exists {
			return RetrievalEvaluation{}, fmt.Errorf("bridge: judgment candidate %q is absent from the request pool", judgment.TheoremID)
		}
		if _, exists := judgmentByID[judgment.TheoremID]; exists {
			return RetrievalEvaluation{}, fmt.Errorf("bridge: duplicate relevance judgment for %q", judgment.TheoremID)
		}
		if judgment.Relevance < 0 || judgment.Relevance > MaxRelevance {
			return RetrievalEvaluation{}, fmt.Errorf("bridge: relevance for %q must be between 0 and %d", judgment.TheoremID, MaxRelevance)
		}
		if err := state.ValidateIdentifier("retrieval evidence ID", judgment.EvidenceID); err != nil {
			return RetrievalEvaluation{}, err
		}
		if !validSHA256(judgment.EvidenceSHA256) {
			return RetrievalEvaluation{}, fmt.Errorf("bridge: judgment evidence digest for %q is not canonical SHA-256", judgment.TheoremID)
		}
		if _, duplicate := evidenceIDs[judgment.EvidenceID]; duplicate {
			return RetrievalEvaluation{}, errors.New("bridge: each candidate must use distinct judgment evidence")
		}
		evidenceIDs[judgment.EvidenceID] = struct{}{}
		loaded, exists := evidence[judgment.EvidenceID]
		if !exists || loaded.ArtifactSHA256 != judgment.EvidenceSHA256 {
			return RetrievalEvaluation{}, fmt.Errorf("bridge: judgment evidence for %q is missing or its artifact digest differs", judgment.TheoremID)
		}
		record := loaded.Record
		candidate := candidateByID[judgment.TheoremID]
		if err := validateJudgmentEvidence(record, judgment, judgments, candidate, queryProblem, snapshot.ContentSHA256, retrievalRequestSHA256, retrievalOutputSHA256); err != nil {
			return RetrievalEvaluation{}, fmt.Errorf("bridge: judgment evidence %q: %w", judgment.EvidenceID, err)
		}
		judgmentByID[judgment.TheoremID] = judgment
		reviewerIDs[record.ReviewerID] = struct{}{}
		if judgment.Relevance > 0 {
			relevantCount++
		}
	}
	if len(judgmentByID) != len(candidateByID) {
		return RetrievalEvaluation{}, errors.New("bridge: relevance judgments do not cover the full request candidate pool")
	}
	if relevantCount == 0 {
		return RetrievalEvaluation{}, errors.New("bridge: no candidate was labeled relevant; ranking quality metrics are undefined")
	}
	seenMatches := make(map[string]struct{}, len(matches))
	for _, match := range matches {
		candidate, exists := candidateByID[match.TheoremID]
		if !exists {
			return RetrievalEvaluation{}, fmt.Errorf("bridge: returned theorem %q is absent from the request pool", match.TheoremID)
		}
		if _, duplicate := seenMatches[match.TheoremID]; duplicate {
			return RetrievalEvaluation{}, fmt.Errorf("bridge: duplicate returned theorem %q", match.TheoremID)
		}
		if match.Snapshot != snapshot.ContentSHA256 || match.ProofSHA256 != candidate.ProofSHA256 || !sameIDs(match.SourceIDs, candidate.SourceIDs) {
			return RetrievalEvaluation{}, fmt.Errorf("bridge: returned theorem %q does not preserve request and M0 provenance", match.TheoremID)
		}
		if err := validateScore(match.Score); err != nil {
			return RetrievalEvaluation{}, err
		}
		seenMatches[match.TheoremID] = struct{}{}
	}
	if len(matches) > query.Limit {
		return RetrievalEvaluation{}, errors.New("bridge: retrieval output exceeds the query result limit")
	}

	retrievedRelevant := 0
	reciprocalRank := 0.0
	dcg := 0.0
	for index, match := range matches {
		judgment := judgmentByID[match.TheoremID]
		if index < judgments.TopK {
			if judgment.Relevance > 0 {
				retrievedRelevant++
			}
			dcg += relevanceGain(judgment.Relevance) / math.Log2(float64(index+2))
		}
		if reciprocalRank == 0 && judgment.Relevance > 0 {
			reciprocalRank = 1 / float64(index+1)
		}
	}
	ideal := make([]int, 0, len(judgmentByID))
	for _, judgment := range judgmentByID {
		ideal = append(ideal, judgment.Relevance)
	}
	sort.Sort(sort.Reverse(sort.IntSlice(ideal)))
	idcg := 0.0
	for index := 0; index < judgments.TopK; index++ {
		idcg += relevanceGain(ideal[index]) / math.Log2(float64(index+2))
	}
	if idcg <= 0 {
		return RetrievalEvaluation{}, errors.New("bridge: ideal DCG is zero; ranking quality cannot be normalized")
	}
	precision := float64(retrievedRelevant) / float64(judgments.TopK)
	recall := float64(retrievedRelevant) / float64(relevantCount)
	ndcg := dcg / idcg
	if err := validateScore(precision); err != nil {
		return RetrievalEvaluation{}, err
	}
	if err := validateScore(recall); err != nil {
		return RetrievalEvaluation{}, err
	}
	if err := validateScore(ndcg); err != nil {
		return RetrievalEvaluation{}, err
	}
	reviewers := make([]string, 0, len(reviewerIDs))
	for reviewer := range reviewerIDs {
		reviewers = append(reviewers, reviewer)
	}
	sort.Strings(reviewers)
	return RetrievalEvaluation{
		MetricVersion:          RetrievalMetricsVersion,
		QueryProblemID:         query.ProblemID,
		CatalogSnapshotSHA256:  snapshot.ContentSHA256,
		RetrievalRequestSHA256: retrievalRequestSHA256,
		RetrievalOutputSHA256:  retrievalOutputSHA256,
		JudgmentManifestSHA256: judgmentManifestSHA256,
		CandidatePoolCount:     len(candidateByID),
		ReturnedCount:          len(matches),
		RelevantCandidateCount: relevantCount,
		RelevanceThreshold:     1,
		TopK:                   judgments.TopK,
		JudgmentEvidenceCount:  len(evidenceIDs),
		ReviewerIDs:            reviewers,
		Metrics: RetrievalMetrics{
			PrecisionAtK: precision,
			RecallAtK:    recall,
			MRR:          reciprocalRank,
			NDCGAtK:      ndcg,
		},
	}, nil
}

func validateJudgmentEvidence(
	record RetrievalJudgmentEvidence,
	judgment RelevanceJudgment,
	judgments RetrievalJudgments,
	candidate Skeleton,
	queryProblem catalog.Problem,
	snapshotSHA256 string,
	requestSHA256 string,
	outputSHA256 string,
) error {
	if record.SchemaVersion != RetrievalEvidenceSchemaVersion || record.EvidenceID != judgment.EvidenceID || record.QueryProblemID != judgments.QueryProblemID || record.CandidateTheoremID != judgment.TheoremID {
		return errors.New("evidence identity or schema does not match its judgment")
	}
	if record.CatalogSnapshotSHA256 != snapshotSHA256 || record.RetrievalRequestSHA256 != requestSHA256 || record.RetrievalOutputSHA256 != outputSHA256 {
		return errors.New("evidence is not bound to the exact M0 snapshot, retrieval request, and output")
	}
	if err := state.ValidateIdentifier("retrieval evidence reviewer ID", record.ReviewerID); err != nil {
		return err
	}
	if record.ReviewedAt.IsZero() || record.Relevance != judgment.Relevance || strings.TrimSpace(record.Rationale) == "" || strings.ContainsRune(record.Rationale, '\x00') {
		return errors.New("evidence requires matching relevance, review time, and a rationale")
	}
	if record.Relevance < 0 || record.Relevance > MaxRelevance {
		return fmt.Errorf("evidence relevance must be between 0 and %d", MaxRelevance)
	}
	if !sameIDs(record.QuerySourceIDs, queryProblem.SourceIDs) || !sameIDs(record.CandidateSourceIDs, candidate.SourceIDs) {
		return errors.New("evidence source IDs do not match the query and candidate M0 records")
	}
	return nil
}

func findProblem(snapshot catalog.Snapshot, id string) (catalog.Problem, bool) {
	for _, problem := range snapshot.Problems {
		if problem.ID == id {
			return problem, true
		}
	}
	return catalog.Problem{}, false
}

func relevanceGain(relevance int) float64 {
	return math.Pow(2, float64(relevance)) - 1
}
