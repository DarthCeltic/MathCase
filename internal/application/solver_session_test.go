package application

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"os"
	"path/filepath"
	"strings"
	"sync"
	"sync/atomic"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/provider"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

type sessionTestSolver struct {
	stage         domain.SolverStage
	journalPath   string
	providerID    string
	modelID       string
	maxCostMicros int64
	endpoint      string
	local         bool
	entered       chan struct{}
	release       <-chan struct{}
	calls         atomic.Int32
}

func (s *sessionTestSolver) Stage() domain.SolverStage {
	if s.stage == "" {
		return domain.SolverStageS0
	}
	return s.stage
}
func (s *sessionTestSolver) ProviderID() string {
	if s.local {
		return ""
	}
	if s.providerID != "" {
		return s.providerID
	}
	return "nebius-token-factory"
}
func (s *sessionTestSolver) ProtocolID() string {
	if s.local {
		return ""
	}
	return provider.ProtocolChatCompletions
}
func (s *sessionTestSolver) ModelID() string {
	if s.local {
		return ""
	}
	if s.modelID != "" {
		return s.modelID
	}
	return "nvidia/Nemotron-3_5-Lightning"
}
func (s *sessionTestSolver) EndpointURL() string {
	if s.local {
		return ""
	}
	if s.endpoint != "" {
		return s.endpoint
	}
	return "https://api.tokenfactory.nebius.com/v1/chat/completions"
}
func (s *sessionTestSolver) Local() bool { return s.local }
func (s *sessionTestSolver) MaxCostMicros() (int64, bool) {
	if s.local {
		return 0, false
	}
	if s.maxCostMicros > 0 {
		return s.maxCostMicros, true
	}
	return 50, true
}

func (s *sessionTestSolver) Solve(ctx context.Context, _ domain.MathProblem) (solver.Proposal, error) {
	if s.local {
		s.calls.Add(1)
		return solver.Proposal{CandidateID: "candidate-local-search", Proof: "by trivial"}, nil
	}
	if s.journalPath != "" {
		file, err := os.Open(s.journalPath)
		if err != nil {
			return solver.Proposal{}, err
		}
		records, readErr := budget.ReadJSONL(file)
		closeErr := file.Close()
		if readErr != nil {
			return solver.Proposal{}, readErr
		}
		if closeErr != nil {
			return solver.Proposal{}, closeErr
		}
		if len(records) == 0 || records[len(records)-1].CallState != budget.CallStarted {
			return solver.Proposal{}, errors.New("provider call started before its durable ceiling event")
		}
	}
	if s.entered != nil {
		s.entered <- struct{}{}
	}
	if s.release != nil {
		select {
		case <-s.release:
		case <-ctx.Done():
			return solver.Proposal{}, ctx.Err()
		}
	}
	s.calls.Add(1)
	return solver.Proposal{
		CandidateID:      "candidate-local-fake",
		Proof:            "by trivial",
		PromptTokens:     4,
		CompletionTokens: 2,
		ActualCostMicros: 20,
		CostKnown:        true,
	}, nil
}

type sessionTestVerifier struct {
	calls atomic.Int32
}

func (v *sessionTestVerifier) Verify(context.Context, domain.MathProblem, string) (solver.Verification, error) {
	call := v.calls.Add(1)
	return solver.Verification{
		KernelPassed: true,
		AxiomsPassed: true,
		EvidenceID:   "local-evidence-" + strings.Repeat("x", int(call)),
	}, nil
}

func TestSolverSessionRestoresAndEnforcesDurableProviderBudget(t *testing.T) {
	t.Parallel()
	journalPath := filepath.Join(t.TempDir(), "solver-costs.jsonl")
	problem := domain.MathProblem{
		ID:            "session-problem",
		Title:         "A local accounting integration fixture",
		Statement:     "The proposition is true.",
		LeanStatement: "True",
	}
	limits := budget.Limits{MaxRunMicros: 70, MaxSessionMicros: 100, MaxCandidateMicros: 50}
	provider := &sessionTestSolver{journalPath: journalPath}
	verifier := &sessionTestVerifier{}
	config := SolverSessionConfig{
		CostJournalPath: journalPath,
		BudgetLimits:    limits,
		Solvers:         []solver.Solver{provider},
		Verifier:        verifier,
		Toolchain:       "leanprover/lean4:v4.33.1",
	}

	first, err := openSolverSession(config)
	if err != nil {
		t.Fatalf("OpenSolverSession(first) = %v, want a locked durable solver session", err)
	}
	t.Cleanup(func() { _ = first.Close() })
	if _, err := openSolverSession(config); !errors.Is(err, budget.ErrCostJournalLocked) {
		t.Fatalf("openSolverSession(second) = %v, want ErrCostJournalLocked while first session is open", err)
	}
	firstResult, err := first.Solve(context.Background(), "session-run", problem)
	if err != nil {
		t.Fatalf("SolverSession.Solve(first) = %v, want a verified local fake result", err)
	}
	if !firstResult.Solved || len(firstResult.Attempts) != 1 || firstResult.Attempts[0].Outcome != domain.SolverOutcomePass {
		t.Fatalf("SolverSession.Solve(first) = %#v, want one verified passing attempt", firstResult)
	}
	if err := first.Close(); err != nil {
		t.Fatalf("SolverSession.Close(first) = %v, want clean journal close", err)
	}

	second, err := openSolverSession(config)
	if err != nil {
		t.Fatalf("OpenSolverSession(restored) = %v, want restored run and session spend", err)
	}
	t.Cleanup(func() { _ = second.Close() })
	secondResult, err := second.Solve(context.Background(), "session-run", problem)
	if err != nil {
		t.Fatalf("SolverSession.Solve(restored) = %v, want a second call within the remaining run ceiling", err)
	}
	if !secondResult.Solved || len(secondResult.Attempts) != 1 || secondResult.Attempts[0].CostMicros != 20 {
		t.Fatalf("SolverSession.Solve(restored) = %#v, want verified result charged at 20 micro-USD", secondResult)
	}
	thirdResult, err := second.Solve(context.Background(), "session-run", problem)
	if err != nil {
		t.Fatalf("SolverSession.Solve(over budget) = %v, want a recorded budget refusal", err)
	}
	if thirdResult.Solved || len(thirdResult.Attempts) != 1 || thirdResult.Attempts[0].Outcome != domain.SolverOutcomeBudgetExceeded {
		t.Fatalf("SolverSession.Solve(over budget) = %#v, want refusal before a third provider call", thirdResult)
	}
	if provider.calls.Load() != 2 {
		t.Fatalf("fake provider calls = %d, want 2 calls under the restored 70 micro-USD run ceiling", provider.calls.Load())
	}
	if err := second.Close(); err != nil {
		t.Fatalf("SolverSession.Close(restored) = %v, want clean close", err)
	}

	file, err := os.Open(journalPath)
	if err != nil {
		t.Fatalf("os.Open(cost journal) = %v, want the application-owned accounting journal", err)
	}
	defer file.Close()
	records, err := budget.ReadJSONL(file)
	if err != nil {
		t.Fatalf("budget.ReadJSONL(cost journal) = %v, want valid durable call history", err)
	}
	if len(records) != 4 {
		t.Fatalf("durable solver cost records = %d, want two synced start/finish pairs", len(records))
	}
	for i, record := range records {
		wantState := budget.CallStarted
		if i%2 == 1 {
			wantState = budget.CallFinished
		}
		if record.CallState != wantState {
			t.Errorf("durable cost record %d state = %q, want %q", i, record.CallState, wantState)
		}
	}
}

