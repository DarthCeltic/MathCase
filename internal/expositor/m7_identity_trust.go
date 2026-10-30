package expositor

import (
	"bytes"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	M7IdentityTrustSchemaV1 = "mathcase-m7-identity-trust-v1"
	maxM7IdentityTrustBytes = 16 << 20
	maxM7IdentityTrustRows  = 100000
)

// M7IdentityTrustRegistry is an out-of-band, host-controlled trust root. A
// row pins the exact raw run-receipt bytes and the principal independently
// assigned to that run. It is not a provider signature verifier: the registry
// administrator must review the identity source and keep this file outside
// the evidence producer's control.
type M7IdentityTrustRegistry struct {
	SchemaVersion string                 `json:"schema_version"`
	Entries       []M7IdentityTrustEntry `json:"entries"`

	sha256       string
	byReceipt    map[string]M7IdentityTrustEntry
	runPrincipal map[string]string
}

// M7IdentityTrustEntry records an independently reviewed identity binding
// for one exact role/call/run receipt.
type M7IdentityTrustEntry struct {
	Role          domain.M7RunRole `json:"role"`
	CallID        string           `json:"call_id"`
	RunID         string           `json:"run_id"`
	ReceiptSHA256 string           `json:"receipt_sha256"`
	PrincipalID   string           `json:"principal_id"`
	ReviewedBy    string           `json:"reviewed_by"`
	ReviewedAt    time.Time        `json:"reviewed_at"`
}

// LoadM7IdentityTrustRegistry reads a strict canonical registry from a
// non-symlink regular file. The returned digest identifies the host trust
// configuration and should be carried in M7 audit receipts.
func LoadM7IdentityTrustRegistry(path string) (*M7IdentityTrustRegistry, string, error) {
	data, err := readM7IdentityTrustFile(path)
	if err != nil {
		return nil, "", err
	}
	var registry M7IdentityTrustRegistry
	if err := decodeCanonicalJSON(data, &registry); err != nil {
		return nil, "", fmt.Errorf("expositor: decode M7 identity trust registry: %w", err)
	}
	if registry.SchemaVersion != M7IdentityTrustSchemaV1 || len(registry.Entries) == 0 || len(registry.Entries) > maxM7IdentityTrustRows {
		return nil, "", errors.New("expositor: M7 identity trust registry has an unsupported schema or row count")
	}
	registry.byReceipt = make(map[string]M7IdentityTrustEntry, len(registry.Entries))
	registry.runPrincipal = make(map[string]string, len(registry.Entries))
	for index, entry := range registry.Entries {
		if err := validateM7IdentityTrustEntry(entry); err != nil {
			return nil, "", fmt.Errorf("expositor: M7 identity trust registry entry %d: %w", index, err)
		}
		runKey := m7IdentityRunKey(entry.CallID, entry.RunID)
		if previous, exists := registry.runPrincipal[runKey]; exists && previous != entry.PrincipalID {
			return nil, "", fmt.Errorf("expositor: M7 identity trust registry assigns multiple principals to call/run %q/%q", entry.CallID, entry.RunID)
		}
		registry.runPrincipal[runKey] = entry.PrincipalID
		key := m7IdentityReceiptKey(entry.Role, entry.CallID, entry.RunID, entry.ReceiptSHA256)
		if _, duplicate := registry.byReceipt[key]; duplicate {
			return nil, "", fmt.Errorf("expositor: M7 identity trust registry repeats an exact run-receipt pin for %q/%q", entry.CallID, entry.RunID)
		}
		registry.byReceipt[key] = entry
	}
	registry.sha256 = sha256Hex(data)
	return &registry, registry.sha256, nil
}

// SHA256 returns the digest of the exact canonical registry bytes loaded from
// the host-controlled trust path.
func (registry *M7IdentityTrustRegistry) SHA256() string {
	if registry == nil {
		return ""
	}
	return registry.sha256
}

