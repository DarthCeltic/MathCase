package formalizer

import (
	"context"
	"encoding/json"
	"io"
	"net/http"
	"net/http/httptest"
	"path/filepath"
	"reflect"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/provider"
)

func TestNebiusCandidateGeneratorCapturesAndPersistsOneLedgeredCall(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	candidateBytes := []byte(encodeCandidate(validCandidate(request)))
	responseBody, err := json.Marshal(map[string]any{
		"id":      "chatcmpl-test-001",
		"model":   "Qwen/Qwen3-30B-A3B-Instruct-2507",
		"choices": []any{map[string]any{"message": map[string]string{"content": string(candidateBytes)}}},
		"usage":   map[string]int{"prompt_tokens": 20, "completion_tokens": 10, "total_tokens": 30},
	})
	if err != nil {
		t.Fatalf("marshal mock completion: %v", err)
	}

	journal := &budget.MemoryCostJournal{}
	runBudget := newNebiusTestRunBudget(t)
	var serverCalls int
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		serverCalls++
		if r.URL.Path != "/v1/chat/completions" {
			t.Errorf("request path = %q, want /v1/chat/completions", r.URL.Path)
		}
		if r.Method != http.MethodPost {
			t.Errorf("request method = %q, want POST", r.Method)
		}
		if got := r.Header.Get("Authorization"); got != "Bearer test-runtime-secret" {
			t.Errorf("Authorization header = %q, want bearer secret", got)
		}
		body, err := io.ReadAll(r.Body)
		if err != nil {
			t.Errorf("read mock request body: %v", err)
		}
		if strings.Contains(string(body), "test-runtime-secret") {
			t.Error("runtime secret appeared in provider request body")
		}
		var decoded nebiusChatRequest
		if err := json.Unmarshal(body, &decoded); err != nil {
			t.Errorf("decode request body: %v", err)
		} else {
			if decoded.Model != "Qwen/Qwen3-30B-A3B-Instruct-2507" || decoded.MaxTokens != 512 || decoded.Temperature != 0 {
				t.Errorf("request settings = (%q, %d, %v), want exact model, 512 tokens, temperature 0", decoded.Model, decoded.MaxTokens, decoded.Temperature)
			}
			if len(decoded.Messages) != 2 || !strings.Contains(decoded.Messages[1].Content, request.Source.Statement) {
				t.Errorf("request messages do not contain the exact pinned statement: %#v", decoded.Messages)
			}
		}
		if records := journal.Records(); len(records) != 1 || records[0].CallState != budget.CallStarted {
			t.Errorf("cost journal at dispatch = %#v, want durable start record before HTTP request", records)
		}
		w.Header().Set("Content-Type", "application/json")
		_, _ = w.Write(responseBody)
	}))
	defer server.Close()

	generator := newNebiusTestGenerator(t, server.URL+"/v1", journal, runBudget, request)
	store, err := NewArtifactStore(filepath.Join(t.TempDir(), "formalizer-store"))
	if err != nil {
		t.Fatalf("NewArtifactStore(): %v", err)
	}
	snapshotBytes, err := json.Marshal(preflight.Snapshot)
	if err != nil {
		t.Fatalf("marshal pinned snapshot: %v", err)
	}
	frontend := Frontend{Generator: generator, Checker: newFakeChecker(t), ClearanceVerifier: preflight}
	result, artifactReceipt, runErr := frontend.GenerateAndPersist(context.Background(), request, store, ArtifactEvidenceInputs{
		CatalogSnapshotBytes:            snapshotBytes,
		SourceItemBytes:                 preflight.SourceItemBytes["source-001"],
		ClearanceRegisterBytes:          preflight.ClearanceRegisterBytes,
		ProviderRouteAuthorizationBytes: generator.routeAuthorization.Bytes,
	})
	if runErr != nil {
		t.Fatalf("GenerateAndPersist() error = %v, want mock provider call and pinned Lean check to pass", runErr)
	}
	if result.Status != statusPropositionPass || serverCalls != 1 {
		t.Fatalf("result status/server calls = (%q, %d), want proposition pass and exactly one request", result.Status, serverCalls)
	}
	if result.ProviderRequestBody == "" || digestText(result.ProviderRequestBody) != result.ProviderRequestBodySHA256 || result.ProviderResponseBody != string(responseBody) || digestText(result.ProviderResponseBody) != result.ProviderResponseBodySHA256 {
		t.Fatal("formalizer result did not preserve exact provider request and response bodies with matching digests")
	}
	if result.GenerationResponse != string(candidateBytes) || result.GenerationResponseSHA256 != digestText(string(candidateBytes)) {
		t.Fatal("formalizer result did not preserve the exact assistant content separately from the HTTP envelope")
	}
	if result.RunReceipt.Model != "Qwen/Qwen3-30B-A3B-Instruct-2507" || result.RunReceipt.RunID == nil || *result.RunReceipt.RunID != "chatcmpl-test-001" || result.RunReceipt.ModelIdentityCapturedAtUTC == nil {
		t.Fatalf("run receipt does not capture launch model and provider call identity: %#v", result.RunReceipt)
	}
	if result.RunReceipt.CostRecordID != nebiusCostRecordID(request.PlannedReceiptID) {
		t.Fatalf("receipt cost record ID = %q, want %q", result.RunReceipt.CostRecordID, nebiusCostRecordID(request.PlannedReceiptID))
	}
	if err := result.RunReceipt.ValidateForFutureRun(); err != nil {
		t.Fatalf("ValidateForFutureRun() error = %v", err)
	}
	reopened, _, err := store.Get(context.Background(), artifactReceipt.ArtifactSHA256)
	if err != nil {
		t.Fatalf("reopen durable provider artifact: %v", err)
	}
	if reopened.Result.ProviderRequestBody != result.ProviderRequestBody || reopened.Result.ProviderResponseBody != result.ProviderResponseBody || !reflect.DeepEqual(reopened.Result.RunReceipt, result.RunReceipt) {
		t.Fatal("durable artifact did not preserve provider bodies and the exact run receipt")
	}
	records := journal.Records()
	if len(records) != 2 || records[0].CallState != budget.CallStarted || records[1].CallState != budget.CallFinished || !records[1].CostKnown || records[1].EstimatedCostMicros != 40 || records[1].ProviderCallID != "chatcmpl-test-001" {
		t.Fatalf("cost records = %#v, want started+finished, 40 micro-USD and exact provider call ID", records)
	}
	if got := runBudget.Snapshot().RunSpentMicros; got != 40 {
		t.Fatalf("run spent = %d micro-USD, want 40", got)
	}
}