func TestSolverSessionCloseWaitsForInFlightSolveAndIsIdempotent(t *testing.T) {
	t.Parallel()
	journalPath := filepath.Join(t.TempDir(), "solver-costs.jsonl")
	entered := make(chan struct{}, 1)
	release := make(chan struct{})
	var releaseOnce sync.Once
	releaseSolver := func() { releaseOnce.Do(func() { close(release) }) }
	provider := &sessionTestSolver{entered: entered, release: release}
	session, err := openSolverSession(SolverSessionConfig{
		CostJournalPath: journalPath,
		BudgetLimits:    budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Solvers:         []solver.Solver{provider},
		Verifier:        &sessionTestVerifier{},
		Toolchain:       "leanprover/lean4:v4.33.1",
	})
	if err != nil {
		t.Fatalf("OpenSolverSession() = %v, want a live session for lifecycle check", err)
	}
	t.Cleanup(func() {
		releaseSolver()
		_ = session.Close()
	})
	problem := domain.MathProblem{ID: "close-problem", LeanStatement: "True"}
	solveResult := make(chan error, 1)
	go func() {
		_, solveErr := session.Solve(context.Background(), "close-run", problem)
		solveResult <- solveErr
	}()
	<-entered

	closeResult := make(chan error, 1)
	go func() { closeResult <- session.Close() }()
	<-session.closing
	if _, err := session.Solve(context.Background(), "late-run", problem); !errors.Is(err, ErrSolverSessionClosed) {
		t.Errorf("SolverSession.Solve(after close began) = %v, want ErrSolverSessionClosed", err)
	}
	select {
	case err := <-closeResult:
		t.Fatalf("SolverSession.Close() while solve is in flight = %v, want close to wait for the provider result", err)
	default:
	}
	releaseSolver()
	if err := <-solveResult; err != nil {
		t.Fatalf("SolverSession.Solve(in flight) = %v, want completion before session close", err)
	}
	if err := <-closeResult; err != nil {
		t.Fatalf("SolverSession.Close(after solve) = %v, want clean close", err)
	}
	if err := session.Close(); err != nil {
		t.Fatalf("SolverSession.Close(repeated) = %v, want the original successful close result", err)
	}
}

func TestOpenSolverSessionRejectsIncompleteComposition(t *testing.T) {
	t.Parallel()
	tests := []struct {
		name   string
		config SolverSessionConfig
	}{
		{name: "no solver routes", config: SolverSessionConfig{CostJournalPath: filepath.Join(t.TempDir(), "costs.jsonl"), Verifier: &sessionTestVerifier{}, Toolchain: "leanprover/lean4:v4.33.1"}},
		{name: "missing verifier", config: SolverSessionConfig{CostJournalPath: filepath.Join(t.TempDir(), "costs.jsonl"), Solvers: []solver.Solver{&sessionTestSolver{}}, Toolchain: "leanprover/lean4:v4.33.1"}},
		{name: "missing toolchain", config: SolverSessionConfig{CostJournalPath: filepath.Join(t.TempDir(), "costs.jsonl"), Solvers: []solver.Solver{&sessionTestSolver{}}, Verifier: &sessionTestVerifier{}}},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			if _, err := OpenSolverSession(test.config); !errors.Is(err, ErrSolverSessionConfig) {
				t.Errorf("OpenSolverSession(%q) = %v, want ErrSolverSessionConfig", test.name, err)
			}
		})
	}
}

