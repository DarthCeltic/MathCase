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

const anthropicMessagesAPIVersion = "2023-06-01"

// AnthropicMessagesClientConfig configures Anthropic's native Messages API.
// APIKey remains in process memory and is sent only in the x-api-key header.
type AnthropicMessagesClientConfig struct {
	APIKey           string
	BaseURL          string
	HTTPClient       *http.Client
	Timeout          time.Duration
	MaxRequestBytes  int64
	MaxResponseBytes int64
}

// AnthropicMessagesClient maps MathCase's narrow proof-completion request to
// Anthropic's native Messages wire protocol. It neither authorizes nor verifies
// the returned Lean proof.
type AnthropicMessagesClient struct {
	http *jsonHTTPClient
}

func NewAnthropicMessagesClient(config AnthropicMessagesClientConfig) (*AnthropicMessagesClient, error) {
	baseURL := strings.TrimRight(config.BaseURL, "/")
	parsed, err := url.Parse(baseURL)
	if err != nil || parsed.Host == "" || parsed.User != nil || parsed.RawQuery != "" || parsed.Fragment != "" || parsed.ForceQuery {
		return nil, errors.New("provider: Anthropic base URL must be absolute and contain no credentials, query, or fragment")
	}
	loopback := parsed.Hostname() == "localhost" || parsed.Hostname() == "127.0.0.1" || parsed.Hostname() == "::1"
	if parsed.Scheme != "https" && !(parsed.Scheme == "http" && loopback) {
		return nil, errors.New("provider: Anthropic endpoint must use HTTPS except for loopback tests")
	}
	if parsed.Path == "/" {
		parsed.Path = ""
	}
	if strings.Contains(parsed.Path, "..") || strings.ContainsAny(parsed.Path, "\\\x00\r\n") || parsed.RawPath != "" {
		return nil, errors.New("provider: Anthropic base URL path is invalid")
	}
	endpoint := strings.TrimRight(parsed.String(), "/") + "/messages"
	httpClient, err := newJSONHTTPClient(jsonHTTPClientConfig{
		APIKey: config.APIKey, Endpoint: endpoint,
		APIKeyHeader: "x-api-key", VersionHeader: "anthropic-version", VersionValue: anthropicMessagesAPIVersion,
		HTTPClient: config.HTTPClient, Timeout: config.Timeout,
		MaxRequestBytes: config.MaxRequestBytes, MaxResponseBytes: config.MaxResponseBytes,
	})
	if err != nil {
		return nil, fmt.Errorf("provider: configure Anthropic Messages transport: %w", err)
	}
	return &AnthropicMessagesClient{http: httpClient}, nil
}

func (c *AnthropicMessagesClient) ProtocolID() string { return ProtocolAnthropicMessages }

func (c *AnthropicMessagesClient) Endpoint() string {
	if c == nil {
		return ""
	}
	return c.http.endpointURL()
}

func (c *AnthropicMessagesClient) Complete(ctx context.Context, request ProofCompletionRequest) (ProofCompletionCall, error) {
	body, err := EncodeAnthropicMessagesRequest(request)
	if err != nil {
		return ProofCompletionCall{}, err
	}
	if c == nil || c.http == nil {
		return ProofCompletionCall{Raw: JSONHTTPResult{RequestBody: body}}, errors.New("provider: Anthropic Messages client is not configured")
	}
	raw, transportErr := c.http.do(ctx, body)
	call := ProofCompletionCall{Raw: raw}
	if transportErr != nil {
		var httpErr *ProviderHTTPError
		if errors.As(transportErr, &httpErr) {
			call.FailureKind = httpErr.Kind
			call.Failure = transportErr
			return call, nil
		}
		return call, transportErr
	}
	if raw.ResponseTruncated {
		call.FailureKind = "response_truncated"
		call.Failure = errors.New("provider: Anthropic Messages response exceeded the configured capture limit")
		return call, nil
	}
	if raw.StatusCode < 200 || raw.StatusCode >= 300 {
		call.FailureKind = "http_status"
		call.Failure = fmt.Errorf("provider: Anthropic Messages endpoint returned HTTP %d", raw.StatusCode)
		return call, nil
	}
	decoded, err := DecodeProofCompletionResponse(ProtocolAnthropicMessages, raw.ResponseBody)
	if err != nil {
		call.FailureKind = "invalid_response"
		call.Failure = err
		return call, nil
	}
	call.Response = decoded
	return call, nil
}

type anthropicMessagesWireRequest struct {
	Model     string                 `json:"model"`
	System    string                 `json:"system,omitempty"`
	Messages  []anthropicWireMessage `json:"messages"`
	MaxTokens int                    `json:"max_tokens"`
}

type anthropicWireMessage struct {
	Role    string `json:"role"`
	Content string `json:"content"`
}

