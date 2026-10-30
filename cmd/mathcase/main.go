// Command mathcase runs explicit, local MathCase workflows.
package main

import (
	"context"
	"crypto/rand"
	"encoding/hex"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"os"
	"os/signal"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/application"
	"github.com/DarthCeltic/MathCase/internal/book"
	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/persistence"
	"github.com/DarthCeltic/MathCase/internal/poser"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const maxProblemFileBytes = 1 << 20

type solveOutput struct {
	RunID                  string                 `json:"run_id"`
	ProblemID              string                 `json:"problem_id"`
	Solved                 bool                   `json:"solved"`
	Proof                  string                 `json:"proof,omitempty"`
	Attempts               []domain.SolverAttempt `json:"attempts"`
	RetrievalOutputSHA256  string                 `json:"retrieval_output_sha256,omitempty"`
	RetrievalHintCount     int                    `json:"retrieval_hint_count,omitempty"`
	SourceContextSHA256    string                 `json:"source_context_sha256,omitempty"`
	SourceContextHintCount int                    `json:"source_context_hint_count,omitempty"`
}

type catalogValidationOutput struct {
	SchemaVersion      string                       `json:"schema_version"`
	Status             string                       `json:"status"`
	CapturedAt         time.Time                    `json:"captured_at"`
	ContentSHA256      string                       `json:"content_sha256"`
	SourceCount        int                          `json:"source_count"`
	ProblemCount       int                          `json:"problem_count"`
	RightsStatusCounts map[catalog.RightsStatus]int `json:"rights_status_counts"`
}

type catalogDraftFile struct {
	SchemaVersion string                  `json:"schema_version"`
	CapturedAt    time.Time               `json:"captured_at"`
	Sources       []catalog.SourceVersion `json:"sources"`
	Problems      []catalog.Problem       `json:"problems"`
}

type catalogBuildOutput struct {
	Status        string `json:"status"`
	ContentSHA256 string `json:"content_sha256"`
	SourceCount   int    `json:"source_count"`
	ProblemCount  int    `json:"problem_count"`
}

type bookScoreRequest struct {
	SchemaVersion string            `json:"schema_version"`
	Config        book.Config       `json:"config"`
	Proof         book.ProofMetrics `json:"proof"`
}

func main() {
	os.Exit(run(os.Args[1:], os.Stdout, os.Stderr))
}

func run(args []string, stdout, stderr io.Writer) int {
	if len(args) == 0 {
		fmt.Fprintln(stderr, "usage: mathcase <catalog-build|catalog-validate|case-init|telescope-rank|taste-validate|taste-split|taste-labels-build|taste-labels-validate|retrieve-local|retrieve-evaluate|score-proof|proof-dependencies|solve-local|solve-local-validate|solve-provider|attackability-forecast-validate|pose-local|falsify-local|gate-assess|m4-replay|formalizer-run|dossier-revise-m4|dossier-attach-queue-m4|dossier-attach-m6|dossier-read-m6|dossier-revise-formalizer-candidate|formalizer-assess-v3-candidate|dossier-store|dossier-audit|dossier-verify> [options]")
		return 2
	}
	switch args[0] {
	case "case-init":
		return runCaseInit(args[1:], stdout, stderr)
	case "catalog-build":
		return runCatalogBuild(args[1:], stdout, stderr)
	case "catalog-validate":
		return runCatalogValidate(args[1:], stdout, stderr)
	case "telescope-rank":
		return runTelescopeRank(args[1:], stdout, stderr)
	case "taste-split":
		return runTasteSplit(args[1:], stdout, stderr)
	case "taste-labels-build":
		return runTasteLabelsBuild(args[1:], stdout, stderr)
	case "taste-labels-validate":
		return runTasteLabelsValidate(args[1:], stdout, stderr)
	case "taste-validate":
		return runTasteValidate(args[1:], stdout, stderr)
	case "retrieve-local":
		return runRetrieveLocal(args[1:], stdout, stderr)
	case "retrieve-evaluate":
		return runRetrieveEvaluate(args[1:], stdout, stderr)
	case "score-proof":
		return runScoreProof(args[1:], stdout, stderr)
	case "proof-dependencies":
		return runProofDependencies(args[1:], stdout, stderr)
	case "solve-local":
		return runSolveLocal(args[1:], stdout, stderr)
	case "solve-local-validate":
		return runSolveLocalValidate(args[1:], stdout, stderr)
	case "solve-provider":
		return runSolveProvider(args[1:], stdout, stderr)
	case "attackability-forecast-validate":
		return runAttackabilityForecastValidate(args[1:], stdout, stderr)
	case "pose-local":
		return runPoseLocal(args[1:], stdout, stderr)
	case "falsify-local":
		return runFalsifyLocal(args[1:], stdout, stderr)
	case "gate-assess":
		return runGateAssess(args[1:], stdout, stderr)
	case "m4-replay":
		return runM4Replay(args[1:], stdout, stderr)
	case "formalizer-run":
		return runFormalizerRun(args[1:], stdout, stderr)
	case "dossier-revise-m4":
		return runDossierReviseM4(args[1:], stdout, stderr)
	case "dossier-attach-queue-m4":
		return runDossierAttachQueueM4(args[1:], stdout, stderr)
	case "dossier-attach-m6":
		return runDossierAttachM6(args[1:], stdout, stderr)
	case "dossier-read-m6":
		return runDossierReadM6(args[1:], stdout, stderr)
	case "dossier-revise-formalizer-candidate":
		return runDossierReviseFormalizerCandidate(args[1:], stdout, stderr)
	case "dossier-store":
		return runDossierStore(args[1:], stdout, stderr)
	case "formalizer-assess-v3-candidate":
		return runFormalizerAssessV3Candidate(args[1:], stdout, stderr)
	case "dossier-audit":
		return runDossierAudit(args[1:], stdout, stderr)
	case "dossier-verify":
		return runDossierVerify(args[1:], stdout, stderr)
	default:
		fmt.Fprintln(stderr, "usage: mathcase <catalog-build|catalog-validate|case-init|telescope-rank|taste-validate|taste-split|taste-labels-build|taste-labels-validate|retrieve-local|retrieve-evaluate|score-proof|proof-dependencies|solve-local|solve-local-validate|solve-provider|attackability-forecast-validate|pose-local|falsify-local|gate-assess|m4-replay|formalizer-run|dossier-revise-m4|dossier-attach-queue-m4|dossier-attach-m6|dossier-read-m6|dossier-revise-formalizer-candidate|formalizer-assess-v3-candidate|dossier-store|dossier-audit|dossier-verify> [options]")
		return 2
	}
}

func runCatalogBuild(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("catalog-build", flag.ContinueOnError)
	flags.SetOutput(stderr)
	draftPath := flags.String("draft", "", "strict JSON file with item-level M0 source and problem records")
	outputPath := flags.String("output", "", "new snapshot output file; existing files are never overwritten")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*draftPath) == "" || strings.TrimSpace(*outputPath) == "" {
		fmt.Fprintln(stderr, "catalog-build requires --draft FILE and --output NEW_FILE and accepts no positional arguments")
		return 2
	}
	data, err := readRegularInput(*draftPath, "catalog draft", maxCatalogSnapshotFile)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load catalog draft: %v\n", err)
		return 2
	}
	var draft catalogDraftFile
	if err := decodeStrictJSON(data, &draft, "catalog draft"); err != nil {
		fmt.Fprintf(stderr, "mathcase: decode catalog draft: %v\n", err)
		return 2
	}
	if draft.SchemaVersion != "mathcase-catalog-draft-v1" {
		fmt.Fprintf(stderr, "mathcase: unsupported catalog draft schema %q\n", draft.SchemaVersion)
		return 2
	}
	snapshot, err := catalog.NewSnapshot(draft.CapturedAt, draft.Sources, draft.Problems)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: build catalog snapshot: %v\n", err)
		return 2
	}
	snapshotBytes, err := json.MarshalIndent(snapshot, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode catalog snapshot: %v\n", err)
		return 2
	}
	snapshotBytes = append(snapshotBytes, '\n')
	if err := writeNewRegularOutput(*outputPath, snapshotBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: write catalog snapshot: %v\n", err)
		return 2
	}
	output, err := json.Marshal(catalogBuildOutput{
		Status: "CREATED", ContentSHA256: snapshot.ContentSHA256,
		SourceCount: len(snapshot.Sources), ProblemCount: len(snapshot.Problems),
	})
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode catalog build summary: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(append(output, '\n')); err != nil {
		fmt.Fprintf(stderr, "mathcase: write catalog build summary: %v\n", err)
		return 2
	}
	return 0
}