func TestOpenSolverSessionRejectsExternalRoutesWithoutScope(t *testing.T) {
	t.Parallel()
	config := SolverSessionConfig{
		CostJournalPath: filepath.Join(t.TempDir(), "external-costs.jsonl"),
		BudgetLimits:    budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Solvers:         []solver.Solver{&sessionTestSolver{}},
		Verifier:        &sessionTestVerifier{},
		Toolchain:       "leanprover/lean4:v4.33.1",
	}
	if session, err := OpenSolverSession(config); session != nil || !errors.Is(err, ErrExternalSolverDisabled) {
		if session != nil {
			_ = session.Close()
		}
		t.Fatalf("OpenSolverSession(external route without scope) = %v, %v; want nil and ErrExternalSolverDisabled", session, err)
	}
}

func TestOpenSolverSessionAllowsOnlyClearanceBoundExternalInputs(t *testing.T) {
	t.Parallel()
	now := time.Date(2026, 10, 24, 16, 0, 0, 0, time.UTC)
	problem := domain.MathProblem{
		ID: "session-problem", Statement: "The proposition is true.", LeanStatement: "True",
	}
	provider := &sessionTestSolver{}
	authorization := externalSolverAuthorizationFixture(t, problem, now)
	session, err := OpenSolverSession(SolverSessionConfig{
		CostJournalPath:       filepath.Join(t.TempDir(), "external-costs.jsonl"),
		BudgetLimits:          budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Solvers:               []solver.Solver{provider},
		Verifier:              &sessionTestVerifier{},
		Toolchain:             "leanprover/lean4:v4.33.1",
		ExternalAuthorization: authorization,
		Now:                   func() time.Time { return now },
	})
	if err != nil {
		t.Fatalf("OpenSolverSession(scoped provider) = %v, want session bound to the exact owner clearance", err)
	}
	t.Cleanup(func() { _ = session.Close() })

	result, err := session.Solve(context.Background(), "cleared-session-run", problem)
	if err != nil {
		t.Fatalf("SolverSession.Solve(cleared problem %q) = %v, want verified provider result", problem.ID, err)
	}
	if !result.Solved || len(result.Attempts) != 1 || result.Attempts[0].Outcome != domain.SolverOutcomePass {
		t.Fatalf("SolverSession.Solve(cleared problem %q) = %#v, want one verified passing attempt", problem.ID, result)
	}
	attempt := result.Attempts[0]
	if attempt.ProviderInputClearanceID != "clearance-session-problem" ||
		attempt.ProviderInputClearanceSHA256 != authorization.ClearanceArtifacts[0].sha256() ||
		attempt.ProviderInputClearancePath != authorization.ClearanceArtifacts[0].Path {
		t.Errorf("provider attempt clearance = (%q, %q, %q), want exact local item-clearance identity, digest, and path",
			attempt.ProviderInputClearanceID, attempt.ProviderInputClearanceSHA256, attempt.ProviderInputClearancePath)
	}
	if err := attempt.Validate(); err != nil {
		t.Errorf("SolverAttempt.Validate(scoped provider attempt) = %v, want valid receipt with its input clearance", err)
	}

	uncleared := problem
	uncleared.LeanStatement = "False"
	if _, err := session.Solve(context.Background(), "uncleared-session-run", uncleared); !errors.Is(err, ErrExternalSolverTargetNotCleared) {
		t.Errorf("SolverSession.Solve(uncleared statement %q) = %v, want ErrExternalSolverTargetNotCleared", uncleared.LeanStatement, err)
	}
	if got := provider.calls.Load(); got != 1 {
		t.Errorf("provider calls after one cleared and one uncleared solve = %d, want 1", got)
	}
}