// VerifyRunReceipt authenticates one run identity only when the registry has
// an exact role/call/run and raw-receipt digest pin, and its principal agrees
// with the principal claim in the receipt. Provider-attestation envelopes in
// the receipt remain claims unless a separate issuer verifier is added.
func (registry *M7IdentityTrustRegistry) VerifyRunReceipt(receipt domain.M7RunReceiptV2, rawReceipt []byte) (string, error) {
	if registry == nil || len(registry.byReceipt) == 0 {
		return "", errors.New("expositor: M7 identity trust registry is unavailable")
	}
	canonicalReceipt, err := json.Marshal(receipt)
	if err != nil || !bytes.Equal(rawReceipt, canonicalReceipt) {
		return "", errors.New("expositor: supplied M7 run receipt does not match the exact canonical bytes being authenticated")
	}
	receiptSHA256 := sha256Hex(rawReceipt)
	key := m7IdentityReceiptKey(receipt.Role, receipt.CallID, receipt.RunID, receiptSHA256)
	entry, ok := registry.byReceipt[key]
	if !ok {
		return "", errors.New("expositor: M7 run receipt role or exact bytes are not pinned by the host identity registry")
	}
	if strings.TrimSpace(receipt.Model.PrincipalID) == "" || receipt.Model.PrincipalID != entry.PrincipalID {
		return "", errors.New("expositor: M7 run principal claim is missing or differs from the host identity registry")
	}
	return entry.PrincipalID, nil
}

func validateM7IdentityTrustEntry(entry M7IdentityTrustEntry) error {
	if !knownM7Role(entry.Role) || !validDigest(entry.ReceiptSHA256) || entry.ReviewedAt.IsZero() {
		return errors.New("role, receipt digest, or review timestamp is invalid")
	}
	for label, value := range map[string]string{
		"call ID": entry.CallID, "run ID": entry.RunID, "principal ID": entry.PrincipalID,
	} {
		if err := state.ValidateIdentifier("M7 identity trust "+label, value); err != nil {
			return err
		}
	}
	if strings.TrimSpace(entry.ReviewedBy) == "" || strings.ContainsAny(entry.ReviewedBy, "\x00\r\n") {
		return errors.New("reviewed_by is required and must not contain control line breaks")
	}
	return nil
}

func knownM7Role(role domain.M7RunRole) bool {
	switch role {
	case domain.M7RunAuthor, domain.M7RunRoundTrip, domain.M7RunCanon, domain.M7RunLeakage, domain.M7RunStudentAttempt:
		return true
	default:
		return false
	}
}

func m7IdentityRunKey(callID, runID string) string {
	return fmt.Sprintf("%d:%s%d:%s", len(callID), callID, len(runID), runID)
}

func m7IdentityReceiptKey(role domain.M7RunRole, callID, runID, receiptSHA256 string) string {
	return fmt.Sprintf("%d:%s%d:%s%d:%s%d:%s", len(role), role, len(callID), callID, len(runID), runID, len(receiptSHA256), receiptSHA256)
}

func readM7IdentityTrustFile(path string) ([]byte, error) {
	if strings.TrimSpace(path) == "" || filepath.Clean(path) == "." {
		return nil, errors.New("expositor: M7 identity trust registry path is required")
	}
	info, err := os.Lstat(path)
	if err != nil {
		return nil, fmt.Errorf("expositor: inspect M7 identity trust registry: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() || info.Size() <= 0 || info.Size() > maxM7IdentityTrustBytes {
		return nil, errors.New("expositor: M7 identity trust registry must be a non-empty regular file within the size limit")
	}
	file, err := os.Open(path)
	if err != nil {
		return nil, fmt.Errorf("expositor: open M7 identity trust registry: %w", err)
	}
	defer file.Close()
	opened, err := file.Stat()
	if err != nil || !opened.Mode().IsRegular() || opened.Size() != info.Size() {
		return nil, errors.New("expositor: M7 identity trust registry changed while opening")
	}
	data, err := io.ReadAll(io.LimitReader(file, maxM7IdentityTrustBytes+1))
	if err != nil || len(data) == 0 || len(data) > maxM7IdentityTrustBytes || int64(len(data)) != info.Size() {
		return nil, errors.New("expositor: M7 identity trust registry is unreadable or exceeds the size limit")
	}
	return data, nil
}
