package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"testing"
)

func TestDossierStorePersistsValidatedIncompleteSnapshot(t *testing.T) {
	root := t.TempDir()
	dossierPath := filepath.Join(root, "dossier.json")
	storeRoot := filepath.Join(root, "store")
	writeDossierStoreTestInput(t, dossierPath, minimalDossierForCLI())

	var stdout, stderr bytes.Buffer
	if code := run([]string{"dossier-store", "--dossier", dossierPath, "--store-root", storeRoot}, &stdout, &stderr); code != 0 {
		t.Fatalf("dossier-store exit=%d stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
	var receipt dossierStoreOutput
	if err := json.Unmarshal(stdout.Bytes(), &receipt); err != nil {
		t.Fatalf("decode store receipt %q: %v", stdout.String(), err)
	}
	if receipt.SchemaVersion != "mathcase-dossier-store-receipt-v1" || receipt.Status != "STORED_IMMUTABLY" || receipt.CaseID != "case-draft" {
		t.Fatalf("store receipt = %#v", receipt)
	}
	storedPath := filepath.Join(storeRoot, filepath.FromSlash(receipt.RelativePath))
	stored, err := os.ReadFile(storedPath)
	if err != nil {
		t.Fatalf("read stored dossier: %v", err)
	}
	digest := sha256.Sum256(stored)
	if hex.EncodeToString(digest[:]) != receipt.ContentSHA256 || int64(len(stored)) != receipt.Size {
		t.Fatalf("stored dossier bytes do not match receipt: %#v", receipt)
	}

	stdout.Reset()
	stderr.Reset()
	if code := run([]string{"dossier-store", "--dossier", dossierPath, "--store-root", storeRoot}, &stdout, &stderr); code != 0 {
		t.Fatalf("idempotent dossier-store exit=%d stderr=%q", code, stderr.String())
	}
	if stdout.String() == "" {
		t.Fatal("idempotent dossier-store did not emit its content-addressed receipt")
	}
}

func TestDossierStoreRefusesInvalidDossierWithoutPersisting(t *testing.T) {
	root := t.TempDir()
	dossierPath := filepath.Join(root, "invalid.json")
	dossier := minimalDossierForCLI()
	dossier.Case.ID = "../outside"
	writeDossierStoreTestInput(t, dossierPath, dossier)
	storeRoot := filepath.Join(root, "store")
	var stdout, stderr bytes.Buffer
	if code := run([]string{"dossier-store", "--dossier", dossierPath, "--store-root", storeRoot}, &stdout, &stderr); code == 0 {
		t.Fatal("dossier-store accepted invalid case identity")
	}
	if stdout.Len() != 0 {
		t.Fatalf("invalid dossier produced receipt %q", stdout.String())
	}
	if _, err := os.Stat(filepath.Join(storeRoot, "cases")); !os.IsNotExist(err) {
		t.Fatalf("invalid dossier created case storage, stat error=%v", err)
	}
}

func writeDossierStoreTestInput(t *testing.T, path string, value any) {
	t.Helper()
	data, err := json.Marshal(value)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(path, data, 0o600); err != nil {
		t.Fatal(err)
	}
}