func TestOpenSolverSessionRequiresExactOwnerAndItemClearanceForPromptContext(t *testing.T) {
	t.Parallel()
	now := time.Date(2026, 10, 24, 16, 0, 0, 0, time.UTC)
	contextText := "Definitions and assumptions: the set is finite; its four-neighbor edge boundary counts each crossing edge once."
	problem := domain.MathProblem{
		ID: "session-context-problem", Statement: "The proposition is true.", LeanStatement: "True",
		ProviderContext: &domain.ProviderPromptContext{
			ID: "item-context", Content: contextText, SHA256: testSHA256([]byte(contextText)),
		},
	}
	authorization := externalSolverAuthorizationFixture(t, problem, now)
	provider := &sessionTestSolver{}
	config := SolverSessionConfig{
		CostJournalPath: filepath.Join(t.TempDir(), "context-costs.jsonl"),
		BudgetLimits:    budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Solvers:         []solver.Solver{provider}, Verifier: &sessionTestVerifier{}, Toolchain: "leanprover/lean4:v4.33.1",
		ExternalAuthorization: authorization, Now: func() time.Time { return now },
	}
	if _, err := OpenSolverSession(config); !errors.Is(err, ErrExternalSolverAuthorization) {
		t.Fatalf("OpenSolverSession(statement-only grant with context) = %v, want authorization refusal", err)
	}

	owner := map[string]any{
		"schema": externalOwnerAuthorizationSchema, "authorization_id": "authorization-context-problem",
		"provider_id": authorization.ProviderID, "protocol_id": authorization.ProtocolID,
		"model_ids": []string{authorization.ModelID}, "endpoint_url": authorization.EndpointURL,
		"expires_at_utc": now.Add(time.Hour).Format(time.RFC3339Nano), "per_call_cost_ceiling_micros": 50,
		"authorized_content":  externalOwnerContextScope,
		"authorized_contexts": []map[string]string{{"problem_id": problem.ID, "context_sha256": problem.ProviderContext.SHA256}},
		"items":               []string{problem.ID},
		"prohibited_content":  []string{"mined Zulip or Erdős content", "corpus material", "locked cases", "training data"},
		"training_authorized": false,
	}
	ownerBytes, err := json.Marshal(owner)
	if err != nil {
		t.Fatalf("json.Marshal(owner context authorization) = %v", err)
	}
	if err := os.WriteFile(authorization.OwnerAuthorizationPath, ownerBytes, 0o600); err != nil {
		t.Fatalf("os.WriteFile(owner context authorization) = %v", err)
	}
	authorization.OwnerAuthorizationBytes = ownerBytes
	authorization.OwnerAuthorizationSHA256 = testSHA256(ownerBytes)

	clearancePath := authorization.ClearanceArtifacts[0].Path
	clearance := map[string]any{
		"schema": externalInputClearanceSchema, "authorization_path": authorization.OwnerAuthorizationPath,
		"authorization_sha256": authorization.OwnerAuthorizationSHA256,
		"authorized_content":   externalContextScope, "context_sha256": problem.ProviderContext.SHA256,
		"provider_context_path": "data/local/verification/user-problem-cases/session-context-problem/usercase-context.provider-context.json",
		"clearance_id":          "clearance-context-problem", "expires_at_utc": now.Add(time.Hour).Format(time.RFC3339Nano),
		"prohibited_content": []string{"mined Zulip or Erdős content", "corpus material", "locked cases", "training data"},
		"statement":          problem.LeanStatement, "statement_sha256": testSHA256([]byte(problem.LeanStatement)),
		"theorem_id": problem.ID, "theorem_name": problem.ID, "training_authorized": false,
	}
	clearanceBytes, err := json.Marshal(clearance)
	if err != nil {
		t.Fatalf("json.Marshal(context clearance) = %v", err)
	}
	if err := os.WriteFile(clearancePath, clearanceBytes, 0o600); err != nil {
		t.Fatalf("os.WriteFile(context clearance) = %v", err)
	}
	authorization.ClearanceArtifacts[0].Bytes = clearanceBytes

	session, err := OpenSolverSession(config)
	if err != nil {
		t.Fatalf("OpenSolverSession(exact context grant) = %v, want exact owner and item context digests accepted", err)
	}
	_ = session.Close()

	clearance["provider_context_path"] = "data/local/verification/user-problem-cases/../../outside.provider-context.json"
	clearanceBytes, err = json.Marshal(clearance)
	if err != nil {
		t.Fatalf("json.Marshal(item clearance with escaped context path) = %v, want JSON fixture", err)
	}
	if err := os.WriteFile(clearancePath, clearanceBytes, 0o600); err != nil {
		t.Fatalf("os.WriteFile(escaped context path clearance) = %v, want local fixture", err)
	}
	authorization.ClearanceArtifacts[0].Bytes = clearanceBytes
	if _, err := OpenSolverSession(config); !errors.Is(err, ErrExternalSolverAuthorization) {
		t.Errorf("OpenSolverSession(context path escaping its local artifact root) = %v, want ErrExternalSolverAuthorization", err)
	}
}

func TestOpenSolverSessionRejectsExternalIdentityOutsideGrant(t *testing.T) {
	t.Parallel()
	now := time.Date(2026, 10, 24, 16, 0, 0, 0, time.UTC)
	problem := domain.MathProblem{ID: "session-problem", LeanStatement: "True"}
	authorization := externalSolverAuthorizationFixture(t, problem, now)
	authorization.ModelID = "different-model"
	_, err := OpenSolverSession(SolverSessionConfig{
		CostJournalPath:       filepath.Join(t.TempDir(), "external-costs.jsonl"),
		BudgetLimits:          budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Solvers:               []solver.Solver{&sessionTestSolver{}},
		Verifier:              &sessionTestVerifier{},
		Toolchain:             "leanprover/lean4:v4.33.1",
		ExternalAuthorization: authorization,
		Now:                   func() time.Time { return now },
	})
	if !errors.Is(err, ErrExternalSolverAuthorization) {
		t.Errorf("OpenSolverSession(model mismatch) = %v, want ErrExternalSolverAuthorization", err)
	}
}

func TestOpenSolverSessionRejectsItemClearanceOutsideOwnerTheoremList(t *testing.T) {
	t.Parallel()
	now := time.Date(2026, 10, 24, 16, 0, 0, 0, time.UTC)
	problem := domain.MathProblem{ID: "session-problem", LeanStatement: "True"}
	authorization := externalSolverAuthorizationFixture(t, problem, now)
	var record map[string]any
	if err := json.Unmarshal(authorization.ClearanceArtifacts[0].Bytes, &record); err != nil {
		t.Fatalf("decode item clearance: %v", err)
	}
	record["theorem_name"] = "unlisted-theorem"
	changed, err := json.Marshal(record)
	if err != nil {
		t.Fatalf("encode mutated item clearance: %v", err)
	}
	clearancePath := authorization.ClearanceArtifacts[0].Path
	if err := os.WriteFile(clearancePath, changed, 0o600); err != nil {
		t.Fatalf("write mutated item clearance: %v", err)
	}
	authorization.ClearanceArtifacts[0].Bytes = changed
	_, err = OpenSolverSession(SolverSessionConfig{
		CostJournalPath:       filepath.Join(t.TempDir(), "external-costs.jsonl"),
		BudgetLimits:          budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Solvers:               []solver.Solver{&sessionTestSolver{}},
		Verifier:              &sessionTestVerifier{},
		Toolchain:             "leanprover/lean4:v4.33.1",
		ExternalAuthorization: authorization,
		Now:                   func() time.Time { return now },
	})
	if !errors.Is(err, ErrExternalSolverAuthorization) {
		t.Errorf("OpenSolverSession(unlisted theorem clearance) = %v, want ErrExternalSolverAuthorization", err)
	}
}

