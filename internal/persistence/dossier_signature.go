package persistence

import (
	"bytes"
	"context"
	"crypto/ed25519"
	"encoding/base64"
	jsonv1 "encoding/json"
	jsonv2 "encoding/json/v2"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	dossierSignatureSchema = "mathcase-dossier-signature-v1"
	dossierSignatureDomain = "MATHCASE-DOSSIER-SIGNATURE-V1\n"
)

// DossierSignature is a detached Ed25519 signature over one canonical,
// delivery-ready dossier snapshot. The public key is not self-trusted: callers
// must supply a trusted signer-to-key mapping when verifying it.
type DossierSignature struct {
	SchemaVersion   string    `json:"schema_version"`
	Algorithm       string    `json:"algorithm"`
	CaseID          string    `json:"case_id"`
	DossierSHA256   string    `json:"dossier_sha256"`
	SignerID        string    `json:"signer_id"`
	SignerKeySHA256 string    `json:"signer_key_sha256"`
	SignedAt        time.Time `json:"signed_at"`
	SignatureBase64 string    `json:"signature_base64"`
}

// SignedDossierReceipt identifies the immutable dossier and detached signature
// stored together by DossierStore.
type SignedDossierReceipt struct {
	Dossier               DossierReceipt `json:"dossier"`
	SignerID              string         `json:"signer_id"`
	RelativeSignaturePath string         `json:"relative_signature_path"`
}

// VerifiedSignedDossier is an in-memory capability returned only after the
// dossier signature and its reopened M8 evidence have both been verified.
// Its fields are private so serialized or caller-authored data cannot mint it.
type VerifiedSignedDossier struct {
	caseID        string
	dossierSHA256 string
	signerID      string
}

// CaseID, DossierSHA256, and SignerID expose the verified signature identity
// needed to bind a downstream M2 parent without exposing the capability fields.
func (evidence VerifiedSignedDossier) CaseID() string        { return evidence.caseID }
func (evidence VerifiedSignedDossier) DossierSHA256() string { return evidence.dossierSHA256 }
func (evidence VerifiedSignedDossier) SignerID() string      { return evidence.signerID }

// MatchesDossier reports whether dossier is the exact canonical snapshot
// whose signature and M8 evidence were reopened by DossierStore.
func (evidence VerifiedSignedDossier) MatchesDossier(dossier domain.Dossier) bool {
	if evidence.caseID == "" || evidence.dossierSHA256 == "" || evidence.signerID == "" || dossier.Case.ID != evidence.caseID {
		return false
	}
	digest, err := canonicalDossierSHA256(dossier)
	return err == nil && digest == evidence.dossierSHA256
}

