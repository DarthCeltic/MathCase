package gateaudit

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

// PersistReceipt writes one typed V3-V7 receipt without replacing existing
// evidence, then reopens the exact bytes through Read. A returned result is
// therefore reader-qualified; an error after the write leaves the failed
// draft in place for audit and never creates an M8 PASS by itself.
//
// This function records evidence supplied by its caller. It does not execute a
// reviewer, solver, search, rights check, or leakage audit, and it does not
// authenticate the issuer of any process receipt.
func PersistReceipt(
	root string,
	receipt any,
	dossier domain.Dossier,
	record domain.VerificationRecord,
	verifyReviewer ReviewerIdentityVerifier,
) (Result, error) {
	header, gate, err := receiptHeader(receipt)
	if err != nil {
		return Result{}, err
	}
	if record.Gate != gate {
		return Result{}, fmt.Errorf("typed %s receipt cannot be persisted for %s assessment", gate, record.Gate)
	}
	if header.Gate != gate {
		return Result{}, fmt.Errorf("typed %s receipt header names gate %s", gate, header.Gate)
	}
	if !safeReceiptID(header.EvidenceID) {
		return Result{}, errors.New("typed gate receipt evidence ID must be a safe path-free identifier")
	}
	data, err := json.MarshalIndent(receipt, "", "  ")
	if err != nil {
		return Result{}, fmt.Errorf("encode typed %s receipt: %w", gate, err)
	}
	data = append(data, '\n')
	if len(data) == 0 || len(data) > maxReceiptBytes {
		return Result{}, fmt.Errorf("typed %s receipt is empty or exceeds the size limit", gate)
	}
	sum := sha256.Sum256(data)
	digest := hex.EncodeToString(sum[:])
	result := Result{EvidenceID: header.EvidenceID, SHA256: digest}

	rootInfo, err := os.Lstat(root)
	if err != nil || rootInfo.Mode()&os.ModeSymlink != 0 || !rootInfo.IsDir() {
		return Result{}, errors.New("gate evidence root must be a regular non-symlink directory")
	}
	path := filepath.Join(root, header.EvidenceID+".gate.json")
	file, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o600)
	if err != nil {
		return Result{}, fmt.Errorf("create immutable typed gate receipt %q: %w", header.EvidenceID, err)
	}
	written, writeErr := file.Write(data)
	syncErr := file.Sync()
	closeErr := file.Close()
	if writeErr != nil || written != len(data) || syncErr != nil || closeErr != nil {
		return result, fmt.Errorf("write typed gate receipt %q (bytes retained for audit): %w", header.EvidenceID,
			errors.Join(writeErr, syncErr, closeErr, shortWriteError(written, len(data))))
	}
	readResult, err := Read(root, header.EvidenceID, digest, dossier, record, verifyReviewer)
	if err != nil {
		return result, fmt.Errorf("typed gate receipt %q was persisted but its reader refused it; bytes retained for audit: %w", header.EvidenceID, err)
	}
	return readResult, nil
}

func receiptHeader(receipt any) (Header, domain.VerificationGate, error) {
	switch value := receipt.(type) {
	case V3Receipt:
		return value.Header, domain.GateStatementFidelity, nil
	case *V3Receipt:
		if value != nil {
			return value.Header, domain.GateStatementFidelity, nil
		}
	case V4Receipt:
		return value.Header, domain.GateFalsification, nil
	case *V4Receipt:
		if value != nil {
			return value.Header, domain.GateFalsification, nil
		}
	case V5Receipt:
		return value.Header, domain.GateEssentiality, nil
	case *V5Receipt:
		if value != nil {
			return value.Header, domain.GateEssentiality, nil
		}
	case V6Receipt:
		return value.Header, domain.GateProvenanceLeakage, nil
	case *V6Receipt:
		if value != nil {
			return value.Header, domain.GateProvenanceLeakage, nil
		}
	case V7Receipt:
		return value.Header, domain.GateLiteratureAndStatus, nil
	case *V7Receipt:
		if value != nil {
			return value.Header, domain.GateLiteratureAndStatus, nil
		}
	}
	return Header{}, "", errors.New("receipt must be a non-nil typed V3, V4, V5, V6, or V7 receipt")
}

func safeReceiptID(value string) bool {
	return value != "" && strings.TrimSpace(value) == value && safeRelative(value) &&
		filepath.Base(value) == value && !strings.ContainsAny(value, `/\\:`)
}

func shortWriteError(written, expected int) error {
	if written == expected {
		return nil
	}
	return fmt.Errorf("short write: wrote %d of %d bytes", written, expected)
}
