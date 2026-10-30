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

func TestAnthropicMessagesClientUsesNativeWireAndNormalizesResponse(t *testing.T) {
	t.Parallel()
	responseBody := `{"id":"msg-test-1","type":"message","role":"assistant","model":"claude-test-1","content":[{"type":"text","text":"by trivial"}],"stop_reason":"end_turn","usage":{"input_tokens":11,"output_tokens":3}}`
	calls := 0
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		calls++
		if r.Method != http.MethodPost || r.URL.Path != "/v1/messages" {
			t.Errorf("request = %s %s, want POST /v1/messages", r.Method, r.URL.Path)
		}
		if got := r.Header.Get("x-api-key"); got != "test-secret" {
			t.Errorf("x-api-key = %q, want configured runtime secret", got)
		}
		if got := r.Header.Get("anthropic-version"); got != anthropicMessagesAPIVersion {
			t.Errorf("anthropic-version = %q, want %q", got, anthropicMessagesAPIVersion)
		}
		body, err := io.ReadAll(r.Body)
		if err != nil {
			t.Errorf("read request body: %v", err)
		}
		var request map[string]json.RawMessage
		if err := json.Unmarshal(body, &request); err != nil {
			t.Errorf("decode request body: %v", err)
		}
		if strings.Contains(string(body), "test-secret") {
			t.Error("runtime secret appeared in request body")
		}
		if string(request["model"]) != `"claude-test-1"` || string(request["system"]) != `"Return a Lean proof."` || string(request["max_tokens"]) != "32" {
			t.Errorf("native request fields model=%s system=%s max_tokens=%s, want configured values", request["model"], request["system"], request["max_tokens"])
		}
		if _, ok := request["messages"]; !ok {
			t.Error("native Messages request omitted user/assistant messages")
		}
		if _, ok := request["temperature"]; ok {
			t.Error("native Messages request sent a Chat-specific temperature field instead of using the model default")
		}
		if _, ok := request["choices"]; ok {
			t.Error("Anthropic request incorrectly used the Chat Completions wire shape")
		}
		w.Header().Set("Content-Type", "application/json")
		_, _ = io.WriteString(w, responseBody)
	}))
	defer server.Close()

	client, err := NewAnthropicMessagesClient(AnthropicMessagesClientConfig{APIKey: "test-secret", BaseURL: server.URL + "/v1"})
	if err != nil {
		t.Fatalf("NewAnthropicMessagesClient(): %v", err)
	}
	request := ProofCompletionRequest{
		Model: "claude-test-1", MaxOutputTokens: 32, Temperature: 0,
		Messages: []ChatMessage{{Role: "system", Content: "Return a Lean proof."}, {Role: "user", Content: "Lean theorem statement:\nTrue"}},
	}
	call, err := client.Complete(context.Background(), request)
	if err != nil {
		t.Fatalf("Complete() = %v, want one normalized native call", err)
	}
	if calls != 1 || call.Failure != nil || call.Raw.StatusCode != http.StatusOK || call.Response.ID != "msg-test-1" || call.Response.Model != "claude-test-1" || call.Response.Text != "by trivial" || call.Response.FinishReason != "end_turn" || !call.Response.UsagePresent || call.Response.PromptTokens != 11 || call.Response.CompletionTokens != 3 {
		t.Fatalf("Complete() = calls:%d call:%#v, want raw native evidence and normalized response", calls, call)
	}
	if client.ProtocolID() != ProtocolAnthropicMessages || client.Endpoint() != server.URL+"/v1/messages" {
		t.Errorf("client identity = (%q, %q), want native protocol and exact endpoint", client.ProtocolID(), client.Endpoint())
	}
}