func runCatalogValidate(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("catalog-validate", flag.ContinueOnError)
	flags.SetOutput(stderr)
	snapshotPath := flags.String("snapshot", "", "strict JSON file containing one immutable M0 catalog snapshot")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*snapshotPath) == "" {
		fmt.Fprintln(stderr, "catalog-validate requires --snapshot FILE and accepts no positional arguments")
		return 2
	}
	snapshot, err := loadCatalogSnapshot(*snapshotPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: validate catalog snapshot: %v\n", err)
		return 2
	}
	rightsStatusCounts := map[catalog.RightsStatus]int{
		catalog.RightsUnknown:    0,
		catalog.RightsPending:    0,
		catalog.RightsCleared:    0,
		catalog.RightsRestricted: 0,
	}
	for _, source := range snapshot.Sources {
		rightsStatusCounts[source.Rights]++
	}
	output := catalogValidationOutput{
		SchemaVersion:      snapshot.SchemaVersion,
		Status:             "VALIDATED",
		CapturedAt:         snapshot.CapturedAt,
		ContentSHA256:      snapshot.ContentSHA256,
		SourceCount:        len(snapshot.Sources),
		ProblemCount:       len(snapshot.Problems),
		RightsStatusCounts: rightsStatusCounts,
	}
	encoder := json.NewEncoder(stdout)
	encoder.SetIndent("", "  ")
	if err := encoder.Encode(output); err != nil {
		fmt.Fprintf(stderr, "mathcase: encode catalog validation summary: %v\n", err)
		return 2
	}
	return 0
}

