package solver

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"io"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/provider"
)

func TestValidateProviderModelIdentityRequiresExplicitSemantics(t *testing.T) {
	tests := []struct {
		name        string
		response    provider.ProofCompletionResponse
		wantFailure string
		wantOutcome string
	}{
		{
			name:     "exact requested model matches",
			response: provider.ProofCompletionResponse{Model: "test-model", ModelIdentityKind: provider.ProofCompletionModelIdentityExactRequest},
		},
		{
			name:        "exact requested model mismatch",
			response:    provider.ProofCompletionResponse{Model: "other-model", ModelIdentityKind: provider.ProofCompletionModelIdentityExactRequest},
			wantFailure: "model_mismatch",
			wantOutcome: "MODEL_MISMATCH",
		},
		{
			name:        "exact requested model missing",
			response:    provider.ProofCompletionResponse{ModelIdentityKind: provider.ProofCompletionModelIdentityExactRequest},
			wantFailure: "model_identity_missing",
			wantOutcome: "INVALID_RESPONSE",
		},
		{
			name:     "serving version may differ from alias",
			response: provider.ProofCompletionResponse{Model: "test-model-2026-10", ModelIdentityKind: provider.ProofCompletionModelIdentityServingVersion},
		},
		{
			name:        "serving version missing",
			response:    provider.ProofCompletionResponse{ModelIdentityKind: provider.ProofCompletionModelIdentityServingVersion},
			wantFailure: "model_identity_missing",
			wantOutcome: "INVALID_RESPONSE",
		},
		{
			name:        "semantics omitted",
			response:    provider.ProofCompletionResponse{Model: "test-model"},
			wantFailure: "model_identity_semantics_missing",
			wantOutcome: "INVALID_RESPONSE",
		},
		{
			name:        "unknown semantics",
			response:    provider.ProofCompletionResponse{Model: "test-model", ModelIdentityKind: "provider-defined-without-review"},
			wantFailure: "model_identity_unknown",
			wantOutcome: "INVALID_RESPONSE",
		},
		{
			name:        "malformed serving version",
			response:    provider.ProofCompletionResponse{Model: "test-model\nredirected", ModelIdentityKind: provider.ProofCompletionModelIdentityServingVersion},
			wantFailure: "model_identity_invalid",
			wantOutcome: "INVALID_RESPONSE",
		},
	}

	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			failure, outcome, err := validateProviderModelIdentity("test-model", test.response)
			if test.wantFailure == "" {
				if err != nil || failure != "" || outcome != "" {
					t.Errorf("validateProviderModelIdentity(%q, %#v) = (%q, %q, %v), want (empty, empty, nil)", "test-model", test.response, failure, outcome, err)
				}
				return
			}
			if err == nil || failure != test.wantFailure || outcome != test.wantOutcome {
				t.Errorf("validateProviderModelIdentity(%q, %#v) = (%q, %q, %v), want (%q, %q, non-nil)", "test-model", test.response, failure, outcome, err, test.wantFailure, test.wantOutcome)
			}
		})
	}
}

func TestProviderProofPromptGuidesLeanContextWithoutProviderSpecificRules(t *testing.T) {
	statement := "∀ {α : Type u} {a b : α}, a = b → b = a"
	messages := proofMessages(defaultProofSystemPrompt, domain.MathProblem{LeanStatement: statement}, SolverFeedback{})
	if len(messages) != 2 || messages[0].Role != "system" || messages[1].Role != "user" {
		t.Fatalf("proof messages = %#v, want one shared system prompt and exact statement", messages)
	}
	for _, guidance := range []string{
		"If it begins with `∀` or `→`, use `repeat intro`",
		"Use `simp` only when it is a standard simplification of the target",
		"When context provides a verified library signature or a type-directed application hint",
		"Do not add a proposition theorem to `simp [theorem]`",
		"Treat a type-directed application hint as an unverified candidate until the pinned verifier accepts it",
		"When Lean rejects a candidate, use its first diagnostic to repair the failing step",
		"Match lemmas and tactics to the exact types and notation",
		"Use `by_cases` to split a proposition and `cases` only on an inductive value",
		"Use `constructor` for `P ↔ Q` or `P ∧ Q`",
		"Never use `split` to divide a logical proposition",
		"Do not guess library identifiers",
	} {
		if !strings.Contains(messages[0].Content, guidance) {
			t.Errorf("shared proof prompt is missing general guidance %q", guidance)
		}
	}
	if messages[1].Content != "Lean theorem statement:\n"+statement {
		t.Fatalf("statement message = %q, want exact theorem statement", messages[1].Content)
	}
}

