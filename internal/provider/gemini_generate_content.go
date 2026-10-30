package provider

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"net/http"
	"strings"
	"time"
)

// GeminiGenerateContentClientConfig configures Google's native
// generateContent protocol. The API key is sent only in x-goog-api-key.
type GeminiGenerateContentClientConfig struct {
	APIKey           string
	BaseURL          string
	ModelID          string
	HTTPClient       *http.Client
	Timeout          time.Duration
	MaxRequestBytes  int64
	MaxResponseBytes int64
}

// GeminiGenerateContentClient maps the shared proof-completion contract to
// Google's native GenerateContent API. It does not authorize or verify proof
// text; the shared M4 session and Lean verifier retain those responsibilities.
type GeminiGenerateContentClient struct {
	http *jsonHTTPClient
}

func NewGeminiGenerateContentClient(config GeminiGenerateContentClientConfig) (*GeminiGenerateContentClient, error) {
	endpoint, err := BuildProofCompletionEndpoint(ProtocolGeminiGenerateContent, config.BaseURL, config.ModelID)
	if err != nil {
		return nil, err
	}
	httpClient, err := newJSONHTTPClient(jsonHTTPClientConfig{
		APIKey: config.APIKey, Endpoint: endpoint, APIKeyHeader: "x-goog-api-key",
		HTTPClient: config.HTTPClient, Timeout: config.Timeout,
		MaxRequestBytes: config.MaxRequestBytes, MaxResponseBytes: config.MaxResponseBytes,
	})
	if err != nil {
		return nil, fmt.Errorf("provider: configure Gemini GenerateContent transport: %w", err)
	}
	return &GeminiGenerateContentClient{http: httpClient}, nil
}

func (c *GeminiGenerateContentClient) ProtocolID() string { return ProtocolGeminiGenerateContent }

func (c *GeminiGenerateContentClient) Endpoint() string {
	if c == nil || c.http == nil {
		return ""
	}
	return c.http.endpointURL()
}

type geminiGenerateContentRequest struct {
	Contents          []geminiContent        `json:"contents"`
	SystemInstruction *geminiContent         `json:"systemInstruction,omitempty"`
	GenerationConfig  geminiGenerationConfig `json:"generationConfig"`
}

type geminiContent struct {
	Role  string       `json:"role,omitempty"`
	Parts []geminiPart `json:"parts"`
}

type geminiPart struct {
	Text string `json:"text"`
}

type geminiGenerationConfig struct {
	MaxOutputTokens int     `json:"maxOutputTokens"`
	Temperature     float64 `json:"temperature"`
}

// EncodeGeminiGenerateContentRequest translates only system/user/assistant
// text. Tools and provider extensions are intentionally unavailable on the
// proof route; every unrecognized role or extension fails closed.
func EncodeGeminiGenerateContentRequest(request ProofCompletionRequest) ([]byte, error) {
	if err := validateProofCompletionRequest(request); err != nil {
		return nil, err
	}
	if !IsGeminiModelID(request.Model) {
		return nil, errors.New("provider: Gemini model ID must be a single safe model path segment")
	}
	if len(request.AdditionalFields) != 0 {
		return nil, errors.New("provider: Gemini GenerateContent adapter does not accept unreviewed extension fields")
	}
	wire := geminiGenerateContentRequest{
		Contents: make([]geminiContent, 0, len(request.Messages)),
		GenerationConfig: geminiGenerationConfig{
			MaxOutputTokens: request.MaxOutputTokens,
			Temperature:     request.Temperature,
		},
	}
	userMessages := 0
	for index, message := range request.Messages {
		switch message.Role {
		case "system":
			if index != 0 || wire.SystemInstruction != nil {
				return nil, errors.New("provider: Gemini request requires at most one leading system message")
			}
			wire.SystemInstruction = &geminiContent{Parts: []geminiPart{{Text: message.Content}}}
		case "user":
			wire.Contents = append(wire.Contents, geminiContent{Role: "user", Parts: []geminiPart{{Text: message.Content}}})
			userMessages++
		case "assistant":
			wire.Contents = append(wire.Contents, geminiContent{Role: "model", Parts: []geminiPart{{Text: message.Content}}})
		default:
			return nil, fmt.Errorf("provider: Gemini GenerateContent does not support proof prompt role %q", message.Role)
		}
	}
	if len(wire.Contents) == 0 || userMessages == 0 {
		return nil, errors.New("provider: Gemini GenerateContent request requires at least one user message")
	}
	body, err := json.Marshal(wire)
	if err != nil {
		return nil, fmt.Errorf("provider: encode Gemini GenerateContent request: %w", err)
	}
	return body, nil
}

type geminiGenerateContentWireResponse struct {
	Candidates []struct {
		Content struct {
			Role  string            `json:"role"`
			Parts []json.RawMessage `json:"parts"`
		} `json:"content"`
		FinishReason string `json:"finishReason"`
	} `json:"candidates"`
	UsageMetadata *struct {
		PromptTokenCount     int `json:"promptTokenCount"`
		CandidatesTokenCount int `json:"candidatesTokenCount"`
		TotalTokenCount      int `json:"totalTokenCount"`
	} `json:"usageMetadata"`
	ModelVersion   string `json:"modelVersion"`
	ResponseID     string `json:"responseId"`
	PromptFeedback *struct {
		BlockReason string `json:"blockReason"`
	} `json:"promptFeedback"`
}