func TestEncodeAnthropicMessagesRequestRefusesRoleAndExtensionMismatch(t *testing.T) {
	t.Parallel()
	base := ProofCompletionRequest{
		Model: "claude-test-1", MaxOutputTokens: 8,
		Messages: []ChatMessage{{Role: "system", Content: "System"}, {Role: "user", Content: "Statement"}},
	}
	invalid := []struct {
		name   string
		mutate func(*ProofCompletionRequest)
	}{
		{name: "system after conversation", mutate: func(request *ProofCompletionRequest) {
			request.Messages = []ChatMessage{{Role: "user", Content: "Statement"}, {Role: "system", Content: "Late"}}
		}},
		{name: "tool role", mutate: func(request *ProofCompletionRequest) {
			request.Messages = append(request.Messages, ChatMessage{Role: "tool", Content: "untrusted tool output"})
		}},
		{name: "extension fields", mutate: func(request *ProofCompletionRequest) {
			request.AdditionalFields = map[string]json.RawMessage{"tools": json.RawMessage(`[]`)}
		}},
		{name: "custom temperature", mutate: func(request *ProofCompletionRequest) {
			request.Temperature = 0.25
		}},
		{name: "no user turn", mutate: func(request *ProofCompletionRequest) {
			request.Messages = []ChatMessage{{Role: "system", Content: "Only system"}}
		}},
	}
	for _, test := range invalid {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			request := base
			request.Messages = append([]ChatMessage(nil), base.Messages...)
			test.mutate(&request)
			if _, err := EncodeAnthropicMessagesRequest(request); err == nil {
				t.Errorf("EncodeAnthropicMessagesRequest(%q) = nil error, want refusal", test.name)
			}
		})
	}
}

func TestDecodeAnthropicMessagesResponseRequiresLaunchIdentityFields(t *testing.T) {
	t.Parallel()
	for _, test := range []struct {
		name string
		body string
	}{
		{name: "missing message ID", body: `{"type":"message","role":"assistant","model":"claude-test-1","content":[{"type":"text","text":"by trivial"}],"stop_reason":"end_turn","usage":{"input_tokens":1,"output_tokens":1}}`},
		{name: "missing model identity", body: `{"id":"msg-test-1","type":"message","role":"assistant","content":[{"type":"text","text":"by trivial"}],"stop_reason":"end_turn","usage":{"input_tokens":1,"output_tokens":1}}`},
		{name: "missing stop reason", body: `{"id":"msg-test-1","type":"message","role":"assistant","model":"claude-test-1","content":[{"type":"text","text":"by trivial"}],"usage":{"input_tokens":1,"output_tokens":1}}`},
	} {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			if _, err := DecodeAnthropicMessagesResponse([]byte(test.body)); err == nil {
				t.Error("DecodeAnthropicMessagesResponse() = nil error, want refusal without exact response identity")
			}
		})
	}
}

func TestDecodeAnthropicMessagesResponseRefusesNonTextBlocks(t *testing.T) {
	t.Parallel()
	body := `{"id":"msg-test-1","type":"message","role":"assistant","model":"claude-test-1","content":[{"type":"tool_use","id":"toolu-1","name":"x","input":{}}],"stop_reason":"tool_use","usage":{"input_tokens":1,"output_tokens":1}}`
	if _, err := DecodeAnthropicMessagesResponse([]byte(body)); err == nil {
		t.Error("DecodeAnthropicMessagesResponse(tool-use block) = nil error, want refusal")
	}
}

func TestDecodeAnthropicMessagesResponseSkipsThinkingAndKeepsProofText(t *testing.T) {
	t.Parallel()
	body := `{"id":"msg-test-1","type":"message","role":"assistant","model":"claude-test-1","content":[{"type":"thinking","thinking":"internal reasoning"},{"type":"redacted_thinking","data":"opaque"},{"type":"text","text":"by trivial"}],"stop_reason":"end_turn","usage":{"input_tokens":4,"output_tokens":6}}`
	response, err := DecodeAnthropicMessagesResponse([]byte(body))
	if err != nil {
		t.Fatalf("DecodeAnthropicMessagesResponse(thinking plus text) = %v, want proof text extracted", err)
	}
	if response.Text != "by trivial" || response.Model != "claude-test-1" || response.ID != "msg-test-1" || response.PromptTokens != 4 || response.CompletionTokens != 6 {
		t.Errorf("normalized response = %#v, want text-only proof plus exact identity and usage", response)
	}
}
