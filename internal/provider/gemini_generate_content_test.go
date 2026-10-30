package provider

import (
	"context"
	"encoding/json"
	"io"
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"
)

func TestGeminiGenerateContentClientUsesNativeWireAndNormalizesResponse(t *testing.T) {
	t.Parallel()
	responseBody := `{"responseId":"resp-test-1","modelVersion":"gemini-test-model-001","candidates":[{"content":{"role":"model","parts":[{"text":"by trivial"}]},"finishReason":"STOP"}],"usageMetadata":{"promptTokenCount":11,"candidatesTokenCount":3,"totalTokenCount":14}}`
	calls := 0
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		calls++
		if r.Method != http.MethodPost || r.URL.Path != "/v1beta/models/gemini-test-model:generateContent" {
			t.Errorf("request = %s %s, want POST /v1beta/models/gemini-test-model:generateContent", r.Method, r.URL.Path)
		}
		if got := r.Header.Get("x-goog-api-key"); got != "test-secret" {
			t.Errorf("x-goog-api-key = %q, want configured runtime secret", got)
		}
		body, err := io.ReadAll(r.Body)
		if err != nil {
			t.Errorf("read request body: %v", err)
		}
		if strings.Contains(string(body), "test-secret") {
			t.Error("runtime secret appeared in request body")
		}
		var request map[string]json.RawMessage
		if err := json.Unmarshal(body, &request); err != nil {
			t.Errorf("decode request body: %v", err)
		}
		var contents []struct {
			Role  string `json:"role"`
			Parts []struct {
				Text string `json:"text"`
			} `json:"parts"`
		}
		if err := json.Unmarshal(request["contents"], &contents); err != nil {
			t.Errorf("decode Gemini contents: %v", err)
		}
		var system struct {
			Parts []struct {
				Text string `json:"text"`
			} `json:"parts"`
		}
		if err := json.Unmarshal(request["systemInstruction"], &system); err != nil {
			t.Errorf("decode Gemini system instruction: %v", err)
		}
		var generation struct {
			MaxOutputTokens int     `json:"maxOutputTokens"`
			Temperature     float64 `json:"temperature"`
		}
		if err := json.Unmarshal(request["generationConfig"], &generation); err != nil {
			t.Errorf("decode Gemini generation config: %v", err)
		}
		if len(contents) != 2 || contents[0].Role != "user" || contents[0].Parts[0].Text != "First" || contents[1].Role != "model" || contents[1].Parts[0].Text != "Prior answer" {
			t.Errorf("Gemini contents = %#v, want mapped user/model turns", contents)
		}
		if len(system.Parts) != 1 || system.Parts[0].Text != "Return a Lean proof." || generation.MaxOutputTokens != 32 || generation.Temperature != 0 {
			t.Errorf("Gemini system/config = %#v/%#v, want system text, 32 tokens, temperature zero", system, generation)
		}
		if _, exists := request["tools"]; exists {
			t.Error("Gemini proof request unexpectedly enabled tools")
		}
		w.Header().Set("Content-Type", "application/json")
		_, _ = io.WriteString(w, responseBody)
	}))
	defer server.Close()

	client, err := NewGeminiGenerateContentClient(GeminiGenerateContentClientConfig{
		APIKey: "test-secret", BaseURL: server.URL + "/v1beta", ModelID: "gemini-test-model",
	})
	if err != nil {
		t.Fatalf("NewGeminiGenerateContentClient(): %v", err)
	}
	call, err := client.Complete(context.Background(), ProofCompletionRequest{
		Model: "gemini-test-model", MaxOutputTokens: 32,
		Messages: []ChatMessage{
			{Role: "system", Content: "Return a Lean proof."},
			{Role: "user", Content: "First"},
			{Role: "assistant", Content: "Prior answer"},
		},
	})
	if err != nil {
		t.Fatalf("Complete() = %v, want one normalized native call", err)
	}
	if calls != 1 || call.Failure != nil || call.Raw.StatusCode != http.StatusOK || call.Response.ID != "resp-test-1" || call.Response.Model != "gemini-test-model-001" || call.Response.Text != "by trivial" || call.Response.FinishReason != "STOP" || !call.Response.UsagePresent || call.Response.PromptTokens != 11 || call.Response.CompletionTokens != 3 || call.Response.TotalTokens != 14 {
		t.Fatalf("Complete() = calls:%d call:%#v, want raw native evidence and normalized response", calls, call)
	}
	wantEndpoint := server.URL + "/v1beta/models/gemini-test-model:generateContent"
	if client.ProtocolID() != ProtocolGeminiGenerateContent || client.Endpoint() != wantEndpoint {
		t.Errorf("client identity = (%q, %q), want %q and %q", client.ProtocolID(), client.Endpoint(), ProtocolGeminiGenerateContent, wantEndpoint)
	}
}

