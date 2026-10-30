package formalizer

import (
	"errors"
	"fmt"
	"net/url"
	"strings"
	"unicode"
	"unicode/utf8"

	"github.com/DarthCeltic/MathCase/internal/provider"
)

const (
	NebiusTokenFactoryBaseURL = "https://api.tokenfactory.nebius.com/v1"
	nebiusSurface             = "Nebius Token Factory API"
	nebiusProviderID          = "nebius-token-factory"
	nebiusFormalizationTask   = "formalization"
)

// NebiusCandidateGeneratorConfig and NebiusCandidateGenerator remain source-
// compatible names, but construction now delegates to the shared provider
// generator instead of maintaining a separate HTTP/accounting implementation.
type NebiusCandidateGeneratorConfig = ProviderCandidateGeneratorConfig
type NebiusCandidateGenerator = ProviderCandidateGenerator

// NewNebiusCandidateGeneratorFromEnvironment is retained for compatibility.
// It resolves only NEBIUS_API_KEY and then uses the shared route factory.
func NewNebiusCandidateGeneratorFromEnvironment(config NebiusCandidateGeneratorConfig) (*NebiusCandidateGenerator, error) {
	config.APIKeyEnv = "NEBIUS_API_KEY"
	config.APIKey = ""
	return newNebiusCandidateGenerator(config, true)
}

// NewNebiusCandidateGenerator keeps the historical Nebius host restrictions,
// then delegates protocol transport, accounting, and capture to the shared
// ProviderCandidateGenerator implementation.
func NewNebiusCandidateGenerator(config NebiusCandidateGeneratorConfig) (*NebiusCandidateGenerator, error) {
	return newNebiusCandidateGenerator(config, false)
}

func newNebiusCandidateGenerator(config NebiusCandidateGeneratorConfig, fromEnvironment bool) (*NebiusCandidateGenerator, error) {
	if err := validateNebiusModelID(config.ModelID); err != nil {
		return nil, fmt.Errorf("formalizer: validate Nebius model ID: %w", err)
	}
	baseURL := config.BaseURL
	if baseURL == "" {
		baseURL = NebiusTokenFactoryBaseURL
	}
	parsed, err := url.Parse(baseURL)
	if err != nil || parsed.Host == "" || parsed.User != nil || parsed.RawQuery != "" || parsed.Fragment != "" || parsed.ForceQuery || parsed.Opaque != "" {
		return nil, errors.New("formalizer: Nebius base URL must be an absolute URL without credentials, query, or fragment")
	}
	loopback := isLoopbackHost(parsed.Hostname())
	if parsed.Path != "/v1" || parsed.RawPath != "" || strings.Contains(parsed.Path, "..") || strings.ContainsAny(parsed.Path, "\\\x00\r\n") {
		return nil, errors.New("formalizer: Nebius base URL path must be exactly /v1")
	}
	if parsed.Scheme != "https" && !(parsed.Scheme == "http" && loopback) {
		return nil, errors.New("formalizer: Nebius endpoint must use HTTPS (HTTP is allowed only for loopback tests)")
	}
	if !loopback && !strings.EqualFold(parsed.Hostname(), "api.tokenfactory.nebius.com") {
		return nil, errors.New("formalizer: Nebius endpoint host must be api.tokenfactory.nebius.com")
	}
	shared := ProviderCandidateGeneratorConfig{
		ProviderID: nebiusProviderID, Surface: nebiusSurface,
		ProtocolID: provider.ProtocolChatCompletions,
		APIKey:     config.APIKey, APIKeyEnv: config.APIKeyEnv, BaseURL: baseURL,
		ModelID: config.ModelID, MaxOutputTokens: config.MaxOutputTokens,
		CostCeilingMicros: config.CostCeilingMicros, Price: config.Price,
		RunBudget: config.RunBudget, CostJournal: config.CostJournal,
		AccountProfile: config.AccountProfile, HTTPClient: config.HTTPClient,
		Timeout: config.Timeout, Now: config.Now, RouteAuthorization: config.RouteAuthorization,
		AuthorizedRequest: config.AuthorizedRequest,
	}
	if fromEnvironment {
		return NewProviderCandidateGeneratorFromEnvironment(shared)
	}
	return NewProviderCandidateGenerator(shared)
}

// These aliases keep existing focused fixtures readable while the protocol
// wire types stay owned by the shared provider package.
type nebiusChatRequest = provider.ChatCompletionsRequest
type nebiusMessage = provider.ChatMessage
type nebiusChatResponse = provider.ChatCompletionsResponse

func nebiusCostRecordID(receiptID string) string {
	return "nebius-call-" + digestText(receiptID)[:32]
}

func isLoopbackHost(host string) bool {
	return host == "localhost" || host == "127.0.0.1" || host == "::1"
}

func validateNebiusModelID(modelID string) error {
	if modelID == "" || len(modelID) > 128 || strings.TrimSpace(modelID) != modelID || !utf8.ValidString(modelID) {
		return errors.New("model ID must be non-empty, bounded, and valid UTF-8")
	}
	for _, r := range modelID {
		if unicode.IsControl(r) {
			return errors.New("model ID must not contain control characters")
		}
	}
	return nil
}
