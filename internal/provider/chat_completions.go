package provider

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"net/http"
	"net/url"
	"strings"
	"time"
)

const (
	defaultChatCompletionTimeout = 2 * time.Minute
	defaultMaxRequestBodyBytes   = 128 << 10
	defaultMaxResponseBodyBytes  = 2 << 20
	maxChatCompletionBodyBytes   = 16 << 20
)

// ChatMessage is one message in the common chat-completions wire format.
type ChatMessage struct {
	Role    string `json:"role"`
	Content string `json:"content"`
}

// ChatCompletionsRequest uses the shared OpenAI-compatible chat-completions
// shape. AdditionalFields permits explicitly configured vendor extensions
// without making provider-specific settings part of the solver interface.
type ChatCompletionsRequest struct {
	Model            string                     `json:"model"`
	Messages         []ChatMessage              `json:"messages"`
	MaxTokens        int                        `json:"max_tokens"`
	Temperature      float64                    `json:"temperature"`
	AdditionalFields map[string]json.RawMessage `json:"-"`
}

// ChatCompletionsClientConfig is the runtime configuration for one
// OpenAI-compatible endpoint. APIKey is retained only in memory and is never
// included in errors, receipts, or request bodies.
type ChatCompletionsClientConfig struct {
	APIKey           string
	BaseURL          string
	HTTPClient       *http.Client
	Timeout          time.Duration
	MaxRequestBytes  int64
	MaxResponseBytes int64
}

// ChatCompletionsClient sends one bounded request and never retries it.
// Provider-independent cost reservation and evidence persistence remain with
// the caller.
type ChatCompletionsClient struct {
	http *jsonHTTPClient
}

// Endpoint returns the exact configured chat-completions endpoint without
// exposing the bearer token. Callers can bind a scoped authorization to the
// destination before opening a provider-backed session.
func (c *ChatCompletionsClient) Endpoint() string {
	if c == nil {
		return ""
	}
	return c.http.endpointURL()
}

// ChatCompletionsHTTPResult preserves the exact request and response bodies
// for callers that need to bind them into a durable receipt.
type ChatCompletionsHTTPResult struct {
	RequestBody       []byte
	ResponseBody      []byte
	StatusCode        int
	ResponseTruncated bool
}

// ProviderHTTPError identifies a transport-stage failure without exposing
// request contents or credentials. It is shared by native protocol adapters.
type ProviderHTTPError struct {
	Kind string
	Err  error
}

func (e *ProviderHTTPError) Error() string {
	if e == nil || e.Err == nil {
		return "provider: request failed"
	}
	return "provider: " + e.Kind + " failed: " + e.Err.Error()
}

func (e *ProviderHTTPError) Unwrap() error {
	if e == nil {
		return nil
	}
	return e.Err
}

// ChatCompletionsHTTPError is kept as an alias for existing callers while
// provider transports now share the protocol-neutral error type.
type ChatCompletionsHTTPError = ProviderHTTPError

// ChatCompletionsResponse is the decoded common response envelope.
type ChatCompletionsResponse struct {
	ID      string                  `json:"id"`
	Model   string                  `json:"model"`
	Choices []ChatCompletionsChoice `json:"choices"`
	Usage   *chatCompletionsUsage   `json:"usage"`
}

type ChatCompletionsChoice struct {
	Message      ChatMessage `json:"message"`
	FinishReason string      `json:"finish_reason"`
}

type chatCompletionsUsage struct {
	PromptTokens     int `json:"prompt_tokens"`
	CompletionTokens int `json:"completion_tokens"`
	TotalTokens      int `json:"total_tokens"`
}

// NewChatCompletionsClient validates and pins an OpenAI-compatible endpoint.
// HTTPS is required except for loopback test servers; redirects are disabled
// so a bearer token cannot be forwarded to a second host.
func NewChatCompletionsClient(config ChatCompletionsClientConfig) (*ChatCompletionsClient, error) {
	if config.APIKey == "" || strings.TrimSpace(config.APIKey) != config.APIKey || strings.ContainsAny(config.APIKey, "\x00\r\n") {
		return nil, errors.New("provider: chat-completions API key must be a non-empty single-line runtime secret")
	}
	baseURL := strings.TrimRight(config.BaseURL, "/")
	parsed, err := url.Parse(baseURL)
	if err != nil || parsed.Host == "" || parsed.User != nil || parsed.RawQuery != "" || parsed.Fragment != "" {
		return nil, errors.New("provider: chat-completions base URL must be absolute and contain no credentials, query, or fragment")
	}
	loopback := parsed.Hostname() == "localhost" || parsed.Hostname() == "127.0.0.1" || parsed.Hostname() == "::1"
	if parsed.Scheme != "https" && !(parsed.Scheme == "http" && loopback) {
		return nil, errors.New("provider: chat-completions endpoint must use HTTPS except for loopback tests")
	}
	if parsed.Path == "/" {
		parsed.Path = ""
	}
	if strings.Contains(parsed.Path, "..") || strings.ContainsAny(parsed.Path, "\\\x00\r\n") {
		return nil, errors.New("provider: chat-completions base URL path is invalid")
	}

	timeout := config.Timeout
	if timeout == 0 {
		timeout = defaultChatCompletionTimeout
	}
	if timeout < time.Second || timeout > 10*time.Minute {
		return nil, errors.New("provider: chat-completions timeout must be between one second and ten minutes")
	}
	maxRequest := config.MaxRequestBytes
	if maxRequest == 0 {
		maxRequest = defaultMaxRequestBodyBytes
	}
	maxResponse := config.MaxResponseBytes
	if maxResponse == 0 {
		maxResponse = defaultMaxResponseBodyBytes
	}
	if maxRequest < 1 || maxRequest > maxChatCompletionBodyBytes || maxResponse < 1 || maxResponse > maxChatCompletionBodyBytes {
		return nil, errors.New("provider: chat-completions body limits are outside the supported range")
	}

	httpClient, err := newJSONHTTPClient(jsonHTTPClientConfig{
		APIKey: config.APIKey, Endpoint: strings.TrimRight(parsed.String(), "/") + "/chat/completions",
		APIKeyHeader: "Authorization", APIKeyPrefix: "Bearer ", HTTPClient: config.HTTPClient,
		Timeout: timeout, MaxRequestBytes: maxRequest, MaxResponseBytes: maxResponse,
	})
	if err != nil {
		return nil, fmt.Errorf("provider: configure chat-completions HTTP transport: %w", err)
	}
	return &ChatCompletionsClient{http: httpClient}, nil
}