func TestOpenSolverSessionRejectsEndpointOutsideAuthorizedProviderHost(t *testing.T) {
	t.Parallel()
	now := time.Date(2026, 10, 24, 16, 0, 0, 0, time.UTC)
	problem := domain.MathProblem{ID: "session-problem", LeanStatement: "True"}
	authorization := externalSolverAuthorizationFixture(t, problem, now)
	authorization.EndpointURL = "https://attacker.example/v1/chat/completions"
	route := &sessionTestSolver{endpoint: authorization.EndpointURL}
	_, err := OpenSolverSession(SolverSessionConfig{
		CostJournalPath:       filepath.Join(t.TempDir(), "external-costs.jsonl"),
		BudgetLimits:          budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Solvers:               []solver.Solver{route},
		Verifier:              &sessionTestVerifier{},
		Toolchain:             "leanprover/lean4:v4.33.1",
		ExternalAuthorization: authorization,
		Now:                   func() time.Time { return now },
	})
	if !errors.Is(err, ErrExternalSolverAuthorization) {
		t.Errorf("OpenSolverSession(untrusted endpoint) = %v, want ErrExternalSolverAuthorization", err)
	}
}

func TestOpenSolverSessionRejectsNoncanonicalNebiusEndpointPaths(t *testing.T) {
	t.Parallel()
	now := time.Date(2026, 10, 24, 16, 0, 0, 0, time.UTC)
	problem := domain.MathProblem{ID: "session-problem", LeanStatement: "True"}
	for _, endpoint := range []string{
		"https://api.tokenfactory.nebius.com/v1/other",
		"https://api.tokenfactory.nebius.com:8443/v1/chat/completions",
		"https://api.tokenfactory.nebius.com/v1/chat/completions/",
	} {
		t.Run(endpoint, func(t *testing.T) {
			authorization := externalSolverAuthorizationFixture(t, problem, now)
			authorization.EndpointURL = endpoint
			route := &sessionTestSolver{endpoint: endpoint}
			_, err := OpenSolverSession(SolverSessionConfig{
				CostJournalPath:       filepath.Join(t.TempDir(), "external-costs.jsonl"),
				BudgetLimits:          budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
				Solvers:               []solver.Solver{route},
				Verifier:              &sessionTestVerifier{},
				Toolchain:             "leanprover/lean4:v4.33.1",
				ExternalAuthorization: authorization,
				Now:                   func() time.Time { return now },
			})
			if !errors.Is(err, ErrExternalSolverAuthorization) {
				t.Errorf("OpenSolverSession(%q) = %v, want ErrExternalSolverAuthorization", endpoint, err)
			}
		})
	}
}

func TestOpenSolverSessionAllowsRepeatedAuthorizedRouteForFeedbackStages(t *testing.T) {
	t.Parallel()
	now := time.Date(2026, 10, 24, 16, 0, 0, 0, time.UTC)
	problem := domain.MathProblem{ID: "session-problem", LeanStatement: "True"}
	authorization := externalSolverAuthorizationFixture(t, problem, now)
	session, err := OpenSolverSession(SolverSessionConfig{
		CostJournalPath: filepath.Join(t.TempDir(), "external-costs.jsonl"),
		BudgetLimits:    budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Solvers: []solver.Solver{
			&sessionTestSolver{stage: domain.SolverStageS0},
			&sessionTestSolver{stage: domain.SolverStageS1},
		},
		Verifier:              &sessionTestVerifier{},
		Toolchain:             "leanprover/lean4:v4.33.1",
		ExternalAuthorization: authorization,
		Now:                   func() time.Time { return now },
	})
	if err != nil {
		t.Fatalf("OpenSolverSession(repeated identical route): %v", err)
	}
	if err := session.Close(); err != nil {
		t.Fatalf("SolverSession.Close(): %v", err)
	}
}

func TestValidateExternalEndpointRequiresCanonicalPublicHTTPSEndpoint(t *testing.T) {
	t.Parallel()
	valid := "https://api.example.com/v1/chat/completions"
	if err := validateExternalEndpoint(provider.ProtocolChatCompletions, valid); err != nil {
		t.Fatalf("validateExternalEndpoint(%q) = %v, want canonical public HTTPS endpoint", valid, err)
	}
	for _, endpoint := range []string{
		"https://api.example.com/api/v1/chat/completions",
		"https://api.example.com/openai/v1/chat/completions",
	} {
		if err := validateExternalEndpoint(provider.ProtocolChatCompletions, endpoint); err != nil {
			t.Errorf("validateExternalEndpoint(%q) = %v, want a safe provider-specific path prefix", endpoint, err)
		}
	}
	for _, endpoint := range []string{
		"http://api.example.com/v1/chat/completions",
		"https://127.0.0.1/v1/chat/completions",
		"https://localhost/v1/chat/completions",
		"https://api.example.local/v1/chat/completions",
		"https://api.example.internal/v1/chat/completions",
		"https://api.example.com:8443/v1/chat/completions",
		"https://user:pass@api.example.com/v1/chat/completions",
		"https://api.example.com/v1/chat/completions?key=redacted",
		"https://api.example.com/v1/chat/completions/",
		"https://api.example.com/v1//chat/completions",
		"https://api.example.com/v1/../chat/completions",
		"https://api.example.com/v1/%2e%2e/chat/completions",
		"https://api.example.com/v1/chat/completions/extra",
		"https://api.example.com./v1/chat/completions",
		"https://api.example.com/v1/other",
	} {
		t.Run(endpoint, func(t *testing.T) {
			t.Parallel()
			if err := validateExternalEndpoint(provider.ProtocolChatCompletions, endpoint); err == nil {
				t.Errorf("validateExternalEndpoint(%q) = nil, want refusal", endpoint)
			}
		})
	}
}

