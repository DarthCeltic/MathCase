package solver

import (
	"bytes"
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"path/filepath"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

const (
	pantographSearchEngine  = "pantograph-local-bfs-v2"
	defaultSearchMaxNodes   = 64
	defaultSearchMaxDepth   = 4
	maxSearchMaxNodes       = 128
	maxSearchMaxDepth       = 6
	leanToolchainProbe      = 5 * time.Second
	leanEnvironmentBudget   = 25 * time.Second
	pantographStartupBudget = 480 * time.Second
	initialGoalBudget       = 25 * time.Second
	actualSearchBudget      = 25 * time.Second
	tacticCallBudget        = 4 * time.Second
	runtimeIdentityBudget   = 10 * time.Second
	pythonCleanupGrace      = 4 * time.Second
	dockerSetupBudget       = 120 * time.Second
	dockerCleanupGrace      = 10 * time.Second
	launchMargin            = 1 * time.Second
	maxSearchOutputBytes    = 256 << 10
	maxSearchRequestBytes   = 128 << 10
	maxSearchStatementBytes = 64 << 10
)

// PantographSearchSolver explores a goal-aware, bounded Lean-core tactic set.
// Every solved candidate still passes through Cascade's independent verifier.
type PantographSearchSolver struct {
	PythonExecutable       string
	DockerExecutable       string
	SandboxImage           string
	ProjectRoot            string
	LeanProjectRoot        string
	LeanLakeCacheRoot      string
	Imports                []string
	RetrievalHints         []string
	RetrievalOutputSHA256  string
	SourceDeclarationHints []string
	SourceContextSHA256    string
	MaxNodes               int
	MaxDepth               int
	// Timeout is the total local request wall-clock budget, including bounded
	// setup and cleanup; zero selects the route-specific phase profile.
	Timeout time.Duration
}

type pantographSearchResponse struct {
	Status          string                  `json:"status"`
	Proof           string                  `json:"proof"`
	Metrics         domain.SearchMetrics    `json:"metrics"`
	ErrorClass      string                  `json:"error_class,omitempty"`
	RuntimeIdentity *domain.RuntimeIdentity `json:"runtime_identity,omitempty"`
}

type pantographPhaseBudgets struct {
	LeanToolchainProbeSeconds        int `json:"lean_toolchain_probe_seconds"`
	LeanEnvironmentResolutionSeconds int `json:"lean_environment_resolution_seconds"`
	PantographStartupSeconds         int `json:"pantograph_startup_seconds"`
	InitialGoalSeconds               int `json:"initial_goal_seconds"`
	SearchSeconds                    int `json:"search_seconds"`
	TacticCallSeconds                int `json:"tactic_call_seconds"`
	RuntimeIdentityCaptureSeconds    int `json:"runtime_identity_capture_seconds"`
	PythonCleanupGraceSeconds        int `json:"python_cleanup_grace_seconds"`
}

func currentPantographPhaseBudgets() pantographPhaseBudgets {
	return pantographPhaseBudgets{
		LeanToolchainProbeSeconds:        int(leanToolchainProbe / time.Second),
		LeanEnvironmentResolutionSeconds: int(leanEnvironmentBudget / time.Second),
		PantographStartupSeconds:         int(pantographStartupBudget / time.Second),
		InitialGoalSeconds:               int(initialGoalBudget / time.Second),
		SearchSeconds:                    int(actualSearchBudget / time.Second),
		TacticCallSeconds:                int(tacticCallBudget / time.Second),
		RuntimeIdentityCaptureSeconds:    int(runtimeIdentityBudget / time.Second),
		PythonCleanupGraceSeconds:        int(pythonCleanupGrace / time.Second),
	}
}

func resolvePantographSearchBudget(requested time.Duration, docker bool) (domain.PantographSearchBudgetProfile, time.Duration, error) {
	dockerSetup := time.Duration(0)
	dockerCleanup := time.Duration(0)
	if docker {
		dockerSetup = dockerSetupBudget
		dockerCleanup = dockerCleanupGrace
	}
	hostBase := dockerSetup + leanToolchainProbe + leanEnvironmentBudget + runtimeIdentityBudget + pantographStartupBudget + initialGoalBudget + actualSearchBudget + pythonCleanupGrace + launchMargin
	minimumTotal := hostBase + dockerCleanup
	if requested < 0 {
		return domain.PantographSearchBudgetProfile{}, 0, errors.New("solver: Pantograph total request budget cannot be negative")
	}
	total := requested
	if total == 0 {
		total = minimumTotal
	}
	if total < minimumTotal {
		return domain.PantographSearchBudgetProfile{}, 0, fmt.Errorf(
			"solver: explicit Pantograph total request budget %s is insufficient for the bounded phase profile (%s required)",
			total, minimumTotal,
		)
	}
	hostProcess := total - dockerCleanup
	profile := domain.PantographSearchBudgetProfile{
		SchemaVersion:           domain.PantographSearchBudgetSchemaV1,
		RequestTotalNanos:       int64(total),
		DockerSetupNanos:        int64(dockerSetup),
		LeanToolchainProbeNanos: int64(leanToolchainProbe),
		LeanEnvironmentNanos:    int64(leanEnvironmentBudget),
		PantographStartupNanos:  int64(pantographStartupBudget),
		InitialGoalNanos:        int64(initialGoalBudget),
		SearchNanos:             int64(actualSearchBudget),
		TacticCallNanos:         int64(tacticCallBudget),
		RuntimeIdentityNanos:    int64(runtimeIdentityBudget),
		PythonCleanupGraceNanos: int64(pythonCleanupGrace),
		LaunchMarginNanos:       int64(launchMargin),
		UnallocatedNanos:        int64(hostProcess - hostBase),
		HostProcessNanos:        int64(hostProcess),
		DockerCleanupGraceNanos: int64(dockerCleanup),
	}
	if err := profile.Validate(); err != nil {
		return domain.PantographSearchBudgetProfile{}, 0, fmt.Errorf("solver: invalid Pantograph phase budget profile: %w", err)
	}
	return profile, hostProcess, nil
}

func (p PantographSearchSolver) Stage() domain.SolverStage { return domain.SolverStageS0 }
func (p PantographSearchSolver) ProviderID() string        { return "" }
func (p PantographSearchSolver) ModelID() string           { return pantographSearchEngine }
func (p PantographSearchSolver) Local() bool               { return true }
func (p PantographSearchSolver) MaxCostMicros() (int64, bool) {
	return 0, true
}

// Solve searches the Pantograph tactic set within node, depth, wall-clock, and
// input/output bounds. Tactic ordering is selected from the current goal.
// It has no provider or network route.
func (p PantographSearchSolver) Solve(ctx context.Context, problem domain.MathProblem) (Proposal, error) {
	if ctx == nil {
		return Proposal{}, errors.New("solver: context is required for Pantograph search")
	}
	if (p.PythonExecutable == "" && p.SandboxImage == "") || p.ProjectRoot == "" || p.LeanProjectRoot == "" {
		return Proposal{}, errors.New("solver: a Python executable or pinned sandbox image, MathCase root, and selected Lean project root are required for Pantograph search")
	}
	if p.SandboxImage != "" && !validImageDigest(p.SandboxImage) {
		return Proposal{}, errors.New("solver: Pantograph search sandbox image must be an immutable sha256 image ID")
	}
	if strings.TrimSpace(problem.LeanStatement) == "" || len(problem.LeanStatement) > maxSearchStatementBytes || strings.ContainsRune(problem.LeanStatement, '\x00') {
		return Proposal{}, errors.New("solver: Lean statement is missing or exceeds the local search limit")
	}
	budgetProfile, hostProcessTimeout, err := resolvePantographSearchBudget(p.Timeout, p.SandboxImage != "")
	if err != nil {
		return Proposal{}, err
	}
	if err := ctx.Err(); err != nil {
		return Proposal{}, fmt.Errorf("solver: Pantograph request cancelled before dispatch: %w", err)
	}
	if deadline, ok := ctx.Deadline(); ok {
		remaining := time.Until(deadline)
		if remaining < time.Duration(budgetProfile.RequestTotalNanos) {
			return Proposal{}, fmt.Errorf(
				"solver: caller deadline has %s remaining, below the bounded Pantograph total request budget %s",
				remaining, time.Duration(budgetProfile.RequestTotalNanos),
			)
		}
	}
	maxNodes := p.MaxNodes
	if maxNodes == 0 {
		maxNodes = defaultSearchMaxNodes
	}
	if maxNodes < 1 || maxNodes > maxSearchMaxNodes {
		return Proposal{}, fmt.Errorf("solver: Pantograph search node limit must be between 1 and %d", maxSearchMaxNodes)
	}
	maxDepth := p.MaxDepth
	if maxDepth == 0 {
		maxDepth = defaultSearchMaxDepth
	}
	if maxDepth < 1 || maxDepth > maxSearchMaxDepth {
		return Proposal{}, fmt.Errorf("solver: Pantograph search depth limit must be between 1 and %d", maxSearchMaxDepth)
	}

	root, err := filepath.Abs(p.ProjectRoot)
	if err != nil {
		return Proposal{}, fmt.Errorf("solver: resolve MathCase project root: %w", err)
	}
	root, err = filepath.EvalSymlinks(root)
	if err != nil {
		return Proposal{}, fmt.Errorf("solver: resolve MathCase project root: %w", err)
	}
	leanProjectRoot, err := filepath.Abs(p.LeanProjectRoot)
	if err != nil {
		return Proposal{}, fmt.Errorf("solver: resolve selected Lean project root: %w", err)
	}
	leanProjectRoot, err = filepath.EvalSymlinks(leanProjectRoot)
	if err != nil {
		return Proposal{}, fmt.Errorf("solver: resolve selected Lean project root: %w", err)
	}
	imports := p.Imports
	if len(imports) == 0 {
		imports = []string{"Init"}
	}
	imports, err = validateLeanImports(imports)
	if err != nil {
		return Proposal{}, fmt.Errorf("solver: validate Pantograph imports: %w", err)
	}
	// Preserve an empty JSON array when retrieval is unused. The Python bridge
	// validates this field as a list and intentionally rejects null.
	retrievalHints := append([]string{}, p.RetrievalHints...)
	if len(retrievalHints) > 8 {
		return Proposal{}, errors.New("solver: at most eight verified retrieval hints may enter Pantograph")
	}
	seenHints := make(map[string]struct{}, len(retrievalHints))
	for _, hint := range retrievalHints {
		if !validLeanDeclarationName(hint) {
			return Proposal{}, errors.New("solver: retrieval hint is not a bounded Lean declaration name")
		}
		if _, exists := seenHints[hint]; exists {
			return Proposal{}, errors.New("solver: duplicate retrieval hint")
		}
		seenHints[hint] = struct{}{}
	}
	retrievalDigest := p.RetrievalOutputSHA256
	if len(retrievalHints) == 0 {
		if retrievalDigest != "" {
			return Proposal{}, errors.New("solver: retrieval receipt digest requires at least one verified hint")
		}
	} else {
		decoded, digestErr := hex.DecodeString(retrievalDigest)
		if digestErr != nil || len(decoded) != sha256.Size || strings.ToLower(retrievalDigest) != retrievalDigest {
			return Proposal{}, errors.New("solver: verified retrieval hints require their canonical output SHA-256")
		}
	}
	sourceDeclarationHints := append([]string{}, p.SourceDeclarationHints...)
	if len(sourceDeclarationHints) > 8 {
		return Proposal{}, errors.New("solver: at most eight source declaration hints may enter Pantograph")
	}
	seenSourceHints := make(map[string]struct{}, len(sourceDeclarationHints))
	for _, hint := range sourceDeclarationHints {
		if !validLeanDeclarationName(hint) {
			return Proposal{}, errors.New("solver: source context hint is not a bounded Lean declaration name")
		}
		if _, exists := seenSourceHints[hint]; exists {
			return Proposal{}, errors.New("solver: duplicate source context hint")
		}
		seenSourceHints[hint] = struct{}{}
	}
	sourceContextDigest := p.SourceContextSHA256
	if len(sourceDeclarationHints) == 0 {
		if sourceContextDigest != "" {
			return Proposal{}, errors.New("solver: source context digest requires at least one validated declaration hint")
		}
	} else {
		decoded, digestErr := hex.DecodeString(sourceContextDigest)
		if digestErr != nil || len(decoded) != sha256.Size || strings.ToLower(sourceContextDigest) != sourceContextDigest {
			return Proposal{}, errors.New("solver: source context hints require their canonical context SHA-256")
		}
	}
	script := filepath.Join(root, "scripts", "pantograph_search.py")
	requestProjectRoot := leanProjectRoot
	if p.SandboxImage != "" {
		requestProjectRoot = "/mathcase/lean-project"
	}
	request, err := json.Marshal(struct {
		Statement              string                 `json:"statement"`
		MaxNodes               int                    `json:"max_nodes"`
		MaxDepth               int                    `json:"max_depth"`
		LeanProjectRoot        string                 `json:"lean_project_root"`
		Imports                []string               `json:"imports"`
		PhaseBudgets           pantographPhaseBudgets `json:"phase_budgets"`
		RetrievalHints         []string               `json:"retrieval_hints"`
		RetrievalOutputSHA256  string                 `json:"retrieval_output_sha256"`
		SourceDeclarationHints []string               `json:"source_declaration_hints"`
		SourceContextSHA256    string                 `json:"source_context_sha256"`
	}{Statement: problem.LeanStatement, MaxNodes: maxNodes, MaxDepth: maxDepth, LeanProjectRoot: requestProjectRoot, Imports: imports, PhaseBudgets: currentPantographPhaseBudgets(), RetrievalHints: retrievalHints, RetrievalOutputSHA256: retrievalDigest, SourceDeclarationHints: sourceDeclarationHints, SourceContextSHA256: sourceContextDigest})
	if err != nil {
		return Proposal{}, fmt.Errorf("solver: encode Pantograph search request: %w", err)
	}
	if len(request) > maxSearchRequestBytes {
		return Proposal{}, errors.New("solver: Pantograph search request exceeds the local limit")
	}

	var process localProcessResult
	if p.SandboxImage != "" {
		process, err = runPantographSearchContainerProcess(ctx, p.DockerExecutable, p.SandboxImage, root, leanProjectRoot, p.LeanLakeCacheRoot, script, request, hostProcessTimeout, maxSearchOutputBytes)
	} else {
		process, err = runLocalPythonProcess(ctx, p.PythonExecutable, root, script, request, hostProcessTimeout, maxSearchOutputBytes)
	}
	if err != nil {
		return Proposal{}, err
	}
	proposal := Proposal{LocalProcessTrace: &process.Trace}
	proposal.LocalProcessTrace.PantographSearchBudget = &budgetProfile
	if err := proposal.LocalProcessTrace.Validate(); err != nil {
		return proposal, fmt.Errorf("solver: Pantograph search process trace is invalid: %w", err)
	}
	if process.Err != nil {
		return proposal, process.Err
	}

	var response pantographSearchResponse
	decoder := json.NewDecoder(bytes.NewReader(process.Stdout))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(&response); err != nil {
		return proposal, errors.New("solver: local Pantograph search returned invalid JSON")
	}
	if err := decoder.Decode(new(any)); !errors.Is(err, io.EOF) {
		return proposal, errors.New("solver: local Pantograph search returned trailing data")
	}
	if response.RuntimeIdentity != nil {
		if err := response.RuntimeIdentity.Validate(); err != nil || response.RuntimeIdentity.RuntimeKind != "pantograph-search" {
			return proposal, errors.New("solver: local Pantograph search returned an invalid runtime identity")
		}
		proposal.LocalProcessTrace.RuntimeIdentity = response.RuntimeIdentity
		if err := proposal.LocalProcessTrace.Validate(); err != nil {
			return proposal, fmt.Errorf("solver: local Pantograph process trace is invalid: %w", err)
		}
	} else if response.Status != "error" {
		return proposal, errors.New("solver: local Pantograph search omitted its runtime identity")
	}
	if response.Metrics.Engine != pantographSearchEngine {
		return proposal, errors.New("solver: local Pantograph search returned an unexpected engine identity")
	}
	if err := response.Metrics.Validate(); err != nil {
		return proposal, fmt.Errorf("solver: local Pantograph search returned invalid metrics: %w", err)
	}
	proposal.SearchMetrics = &response.Metrics
	switch response.Status {
	case "solved":
		if _, err := normalizeLeanProof(response.Proof); err != nil {
			return proposal, errors.New("solver: local Pantograph search returned an invalid proof candidate")
		}
		proposal.CandidateID = localSearchCandidateID(problem, response.Proof)
		proposal.Proof = response.Proof
		return proposal, nil
	case "unsolved":
		if response.Proof != "" || response.ErrorClass != "" {
			return proposal, errors.New("solver: unsolved Pantograph search returned unexpected candidate data")
		}
		return proposal, nil
	case "error":
		if response.Proof != "" || response.ErrorClass == "" || response.Metrics.StopReason != "server_error" {
			return proposal, errors.New("solver: local Pantograph search returned an invalid error response")
		}
		return proposal, errors.New("solver: local Pantograph search encountered a server error")
	default:
		return proposal, errors.New("solver: local Pantograph search returned an unknown status")
	}
}

func validLeanDeclarationName(value string) bool {
	if len(value) == 0 || len(value) > 256 {
		return false
	}
	segmentStart := true
	for _, character := range value {
		if character == '.' {
			if segmentStart {
				return false
			}
			segmentStart = true
			continue
		}
		validLetter := character >= 'A' && character <= 'Z' || character >= 'a' && character <= 'z' || character == '_'
		validTail := validLetter || character >= '0' && character <= '9' || character == '\''
		if segmentStart && !validLetter || !segmentStart && !validTail {
			return false
		}
		segmentStart = false
	}
	return !segmentStart
}

func localSearchCandidateID(problem domain.MathProblem, proof string) string {
	identity := problem.ID + "\x00" + problem.LeanStatement + "\x00" + proof
	digest := sha256.Sum256([]byte(identity))
	return "pantograph-search-" + hex.EncodeToString(digest[:])
}
