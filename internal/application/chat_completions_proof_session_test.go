package application

import (
	"context"
	"encoding/json"
	"errors"
	"io"
	"net/http"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/provider"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

func TestOpenChatCompletionsProofSessionRequiresAndConsumesOwnerGrant(t *testing.T) {
	t.Parallel()
	now := time.Date(2026, 10, 24, 16, 0, 0, 0, time.UTC)
	problem := domain.MathProblem{ID: "session-problem", Statement: "Truth is true.", LeanStatement: "True"}
	providerConfig := solver.ChatCompletionsProofSolverConfig{
		ProviderID: "nebius-token-factory", ModelID: "nvidia/Nemotron-3_5-Lightning",
		BaseURL: "https://api.tokenfactory.nebius.com/v1", APIKey: "test-secret",
		Price:         budget.Price{Known: true, InputPerMillionMicros: 1, OutputPerMillionMicros: 1},
		MaxCostMicros: 50, MaxOutputTokens: 16, EvidenceDir: t.TempDir(),
	}
	base := ChatCompletionsProofSessionConfig{
		CostJournalPath: filepath.Join(t.TempDir(), "provider-costs.jsonl"),
		BudgetLimits:    budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Provider:        providerConfig,
		Verifier:        &sessionTestVerifier{},
		Toolchain:       "leanprover/lean4:v4.33.1",
		Now:             func() time.Time { return now },
	}
	if session, err := OpenChatCompletionsProofSession(base); session != nil || !errors.Is(err, ErrExternalSolverDisabled) {
		if session != nil {
			_ = session.Close()
		}
		t.Fatalf("OpenChatCompletionsProofSession(without grant) = (%v, %v), want fail-closed refusal", session, err)
	}

	base.ExternalAuthorization = externalSolverAuthorizationFixture(t, problem, now)
	session, err := OpenChatCompletionsProofSession(base)
	if err != nil {
		t.Fatalf("OpenChatCompletionsProofSession(with exact grant) = %v, want a durable two-stage route", err)
	}
	if got := len(session.cascade.Solvers); got != 2 {
		t.Fatalf("default provider-call bound = %d solver stages, want the historical two-stage route", got)
	}
	if err := session.Close(); err != nil {
		t.Fatalf("SolverSession.Close() = %v, want clean close", err)
	}

	base.MaxProviderCalls = 1
	oneCallSession, err := OpenChatCompletionsProofSession(base)
	if err != nil {
		t.Fatalf("OpenChatCompletionsProofSession(one-call bound) = %v, want a valid bounded route", err)
	}
	if got := len(oneCallSession.cascade.Solvers); got != 1 {
		t.Fatalf("one-call provider bound installed %d solver stages, want exactly one", got)
	}
	if err := oneCallSession.Close(); err != nil {
		t.Fatalf("one-call SolverSession.Close() = %v, want clean close", err)
	}

	base.MaxProviderCalls = 3
	if session, err := OpenChatCompletionsProofSession(base); session != nil || err == nil {
		if session != nil {
			_ = session.Close()
		}
		t.Fatalf("OpenChatCompletionsProofSession(three-call bound) = (%v, %v), want refusal", session, err)
	}
}

func TestOpenChatCompletionsProofSessionRunsAnotherAuthorizedCompatibleProvider(t *testing.T) {
	t.Parallel()

	now := time.Date(2026, 10, 24, 16, 0, 0, 0, time.UTC)
	problem := domain.MathProblem{ID: "compatible-session-problem", Statement: "Truth is true.", LeanStatement: "True"}
	endpoint := "https://api.compatible.example/api/v1/chat/completions"
	ownerPath := filepath.Join(t.TempDir(), "owner-authorization.json")
	clearancePath := filepath.Join(t.TempDir(), "input-clearance.json")
	ownerBytes, ownerDigest, clearanceBytes := compatibleProviderAuthorizationFixture(t, problem, endpoint, provider.ProtocolChatCompletions, ownerPath, clearancePath, now)
	if err := os.WriteFile(ownerPath, ownerBytes, 0o600); err != nil {
		t.Fatalf("os.WriteFile(owner authorization) = %v, want local structured fixture", err)
	}
	if err := os.WriteFile(clearancePath, clearanceBytes, 0o600); err != nil {
		t.Fatalf("os.WriteFile(item clearance) = %v, want locally pinned input fixture", err)
	}

	calls := 0
	transport := testRoundTripper(func(request *http.Request) (*http.Response, error) {
		calls++
		if request.URL.String() != endpoint || request.Method != http.MethodPost {
			t.Errorf("compatible provider request = %s %s, want POST %s", request.Method, request.URL, endpoint)
		}
		if got := request.Header.Get("Authorization"); got != "Bearer test-secret" {
			t.Errorf("compatible provider authorization = %q, want configured bearer token", got)
		}
		body, err := io.ReadAll(request.Body)
		if err != nil {
			t.Errorf("read compatible provider request: %v", err)
		}
		var decoded map[string]json.RawMessage
		if err := json.Unmarshal(body, &decoded); err != nil {
			t.Errorf("decode compatible provider request: %v", err)
		}
		var modelID string
		if err := json.Unmarshal(decoded["model"], &modelID); err != nil || modelID != "compatible-model-v1" {
			t.Errorf("compatible provider request model = %q, decode error %v; want authorized model compatible-model-v1", modelID, err)
		}
		response := `{"id":"compatible-call-1","model":"compatible-model-v1","choices":[{"message":{"role":"assistant","content":"by trivial"},"finish_reason":"stop"}],"usage":{"prompt_tokens":5,"completion_tokens":3,"total_tokens":8}}`
		return &http.Response{
			StatusCode: http.StatusOK,
			Header:     http.Header{"Content-Type": []string{"application/json"}},
			Body:       io.NopCloser(strings.NewReader(response)),
			Request:    request,
		}, nil
	})

	config := ChatCompletionsProofSessionConfig{
		CostJournalPath: filepath.Join(t.TempDir(), "provider-costs.jsonl"),
		BudgetLimits:    budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Provider: solver.ChatCompletionsProofSolverConfig{
			ProviderID: "compatible-test-provider", ModelID: "compatible-model-v1",
			BaseURL: "https://api.compatible.example/api/v1", APIKey: "test-secret",
			Price:         budget.Price{Known: true, InputPerMillionMicros: 1_000_000, OutputPerMillionMicros: 1_000_000},
			MaxCostMicros: 50, MaxOutputTokens: 16, EvidenceDir: t.TempDir(), HTTPClient: &http.Client{Transport: transport},
		},
		Verifier:  &sessionTestVerifier{},
		Toolchain: "leanprover/lean4:v4.33.1",
		ExternalAuthorization: &ExternalSolverAuthorization{
			ProviderID: "compatible-test-provider", ProtocolID: provider.ProtocolChatCompletions, ModelID: "compatible-model-v1", EndpointURL: endpoint,
			PerCallCostCeilingMicros: 50, OwnerAuthorizationPath: ownerPath,
			OwnerAuthorizationBytes: ownerBytes, OwnerAuthorizationSHA256: ownerDigest,
			ClearanceArtifacts: []ExternalInputClearanceArtifact{{Path: clearancePath, Bytes: clearanceBytes}},
			AllowedProblems:    []domain.MathProblem{problem},
		},
		Now: func() time.Time { return now },
	}
	session, err := OpenChatCompletionsProofSession(config)
	if err != nil {
		t.Fatalf("OpenChatCompletionsProofSession(authorized compatible provider) = %v, want configured synthetic route", err)
	}
	result, solveErr := session.Solve(context.Background(), "compatible-provider-run", problem)
	closeErr := session.Close()
	if solveErr != nil || closeErr != nil {
		t.Fatalf("SolverSession.Solve/Close(authorized compatible provider) = (%v, %v), want completed synthetic provider-to-verifier path", solveErr, closeErr)
	}
	if calls != 1 || !result.Solved || result.Proof != "by trivial" || len(result.Attempts) != 1 {
		t.Fatalf("SolverSession.Solve(authorized compatible provider) = calls:%d result:%#v, want one proposal accepted by the independent verifier", calls, result)
	}
	if result.Attempts[0].ProviderID != "compatible-test-provider" || result.Attempts[0].ModelID != "compatible-model-v1" || result.Attempts[0].ProviderCallID != "compatible-call-1" {
		t.Errorf("SolverSession.Solve(authorized compatible provider) receipt identity = (%q, %q, %q), want configured provider/model/call IDs", result.Attempts[0].ProviderID, result.Attempts[0].ModelID, result.Attempts[0].ProviderCallID)
	}
	attempt := result.Attempts[0]
	if attempt.ProviderRequestSHA256 == "" || attempt.ProviderResponseSHA256 == "" || attempt.ProviderCallReceiptSHA256 == "" {
		t.Fatalf("compatible provider attempt = %#v, want hash-bound request, response, and call receipt", attempt)
	}
	for _, artifact := range []struct {
		path string
		want string
	}{
		{path: attempt.ProviderRequestPath, want: attempt.ProviderRequestSHA256},
		{path: attempt.ProviderResponsePath, want: attempt.ProviderResponseSHA256},
		{path: attempt.ProviderCallReceiptPath, want: attempt.ProviderCallReceiptSHA256},
	} {
		data, err := os.ReadFile(artifact.path)
		if err != nil {
			t.Fatalf("os.ReadFile(%q) = %v, want persisted compatible-provider evidence", artifact.path, err)
		}
		if got := testSHA256(data); got != artifact.want {
			t.Errorf("SHA256(%q) = %q, want attempt-bound digest %q", artifact.path, got, artifact.want)
		}
	}
}

func compatibleProviderAuthorizationFixture(t *testing.T, problem domain.MathProblem, endpoint, protocolID, ownerPath, clearancePath string, now time.Time) ([]byte, string, []byte) {
	t.Helper()

	trainingAuthorized := false
	owner := externalOwnerAuthorizationRecord{
		Schema: externalOwnerAuthorizationSchema, AuthorizationID: "owner-grant-compatible-session-r1",
		ProviderID: "compatible-test-provider", ProtocolID: protocolID, ModelIDs: []string{"compatible-model-v1"}, EndpointURL: endpoint,
		ExpiresAtUTC: now.Add(time.Hour).Format(time.RFC3339Nano), PerCallCostCeilingMicros: 50,
		AuthorizedContent: "theorem statements and proof attempts only", Items: []string{problem.ID},
		ProhibitedContent:  []string{"mined Zulip or Erdős content", "corpus material", "locked cases", "training data"},
		TrainingAuthorized: &trainingAuthorized,
	}
	ownerBytes, err := json.Marshal(owner)
	if err != nil {
		t.Fatalf("json.Marshal(structured owner authorization) = %v, want valid fixture", err)
	}
	ownerDigest := testSHA256(ownerBytes)
	clearance := map[string]any{
		"schema": externalInputClearanceSchema, "authorization_path": ownerPath, "authorization_sha256": ownerDigest,
		"authorized_content": "theorem statement and proof attempts only", "clearance_id": "clearance-compatible-session-problem",
		"expires_at_utc":     now.Add(time.Hour).Format(time.RFC3339Nano),
		"prohibited_content": []string{"mined Zulip or Erdős content", "corpus material", "locked cases", "training data"},
		"statement":          problem.LeanStatement, "statement_sha256": testSHA256([]byte(problem.LeanStatement)),
		"theorem_id": problem.ID, "theorem_name": problem.ID, "training_authorized": false,
	}
	clearanceBytes, err := json.Marshal(clearance)
	if err != nil {
		t.Fatalf("json.Marshal(item clearance) = %v, want locally pinned fixture", err)
	}
	return ownerBytes, ownerDigest, clearanceBytes
}

func TestOpenAnthropicMessagesProofSessionUsesSharedClearanceCostCascadeAndEvidence(t *testing.T) {
	t.Parallel()
	now := time.Date(2026, 10, 24, 16, 0, 0, 0, time.UTC)
	problem := domain.MathProblem{ID: "native-provider-problem", Statement: "Truth is true.", LeanStatement: "True"}
	baseURL := "https://api.anthropic.example/v1"
	endpoint := baseURL + "/messages"
	ownerPath := filepath.Join(t.TempDir(), "owner-authorization.json")
	clearancePath := filepath.Join(t.TempDir(), "input-clearance.json")
	ownerBytes, ownerDigest, clearanceBytes := compatibleProviderAuthorizationFixture(t, problem, endpoint, provider.ProtocolAnthropicMessages, ownerPath, clearancePath, now)
	if err := os.WriteFile(ownerPath, ownerBytes, 0o600); err != nil {
		t.Fatalf("os.WriteFile(owner authorization) = %v, want local structured grant fixture", err)
	}
	if err := os.WriteFile(clearancePath, clearanceBytes, 0o600); err != nil {
		t.Fatalf("os.WriteFile(item clearance) = %v, want locally pinned item clearance", err)
	}

	calls := 0
	transport := testRoundTripper(func(request *http.Request) (*http.Response, error) {
		calls++
		if request.URL.String() != endpoint || request.Method != http.MethodPost {
			t.Errorf("Anthropic request = %s %s, want POST %s", request.Method, request.URL, endpoint)
		}
		if request.Header.Get("x-api-key") != "test-secret" || request.Header.Get("anthropic-version") != "2023-06-01" {
			t.Errorf("Anthropic headers = x-api-key:%t version:%q, want configured secret and version", request.Header.Get("x-api-key") != "", request.Header.Get("anthropic-version"))
		}
		body, err := io.ReadAll(request.Body)
		if err != nil {
			t.Errorf("read Anthropic request: %v", err)
		}
		var wire map[string]json.RawMessage
		if err := json.Unmarshal(body, &wire); err != nil {
			t.Errorf("decode Anthropic request: %v", err)
		}
		if string(wire["system"]) == "" || string(wire["messages"]) == "" || string(wire["model"]) != `"compatible-model-v1"` {
			t.Errorf("Anthropic native request fields = %s, want system/model/messages mapping", body)
		}
		response := `{"id":"msg-native-call-1","type":"message","role":"assistant","model":"compatible-model-v1","content":[{"type":"text","text":"by trivial"}],"stop_reason":"end_turn","usage":{"input_tokens":5,"output_tokens":3}}`
		return &http.Response{StatusCode: http.StatusOK, Header: http.Header{"Content-Type": []string{"application/json"}}, Body: io.NopCloser(strings.NewReader(response)), Request: request}, nil
	})

	config := ChatCompletionsProofSessionConfig{
		CostJournalPath: filepath.Join(t.TempDir(), "native-provider-costs.jsonl"),
		BudgetLimits:    budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Provider: solver.ChatCompletionsProofSolverConfig{
			ProviderID: "anthropic-native-test", ModelID: "claude-test-v1", BaseURL: baseURL, APIKey: "test-secret",
			Price:         budget.Price{Known: true, InputPerMillionMicros: 1_000_000, OutputPerMillionMicros: 1_000_000},
			MaxCostMicros: 50, MaxOutputTokens: 16, EvidenceDir: t.TempDir(), HTTPClient: &http.Client{Transport: transport},
		},
		Verifier: &sessionTestVerifier{}, Toolchain: "leanprover/lean4:v4.33.1",
		ExternalAuthorization: &ExternalSolverAuthorization{
			ProviderID: "compatible-test-provider", ProtocolID: provider.ProtocolAnthropicMessages, ModelID: "compatible-model-v1", EndpointURL: endpoint,
			PerCallCostCeilingMicros: 50, OwnerAuthorizationPath: ownerPath,
			OwnerAuthorizationBytes: ownerBytes, OwnerAuthorizationSHA256: ownerDigest,
			ClearanceArtifacts: []ExternalInputClearanceArtifact{{Path: clearancePath, Bytes: clearanceBytes}},
			AllowedProblems:    []domain.MathProblem{problem},
		},
		Now: func() time.Time { return now },
	}
	config.Provider.ProviderID = "compatible-test-provider"
	config.Provider.ModelID = "compatible-model-v1"
	session, err := OpenProviderProofSession(ProviderProofSessionConfig{
		ProtocolID:            provider.ProtocolAnthropicMessages,
		CostJournalPath:       config.CostJournalPath,
		BudgetLimits:          config.BudgetLimits,
		Provider:              config.Provider,
		Verifier:              config.Verifier,
		Toolchain:             config.Toolchain,
		ExternalAuthorization: config.ExternalAuthorization,
		Now:                   config.Now,
	})
	if err != nil {
		t.Fatalf("OpenAnthropicMessagesProofSession(exact synthetic grant) = %v, want configured two-stage session", err)
	}
	result, solveErr := session.Solve(context.Background(), "anthropic-native-run", problem)
	closeErr := session.Close()
	if solveErr != nil || closeErr != nil {
		t.Fatalf("SolverSession.Solve/Close(native Messages) = (%v, %v), want completed mock provider-to-verifier path", solveErr, closeErr)
	}
	if calls != 1 || !result.Solved || result.Proof != "by trivial" || len(result.Attempts) != 1 {
		t.Fatalf("native Messages run = calls:%d result:%#v, want one independently verified proof", calls, result)
	}
	attempt := result.Attempts[0]
	if attempt.ProviderCallID != "msg-native-call-1" || attempt.ProviderRequestSHA256 == "" || attempt.ProviderResponseSHA256 == "" || attempt.ProviderCallReceiptSHA256 == "" {
		t.Fatalf("native provider attempt = %#v, want raw body and call-receipt bindings", attempt)
	}
	receiptBytes, err := os.ReadFile(attempt.ProviderCallReceiptPath)
	if err != nil {
		t.Fatalf("os.ReadFile(%q) = %v, want generic protocol receipt", attempt.ProviderCallReceiptPath, err)
	}
	var receipt map[string]any
	if err := json.Unmarshal(receiptBytes, &receipt); err != nil {
		t.Fatalf("json.Unmarshal(provider receipt) = %v, want receipt JSON", err)
	}
	if receipt["protocol_id"] != provider.ProtocolAnthropicMessages || receipt["schema_version"] != "mathcase-provider-call-receipt-v1" {
		t.Errorf("native call receipt identity = protocol:%v schema:%v, want protocol-bound generic receipt", receipt["protocol_id"], receipt["schema_version"])
	}
}

func TestOpenGeminiGenerateContentProofSessionUsesSharedClearanceCostCascadeAndEvidence(t *testing.T) {
	t.Parallel()
	now := time.Date(2026, 10, 24, 16, 0, 0, 0, time.UTC)
	problem := domain.MathProblem{ID: "gemini-provider-problem", Statement: "Truth is true.", LeanStatement: "True"}
	baseURL := "https://generativelanguage.googleapis.test/v1beta"
	endpoint := baseURL + "/models/compatible-model-v1:generateContent"
	ownerPath := filepath.Join(t.TempDir(), "owner-authorization.json")
	clearancePath := filepath.Join(t.TempDir(), "input-clearance.json")
	ownerBytes, ownerDigest, clearanceBytes := compatibleProviderAuthorizationFixture(t, problem, endpoint, provider.ProtocolGeminiGenerateContent, ownerPath, clearancePath, now)
	if err := os.WriteFile(ownerPath, ownerBytes, 0o600); err != nil {
		t.Fatalf("os.WriteFile(owner authorization) = %v, want local structured grant fixture", err)
	}
	if err := os.WriteFile(clearancePath, clearanceBytes, 0o600); err != nil {
		t.Fatalf("os.WriteFile(item clearance) = %v, want locally pinned item clearance", err)
	}

	calls := 0
	transport := testRoundTripper(func(request *http.Request) (*http.Response, error) {
		calls++
		if request.URL.String() != endpoint || request.Method != http.MethodPost {
			t.Errorf("Gemini request = %s %s, want POST %s", request.Method, request.URL, endpoint)
		}
		if request.Header.Get("x-goog-api-key") != "test-secret" || request.URL.RawQuery != "" {
			t.Errorf("Gemini credential placement = header:%t query:%q, want API key header and no URL key", request.Header.Get("x-goog-api-key") != "", request.URL.RawQuery)
		}
		body, err := io.ReadAll(request.Body)
		if err != nil {
			t.Errorf("read Gemini request: %v", err)
		}
		var wire map[string]json.RawMessage
		if err := json.Unmarshal(body, &wire); err != nil {
			t.Errorf("decode Gemini request: %v", err)
		}
		if len(wire["systemInstruction"]) == 0 || len(wire["contents"]) == 0 || len(wire["tools"]) != 0 {
			t.Errorf("Gemini request fields = %s, want system instruction + contents and no tools", body)
		}
		response := `{"responseId":"gemini-call-1","modelVersion":"compatible-model-v1-001","candidates":[{"content":{"role":"model","parts":[{"text":"by trivial"}]},"finishReason":"STOP"}],"usageMetadata":{"promptTokenCount":5,"candidatesTokenCount":3,"totalTokenCount":8}}`
		return &http.Response{StatusCode: http.StatusOK, Header: http.Header{"Content-Type": []string{"application/json"}}, Body: io.NopCloser(strings.NewReader(response)), Request: request}, nil
	})

	config := ProviderProofSessionConfig{
		ProtocolID:      provider.ProtocolGeminiGenerateContent,
		CostJournalPath: filepath.Join(t.TempDir(), "gemini-provider-costs.jsonl"),
		BudgetLimits:    budget.Limits{MaxRunMicros: 100, MaxSessionMicros: 100, MaxCandidateMicros: 50},
		Provider: solver.ProviderProofSolverTransportConfig{
			ProviderID: "compatible-test-provider", ModelID: "compatible-model-v1", BaseURL: baseURL, APIKey: "test-secret",
			Price:         budget.Price{Known: true, InputPerMillionMicros: 1_000_000, OutputPerMillionMicros: 1_000_000},
			MaxCostMicros: 50, MaxOutputTokens: 16, EvidenceDir: t.TempDir(), HTTPClient: &http.Client{Transport: transport},
		},
		Verifier: &sessionTestVerifier{}, Toolchain: "leanprover/lean4:v4.33.1",
		ExternalAuthorization: &ExternalSolverAuthorization{
			ProviderID: "compatible-test-provider", ProtocolID: provider.ProtocolGeminiGenerateContent, ModelID: "compatible-model-v1", EndpointURL: endpoint,
			PerCallCostCeilingMicros: 50, OwnerAuthorizationPath: ownerPath, OwnerAuthorizationBytes: ownerBytes, OwnerAuthorizationSHA256: ownerDigest,
			ClearanceArtifacts: []ExternalInputClearanceArtifact{{Path: clearancePath, Bytes: clearanceBytes}}, AllowedProblems: []domain.MathProblem{problem},
		},
		Now: func() time.Time { return now },
	}
	session, err := OpenProviderProofSession(config)
	if err != nil {
		t.Fatalf("OpenProviderProofSession(exact Gemini synthetic grant) = %v, want shared two-stage session", err)
	}
	result, solveErr := session.Solve(context.Background(), "gemini-native-run", problem)
	closeErr := session.Close()
	if solveErr != nil || closeErr != nil {
		t.Fatalf("SolverSession.Solve/Close(Gemini) = (%v, %v), want mock provider-to-verifier path", solveErr, closeErr)
	}
	if calls != 1 || !result.Solved || result.Proof != "by trivial" || len(result.Attempts) != 1 {
		var receiptDetail []byte
		if len(result.Attempts) > 0 {
			receiptDetail, _ = os.ReadFile(result.Attempts[0].ProviderCallReceiptPath)
		}
		t.Fatalf("Gemini run = calls:%d result:%#v receipt:%s, want one independently verified proof", calls, result, receiptDetail)
	}
	attempt := result.Attempts[0]
	if attempt.ProviderCallID != "gemini-call-1" || attempt.ProviderRequestSHA256 == "" || attempt.ProviderResponseSHA256 == "" || attempt.ProviderCallReceiptSHA256 == "" {
		t.Fatalf("Gemini attempt = %#v, want raw request/response and receipt bindings", attempt)
	}
	receiptBytes, err := os.ReadFile(attempt.ProviderCallReceiptPath)
	if err != nil {
		t.Fatalf("os.ReadFile(%q) = %v, want saved Gemini protocol receipt", attempt.ProviderCallReceiptPath, err)
	}
	var receipt map[string]any
	if err := json.Unmarshal(receiptBytes, &receipt); err != nil {
		t.Fatalf("json.Unmarshal(Gemini call receipt) = %v, want receipt JSON", err)
	}
	if receipt["protocol_id"] != provider.ProtocolGeminiGenerateContent || receipt["model_requested"] != "compatible-model-v1" || receipt["model_returned"] != "compatible-model-v1-001" || receipt["model_identity_kind"] != string(provider.ProofCompletionModelIdentityServingVersion) {
		t.Errorf("Gemini call receipt identity = %#v, want protocol plus requested alias and returned serving version", receipt)
	}
}

type testRoundTripper func(*http.Request) (*http.Response, error)

func (roundTrip testRoundTripper) RoundTrip(request *http.Request) (*http.Response, error) {
	return roundTrip(request)
}
