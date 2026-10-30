package main

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"os"
	"os/signal"
	"path/filepath"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/application"
	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/provider"
	"github.com/DarthCeltic/MathCase/internal/solver"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const providerSolveOutputSchema = "mathcase-provider-solve-v1"

type providerSolveOutput struct {
	SchemaVersion string                 `json:"schema_version"`
	EvidenceClass string                 `json:"evidence_class"`
	RecordedAtUTC time.Time              `json:"recorded_at_utc"`
	RunID         string                 `json:"run_id"`
	ProblemID     string                 `json:"problem_id"`
	ProviderID    string                 `json:"provider_id"`
	ProtocolID    string                 `json:"protocol_id"`
	ModelID       string                 `json:"model_id"`
	Endpoint      string                 `json:"endpoint"`
	Solved        bool                   `json:"solved"`
	Proof         string                 `json:"proof,omitempty"`
	Attempts      []domain.SolverAttempt `json:"attempts"`
	CostJournal   string                 `json:"cost_journal"`
	Error         string                 `json:"error,omitempty"`
}

// runSolveProvider exposes the existing clearance-bound application session
// as a user-facing, explicitly dispatched workflow. Protocol adapters share
// one solver/cost/evidence path; Lean remains the independent oracle.
func runSolveProvider(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("solve-provider", flag.ContinueOnError)
	flags.SetOutput(stderr)
	dispatch := flags.Bool("dispatch", false, "required acknowledgement before any provider request is sent")
	preflightOnly := flags.Bool("preflight-only", false, "validate the exact provider authorization and context without sending a request")
	checkLeanStatement := flags.Bool("check-lean-statement", false, "locally typecheck the exact Lean target as Prop; never sends a provider request")
	problemPath := flags.String("problem", "", "JSON file with the exact cleared MathProblem")
	ownerAuthorizationPath := flags.String("owner-authorization", "", "owner grant text file")
	clearancePath := flags.String("input-clearance", "", "item-level provider-input clearance JSON")
	providerID := flags.String("provider", "", "explicit owner-authorized provider identity")
	protocolID := flags.String("protocol", "", "required supported protocol ID (openai-chat-completions-v1, anthropic-messages-v1, google-gemini-generate-content-v1)")
	modelID := flags.String("model", "", "exact owner-authorized model identity captured at launch")
	baseURL := flags.String("base-url", "", "explicit provider API base URL ending before its protocol endpoint path")
	apiKeyEnv := flags.String("api-key-env", "", "explicit environment variable name containing the runtime API key")
	additionalFieldsJSON := flags.String("additional-fields-json", "", "optional JSON object of protocol extension fields")
	inputPrice := flags.Int64("input-price-micros-per-million", -1, "explicit pinned input-token rate in micro-USD per million tokens")
	outputPrice := flags.Int64("output-price-micros-per-million", -1, "explicit pinned output-token rate in micro-USD per million tokens")
	perCallCeiling := flags.Int64("per-call-ceiling-micros", 10_000, "hard cost reservation for each provider request")
	maxRunCost := flags.Int64("run-ceiling-micros", 20_000, "hard spend ceiling for this problem run")
	maxSessionCost := flags.Int64("session-ceiling-micros", 30_000, "hard cumulative spend ceiling for this cost journal")
	maxCandidateCost := flags.Int64("candidate-ceiling-micros", 10_000, "hard spend ceiling for one proof candidate")
	maxProviderCalls := flags.Int("max-provider-calls", 2, "maximum paid proof proposals in this run (1 or 2)")
	maxOutputTokens := flags.Int("max-output-tokens", 512, "maximum response tokens per provider request")
	problemRunID := flags.String("run-id", "", "required unique ID for this provider-to-Lean run")
	outputPath := flags.String("output", "", "new local JSON result path; existing files are never overwritten")
	costJournalPath := flags.String("cost-journal", "", "append-only provider cost ledger path")
	providerEvidenceDir := flags.String("provider-evidence-dir", "", "directory for exact provider request, response, and call receipts")
	leanSnapshotManifest := flags.String("lean-snapshot-manifest", "", "qualified pinned Lean snapshot manifest")
	leanImportPreparation := flags.String("lean-import-preparation", "", "optional exact local import-header preparation receipt; invalid preparations use cold checking")
	leanProjectRoot := flags.String("lean-project", "", "optional local Lake project to compare against the snapshot")
	leanSandboxImage := flags.String("lean-sandbox-image", "", "immutable sha256 Lean sandbox image ID")
	leanDocker := flags.String("docker", "", "Docker executable; defaults to Docker on PATH")
	leanReceiptRoot := flags.String("lean-receipt-root", "", "directory for new pinned Lean verification receipts")
	leanWorkspaceRoot := flags.String("lean-workspace-root", "", "optional disposable local workspace root")
	leanImports := flags.String("imports", "Init", "comma-separated Lean imports for the pinned verifier")
	leanTimeout := flags.Duration("lean-timeout", 5*time.Minute, "maximum time for each isolated Lean verification (bounded to 10 minutes)")
	requestTimeout := flags.Duration("request-timeout", 2*time.Minute, "maximum time for each provider request")
	toolchain := flags.String("toolchain", "leanprover/lean4:v4.33.1", "expected pinned Lean toolchain")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if !*dispatch && !*preflightOnly {
		fmt.Fprintln(stderr, "solve-provider requires --dispatch; no provider request was sent")
		return 2
	}
	if *dispatch && *preflightOnly {
		fmt.Fprintln(stderr, "solve-provider accepts either --dispatch or --preflight-only, not both")
		return 2
	}
	if strings.TrimSpace(*providerID) == "" || strings.TrimSpace(*protocolID) == "" || strings.TrimSpace(*modelID) == "" ||
		strings.TrimSpace(*baseURL) == "" || strings.TrimSpace(*apiKeyEnv) == "" {
		fmt.Fprintln(stderr, "solve-provider requires explicit --provider, --protocol, --model, --base-url, and --api-key-env values; no provider request was sent")
		return 2
	}
	endpoint, endpointErr := provider.BuildProofCompletionEndpoint(*protocolID, *baseURL, *modelID)
	if endpointErr != nil {
		fmt.Fprintf(stderr, "solve-provider protocol %q is unsupported; no provider request was sent\n", *protocolID)
		return 2
	}
	if (*protocolID == provider.ProtocolAnthropicMessages || *protocolID == provider.ProtocolGeminiGenerateContent) && strings.TrimSpace(*additionalFieldsJSON) != "" {
		fmt.Fprintln(stderr, "solve-provider native protocol refuses unreviewed protocol extension fields; no provider request was sent")
		return 2
	}
	if *inputPrice < 0 || *outputPrice < 0 {
		fmt.Fprintln(stderr, "solve-provider requires explicit non-negative --input-price-micros-per-million and --output-price-micros-per-million values; no provider request was sent")
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*problemPath) == "" || strings.TrimSpace(*ownerAuthorizationPath) == "" ||
		strings.TrimSpace(*clearancePath) == "" || strings.TrimSpace(*problemRunID) == "" || strings.TrimSpace(*outputPath) == "" ||
		strings.TrimSpace(*costJournalPath) == "" || strings.TrimSpace(*providerEvidenceDir) == "" ||
		strings.TrimSpace(*leanSnapshotManifest) == "" || strings.TrimSpace(*leanSandboxImage) == "" || strings.TrimSpace(*leanReceiptRoot) == "" {
		fmt.Fprintln(stderr, "solve-provider requires --problem, --owner-authorization, --input-clearance, --run-id, --output, --cost-journal, --provider-evidence-dir, --lean-snapshot-manifest, --lean-sandbox-image, and --lean-receipt-root; positional arguments are not accepted")
		return 2
	}
	if *perCallCeiling <= 0 || *maxRunCost <= 0 || *maxSessionCost <= 0 || *maxCandidateCost <= 0 || *maxProviderCalls < 1 || *maxProviderCalls > 2 || *maxOutputTokens <= 0 || *leanTimeout <= 0 || *leanTimeout > 10*time.Minute || *requestTimeout < time.Second || *requestTimeout > 10*time.Minute {
		fmt.Fprintln(stderr, "solve-provider has invalid price, budget, token, or timeout limits")
		return 2
	}
	if err := state.ValidateIdentifier("run ID", *problemRunID); err != nil {
		fmt.Fprintf(stderr, "mathcase: invalid provider run ID: %v\n", err)
		return 2
	}
	resolvedOutputPath, err := preflightNewLocalOutputPath(*outputPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: output preflight failed before provider dispatch: %v\n", err)
		return 2
	}
	workspaceRoot := providerLeanWorkspaceRoot(*leanWorkspaceRoot, resolvedOutputPath)
	problem, err := loadProblem(*problemPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load cleared problem: %v\n", err)
		return 2
	}
	if err := solver.ValidateLeanStatement(problem.LeanStatement); err != nil {
		fmt.Fprintf(stderr, "mathcase: unsupported Lean target before provider dispatch: %v; no provider request was sent\n", err)
		return 2
	}
	ownerBytes, err := readRegularInput(*ownerAuthorizationPath, "owner authorization", application.MaxExternalAuthorizationBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load owner authorization: %v\n", err)
		return 2
	}
	clearanceBytes, err := readRegularInput(*clearancePath, "item input clearance", application.MaxExternalClearanceBytes)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load item input clearance: %v\n", err)
		return 2
	}
	additionalFields := make(map[string]json.RawMessage)
	if strings.TrimSpace(*additionalFieldsJSON) != "" {
		if err := decodeStrictJSON([]byte(*additionalFieldsJSON), &additionalFields, "provider extension fields"); err != nil {
			fmt.Fprintf(stderr, "mathcase: decode provider extension fields: %v\n", err)
			return 2
		}
	}
	imports := parseImports(*leanImports)
	authorization := &application.ExternalSolverAuthorization{
		ProviderID:               *providerID,
		ProtocolID:               *protocolID,
		ModelID:                  *modelID,
		EndpointURL:              endpoint,
		PerCallCostCeilingMicros: *perCallCeiling,
		OwnerAuthorizationPath:   *ownerAuthorizationPath,
		OwnerAuthorizationBytes:  ownerBytes,
		OwnerAuthorizationSHA256: providerSolveSHA256(ownerBytes),
		ClearanceArtifacts: []application.ExternalInputClearanceArtifact{{
			Path: *clearancePath, Bytes: clearanceBytes,
		}},
		AllowedProblems: []domain.MathProblem{problem},
	}
	verifier := solver.LeanVerifier{
		DockerExecutable:             *leanDocker,
		SandboxImage:                 *leanSandboxImage,
		SnapshotManifestPath:         *leanSnapshotManifest,
		ImportPreparationReceiptPath: *leanImportPreparation,
		ProjectRoot:                  *leanProjectRoot,
		WorkspaceRoot:                workspaceRoot,
		ReceiptRoot:                  *leanReceiptRoot,
		ExpectedToolchain:            *toolchain,
		Imports:                      imports,
		Timeout:                      *leanTimeout,
	}
	if *dispatch || *checkLeanStatement {
		// The statement gate performs a pinned-image version probe and then a
		// separate Lean elaboration. Give both bounded phases their own timeout
		// plus a small process margin; a single-phase outer deadline can cancel
		// a valid first import before either phase's own limit is reached.
		statementContext, cancel := context.WithTimeout(context.Background(), 2**leanTimeout+30*time.Second)
		statementReceipt, checkErr := verifier.CheckProposition(statementContext, problem)
		cancel()
		if checkErr != nil {
			fmt.Fprintf(stderr, "mathcase: exact Lean statement preflight failed before provider dispatch: %v; no provider request was sent\n", checkErr)
			return 2
		}
		if !statementReceipt.TypecheckPassed {
			fmt.Fprintf(stderr, "mathcase: exact Lean target did not elaborate as a proposition; saved local receipt %s; no provider request was sent\n", statementReceipt.EvidenceID)
			return 2
		}
	}
	sessionConfig := application.ProviderProofSessionConfig{
		ProtocolID:       *protocolID,
		MaxProviderCalls: *maxProviderCalls,
		CostJournalPath:  *costJournalPath,
		BudgetLimits: budget.Limits{
			MaxRunMicros: *maxRunCost, MaxSessionMicros: *maxSessionCost, MaxCandidateMicros: *maxCandidateCost,
		},
		Provider: solver.ProviderProofSolverTransportConfig{
			ProviderID: *providerID, ModelID: *modelID, BaseURL: *baseURL, APIKeyEnv: *apiKeyEnv,
			Price:         budget.Price{Known: true, InputPerMillionMicros: *inputPrice, OutputPerMillionMicros: *outputPrice},
			MaxCostMicros: *perCallCeiling, MaxOutputTokens: *maxOutputTokens, AdditionalFields: additionalFields,
			Timeout: *requestTimeout, EvidenceDir: *providerEvidenceDir,
		},
		Verifier: verifier, Toolchain: *toolchain, ExternalAuthorization: authorization,
	}
	session, err := application.OpenProviderProofSession(sessionConfig)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: open clearance-bound provider session: %v\n", err)
		return 2
	}
	if *preflightOnly {
		if err := session.Close(); err != nil {
			fmt.Fprintf(stderr, "mathcase: close provider preflight: %v\n", err)
			return 2
		}
		fmt.Fprintln(stdout, "provider authorization and exact prompt context passed local preflight; no provider request was sent")
		return 0
	}
	ctx, stop := signal.NotifyContext(context.Background(), os.Interrupt)
	defer stop()
	result, solveErr := session.Solve(ctx, *problemRunID, problem)
	closeErr := session.Close()
	output := providerSolveOutput{
		SchemaVersion: providerSolveOutputSchema,
		EvidenceClass: "PROVIDER_CALLS_WITH_PINNED_LEAN_VERIFICATION",
		RecordedAtUTC: time.Now().UTC(), RunID: *problemRunID, ProblemID: problem.ID,
		ProviderID: *providerID, ProtocolID: *protocolID, ModelID: *modelID, Endpoint: endpoint,
		Solved: result.Solved, Proof: result.Proof, Attempts: result.Attempts, CostJournal: *costJournalPath,
	}
	if solveErr != nil {
		output.Error = solveErr.Error()
	}
	if closeErr != nil {
		output.Error = strings.TrimSpace(strings.Join([]string{output.Error, "close provider session: " + closeErr.Error()}, "; "))
	}
	encoded, err := json.MarshalIndent(output, "", "  ")
	if err == nil {
		encoded = append(encoded, '\n')
		err = writeNewRegularOutput(resolvedOutputPath, encoded)
	}
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: persist provider run summary: %v; provider call and Lean receipts remain in their own evidence paths\n", err)
		return 2
	}
	if _, err := fmt.Fprintf(stdout, "%s\n", resolvedOutputPath); err != nil {
		fmt.Fprintf(stderr, "mathcase: print result path: %v\n", err)
		return 2
	}
	if solveErr != nil || closeErr != nil {
		fmt.Fprintf(stderr, "mathcase: provider run ended with a recorded error: %s\n", output.Error)
		return 2
	}
	if !result.Solved {
		return 1
	}
	return 0
}

