package gateaudit

import (
	"encoding/json"
	"os"
	"path/filepath"
	"testing"
	"time"
)

func TestPinnedReviewerTrustVerifierAcceptsOnlyExactAttestation(t *testing.T) {
	root := t.TempDir()
	statementSHA := digestBytes([]byte("pinned statement"))
	attestation := ReviewerIdentityAttestation{
		SchemaVersion: reviewerAttestationSchema, EvidenceID: "reviewer-attestation-1",
		ReviewerID: "reviewer-1", Issuer: "trusted-review-org", Subject: "reviewer-1",
		ProblemStatementSHA256: statementSHA, RecordedAt: time.Date(2026, 10, 21, 1, 0, 0, 0, time.UTC),
	}
	attestationBytes, err := json.Marshal(attestation)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(root, attestation.EvidenceID+".artifact"), attestationBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	registry := ReviewerTrustRegistry{
		SchemaVersion: reviewerTrustSchema,
		Entries: []ReviewerTrustEntry{{
			ReviewerID: attestation.ReviewerID, Issuer: attestation.Issuer, Subject: attestation.Subject,
			AttestationEvidenceID: attestation.EvidenceID, ProblemStatementSHA256: statementSHA,
			AttestationSHA256: digestBytes(attestationBytes),
		}},
	}
	registryBytes, err := json.Marshal(registry)
	if err != nil {
		t.Fatal(err)
	}
	registryPath := filepath.Join(root, "reviewer-trust.json")
	if err := os.WriteFile(registryPath, registryBytes, 0o600); err != nil {
		t.Fatal(err)
	}

	loaded, registrySHA, err := LoadReviewerTrustRegistry(registryPath)
	if err != nil {
		t.Fatalf("LoadReviewerTrustRegistry() error = %v", err)
	}
	if registrySHA != digestBytes(registryBytes) {
		t.Fatalf("registry digest = %s, want %s", registrySHA, digestBytes(registryBytes))
	}
	identity := ReviewerIdentity{
		ReviewerID: attestation.ReviewerID, Issuer: attestation.Issuer, Subject: attestation.Subject,
		AttestationEvidenceID: attestation.EvidenceID,
	}
	verify := loaded.Verifier(root)
	if err := verify(identity, statementSHA); err != nil {
		t.Fatalf("trusted exact attestation rejected: %v", err)
	}
	if err := verify(identity, digestBytes([]byte("other statement"))); err == nil {
		t.Fatal("attestation accepted for a different statement")
	}

	changed := attestation
	changed.Subject = "substituted-reviewer"
	changedBytes, err := json.Marshal(changed)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(root, attestation.EvidenceID+".artifact"), changedBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	if err := verify(identity, statementSHA); err == nil {
		t.Fatal("changed attestation accepted after registry load")
	}
}

func TestLoadReviewerTrustRegistryRejectsMissingOrMalformedTrust(t *testing.T) {
	for name, contents := range map[string]string{
		"empty entries":  `{"schema_version":"mathcase-reviewer-trust-v1","entries":[]}`,
		"invalid digest": `{"schema_version":"mathcase-reviewer-trust-v1","entries":[{"reviewer_id":"r","issuer":"i","subject":"s","attestation_evidence_id":"a","problem_statement_sha256":"bad","attestation_sha256":"bad"}]}`,
		"unknown field":  `{"schema_version":"mathcase-reviewer-trust-v1","entries":[],"trusted":true}`,
	} {
		t.Run(name, func(t *testing.T) {
			path := filepath.Join(t.TempDir(), "trust.json")
			if err := os.WriteFile(path, []byte(contents), 0o600); err != nil {
				t.Fatal(err)
			}
			if _, _, err := LoadReviewerTrustRegistry(path); err == nil {
				t.Fatal("malformed trust registry was accepted")
			}
		})
	}
}

func TestReviewerTrustKeyUsesUnambiguousFieldBoundaries(t *testing.T) {
	left := reviewerTrustKey("a\x00b", "c", "d", "e", "f")
	right := reviewerTrustKey("a", "b\x00c", "d", "e", "f")
	if left == right {
		t.Fatal("distinct reviewer identity fields collided in the trust key")
	}
}
