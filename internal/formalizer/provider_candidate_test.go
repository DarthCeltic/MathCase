package formalizer

import (
	"context"
	"encoding/json"
	"io"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/provider"
)

func TestProviderCandidateGeneratorUsesSharedProtocolsEndToEnd(t *testing.T) {
	protocols := []string{
		provider.ProtocolChatCompletions,
		provider.ProtocolAnthropicMessages,
		provider.ProtocolGeminiGenerateContent,
	}
	for _, protocolID := range protocols {
		t.Run(protocolID, func(t *testing.T) {
			preflight, request := pinnedPreflightFixture(t)
			candidateText := encodeCandidate(validCandidate(request))
			responseBody := providerCandidateResponse(t, protocolID, candidateText)
			journal := &budget.MemoryCostJournal{}
			var serverCalls int
			server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
				serverCalls++
				if r.Method != http.MethodPost {
					t.Errorf("request method = %q, want POST", r.Method)
				}
				wantPath := "/v1/chat/completions"
				switch protocolID {
				case provider.ProtocolAnthropicMessages:
					wantPath = "/v1/messages"
				case provider.ProtocolGeminiGenerateContent:
					wantPath = "/v1/models/test-model-1:generateContent"
				}
				if r.URL.Path != wantPath {
					t.Errorf("request path = %q, want %q", r.URL.Path, wantPath)
				}
				switch protocolID {
				case provider.ProtocolChatCompletions:
					if r.Header.Get("Authorization") != "Bearer test-runtime-secret" {
						t.Errorf("chat-completions authorization header was not set")
					}
				case provider.ProtocolAnthropicMessages:
					if r.Header.Get("x-api-key") != "test-runtime-secret" || r.Header.Get("anthropic-version") == "" {
						t.Errorf("Anthropic credential/version headers are missing")
					}
				case provider.ProtocolGeminiGenerateContent:
					if r.Header.Get("x-goog-api-key") != "test-runtime-secret" {
						t.Errorf("Gemini API key header is missing")
					}
				}
				body, err := io.ReadAll(r.Body)
				if err != nil {
					t.Errorf("read request body: %v", err)
				}
				decoded, err := provider.DecodeProofCompletionRequest(protocolID, body, "test-model-1")
				if err != nil {
					t.Errorf("decode shared request: %v", err)
				} else if len(decoded.Messages) != 2 || decoded.Messages[1].Role != "user" || !strings.Contains(decoded.Messages[1].Content, request.Source.Statement) || decoded.MaxOutputTokens != 512 || decoded.Temperature != 0 {
					t.Errorf("request was not the exact shared formalizer input: %#v", decoded)
				}
				if strings.Contains(string(body), "test-runtime-secret") {
					t.Error("runtime provider key appeared in the request body")
				}
				if records := journal.Records(); len(records) != 1 || records[0].CallState != budget.CallStarted {
					t.Errorf("cost start record was not durable before HTTP dispatch: %#v", records)
				}
				w.Header().Set("Content-Type", "application/json")
				_, _ = w.Write(responseBody)
			}))

			runBudget := newNebiusTestRunBudget(t)
			price := budget.Price{Known: true, InputPerMillionMicros: 1_000_000, OutputPerMillionMicros: 2_000_000}
			routeNow := time.Now().UTC()
			routeAuthorization := writeTestRouteAuthorization(t, request, "test-provider", protocolID,
				server.URL+"/v1", "test-model-1", 1000, 512, price, routeNow)
			generator, err := NewProviderCandidateGenerator(ProviderCandidateGeneratorConfig{
				ProviderID: "test-provider", Surface: "Synthetic provider test", ProtocolID: protocolID,
				APIKey: "test-runtime-secret", BaseURL: server.URL + "/v1", ModelID: "test-model-1",
				AccountProfile:  "synthetic-test-account",
				MaxOutputTokens: 512, CostCeilingMicros: 1000,
				Price:     price,
				RunBudget: runBudget, CostJournal: journal, Timeout: 30 * time.Second,
				RouteAuthorization: routeAuthorization, Now: func() time.Time { return routeNow }, AuthorizedRequest: &request,
			})
			if err != nil {
				server.Close()
				t.Fatalf("NewProviderCandidateGenerator(): %v", err)
			}
			store, err := NewArtifactStore(filepath.Join(t.TempDir(), "formalizer-store"))
			if err != nil {
				server.Close()
				t.Fatalf("NewArtifactStore(): %v", err)
			}
			snapshotBytes, err := json.Marshal(preflight.Snapshot)
			if err != nil {
				server.Close()
				t.Fatalf("marshal pinned snapshot: %v", err)
			}
			frontend := Frontend{Generator: generator, Checker: newFakeChecker(t), ClearanceVerifier: preflight}
			result, receipt, runErr := frontend.GenerateAndPersist(context.Background(), request, store, ArtifactEvidenceInputs{
				CatalogSnapshotBytes: snapshotBytes, SourceItemBytes: preflight.SourceItemBytes["source-001"],
				ClearanceRegisterBytes: preflight.ClearanceRegisterBytes, ProviderRouteAuthorizationBytes: routeAuthorization.Bytes,
			})
			server.Close()
			if runErr != nil {
				t.Fatalf("GenerateAndPersist(): %v", runErr)
			}
			if result.Status != statusPropositionPass || serverCalls != 1 {
				t.Fatalf("result/server calls = (%q, %d), want one elaborated candidate and one request", result.Status, serverCalls)
			}
			if result.ProviderID != "test-provider" || result.ProviderProtocolID != protocolID || result.ProviderEndpoint == "" || result.ProviderReturnedModel == "" || result.ProviderModelIdentityKind == "" {
				t.Fatalf("durable provider identity is incomplete: %#v", result)
			}
			if result.RouteAuthorization.AuthorizationID != routeAuthorization.Record.AuthorizationID || result.RouteAuthorization.SHA256 != routeAuthorization.SHA256 {
				t.Fatalf("result route-authorization receipt = %#v, want exact grant identity and hash", result.RouteAuthorization)
			}
			if result.RunReceipt.CostRecordID != formalizerCostRecordID("test-provider", request.PlannedReceiptID) || result.GenerationResponse != candidateText {
				t.Fatalf("provider receipt/content = (%q, %q), want route-bound cost ID and exact model output", result.RunReceipt.CostRecordID, result.GenerationResponse)
			}
			if err := validateProviderEvidence(request, result.GenerationResponse, result.ProviderID, result.ProviderProtocolID, result.ProviderEndpoint, result.ProviderReturnedModel, result.ProviderModelIdentityKind, result.ProviderRequestBody, result.ProviderResponseBody, result.ProviderResponseIncomplete, result.RunReceipt); err != nil {
				t.Fatalf("reopen exact provider evidence: %v", err)
			}
			if err := validateProviderEvidence(request, result.GenerationResponse, result.ProviderID, result.ProviderProtocolID, result.ProviderEndpoint+"/wrong", result.ProviderReturnedModel, result.ProviderModelIdentityKind, result.ProviderRequestBody, result.ProviderResponseBody, result.ProviderResponseIncomplete, result.RunReceipt); err == nil {
				t.Fatal("provider evidence accepted a misbound endpoint")
			}
			changedRequest := request
			changedRequest.Source.Statement += " changed"
			if err := validateProviderEvidence(changedRequest, result.GenerationResponse, result.ProviderID, result.ProviderProtocolID, result.ProviderEndpoint, result.ProviderReturnedModel, result.ProviderModelIdentityKind, result.ProviderRequestBody, result.ProviderResponseBody, result.ProviderResponseIncomplete, result.RunReceipt); err == nil {
				t.Fatal("provider evidence accepted a request bound to different source text")
			}
			reopened, _, err := store.Get(context.Background(), receipt.ArtifactSHA256)
			if err != nil || reopened.Result.ProviderProtocolID != protocolID || reopened.Result.ProviderEndpoint != result.ProviderEndpoint {
				t.Fatalf("reopen provider artifact = (%#v, %v), want exact protocol and endpoint", reopened.Result, err)
			}
			tampered := reopened
			tampered.ProviderRouteAuthorizationBytes = append([]byte(nil), reopened.ProviderRouteAuthorizationBytes...)
			tampered.ProviderRouteAuthorizationBytes[0] ^= 1
			if err := tampered.Validate(context.Background()); err == nil {
				t.Fatal("durable reader accepted changed route-authorization bytes")
			}
			if err := os.Remove(routeAuthorization.Path); err != nil {
				t.Fatalf("remove original route-grant file after persistence: %v", err)
			}
			if _, _, err := store.Get(context.Background(), receipt.ArtifactSHA256); err != nil {
				t.Fatalf("reopen artifact after source route-grant file is unavailable: %v", err)
			}
			records := journal.Records()
			if len(records) != 2 || records[0].CallState != budget.CallStarted || records[1].CallState != budget.CallFinished || !records[1].CostKnown || records[1].ProviderID != "test-provider" || runBudget.Snapshot().RunSpentMicros != 40 {
				t.Fatalf("ledger/budget = (%#v, %#v), want one call reconciled at 40 micro-USD", records, runBudget.Snapshot())
			}
		})
	}
}