func writeNewRegularOutput(path string, data []byte) error {
	if strings.TrimSpace(path) == "" || len(data) == 0 {
		return errors.New("output path and content are required")
	}
	file, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o600)
	if err != nil {
		return fmt.Errorf("create new file without overwriting: %w", err)
	}
	createdInfo, err := file.Stat()
	if err != nil {
		_ = file.Close()
		return fmt.Errorf("inspect newly created output: %w", err)
	}
	complete := false
	defer func() {
		if !complete {
			_ = file.Close()
			currentInfo, inspectErr := os.Lstat(path)
			if inspectErr == nil && os.SameFile(createdInfo, currentInfo) {
				_ = os.Remove(path)
			}
		}
	}()
	written, err := file.Write(data)
	if err != nil {
		return fmt.Errorf("write new file: %w", err)
	}
	if written != len(data) {
		return io.ErrShortWrite
	}
	if err := file.Sync(); err != nil {
		return fmt.Errorf("flush new file: %w", err)
	}
	if err := file.Close(); err != nil {
		return fmt.Errorf("close new file: %w", err)
	}
	complete = true
	return nil
}

func runSolveLocal(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("solve-local", flag.ContinueOnError)
	flags.SetOutput(stderr)
	problemPath := flags.String("problem", "", "JSON file containing one MathProblem")
	leanProjectRoot := flags.String("lean-project", "", "selected Lake project for the formal problem")
	leanLakeCacheRoot := flags.String("lean-lake-cache", "", "optional prebuilt .lake cache matching the selected project; mounted read-only for Pantograph")
	importsValue := flags.String("imports", "", "comma-separated Lean module imports; defaults to Init")
	repositoryRoot := flags.String("repo-root", ".", "MathCase repository root")
	pythonExecutable := flags.String("python", "", "Python executable with Pantograph installed")
	dockerExecutable := flags.String("docker", "", "Docker executable; defaults to Docker on PATH")
	leanSandboxImage := flags.String("lean-sandbox-image", "", "immutable sha256 image ID for Lean checks; defaults to MATHCASE_LEAN_SANDBOX_IMAGE")
	leanSnapshotManifest := flags.String("lean-snapshot-manifest", "", "qualified Lean snapshot manifest for this invocation; no environment fallback")
	pantographSandboxImage := flags.String("pantograph-sandbox-image", "", "immutable sha256 image ID for network-disabled Pantograph search; defaults to MATHCASE_PANTOGRAPH_SANDBOX_IMAGE")
	workspaceRoot := flags.String("workspace-root", "", "local verification workspace root")
	receiptRoot := flags.String("receipt-root", "", "local verification receipt root")
	runIDValue := flags.String("run-id", "", "optional canonical run ID; otherwise generated locally")
	maxNodes := flags.Int("max-nodes", 64, "maximum Pantograph search states (1-128)")
	maxDepth := flags.Int("max-depth", 4, "maximum tactic depth (1-6)")
	searchTimeout := flags.Duration("search-timeout", 0, "total local Pantograph request budget including setup and cleanup; zero uses the bounded phase profile")
	verificationTimeout := flags.Duration("verification-timeout", 2*time.Minute, "maximum independent Lean verification duration")
	m0CatalogSnapshot := flags.String("m0-catalog-snapshot", "", "exact M0 catalog snapshot required to use a retrieval result")
	retrievalOutput := flags.String("retrieval-output", "", "optional exact retrieve-local output to validate and use as tactic-order hints")
	retrievalProofRoot := flags.String("retrieval-proof-root", "", "local root containing the exact proof files named by retrieval output")
	retrievalSourceRoot := flags.String("retrieval-source-root", "", "local root containing exact M0 source items for the retrieval declaration hints")
	localCaseContext := flags.String("local-case-context", "", "optional automatically assembled, exact local case-context record for validated source-declaration hints")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*problemPath) == "" || strings.TrimSpace(*leanProjectRoot) == "" || strings.TrimSpace(*leanSnapshotManifest) == "" {
		fmt.Fprintln(stderr, "solve-local requires --problem, --lean-project, and --lean-snapshot-manifest and accepts no positional arguments")
		return 2
	}
	if *searchTimeout < 0 || *verificationTimeout <= 0 {
		fmt.Fprintln(stderr, "search total budget cannot be negative; verification timeout must be positive")
		return 2
	}
	problem, err := loadProblem(*problemPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load problem: %v\n", err)
		return 2
	}
	var retrievalHints []string
	retrievalOutputSHA256 := ""
	if strings.TrimSpace(*retrievalOutput) != "" || strings.TrimSpace(*m0CatalogSnapshot) != "" || strings.TrimSpace(*retrievalProofRoot) != "" || strings.TrimSpace(*retrievalSourceRoot) != "" {
		if strings.TrimSpace(*retrievalOutput) == "" || strings.TrimSpace(*m0CatalogSnapshot) == "" || strings.TrimSpace(*retrievalProofRoot) == "" || strings.TrimSpace(*retrievalSourceRoot) == "" {
			fmt.Fprintln(stderr, "retrieval use requires --retrieval-output, --m0-catalog-snapshot, --retrieval-proof-root, and --retrieval-source-root together")
			return 2
		}
		retrievalHints, retrievalOutputSHA256, err = loadValidatedRetrievalHints(*retrievalOutput, *m0CatalogSnapshot, *retrievalProofRoot, *retrievalSourceRoot, problem)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: validate retrieval hints: %v\n", err)
			return 2
		}
	}
	var sourceDeclarationHints []string
	sourceContextSHA256 := ""
	if strings.TrimSpace(*localCaseContext) != "" {
		sourceDeclarationHints, sourceContextSHA256, err = application.LoadValidatedLocalCaseContextHints(*repositoryRoot, *localCaseContext, problem)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: validate local case context: %v\n", err)
			return 2
		}
	}
	runID := *runIDValue
	if runID == "" {
		runID, err = newRunID()
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: create run ID: %v\n", err)
			return 2
		}
	}
	if err := state.ValidateIdentifier("run ID", runID); err != nil {
		fmt.Fprintf(stderr, "mathcase: invalid run ID: %v\n", err)
		return 2
	}
	previousQueueRunID, hadQueueRunID := os.LookupEnv("MATHCASE_QUEUE_RUN_ID")
	if err := os.Setenv("MATHCASE_QUEUE_RUN_ID", runID); err != nil {
		fmt.Fprintf(stderr, "mathcase: bind local solver container identity: %v\n", err)
		return 2
	}
	defer func() {
		if hadQueueRunID {
			_ = os.Setenv("MATHCASE_QUEUE_RUN_ID", previousQueueRunID)
		} else {
			_ = os.Unsetenv("MATHCASE_QUEUE_RUN_ID")
		}
	}()
	imports := parseImports(*importsValue)
	runtime, err := application.NewLocalSearchRuntime(application.LocalSearchConfig{
		LocalTools: application.LocalToolsConfig{
			RepositoryRoot:           *repositoryRoot,
			PythonExecutable:         *pythonExecutable,
			DockerExecutable:         *dockerExecutable,
			LeanSandboxImage:         *leanSandboxImage,
			LeanSnapshotManifestPath: *leanSnapshotManifest,
			PantographSandboxImage:   *pantographSandboxImage,
			WorkspaceRoot:            *workspaceRoot,
			ReceiptRoot:              *receiptRoot,
		},
		Problem:                problem,
		RetrievalHints:         retrievalHints,
		RetrievalOutputSHA256:  retrievalOutputSHA256,
		SourceDeclarationHints: sourceDeclarationHints,
		SourceContextSHA256:    sourceContextSHA256,
		LeanProjectRoot:        *leanProjectRoot,
		LeanLakeCacheRoot:      *leanLakeCacheRoot,
		LeanImports:            imports,
		MaxNodes:               *maxNodes,
		MaxDepth:               *maxDepth,
		SearchTimeout:          *searchTimeout,
		VerificationTimeout:    *verificationTimeout,
	})
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: configure local search: %v\n", err)
		return 2
	}
	ctx, stop := signal.NotifyContext(context.Background(), os.Interrupt)
	defer stop()
	session, err := runtime.OpenSession()
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: open local solver session: %v\n", err)
		return 2
	}
	result, solveErr := session.Solve(ctx, runID, runtime.Problem)
	closeErr := session.Close()
	if solveErr != nil {
		if closeErr != nil {
			fmt.Fprintf(stderr, "mathcase: local search failed: %v; close solver session: %v\n", solveErr, closeErr)
		} else {
			fmt.Fprintf(stderr, "mathcase: local search failed: %v\n", solveErr)
		}
		return 2
	}
	if closeErr != nil {
		fmt.Fprintf(stderr, "mathcase: close local solver session: %v\n", closeErr)
		return 2
	}
	output := solveOutput{RunID: runID, ProblemID: problem.ID, Solved: result.Solved, Proof: result.Proof, Attempts: result.Attempts, RetrievalOutputSHA256: retrievalOutputSHA256, RetrievalHintCount: len(retrievalHints), SourceContextSHA256: sourceContextSHA256, SourceContextHintCount: len(sourceDeclarationHints)}
	encoder := json.NewEncoder(stdout)
	encoder.SetIndent("", "  ")
	if err := encoder.Encode(output); err != nil {
		fmt.Fprintf(stderr, "mathcase: encode local result: %v\n", err)
		return 2
	}
	if !result.Solved {
		return 1
	}
	return 0
}