func TestValidateExternalEndpointPinsNativeMessagesProtocol(t *testing.T) {
	t.Parallel()
	for _, endpoint := range []string{
		"https://api.anthropic.com/v1/messages",
		"https://gateway.example/openai/anthropic/v1/messages",
	} {
		if err := validateExternalEndpoint(provider.ProtocolAnthropicMessages, endpoint); err != nil {
			t.Errorf("validateExternalEndpoint(%q, %q) = %v, want safe native Messages endpoint", provider.ProtocolAnthropicMessages, endpoint, err)
		}
	}
	for _, test := range []struct{ protocol, endpoint string }{
		{protocol: provider.ProtocolChatCompletions, endpoint: "https://api.anthropic.com/v1/messages"},
		{protocol: provider.ProtocolAnthropicMessages, endpoint: "https://api.example.com/v1/chat/completions"},
		{protocol: provider.ProtocolAnthropicMessages, endpoint: "https://api.example.com/v1/messages/extra"},
	} {
		if err := validateExternalEndpoint(test.protocol, test.endpoint); err == nil {
			t.Errorf("validateExternalEndpoint(%q, %q) = nil, want protocol/path mismatch refusal", test.protocol, test.endpoint)
		}
	}
}

func TestValidateExternalEndpointPinsGeminiModelPath(t *testing.T) {
	t.Parallel()
	valid := "https://generativelanguage.googleapis.com/v1beta/models/gemini-3.8-flash:generateContent"
	if err := validateExternalEndpoint(provider.ProtocolGeminiGenerateContent, valid); err != nil {
		t.Fatalf("validateExternalEndpoint(Gemini, %q) = %v, want safe model-bound endpoint", valid, err)
	}
	for _, endpoint := range []string{
		"https://generativelanguage.googleapis.com/v1beta/models/gemini-3.8-flash:streamGenerateContent",
		"https://generativelanguage.googleapis.com/v1beta/models/gemini-3.8-flash/extra:generateContent",
		"https://generativelanguage.googleapis.com/v1beta/models/gemini-3.8-flash:generateContent?key=secret",
		"https://generativelanguage.googleapis.com/v1beta/models/gemini-test:generateContent/extra",
	} {
		if err := validateExternalEndpoint(provider.ProtocolGeminiGenerateContent, endpoint); err == nil {
			t.Errorf("validateExternalEndpoint(Gemini, %q) = nil, want unsafe or mismatched endpoint refusal", endpoint)
		}
	}
}

