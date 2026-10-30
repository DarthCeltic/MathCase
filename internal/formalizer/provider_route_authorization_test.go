package formalizer

import (
	"bytes"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/provider"
)

func TestProviderRouteAuthorizationBindsExactItemRouteAndEnvelope(t *testing.T) {
	now := time.Date(2026, time.October, 24, 15, 0, 0, 0, time.UTC)
	request := validRequest()
	price := budget.Price{Known: true, InputPerMillionMicros: 17, OutputPerMillionMicros: 29}
	authorization := writeTestRouteAuthorization(t, request, "test-provider", provider.ProtocolChatCompletions,
		"https://provider.example/v1", "test-model-1", 2500, 512, price, now)
	binding := testRouteBinding(t, "test-provider", provider.ProtocolChatCompletions,
		"https://provider.example/v1", "test-model-1", 2000, 256, price)
	if err := authorization.ValidateForRequest(binding, request, now); err != nil {
		t.Fatalf("ValidateForRequest(valid): %v", err)
	}

	tests := []struct {
		name       string
		mutateReq  func(*Request)
		mutateBind func(*ProviderRouteBinding)
		at         time.Time
	}{
		{name: "problem", mutateReq: func(r *Request) { r.ProblemID = "different-problem" }},
		{name: "statement", mutateReq: func(r *Request) { r.Source.Statement += " changed" }},
		{name: "snapshot", mutateReq: func(r *Request) { r.Source.CatalogSnapshotSHA256 = testDigestText("another snapshot") }},
		{name: "provider", mutateBind: func(b *ProviderRouteBinding) { b.ProviderID = "other-provider" }},
		{name: "account profile", mutateBind: func(b *ProviderRouteBinding) { b.AccountProfile = "other-account" }},
		{name: "protocol", mutateBind: func(b *ProviderRouteBinding) { b.ProtocolID = provider.ProtocolAnthropicMessages }},
		{name: "endpoint", mutateBind: func(b *ProviderRouteBinding) { b.Endpoint += "/attacker" }},
		{name: "model", mutateBind: func(b *ProviderRouteBinding) { b.ModelID = "other-model" }},
		{name: "call ceiling", mutateBind: func(b *ProviderRouteBinding) { b.CallCeilingMicros = 2501 }},
		{name: "token limit", mutateBind: func(b *ProviderRouteBinding) { b.MaxOutputTokens = 513 }},
		{name: "price", mutateBind: func(b *ProviderRouteBinding) { b.Price.OutputPerMillionMicros++ }},
		{name: "expired", at: now.Add(48 * time.Hour)},
		{name: "before issue", at: now.Add(-2 * time.Hour)},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			candidateRequest, candidateBinding, at := request, binding, now
			if test.mutateReq != nil {
				test.mutateReq(&candidateRequest)
			}
			if test.mutateBind != nil {
				test.mutateBind(&candidateBinding)
			}
			if !test.at.IsZero() {
				at = test.at
			}
			if err := authorization.ValidateForRequest(candidateBinding, candidateRequest, at); err == nil {
				t.Fatal("ValidateForRequest() accepted a mismatched route grant")
			}
		})
	}
}

func TestLoadProviderRouteAuthorizationPinsExactLocalBytes(t *testing.T) {
	now := time.Date(2026, time.October, 24, 15, 0, 0, 0, time.UTC)
	request := validRequest()
	price := budget.Price{Known: true, InputPerMillionMicros: 17, OutputPerMillionMicros: 29}
	authorization := writeTestRouteAuthorization(t, request, "test-provider", provider.ProtocolChatCompletions,
		"https://provider.example/v1", "test-model-1", 2500, 512, price, now)
	if !filepath.IsAbs(authorization.Path) || authorization.SHA256 != digestBytes(authorization.Bytes) {
		t.Fatalf("loaded authorization evidence = %#v, want absolute path and exact digest", authorization)
	}
	if err := os.WriteFile(authorization.Path, append(authorization.Bytes, ' '), 0o600); err != nil {
		t.Fatalf("mutate authorization file: %v", err)
	}
	binding := testRouteBinding(t, "test-provider", provider.ProtocolChatCompletions,
		"https://provider.example/v1", "test-model-1", 2000, 256, price)
	if err := authorization.ValidateForRequest(binding, request, now); err == nil {
		t.Fatal("authorization accepted after its source file changed")
	}
}

func TestProviderRouteAuthorizationRejectsProofAttemptGrantForFormalization(t *testing.T) {
	now := time.Date(2026, time.October, 24, 15, 0, 0, 0, time.UTC)
	request := validRequest()
	price := budget.Price{Known: true, InputPerMillionMicros: 17, OutputPerMillionMicros: 29}
	authorization := writeTestRouteAuthorization(t, request, "test-provider", provider.ProtocolChatCompletions,
		"https://provider.example/v1", "test-model-1", 2500, 512, price, now)
	wrongOperationBytes := bytes.Replace(authorization.Bytes, []byte(`"operation":"NL_TO_LEAN_FORMALIZATION"`),
		[]byte(`"operation":"M4_PROOF_ATTEMPT"`), 1)
	path := filepath.Join(t.TempDir(), "m4-proof-only-authorization.json")
	if err := os.WriteFile(path, wrongOperationBytes, 0o600); err != nil {
		t.Fatalf("write M4-only route grant: %v", err)
	}
	proofOnlyGrant, err := LoadProviderRouteAuthorization(path)
	if err != nil {
		t.Fatalf("LoadProviderRouteAuthorization(M4 grant): %v", err)
	}
	binding := testRouteBinding(t, "test-provider", provider.ProtocolChatCompletions,
		"https://provider.example/v1", "test-model-1", 2000, 256, price)
	if err := proofOnlyGrant.ValidateForRequest(binding, request, now); err == nil {
		t.Fatal("M4 proof-attempt authorization was accepted for M2 formalization")
	}
}

