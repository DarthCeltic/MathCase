package main

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"reflect"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/bridge"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	maxRetrievalOutputFile    = 32 << 20
	maxRetrievalJudgmentsFile = 8 << 20
	maxRetrievalEvidenceFile  = 1 << 20
)

type retrievalEvaluationOutput struct {
	SchemaVersion string                     `json:"schema_version"`
	Status        string                     `json:"status"`
	EvaluatedAt   time.Time                  `json:"evaluated_at"`
	Evaluation    bridge.RetrievalEvaluation `json:"evaluation"`
}

func runRetrieveEvaluate(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("retrieve-evaluate", flag.ContinueOnError)
	flags.SetOutput(stderr)
	snapshotPath := flags.String("snapshot", "", "strict JSON file containing the exact M0 catalog snapshot")
	requestPath := flags.String("request", "", "strict JSON retrieval request used to produce the ranked output")
	proofRoot := flags.String("proof-root", "", "local root containing the request's source-backed proof files")
	sourceRoot := flags.String("source-root", "", "local root containing exact M0 source items for solver-facing declaration hints")
	retrievalOutputPath := flags.String("retrieval-output", "", "exact output file produced by retrieve-local")
	judgmentsPath := flags.String("judgments", "", "human relevance labels bound to this request, output, and M0 snapshot")
	evidenceRoot := flags.String("evidence-root", "", "directory containing hash-pinned human review evidence named <evidence_id>.json")
	outputPath := flags.String("output", "", "new evaluation result file; existing files are never overwritten")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*snapshotPath) == "" || strings.TrimSpace(*requestPath) == "" || strings.TrimSpace(*proofRoot) == "" || strings.TrimSpace(*retrievalOutputPath) == "" || strings.TrimSpace(*judgmentsPath) == "" || strings.TrimSpace(*evidenceRoot) == "" || strings.TrimSpace(*outputPath) == "" {
		fmt.Fprintln(stderr, "retrieve-evaluate requires --snapshot FILE, --request FILE, --proof-root DIR, --retrieval-output FILE, --judgments FILE, --evidence-root DIR, and --output NEW_FILE; --source-root DIR is required when candidates carry solver-facing declaration hints; positional arguments are not accepted")
		return 2
	}
	snapshot, err := loadCatalogSnapshot(*snapshotPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load catalog snapshot: %v\n", err)
		return 2
	}
	requestData, err := readRegularInput(*requestPath, "retrieval request", maxRetrievalRequestFile)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load retrieval request: %v\n", err)
		return 2
	}
	var request retrievalRequestFile
	if err := decodeStrictJSON(requestData, &request, "retrieval request"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode retrieval request: %v\n", err)
		return 2
	}
	if request.SchemaVersion != "mathcase-retrieval-request-v2" {
		fmt.Fprintf(stderr, "mathcase: unsupported retrieval request schema %q\n", request.SchemaVersion)
		return 2
	}
	proofs, err := bridge.NewLocalProofStore(*proofRoot)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: open proof store: %v\n", err)
		return 2
	}
	var sources bridge.SourceReader
	if strings.TrimSpace(*sourceRoot) != "" {
		store, err := bridge.NewLocalProofStore(*sourceRoot)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: open M0 source root: %v\n", err)
			return 2
		}
		sources = store
	}
	expectedMatches, err := bridge.RetrieveWithSources(request.Query, request.Corpus, snapshot, proofs, sources)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: re-run retrieval from source-backed request: %v\n", err)
		return 2
	}
	retrievalOutputData, err := readRegularInput(*retrievalOutputPath, "retrieval output", maxRetrievalOutputFile)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load retrieval output: %v\n", err)
		return 2
	}
	var retrievalOutput retrievalOutputFile
	if err := decodeStrictJSON(retrievalOutputData, &retrievalOutput, "retrieval output"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode retrieval output: %v\n", err)
		return 2
	}
	if retrievalOutput.SchemaVersion != "mathcase-retrieval-output-v2" || retrievalOutput.Status != "COMPLETED" || retrievalOutput.MatchCount != len(retrievalOutput.Matches) {
		fmt.Fprintln(stderr, "mathcase: retrieval output has an unsupported schema, incomplete status, or inconsistent match count")
		return 2
	}
	if !reflect.DeepEqual(retrievalOutput.Query, request.Query) || retrievalOutput.CatalogSnapshotSHA256 != snapshot.ContentSHA256 || !reflect.DeepEqual(retrievalOutput.Matches, expectedMatches) {
		fmt.Fprintln(stderr, "mathcase: retrieval output does not reproduce from the exact request, M0 snapshot, and proof bytes")
		return 2
	}
	judgmentData, err := readRegularInput(*judgmentsPath, "retrieval judgments", maxRetrievalJudgmentsFile)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load retrieval judgments: %v\n", err)
		return 2
	}
	var judgments bridge.RetrievalJudgments
	if err := decodeStrictJSON(judgmentData, &judgments, "retrieval judgments"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode retrieval judgments: %v\n", err)
		return 2
	}
	evidence, err := loadRetrievalJudgmentEvidence(*evidenceRoot, judgments.Judgments)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load retrieval judgment evidence: %v\n", err)
		return 2
	}
	requestDigest := digestBytes(requestData)
	outputDigest := digestBytes(retrievalOutputData)
	judgmentDigest := digestBytes(judgmentData)
	evaluation, err := bridge.EvaluateRetrieval(request.Query, request.Corpus, retrievalOutput.Matches, snapshot, judgments, requestDigest, outputDigest, judgmentDigest, evidence)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: evaluate retrieval rankings: %v\n", err)
		return 2
	}
	output := retrievalEvaluationOutput{
		SchemaVersion: "mathcase-retrieval-evaluation-v1",
		Status:        "COMPLETED",
		EvaluatedAt:   time.Now().UTC(),
		Evaluation:    evaluation,
	}
	outputData, err := json.MarshalIndent(output, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode retrieval evaluation: %v\n", err)
		return 2
	}
	outputData = append(outputData, '\n')
	if err := writeNewRegularOutput(*outputPath, outputData); err != nil {
		fmt.Fprintf(stderr, "mathcase: write retrieval evaluation: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(outputData); err != nil {
		fmt.Fprintf(stderr, "mathcase: write retrieval evaluation to stdout: %v\n", err)
		return 2
	}
	return 0
}