func TestProviderProofPromptIncludesOnlyDigestBoundProblemContext(t *testing.T) {
	content := `{"problem":{"informal_statement":"Every natural number is equal to itself.","lean_statement":"theorem user_context_case (n : Nat) : n = n := by rfl"},"lean_environment":{"imports":["Mathlib.Data.Nat.Basic"],"toolchain":"leanprover/lean4:v4.33.1"}}`
	digest := sha256Hex([]byte(content))
	problem := domain.MathProblem{
		LeanStatement: "∀ S : Finset (Prod Int Int), True",
		ProviderContext: &domain.ProviderPromptContext{
			ID: "context-grid-boundary-r1", SHA256: digest, Content: content,
		},
	}
	messages := proofMessages(defaultProofSystemPrompt, problem, SolverFeedback{})
	if len(messages) != 3 || messages[1].Content != "Lean theorem statement:\n"+problem.LeanStatement {
		t.Fatalf("proof messages = %#v, want exact statement and a separate context message", messages)
	}
	if !strings.Contains(messages[2].Content, "SHA-256 verified") ||
		!strings.Contains(messages[2].Content, "Context ID: context-grid-boundary-r1") ||
		!strings.Contains(messages[2].Content, digest) ||
		!strings.Contains(messages[2].Content, content) ||
		!strings.Contains(messages[2].Content, "Every natural number is equal to itself.") {
		t.Fatalf("provider context message omitted its identity, digest, or content: %q", messages[2].Content)
	}
	problem.ProviderContext.SHA256 = strings.Repeat("0", 64)
	if err := problem.ProviderContext.Validate(); err == nil {
		t.Fatal("provider context accepted a mismatched SHA-256")
	}
}

func TestProofRetryStartsOverAndUsesLeanDiagnostics(t *testing.T) {
	feedback := formatProofFeedback(SolverFeedback{
		PreviousProof: "by split; exact h",
		FailureClass:  "kernel_rejected",
		Diagnostic:    "Tactic `split` failed: Could not split an `if` or `match` expression in the goal\nα : Type\n⊢ P ↔ Q",
	})
	for _, guidance := range []string{
		"derive a fresh proof",
		"do not echo or continue the rejected candidate",
		"rejected proof text is intentionally omitted",
		"fix the first actionable error first",
		"`constructor` for `P ↔ Q` or `P ∧ Q`",
		"`split` only for an `if`/`match`",
		"Tactic `split` failed: Could not split an `if` or `match` expression in the goal",
		"the displayed goal is an equivalence (`↔`); replace the failed `split` with `constructor`",
	} {
		if !strings.Contains(feedback, guidance) {
			t.Errorf("proof retry feedback is missing %q", guidance)
		}
	}
	if strings.Contains(feedback, "by split; exact h") {
		t.Fatal("retry feedback exposed rejected proof text and risks anchoring the next response")
	}
}

func TestLeanDiagnosticGuidanceUsesGeneralCompilerClassAndGoalShape(t *testing.T) {
	tests := []struct {
		name       string
		diagnostic string
		want       string
	}{
		{
			name:       "iff goal after split failure",
			diagnostic: "Tactic `split` failed: Could not split an `if` or `match` expression in the goal\nα : Type\n⊢ P ↔ Q",
			want:       "displayed goal is an equivalence (`↔`)",
		},
		{
			name:       "and goal after split failure",
			diagnostic: "Tactic `split` failed: Could not split an `if` or `match` expression in the goal\n⊢ P ∧ Q",
			want:       "displayed goal is a conjunction (`∧`)",
		},
		{
			name:       "unknown reflexivity tactic",
			diagnostic: "unknown tactic `refl`",
			want:       "Lean 4 uses `rfl`",
		},
		{
			name:       "unintroduced universal binder",
			diagnostic: "a : Type u\nb c : a\n⊢ ∀ {c_1 : a}, b ∈ [c, c_1] ↔ b = c ∨ b = c_1",
			want:       "Use Lean's `repeat intro` tactic until that leading `∀` is gone",
		},
		{
			name:       "incomplete binders before equivalence repair",
			diagnostic: "Tactic `split` failed: Could not split an `if` or `match` expression in the goal\na : Type u\nb c : a\n⊢ ∀ {c_1 : a}, b ∈ [c, c_1] ↔ b = c ∨ b = c_1",
			want:       "After introducing leading binders, the displayed goal is an equivalence (`↔`)",
		},
		{
			name:       "introduce implication before left",
			diagnostic: "Tactic `left` failed: target is not an inductive datatype\ncase mp\n⊢ P → Q",
			want:       "displayed target begins with an implication. Introduce its premise with `intro`",
		},
		{
			name:       "unrelated compiler diagnostic",
			diagnostic: "unknown identifier `notInScope`",
			want:       "",
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			got := leanDiagnosticGuidance(test.diagnostic)
			if test.want == "" {
				if got != "" {
					t.Fatalf("leanDiagnosticGuidance() = %q, want no specialization", got)
				}
				return
			}
			if !strings.Contains(got, test.want) {
				t.Fatalf("leanDiagnosticGuidance() = %q, want substring %q", got, test.want)
			}
		})
	}
}

