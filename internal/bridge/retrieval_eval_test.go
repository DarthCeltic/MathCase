package bridge

import (
	"math"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
)

func retrievalEvaluationFixture(t *testing.T) (Query, []Skeleton, []Match, RetrievalJudgments, string, string, map[string]LoadedRetrievalJudgmentEvidence) {
	t.Helper()
	query, corpus, snapshot := retrievalFixture(t)
	matches, err := Retrieve(query, corpus, snapshot, proofStoreFor(corpus))
	if err != nil {
		t.Fatalf("Retrieve() error = %v", err)
	}
	requestSHA := strings.Repeat("a", 64)
	outputSHA := strings.Repeat("b", 64)
	relevance := map[string]int{
		"same-domain":   2,
		"exact-match":   3,
		"partial-match": 1,
		"no-match":      0,
	}
	queryRecord, _ := findProblem(snapshot, query.ProblemID)
	judgments := RetrievalJudgments{
		SchemaVersion: RetrievalJudgmentsSchemaVersion, QueryProblemID: query.ProblemID,
		RetrievalRequestSHA256: requestSHA, RetrievalOutputSHA256: outputSHA,
		CatalogSnapshotSHA256: snapshot.ContentSHA256, TopK: 3,
	}
	evidence := make(map[string]LoadedRetrievalJudgmentEvidence, len(corpus))
	for _, candidate := range corpus {
		relevanceValue := relevance[candidate.TheoremID]
		evidenceID := "review-" + candidate.TheoremID
		artifactSHA := strings.Repeat("d", 64)
		judgments.Judgments = append(judgments.Judgments, RelevanceJudgment{
			TheoremID: candidate.TheoremID, Relevance: relevanceValue,
			EvidenceID: evidenceID, EvidenceSHA256: artifactSHA,
		})
		evidence[evidenceID] = LoadedRetrievalJudgmentEvidence{
			ArtifactSHA256: artifactSHA,
			Record: RetrievalJudgmentEvidence{
				SchemaVersion: RetrievalEvidenceSchemaVersion, EvidenceID: evidenceID,
				QueryProblemID: query.ProblemID, CandidateTheoremID: candidate.TheoremID,
				CatalogSnapshotSHA256:  snapshot.ContentSHA256,
				RetrievalRequestSHA256: requestSHA, RetrievalOutputSHA256: outputSHA,
				ReviewerID: "human-reviewer-1", ReviewedAt: time.Date(2026, 10, 20, 14, 0, 0, 0, time.UTC),
				Relevance: relevanceValue, Rationale: "Source-bound human assessment of the theorem statement and proof skeleton.",
				QuerySourceIDs:     append([]string(nil), queryRecord.SourceIDs...),
				CandidateSourceIDs: append([]string(nil), candidate.SourceIDs...),
			},
		}
	}
	return query, corpus, matches, judgments, requestSHA, outputSHA, evidence
}

