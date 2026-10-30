package domain

import (
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestM7RunReceiptRequiresExactByteHashesAndStructuralIdentity(t *testing.T) {
	context := M7OutputContext{
		ProblemID: "problem-a", Tier: TierBachelor,
		ProofSHA256: strings.Repeat("a", 64), ExpositionSHA256: strings.Repeat("b", 64),
		CanonSnapshotSHA256: strings.Repeat("c", 64), PolicySHA256: strings.Repeat("d", 64),
		WordLimit: 500, WordLimitsSHA256: strings.Repeat("1", 64),
	}
	receipt := M7RunReceiptV2{
		SchemaVersion: M7RunReceiptSchemaV2, CallID: "call-roundtrip-a", RunID: "provider-run-roundtrip-a", Role: M7RunRoundTrip,
		Context: context, InputPath: "inputs/review.json", InputSHA256: strings.Repeat("e", 64),
		OutputSHA256: strings.Repeat("f", 64),
		Model:        M7ModelIdentity{Provider: "provider", Surface: "agent-quota", ModelID: "model-alias-a", ModelVersion: "version-a"},
	}
	if err := receipt.Validate(); err != nil {
		t.Fatalf("Validate() of structurally complete receipt = %v", err)
	}
	t.Run("missing call ID", func(t *testing.T) {
		bad := receipt
		bad.CallID = ""
		if err := bad.Validate(); err == nil || !strings.Contains(err.Error(), "call ID") {
			t.Fatalf("Validate() error = %v; want missing call-ID refusal", err)
		}
	})

	t.Run("missing input reference", func(t *testing.T) {
		bad := receipt
		bad.InputPath = ""
		if err := bad.Validate(); err == nil || !strings.Contains(err.Error(), "input path") {
			t.Fatalf("Validate() error = %v; want missing input-path refusal", err)
		}
	})
	t.Run("malformed future attestation envelope", func(t *testing.T) {
		bad := receipt
		bad.Model.Attestation = &M7IdentityAttestation{
			Issuer: "claimed-issuer", KeyID: "claimed-key", Algorithm: "claimed-algorithm",
			PayloadSHA256: "not-a-digest", Signature: "unverified",
		}
		if err := bad.Validate(); err == nil || !strings.Contains(err.Error(), "malformed external") {
			t.Fatalf("Validate() error = %v; want malformed-attestation refusal", err)
		}
	})
}

func TestM7EvidenceSchemaParsesAndDeclaresAuthBoundary(t *testing.T) {
	schemaPath := filepath.Join("..", "..", "schemas", "flywheel", "m7-evidence-v1.schema.json")
	raw, err := os.ReadFile(schemaPath)
	if err != nil {
		t.Fatalf("read schema: %v", err)
	}
	var schema map[string]any
	if err := json.Unmarshal(raw, &schema); err != nil {
		t.Fatalf("schema JSON is malformed: %v", err)
	}
	description, _ := schema["description"].(string)
	if !strings.Contains(description, "does not authenticate issuers") {
		t.Fatalf("schema description does not state the identity-auth boundary: %q", description)
	}
	defs, ok := schema["$defs"].(map[string]any)
	if !ok {
		t.Fatal("schema has no definitions")
	}
	for _, name := range []string{"manifest", "runReceiptV2", "studentAttemptOutput"} {
		if _, exists := defs[name]; !exists {
			t.Fatalf("schema is missing required M7 definition %q", name)
		}
	}
}