func TestProofRetryUsesNoAssistantTurnForRejectedProof(t *testing.T) {
	previous := "by split; exact h"
	messages := proofMessages(defaultProofSystemPrompt, domain.MathProblem{LeanStatement: "theorem sample : True"}, SolverFeedback{
		PreviousProof: previous,
		FailureClass:  "kernel_rejected",
		Diagnostic:    "split failed on a non-if/match goal",
	})
	if len(messages) != 3 {
		t.Fatalf("retry message count = %d, want system + statement + feedback", len(messages))
	}
	for _, message := range messages {
		if message.Role == "assistant" || strings.Contains(message.Content, previous) {
			t.Fatalf("retry replays rejected proof as conversational context: %#v", messages)
		}
	}
}

func TestChatCompletionsProofSolverRunsThroughCascadeAndIndependentVerifier(t *testing.T) {
	responseBody := `{"id":"chatcmpl-proof-1","model":"test-model","choices":[{"message":{"role":"assistant","content":"by trivial"},"finish_reason":"stop"}],"usage":{"prompt_tokens":12,"completion_tokens":4,"total_tokens":16}}`
	journal := &budget.MemoryCostJournal{}
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path != "/v1/chat/completions" {
			t.Errorf("request path = %q, want /v1/chat/completions", r.URL.Path)
		}
		if records := journal.Records(); len(records) != 1 || records[0].CallState != budget.CallStarted {
			t.Errorf("provider dispatch occurred without one durable start event: %#v", records)
		}
		body, err := io.ReadAll(r.Body)
		if err != nil {
			t.Errorf("read provider request: %v", err)
		}
		var request map[string]json.RawMessage
		if err := json.Unmarshal(body, &request); err != nil {
			t.Errorf("decode provider request: %v", err)
		}
		var messages []struct {
			Role    string `json:"role"`
			Content string `json:"content"`
		}
		if err := json.Unmarshal(request["messages"], &messages); err != nil || len(messages) != 2 || messages[1].Content != "Lean theorem statement:\nTrue" {
			t.Errorf("provider messages = %#v, error %v; want only system prompt and exact theorem statement", messages, err)
		}
		w.Header().Set("Content-Type", "application/json")
		_, _ = io.WriteString(w, responseBody)
	}))
	defer server.Close()

	model, err := NewChatCompletionsProofSolver(ChatCompletionsProofSolverConfig{
		Stage: domain.SolverStageS1, ProviderID: "test-provider", ModelID: "test-model",
		BaseURL: server.URL + "/v1", APIKey: "test-secret",
		Price:         budget.Price{Known: true, InputPerMillionMicros: 1_000_000, OutputPerMillionMicros: 1_000_000},
		MaxCostMicros: 500, MaxOutputTokens: 32, EvidenceDir: t.TempDir(),
	})
	if err != nil {
		t.Fatalf("NewChatCompletionsProofSolver(): %v", err)
	}
	verifier := &scriptedVerifier{results: []Verification{{KernelPassed: true, AxiomsPassed: true, EvidenceID: "proof-evidence-1"}}}
	cascade := testCascade([]Solver{model}, verifier, journal)
	cascade.BudgetForRun = func(string) (*budget.RunBudget, error) {
		controller, err := budget.NewController(budget.Limits{MaxRunMicros: 1000, MaxSessionMicros: 1000, MaxCandidateMicros: 1000})
		if err != nil {
			return nil, err
		}
		return controller.RunBudget(), nil
	}
	problem := domain.MathProblem{ID: "simple-truth", Statement: "Truth is true.", LeanStatement: "True"}
	result, err := cascade.Solve(context.Background(), "run-chat-proof", problem)
	if err != nil {
		t.Fatalf("Cascade.Solve(): %v", err)
	}
	if !result.Solved || result.Proof != "by trivial" || len(result.Attempts) != 1 {
		t.Fatalf("cascade result = %#v, want one independently verified proof", result)
	}
	attempt := result.Attempts[0]
	if attempt.ProviderID != "test-provider" || attempt.ModelID != "test-model" || attempt.ProviderCallID != "chatcmpl-proof-1" || attempt.ProviderRequestSHA256 == "" || attempt.ProviderResponseSHA256 == "" {
		t.Fatalf("attempt is missing provider identity or exact HTTP body digests: %#v", attempt)
	}
	assertPersistedProviderEvidence(t, attempt)
	if len(journal.Records()) != 2 || journal.Records()[1].ProviderCallID != "chatcmpl-proof-1" || journal.Records()[1].EstimatedCostMicros != 16 {
		t.Fatalf("provider cost receipt = %#v, want the returned call ID and 16 micro-USD", journal.Records())
	}
}