func TestNebiusInputClearanceRefusalPreventsNetworkAndLedgerStart(t *testing.T) {
	_, request := pinnedPreflightFixture(t)
	journal := &budget.MemoryCostJournal{}
	runBudget := newNebiusTestRunBudget(t)
	serverCalls := 0
	server := httptest.NewServer(http.HandlerFunc(func(http.ResponseWriter, *http.Request) { serverCalls++ }))
	defer server.Close()
	generator := newNebiusTestGenerator(t, server.URL+"/v1", journal, runBudget, request)
	frontend := Frontend{Generator: generator, Checker: newFakeChecker(t), ClearanceVerifier: acceptClearance{err: context.Canceled}}
	_, err := frontend.GenerateCandidate(context.Background(), request)
	if err == nil || serverCalls != 0 || len(journal.Records()) != 0 {
		t.Fatalf("clearance refusal = (err=%v, requests=%d, journal=%#v), want refusal before cost reservation or HTTP dispatch", err, serverCalls, journal.Records())
	}
	if got := runBudget.Snapshot().RunReservedMicros; got != 0 {
		t.Fatalf("reserved amount after clearance refusal = %d, want zero", got)
	}
}

func TestNebiusMissingUsageChargesCeilingAndHaltsSession(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	journal := &budget.MemoryCostJournal{}
	runBudget := newNebiusTestRunBudget(t)
	responseBody := `{"id":"chatcmpl-test-002","model":"Qwen/Qwen3-30B-A3B-Instruct-2507","choices":[{"message":{"content":"{}"}}]}`
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		w.Header().Set("Content-Type", "application/json")
		_, _ = w.Write([]byte(responseBody))
	}))
	defer server.Close()
	generator := newNebiusTestGenerator(t, server.URL+"/v1", journal, runBudget, request)
	store, err := NewArtifactStore(filepath.Join(t.TempDir(), "formalizer-store"))
	if err != nil {
		t.Fatalf("NewArtifactStore(): %v", err)
	}
	snapshotBytes, err := json.Marshal(preflight.Snapshot)
	if err != nil {
		t.Fatalf("marshal pinned snapshot: %v", err)
	}
	frontend := Frontend{Generator: generator, Checker: newFakeChecker(t), ClearanceVerifier: preflight}
	result, artifactReceipt, err := frontend.GenerateAndPersist(context.Background(), request, store, ArtifactEvidenceInputs{
		CatalogSnapshotBytes:            snapshotBytes,
		SourceItemBytes:                 preflight.SourceItemBytes["source-001"],
		ClearanceRegisterBytes:          preflight.ClearanceRegisterBytes,
		ProviderRouteAuthorizationBytes: generator.routeAuthorization.Bytes,
	})
	if err == nil || !strings.Contains(err.Error(), "omitted usage") {
		t.Fatalf("Frontend.GenerateAndPersist() error = %v, want unpriced-usage failure", err)
	}
	if result.ProviderResponseBody != responseBody || result.RunReceipt.CostRecordID == "" {
		t.Fatal("failed call did not preserve its raw provider response and linked cost receipt")
	}
	if result.Status != statusGenerationInfraFailure || artifactReceipt.ArtifactSHA256 == "" {
		t.Fatalf("failed result/artifact = (%q, %#v), want persisted infrastructure failure", result.Status, artifactReceipt)
	}
	reopened, _, err := store.Get(context.Background(), artifactReceipt.ArtifactSHA256)
	if err != nil || reopened.Result.ProviderResponseBody != responseBody || reopened.Result.RunReceipt.CostRecordID == "" {
		t.Fatalf("reopen failed provider attempt = (%#v, %v), want exact body and cost-linked receipt", reopened.Result, err)
	}
	records := journal.Records()
	if len(records) != 2 || records[1].CostKnown || records[1].EstimatedCostMicros != 1000 {
		t.Fatalf("unknown-usage cost record = %#v, want full 1000 micro-USD ceiling", records)
	}
	if _, err := runBudget.Reserve(1); err == nil || err != budget.ErrSessionHalted {
		t.Fatalf("Reserve after unknown charge = %v, want session-halted refusal", err)
	}
}