func TestProviderCandidateGeneratorRefusesOutOfScopeItemBeforeCostOrNetwork(t *testing.T) {
	request := validRequest()
	wrongTarget := request
	wrongTarget.Source.Statement += " an unauthorized statement"
	price := budget.Price{Known: true, InputPerMillionMicros: 100, OutputPerMillionMicros: 200}
	now := time.Now().UTC()
	var serverCalls int
	server := httptest.NewServer(http.HandlerFunc(func(http.ResponseWriter, *http.Request) { serverCalls++ }))
	defer server.Close()
	journal := &budget.MemoryCostJournal{}
	controller, err := budget.NewController(budget.Limits{MaxRunMicros: 5000, MaxSessionMicros: 5000, MaxCandidateMicros: 3000})
	if err != nil {
		t.Fatalf("budget.NewController(): %v", err)
	}
	authorization := writeTestRouteAuthorization(t, wrongTarget, "test-provider", provider.ProtocolChatCompletions,
		server.URL+"/v1", "test-model-1", 1000, 128, price, now)
	generator, err := NewProviderCandidateGenerator(ProviderCandidateGeneratorConfig{
		ProviderID: "test-provider", Surface: "synthetic provider", ProtocolID: provider.ProtocolChatCompletions,
		APIKey: "test-key", BaseURL: server.URL + "/v1", ModelID: "test-model-1",
		AccountProfile:  "synthetic-test-account",
		MaxOutputTokens: 128, CostCeilingMicros: 1000, Price: price,
		RunBudget: controller.RunBudget(), CostJournal: journal, Now: func() time.Time { return now },
		RouteAuthorization: authorization, AuthorizedRequest: &wrongTarget,
	})
	if err != nil {
		t.Fatalf("NewProviderCandidateGenerator(): %v", err)
	}
	if _, err := generator.GenerateCandidate(context.Background(), request); err == nil {
		t.Fatal("GenerateCandidate() accepted a different statement than the route grant")
	}
	if serverCalls != 0 || len(journal.Records()) != 0 || controller.RunBudget().Snapshot().RunReservedMicros != 0 {
		t.Fatalf("out-of-scope dispatch state = (requests=%d, ledger=%#v, budget=%#v), want refusal before network, ledger, or reservation", serverCalls, journal.Records(), controller.RunBudget().Snapshot())
	}
}