func runPoseLocal(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("pose-local", flag.ContinueOnError)
	flags.SetOutput(stderr)
	requestPath := flags.String("request", "", "JSON file containing signed parent references and mutation options")
	dossierRoot := flags.String("dossier-root", "", "local immutable dossier store root")
	trustedSignersPath := flags.String("trusted-signers", "", "JSON file containing trusted Ed25519 public keys")
	evidenceFlags := addSignedParentEvidenceFlags(flags)
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*requestPath) == "" || strings.TrimSpace(*dossierRoot) == "" || strings.TrimSpace(*trustedSignersPath) == "" {
		fmt.Fprintln(stderr, "pose-local requires --request FILE, --dossier-root DIR, and --trusted-signers FILE; positional arguments are not accepted")
		return 2
	}
	evidencePaths, err := evidenceFlags.load()
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: configure signed-parent M8 evidence: %v\n", err)
		return 2
	}
	request, err := loadPoseRequest(*requestPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load poser request: %v\n", err)
		return 2
	}
	trustedSigners, err := loadTrustedSigners(*trustedSignersPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load trusted signer keys: %v\n", err)
		return 2
	}
	store, err := openDossierStore(*dossierRoot)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: open dossier store: %v\n", err)
		return 2
	}
	primary, err := loadSignedPoseParent(context.Background(), store, trustedSigners, evidencePaths, request.Primary)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load primary signed parent: %v\n", err)
		return 2
	}
	var secondary *poser.VerifiedTheorem
	if request.Secondary != nil {
		loaded, loadErr := loadSignedPoseParent(context.Background(), store, trustedSigners, evidencePaths, *request.Secondary)
		if loadErr != nil {
			fmt.Fprintf(stderr, "mathcase: load secondary signed parent: %v\n", loadErr)
			return 2
		}
		secondary = &loaded
	}
	result, err := poser.Generate(poser.GenerationRequest{
		Primary: primary, Secondary: secondary, Operators: request.Operators,
		MaxProposals: request.MaxProposals, GeneratedAt: request.GeneratedAt,
	})
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: generate local proposals: %v\n", err)
		return 2
	}
	encoder := json.NewEncoder(stdout)
	encoder.SetIndent("", "  ")
	if err := encoder.Encode(result); err != nil {
		fmt.Fprintf(stderr, "mathcase: encode local proposals: %v\n", err)
		return 2
	}
	if len(result.Proposals) == 0 {
		return 1
	}
	return 0
}

