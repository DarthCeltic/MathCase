package persistence

import (
	"context"
	"crypto/ed25519"
	"crypto/rand"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestDossierSignatureBindsDigestAndTrustedSigner(t *testing.T) {
	publicKey, privateKey, err := ed25519.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatal(err)
	}
	signedAt := time.Date(2026, time.October, 19, 22, 30, 0, 0, time.FixedZone("EDT", -4*60*60))
	digest := strings.Repeat("a", 64)
	signature, err := signDigest("case-r0b", digest, "ryan-primary", signedAt, privateKey)
	if err != nil {
		t.Fatal(err)
	}
	if signature.SignedAt.Location() != time.UTC {
		t.Fatalf("signature time location = %s, want UTC", signature.SignedAt.Location())
	}
	trusted := map[string]ed25519.PublicKey{"ryan-primary": publicKey}
	if err := VerifyDigest("case-r0b", digest, signature, trusted); err != nil {
		t.Fatalf("VerifyDigest() error = %v", err)
	}
	if err := VerifyDigest("case-r0b", strings.Repeat("b", 64), signature, trusted); err == nil {
		t.Fatal("signature was accepted for a different dossier digest")
	}
	if err := VerifyDigest("case-r0b", digest, signature, map[string]ed25519.PublicKey{}); err == nil {
		t.Fatal("signature was accepted without a trusted signer key")
	}
	wrongKey, _, err := ed25519.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatal(err)
	}
	if err := VerifyDigest("case-r0b", digest, signature, map[string]ed25519.PublicKey{"ryan-primary": wrongKey}); err == nil {
		t.Fatal("signature was accepted with a different key for the signer ID")
	}
}

func TestDossierSignatureRejectsInvalidMetadataAndUnreadyDossier(t *testing.T) {
	_, privateKey, err := ed25519.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatal(err)
	}
	if _, err := signDigest("case-r0b", "not-a-digest", "ryan-primary", time.Now(), privateKey); err == nil {
		t.Fatal("invalid digest was signed")
	}
	if _, err := signDigest("case-r0b", strings.Repeat("a", 64), "ryan-primary", time.Time{}, privateKey); err == nil {
		t.Fatal("signature without a timestamp was created")
	}
	if _, err := SignReadyDossier(domain.Dossier{}, "ryan-primary", time.Now(), privateKey); err == nil {
		t.Fatal("incomplete dossier was signed")
	}
	if err := VerifyReadyDossier(domain.Dossier{}, DossierSignature{}, nil); err == nil {
		t.Fatal("incomplete dossier passed signed delivery verification")
	}
	root := filepath.Join(t.TempDir(), "store")
	store, err := NewDossierStore(root)
	if err != nil {
		t.Fatal(err)
	}
	publicKey := privateKey.Public().(ed25519.PublicKey)
	if _, err := store.PutSigned(context.Background(), domain.Dossier{}, DossierSignature{}, map[string]ed25519.PublicKey{"ryan-primary": publicKey}); err == nil {
		t.Fatal("unready dossier was persisted as signed")
	}
	if _, err := os.Stat(filepath.Join(root, "cases")); !os.IsNotExist(err) {
		t.Fatalf("failed signed write created a dossier path: %v", err)
	}
}

func TestM8EvidenceProofIsReopenedAtUseBoundary(t *testing.T) {
	dossier := domain.Dossier{}
	dossierSHA256, err := canonicalDossierSHA256(dossier)
	if err != nil {
		t.Fatal(err)
	}
	proof := VerifiedDossierEvidence{
		dossierSHA256: dossierSHA256, leanReceiptSHA256: strings.Repeat("a", 64),
		catalogSnapshotSHA256: strings.Repeat("c", 64),
		m7ReceiptID:           "synthetic-m7-call", m7EvidenceSHA256: strings.Repeat("b", 64), gateArtifactCount: 1,
		paths: DossierEvidencePaths{},
	}
	if err := requireVerifiedDossierEvidence(dossier, []VerifiedDossierEvidence{proof}); err == nil || !strings.Contains(err.Error(), "reopen M8 evidence at API boundary") {
		t.Fatalf("requireVerifiedDossierEvidence() with populated but stale proof fields = %v, want boundary revalidation refusal", err)
	}
}

func TestStoreImmutableSignatureIsIdempotentAndRejectsReplacement(t *testing.T) {
	directory := t.TempDir()
	target := filepath.Join(directory, "dossier.sig.json")
	body := []byte(`{"signature":"fixed"}`)
	if err := storeImmutableSignature(context.Background(), directory, target, body); err != nil {
		t.Fatal(err)
	}
	if err := storeImmutableSignature(context.Background(), directory, target, body); err != nil {
		t.Fatalf("idempotent signature write failed: %v", err)
	}
	if err := storeImmutableSignature(context.Background(), directory, target, []byte(`{"signature":"changed"}`)); err == nil {
		t.Fatal("immutable signature was replaced")
	}
	stored, err := os.ReadFile(target)
	if err != nil {
		t.Fatal(err)
	}
	if string(stored) != string(body) {
		t.Fatalf("stored signature = %s, want %s", stored, body)
	}
}