func providerLeanWorkspaceRoot(configured, resultPath string) string {
	if root := strings.TrimSpace(configured); root != "" {
		return root
	}
	return filepath.Join(filepath.Dir(resultPath), "lean-workspaces")
}

func preflightNewLocalOutputPath(path string) (string, error) {
	if strings.TrimSpace(path) == "" || strings.ContainsAny(path, "\x00\r\n") {
		return "", errors.New("a local output path is required")
	}
	abs, err := filepath.Abs(path)
	if err != nil {
		return "", err
	}
	if strings.HasPrefix(filepath.VolumeName(abs), `\\`) {
		return "", errors.New("provider run output must use local storage")
	}
	parent, err := filepath.EvalSymlinks(filepath.Dir(abs))
	if err != nil {
		return "", fmt.Errorf("output directory must already exist: %w", err)
	}
	if strings.HasPrefix(filepath.VolumeName(parent), `\\`) {
		return "", errors.New("provider run output directory resolves to network storage")
	}
	resolved := filepath.Join(parent, filepath.Base(abs))
	if _, err := os.Lstat(resolved); err == nil {
		return "", errors.New("provider run output already exists and will not be overwritten")
	} else if !errors.Is(err, os.ErrNotExist) {
		return "", fmt.Errorf("inspect provider run output path: %w", err)
	}
	return resolved, nil
}

func providerSolveSHA256(value []byte) string {
	digest := sha256.Sum256(value)
	return hex.EncodeToString(digest[:])
}
