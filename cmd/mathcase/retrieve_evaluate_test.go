package main

import (
	"bytes"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/bridge"
	"github.com/DarthCeltic/MathCase/internal/catalog"
)

func prepareRetrievalEvaluationFixture(t *testing.T) ([]string, string, string, bridge.RetrievalEvaluation) {
	t.Helper()
	snapshotPath, requestPath, proofRoot, retrievalOutputPath, snapshot := writeRetrievalFixture(t, []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseIndex})
	sourceRoot := filepath.Join(filepath.Dir(snapshotPath), "source-root")
	var stdout, stderr bytes.Buffer
	if code := run([]string{"retrieve-local", "--snapshot", snapshotPath, "--request", requestPath, "--proof-root", proofRoot, "--source-root", sourceRoot, "--output", retrievalOutputPath}, &stdout, &stderr); code != 0 {
		t.Fatalf("prepare retrieve-local fixture exit=%d stderr=%q", code, stderr.String())
	}
	requestData, err := os.ReadFile(requestPath)
	if err != nil {
		t.Fatal(err)
	}
	outputData, err := os.ReadFile(retrievalOutputPath)
	if err != nil {
		t.Fatal(err)
	}
	var request retrievalRequestFile
	if err := json.Unmarshal(requestData, &request); err != nil {
		t.Fatal(err)
	}
	queryProblem := snapshot.Problems[0]
	candidateProblem := snapshot.Problems[1]
	if queryProblem.ID != request.Query.ProblemID || candidateProblem.ID != request.Corpus[0].TheoremID {
		t.Fatal("retrieval fixture order no longer matches its test setup")
	}
	root := filepath.Dir(snapshotPath)
	evidenceRoot := filepath.Join(root, "judgment-evidence")
	if err := os.Mkdir(evidenceRoot, 0o700); err != nil {
		t.Fatal(err)
	}
	evidenceID := "review-theorem-proven"
	judgment := bridge.RelevanceJudgment{TheoremID: candidateProblem.ID, Relevance: 3, EvidenceID: evidenceID}
	record := bridge.RetrievalJudgmentEvidence{
		SchemaVersion: bridge.RetrievalEvidenceSchemaVersion, EvidenceID: evidenceID,
		QueryProblemID: request.Query.ProblemID, CandidateTheoremID: candidateProblem.ID,
		CatalogSnapshotSHA256:  snapshot.ContentSHA256,
		RetrievalRequestSHA256: digestBytes(requestData), RetrievalOutputSHA256: digestBytes(outputData),
		ReviewerID: "human-reviewer-1", ReviewedAt: time.Date(2026, 10, 20, 15, 0, 0, 0, time.UTC),
		Relevance: 3, Rationale: "The source-bound statements and proof skeleton support this relevance rating.",
		QuerySourceIDs:     append([]string(nil), queryProblem.SourceIDs...),
		CandidateSourceIDs: append([]string(nil), candidateProblem.SourceIDs...),
	}
	evidenceData, err := json.MarshalIndent(record, "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	evidenceData = append(evidenceData, '\n')
	if err := os.WriteFile(filepath.Join(evidenceRoot, evidenceID+".json"), evidenceData, 0o600); err != nil {
		t.Fatal(err)
	}
	judgment.EvidenceSHA256 = digestBytes(evidenceData)
	judgments := bridge.RetrievalJudgments{
		SchemaVersion:          bridge.RetrievalJudgmentsSchemaVersion,
		QueryProblemID:         request.Query.ProblemID,
		RetrievalRequestSHA256: digestBytes(requestData), RetrievalOutputSHA256: digestBytes(outputData),
		CatalogSnapshotSHA256: snapshot.ContentSHA256, TopK: 1,
		Judgments: []bridge.RelevanceJudgment{judgment},
	}
	judgmentData, err := json.MarshalIndent(judgments, "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	judgmentData = append(judgmentData, '\n')
	judgmentPath := filepath.Join(root, "retrieval.judgments.json")
	if err := os.WriteFile(judgmentPath, judgmentData, 0o600); err != nil {
		t.Fatal(err)
	}
	evaluationPath := filepath.Join(root, "retrieval.evaluation.json")
	args := []string{
		"retrieve-evaluate", "--snapshot", snapshotPath, "--request", requestPath,
		"--proof-root", proofRoot, "--source-root", sourceRoot, "--retrieval-output", retrievalOutputPath,
		"--judgments", judgmentPath, "--evidence-root", evidenceRoot, "--output", evaluationPath,
	}
	return args, evaluationPath, retrievalOutputPath, bridge.RetrievalEvaluation{
		QueryProblemID: request.Query.ProblemID, CatalogSnapshotSHA256: snapshot.ContentSHA256,
		RetrievalRequestSHA256: digestBytes(requestData), RetrievalOutputSHA256: digestBytes(outputData),
		CandidatePoolCount: 1, ReturnedCount: 1, RelevantCandidateCount: 1,
		RelevanceThreshold: 1, TopK: 1, JudgmentEvidenceCount: 1,
	}
}

func TestRetrieveEvaluateRecomputesAndWritesBoundMetrics(t *testing.T) {
	args, outputPath, _, expected := prepareRetrievalEvaluationFixture(t)
	var stdout, stderr bytes.Buffer
	if code := run(args, &stdout, &stderr); code != 0 {
		t.Fatalf("retrieve-evaluate exit=%d stderr=%q", code, stderr.String())
	}
	var output retrievalEvaluationOutput
	if err := json.Unmarshal(stdout.Bytes(), &output); err != nil {
		t.Fatalf("decode evaluation output: %v", err)
	}
	if output.SchemaVersion != "mathcase-retrieval-evaluation-v1" || output.Status != "COMPLETED" || output.EvaluatedAt.IsZero() {
		t.Fatalf("evaluation envelope = %#v", output)
	}
	if output.Evaluation.QueryProblemID != expected.QueryProblemID || output.Evaluation.CatalogSnapshotSHA256 != expected.CatalogSnapshotSHA256 || output.Evaluation.RetrievalRequestSHA256 != expected.RetrievalRequestSHA256 || output.Evaluation.RetrievalOutputSHA256 != expected.RetrievalOutputSHA256 || output.Evaluation.CandidatePoolCount != expected.CandidatePoolCount || output.Evaluation.ReturnedCount != expected.ReturnedCount || output.Evaluation.RelevantCandidateCount != expected.RelevantCandidateCount || output.Evaluation.TopK != expected.TopK {
		t.Fatalf("evaluation provenance/counts = %#v", output.Evaluation)
	}
	if output.Evaluation.Metrics.PrecisionAtK != 1 || output.Evaluation.Metrics.RecallAtK != 1 || output.Evaluation.Metrics.MRR != 1 || output.Evaluation.Metrics.NDCGAtK != 1 || !strings.EqualFold(output.Evaluation.ReviewerIDs[0], "human-reviewer-1") {
		t.Fatalf("evaluation metrics = %#v", output.Evaluation)
	}
	written, err := os.ReadFile(outputPath)
	if err != nil || !bytes.Equal(written, stdout.Bytes()) {
		t.Fatalf("persisted evaluation differs from stdout: read error=%v", err)
	}
	stdout.Reset()
	stderr.Reset()
	if code := run(args, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("retrieve-evaluate overwrite exit=%d stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
}

func TestRetrieveEvaluateRefusesOutputThatDoesNotRecompute(t *testing.T) {
	args, evaluationPath, retrievalOutputPath, _ := prepareRetrievalEvaluationFixture(t)
	var output retrievalOutputFile
	original, err := os.ReadFile(retrievalOutputPath)
	if err != nil {
		t.Fatal(err)
	}
	if err := json.Unmarshal(original, &output); err != nil {
		t.Fatal(err)
	}
	output.Matches[0].Score = 0.25
	tampered, err := json.Marshal(output)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(retrievalOutputPath, tampered, 0o600); err != nil {
		t.Fatal(err)
	}
	var stdout, stderr bytes.Buffer
	if code := run(args, &stdout, &stderr); code != 2 || stdout.Len() != 0 || !strings.Contains(stderr.String(), "does not reproduce") {
		t.Fatalf("retrieve-evaluate accepted modified ranking: exit=%d stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
	if _, err := os.Stat(evaluationPath); !os.IsNotExist(err) {
		t.Fatalf("evaluation output exists after refusal: stat error=%v", err)
	}
}

func TestRetrieveEvaluateChecksEvidenceAgainstM0Sources(t *testing.T) {
	args, evaluationPath, _, _ := prepareRetrievalEvaluationFixture(t)
	judgmentPath := args[12]
	evidenceRoot := args[14]
	var judgments bridge.RetrievalJudgments
	judgmentData, err := os.ReadFile(judgmentPath)
	if err != nil {
		t.Fatal(err)
	}
	if err := json.Unmarshal(judgmentData, &judgments); err != nil {
		t.Fatal(err)
	}
	evidencePath := filepath.Join(evidenceRoot, judgments.Judgments[0].EvidenceID+".json")
	var record bridge.RetrievalJudgmentEvidence
	evidenceData, err := os.ReadFile(evidencePath)
	if err != nil {
		t.Fatal(err)
	}
	if err := json.Unmarshal(evidenceData, &record); err != nil {
		t.Fatal(err)
	}
	record.CandidateSourceIDs = []string{"invented-source"}
	evidenceData, err = json.Marshal(record)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(evidencePath, evidenceData, 0o600); err != nil {
		t.Fatal(err)
	}
	judgments.Judgments[0].EvidenceSHA256 = digestBytes(evidenceData)
	judgmentData, err = json.Marshal(judgments)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(judgmentPath, judgmentData, 0o600); err != nil {
		t.Fatal(err)
	}
	args[12] = judgmentPath
	args[14] = evidenceRoot
	var stdout, stderr bytes.Buffer
	if code := run(args, &stdout, &stderr); code != 2 || stdout.Len() != 0 || !strings.Contains(stderr.String(), "source IDs do not match") {
		t.Fatalf("retrieve-evaluate accepted invented source evidence: exit=%d stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
	if _, err := os.Stat(evaluationPath); !os.IsNotExist(err) {
		t.Fatalf("evaluation output exists after source-evidence refusal: stat error=%v", err)
	}
}

func TestRetrieveEvaluateHelpListsEvidenceInputs(t *testing.T) {
	var stdout, stderr bytes.Buffer
	if code := run([]string{"retrieve-evaluate", "--help"}, &stdout, &stderr); code != 0 || !strings.Contains(stderr.String(), "-judgments") || !strings.Contains(stderr.String(), "-evidence-root") || !strings.Contains(stderr.String(), "-retrieval-output") {
		t.Fatalf("retrieve-evaluate --help exit=%d stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
}