func providerCandidateResponse(t *testing.T, protocolID, candidate string) []byte {
	t.Helper()
	switch protocolID {
	case provider.ProtocolChatCompletions:
		return []byte(`{"id":"chat-call-001","model":"test-model-1","choices":[{"message":{"role":"assistant","content":` + mustJSONQuote(candidate) + `},"finish_reason":"stop"}],"usage":{"prompt_tokens":20,"completion_tokens":10,"total_tokens":30}}`)
	case provider.ProtocolAnthropicMessages:
		return []byte(`{"id":"msg-call-001","type":"message","role":"assistant","model":"test-model-1","content":[{"type":"text","text":` + mustJSONQuote(candidate) + `}],"stop_reason":"end_turn","usage":{"input_tokens":20,"output_tokens":10}}`)
	case provider.ProtocolGeminiGenerateContent:
		return []byte(`{"responseId":"gemini-call-001","modelVersion":"test-model-1-serving","candidates":[{"content":{"role":"model","parts":[{"text":` + mustJSONQuote(candidate) + `}]},"finishReason":"STOP"}],"usageMetadata":{"promptTokenCount":20,"candidatesTokenCount":10,"totalTokenCount":30}}`)
	default:
		t.Fatalf("unsupported test protocol %q", protocolID)
		return nil
	}
}