func TestNebiusTransportFailurePreservesReceiptAndChargesFullCeiling(t *testing.T) {
	preflight, request := pinnedPreflightFixture(t)
	journal := &budget.MemoryCostJournal{}
	runBudget := newNebiusTestRunBudget(t)
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		connection, _, err := w.(http.Hijacker).Hijack()
		if err == nil {
			_ = connection.Close()
		}
	}))
	defer server.Close()
	generator := newNebiusTestGenerator(t, server.URL+"/v1", journal, runBudget, request)
	store, err := NewArtifactStore(filepath.Join(t.TempDir(), "formalizer-store"))
	if err != nil {
		t.Fatalf("NewArtifactStore(): %v", err)
	}
	snapshotBytes, err := json.Marshal(preflight.Snapshot)
	if err != nil {
		t.Fatalf("marshal pinned snapshot: %v", err)
	}
	frontend := Frontend{Generator: generator, Checker: newFakeChecker(t), ClearanceVerifier: preflight}
	result, artifactReceipt, err := frontend.GenerateAndPersist(context.Background(), request, store, ArtifactEvidenceInputs{
		CatalogSnapshotBytes:            snapshotBytes,
		SourceItemBytes:                 preflight.SourceItemBytes["source-001"],
		ClearanceRegisterBytes:          preflight.ClearanceRegisterBytes,
		ProviderRouteAuthorizationBytes: generator.routeAuthorization.Bytes,
	})
	if err == nil || !strings.Contains(err.Error(), "no automatic retry") {
		t.Fatalf("GenerateAndPersist() error = %v, want transport failure with no retry", err)
	}
	if artifactReceipt.ArtifactSHA256 == "" || result.RunReceipt.CostRecordID == "" || result.ProviderResponseBody != "" {
		t.Fatalf("transport failure evidence = (%#v, %#v), want durable failure receipt and empty response", result, artifactReceipt)
	}
	reopened, _, err := store.Get(context.Background(), artifactReceipt.ArtifactSHA256)
	if err != nil || reopened.Result.Status != statusGenerationInfraFailure || reopened.Result.RunReceipt.CostRecordID != result.RunReceipt.CostRecordID {
		t.Fatalf("reopened transport failure = (%#v, %v), want linked infrastructure failure", reopened.Result, err)
	}
	records := journal.Records()
	if len(records) != 2 || records[1].CostKnown || records[1].EstimatedCostMicros != 1000 || runBudget.Snapshot().RunSpentMicros != 1000 {
		t.Fatalf("transport failure ledger/budget = (%#v, %#v), want full ceiling charge", records, runBudget.Snapshot())
	}
}

