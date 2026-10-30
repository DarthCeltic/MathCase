package provider

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"net/http"
	"net/url"
	"strings"
	"time"
)

const (
	ProtocolChatCompletions       = "openai-chat-completions-v1"
	ProtocolAnthropicMessages     = "anthropic-messages-v1"
	ProtocolGeminiGenerateContent = "google-gemini-generate-content-v1"
)

// ProofCompletionRequest is the small protocol-neutral request shared by the
// M2 formalizer and M4 solver adapters. Messages use system/user/assistant
// roles; provider-specific adapters own the wire encoding.
type ProofCompletionRequest struct {
	Model            string
	Messages         []ChatMessage
	MaxOutputTokens  int
	Temperature      float64
	AdditionalFields map[string]json.RawMessage
}

// ProofCompletionModelIdentityKind describes what the provider's response
// model field means. Some APIs echo the requested alias; others report the
// concrete serving version. The adapter declares that distinction so the
// shared solver does not need protocol-specific identity exceptions.
type ProofCompletionModelIdentityKind string

const (
	ProofCompletionModelIdentityExactRequest   ProofCompletionModelIdentityKind = "exact-requested-model"
	ProofCompletionModelIdentityServingVersion ProofCompletionModelIdentityKind = "serving-version"
)

// ProofCompletionResponse normalizes only the fields the M4 proposal path
// needs. Raw provider bytes remain in ProofCompletionCall for receipts.
type ProofCompletionResponse struct {
	ID                string
	Model             string
	ModelIdentityKind ProofCompletionModelIdentityKind
	Text              string
	FinishReason      string
	PromptTokens      int
	CompletionTokens  int
	TotalTokens       int
	UsagePresent      bool
}

// ProofCompletionCall records the raw response and a normalized completion.
// Failure is retained here so the solver can persist the request/response even
// when a provider returned malformed data or the transport failed.
type ProofCompletionCall struct {
	Raw         JSONHTTPResult
	Response    ProofCompletionResponse
	FailureKind string
	Failure     error
}

// ProofCompletionClient adapts one provider wire protocol to the narrow M2/M4
// completion contract. It does not verify a proof or authorize a destination.
type ProofCompletionClient interface {
	ProtocolID() string
	Endpoint() string
	Complete(context.Context, ProofCompletionRequest) (ProofCompletionCall, error)
}

// ProofCompletionClientConfig contains transport settings shared by the
// explicit protocol adapters. The factory never performs a request.
type ProofCompletionClientConfig struct {
	APIKey           string
	BaseURL          string
	ModelID          string
	HTTPClient       *http.Client
	Timeout          time.Duration
	MaxRequestBytes  int64
	MaxResponseBytes int64
}

// BuildProofCompletionEndpoint derives the exact request endpoint for one
// protocol from the configured API root and launch-pinned model identity.
// Native protocols may place the model in the path; OpenAI-compatible and
// Anthropic routes keep it in the request body.
func BuildProofCompletionEndpoint(protocolID, baseURL, modelID string) (string, error) {
	baseURL = strings.TrimRight(baseURL, "/")
	parsed, err := url.Parse(baseURL)
	if err != nil || parsed.Host == "" || parsed.User != nil || parsed.RawQuery != "" || parsed.Fragment != "" || parsed.ForceQuery || parsed.Opaque != "" {
		return "", errors.New("provider: API base URL must be absolute and contain no credentials, query, or fragment")
	}
	loopback := parsed.Hostname() == "localhost" || parsed.Hostname() == "127.0.0.1" || parsed.Hostname() == "::1"
	if parsed.Scheme != "https" && !(parsed.Scheme == "http" && loopback) {
		return "", errors.New("provider: API base URL must use HTTPS except for loopback tests")
	}
	if parsed.Path == "/" {
		parsed.Path = ""
	}
	if parsed.RawPath != "" || strings.Contains(parsed.Path, "..") || strings.ContainsAny(parsed.Path, "\\\x00\r\n") {
		return "", errors.New("provider: API base URL path is invalid")
	}
	baseURL = strings.TrimRight(parsed.String(), "/")
	switch protocolID {
	case ProtocolChatCompletions:
		return baseURL + "/chat/completions", nil
	case ProtocolAnthropicMessages:
		return baseURL + "/messages", nil
	case ProtocolGeminiGenerateContent:
		if !IsGeminiModelID(modelID) {
			return "", errors.New("provider: Gemini model ID must be a single safe model path segment")
		}
		return baseURL + "/models/" + modelID + ":generateContent", nil
	default:
		return "", fmt.Errorf("provider: unsupported proof-completion protocol %q", protocolID)
	}
}

// IsProofCompletionProtocol reports whether the shared M4 completion route
// has a reviewed wire adapter for protocolID.
func IsProofCompletionProtocol(protocolID string) bool {
	switch protocolID {
	case ProtocolChatCompletions, ProtocolAnthropicMessages, ProtocolGeminiGenerateContent:
		return true
	default:
		return false
	}
}