func loadRetrievalJudgmentEvidence(root string, judgments []bridge.RelevanceJudgment) (map[string]bridge.LoadedRetrievalJudgmentEvidence, error) {
	if strings.TrimSpace(root) == "" {
		return nil, errors.New("evidence root is required")
	}
	absolute, err := filepath.Abs(root)
	if err != nil {
		return nil, fmt.Errorf("resolve evidence root: %w", err)
	}
	canonical, err := filepath.EvalSymlinks(absolute)
	if err != nil {
		return nil, fmt.Errorf("resolve evidence root: %w", err)
	}
	info, err := os.Stat(canonical)
	if err != nil {
		return nil, fmt.Errorf("inspect evidence root: %w", err)
	}
	if !info.IsDir() {
		return nil, errors.New("evidence root must be a directory")
	}
	loaded := make(map[string]bridge.LoadedRetrievalJudgmentEvidence, len(judgments))
	for _, judgment := range judgments {
		if err := state.ValidateIdentifier("retrieval evidence ID", judgment.EvidenceID); err != nil {
			return nil, err
		}
		if _, exists := loaded[judgment.EvidenceID]; exists {
			return nil, fmt.Errorf("duplicate evidence ID %q", judgment.EvidenceID)
		}
		path := filepath.Join(canonical, judgment.EvidenceID+".json")
		data, err := readRegularInput(path, "retrieval evidence "+judgment.EvidenceID, maxRetrievalEvidenceFile)
		if err != nil {
			return nil, err
		}
		var record bridge.RetrievalJudgmentEvidence
		if err := decodeStrictJSON(data, &record, "retrieval evidence "+judgment.EvidenceID); err != nil {
			return nil, err
		}
		loaded[judgment.EvidenceID] = bridge.LoadedRetrievalJudgmentEvidence{
			Record:         record,
			ArtifactSHA256: digestBytes(data),
		}
	}
	return loaded, nil
}

func digestBytes(data []byte) string {
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:])
}
