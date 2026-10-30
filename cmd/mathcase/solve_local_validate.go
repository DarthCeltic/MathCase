package main

import (
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/solver"
)

func runSolveLocalValidate(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("solve-local-validate", flag.ContinueOnError)
	flags.SetOutput(stderr)
	problemPath := flags.String("problem", "", "exact M0 problem JSON used for the solver run")
	resultPath := flags.String("result", "", "captured solve-local JSON result")
	receiptRoot := flags.String("receipt-root", "", "directory containing exact Lean M4 receipts")
	runID := flags.String("run-id", "", "exact reserved local run ID")
	leanImage := flags.String("lean-image", "", "expected immutable Lean verification image ID")
	pantographImage := flags.String("pantograph-image", "", "expected immutable Pantograph search image ID")
	snapshotSHA256 := flags.String("snapshot-manifest-sha256", "", "expected pinned Lean snapshot manifest digest")
	snapshotID := flags.String("snapshot-id", "", "expected pinned Lean snapshot ID")
	retrievalSHA256 := flags.String("retrieval-output-sha256", "", "expected exact retrieval output digest when retrieval was authorized")
	dockerExecutable := flags.String("docker-executable", "", "exact Docker executable used by both pinned local containers")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*problemPath) == "" || strings.TrimSpace(*resultPath) == "" ||
		strings.TrimSpace(*receiptRoot) == "" || strings.TrimSpace(*runID) == "" || strings.TrimSpace(*leanImage) == "" ||
		strings.TrimSpace(*pantographImage) == "" || strings.TrimSpace(*snapshotSHA256) == "" || strings.TrimSpace(*snapshotID) == "" || strings.TrimSpace(*dockerExecutable) == "" {
		fmt.Fprintln(stderr, "solve-local-validate requires --problem, --result, --receipt-root, --run-id, --lean-image, --pantograph-image, --snapshot-manifest-sha256, --snapshot-id, and --docker-executable")
		return 2
	}
	problem, err := loadProblem(*problemPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load exact M0 problem: %v\n", err)
		return 2
	}
	outputBytes, err := readRegularInput(*resultPath, "solve-local result", solver.MaxSolveLocalOutputSize)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load solve-local result: %v\n", err)
		return 2
	}
	validated, err := solver.ValidateSolveLocalOutput(outputBytes, problem, *receiptRoot, solver.SolveLocalValidationExpectation{
		RunID: *runID, LeanSandboxImage: *leanImage, PantographSandboxImage: *pantographImage,
		SnapshotManifestSHA256: *snapshotSHA256, SnapshotID: *snapshotID, RetrievalOutputSHA256: *retrievalSHA256,
		DockerExecutable: *dockerExecutable,
	})
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: reopen solve-local verification evidence: %v\n", err)
		return 2
	}
	encoder := json.NewEncoder(stdout)
	encoder.SetIndent("", "  ")
	if err := encoder.Encode(validated); err != nil {
		fmt.Fprintf(stderr, "mathcase: encode solve-local verification: %v\n", err)
		return 2
	}
	return 0
}