func TestEvaluateRetrievalUsesFullPoolAndVerifiedHumanEvidence(t *testing.T) {
	query, corpus, matches, judgments, requestSHA, outputSHA, evidence := retrievalEvaluationFixture(t)
	manifestSHA := strings.Repeat("c", 64)
	snapshot := snapshotForTest(t, []catalog.SourceVersion{
		indexedSource("source-open", 'a'), indexedSource("source-same", 'b'),
		indexedSource("source-exact", 'c'), indexedSource("source-partial", 'd'), indexedSource("source-none", 'e'),
	}, []catalog.Problem{
		problemRecord("problem-open", catalog.StatusConjectured, "source-open", "number theory", "induction", "recurrence"),
		problemRecord("same-domain", catalog.StatusProven, "source-same", "number theory", "induction", "recurrence"),
		problemRecord("exact-match", catalog.StatusProven, "source-exact", "algebra", "induction", "recurrence"),
		problemRecord("partial-match", catalog.StatusProven, "source-partial", "combinatorics", "induction", "counting"),
		problemRecord("no-match", catalog.StatusProven, "source-none", "analysis", "compactness"),
	})
	query.SourceSnapshotSHA256 = snapshot.ContentSHA256
	for i := range corpus {
		corpus[i].SourceSnapshotSHA256 = snapshot.ContentSHA256
	}
	for i := range matches {
		matches[i].Snapshot = snapshot.ContentSHA256
	}
	judgments.CatalogSnapshotSHA256 = snapshot.ContentSHA256
	for id, loaded := range evidence {
		loaded.Record.CatalogSnapshotSHA256 = snapshot.ContentSHA256
		evidence[id] = loaded
	}
	result, err := EvaluateRetrieval(query, corpus, matches, snapshot, judgments, requestSHA, outputSHA, manifestSHA, evidence)
	if err != nil {
		t.Fatalf("EvaluateRetrieval() error = %v", err)
	}
	if result.CandidatePoolCount != 4 || result.ReturnedCount != 2 || result.RelevantCandidateCount != 3 || result.TopK != 3 || result.JudgmentEvidenceCount != 4 {
		t.Fatalf("evaluation counts = %#v", result)
	}
	if math.Abs(result.Metrics.PrecisionAtK-(2.0/3.0)) > 1e-12 || math.Abs(result.Metrics.RecallAtK-(2.0/3.0)) > 1e-12 || result.Metrics.MRR != 1 {
		t.Fatalf("unexpected ranking metrics: %#v", result.Metrics)
	}
	if result.Metrics.NDCGAtK <= 0 || result.Metrics.NDCGAtK >= 1 || result.ReviewerIDs[0] != "human-reviewer-1" {
		t.Fatalf("unexpected NDCG or reviewers: %#v", result)
	}
}

func TestEvaluateRetrievalRefusesUnboundOrIncompleteJudgments(t *testing.T) {
	tests := []struct {
		name   string
		mutate func(*RetrievalJudgments, map[string]LoadedRetrievalJudgmentEvidence)
		want   string
	}{
		{
			name: "wrong output digest",
			mutate: func(j *RetrievalJudgments, _ map[string]LoadedRetrievalJudgmentEvidence) {
				j.RetrievalOutputSHA256 = strings.Repeat("f", 64)
			},
			want: "not bound to the exact request, output, and M0 snapshot",
		},
		{
			name: "missing candidate label",
			mutate: func(j *RetrievalJudgments, _ map[string]LoadedRetrievalJudgmentEvidence) {
				j.Judgments = j.Judgments[:len(j.Judgments)-1]
			},
			want: "every candidate in the request pool",
		},
		{
			name: "evidence digest mismatch",
			mutate: func(j *RetrievalJudgments, _ map[string]LoadedRetrievalJudgmentEvidence) {
				j.Judgments[0].EvidenceSHA256 = strings.Repeat("f", 64)
			},
			want: "artifact digest differs",
		},
		{
			name: "wrong source identity",
			mutate: func(_ *RetrievalJudgments, evidence map[string]LoadedRetrievalJudgmentEvidence) {
				loaded := evidence["review-same-domain"]
				loaded.Record.CandidateSourceIDs = []string{"source-open"}
				evidence["review-same-domain"] = loaded
			},
			want: "source IDs do not match",
		},
		{
			name: "no relevant candidates",
			mutate: func(j *RetrievalJudgments, evidence map[string]LoadedRetrievalJudgmentEvidence) {
				for i := range j.Judgments {
					j.Judgments[i].Relevance = 0
					loaded := evidence[j.Judgments[i].EvidenceID]
					loaded.Record.Relevance = 0
					evidence[j.Judgments[i].EvidenceID] = loaded
				}
			},
			want: "no candidate was labeled relevant",
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			query, corpus, matches, judgments, requestSHA, outputSHA, evidence := retrievalEvaluationFixture(t)
			test.mutate(&judgments, evidence)
			_, _, snapshot := retrievalFixture(t)
			_, err := EvaluateRetrieval(query, corpus, matches, snapshot, judgments, requestSHA, outputSHA, strings.Repeat("c", 64), evidence)
			if err == nil || !strings.Contains(err.Error(), test.want) {
				t.Fatalf("EvaluateRetrieval() error = %v, want %q", err, test.want)
			}
		})
	}
}