func TestNebiusGeneratorConfigurationFailsClosed(t *testing.T) {
	tests := []struct {
		name   string
		mutate func(*NebiusCandidateGeneratorConfig)
	}{
		{name: "missing model price", mutate: func(c *NebiusCandidateGeneratorConfig) { c.Price.Known = false }},
		{name: "missing ledger", mutate: func(c *NebiusCandidateGeneratorConfig) { c.CostJournal = nil }},
		{name: "non-HTTPS endpoint", mutate: func(c *NebiusCandidateGeneratorConfig) { c.BaseURL = "http://example.com/v1" }},
		{name: "redirect userinfo", mutate: func(c *NebiusCandidateGeneratorConfig) { c.BaseURL = "https://user:pass@example.com/v1" }},
		{name: "unrelated HTTPS host", mutate: func(c *NebiusCandidateGeneratorConfig) {
			c.BaseURL = "https://api.tokenfactory.nebius.com.attacker.example/v1"
		}},
		{name: "wrong API path", mutate: func(c *NebiusCandidateGeneratorConfig) { c.BaseURL = "https://api.tokenfactory.nebius.com/v2" }},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			config := newNebiusTestConfig(t, "https://api.tokenfactory.nebius.com/v1", &budget.MemoryCostJournal{}, newNebiusTestRunBudget(t))
			test.mutate(&config)
			if _, err := NewNebiusCandidateGenerator(config); err == nil {
				t.Fatal("NewNebiusCandidateGenerator() succeeded with an unsafe or incomplete configuration")
			}
		})
	}
}

func newNebiusTestGenerator(t *testing.T, endpoint string, journal *budget.MemoryCostJournal, runBudget *budget.RunBudget, request Request) *NebiusCandidateGenerator {
	t.Helper()
	generator, err := NewNebiusCandidateGenerator(newNebiusTestConfig(t, endpoint, journal, runBudget, request))
	if err != nil {
		t.Fatalf("NewNebiusCandidateGenerator(): %v", err)
	}
	return generator
}

func newNebiusTestConfig(t *testing.T, endpoint string, journal budget.CostCallJournal, runBudget *budget.RunBudget, requestInput ...Request) NebiusCandidateGeneratorConfig {
	t.Helper()
	request := validRequest()
	if len(requestInput) > 0 {
		request = requestInput[0]
	}
	now := time.Date(2026, time.October, 24, 12, 0, 0, 0, time.UTC)
	price := budget.Price{Known: true, InputPerMillionMicros: 1_000_000, OutputPerMillionMicros: 2_000_000}
	routeAuthorization := writeTestRouteAuthorization(t, request, nebiusProviderID, provider.ProtocolChatCompletions,
		endpoint, "Qwen/Qwen3-30B-A3B-Instruct-2507", 1000, 512, price, now)
	return NebiusCandidateGeneratorConfig{
		APIKey:             "test-runtime-secret",
		BaseURL:            endpoint,
		ModelID:            "Qwen/Qwen3-30B-A3B-Instruct-2507",
		AccountProfile:     "synthetic-test-account",
		MaxOutputTokens:    512,
		CostCeilingMicros:  1000,
		Price:              price,
		RunBudget:          runBudget,
		CostJournal:        journal,
		Timeout:            time.Second * 30,
		Now:                func() time.Time { return now },
		RouteAuthorization: routeAuthorization,
		AuthorizedRequest:  &request,
	}
}

func newNebiusTestRunBudget(t *testing.T) *budget.RunBudget {
	t.Helper()
	controller, err := budget.NewController(budget.Limits{MaxRunMicros: 10000, MaxSessionMicros: 10000, MaxCandidateMicros: 5000})
	if err != nil {
		t.Fatalf("budget.NewController(): %v", err)
	}
	return controller.RunBudget()
}