func TestOpenSolverSessionAcceptsStructuredGrantForCompatibleProvider(t *testing.T) {
	t.Parallel()
	now := time.Date(2026, 10, 24, 16, 0, 0, 0, time.UTC)
	problem := domain.MathProblem{ID: "session-problem", LeanStatement: "True"}
	authorization := externalSolverAuthorizationFixture(t, problem, now)

	trainingAuthorized := false
	ownerRecord := externalOwnerAuthorizationRecord{
		Schema:                   externalOwnerAuthorizationSchema,
		AuthorizationID:          "owner-grant-compatible-provider-r1",
		ProviderID:               "compatible-test-provider",
		ProtocolID:               provider.ProtocolChatCompletions,
		ModelIDs:                 []string{"compatible-model-v1"},
		EndpointURL:              "https://api.compatible.example/api/v1/chat/completions",
		ExpiresAtUTC:             now.Add(time.Hour).Format(time.RFC3339Nano),
		PerCallCostCeilingMicros: 50,
		AuthorizedContent:        "theorem statements and proof attempts only",
		Items:                    []string{problem.ID},
		ProhibitedContent:        []string{"mined Zulip or Erdős content", "corpus material", "locked cases", "training data"},
		TrainingAuthorized:       &trainingAuthorized,
	}
	ownerBytes, err := json.Marshal(ownerRecord)
	if err != nil {
		t.Fatalf("json.Marshal(owner authorization) = %v", err)
	}
	if err := os.WriteFile(authorization.OwnerAuthorizationPath, ownerBytes, 0o600); err != nil {
		t.Fatalf("os.WriteFile(owner authorization) = %v", err)
	}
	authorization.OwnerAuthorizationBytes = ownerBytes
	authorization.OwnerAuthorizationSHA256 = testSHA256(ownerBytes)
	authorization.ProviderID = ownerRecord.ProviderID
	authorization.ModelID = ownerRecord.ModelIDs[0]
	authorization.EndpointURL = ownerRecord.EndpointURL

	clearance := map[string]any{}
	if err := json.Unmarshal(authorization.ClearanceArtifacts[0].Bytes, &clearance); err != nil {
		t.Fatalf("json.Unmarshal(existing item clearance) = %v", err)
	}
	clearance["authorization_sha256"] = authorization.OwnerAuthorizationSHA256
	clearanceBytes, err := json.Marshal(clearance)
	if err != nil {
		t.Fatalf("json.Marshal(item clearance) = %v", err)
	}
	clearancePath := authorization.ClearanceArtifacts[0].Path
	if err := os.WriteFile(clearancePath, clearanceBytes, 0o600); err != nil {
		t.Fatalf("os.WriteFile(item clearance) = %v", err)
	}
	authorization.ClearanceArtifacts = []ExternalInputClearanceArtifact{{Path: clearancePath, Bytes: clearanceBytes}}

	route := &sessionTestSolver{
		providerID:    ownerRecord.ProviderID,
		modelID:       ownerRecord.ModelIDs[0],
		maxCostMicros: 25,
		endpoint:      ownerRecord.EndpointURL,
	}
	session, err := OpenSolverSession(SolverSessionConfig{
		CostJournalPath:       filepath.Join(t.TempDir(), "external-costs.jsonl"),
		BudgetLimits:          budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Solvers:               []solver.Solver{route},
		Verifier:              &sessionTestVerifier{},
		Toolchain:             "leanprover/lean4:v4.33.1",
		ExternalAuthorization: authorization,
		Now:                   func() time.Time { return now },
	})
	if err != nil {
		t.Fatalf("OpenSolverSession(structured provider grant) = %v, want an explicitly authorized compatible endpoint", err)
	}
	if err := session.Close(); err != nil {
		t.Fatalf("SolverSession.Close() = %v", err)
	}

	badAuthorization := *authorization
	badAuthorization.ModelID = "model-not-in-owner-grant"
	badRoute := &sessionTestSolver{
		providerID:    ownerRecord.ProviderID,
		modelID:       badAuthorization.ModelID,
		maxCostMicros: 25,
		endpoint:      ownerRecord.EndpointURL,
	}
	_, err = OpenSolverSession(SolverSessionConfig{
		CostJournalPath:       filepath.Join(t.TempDir(), "refused-costs.jsonl"),
		BudgetLimits:          budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Solvers:               []solver.Solver{badRoute},
		Verifier:              &sessionTestVerifier{},
		Toolchain:             "leanprover/lean4:v4.33.1",
		ExternalAuthorization: &badAuthorization,
		Now:                   func() time.Time { return now },
	})
	if !errors.Is(err, ErrExternalSolverAuthorization) {
		t.Fatalf("OpenSolverSession(unlisted model) = %v, want ErrExternalSolverAuthorization", err)
	}

	var authorizationObject map[string]json.RawMessage
	if err := json.Unmarshal(ownerBytes, &authorizationObject); err != nil {
		t.Fatalf("decode owner authorization for missing-protocol fixture: %v", err)
	}
	delete(authorizationObject, "protocol_id")
	missingProtocolBytes, err := json.Marshal(authorizationObject)
	if err != nil {
		t.Fatalf("encode owner authorization without protocol: %v", err)
	}
	if err := os.WriteFile(authorization.OwnerAuthorizationPath, missingProtocolBytes, 0o600); err != nil {
		t.Fatalf("write owner authorization without protocol: %v", err)
	}
	var clearanceObject map[string]any
	if err := json.Unmarshal(clearanceBytes, &clearanceObject); err != nil {
		t.Fatalf("decode item clearance for missing-protocol fixture: %v", err)
	}
	clearanceObject["authorization_sha256"] = testSHA256(missingProtocolBytes)
	missingProtocolClearanceBytes, err := json.Marshal(clearanceObject)
	if err != nil {
		t.Fatalf("encode item clearance for missing-protocol fixture: %v", err)
	}
	if err := os.WriteFile(clearancePath, missingProtocolClearanceBytes, 0o600); err != nil {
		t.Fatalf("write item clearance for missing-protocol fixture: %v", err)
	}
	missingProtocolAuthorization := *authorization
	missingProtocolAuthorization.OwnerAuthorizationBytes = missingProtocolBytes
	missingProtocolAuthorization.OwnerAuthorizationSHA256 = testSHA256(missingProtocolBytes)
	missingProtocolAuthorization.ClearanceArtifacts = []ExternalInputClearanceArtifact{{Path: clearancePath, Bytes: missingProtocolClearanceBytes}}
	_, err = OpenSolverSession(SolverSessionConfig{
		CostJournalPath:       filepath.Join(t.TempDir(), "missing-protocol-costs.jsonl"),
		BudgetLimits:          budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Solvers:               []solver.Solver{route},
		Verifier:              &sessionTestVerifier{},
		Toolchain:             "leanprover/lean4:v4.33.1",
		ExternalAuthorization: &missingProtocolAuthorization,
		Now:                   func() time.Time { return now },
	})
	if !errors.Is(err, ErrExternalSolverAuthorization) {
		t.Errorf("OpenSolverSession(structured grant missing protocol_id) = %v, want ErrExternalSolverAuthorization", err)
	}
}