// PutSigned stores a delivery-ready dossier and its verified detached
// signature. It reopens M4/M7 and gate artifacts through the evidence proof
// before the write and immediately before creating the signed record. A
// signature file is immutable for one dossier digest and signer.
func (s *DossierStore) PutSigned(ctx context.Context, dossier domain.Dossier, signature DossierSignature, trustedSigners map[string]ed25519.PublicKey, evidence ...VerifiedDossierEvidence) (SignedDossierReceipt, error) {
	if s == nil || s.root == "" {
		return SignedDossierReceipt{}, errors.New("persistence: dossier store is nil")
	}
	if ctx == nil {
		return SignedDossierReceipt{}, errors.New("persistence: context is required")
	}
	if err := ctx.Err(); err != nil {
		return SignedDossierReceipt{}, err
	}
	if err := requireVerifiedDossierEvidence(dossier, evidence); err != nil {
		return SignedDossierReceipt{}, fmt.Errorf("persistence: refuse signed storage without reopened M8 evidence: %w", err)
	}
	if err := VerifyReadyDossier(dossier, signature, trustedSigners, evidence...); err != nil {
		return SignedDossierReceipt{}, fmt.Errorf("persistence: refuse unverified signed dossier: %w", err)
	}
	if err := validatePathID(signature.SignerID); err != nil {
		return SignedDossierReceipt{}, err
	}
	dossierReceipt, err := s.Put(ctx, dossier)
	if err != nil {
		return SignedDossierReceipt{}, err
	}
	directory := filepath.Join(s.root, "cases", dossier.Case.ID)
	target := filepath.Join(directory, dossierReceipt.ContentSHA256+"."+signature.SignerID+".sig.json")
	if err := ensureContained(s.root, target); err != nil {
		return SignedDossierReceipt{}, err
	}
	body, err := jsonv2.Marshal(signature, jsonv2.Deterministic(true))
	if err != nil {
		return SignedDossierReceipt{}, fmt.Errorf("persistence: encode dossier signature: %w", err)
	}
	if len(body) == 0 || len(body) > 16<<10 {
		return SignedDossierReceipt{}, errors.New("persistence: dossier signature size is invalid")
	}
	if err := requireVerifiedDossierEvidence(dossier, evidence); err != nil {
		return SignedDossierReceipt{}, fmt.Errorf("persistence: refuse signed storage after evidence changed: %w", err)
	}
	if err := storeImmutableSignature(ctx, directory, target, body); err != nil {
		return SignedDossierReceipt{}, err
	}
	relative, _ := filepath.Rel(s.root, target)
	return SignedDossierReceipt{Dossier: dossierReceipt, SignerID: signature.SignerID, RelativeSignaturePath: filepath.ToSlash(relative)}, nil
}

// GetSigned reopens the exact dossier, M4/M7 and gate artifacts, then verifies
// its stored signature against the supplied trusted signer keys. It does not
// add a separate cost-ledger reconciliation; use GetSignedWithCostLedger when
// that accounting receipt is present.
func (s *DossierStore) GetSigned(ctx context.Context, caseID, dossierSHA256, signerID string, trustedSigners map[string]ed25519.PublicKey, evidence ...VerifiedDossierEvidence) (domain.Dossier, DossierSignature, error) {
	if s == nil || s.root == "" {
		return domain.Dossier{}, DossierSignature{}, errors.New("persistence: dossier store is nil")
	}
	if err := validatePathID(signerID); err != nil {
		return domain.Dossier{}, DossierSignature{}, err
	}
	dossier, err := s.Get(ctx, caseID, dossierSHA256)
	if err != nil {
		return domain.Dossier{}, DossierSignature{}, err
	}
	if err := requireVerifiedDossierEvidence(dossier, evidence); err != nil {
		return domain.Dossier{}, DossierSignature{}, fmt.Errorf("persistence: refuse signed dossier without reopened M8 evidence: %w", err)
	}
	path := filepath.Join(s.root, "cases", caseID, dossierSHA256+"."+signerID+".sig.json")
	if err := ensureContained(s.root, path); err != nil {
		return domain.Dossier{}, DossierSignature{}, err
	}
	file, err := openRegular(path)
	if err != nil {
		return domain.Dossier{}, DossierSignature{}, fmt.Errorf("persistence: open dossier signature: %w", err)
	}
	defer file.Close()
	body, err := io.ReadAll(io.LimitReader(file, (16<<10)+1))
	if err != nil {
		return domain.Dossier{}, DossierSignature{}, fmt.Errorf("persistence: read dossier signature: %w", err)
	}
	if len(body) == 0 || len(body) > 16<<10 {
		return domain.Dossier{}, DossierSignature{}, errors.New("persistence: dossier signature size is invalid")
	}
	var signature DossierSignature
	if err := jsonv2.Unmarshal(body, &signature, jsonv2.RejectUnknownMembers(true)); err != nil {
		return domain.Dossier{}, DossierSignature{}, fmt.Errorf("persistence: decode dossier signature: %w", err)
	}
	if signature.SignerID != signerID {
		return domain.Dossier{}, DossierSignature{}, errors.New("persistence: dossier signature signer does not match path")
	}
	if err := VerifyReadyDossier(dossier, signature, trustedSigners, evidence...); err != nil {
		return domain.Dossier{}, DossierSignature{}, fmt.Errorf("persistence: stored dossier signature is invalid: %w", err)
	}
	return dossier, signature, nil
}

