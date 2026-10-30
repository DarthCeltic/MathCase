package main

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"path/filepath"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/book"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

type proofDependencyCommandResult struct {
	Status        string `json:"status"`
	EvidenceClass string `json:"evidence_class"`
	ProblemID     string `json:"problem_id"`
	Declaration   string `json:"declaration"`
	OutputPath    string `json:"output_path"`
	OutputSHA256  string `json:"output_sha256"`
	ScopeNote     string `json:"scope_note"`
}

func runProofDependencies(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("proof-dependencies", flag.ContinueOnError)
	flags.SetOutput(stderr)
	problemPath := flags.String("problem", "", "strict M0 MathProblem JSON bound by the M4 receipt")
	m4Path := flags.String("m4-receipt", "", "typed execution-bound M4 receipt for the exact M0 problem")
	m6Dir := flags.String("m6-dir", "", "directory containing the M6 execution chain and proof-dependency observation")
	outputPath := flags.String("output", "", "new inventory output file; existing files are never overwritten")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*problemPath) == "" || strings.TrimSpace(*m4Path) == "" || strings.TrimSpace(*m6Dir) == "" || strings.TrimSpace(*outputPath) == "" {
		fmt.Fprintln(stderr, "proof-dependencies requires --problem FILE, --m4-receipt FILE, --m6-dir DIR, and --output NEW_FILE; positional arguments are not accepted")
		return 2
	}

	problem, err := loadProblem(*problemPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load M0 problem: %v\n", err)
		return 2
	}
	m4Bytes, err := readRegularInput(*m4Path, "M4 verification receipt", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load M4 receipt: %v\n", err)
		return 2
	}
	var m4 solver.LeanVerificationReceipt
	if err := decodeStrictJSON(m4Bytes, &m4, "M4 verification receipt"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode M4 receipt: %v\n", err)
		return 2
	}
	openedM4, err := solver.OpenLeanVerificationReceipt(m4Bytes, problem)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: reopen typed M4 receipt against M0: %v\n", err)
		return 2
	}
	statementSHA256, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: derive M0 statement digest: %v\n", err)
		return 2
	}
	m4Sum := sha256.Sum256(m4Bytes)
	request := bookScoreRequest{Proof: book.ProofMetrics{
		ProblemID: problem.ID, ProblemStatementSHA256: statementSHA256,
		ProofSHA256: m4.GeneratedSourceSHA256, LeanDeclaration: "mathcase_candidate",
	}}
	if err := bindLeanVerificationReceipt(&request, problem, m4, hex.EncodeToString(m4Sum[:])); err != nil {
		fmt.Fprintf(stderr, "mathcase: bind M0/M4 proof identity: %v\n", err)
		return 2
	}

	read := func(name, label string, maximum int64) ([]byte, error) {
		return readRegularInput(filepath.Join(*m6Dir, name), label, maximum)
	}
	observationBytes, err := read("proof-dependency-observation.json", "M6 proof-dependency observation", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load M6 proof-dependency observation: %v\n", err)
		return 2
	}
	metricsBytes, err := read("metrics-receipt.json", "M6 metrics receipt", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load M6 metrics receipt: %v\n", err)
		return 2
	}
	runReceiptBytes, err := read("run-receipt.json", "M6 run receipt", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load M6 run receipt: %v\n", err)
		return 2
	}
	runRequestBytes, err := readM6RawOutput(filepath.Join(*m6Dir, "run-request.json"), "M6 run request", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load M6 run request: %v\n", err)
		return 2
	}
	snapshotBytes, err := readM6RawOutput(filepath.Join(*m6Dir, "snapshot", "snapshot-manifest.json"), "M6 snapshot manifest", 4<<20)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load M6 snapshot manifest: %v\n", err)
		return 2
	}
	stdoutBytes, err := readM6RawOutput(filepath.Join(*m6Dir, "stdout.bin"), "M6 stdout", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load M6 stdout: %v\n", err)
		return 2
	}
	stderrBytes, err := readM6RawOutput(filepath.Join(*m6Dir, "stderr.bin"), "M6 stderr", maxProblemFileBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load M6 stderr: %v\n", err)
		return 2
	}
	inventory, err := book.AttachProofDependencyInventory(
		observationBytes, openedM4, request.Proof, metricsBytes, runReceiptBytes,
		runRequestBytes, snapshotBytes, stdoutBytes, stderrBytes,
	)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: reopen proof-dependency evidence chain: %v\n", err)
		return 2
	}
	encoded, err := json.MarshalIndent(inventory, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode proof-dependency inventory: %v\n", err)
		return 2
	}
	encoded = append(encoded, '\n')
	if err := writeNewRegularOutput(*outputPath, encoded); err != nil {
		fmt.Fprintf(stderr, "mathcase: write proof-dependency inventory: %v\n", err)
		return 2
	}
	outputSum := sha256.Sum256(encoded)
	result := proofDependencyCommandResult{
		Status: inventory.Status, EvidenceClass: inventory.EvidenceClass, ProblemID: inventory.ProblemID,
		Declaration: inventory.Declaration, OutputPath: *outputPath,
		OutputSHA256: hex.EncodeToString(outputSum[:]), ScopeNote: inventory.ScopeNote,
	}
	resultBytes, err := json.MarshalIndent(result, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode proof-dependency result: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(append(resultBytes, '\n')); err != nil {
		fmt.Fprintf(stderr, "mathcase: write proof-dependency result: %v\n", err)
		return 2
	}
	return 0
}