// EncodeAnthropicMessagesRequest maps the shared chat representation into the
// native Messages schema. The system instruction is top-level; only user and
// assistant turns remain in messages. Provider extension fields are refused
// rather than silently ignored or allowed to add tools.
func EncodeAnthropicMessagesRequest(request ProofCompletionRequest) ([]byte, error) {
	if err := validateProofCompletionRequest(request); err != nil {
		return nil, err
	}
	if len(request.AdditionalFields) != 0 {
		return nil, errors.New("provider: Anthropic Messages adapter does not accept unreviewed extension fields")
	}
	if request.Temperature != 0 {
		return nil, errors.New("provider: Anthropic Messages adapter uses the model default sampling setting; custom temperature is unsupported")
	}
	wire := anthropicMessagesWireRequest{
		Model: request.Model, MaxTokens: request.MaxOutputTokens,
		Messages: make([]anthropicWireMessage, 0, len(request.Messages)),
	}
	userMessages := 0
	for index, message := range request.Messages {
		switch message.Role {
		case "system":
			if index != 0 || wire.System != "" {
				return nil, errors.New("provider: Anthropic request requires at most one leading system message")
			}
			wire.System = message.Content
		case "user", "assistant":
			wire.Messages = append(wire.Messages, anthropicWireMessage{Role: message.Role, Content: message.Content})
			if message.Role == "user" {
				userMessages++
			}
		default:
			return nil, fmt.Errorf("provider: Anthropic Messages does not support proof prompt role %q", message.Role)
		}
	}
	if len(wire.Messages) == 0 || userMessages == 0 {
		return nil, errors.New("provider: Anthropic Messages request requires at least one user message")
	}
	body, err := json.Marshal(wire)
	if err != nil {
		return nil, fmt.Errorf("provider: encode Anthropic Messages request: %w", err)
	}
	return body, nil
}

type anthropicMessagesWireResponse struct {
	ID      string `json:"id"`
	Type    string `json:"type"`
	Role    string `json:"role"`
	Model   string `json:"model"`
	Content []struct {
		Type string `json:"type"`
		Text string `json:"text"`
	} `json:"content"`
	StopReason string `json:"stop_reason"`
	Usage      *struct {
		InputTokens  int `json:"input_tokens"`
		OutputTokens int `json:"output_tokens"`
	} `json:"usage"`
}

// DecodeAnthropicMessagesResponse extracts only ordinary text blocks for the
// proof proposal. Current Claude models may return thinking blocks by default;
// they are intentionally not forwarded to the Lean-proof parser. The untouched
// response remains available for the call receipt. Tool and unknown blocks
// still fail closed.
func DecodeAnthropicMessagesResponse(body []byte) (ProofCompletionResponse, error) {
	var response anthropicMessagesWireResponse
	if len(body) == 0 || !json.Valid(body) {
		return ProofCompletionResponse{}, errors.New("provider: Anthropic Messages response is empty or invalid JSON")
	}
	if err := json.Unmarshal(body, &response); err != nil {
		return ProofCompletionResponse{}, fmt.Errorf("provider: decode Anthropic Messages response: %w", err)
	}
	if response.Type != "message" || response.Role != "assistant" {
		return ProofCompletionResponse{}, errors.New("provider: Anthropic response is not an assistant message")
	}
	if strings.TrimSpace(response.ID) == "" || strings.TrimSpace(response.Model) == "" || strings.TrimSpace(response.StopReason) == "" {
		return ProofCompletionResponse{}, errors.New("provider: Anthropic response is missing its message ID, model identity, or stop reason")
	}
	var content strings.Builder
	for _, block := range response.Content {
		switch block.Type {
		case "text":
			content.WriteString(block.Text)
		case "thinking", "redacted_thinking":
			// Retain the provider bytes in the raw call record but do not mix
			// internal reasoning blocks into a candidate Lean proof.
		default:
			return ProofCompletionResponse{}, fmt.Errorf("provider: unsupported Anthropic response content block %q", block.Type)
		}
	}
	normalized := ProofCompletionResponse{
		ID: response.ID, Model: response.Model, ModelIdentityKind: ProofCompletionModelIdentityExactRequest,
		Text: content.String(), FinishReason: response.StopReason,
	}
	if response.Usage != nil {
		usage := Usage{PromptTokens: response.Usage.InputTokens, CompletionTokens: response.Usage.OutputTokens}
		if err := usage.Validate(); err != nil {
			return ProofCompletionResponse{}, err
		}
		normalized.UsagePresent = true
		normalized.PromptTokens = usage.PromptTokens
		normalized.CompletionTokens = usage.CompletionTokens
		normalized.TotalTokens = usage.PromptTokens + usage.CompletionTokens
	}
	return normalized, nil
}