func externalSolverAuthorizationFixture(t *testing.T, problem domain.MathProblem, now time.Time) *ExternalSolverAuthorization {
	t.Helper()
	ownerText := []byte("Owner grant: a Nebius-hosted NVIDIA model via Token Factory; Items: one disclosed known theorem (" + problem.ID + "); theorem statements and proof attempts only; no mined Zulip/Erdős content; no corpus material; no locked cases; no training data.")
	ownerPath := filepath.Join(t.TempDir(), "owner-clearance.txt")
	if err := os.WriteFile(ownerPath, ownerText, 0o600); err != nil {
		t.Fatalf("os.WriteFile(owner authorization) = %v, want local fixture", err)
	}
	ownerDigest := testSHA256(ownerText)
	clearancePath := filepath.Join(t.TempDir(), "clearance.json")
	clearance := map[string]any{
		"schema":               externalInputClearanceSchema,
		"authorization_path":   ownerPath,
		"authorization_sha256": ownerDigest,
		"authorized_content":   "theorem statement and proof attempts only",
		"clearance_id":         "clearance-session-problem",
		"expires_at_utc":       now.Add(time.Hour).Format(time.RFC3339Nano),
		"prohibited_content":   []string{"mined Zulip or Erdős content", "corpus material", "locked cases", "training data"},
		"statement":            problem.LeanStatement,
		"statement_sha256":     testSHA256([]byte(problem.LeanStatement)),
		"theorem_id":           problem.ID,
		"theorem_name":         problem.ID,
		"training_authorized":  false,
	}
	clearanceBytes, err := json.Marshal(clearance)
	if err != nil {
		t.Fatalf("json.Marshal(item clearance) = %v, want fixture JSON", err)
	}
	if err := os.WriteFile(clearancePath, clearanceBytes, 0o600); err != nil {
		t.Fatalf("os.WriteFile(item clearance) = %v, want local fixture", err)
	}
	return &ExternalSolverAuthorization{
		ProviderID:               "nebius-token-factory",
		ProtocolID:               provider.ProtocolChatCompletions,
		ModelID:                  "nvidia/Nemotron-3_5-Lightning",
		EndpointURL:              "https://api.tokenfactory.nebius.com/v1/chat/completions",
		PerCallCostCeilingMicros: 50,
		OwnerAuthorizationPath:   ownerPath,
		OwnerAuthorizationBytes:  ownerText,
		OwnerAuthorizationSHA256: ownerDigest,
		ClearanceArtifacts:       []ExternalInputClearanceArtifact{{Path: clearancePath, Bytes: clearanceBytes}},
		AllowedProblems:          []domain.MathProblem{problem},
	}
}

func (a ExternalInputClearanceArtifact) sha256() string {
	return testSHA256(a.Bytes)
}

func testSHA256(data []byte) string {
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:])
}

func TestOpenSolverSessionAcceptsLocalRoutes(t *testing.T) {
	t.Parallel()
	session, err := OpenSolverSession(SolverSessionConfig{
		CostJournalPath: filepath.Join(t.TempDir(), "local-costs.jsonl"),
		BudgetLimits:    budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Solvers:         []solver.Solver{&sessionTestSolver{local: true}},
		Verifier:        &sessionTestVerifier{},
		Toolchain:       "leanprover/lean4:v4.33.1",
	})
	if err != nil {
		t.Fatalf("OpenSolverSession(local route) = %v, want local-only session", err)
	}
	t.Cleanup(func() { _ = session.Close() })
	result, err := session.Solve(context.Background(), "local-session-run", domain.MathProblem{
		ID: "local-session-problem", LeanStatement: "True",
	})
	if err != nil {
		t.Fatalf("SolverSession.Solve(local route) = %v, want a verified local result", err)
	}
	if !result.Solved || len(result.Attempts) != 1 || result.Attempts[0].Outcome != domain.SolverOutcomePass {
		t.Fatalf("SolverSession.Solve(local route) = %#v, want one verified local attempt", result)
	}
	if err := session.Close(); err != nil {
		t.Fatalf("SolverSession.Close(local route) = %v, want clean close", err)
	}
}

func TestAuthorizationReferenceMatchesPinnedPath(t *testing.T) {
	t.Parallel()

	dir, err := os.MkdirTemp(".", "authorization-reference-test-")
	if err != nil {
		t.Fatalf("os.MkdirTemp(., authorization-reference-test-) = %v, want local fixture directory", err)
	}
	t.Cleanup(func() {
		if err := os.RemoveAll(dir); err != nil {
			t.Errorf("os.RemoveAll(%q) = %v, want temporary fixture cleanup", dir, err)
		}
	})

	ownerPath := filepath.Join(dir, "owner-authorization.json")
	if err := os.WriteFile(ownerPath, []byte("pinned grant"), 0o600); err != nil {
		t.Fatalf("os.WriteFile(%q) = %v, want local pinned grant fixture", ownerPath, err)
	}
	otherPath := filepath.Join(dir, "other-authorization.json")
	if err := os.WriteFile(otherPath, []byte("pinned grant"), 0o600); err != nil {
		t.Fatalf("os.WriteFile(%q) = %v, want distinct grant fixture", otherPath, err)
	}

	absOwnerPath, err := filepath.Abs(ownerPath)
	if err != nil {
		t.Fatalf("filepath.Abs(%q) = %v, want absolute owner path", ownerPath, err)
	}
	relativeOwnerPath := filepath.ToSlash(ownerPath)
	if got := authorizationReferenceMatchesPath(relativeOwnerPath, absOwnerPath); !got {
		t.Errorf("authorizationReferenceMatchesPath(%q, %q) = %t, want true for the same root-relative grant", relativeOwnerPath, absOwnerPath, got)
	}
	if got := authorizationReferenceMatchesPath(absOwnerPath, absOwnerPath); !got {
		t.Errorf("authorizationReferenceMatchesPath(%q, %q) = %t, want true for the same absolute grant", absOwnerPath, absOwnerPath, got)
	}
	if got := authorizationReferenceMatchesPath(filepath.ToSlash(otherPath), absOwnerPath); got {
		t.Errorf("authorizationReferenceMatchesPath(%q, %q) = %t, want false for a different file with identical bytes", filepath.ToSlash(otherPath), absOwnerPath, got)
	}
	if got := authorizationReferenceMatchesPath("../outside.json", absOwnerPath); got {
		t.Errorf("authorizationReferenceMatchesPath(%q, %q) = %t, want false for a path escaping the project", "../outside.json", absOwnerPath, got)
	}
}
