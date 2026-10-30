package gateaudit

import (
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strings"
	"time"
)

const (
	reviewerTrustSchema       = "mathcase-reviewer-trust-v1"
	reviewerAttestationSchema = "mathcase-reviewer-attestation-v1"
	maxReviewerTrustBytes     = 4 << 20
)

// ReviewerTrustRegistry is a host-controlled trust root. Each entry pins the
// exact attestation bytes and exact statement for which a reviewer identity is
// accepted. The registry must come from an independently controlled source;
// a hash written by the same untrusted evidence producer is not authentication.
type ReviewerTrustRegistry struct {
	SchemaVersion string               `json:"schema_version"`
	Entries       []ReviewerTrustEntry `json:"entries"`
}

type ReviewerTrustEntry struct {
	ReviewerID             string `json:"reviewer_id"`
	Issuer                 string `json:"issuer"`
	Subject                string `json:"subject"`
	AttestationEvidenceID  string `json:"attestation_evidence_id"`
	ProblemStatementSHA256 string `json:"problem_statement_sha256"`
	AttestationSHA256      string `json:"attestation_sha256"`
}

// ReviewerIdentityAttestation is the exact local identity statement whose
// bytes are pinned by a trusted registry entry. It carries no self-authenticating
// signature; trust comes from the independently controlled registry.
type ReviewerIdentityAttestation struct {
	SchemaVersion          string    `json:"schema_version"`
	EvidenceID             string    `json:"evidence_id"`
	ReviewerID             string    `json:"reviewer_id"`
	Issuer                 string    `json:"issuer"`
	Subject                string    `json:"subject"`
	ProblemStatementSHA256 string    `json:"problem_statement_sha256"`
	RecordedAt             time.Time `json:"recorded_at"`
}

// LoadReviewerTrustRegistry reads a strict, bounded registry and returns its
// digest so the caller can include the trust configuration in the run record.
func LoadReviewerTrustRegistry(path string) (ReviewerTrustRegistry, string, error) {
	data, err := readRegularTrustFile(path)
	if err != nil {
		return ReviewerTrustRegistry{}, "", err
	}
	var registry ReviewerTrustRegistry
	if err := decodeStrict(data, &registry); err != nil {
		return ReviewerTrustRegistry{}, "", fmt.Errorf("reviewer trust registry: %w", err)
	}
	if registry.SchemaVersion != reviewerTrustSchema {
		return ReviewerTrustRegistry{}, "", fmt.Errorf("reviewer trust registry: unsupported schema %q", registry.SchemaVersion)
	}
	if len(registry.Entries) == 0 || len(registry.Entries) > 4096 {
		return ReviewerTrustRegistry{}, "", errors.New("reviewer trust registry: expected 1-4096 entries")
	}
	seen := make(map[string]struct{}, len(registry.Entries))
	for index, entry := range registry.Entries {
		if strings.TrimSpace(entry.ReviewerID) == "" || strings.TrimSpace(entry.Issuer) == "" || strings.TrimSpace(entry.Subject) == "" ||
			strings.TrimSpace(entry.AttestationEvidenceID) == "" || !safeRelative(entry.AttestationEvidenceID+".artifact") ||
			!validDigest(entry.ProblemStatementSHA256) || !validDigest(entry.AttestationSHA256) {
			return ReviewerTrustRegistry{}, "", fmt.Errorf("reviewer trust registry: entry %d is incomplete or has an invalid digest", index)
		}
		key := reviewerTrustKey(entry.ReviewerID, entry.Issuer, entry.Subject, entry.AttestationEvidenceID, entry.ProblemStatementSHA256)
		if _, exists := seen[key]; exists {
			return ReviewerTrustRegistry{}, "", fmt.Errorf("reviewer trust registry: duplicate entry for reviewer %q", entry.ReviewerID)
		}
		seen[key] = struct{}{}
	}
	sum := sha256.Sum256(data)
	return registry, hex.EncodeToString(sum[:]), nil
}

// Verifier returns the gate-reader callback bound to the supplied evidence
// root. A reviewer passes only when the identity, statement digest, attestation
// ID, and raw attestation bytes all match one independently pinned entry.
func (registry ReviewerTrustRegistry) Verifier(evidenceRoot string) ReviewerIdentityVerifier {
	entries := make(map[string]ReviewerTrustEntry, len(registry.Entries))
	for _, entry := range registry.Entries {
		entries[reviewerTrustKey(entry.ReviewerID, entry.Issuer, entry.Subject, entry.AttestationEvidenceID, entry.ProblemStatementSHA256)] = entry
	}
	return func(identity ReviewerIdentity, statementSHA256 string) error {
		key := reviewerTrustKey(identity.ReviewerID, identity.Issuer, identity.Subject, identity.AttestationEvidenceID, statementSHA256)
		entry, ok := entries[key]
		if !ok {
			return errors.New("reviewer identity is not pinned for this statement in the trusted registry")
		}
		_, data, err := readRootFile(evidenceRoot, identity.AttestationEvidenceID+".artifact")
		if err != nil {
			return fmt.Errorf("reviewer attestation: %w", err)
		}
		if digestBytes(data) != entry.AttestationSHA256 {
			return errors.New("reviewer attestation bytes differ from the trusted registry pin")
		}
		var attestation ReviewerIdentityAttestation
		if err := decodeStrict(data, &attestation); err != nil {
			return fmt.Errorf("decode reviewer attestation: %w", err)
		}
		if attestation.SchemaVersion != reviewerAttestationSchema || attestation.EvidenceID != identity.AttestationEvidenceID ||
			attestation.ReviewerID != identity.ReviewerID || attestation.Issuer != identity.Issuer || attestation.Subject != identity.Subject ||
			attestation.ProblemStatementSHA256 != statementSHA256 || attestation.RecordedAt.IsZero() {
			return errors.New("reviewer attestation does not match the trusted identity and exact statement")
		}
		return nil
	}
}

func reviewerTrustKey(reviewerID, issuer, subject, evidenceID, statementSHA256 string) string {
	fields := []string{reviewerID, issuer, subject, evidenceID, statementSHA256}
	var key strings.Builder
	for _, field := range fields {
		fmt.Fprintf(&key, "%d:", len(field))
		key.WriteString(field)
	}
	return key.String()
}

func readRegularTrustFile(path string) ([]byte, error) {
	if strings.TrimSpace(path) == "" || filepath.Clean(path) == "." {
		return nil, errors.New("reviewer trust registry path is required")
	}
	info, err := os.Lstat(path)
	if err != nil {
		return nil, fmt.Errorf("inspect reviewer trust registry: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() || info.Size() <= 0 || info.Size() > maxReviewerTrustBytes {
		return nil, errors.New("reviewer trust registry must be a non-empty regular file within the size limit")
	}
	file, err := os.Open(path)
	if err != nil {
		return nil, fmt.Errorf("open reviewer trust registry: %w", err)
	}
	defer file.Close()
	opened, err := file.Stat()
	if err != nil || !opened.Mode().IsRegular() || opened.Size() != info.Size() {
		return nil, errors.New("reviewer trust registry changed while opening")
	}
	data, err := io.ReadAll(io.LimitReader(file, maxReviewerTrustBytes+1))
	if err != nil || len(data) == 0 || len(data) > maxReviewerTrustBytes || int64(len(data)) != info.Size() {
		return nil, errors.New("reviewer trust registry is unreadable or exceeds the size limit")
	}
	return data, nil
}