// EncodeChatCompletionsRequest returns the canonical wire body. Extension
// fields cannot replace required protocol fields.
func EncodeChatCompletionsRequest(request ChatCompletionsRequest) ([]byte, error) {
	if strings.TrimSpace(request.Model) == "" || strings.TrimSpace(request.Model) != request.Model || len(request.Model) > 256 || strings.ContainsAny(request.Model, "\x00\r\n") {
		return nil, errors.New("provider: chat-completions model ID is invalid")
	}
	if len(request.Messages) == 0 || len(request.Messages) > 64 || request.MaxTokens <= 0 || request.MaxTokens > 1_000_000 {
		return nil, errors.New("provider: chat-completions messages or token limit is invalid")
	}
	for _, message := range request.Messages {
		if message.Role == "" || strings.ContainsAny(message.Role, "\x00\r\n") || strings.ContainsRune(message.Content, '\x00') {
			return nil, errors.New("provider: chat-completions message is invalid")
		}
	}
	if request.Temperature < 0 || request.Temperature > 2 {
		return nil, errors.New("provider: chat-completions temperature is outside the supported range")
	}
	wire := map[string]any{
		"model": request.Model, "messages": request.Messages,
		"max_tokens": request.MaxTokens, "temperature": request.Temperature,
	}
	for name, value := range request.AdditionalFields {
		if name == "" || strings.ContainsAny(name, "\x00\r\n") || value == nil || !json.Valid(value) {
			return nil, errors.New("provider: chat-completions extension field is invalid")
		}
		if _, reserved := wire[name]; reserved {
			return nil, fmt.Errorf("provider: chat-completions extension cannot replace %q", name)
		}
		wire[name] = value
	}
	body, err := json.Marshal(wire)
	if err != nil {
		return nil, fmt.Errorf("provider: encode chat-completions request: %w", err)
	}
	return body, nil
}

// Do encodes and sends exactly one chat-completions request.
func (c *ChatCompletionsClient) Do(ctx context.Context, request ChatCompletionsRequest) (ChatCompletionsHTTPResult, error) {
	body, err := EncodeChatCompletionsRequest(request)
	if err != nil {
		return ChatCompletionsHTTPResult{}, err
	}
	return c.DoEncoded(ctx, body)
}

// DoEncoded sends one already encoded request body. The bytes returned in the
// result are the exact body sent on the wire.
func (c *ChatCompletionsClient) DoEncoded(ctx context.Context, body []byte) (ChatCompletionsHTTPResult, error) {
	if c == nil || c.http == nil {
		return ChatCompletionsHTTPResult{RequestBody: append([]byte(nil), body...)}, errors.New("provider: chat-completions client is not configured")
	}
	result, err := c.http.do(ctx, body)
	return ChatCompletionsHTTPResult(result), err
}

// DecodeChatCompletionsResponse decodes the common provider envelope and
// validates any reported usage counts.
func DecodeChatCompletionsResponse(body []byte) (ChatCompletionsResponse, error) {
	var response ChatCompletionsResponse
	if len(body) == 0 || !json.Valid(body) {
		return response, errors.New("provider: chat-completions response is empty or invalid JSON")
	}
	if err := json.Unmarshal(body, &response); err != nil {
		return ChatCompletionsResponse{}, fmt.Errorf("provider: decode chat-completions response: %w", err)
	}
	if response.Usage != nil {
		usage := Usage{
			PromptTokens:     response.Usage.PromptTokens,
			CompletionTokens: response.Usage.CompletionTokens,
			TotalTokens:      response.Usage.TotalTokens,
		}
		if err := usage.Validate(); err != nil {
			return ChatCompletionsResponse{}, err
		}
	}
	return response, nil
}