func TestProviderCandidateGeneratorFromEnvironmentChecksAuthorizationBeforeKey(t *testing.T) {
	request := validRequest()
	wrongGrantTarget := request
	wrongGrantTarget.ProblemID = "different-problem"
	price := budget.Price{Known: true, InputPerMillionMicros: 17, OutputPerMillionMicros: 29}
	now := time.Date(2026, time.October, 24, 15, 0, 0, 0, time.UTC)
	routeAuthorization := writeTestRouteAuthorization(t, wrongGrantTarget, "test-provider", provider.ProtocolChatCompletions,
		"https://provider.example/v1", "test-model-1", 2000, 512, price, now)
	config := ProviderCandidateGeneratorConfig{
		ProviderID: "test-provider", Surface: "synthetic test", ProtocolID: provider.ProtocolChatCompletions,
		BaseURL: "https://provider.example/v1", APIKeyEnv: "MATHCASE_ROUTE_AUTH_TEST_MISSING_KEY", ModelID: "test-model-1",
		AccountProfile:  "synthetic-test-account",
		MaxOutputTokens: 512, CostCeilingMicros: 2000, Price: price,
		RunBudget: newNebiusTestRunBudget(t), CostJournal: &budget.MemoryCostJournal{},
		Now: func() time.Time { return now }, RouteAuthorization: routeAuthorization, AuthorizedRequest: &request,
	}
	_, err := NewProviderCandidateGeneratorFromEnvironment(config)
	if err == nil || !containsFormalizerError(err, "exact item") || containsFormalizerError(err, "API key is unavailable") {
		t.Fatalf("NewProviderCandidateGeneratorFromEnvironment() error = %v, want exact-target refusal before key lookup", err)
	}
}

func writeTestRouteAuthorization(
	t *testing.T,
	request Request,
	providerID, protocolID, baseURL, modelID string,
	maxCallCostMicros int64,
	maxOutputTokens int,
	price budget.Price,
	now time.Time,
) ProviderRouteAuthorization {
	t.Helper()
	endpoint, err := provider.BuildProofCompletionEndpoint(protocolID, baseURL, modelID)
	if err != nil {
		t.Fatalf("BuildProofCompletionEndpoint(): %v", err)
	}
	record := ProviderRouteAuthorizationRecord{
		SchemaVersion:   ProviderRouteAuthorizationSchemaVersion,
		AuthorizationID: "synthetic-formalizer-route-grant", DecisionReference: "SYNTHETIC-TEST-ONLY",
		AuthorizedAtUTC: now.Add(-time.Minute).Format(time.RFC3339Nano),
		ExpiresAtUTC:    now.Add(24 * time.Hour).Format(time.RFC3339Nano),
		ProviderID:      providerID, ProtocolID: protocolID, Endpoint: endpoint, ModelID: modelID,
		AccountProfile: "synthetic-test-account",
		Operation:      "NL_TO_LEAN_FORMALIZATION", ProblemID: request.ProblemID,
		CatalogSnapshotSHA256: request.Source.CatalogSnapshotSHA256, StatementSHA256: digestText(request.Source.Statement),
		MaxCallCostMicros: maxCallCostMicros, MaxOutputTokens: maxOutputTokens,
		InputPriceMicrosPerMillionTokens:  price.InputPerMillionMicros,
		OutputPriceMicrosPerMillionTokens: price.OutputPerMillionMicros,
	}
	data, err := json.Marshal(record)
	if err != nil {
		t.Fatalf("marshal route authorization: %v", err)
	}
	path := filepath.Join(t.TempDir(), "formalizer-route-authorization.json")
	if err := os.WriteFile(path, data, 0o600); err != nil {
		t.Fatalf("write route authorization: %v", err)
	}
	authorization, err := LoadProviderRouteAuthorization(path)
	if err != nil {
		t.Fatalf("LoadProviderRouteAuthorization(): %v", err)
	}
	return authorization
}

func testRouteBinding(t *testing.T, providerID, protocolID, baseURL, modelID string, ceiling int64, maxOutput int, price budget.Price) ProviderRouteBinding {
	t.Helper()
	endpoint, err := provider.BuildProofCompletionEndpoint(protocolID, baseURL, modelID)
	if err != nil {
		t.Fatalf("BuildProofCompletionEndpoint(): %v", err)
	}
	return ProviderRouteBinding{
		ProviderID: providerID, AccountProfile: "synthetic-test-account", ProtocolID: protocolID, Endpoint: endpoint, ModelID: modelID,
		CallCeilingMicros: ceiling, MaxOutputTokens: maxOutput, Price: price,
	}
}

func containsFormalizerError(err error, substring string) bool {
	return err != nil && strings.Contains(err.Error(), substring)
}
