package provider

import (
	"bytes"
	"context"
	"errors"
	"io"
	"net/http"
	"strings"
	"time"
)

// JSONHTTPResult preserves exact JSON request and response bytes for a
// provider adapter. The request body never contains the runtime API secret.
type JSONHTTPResult struct {
	RequestBody       []byte
	ResponseBody      []byte
	StatusCode        int
	ResponseTruncated bool
}

// jsonHTTPClientConfig is private so callers cannot inject arbitrary headers
// into a configured credential-bearing client.
type jsonHTTPClientConfig struct {
	APIKey           string
	Endpoint         string
	APIKeyHeader     string
	APIKeyPrefix     string
	VersionHeader    string
	VersionValue     string
	HTTPClient       *http.Client
	Timeout          time.Duration
	MaxRequestBytes  int64
	MaxResponseBytes int64
}

// jsonHTTPClient is the single bounded transport used by provider protocol
// adapters. It disables redirects, performs no retries, and captures bounded
// raw bodies for receipt creation.
type jsonHTTPClient struct {
	apiKey           string
	endpoint         string
	apiKeyHeader     string
	apiKeyPrefix     string
	versionHeader    string
	versionValue     string
	client           *http.Client
	maxRequestBytes  int64
	maxResponseBytes int64
}

func newJSONHTTPClient(config jsonHTTPClientConfig) (*jsonHTTPClient, error) {
	if config.APIKey == "" || strings.TrimSpace(config.APIKey) != config.APIKey || strings.ContainsAny(config.APIKey, "\x00\r\n") {
		return nil, errors.New("provider: API key must be a non-empty single-line runtime secret")
	}
	if strings.TrimSpace(config.Endpoint) != config.Endpoint || config.Endpoint == "" || strings.ContainsAny(config.Endpoint, "\x00\r\n") {
		return nil, errors.New("provider: exact endpoint is invalid")
	}
	if config.APIKeyHeader == "" || strings.ContainsAny(config.APIKeyHeader, "\x00\r\n:") {
		return nil, errors.New("provider: credential header name is invalid")
	}
	if (config.VersionHeader == "") != (config.VersionValue == "") || strings.ContainsAny(config.VersionHeader+config.VersionValue, "\x00\r\n") {
		return nil, errors.New("provider: protocol version header is incomplete or invalid")
	}

	timeout := config.Timeout
	if timeout == 0 {
		timeout = defaultChatCompletionTimeout
	}
	if timeout < time.Second || timeout > 10*time.Minute {
		return nil, errors.New("provider: request timeout must be between one second and ten minutes")
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
		return nil, errors.New("provider: body limits are outside the supported range")
	}

	transport := http.DefaultTransport
	var jar http.CookieJar
	if config.HTTPClient != nil {
		if config.HTTPClient.Transport != nil {
			transport = config.HTTPClient.Transport
		}
		jar = config.HTTPClient.Jar
		if config.HTTPClient.Timeout > 0 && config.HTTPClient.Timeout < timeout {
			timeout = config.HTTPClient.Timeout
		}
	}
	client := &http.Client{
		Transport: transport,
		Jar:       jar,
		Timeout:   timeout,
		CheckRedirect: func(*http.Request, []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}
	return &jsonHTTPClient{
		apiKey: config.APIKey, endpoint: config.Endpoint,
		apiKeyHeader: config.APIKeyHeader, apiKeyPrefix: config.APIKeyPrefix,
		versionHeader: config.VersionHeader, versionValue: config.VersionValue,
		client: client, maxRequestBytes: maxRequest, maxResponseBytes: maxResponse,
	}, nil
}

func (c *jsonHTTPClient) endpointURL() string {
	if c == nil {
		return ""
	}
	return c.endpoint
}

func (c *jsonHTTPClient) do(ctx context.Context, body []byte) (JSONHTTPResult, error) {
	result := JSONHTTPResult{RequestBody: append([]byte(nil), body...)}
	if c == nil || c.client == nil || c.endpoint == "" {
		return result, errors.New("provider: JSON HTTP client is not configured")
	}
	if ctx == nil {
		return result, errors.New("provider: request context is required")
	}
	if err := ctx.Err(); err != nil {
		return result, err
	}
	if len(body) == 0 || int64(len(body)) > c.maxRequestBytes {
		return result, errors.New("provider: JSON request exceeds its configured body limit")
	}
	request, err := http.NewRequestWithContext(ctx, http.MethodPost, c.endpoint, bytes.NewReader(body))
	if err != nil {
		return result, errors.New("provider: configured endpoint could not be used to build a request")
	}
	request.Header.Set(c.apiKeyHeader, c.apiKeyPrefix+c.apiKey)
	request.Header.Set("Content-Type", "application/json")
	request.Header.Set("Accept", "application/json")
	if c.versionHeader != "" {
		request.Header.Set(c.versionHeader, c.versionValue)
	}
	response, err := c.client.Do(request)
	if err != nil {
		return result, &ProviderHTTPError{Kind: "transport", Err: errors.New("request failed; no automatic retry was made")}
	}
	defer response.Body.Close()
	result.StatusCode = response.StatusCode
	responseBody, err := io.ReadAll(io.LimitReader(response.Body, c.maxResponseBytes+1))
	if err != nil {
		if int64(len(responseBody)) > c.maxResponseBytes {
			responseBody = responseBody[:c.maxResponseBytes]
		}
		result.ResponseBody = responseBody
		return result, &ProviderHTTPError{Kind: "response-read", Err: errors.New("response body could not be read completely")}
	}
	if int64(len(responseBody)) > c.maxResponseBytes {
		result.ResponseBody = responseBody[:c.maxResponseBytes]
		result.ResponseTruncated = true
		return result, nil
	}
	result.ResponseBody = responseBody
	return result, nil
}