// GetVerifiedSigned reopens a signed dossier through the same M8 evidence
// boundary as GetSigned and returns a non-serializable capability for the
// exact snapshot. The capability is suitable for downstream trusted-parent
// adapters; it is not a new signature or an authorization to sign.
func (s *DossierStore) GetVerifiedSigned(ctx context.Context, caseID, dossierSHA256, signerID string, trustedSigners map[string]ed25519.PublicKey, evidence ...VerifiedDossierEvidence) (domain.Dossier, VerifiedSignedDossier, error) {
	dossier, signature, err := s.GetSigned(ctx, caseID, dossierSHA256, signerID, trustedSigners, evidence...)
	if err != nil {
		return domain.Dossier{}, VerifiedSignedDossier{}, err
	}
	verified := VerifiedSignedDossier{caseID: signature.CaseID, dossierSHA256: signature.DossierSHA256, signerID: signature.SignerID}
	if !verified.MatchesDossier(dossier) {
		return domain.Dossier{}, VerifiedSignedDossier{}, errors.New("persistence: verified signature identity does not match the reopened dossier snapshot")
	}
	return dossier, verified, nil
}

// GetSignedWithCostLedger verifies the signed dossier and reconciles its M7
// accounting receipt against the supplied append-only JSONL ledger prefix.
func (s *DossierStore) GetSignedWithCostLedger(ctx context.Context, caseID, dossierSHA256, signerID string, trustedSigners map[string]ed25519.PublicKey, costLedgerPath string, evidence ...VerifiedDossierEvidence) (domain.Dossier, DossierSignature, error) {
	dossier, signature, err := s.GetSigned(ctx, caseID, dossierSHA256, signerID, trustedSigners, evidence...)
	if err != nil {
		return domain.Dossier{}, DossierSignature{}, err
	}
	if dossier.AuthorCallAccounting == nil {
		return domain.Dossier{}, DossierSignature{}, errors.New("persistence: signed dossier has no M7 author-call accounting receipt")
	}
	if err := budget.VerifyCostCallReceiptJSONL(costLedgerPath, *dossier.AuthorCallAccounting); err != nil {
		return domain.Dossier{}, DossierSignature{}, fmt.Errorf("persistence: reconcile signed dossier accounting receipt: %w", err)
	}
	return dossier, signature, nil
}

func storeImmutableSignature(ctx context.Context, directory, target string, body []byte) error {
	if err := ctx.Err(); err != nil {
		return err
	}
	if err := ensureDirectory(directory); err != nil {
		return err
	}
	file, err := openRegular(target)
	if err == nil {
		defer file.Close()
		stored, readErr := io.ReadAll(io.LimitReader(file, (16<<10)+1))
		if readErr != nil {
			return fmt.Errorf("persistence: read existing signature: %w", readErr)
		}
		if !bytes.Equal(stored, body) {
			return errors.New("persistence: signed dossier record is immutable for this signer and digest")
		}
		return nil
	}
	if !errors.Is(err, os.ErrNotExist) {
		return fmt.Errorf("persistence: inspect existing signature: %w", err)
	}
	if err := ctx.Err(); err != nil {
		return err
	}
	temp, err := os.CreateTemp(directory, ".mathcase-signature-*.tmp")
	if err != nil {
		return fmt.Errorf("persistence: create signature temporary file: %w", err)
	}
	tempPath := temp.Name()
	defer func() { _ = os.Remove(tempPath) }()
	if err := temp.Chmod(0o600); err != nil {
		_ = temp.Close()
		return fmt.Errorf("persistence: restrict signature file: %w", err)
	}
	if err := writeAll(temp, body); err != nil {
		_ = temp.Close()
		return fmt.Errorf("persistence: write dossier signature: %w", err)
	}
	if err := temp.Sync(); err != nil {
		_ = temp.Close()
		return fmt.Errorf("persistence: sync dossier signature: %w", err)
	}
	if err := temp.Close(); err != nil {
		return fmt.Errorf("persistence: close dossier signature: %w", err)
	}
	if err := ctx.Err(); err != nil {
		return err
	}
	if err := os.Link(tempPath, target); err != nil {
		existing, openErr := openRegular(target)
		if openErr != nil {
			return fmt.Errorf("persistence: store dossier signature without replacement: %w", err)
		}
		defer existing.Close()
		stored, readErr := io.ReadAll(io.LimitReader(existing, (16<<10)+1))
		if readErr != nil || !bytes.Equal(stored, body) {
			return fmt.Errorf("persistence: competing signature differs or is unreadable: %w", err)
		}
	}
	if runtime.GOOS != "windows" {
		directoryFile, err := os.Open(directory)
		if err != nil {
			return fmt.Errorf("persistence: open signature directory: %w", err)
		}
		syncErr := directoryFile.Sync()
		closeErr := directoryFile.Close()
		if syncErr != nil {
			return fmt.Errorf("persistence: sync signature directory: %w", syncErr)
		}
		if closeErr != nil {
			return fmt.Errorf("persistence: close signature directory: %w", closeErr)
		}
	}
	return nil
}