// NewProofCompletionClient constructs one supported wire adapter. Protocol
// selection is explicit so credentials cannot silently fall through to a
// different provider protocol.
func NewProofCompletionClient(protocolID string, config ProofCompletionClientConfig) (ProofCompletionClient, error) {
	switch protocolID {
	case ProtocolChatCompletions:
		client, err := NewChatCompletionsClient(ChatCompletionsClientConfig{
			APIKey: config.APIKey, BaseURL: config.BaseURL, HTTPClient: config.HTTPClient, Timeout: config.Timeout,
			MaxRequestBytes: config.MaxRequestBytes, MaxResponseBytes: config.MaxResponseBytes,
		})
		if err != nil {
			return nil, fmt.Errorf("provider: configure Chat Completions adapter: %w", err)
		}
		return client, nil
	case ProtocolAnthropicMessages:
		client, err := NewAnthropicMessagesClient(AnthropicMessagesClientConfig{
			APIKey: config.APIKey, BaseURL: config.BaseURL, HTTPClient: config.HTTPClient, Timeout: config.Timeout,
			MaxRequestBytes: config.MaxRequestBytes, MaxResponseBytes: config.MaxResponseBytes,
		})
		if err != nil {
			return nil, fmt.Errorf("provider: configure Anthropic Messages adapter: %w", err)
		}
		return client, nil
	case ProtocolGeminiGenerateContent:
		client, err := NewGeminiGenerateContentClient(GeminiGenerateContentClientConfig{
			APIKey: config.APIKey, BaseURL: config.BaseURL, ModelID: config.ModelID,
			HTTPClient: config.HTTPClient, Timeout: config.Timeout,
			MaxRequestBytes: config.MaxRequestBytes, MaxResponseBytes: config.MaxResponseBytes,
		})
		if err != nil {
			return nil, fmt.Errorf("provider: configure Gemini GenerateContent adapter: %w", err)
		}
		return client, nil
	default:
		return nil, fmt.Errorf("provider: unsupported proof-completion protocol %q", protocolID)
	}
}

// DecodeProofCompletionResponse normalizes one supported protocol response
// using the same decoders as the production clients. Raw bytes remain owned
// by the caller for evidence capture.
func DecodeProofCompletionResponse(protocolID string, body []byte) (ProofCompletionResponse, error) {
	switch protocolID {
	case ProtocolChatCompletions:
		decoded, err := DecodeChatCompletionsResponse(body)
		if err != nil {
			return ProofCompletionResponse{}, err
		}
		response := ProofCompletionResponse{ID: decoded.ID, Model: decoded.Model, ModelIdentityKind: ProofCompletionModelIdentityExactRequest}
		if decoded.Usage != nil {
			response.UsagePresent = true
			response.PromptTokens = decoded.Usage.PromptTokens
			response.CompletionTokens = decoded.Usage.CompletionTokens
			response.TotalTokens = decoded.Usage.TotalTokens
		}
		if len(decoded.Choices) == 1 {
			response.Text = decoded.Choices[0].Message.Content
			response.FinishReason = decoded.Choices[0].FinishReason
		}
		return response, nil
	case ProtocolAnthropicMessages:
		return DecodeAnthropicMessagesResponse(body)
	case ProtocolGeminiGenerateContent:
		return DecodeGeminiGenerateContentResponse(body)
	default:
		return ProofCompletionResponse{}, fmt.Errorf("provider: unsupported proof-completion protocol %q", protocolID)
	}
}