func TestChatCompletionsProofSolverLeavesNonProofOutputAsNoProgress(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		_, _ = io.WriteString(w, `{"id":"chatcmpl-no-proof","model":"test-model","choices":[{"message":{"content":"Here is the proof."},"finish_reason":"stop"}],"usage":{"prompt_tokens":3,"completion_tokens":5,"total_tokens":8}}`)
	}))
	defer server.Close()
	model, err := NewChatCompletionsProofSolver(ChatCompletionsProofSolverConfig{
		Stage: domain.SolverStageS1, ProviderID: "test-provider", ModelID: "test-model", BaseURL: server.URL,
		APIKey: "test-secret", Price: budget.Price{Known: true}, MaxCostMicros: 50, MaxOutputTokens: 16, EvidenceDir: t.TempDir(),
	})
	if err != nil {
		t.Fatalf("NewChatCompletionsProofSolver(): %v", err)
	}
	journal := &budget.MemoryCostJournal{}
	cascade := testCascade([]Solver{model}, &scriptedVerifier{}, journal)
	result, err := cascade.Solve(context.Background(), "run-chat-no-proof", domain.MathProblem{ID: "simple-truth", LeanStatement: "True"})
	if err != nil {
		t.Fatalf("Cascade.Solve(): %v", err)
	}
	if result.Solved || len(result.Attempts) != 1 || result.Attempts[0].Outcome != domain.SolverOutcomeNoProgress || result.Attempts[0].CandidateSHA256 != "" {
		t.Fatalf("non-proof output result = %#v, want a receipted no-progress attempt", result)
	}
	if result.Attempts[0].ProviderRequestSHA256 == "" || result.Attempts[0].ProviderResponseSHA256 == "" || !result.Attempts[0].CostKnown {
		t.Fatalf("no-progress receipt lost call digests or known usage: %#v", result.Attempts[0])
	}
}

func TestChatCompletionsProofSolverRequiresExplicitPriceAndCeiling(t *testing.T) {
	base := ChatCompletionsProofSolverConfig{
		Stage: domain.SolverStageS1, ProviderID: "test-provider", ModelID: "test-model", BaseURL: "http://127.0.0.1:8080/v1",
		APIKey: "secret", Price: budget.Price{Known: true}, MaxCostMicros: 50, MaxOutputTokens: 16, EvidenceDir: t.TempDir(),
	}
	mutations := []func(*ChatCompletionsProofSolverConfig){
		func(c *ChatCompletionsProofSolverConfig) { c.Price.Known = false },
		func(c *ChatCompletionsProofSolverConfig) { c.MaxCostMicros = 0 },
		func(c *ChatCompletionsProofSolverConfig) { c.ProviderID = "" },
	}
	for i, mutate := range mutations {
		config := base
		mutate(&config)
		if _, err := NewChatCompletionsProofSolver(config); err == nil {
			t.Fatalf("configuration mutation %d unexpectedly constructed a proof solver", i)
		}
	}
}