func runFalsifyLocal(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("falsify-local", flag.ContinueOnError)
	flags.SetOutput(stderr)
	proposalPath := flags.String("proposal", "", "JSON file containing one provenance-bound M2 proposal")
	parentsRequestPath := flags.String("parents-request", "", "original signed-parent request used to generate the proposal")
	dossierRoot := flags.String("dossier-root", "", "local immutable dossier store root for signed-parent verification")
	trustedSignersPath := flags.String("trusted-signers", "", "JSON file containing trusted Ed25519 public keys")
	evidenceFlags := addSignedParentEvidenceFlags(flags)
	leanProjectRoot := flags.String("lean-project", "", "selected Lake project for proposition checking and negation search")
	leanLakeCacheRoot := flags.String("lean-lake-cache", "", "optional prebuilt .lake cache matching the selected project; mounted read-only for Pantograph")
	importsValue := flags.String("imports", "", "comma-separated Lean module imports; defaults to Init")
	repositoryRoot := flags.String("repo-root", ".", "MathCase repository root")
	pythonExecutable := flags.String("python", "", "Python executable with Pantograph installed")
	dockerExecutable := flags.String("docker", "", "Docker executable; defaults to Docker on PATH")
	leanSandboxImage := flags.String("lean-sandbox-image", "", "immutable sha256 image ID for Lean checks; defaults to MATHCASE_LEAN_SANDBOX_IMAGE")
	leanSnapshotManifest := flags.String("lean-snapshot-manifest", "", "qualified Lean snapshot manifest for this invocation; no environment fallback")
	pantographSandboxImage := flags.String("pantograph-sandbox-image", "", "immutable sha256 image ID for network-disabled Pantograph search; defaults to MATHCASE_PANTOGRAPH_SANDBOX_IMAGE")
	workspaceRoot := flags.String("workspace-root", "", "local verification workspace root")
	receiptRoot := flags.String("receipt-root", "", "local verification receipt root")
	runIDValue := flags.String("run-id", "", "optional canonical run ID; otherwise generated locally")
	maxNodes := flags.Int("max-nodes", 64, "maximum Pantograph search states (1-128)")
	maxDepth := flags.Int("max-depth", 4, "maximum tactic depth (1-6)")
	randomizedSamples := flags.Int("random-samples", 64, "deterministic Nat/Int/Bool assignments to evaluate (1-256)")
	smtTimeout := flags.Duration("smt-timeout", 10*time.Second, "maximum optional local Z3 SMT search duration (1s-30s)")
	searchTimeout := flags.Duration("search-timeout", 0, "total local Pantograph request budget including setup and cleanup; zero uses the bounded phase profile")
	verificationTimeout := flags.Duration("verification-timeout", 2*time.Minute, "maximum independent Lean verification duration")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*proposalPath) == "" || strings.TrimSpace(*leanProjectRoot) == "" || strings.TrimSpace(*leanSnapshotManifest) == "" {
		fmt.Fprintln(stderr, "falsify-local requires --proposal, --lean-project, and --lean-snapshot-manifest and accepts no positional arguments")
		return 2
	}
	parentOptions := []string{*parentsRequestPath, *dossierRoot, *trustedSignersPath}
	providedParentOptions := 0
	for _, value := range parentOptions {
		if strings.TrimSpace(value) != "" {
			providedParentOptions++
		}
	}
	if providedParentOptions != 0 && providedParentOptions != len(parentOptions) {
		fmt.Fprintln(stderr, "signed-parent verification requires --parents-request, --dossier-root, and --trusted-signers together")
		return 2
	}
	var evidencePaths persistence.DossierEvidencePaths
	if providedParentOptions == len(parentOptions) {
		loadedEvidencePaths, evidenceErr := evidenceFlags.load()
		if evidenceErr != nil {
			fmt.Fprintf(stderr, "mathcase: configure signed-parent M8 evidence: %v\n", evidenceErr)
			return 2
		}
		evidencePaths = loadedEvidencePaths
	}
	if *searchTimeout < 0 || *verificationTimeout <= 0 || *randomizedSamples < 1 || *randomizedSamples > 256 || *smtTimeout < time.Second || *smtTimeout > 30*time.Second {
		fmt.Fprintln(stderr, "randomized sample count must be 1-256; SMT timeout must be 1s-30s; search total budget cannot be negative and verification timeout must be positive")
		return 2
	}
	proposal, err := loadProposal(*proposalPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load proposal: %v\n", err)
		return 2
	}
	var verifiedParents application.VerifiedPoseParents
	verifyParents := providedParentOptions == len(parentOptions)
	if verifyParents {
		parentRequest, requestErr := loadPoseRequest(*parentsRequestPath)
		if requestErr != nil {
			fmt.Fprintf(stderr, "mathcase: load signed-parent request: %v\n", requestErr)
			return 2
		}
		references, referenceErr := loadSignedPoseParentReferences(parentRequest)
		if referenceErr != nil {
			fmt.Fprintf(stderr, "mathcase: load signed-parent references: %v\n", referenceErr)
			return 2
		}
		store, storeErr := openDossierStore(*dossierRoot)
		if storeErr != nil {
			fmt.Fprintf(stderr, "mathcase: open dossier store: %v\n", storeErr)
			return 2
		}
		trustedSigners, signerErr := loadTrustedSigners(*trustedSignersPath)
		if signerErr != nil {
			fmt.Fprintf(stderr, "mathcase: load trusted signer keys: %v\n", signerErr)
			return 2
		}
		verifiedParents, err = (application.SignedPoseParentLoader{Dossiers: store, TrustedSigners: trustedSigners, EvidencePaths: evidencePaths}).VerifyProposal(context.Background(), proposal, references)
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: verify proposal signed parents: %v\n", err)
			return 2
		}
	}
	problem, err := proposal.NegationProblem()
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: prepare proposal negation: %v\n", err)
		return 2
	}
	runID := *runIDValue
	if runID == "" {
		runID, err = newRunID()
		if err != nil {
			fmt.Fprintf(stderr, "mathcase: create run ID: %v\n", err)
			return 2
		}
	}
	if err := state.ValidateIdentifier("run ID", runID); err != nil {
		fmt.Fprintf(stderr, "mathcase: invalid run ID: %v\n", err)
		return 2
	}
	runtime, err := application.NewLocalSearchRuntime(application.LocalSearchConfig{
		LocalTools: application.LocalToolsConfig{
			RepositoryRoot:           *repositoryRoot,
			PythonExecutable:         *pythonExecutable,
			DockerExecutable:         *dockerExecutable,
			LeanSandboxImage:         *leanSandboxImage,
			LeanSnapshotManifestPath: *leanSnapshotManifest,
			PantographSandboxImage:   *pantographSandboxImage,
			WorkspaceRoot:            *workspaceRoot,
			ReceiptRoot:              *receiptRoot,
		},
		Problem:               problem,
		LeanProjectRoot:       *leanProjectRoot,
		LeanLakeCacheRoot:     *leanLakeCacheRoot,
		LeanImports:           parseImports(*importsValue),
		MaxNodes:              *maxNodes,
		MaxDepth:              *maxDepth,
		SearchTimeout:         *searchTimeout,
		SMTTimeout:            *smtTimeout,
		VerificationTimeout:   *verificationTimeout,
		RandomizedSampleCount: *randomizedSamples,
	})
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: configure proposal falsification: %v\n", err)
		return 2
	}
	ctx, stop := signal.NotifyContext(context.Background(), os.Interrupt)
	defer stop()
	var result application.ProposalFalsificationResult
	if verifyParents {
		result, err = runtime.FalsifyProposalWithTrustedParents(ctx, runID, proposal, verifiedParents)
	} else {
		result, err = runtime.FalsifyProposal(ctx, runID, proposal)
	}
	encoder := json.NewEncoder(stdout)
	encoder.SetIndent("", "  ")
	if encodeErr := encoder.Encode(result); encodeErr != nil {
		fmt.Fprintf(stderr, "mathcase: encode proposal falsification result: %v\n", encodeErr)
		return 2
	}
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: proposal falsification incomplete: %v\n", err)
		return 2
	}
	if result.Status == application.ProposalStatementRejected {
		return 1
	}
	return 0
}

