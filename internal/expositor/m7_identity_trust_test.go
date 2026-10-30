package expositor

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"testing/fstest"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestLoadM7IdentityTrustRegistryPinsExactReceiptAndPrincipal(t *testing.T) {
	receipt := domain.M7RunReceiptV2{
		SchemaVersion: domain.M7RunReceiptSchemaV2,
		CallID:        "m7-call-test",
		RunID:         "m7-run-test",
		Role:          domain.M7RunAuthor,
		Model: domain.M7ModelIdentity{
			Provider: "provider", Surface: "agent-quota", ModelID: "model", ModelVersion: "snapshot-v1",
			PrincipalID: "principal-model",
		},
	}
	receiptBytes, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	registryFile := domainRegistryFile{SchemaVersion: M7IdentityTrustSchemaV1, Entries: []M7IdentityTrustEntry{{
		Role: receipt.Role, CallID: receipt.CallID, RunID: receipt.RunID,
		ReceiptSHA256: sha256Hex(receiptBytes), PrincipalID: receipt.Model.PrincipalID,
		ReviewedBy: "synthetic-registry-fixture",
		ReviewedAt: time.Date(2026, time.October, 23, 12, 0, 0, 0, time.UTC),
	}}}
	path := filepath.Join(t.TempDir(), "m7-identity-trust.json")
	if err := writeCanonicalM7TrustFixture(path, registryFile); err != nil {
		t.Fatal(err)
	}
	registry, digest, err := LoadM7IdentityTrustRegistry(path)
	if err != nil {
		t.Fatalf("LoadM7IdentityTrustRegistry() = %v", err)
	}
	if digest == "" || registry.SHA256() != digest {
		t.Fatalf("registry digest = %q, SHA256() = %q; want same non-empty exact file digest", digest, registry.SHA256())
	}
	principal, err := registry.VerifyRunReceipt(receipt, receiptBytes)
	if err != nil || principal != receipt.Model.PrincipalID {
		t.Fatalf("VerifyRunReceipt() = (%q, %v), want pinned principal", principal, err)
	}

	if _, err := registry.VerifyRunReceipt(receipt, append(append([]byte(nil), receiptBytes...), ' ')); err == nil || !strings.Contains(err.Error(), "canonical bytes") {
		t.Fatalf("VerifyRunReceipt() with substituted raw bytes = %v, want exact-byte refusal", err)
	}
	wrongPrincipal := receipt
	wrongPrincipal.Model.PrincipalID = "different-principal"
	if _, err := registry.VerifyRunReceipt(wrongPrincipal, receiptBytes); err == nil || !strings.Contains(err.Error(), "canonical bytes") {
		t.Fatalf("VerifyRunReceipt() with mismatched receipt object = %v, want object/byte binding refusal", err)
	}
}

func TestM7IdentityTrustRegistryRejectsDuplicateAndConflictingPins(t *testing.T) {
	base := M7IdentityTrustEntry{
		Role: domain.M7RunAuthor, CallID: "m7-call", RunID: "m7-run",
		ReceiptSHA256: strings.Repeat("a", 64), PrincipalID: "principal-a",
		ReviewedBy: "owner", ReviewedAt: time.Date(2026, time.October, 23, 12, 0, 0, 0, time.UTC),
	}
	tests := []struct {
		name    string
		entries []M7IdentityTrustEntry
		want    string
	}{
		{name: "duplicate exact receipt", entries: []M7IdentityTrustEntry{base, base}, want: "repeats an exact run-receipt pin"},
		{name: "conflicting principal for one run", entries: []M7IdentityTrustEntry{base, func() M7IdentityTrustEntry {
			other := base
			other.ReceiptSHA256 = strings.Repeat("b", 64)
			other.PrincipalID = "principal-b"
			return other
		}()}, want: "assigns multiple principals"},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			path := filepath.Join(t.TempDir(), "registry.json")
			if err := writeCanonicalM7TrustFixture(path, domainRegistryFile{SchemaVersion: M7IdentityTrustSchemaV1, Entries: test.entries}); err != nil {
				t.Fatal(err)
			}
			if _, _, err := LoadM7IdentityTrustRegistry(path); err == nil || !strings.Contains(err.Error(), test.want) {
				t.Fatalf("LoadM7IdentityTrustRegistry() error = %v, want %q", err, test.want)
			}
		})
	}
}

