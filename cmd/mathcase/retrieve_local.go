package main

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"reflect"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/bridge"
	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
)

const maxRetrievalRequestFile = 32 << 20

type retrievalRequestFile struct {
	SchemaVersion string            `json:"schema_version"`
	Query         bridge.Query      `json:"query"`
	Corpus        []bridge.Skeleton `json:"corpus"`
}

type retrievalOutputFile struct {
	SchemaVersion         string         `json:"schema_version"`
	Status                string         `json:"status"`
	Query                 bridge.Query   `json:"query"`
	CatalogSnapshotSHA256 string         `json:"catalog_snapshot_sha256"`
	MatchCount            int            `json:"match_count"`
	Matches               []bridge.Match `json:"matches"`
}

// loadValidatedRetrievalHints reopens a retrieval output against its exact M0
// snapshot and source-cleared proof files before its declaration names can
// influence bounded local tactic ordering.
func loadValidatedRetrievalHints(outputPath, snapshotPath, proofRoot, sourceRoot string, target domain.MathProblem) ([]string, string, error) {
	if strings.TrimSpace(outputPath) == "" || strings.TrimSpace(snapshotPath) == "" || strings.TrimSpace(proofRoot) == "" {
		return nil, "", errors.New("retrieval hints require an output, exact M0 snapshot, and proof root")
	}
	snapshot, err := loadCatalogSnapshot(snapshotPath)
	if err != nil {
		return nil, "", fmt.Errorf("load retrieval M0 snapshot: %w", err)
	}
	var catalogProblem *catalog.Problem
	for index := range snapshot.Problems {
		if snapshot.Problems[index].ID == target.ID {
			catalogProblem = &snapshot.Problems[index]
			break
		}
	}
	if catalogProblem == nil || target.Statement != catalogProblem.InformalStatement || target.LeanStatement != catalogProblem.LeanStatement {
		return nil, "", errors.New("solver problem does not match the exact informal and Lean statement in the supplied M0 snapshot")
	}
	outputData, err := readRegularInput(outputPath, "retrieval output", maxRetrievalOutputFile)
	if err != nil {
		return nil, "", fmt.Errorf("load retrieval output: %w", err)
	}
	var output retrievalOutputFile
	if err := decodeStrictJSON(outputData, &output, "retrieval output"); err != nil {
		return nil, "", fmt.Errorf("decode retrieval output: %w", err)
	}
	if output.SchemaVersion != "mathcase-retrieval-output-v2" || output.Status != "COMPLETED" ||
		output.Query.ProblemID != target.ID || output.Query.SourceSnapshotSHA256 != snapshot.ContentSHA256 ||
		output.CatalogSnapshotSHA256 != snapshot.ContentSHA256 || output.MatchCount != len(output.Matches) ||
		output.Query.Limit < 1 || output.Query.Limit > 8 || len(output.Matches) < 1 || len(output.Matches) > output.Query.Limit {
		return nil, "", errors.New("retrieval output is incomplete, over limit, or bound to a different problem/snapshot")
	}
	skeletons := make([]bridge.Skeleton, 0, len(output.Matches))
	for _, match := range output.Matches {
		if strings.TrimSpace(match.LeanTheoremName) == "" {
			return nil, "", errors.New("retrieval match lacks a reviewed Lean declaration name for solver use")
		}
		skeletons = append(skeletons, bridge.Skeleton{
			TheoremID: match.TheoremID, LeanTheoremName: match.LeanTheoremName,
			Domain: match.Domain, Tags: append([]string(nil), match.Tags...), ProofRef: match.ProofRef,
			ProofSHA256: match.ProofSHA256, SourceIDs: append([]string(nil), match.SourceIDs...),
			SourceSnapshotSHA256: match.Snapshot,
		})
	}
	proofs, err := bridge.NewLocalProofStore(proofRoot)
	if err != nil {
		return nil, "", fmt.Errorf("open retrieval proof root: %w", err)
	}
	var sources bridge.SourceReader
	if strings.TrimSpace(sourceRoot) != "" {
		store, err := bridge.NewLocalProofStore(sourceRoot)
		if err != nil {
			return nil, "", fmt.Errorf("open retrieval source root: %w", err)
		}
		sources = store
	}
	verifiedMatches, err := bridge.RetrieveWithSources(output.Query, skeletons, snapshot, proofs, sources)
	if err != nil {
		return nil, "", fmt.Errorf("revalidate retrieval output: %w", err)
	}
	if !reflect.DeepEqual(verifiedMatches, output.Matches) {
		return nil, "", errors.New("retrieval output does not exactly match a fresh rights- and proof-hash-checked ranking")
	}
	hints := make([]string, 0, len(verifiedMatches))
	for _, match := range verifiedMatches {
		hints = append(hints, match.LeanTheoremName)
	}
	digest := sha256.Sum256(outputData)
	return hints, hex.EncodeToString(digest[:]), nil
}

func runRetrieveLocal(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("retrieve-local", flag.ContinueOnError)
	flags.SetOutput(stderr)
	snapshotPath := flags.String("snapshot", "", "strict JSON file containing the M0 catalog snapshot")
	requestPath := flags.String("request", "", "strict JSON file containing the query and source-backed proof skeletons")
	proofRoot := flags.String("proof-root", "", "local root containing bounded proof files referenced by the request")
	sourceRoot := flags.String("source-root", "", "local root containing exact M0 source items used for solver-facing declaration hints")
	outputPath := flags.String("output", "", "new retrieval result file; existing files are never overwritten")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*snapshotPath) == "" || strings.TrimSpace(*requestPath) == "" || strings.TrimSpace(*proofRoot) == "" || strings.TrimSpace(*outputPath) == "" {
		fmt.Fprintln(stderr, "retrieve-local requires --snapshot FILE, --request FILE, --proof-root DIR, and --output NEW_FILE; --source-root DIR is required when request candidates carry solver-facing declaration hints; positional arguments are not accepted")
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
	matches, err := bridge.RetrieveWithSources(request.Query, request.Corpus, snapshot, proofs, sources)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: retrieve from catalog snapshot: %v\n", err)
		return 2
	}
	output := retrievalOutputFile{
		SchemaVersion:         "mathcase-retrieval-output-v2",
		Status:                "COMPLETED",
		Query:                 request.Query,
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		MatchCount:            len(matches),
		Matches:               matches,
	}
	outputData, err := json.MarshalIndent(output, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode retrieval output: %v\n", err)
		return 2
	}
	outputData = append(outputData, '\n')
	if err := writeNewRegularOutput(*outputPath, outputData); err != nil {
		fmt.Fprintf(stderr, "mathcase: write retrieval output: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(outputData); err != nil {
		fmt.Fprintf(stderr, "mathcase: write retrieval output to stdout: %v\n", err)
		return 2
	}
	return 0
}
