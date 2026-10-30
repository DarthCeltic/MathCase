package main

import (
	"bytes"
	"context"
	"crypto/ed25519"
	"encoding/base64"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"os"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/application"
	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/persistence"
	"github.com/DarthCeltic/MathCase/internal/poser"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	maxPoseProofBytes      = 128 << 10
	maxCatalogSnapshotFile = 32 << 20
	maxSignerKeyFile       = 64 << 10
	maxTrustedSigners      = 64
)

type poseRequestFile struct {
	Primary      signedPoseParentFile  `json:"primary"`
	Secondary    *signedPoseParentFile `json:"secondary,omitempty"`
	Operators    []poser.Operator      `json:"operators,omitempty"`
	MaxProposals int                   `json:"max_proposals,omitempty"`
	GeneratedAt  time.Time             `json:"generated_at"`
}

type signedPoseParentFile struct {
	CaseID          string `json:"case_id"`
	DossierSHA256   string `json:"dossier_sha256"`
	SignerID        string `json:"signer_id"`
	CatalogSnapshot string `json:"catalog_snapshot_path"`
	VerifiedProof   string `json:"verified_proof_path"`
	LeanDeclaration string `json:"lean_declaration"`
}

type signedParentEvidenceFlags struct {
	evidenceRoot           *string
	reviewerTrust          *string
	leanReceiptRoot        *string
	formalizerArtifactRoot *string
	m7EvidenceRoot         *string
	m7IdentityTrust        *string
	costLedger             *string
	agentRunLedger         *string
}

func addSignedParentEvidenceFlags(flags *flag.FlagSet) signedParentEvidenceFlags {
	return signedParentEvidenceFlags{
		evidenceRoot:           flags.String("evidence-root", "", "directory containing hash-pinned V3-V7 gate evidence"),
		reviewerTrust:          flags.String("reviewer-trust", "", "host-controlled reviewer-attestation registry for V3/V7"),
		leanReceiptRoot:        flags.String("lean-receipt-root", "", "directory containing execution-bound M4 Lean receipts"),
		formalizerArtifactRoot: flags.String("formalizer-artifact-root", "", "directory containing referenced formalizer candidate artifacts"),
		m7EvidenceRoot:         flags.String("m7-evidence-root", "", "directory containing raw five-tier M7 evidence"),
		m7IdentityTrust:        flags.String("m7-identity-trust", "", "host-controlled registry pinning exact M7 run receipts to independently reviewed principals"),
		costLedger:             flags.String("cost-ledger", "", "append-only M7 cost ledger"),
		agentRunLedger:         flags.String("agent-run-ledger", "", "append-only M7 agent-run receipt ledger"),
	}
}

func flagString(value *string) string {
	if value == nil {
		return ""
	}
	return *value
}

func (values signedParentEvidenceFlags) load() (persistence.DossierEvidencePaths, error) {
	for _, item := range []struct{ name, value string }{
		{name: "--evidence-root", value: flagString(values.evidenceRoot)},
		{name: "--reviewer-trust", value: flagString(values.reviewerTrust)},
		{name: "--lean-receipt-root", value: flagString(values.leanReceiptRoot)},
		{name: "--m7-evidence-root", value: flagString(values.m7EvidenceRoot)},
		{name: "--m7-identity-trust", value: flagString(values.m7IdentityTrust)},
	} {
		if strings.TrimSpace(item.value) == "" {
			return persistence.DossierEvidencePaths{}, fmt.Errorf("signed parent M8 evidence requires %s", item.name)
		}
	}
	costLedger := flagString(values.costLedger)
	agentRunLedger := flagString(values.agentRunLedger)
	if strings.TrimSpace(costLedger) == "" && strings.TrimSpace(agentRunLedger) == "" {
		return persistence.DossierEvidencePaths{}, errors.New("signed parent M8 evidence requires --cost-ledger or --agent-run-ledger")
	}
	evidenceRoot := flagString(values.evidenceRoot)
	verifier, _, err := loadReviewerVerifier(flagString(values.reviewerTrust), evidenceRoot)
	if err != nil {
		return persistence.DossierEvidencePaths{}, fmt.Errorf("load signed-parent reviewer trust: %w", err)
	}
	m7IdentityTrust, err := loadOptionalM7IdentityTrustRegistry(flagString(values.m7IdentityTrust))
	if err != nil {
		return persistence.DossierEvidencePaths{}, fmt.Errorf("load signed-parent M7 identity trust: %w", err)
	}
	return persistence.DossierEvidencePaths{
		GateEvidenceRoot:        evidenceRoot,
		LeanReceiptRoot:         flagString(values.leanReceiptRoot),
		FormalizerArtifactRoot:  flagString(values.formalizerArtifactRoot),
		M7EvidenceRoot:          flagString(values.m7EvidenceRoot),
		M7IdentityTrustRegistry: m7IdentityTrust,
		CostLedgerPath:          costLedger,
		AgentRunLedgerPath:      agentRunLedger,
		ReviewerVerifier:        verifier,
	}, nil
}