func TestProviderProofSolverSelectsProtocolsExplicitlyAndRefusesUnknownOrUnreviewedFields(t *testing.T) {
	base := ProviderProofSolverTransportConfig{
		Stage: domain.SolverStageS0, ProviderID: "test-provider", ModelID: "test-model",
		BaseURL: "http://127.0.0.1:12345/v1", APIKey: "test-secret",
		Price: budget.Price{Known: true}, MaxCostMicros: 50, MaxOutputTokens: 16,
		EvidenceDir: t.TempDir(),
	}
	for _, test := range []struct {
		name      string
		protocol  string
		mutate    func(*ProviderProofSolverTransportConfig)
		wantError string
	}{
		{name: "unknown protocol", protocol: "unknown-protocol", wantError: "unsupported proof-completion protocol"},
		{
			name: "anthropic extension fields", protocol: provider.ProtocolAnthropicMessages,
			mutate: func(config *ProviderProofSolverTransportConfig) {
				config.AdditionalFields = map[string]json.RawMessage{"tools": json.RawMessage(`[]`)}
			},
			wantError: "does not accept unreviewed protocol extension fields",
		},
	} {
		t.Run(test.name, func(t *testing.T) {
			config := base
			if test.mutate != nil {
				test.mutate(&config)
			}
			solver, err := NewProviderProofSolverForProtocol(test.protocol, config)
			if err == nil || solver != nil || !strings.Contains(err.Error(), test.wantError) {
				t.Fatalf("NewProviderProofSolverForProtocol(%q) = (%v, %v), want fail-closed %q", test.protocol, solver, err, test.wantError)
			}
		})
	}
}

func TestChatCompletionsProofSolverFromEnvironmentExplainsMissingProcessSecret(t *testing.T) {
	const keyName = "MATHCASE_TEST_API_KEY_NOT_IN_PROCESS"
	t.Setenv(keyName, "")

	_, err := NewChatCompletionsProofSolverFromEnvironment(ChatCompletionsProofSolverConfig{
		Stage: domain.SolverStageS0, ProviderID: "test-provider", ModelID: "test-model",
		BaseURL: "https://api.example.test/v1", APIKeyEnv: keyName,
		Price: budget.Price{Known: true}, MaxCostMicros: 100, MaxOutputTokens: 16,
		EvidenceDir: t.TempDir(),
	})
	if err == nil || !strings.Contains(err.Error(), "unavailable to this process") {
		t.Fatalf("NewChatCompletionsProofSolverFromEnvironment() error = %v, want a clear missing-process-secret diagnostic", err)
	}
	if strings.Contains(err.Error(), keyName) || strings.Contains(err.Error(), "secret-value") {
		t.Fatalf("missing-secret diagnostic unexpectedly exposes secret material or environment contents: %v", err)
	}
}

