package main

import (
	"context"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"os"
	"os/signal"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/formalizer"
	"github.com/DarthCeltic/MathCase/internal/provider"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

const (
	formalizerRunSummarySchema = "mathcase-formalizer-run-summary-v1"
	formalizerToolchain        = "leanprover/lean4:v4.33.1"
)

type formalizerRunSummary struct {
	SchemaVersion            string                      `json:"schema_version"`
	Status                   string                      `json:"status"`
	ClaimBoundary            string                      `json:"claim_boundary"`
	ProblemID                string                      `json:"problem_id"`
	CandidateID              string                      `json:"candidate_id"`
	CandidateRevision        string                      `json:"candidate_revision_sha256,omitempty"`
	ResultStatus             string                      `json:"candidate_result_status,omitempty"`
	FailureClass             string                      `json:"failure_class,omitempty"`
	Model                    string                      `json:"model,omitempty"`
	ProviderID               string                      `json:"provider_id,omitempty"`
	ProtocolID               string                      `json:"protocol_id,omitempty"`
	Endpoint                 string                      `json:"endpoint,omitempty"`
	ModelCapturedAtUTC       *time.Time                  `json:"model_identity_captured_at_utc,omitempty"`
	RunReceiptID             string                      `json:"run_receipt_id,omitempty"`
	LeanCheckEvidenceID      string                      `json:"lean_check_evidence_id,omitempty"`
	Artifact                 *formalizer.ArtifactReceipt `json:"artifact,omitempty"`
	M0SnapshotSHA256         string                      `json:"m0_snapshot_sha256,omitempty"`
	ClearanceSHA256          string                      `json:"clearance_register_sha256,omitempty"`
	RouteAuthorizationID     string                      `json:"route_authorization_id,omitempty"`
	RouteAuthorizationSHA256 string                      `json:"route_authorization_sha256,omitempty"`
	CostJournalPath          string                      `json:"cost_journal_path"`
	CostRecordID             string                      `json:"cost_record_id,omitempty"`
}

type repeatedStringFlag []string

func (values *repeatedStringFlag) String() string { return strings.Join(*values, ",") }
func (values *repeatedStringFlag) Set(value string) error {
	if strings.TrimSpace(value) == "" || strings.ContainsAny(value, "\x00\r\n") {
		return errors.New("value must be non-empty single-line text")
	}
	*values = append(*values, value)
	return nil
}

// runFormalizerRun is the single production composition for the existing
// formalizer. It requires explicit dispatch, an operation-scoped item grant,
// an exact M0/source/clearance bundle, a durable cost ledger, and the sealed
// isolated Lean snapshot. It never prints the runtime API key or raw model text.
func runFormalizerRun(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("formalizer-run", flag.ContinueOnError)
	flags.SetOutput(stderr)
	dispatch := flags.Bool("dispatch", false, "required explicit authorization to make one provider call after item-clearance preflight")
	requestPath := flags.String("request", "", "preallocated strict formalizer request JSON")
	m0Path := flags.String("m0-snapshot", "", "exact M0 catalog snapshot JSON")
	sourcePath := flags.String("source-item", "", "exact raw M0 source-item bytes")
	clearancePath := flags.String("clearance-register", "", "exact item-level provider-input clearance register")
	routeAuthorizationPath := flags.String("route-authorization", "", "owner-decision record binding one exact formalization item to a provider route and cost envelope")
	artifactRoot := flags.String("artifact-root", "", "durable content-addressed formalizer store")
	costJournalPath := flags.String("cost-journal", "", "durable provider cost ledger JSONL")
	providerID := flags.String("provider", "", "explicit provider identity for this call")
	providerSurface := flags.String("provider-surface", "", "human-readable provider surface recorded in the run receipt")
	protocolID := flags.String("protocol", "", "protocol ID: openai-chat-completions-v1, anthropic-messages-v1, or google-gemini-generate-content-v1")
	baseURL := flags.String("base-url", "", "explicit provider API base URL, ending before the protocol endpoint path")
	apiKeyEnv := flags.String("api-key-env", "", "explicit environment variable containing the runtime provider key")
	modelID := flags.String("model", "", "exact model ID to capture at launch")
	accountProfile := flags.String("account-profile", "", "non-secret billing profile label for the cost ledger")
	maxOutputTokens := flags.Int("max-output-tokens", 0, "maximum generated response tokens")
	priceInput := flags.Int64("price-input-micros-per-million", -1, "known input price in micro-USD per million tokens")
	priceOutput := flags.Int64("price-output-micros-per-million", -1, "known output price in micro-USD per million tokens")
	callCeiling := flags.Int64("call-ceiling-micros", 0, "hard cost ceiling for this single call")
	runBudget := flags.Int64("run-budget-micros", 0, "hard cost budget for the preallocated run")
	sessionBudget := flags.Int64("session-budget-micros", 0, "hard cost budget for the cost-journal session")
	candidateBudget := flags.Int64("candidate-budget-micros", 0, "hard cost budget for this candidate")
	leanDocker := flags.String("lean-docker", "", "Docker executable for isolated Lean checks")
	leanImage := flags.String("lean-image", "", "immutable sha256 image ID bound by the Lean snapshot")
	leanManifest := flags.String("lean-snapshot-manifest", "", "qualified snapshot manifest path")
	leanWorkspace := flags.String("lean-workspace-root", "", "writable isolated Lean workspace root")
	leanReceiptRoot := flags.String("lean-receipt-root", "", "Lean execution receipt directory")
	leanImports := repeatedStringFlag{}
	flags.Var(&leanImports, "lean-import", "explicit import in the pinned Lean snapshot; repeat for each import")
	callTimeoutSeconds := flags.Int("call-timeout-seconds", 180, "provider request timeout in seconds")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if !*dispatch {
		fmt.Fprintln(stderr, "formalizer-run refuses to start without explicit --dispatch")
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*requestPath) == "" || strings.TrimSpace(*m0Path) == "" ||
		strings.TrimSpace(*sourcePath) == "" || strings.TrimSpace(*clearancePath) == "" ||
		strings.TrimSpace(*routeAuthorizationPath) == "" ||
		strings.TrimSpace(*artifactRoot) == "" || strings.TrimSpace(*costJournalPath) == "" ||
		strings.TrimSpace(*providerID) == "" || strings.TrimSpace(*providerSurface) == "" ||
		strings.TrimSpace(*protocolID) == "" || strings.TrimSpace(*baseURL) == "" || strings.TrimSpace(*apiKeyEnv) == "" ||
		strings.TrimSpace(*modelID) == "" || strings.TrimSpace(*accountProfile) == "" || *maxOutputTokens <= 0 ||
		*priceInput < 0 || *priceOutput < 0 || *callCeiling <= 0 || *runBudget <= 0 ||
		*sessionBudget <= 0 || *candidateBudget <= 0 || *leanDocker == "" || *leanImage == "" ||
		*leanManifest == "" || *leanWorkspace == "" || *leanReceiptRoot == "" || len(leanImports) == 0 {
		fmt.Fprintln(stderr, "formalizer-run requires exact request/M0/source/clearance and route-authorization inputs, durable stores, model price and ceilings, and a pinned Lean snapshot configuration")
		return 2
	}
	if *callTimeoutSeconds < 1 || *callTimeoutSeconds > 600 {
		fmt.Fprintln(stderr, "formalizer-run --call-timeout-seconds must be between 1 and 600")
		return 2
	}
	if *callCeiling > *runBudget || *callCeiling > *sessionBudget || *callCeiling > *candidateBudget {
		fmt.Fprintln(stderr, "formalizer-run call ceiling exceeds at least one declared budget")
		return 2
	}

	requestBytes, err := readRegularInput(*requestPath, "formalizer request", maxProblemFileBytes)
	if err != nil {
		return formalizerRunInputError(stderr, "read request", err)
	}
	var request formalizer.Request
	if err := decodeStrictJSON(requestBytes, &request, "formalizer request"); err != nil {
		return formalizerRunInputError(stderr, "decode request", err)
	}
	if err := request.Validate(); err != nil {
		return formalizerRunInputError(stderr, "validate request", err)
	}
	m0Bytes, err := readRegularInput(*m0Path, "M0 catalog snapshot", maxCatalogSnapshotFile)
	if err != nil {
		return formalizerRunInputError(stderr, "read M0 snapshot", err)
	}
	var snapshot catalog.Snapshot
	if err := decodeStrictJSON(m0Bytes, &snapshot, "M0 catalog snapshot"); err != nil {
		return formalizerRunInputError(stderr, "decode M0 snapshot", err)
	}
	if err := snapshot.Validate(); err != nil {
		return formalizerRunInputError(stderr, "validate M0 snapshot", err)
	}
	if snapshot.ContentSHA256 != request.Source.CatalogSnapshotSHA256 {
		fmt.Fprintln(stderr, "formalizer-run request is not bound to the exact supplied M0 snapshot")
		return 2
	}
	problem, exists := findFormalizerCatalogProblem(snapshot, request.ProblemID)
	if !exists || problem.InformalStatement != request.Source.Statement {
		fmt.Fprintln(stderr, "formalizer-run target statement is not the exact supplied M0 item")
		return 2
	}
	if strings.TrimSpace(problem.LeanStatement) != "" || problem.StatementAudit.Passed {
		fmt.Fprintln(stderr, "formalizer-run requires an M0 source-only item without a canonical Lean statement")
		return 2
	}
	sourceID, ok := findFormalizerSourceID(snapshot, problem.SourceIDs, request.Source)
	if !ok {
		fmt.Fprintln(stderr, "formalizer-run source pin does not identify exactly one M0 source linked to the target")
		return 2
	}
	sourceBytes, err := readRegularInput(*sourcePath, "raw M0 source item", maxProblemFileBytes)
	if err != nil {
		return formalizerRunInputError(stderr, "read source item", err)
	}
	clearanceBytes, err := readRegularInput(*clearancePath, "provider-input clearance register", maxProblemFileBytes)
	if err != nil {
		return formalizerRunInputError(stderr, "read clearance register", err)
	}
	preflight := formalizer.PinnedProviderInputPreflight{
		Snapshot: snapshot, ClearanceRegisterBytes: clearanceBytes,
		SourceItemBytes: map[string][]byte{sourceID: sourceBytes},
	}
	if err := preflight.VerifyProviderInput(context.Background(), request); err != nil {
		fmt.Fprintf(stderr, "formalizer-run pre-dispatch clearance refused: %v\n", err)
		return 2
	}
	routeAuthorization, err := formalizer.LoadProviderRouteAuthorization(*routeAuthorizationPath)
	if err != nil {
		return formalizerRunInputError(stderr, "read route authorization", err)
	}
	endpoint, err := provider.BuildProofCompletionEndpoint(*protocolID, *baseURL, *modelID)
	if err != nil {
		return formalizerRunInputError(stderr, "resolve authorized provider endpoint", err)
	}
	routeBinding := formalizer.ProviderRouteBinding{
		ProviderID: *providerID, ProtocolID: *protocolID, Endpoint: endpoint, ModelID: *modelID,
		CallCeilingMicros: *callCeiling, MaxOutputTokens: *maxOutputTokens,
		Price: budget.Price{Known: true, InputPerMillionMicros: *priceInput, OutputPerMillionMicros: *priceOutput},
	}
	if err := routeAuthorization.ValidateForRequest(routeBinding, request, time.Now().UTC()); err != nil {
		fmt.Fprintf(stderr, "formalizer-run route-authorization preflight refused before credential lookup: %v\n", err)
		return 2
	}

	store, err := formalizer.NewArtifactStore(*artifactRoot)
	if err != nil {
		fmt.Fprintf(stderr, "formalizer-run open durable artifact store: %v\n", err)
		return 2
	}
	limits := budget.Limits{MaxRunMicros: *runBudget, MaxSessionMicros: *sessionBudget, MaxCandidateMicros: *candidateBudget}
	costs, err := budget.OpenCostSession(*costJournalPath, limits)
	if err != nil {
		fmt.Fprintf(stderr, "formalizer-run open cost ledger: %v\n", err)
		return 2
	}
	closed := false
	defer func() {
		if !closed {
			_ = costs.Close()
		}
	}()
	perRunBudget, err := costs.RunBudgetFor(request.PlannedReceiptID)
	if err != nil {
		fmt.Fprintf(stderr, "formalizer-run restore run budget: %v\n", err)
		return 2
	}
	generator, err := formalizer.NewProviderCandidateGeneratorFromEnvironment(formalizer.ProviderCandidateGeneratorConfig{
		ProviderID: *providerID, Surface: *providerSurface, ProtocolID: *protocolID,
		BaseURL: *baseURL, APIKeyEnv: *apiKeyEnv,
		ModelID: *modelID, AccountProfile: *accountProfile, MaxOutputTokens: *maxOutputTokens,
		Price:             budget.Price{Known: true, InputPerMillionMicros: *priceInput, OutputPerMillionMicros: *priceOutput},
		CostCeilingMicros: *callCeiling, RunBudget: perRunBudget, CostJournal: costs.Journal(),
		Timeout: time.Duration(*callTimeoutSeconds) * time.Second, RouteAuthorization: routeAuthorization,
		AuthorizedRequest: &request,
	})
	if err != nil {
		_ = costs.Close()
		closed = true
		fmt.Fprintf(stderr, "formalizer-run configure provider transport: %v\n", err)
		return 2
	}
	leanChecker := solver.LeanVerifier{
		DockerExecutable: *leanDocker, SandboxImage: *leanImage,
		SnapshotManifestPath: *leanManifest, WorkspaceRoot: *leanWorkspace,
		ReceiptRoot: *leanReceiptRoot, ExpectedToolchain: formalizerToolchain,
		Imports: append([]string(nil), leanImports...),
	}
	frontend := formalizer.Frontend{Generator: generator, Checker: leanChecker, ClearanceVerifier: preflight}
	ctx, stop := signal.NotifyContext(context.Background(), os.Interrupt)
	result, artifactReceipt, generationErr := frontend.GenerateAndPersist(ctx, request, store, formalizer.ArtifactEvidenceInputs{
		CatalogSnapshotBytes: m0Bytes, SourceItemBytes: sourceBytes, ClearanceRegisterBytes: clearanceBytes,
		ProviderRouteAuthorizationBytes: routeAuthorization.Bytes,
	})
	stop()
	closeErr := costs.Close()
	closed = true
	if result.SchemaVersion != formalizer.ResultSchemaVersion || artifactReceipt.ArtifactSHA256 == "" {
		if generationErr != nil {
			fmt.Fprintf(stderr, "formalizer-run ended before a durable result: %v\n", generationErr)
		} else {
			fmt.Fprintln(stderr, "formalizer-run ended before a durable result")
		}
		if closeErr != nil {
			fmt.Fprintf(stderr, "formalizer-run close cost ledger: %v\n", closeErr)
		}
		return 1
	}
	status := "SAVED_CANDIDATE"
	if result.Status != "PROPOSITION_ELABORATED" {
		status = "SAVED_NONPASSING_CANDIDATE"
	}
	modelCaptured := result.RunReceipt.ModelIdentityCapturedAtUTC
	summary := formalizerRunSummary{
		SchemaVersion: formalizerRunSummarySchema, Status: status,
		ClaimBoundary: "Candidate-only. Lean elaboration means the proposition parses as Prop; it is not a proof, a V3 fidelity pass, or a discovery claim.",
		ProblemID:     request.ProblemID, CandidateID: request.CandidateID,
		CandidateRevision: result.CandidateRevision.SHA256, ResultStatus: result.Status,
		FailureClass: result.FailureClass, Model: result.RunReceipt.Model,
		ProviderID: result.ProviderID, ProtocolID: result.ProviderProtocolID, Endpoint: result.ProviderEndpoint,
		ModelCapturedAtUTC: modelCaptured, RunReceiptID: result.RunReceipt.ReceiptID,
		CostJournalPath: *costJournalPath, CostRecordID: result.RunReceipt.CostRecordID,
		M0SnapshotSHA256:         request.Source.CatalogSnapshotSHA256,
		ClearanceSHA256:          request.InputClearance.EvidenceSHA256,
		RouteAuthorizationID:     result.RouteAuthorization.AuthorizationID,
		RouteAuthorizationSHA256: result.RouteAuthorization.SHA256,
		Artifact:                 &artifactReceipt,
	}
	if result.StatementCheck != nil {
		summary.LeanCheckEvidenceID = result.StatementCheck.EvidenceID
	}
	encoded, err := json.Marshal(summary)
	if err != nil {
		fmt.Fprintf(stderr, "formalizer-run encode summary: %v\n", err)
		return 1
	}
	if _, err := stdout.Write(append(encoded, '\n')); err != nil {
		fmt.Fprintf(stderr, "formalizer-run write summary: %v\n", err)
		return 1
	}
	if closeErr != nil {
		fmt.Fprintf(stderr, "formalizer-run saved the artifact but cost-ledger close failed: %v\n", closeErr)
		return 1
	}
	if generationErr != nil {
		fmt.Fprintf(stderr, "formalizer-run saved a nonpassing result: %v\n", generationErr)
		return 1
	}
	return 0
}

func findFormalizerCatalogProblem(snapshot catalog.Snapshot, problemID string) (catalog.Problem, bool) {
	var found catalog.Problem
	count := 0
	for _, problem := range snapshot.Problems {
		if problem.ID == problemID {
			found = problem
			count++
		}
	}
	return found, count == 1
}

func findFormalizerSourceID(snapshot catalog.Snapshot, linkedIDs []string, pin domain.V3SourceStatementPin) (string, bool) {
	linked := make(map[string]struct{}, len(linkedIDs))
	for _, id := range linkedIDs {
		linked[id] = struct{}{}
	}
	matched := ""
	for _, source := range snapshot.Sources {
		if _, ok := linked[source.ID]; !ok || source.URL != pin.URL || source.ItemLocator != pin.ItemLocator ||
			source.Revision != pin.Revision || source.ContentSHA256 != pin.RawItemSHA256 {
			continue
		}
		if matched != "" {
			return "", false
		}
		matched = source.ID
	}
	return matched, matched != ""
}

func formalizerRunInputError(stderr io.Writer, operation string, err error) int {
	fmt.Fprintf(stderr, "formalizer-run %s: %v\n", operation, err)
	return 2
}