type trustedSignerKeyringFile struct {
	SchemaVersion string                 `json:"schema_version"`
	Signers       []trustedSignerKeyFile `json:"signers"`
}

type trustedSignerKeyFile struct {
	SignerID        string `json:"signer_id"`
	PublicKeyBase64 string `json:"public_key_base64"`
}

func loadPoseRequest(path string) (poseRequestFile, error) {
	data, err := readRegularInput(path, "poser request", maxProblemFileBytes)
	if err != nil {
		return poseRequestFile{}, err
	}
	var request poseRequestFile
	if err := decodeStrictJSON(data, &request, "poser request"); err != nil {
		return poseRequestFile{}, err
	}
	return request, nil
}

func loadTrustedSigners(path string) (map[string]ed25519.PublicKey, error) {
	data, err := readRegularInput(path, "trusted signer key file", maxSignerKeyFile)
	if err != nil {
		return nil, err
	}
	var keyring trustedSignerKeyringFile
	if err := decodeStrictJSON(data, &keyring, "trusted signer key file"); err != nil {
		return nil, err
	}
	if keyring.SchemaVersion != "mathcase-trusted-signers-v1" {
		return nil, fmt.Errorf("trusted signer key file: unsupported schema %q", keyring.SchemaVersion)
	}
	if len(keyring.Signers) == 0 || len(keyring.Signers) > maxTrustedSigners {
		return nil, fmt.Errorf("trusted signer key file: expected 1-%d signers", maxTrustedSigners)
	}
	keys := make(map[string]ed25519.PublicKey, len(keyring.Signers))
	for _, signer := range keyring.Signers {
		if err := state.ValidateIdentifier("trusted signer ID", signer.SignerID); err != nil {
			return nil, err
		}
		if _, exists := keys[signer.SignerID]; exists {
			return nil, fmt.Errorf("trusted signer key file: duplicate signer %q", signer.SignerID)
		}
		key, err := base64.StdEncoding.DecodeString(signer.PublicKeyBase64)
		if err != nil || len(key) != ed25519.PublicKeySize {
			return nil, fmt.Errorf("trusted signer key file: signer %q has an invalid Ed25519 public key", signer.SignerID)
		}
		keys[signer.SignerID] = append(ed25519.PublicKey(nil), key...)
	}
	return keys, nil
}

