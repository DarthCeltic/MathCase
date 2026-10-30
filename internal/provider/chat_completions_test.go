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

func TestChatCompletionsClientPreservesOneRequestAndResponse(t *testing.T) {
	responseBody := `{"id":"chatcmpl-test-1","model":"test-model","choices":[{"message":{"role":"assistant","content":"by trivial"},"finish_reason":"stop"}],"usage":{"prompt_tokens":12,"completion_tokens":4,"total_tokens":16}}`
	serverCalls := 0
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		serverCalls++
		if r.URL.Path != "/v1/chat/completions" || r.Method != http.MethodPost {
			t.Errorf("request = %s %s, want POST /v1/chat/completions", r.Method, r.URL.Path)
		}
		if got := r.Header.Get("Authorization"); got != "Bearer test-secret" {
			t.Errorf("authorization = %q, want configured bearer token", got)
		}
		body, err := io.ReadAll(r.Body)
		if err != nil {
			t.Errorf("read request: %v", err)
		}
		var decoded map[string]json.RawMessage
		if err := json.Unmarshal(body, &decoded); err != nil {
			t.Errorf("decode request: %v", err)
		}
		if _, ok := decoded["model"]; !ok {
			t.Error("request omitted model")
		}
		if strings.Contains(string(body), "test-secret") {
			t.Error("API key appeared in request body")
		}
		w.Header().Set("Content-Type", "application/json")
		_, _ = io.WriteString(w, responseBody)
	}))
	defer server.Close()

	client, err := NewChatCompletionsClient(ChatCompletionsClientConfig{APIKey: "test-secret", BaseURL: server.URL + "/v1"})
	if err != nil {
		t.Fatalf("NewChatCompletionsClient(): %v", err)
	}
	request := ChatCompletionsRequest{
		Model: "test-model", Messages: []ChatMessage{{Role: "user", Content: "True"}},
		MaxTokens: 32, Temperature: 0,
		AdditionalFields: map[string]json.RawMessage{"chat_template_kwargs": json.RawMessage(`{"enable_thinking":false}`)},
	}
	result, err := client.Do(context.Background(), request)
	if err != nil {
		t.Fatalf("Do(): %v", err)
	}
	if serverCalls != 1 || result.StatusCode != http.StatusOK || string(result.ResponseBody) != responseBody || result.ResponseTruncated {
		t.Fatalf("HTTP result = calls:%d status:%d truncated:%v response:%q", serverCalls, result.StatusCode, result.ResponseTruncated, result.ResponseBody)
	}
	decoded, err := DecodeChatCompletionsResponse(result.ResponseBody)
	if err != nil {
		t.Fatalf("DecodeChatCompletionsResponse(): %v", err)
	}
	if decoded.ID != "chatcmpl-test-1" || decoded.Model != "test-model" || len(decoded.Choices) != 1 || decoded.Choices[0].Message.Content != "by trivial" || decoded.Usage == nil || decoded.Usage.CompletionTokens != 4 {
		t.Fatalf("decoded response = %#v", decoded)
	}
	if len(result.RequestBody) == 0 || !strings.Contains(string(result.RequestBody), "enable_thinking") {
		t.Fatalf("exact request body was not preserved: %q", result.RequestBody)
	}
}

func TestChatCompletionsClientDoesNotFollowRedirects(t *testing.T) {
	redirectTargetCalls := 0
	target := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		redirectTargetCalls++
		if r.Header.Get("Authorization") != "" {
			t.Error("bearer token was forwarded to a redirect target")
		}
	}))
	defer target.Close()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		http.Redirect(w, r, target.URL, http.StatusTemporaryRedirect)
	}))
	defer server.Close()

	client, err := NewChatCompletionsClient(ChatCompletionsClientConfig{APIKey: "test-secret", BaseURL: server.URL})
	if err != nil {
		t.Fatalf("NewChatCompletionsClient(): %v", err)
	}
	result, err := client.Do(context.Background(), ChatCompletionsRequest{Model: "test", Messages: []ChatMessage{{Role: "user", Content: "x"}}, MaxTokens: 1})
	if err != nil {
		t.Fatalf("Do() returned transport error for redirect response: %v", err)
	}
	if result.StatusCode != http.StatusTemporaryRedirect || redirectTargetCalls != 0 {
		t.Fatalf("redirect result = status %d, target calls %d; want one un-followed redirect", result.StatusCode, redirectTargetCalls)
	}
}

func TestChatCompletionsRequestRejectsReservedExtensionAndInvalidJSON(t *testing.T) {
	base := ChatCompletionsRequest{Model: "test", Messages: []ChatMessage{{Role: "user", Content: "x"}}, MaxTokens: 1}
	for _, fields := range []map[string]json.RawMessage{
		{"model": json.RawMessage(`"other"`)},
		{"vendor_option": json.RawMessage(`not-json`)},
	} {
		base.AdditionalFields = fields
		if _, err := EncodeChatCompletionsRequest(base); err == nil {
			t.Fatalf("EncodeChatCompletionsRequest(%#v) succeeded; want refusal", fields)
		}
	}
}

func TestChatCompletionsClientMarksOversizeResponseWithoutRetry(t *testing.T) {
	serverCalls := 0
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		serverCalls++
		_, _ = io.WriteString(w, strings.Repeat("x", 80))
	}))
	defer server.Close()
	client, err := NewChatCompletionsClient(ChatCompletionsClientConfig{APIKey: "test-secret", BaseURL: server.URL, MaxResponseBytes: 16})
	if err != nil {
		t.Fatalf("NewChatCompletionsClient(): %v", err)
	}
	result, err := client.Do(context.Background(), ChatCompletionsRequest{Model: "test", Messages: []ChatMessage{{Role: "user", Content: "x"}}, MaxTokens: 1})
	if err != nil {
		t.Fatalf("Do() error = %v", err)
	}
	if !result.ResponseTruncated || len(result.ResponseBody) != 16 || serverCalls != 1 {
		t.Fatalf("response capture = truncated:%v bytes:%d calls:%d", result.ResponseTruncated, len(result.ResponseBody), serverCalls)
	}
}