// SignReadyDossier signs the canonical digest of a dossier only after all
// delivery gates pass and the external evidence is reopened at the signing
// boundary. It never loads or generates a private key.
func SignReadyDossier(dossier domain.Dossier, signerID string, signedAt time.Time, privateKey ed25519.PrivateKey, evidence ...VerifiedDossierEvidence) (DossierSignature, error) {
	if err := requireVerifiedDossierEvidence(dossier, evidence); err != nil {
		return DossierSignature{}, fmt.Errorf("persistence: dossier lacks reopened M8 evidence: %w", err)
	}
	if err := dossier.ValidateReadyForDelivery(); err != nil {
		return DossierSignature{}, fmt.Errorf("persistence: dossier is not ready to sign: %w", err)
	}
	digest, err := canonicalDossierSHA256(dossier)
	if err != nil {
		return DossierSignature{}, err
	}
	return signDigest(dossier.Case.ID, digest, signerID, signedAt, privateKey)
}

// VerifyReadyDossier checks delivery readiness, exact dossier bytes, signer
// identity, key fingerprint, and the detached signature.
func VerifyReadyDossier(dossier domain.Dossier, signature DossierSignature, trustedSigners map[string]ed25519.PublicKey, evidence ...VerifiedDossierEvidence) error {
	if err := requireVerifiedDossierEvidence(dossier, evidence); err != nil {
		return fmt.Errorf("persistence: dossier lacks reopened M8 evidence: %w", err)
	}
	if err := dossier.ValidateReadyForDelivery(); err != nil {
		return fmt.Errorf("persistence: dossier is not ready for signed delivery: %w", err)
	}
	digest, err := canonicalDossierSHA256(dossier)
	if err != nil {
		return err
	}
	return VerifyDigest(dossier.Case.ID, digest, signature, trustedSigners)
}

// signDigest creates a detached signature for a validated canonical digest.
// The payload includes a domain separator to prevent cross-protocol reuse.
func signDigest(caseID, dossierSHA256, signerID string, signedAt time.Time, privateKey ed25519.PrivateKey) (DossierSignature, error) {
	if err := validateSignatureMetadata(caseID, dossierSHA256, signerID, signedAt); err != nil {
		return DossierSignature{}, err
	}
	if len(privateKey) != ed25519.PrivateKeySize {
		return DossierSignature{}, errors.New("persistence: Ed25519 private key has an invalid size")
	}
	key := append(ed25519.PrivateKey(nil), privateKey...)
	publicKey, ok := key.Public().(ed25519.PublicKey)
	if !ok || len(publicKey) != ed25519.PublicKeySize {
		return DossierSignature{}, errors.New("persistence: Ed25519 private key has no valid public key")
	}
	canonicalTime := signedAt.UTC()
	keyFingerprint := sha256Hex(publicKey)
	unsigned := DossierSignature{
		SchemaVersion:   dossierSignatureSchema,
		Algorithm:       "Ed25519",
		CaseID:          caseID,
		DossierSHA256:   dossierSHA256,
		SignerID:        signerID,
		SignerKeySHA256: keyFingerprint,
		SignedAt:        canonicalTime,
	}
	unsigned.SignatureBase64 = base64.StdEncoding.EncodeToString(ed25519.Sign(key, signaturePayload(unsigned)))
	return unsigned, nil
}