func openDossierStore(root string) (*persistence.DossierStore, error) {
	info, err := os.Lstat(root)
	if err != nil {
		return nil, fmt.Errorf("inspect dossier root: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return nil, errors.New("dossier root must be an existing regular directory")
	}
	return persistence.NewDossierStore(root)
}

func loadSignedPoseParent(ctx context.Context, store *persistence.DossierStore, trusted map[string]ed25519.PublicKey, evidencePaths persistence.DossierEvidencePaths, request signedPoseParentFile) (poser.VerifiedTheorem, error) {
	reference, err := loadSignedPoseParentReference(request)
	if err != nil {
		return poser.VerifiedTheorem{}, err
	}
	return (application.SignedPoseParentLoader{Dossiers: store, TrustedSigners: trusted, EvidencePaths: evidencePaths}).Load(ctx, reference)
}

func loadSignedPoseParentReference(request signedPoseParentFile) (application.SignedPoseParentReference, error) {
	for _, item := range []struct{ name, value string }{
		{name: "case ID", value: request.CaseID},
		{name: "dossier SHA-256", value: request.DossierSHA256},
		{name: "signer ID", value: request.SignerID},
		{name: "catalog snapshot path", value: request.CatalogSnapshot},
		{name: "verified proof path", value: request.VerifiedProof},
		{name: "Lean declaration", value: request.LeanDeclaration},
	} {
		if strings.TrimSpace(item.value) == "" {
			return application.SignedPoseParentReference{}, fmt.Errorf("signed parent: %s is required", item.name)
		}
	}
	snapshot, err := loadCatalogSnapshot(request.CatalogSnapshot)
	if err != nil {
		return application.SignedPoseParentReference{}, err
	}
	proof, err := loadVerifiedProof(request.VerifiedProof)
	if err != nil {
		return application.SignedPoseParentReference{}, err
	}
	return application.SignedPoseParentReference{
		CaseID: request.CaseID, DossierSHA256: request.DossierSHA256, SignerID: request.SignerID,
		CatalogSnapshotPath: request.CatalogSnapshot, Catalog: snapshot,
		LeanDeclaration: request.LeanDeclaration, VerifiedProof: proof,
	}, nil
}

func loadSignedPoseParentReferences(request poseRequestFile) ([]application.SignedPoseParentReference, error) {
	references := make([]application.SignedPoseParentReference, 0, 2)
	primary, err := loadSignedPoseParentReference(request.Primary)
	if err != nil {
		return nil, fmt.Errorf("load primary signed parent reference: %w", err)
	}
	references = append(references, primary)
	if request.Secondary != nil {
		secondary, err := loadSignedPoseParentReference(*request.Secondary)
		if err != nil {
			return nil, fmt.Errorf("load secondary signed parent reference: %w", err)
		}
		references = append(references, secondary)
	}
	return references, nil
}

func loadCatalogSnapshot(path string) (catalog.Snapshot, error) {
	data, err := readRegularInput(path, "catalog snapshot", maxCatalogSnapshotFile)
	if err != nil {
		return catalog.Snapshot{}, err
	}
	var snapshot catalog.Snapshot
	if err := decodeStrictJSON(data, &snapshot, "catalog snapshot"); err != nil {
		return catalog.Snapshot{}, err
	}
	if err := snapshot.Validate(); err != nil {
		return catalog.Snapshot{}, fmt.Errorf("catalog snapshot: %w", err)
	}
	return snapshot, nil
}

func loadVerifiedProof(path string) (string, error) {
	data, err := readRegularInput(path, "verified proof", maxPoseProofBytes)
	if err != nil {
		return "", err
	}
	if strings.TrimSpace(string(data)) == "" {
		return "", errors.New("verified proof file is empty")
	}
	return string(data), nil
}

func readRegularInput(path, label string, maximum int64) ([]byte, error) {
	info, err := os.Lstat(path)
	if err != nil {
		return nil, fmt.Errorf("%s: inspect file: %w", label, err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() || info.Size() > maximum {
		return nil, fmt.Errorf("%s must be a regular non-symlink file no larger than %d bytes", label, maximum)
	}
	file, err := os.Open(path)
	if err != nil {
		return nil, fmt.Errorf("%s: open file: %w", label, err)
	}
	defer file.Close()
	data, err := io.ReadAll(io.LimitReader(file, maximum+1))
	if err != nil {
		return nil, fmt.Errorf("%s: read file: %w", label, err)
	}
	if len(data) == 0 || int64(len(data)) > maximum {
		return nil, fmt.Errorf("%s is empty or exceeds %d bytes", label, maximum)
	}
	return data, nil
}

func decodeStrictJSON(data []byte, target any, label string) error {
	if err := rejectDuplicateJSONKeys(data); err != nil {
		return fmt.Errorf("decode %s JSON: %w", label, err)
	}
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(target); err != nil {
		return fmt.Errorf("decode %s JSON: %w", label, err)
	}
	if err := decoder.Decode(new(any)); !errors.Is(err, io.EOF) {
		return fmt.Errorf("%s contains trailing JSON", label)
	}
	return nil
}

const maxStrictJSONNesting = 128

// rejectDuplicateJSONKeys walks the JSON token stream before decoding into a
// typed value. encoding/json otherwise accepts repeated object keys and keeps
// the last value, which makes signed or reviewed inputs ambiguous.
func rejectDuplicateJSONKeys(data []byte) error {
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.UseNumber()
	if err := walkStrictJSONValue(decoder, 0); err != nil {
		return err
	}
	if _, err := decoder.Token(); !errors.Is(err, io.EOF) {
		return errors.New("contains trailing JSON")
	}
	return nil
}

func walkStrictJSONValue(decoder *json.Decoder, depth int) error {
	if depth > maxStrictJSONNesting {
		return fmt.Errorf("JSON nesting exceeds maximum depth %d", maxStrictJSONNesting)
	}
	token, err := decoder.Token()
	if err != nil {
		return err
	}
	delim, isDelim := token.(json.Delim)
	if !isDelim {
		return nil
	}
	switch delim {
	case '{':
		seen := make(map[string]struct{})
		for decoder.More() {
			keyToken, err := decoder.Token()
			if err != nil {
				return err
			}
			key, ok := keyToken.(string)
			if !ok {
				return errors.New("object member name is not a string")
			}
			if _, exists := seen[key]; exists {
				return fmt.Errorf("duplicate object key %q", key)
			}
			seen[key] = struct{}{}
			if err := walkStrictJSONValue(decoder, depth+1); err != nil {
				return err
			}
		}
		end, err := decoder.Token()
		if err != nil {
			return err
		}
		if end != json.Delim('}') {
			return errors.New("malformed JSON object")
		}
	case '[':
		for decoder.More() {
			if err := walkStrictJSONValue(decoder, depth+1); err != nil {
				return err
			}
		}
		end, err := decoder.Token()
		if err != nil {
			return err
		}
		if end != json.Delim(']') {
			return errors.New("malformed JSON array")
		}
	default:
		return errors.New("unexpected JSON delimiter")
	}
	return nil
}