// DecodeGeminiGenerateContentResponse accepts exactly one identified model
// candidate. Only text parts become a proof proposal; thought parts are
// omitted, and tool/multimodal or unknown parts are refused.
func DecodeGeminiGenerateContentResponse(body []byte) (ProofCompletionResponse, error) {
	var response geminiGenerateContentWireResponse
	if len(body) == 0 || !json.Valid(body) {
		return ProofCompletionResponse{}, errors.New("provider: Gemini GenerateContent response is empty or invalid JSON")
	}
	if err := json.Unmarshal(body, &response); err != nil {
		return ProofCompletionResponse{}, fmt.Errorf("provider: decode Gemini GenerateContent response: %w", err)
	}
	if strings.TrimSpace(response.ResponseID) == "" || strings.TrimSpace(response.ModelVersion) == "" {
		return ProofCompletionResponse{}, errors.New("provider: Gemini response is missing its response ID or served model version")
	}
	if len(response.Candidates) != 1 {
		if len(response.Candidates) == 0 && response.PromptFeedback != nil && response.PromptFeedback.BlockReason != "" {
			return ProofCompletionResponse{}, fmt.Errorf("provider: Gemini prompt was blocked (%s)", response.PromptFeedback.BlockReason)
		}
		return ProofCompletionResponse{}, errors.New("provider: Gemini response must contain exactly one candidate")
	}
	candidate := response.Candidates[0]
	if candidate.Content.Role != "model" || strings.TrimSpace(candidate.FinishReason) == "" {
		return ProofCompletionResponse{}, errors.New("provider: Gemini candidate is missing its model role or finish reason")
	}
	var text strings.Builder
	for _, rawPart := range candidate.Content.Parts {
		var fields map[string]json.RawMessage
		if err := json.Unmarshal(rawPart, &fields); err != nil || fields == nil {
			return ProofCompletionResponse{}, errors.New("provider: Gemini candidate contains an invalid part")
		}
		for name := range fields {
			if name != "text" && name != "thought" && name != "thoughtSignature" {
				return ProofCompletionResponse{}, fmt.Errorf("provider: unsupported Gemini candidate part field %q", name)
			}
		}
		if thoughtRaw, ok := fields["thought"]; ok {
			var thought bool
			if err := json.Unmarshal(thoughtRaw, &thought); err != nil {
				return ProofCompletionResponse{}, errors.New("provider: Gemini thought marker is invalid")
			}
			if thought {
				continue
			}
		}
		textRaw, ok := fields["text"]
		if !ok {
			return ProofCompletionResponse{}, errors.New("provider: Gemini candidate contains a non-text part")
		}
		var partText string
		if err := json.Unmarshal(textRaw, &partText); err != nil {
			return ProofCompletionResponse{}, errors.New("provider: Gemini text part is invalid")
		}
		text.WriteString(partText)
	}
	if strings.TrimSpace(text.String()) == "" {
		return ProofCompletionResponse{}, errors.New("provider: Gemini candidate contains no proof text")
	}
	normalized := ProofCompletionResponse{
		ID: response.ResponseID, Model: response.ModelVersion,
		ModelIdentityKind: ProofCompletionModelIdentityServingVersion,
		Text:              text.String(), FinishReason: candidate.FinishReason,
	}
	if response.UsageMetadata != nil {
		usage := Usage{
			PromptTokens:     response.UsageMetadata.PromptTokenCount,
			CompletionTokens: response.UsageMetadata.CandidatesTokenCount,
			TotalTokens:      response.UsageMetadata.TotalTokenCount,
		}
		if err := usage.Validate(); err != nil {
			return ProofCompletionResponse{}, err
		}
		normalized.UsagePresent = true
		normalized.PromptTokens = usage.PromptTokens
		normalized.CompletionTokens = usage.CompletionTokens
		normalized.TotalTokens = usage.TotalTokens
	}
	return normalized, nil
}

func (c *GeminiGenerateContentClient) Complete(ctx context.Context, request ProofCompletionRequest) (ProofCompletionCall, error) {
	body, err := EncodeGeminiGenerateContentRequest(request)
	if err != nil {
		return ProofCompletionCall{}, err
	}
	if c == nil || c.http == nil {
		return ProofCompletionCall{Raw: JSONHTTPResult{RequestBody: body}}, errors.New("provider: Gemini GenerateContent client is not configured")
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
		call.Failure = errors.New("provider: Gemini response exceeded the configured capture limit")
		return call, nil
	}
	if raw.StatusCode < 200 || raw.StatusCode >= 300 {
		call.FailureKind = "http_status"
		call.Failure = fmt.Errorf("provider: Gemini endpoint returned HTTP %d", raw.StatusCode)
		return call, nil
	}
	decoded, err := DecodeProofCompletionResponse(ProtocolGeminiGenerateContent, raw.ResponseBody)
	if err != nil {
		call.FailureKind = "invalid_response"
		call.Failure = err
		return call, nil
	}
	call.Response = decoded
	return call, nil
}