// DecodeProofCompletionRequest strictly reopens a protocol request into the
// shared representation. It is used by evidence readers so new protocols do
// not acquire a second, weaker prompt validator.
func DecodeProofCompletionRequest(protocolID string, body []byte, modelID string) (ProofCompletionRequest, error) {
	decode := func(dst any) error {
		decoder := json.NewDecoder(strings.NewReader(string(body)))
		decoder.DisallowUnknownFields()
		if err := decoder.Decode(dst); err != nil {
			return err
		}
		var trailing any
		if err := decoder.Decode(&trailing); err != nil && !errors.Is(err, io.EOF) {
			return err
		} else if err == nil {
			return errors.New("provider: request body contains multiple JSON values")
		}
		return nil
	}
	var request ProofCompletionRequest
	switch protocolID {
	case ProtocolChatCompletions:
		var wire struct {
			Model       string        `json:"model"`
			Messages    []ChatMessage `json:"messages"`
			MaxTokens   int           `json:"max_tokens"`
			Temperature float64       `json:"temperature"`
		}
		if err := decode(&wire); err != nil {
			return request, fmt.Errorf("provider: decode Chat Completions request: %w", err)
		}
		request = ProofCompletionRequest{Model: wire.Model, Messages: wire.Messages, MaxOutputTokens: wire.MaxTokens, Temperature: wire.Temperature}
	case ProtocolAnthropicMessages:
		var wire anthropicMessagesWireRequest
		if err := decode(&wire); err != nil {
			return request, fmt.Errorf("provider: decode Anthropic Messages request: %w", err)
		}
		request.Model = wire.Model
		request.MaxOutputTokens = wire.MaxTokens
		request.Temperature = 0
		if wire.System != "" {
			request.Messages = append(request.Messages, ChatMessage{Role: "system", Content: wire.System})
		}
		for _, message := range wire.Messages {
			request.Messages = append(request.Messages, ChatMessage{Role: message.Role, Content: message.Content})
		}
	case ProtocolGeminiGenerateContent:
		var wire geminiGenerateContentRequest
		if err := decode(&wire); err != nil {
			return request, fmt.Errorf("provider: decode Gemini GenerateContent request: %w", err)
		}
		request.Model = modelID
		request.MaxOutputTokens = wire.GenerationConfig.MaxOutputTokens
		request.Temperature = wire.GenerationConfig.Temperature
		if wire.SystemInstruction != nil {
			text, err := oneGeminiTextPart(wire.SystemInstruction.Parts)
			if err != nil || wire.SystemInstruction.Role != "" {
				return request, errors.New("provider: Gemini system instruction is malformed")
			}
			request.Messages = append(request.Messages, ChatMessage{Role: "system", Content: text})
		}
		for _, content := range wire.Contents {
			text, err := oneGeminiTextPart(content.Parts)
			if err != nil || content.Role != "user" && content.Role != "model" {
				return request, errors.New("provider: Gemini content is malformed")
			}
			role := content.Role
			if role == "model" {
				role = "assistant"
			}
			request.Messages = append(request.Messages, ChatMessage{Role: role, Content: text})
		}
	default:
		return request, fmt.Errorf("provider: unsupported proof-completion protocol %q", protocolID)
	}
	if request.Model != modelID {
		return ProofCompletionRequest{}, errors.New("provider: request model does not match its recorded launch identity")
	}
	if err := validateProofCompletionRequest(request); err != nil {
		return ProofCompletionRequest{}, err
	}
	return request, nil
}

func oneGeminiTextPart(parts []geminiPart) (string, error) {
	if len(parts) != 1 || strings.ContainsRune(parts[0].Text, '\x00') {
		return "", errors.New("provider: expected exactly one text part")
	}
	return parts[0].Text, nil
}

func IsGeminiModelID(modelID string) bool {
	if modelID == "" || len(modelID) > 256 || strings.TrimSpace(modelID) != modelID {
		return false
	}
	for _, character := range modelID {
		if (character >= 'a' && character <= 'z') || (character >= 'A' && character <= 'Z') ||
			(character >= '0' && character <= '9') || character == '.' || character == '_' || character == '-' {
			continue
		}
		return false
	}
	return true
}

func validateProofCompletionRequest(request ProofCompletionRequest) error {
	if strings.TrimSpace(request.Model) == "" || strings.TrimSpace(request.Model) != request.Model || len(request.Model) > 256 || strings.ContainsAny(request.Model, "\x00\r\n") {
		return errors.New("provider: proof completion model ID is invalid")
	}
	if len(request.Messages) == 0 || len(request.Messages) > 64 || request.MaxOutputTokens <= 0 || request.MaxOutputTokens > 1_000_000 {
		return errors.New("provider: proof completion messages or token limit is invalid")
	}
	for _, message := range request.Messages {
		if message.Role == "" || strings.ContainsAny(message.Role, "\x00\r\n") || strings.ContainsRune(message.Content, '\x00') {
			return errors.New("provider: proof completion message is invalid")
		}
	}
	if request.Temperature < 0 || request.Temperature > 2 {
		return errors.New("provider: proof completion temperature is outside the supported range")
	}
	return nil
}

func (c *ChatCompletionsClient) ProtocolID() string { return ProtocolChatCompletions }

func (c *ChatCompletionsClient) Complete(ctx context.Context, request ProofCompletionRequest) (ProofCompletionCall, error) {
	if err := validateProofCompletionRequest(request); err != nil {
		return ProofCompletionCall{}, err
	}
	raw, err := c.Do(ctx, ChatCompletionsRequest{
		Model: request.Model, Messages: request.Messages,
		MaxTokens: request.MaxOutputTokens, Temperature: request.Temperature,
		AdditionalFields: request.AdditionalFields,
	})
	call := ProofCompletionCall{Raw: JSONHTTPResult(raw)}
	if err != nil {
		var httpErr *ChatCompletionsHTTPError
		if errors.As(err, &httpErr) {
			call.FailureKind = httpErr.Kind
			call.Failure = err
			return call, nil
		}
		return call, err
	}
	if raw.ResponseTruncated {
		call.FailureKind = "response_truncated"
		call.Failure = errors.New("provider: chat-completions response exceeded the configured capture limit")
		return call, nil
	}
	if raw.StatusCode < 200 || raw.StatusCode >= 300 {
		call.FailureKind = "http_status"
		call.Failure = fmt.Errorf("provider: chat-completions endpoint returned HTTP %d", raw.StatusCode)
		return call, nil
	}
	decoded, err := DecodeProofCompletionResponse(ProtocolChatCompletions, raw.ResponseBody)
	if err != nil {
		call.FailureKind = "invalid_response"
		call.Failure = err
		return call, nil
	}
	call.Response = decoded
	return call, nil
}