// VerifyDigest verifies a detached signature against a trusted key selected by
// signer ID. A public key embedded in a signature is never trusted on its own.
func VerifyDigest(caseID, dossierSHA256 string, signature DossierSignature, trustedSigners map[string]ed25519.PublicKey) error {
	if err := validateSignatureMetadata(caseID, dossierSHA256, signature.SignerID, signature.SignedAt); err != nil {
		return err
	}
	if signature.SchemaVersion != dossierSignatureSchema || signature.Algorithm != "Ed25519" {
		return errors.New("persistence: unsupported dossier signature schema or algorithm")
	}
	if signature.CaseID != caseID || signature.DossierSHA256 != dossierSHA256 {
		return errors.New("persistence: dossier signature does not bind to this case and digest")
	}
	publicKey, ok := trustedSigners[signature.SignerID]
	if !ok || len(publicKey) != ed25519.PublicKeySize {
		return fmt.Errorf("persistence: no trusted Ed25519 key registered for signer %q", signature.SignerID)
	}
	if sha256Hex(publicKey) != signature.SignerKeySHA256 {
		return errors.New("persistence: signer key fingerprint does not match the trusted key")
	}
	signatureBytes, err := base64.StdEncoding.DecodeString(signature.SignatureBase64)
	if err != nil || len(signatureBytes) != ed25519.SignatureSize {
		return errors.New("persistence: dossier signature encoding is invalid")
	}
	if !ed25519.Verify(publicKey, signaturePayload(signature), signatureBytes) {
		return errors.New("persistence: dossier signature verification failed")
	}
	return nil
}

func canonicalDossierSHA256(dossier domain.Dossier) (string, error) {
	body, err := jsonv2.Marshal(dossier, jsonv2.Deterministic(true), jsonv1.FormatDurationAsNano(true))
	if err != nil {
		return "", fmt.Errorf("persistence: encode dossier for signing: %w", err)
	}
	if len(body) == 0 || len(body) > maxDossierBytes {
		return "", errors.New("persistence: dossier snapshot size is invalid for signing")
	}
	return sha256Hex(body), nil
}

func validateSignatureMetadata(caseID, digest, signerID string, signedAt time.Time) error {
	if err := validatePathID(caseID); err != nil {
		return err
	}
	if !validSHA256(digest) {
		return errors.New("persistence: dossier digest must be canonical SHA-256 hex")
	}
	if err := state.ValidateIdentifier("dossier signer ID", signerID); err != nil {
		return err
	}
	if signedAt.IsZero() {
		return errors.New("persistence: dossier signature time is required")
	}
	return nil
}

func signaturePayload(signature DossierSignature) []byte {
	var builder strings.Builder
	builder.Grow(len(dossierSignatureDomain) + len(signature.CaseID) + len(signature.DossierSHA256) + len(signature.SignerID) + len(signature.SignerKeySHA256) + 40)
	builder.WriteString(dossierSignatureDomain)
	builder.WriteString(signature.CaseID)
	builder.WriteByte('\n')
	builder.WriteString(signature.DossierSHA256)
	builder.WriteByte('\n')
	builder.WriteString(signature.SignerID)
	builder.WriteByte('\n')
	builder.WriteString(signature.SignerKeySHA256)
	builder.WriteByte('\n')
	builder.WriteString(signature.SignedAt.UTC().Format(time.RFC3339Nano))
	return []byte(builder.String())
}
