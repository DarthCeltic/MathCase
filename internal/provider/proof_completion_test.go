package provider

import (
	"net/http"
	"testing"
)

func TestNewProofCompletionClientSelectsOnlyExplicitProtocols(t *testing.T) {
	config := ProofCompletionClientConfig{
		APIKey: "test-secret", BaseURL: "http://127.0.0.1:12345/v1", ModelID: "gemini-test-model", HTTPClient: http.DefaultClient,
	}
	for _, test := range []struct {
		protocol string
		endpoint string
	}{
		{protocol: ProtocolChatCompletions, endpoint: "http://127.0.0.1:12345/v1/chat/completions"},
		{protocol: ProtocolAnthropicMessages, endpoint: "http://127.0.0.1:12345/v1/messages"},
		{protocol: ProtocolGeminiGenerateContent, endpoint: "http://127.0.0.1:12345/v1/models/gemini-test-model:generateContent"},
	} {
		t.Run(test.protocol, func(t *testing.T) {
			client, err := NewProofCompletionClient(test.protocol, config)
			if err != nil {
				t.Fatalf("NewProofCompletionClient(%q): %v", test.protocol, err)
			}
			if client.ProtocolID() != test.protocol || client.Endpoint() != test.endpoint {
				t.Fatalf("factory returned protocol %q and endpoint %q, want %q and %q", client.ProtocolID(), client.Endpoint(), test.protocol, test.endpoint)
			}
		})
	}

	if client, err := NewProofCompletionClient("unknown-chat-protocol", config); err == nil || client != nil {
		t.Fatalf("NewProofCompletionClient(unknown protocol) = (%v, %v), want fail-closed refusal", client, err)
	}
}