func TestValidateM7PrincipalIndependenceRejectsAliasedReviewers(t *testing.T) {
	principals := map[domain.M7RunRole]string{
		domain.M7RunAuthor:         "author-principal",
		domain.M7RunRoundTrip:      "reviewer-one",
		domain.M7RunCanon:          "reviewer-one",
		domain.M7RunLeakage:        "leakage-reviewer",
		domain.M7RunStudentAttempt: "student-principal",
	}
	if err := validateM7PrincipalIndependence(principals); err == nil || !strings.Contains(err.Error(), "not independent") {
		t.Fatalf("validateM7PrincipalIndependence() = %v, want same-principal refusal", err)
	}
	principals[domain.M7RunCanon] = "reviewer-two"
	if err := validateM7PrincipalIndependence(principals); err != nil {
		t.Fatalf("validateM7PrincipalIndependence(distinct principals) = %v", err)
	}
}

func loadSyntheticM7IdentityTrustRegistry(t *testing.T, files fstest.MapFS, manifestPaths ...string) *M7IdentityTrustRegistry {
	t.Helper()
	entries := make([]M7IdentityTrustEntry, 0, 9*len(manifestPaths))
	for _, manifestPath := range manifestPaths {
		manifestBytes, err := files.ReadFile(manifestPath)
		if err != nil {
			t.Fatalf("read M7 test manifest %q: %v", manifestPath, err)
		}
		var manifest domain.M7EvidenceManifestV1
		if err := json.Unmarshal(manifestBytes, &manifest); err != nil {
			t.Fatalf("decode M7 test manifest %q: %v", manifestPath, err)
		}
		bindings := []domain.M7ArtifactBinding{manifest.Author, manifest.RoundTrip, manifest.Canon, manifest.Leakage}
		bindings = append(bindings, manifest.StudentTrials...)
		for _, binding := range bindings {
			receiptBytes, err := files.ReadFile(binding.RunReceiptPath)
			if err != nil {
				t.Fatalf("read M7 test run receipt %q: %v", binding.RunReceiptPath, err)
			}
			var receipt domain.M7RunReceiptV2
			if err := json.Unmarshal(receiptBytes, &receipt); err != nil {
				t.Fatalf("decode M7 test receipt %q: %v", binding.RunReceiptPath, err)
			}
			entries = append(entries, M7IdentityTrustEntry{
				Role: receipt.Role, CallID: receipt.CallID, RunID: receipt.RunID,
				ReceiptSHA256: sha256Hex(receiptBytes), PrincipalID: receipt.Model.PrincipalID,
				ReviewedBy: "synthetic-test-registry", ReviewedAt: time.Date(2026, time.October, 23, 12, 0, 0, 0, time.UTC),
			})
		}
	}
	path := filepath.Join(t.TempDir(), "synthetic-m7-identity-trust.json")
	if err := writeCanonicalM7TrustFixture(path, domainRegistryFile{SchemaVersion: M7IdentityTrustSchemaV1, Entries: entries}); err != nil {
		t.Fatal(err)
	}
	registry, _, err := LoadM7IdentityTrustRegistry(path)
	if err != nil {
		t.Fatalf("load synthetic M7 identity trust fixture: %v", err)
	}
	return registry
}

type domainRegistryFile struct {
	SchemaVersion string                 `json:"schema_version"`
	Entries       []M7IdentityTrustEntry `json:"entries"`
}

func writeCanonicalM7TrustFixture(path string, fixture domainRegistryFile) error {
	data, err := json.Marshal(fixture)
	if err != nil {
		return err
	}
	if err := os.WriteFile(path, data, 0o600); err != nil {
		return fmt.Errorf("write canonical test registry: %w", err)
	}
	return nil
}