func TestChatCompletionsCascadeUsesVerifierFeedbackAndReceiptsEachCall(t *testing.T) {
	var calls int
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		calls++
		body, err := io.ReadAll(r.Body)
		if err != nil {
			t.Errorf("read provider request %d: %v", calls, err)
		}
		var request struct {
			Messages []struct {
				Role    string `json:"role"`
				Content string `json:"content"`
			} `json:"messages"`
		}
		if err := json.Unmarshal(body, &request); err != nil {
			t.Errorf("decode provider request %d: %v", calls, err)
		}
		if !strings.Contains(request.Messages[0].Content, "separate tactics with semicolons or newlines, never commas") {
			t.Errorf("provider system prompt does not state Lean tactic separators: %q", request.Messages[0].Content)
		}
		var response string
		switch calls {
		case 1:
			response = `{"id":"chatcmpl-reject-1","model":"test-model","choices":[{"message":{"role":"assistant","content":"by refl"},"finish_reason":"stop"}],"usage":{"prompt_tokens":10,"completion_tokens":3,"total_tokens":13}}`
		case 2:
			if len(request.Messages) != 3 || request.Messages[2].Role != "user" ||
				strings.Contains(request.Messages[2].Content, "by refl") ||
				!strings.Contains(request.Messages[2].Content, "unknown tactic") ||
				!strings.Contains(request.Messages[2].Content, "rejected proof text is intentionally omitted") {
				t.Errorf("corrective request echoed a rejected proof or omitted bounded Lean feedback: %#v", request.Messages)
			}
			response = `{"id":"chatcmpl-pass-2","model":"test-model","choices":[{"message":{"role":"assistant","content":"` + "```lean\\nby\\n  intro n; rfl\\n```" + `"},"finish_reason":"stop"}],"usage":{"prompt_tokens":24,"completion_tokens":6,"total_tokens":30}}`
		default:
			t.Errorf("unexpected provider call %d", calls)
		}
		w.Header().Set("Content-Type", "application/json")
		_, _ = io.WriteString(w, response)
	}))
	defer server.Close()

	newStageSolver := func(stage domain.SolverStage) *ChatCompletionsProofSolver {
		model, err := NewChatCompletionsProofSolver(ChatCompletionsProofSolverConfig{
			Stage: stage, ProviderID: "agnostic-test-provider", ModelID: "test-model", BaseURL: server.URL,
			APIKey: "test-secret", Price: budget.Price{Known: true, InputPerMillionMicros: 1_000_000, OutputPerMillionMicros: 1_000_000},
			MaxCostMicros: 100, MaxOutputTokens: 64, EvidenceDir: t.TempDir(),
		})
		if err != nil {
			t.Fatalf("NewChatCompletionsProofSolver(%s): %v", stage, err)
		}
		return model
	}
	verifier := &scriptedVerifier{results: []Verification{
		{KernelPassed: false, EvidenceID: "lean-reject-1", Summary: "Lean rejected the candidate.", RepairFeedback: "unknown tactic `refl`"},
		{KernelPassed: true, AxiomsPassed: true, EvidenceID: "lean-pass-2", Summary: "Lean accepted the proof."},
	}}
	journal := &budget.MemoryCostJournal{}
	result, err := testCascade([]Solver{newStageSolver(domain.SolverStageS0), newStageSolver(domain.SolverStageS1)}, verifier, journal).
		Solve(context.Background(), "run-feedback-repair", domain.MathProblem{ID: "reflexive-natural", Statement: "Every natural number equals itself.", LeanStatement: "∀ n : Nat, n = n"})
	if err != nil {
		t.Fatalf("Cascade.Solve(): %v", err)
	}
	if calls != 2 || !result.Solved || result.Proof != "by\n  intro n; rfl" || len(result.Attempts) != 2 {
		t.Fatalf("feedback cascade returned calls=%d result=%#v, want two calls and an accepted corrected proof", calls, result)
	}
	if result.Attempts[0].Outcome != domain.SolverOutcomeRejected || result.Attempts[1].Outcome != domain.SolverOutcomePass || result.Attempts[1].ParentAttemptID != result.Attempts[0].ID {
		t.Fatalf("feedback attempt chain = %#v, want rejected parent followed by passing child", result.Attempts)
	}
	assertPersistedProviderEvidence(t, result.Attempts[0])
	assertPersistedProviderEvidence(t, result.Attempts[1])
	if records := journal.Records(); len(records) != 4 {
		t.Fatalf("cost journal contains %d events, want a durable start/finish pair for each provider call", len(records))
	}
}

func assertPersistedProviderEvidence(t *testing.T, attempt domain.SolverAttempt) {
	t.Helper()
	if attempt.ProviderCallReceiptPath == "" || attempt.ProviderCallReceiptSHA256 == "" {
		t.Fatalf("attempt lacks a call receipt: %#v", attempt)
	}
	request, err := os.ReadFile(attempt.ProviderRequestPath)
	if err != nil {
		t.Fatalf("read exact provider request %q: %v", attempt.ProviderRequestPath, err)
	}
	response, err := os.ReadFile(attempt.ProviderResponsePath)
	if err != nil {
		t.Fatalf("read exact provider response %q: %v", attempt.ProviderResponsePath, err)
	}
	receipt, err := os.ReadFile(attempt.ProviderCallReceiptPath)
	if err != nil {
		t.Fatalf("read provider call receipt %q: %v", attempt.ProviderCallReceiptPath, err)
	}
	digest := func(data []byte) string {
		value := sha256.Sum256(data)
		return hex.EncodeToString(value[:])
	}
	if digest(request) != attempt.ProviderRequestSHA256 || digest(response) != attempt.ProviderResponseSHA256 || digest(receipt) != attempt.ProviderCallReceiptSHA256 {
		t.Fatalf("persisted provider evidence digest mismatch for attempt %s", attempt.ID)
	}
	if strings.Contains(string(request), "test-secret") || !filepath.IsAbs(attempt.ProviderCallReceiptPath) {
		t.Fatalf("provider evidence contains a secret or a non-absolute receipt path: %q", attempt.ProviderCallReceiptPath)
	}
}