func loadProposal(path string) (poser.Proposal, error) {
	data, err := readRegularInput(path, "proposal JSON", maxProblemFileBytes)
	if err != nil {
		return poser.Proposal{}, err
	}
	var proposal poser.Proposal
	if err := decodeStrictJSON(data, &proposal, "proposal"); err != nil {
		return poser.Proposal{}, err
	}
	if err := proposal.Validate(); err != nil {
		return poser.Proposal{}, fmt.Errorf("validate proposal: %w", err)
	}
	return proposal, nil
}

func loadProblem(path string) (domain.MathProblem, error) {
	data, err := readRegularInput(path, "problem JSON", maxProblemFileBytes)
	if err != nil {
		return domain.MathProblem{}, err
	}
	var problem domain.MathProblem
	if err := decodeStrictJSON(data, &problem, "problem"); err != nil {
		return domain.MathProblem{}, err
	}
	if strings.TrimSpace(problem.ID) == "" || strings.TrimSpace(problem.Statement) == "" || strings.TrimSpace(problem.LeanStatement) == "" {
		return domain.MathProblem{}, errors.New("problem ID, informal statement, and Lean statement are required")
	}
	if err := state.ValidateIdentifier("problem ID", problem.ID); err != nil {
		return domain.MathProblem{}, err
	}
	return problem, nil
}

func parseImports(value string) []string {
	if strings.TrimSpace(value) == "" {
		return nil
	}
	parts := strings.Split(value, ",")
	imports := make([]string, 0, len(parts))
	for _, part := range parts {
		imports = append(imports, strings.TrimSpace(part))
	}
	return imports
}

func newRunID() (string, error) {
	var bytes [16]byte
	if _, err := rand.Read(bytes[:]); err != nil {
		return "", err
	}
	return "run-" + hex.EncodeToString(bytes[:]), nil
}