func TestEncodeGeminiGenerateContentRequestRefusesUnreviewedInputShapes(t *testing.T) {
	t.Parallel()
	base := ProofCompletionRequest{
		Model: "gemini-test-model", MaxOutputTokens: 8,
		Messages: []ChatMessage{{Role: "system", Content: "System"}, {Role: "user", Content: "Statement"}},
	}
	invalid := []struct {
		name   string
		mutate func(*ProofCompletionRequest)
	}{
		{name: "unsafe model path", mutate: func(request *ProofCompletionRequest) { request.Model = "models/gemini-test" }},
		{name: "tool role", mutate: func(request *ProofCompletionRequest) {
			request.Messages = append(request.Messages, ChatMessage{Role: "tool", Content: "tool output"})
		}},
		{name: "late system instruction", mutate: func(request *ProofCompletionRequest) {
			request.Messages = []ChatMessage{{Role: "user", Content: "Statement"}, {Role: "system", Content: "Late"}}
		}},
		{name: "no user turn", mutate: func(request *ProofCompletionRequest) {
			request.Messages = []ChatMessage{{Role: "system", Content: "Only system"}}
		}},
		{name: "extension fields", mutate: func(request *ProofCompletionRequest) {
			request.AdditionalFields = map[string]json.RawMessage{"tools": json.RawMessage(`[]`)}
		}},
	}
	for _, test := range invalid {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			request := base
			request.Messages = append([]ChatMessage(nil), base.Messages...)
			test.mutate(&request)
			if _, err := EncodeGeminiGenerateContentRequest(request); err == nil {
				t.Errorf("EncodeGeminiGenerateContentRequest(%q) = nil error, want fail-closed refusal", test.name)
			}
		})
	}
}

func TestDecodeGeminiGenerateContentResponsePreservesOnlyProofText(t *testing.T) {
	t.Parallel()
	body := `{"responseId":"resp-test-2","modelVersion":"gemini-test-model-001","candidates":[{"content":{"role":"model","parts":[{"text":"private reasoning","thought":true},{"text":"by trivial"}]},"finishReason":"STOP"}]}`
	response, err := DecodeGeminiGenerateContentResponse([]byte(body))
	if err != nil {
		t.Fatalf("DecodeGeminiGenerateContentResponse(thought plus proof) = %v, want proof text extraction", err)
	}
	if response.Text != "by trivial" || response.ID != "resp-test-2" || response.Model != "gemini-test-model-001" {
		t.Errorf("normalized response = %#v, want visible proof text and exact served identity", response)
	}
}

func TestDecodeGeminiGenerateContentResponseRejectsAmbiguousOrNonTextCandidates(t *testing.T) {
	t.Parallel()
	for _, test := range []struct {
		name string
		body string
	}{
		{name: "no identified candidate", body: `{"responseId":"r","modelVersion":"m","candidates":[]}`},
		{name: "multiple candidates", body: `{"responseId":"r","modelVersion":"m","candidates":[{"content":{"role":"model","parts":[{"text":"by trivial"}]},"finishReason":"STOP"},{"content":{"role":"model","parts":[{"text":"by trivial"}]},"finishReason":"STOP"}]}`},
		{name: "tool part", body: `{"responseId":"r","modelVersion":"m","candidates":[{"content":{"role":"model","parts":[{"functionCall":{"name":"proof"}}]},"finishReason":"STOP"}]}`},
		{name: "missing model identity", body: `{"responseId":"r","candidates":[{"content":{"role":"model","parts":[{"text":"by trivial"}]},"finishReason":"STOP"}]}`},
		{name: "missing finish reason", body: `{"responseId":"r","modelVersion":"m","candidates":[{"content":{"role":"model","parts":[{"text":"by trivial"}]}}]}`},
	} {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			if _, err := DecodeGeminiGenerateContentResponse([]byte(test.body)); err == nil {
				t.Errorf("DecodeGeminiGenerateContentResponse(%q) = nil error, want fail-closed refusal", test.name)
			}
		})
	}
}
