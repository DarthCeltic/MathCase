package main

import (
	"bytes"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestDossierReviseFormalizerCandidateRefusesMissingStoreWithoutWritingRevision(t *testing.T) {
	dossier := minimalDossierForCLI()
	dossier.Case.Version = 1
	dossierPath := filepath.Join(t.TempDir(), "dossier.json")
	dossierBytes, err := json.Marshal(dossier)
	if err != nil {
		t.Fatalf("Marshal(dossier) error = %v", err)
	}
	if err := os.WriteFile(dossierPath, dossierBytes, 0o600); err != nil {
		t.Fatalf("WriteFile(dossier) error = %v", err)
	}
	storeRoot := filepath.Join(t.TempDir(), "formalizer-store-must-not-be-created")
	outputPath := filepath.Join(filepath.Dir(dossierPath), "dossier-revision-v2.json")
	var stdout, stderr bytes.Buffer
	code := run([]string{
		"dossier-revise-formalizer-candidate", "--dossier", dossierPath,
		"--formalizer-artifact-root", storeRoot,
		"--artifact-sha256", strings.Repeat("a", 64), "--output", outputPath,
	}, &stdout, &stderr)
	if code != 2 || stdout.Len() != 0 || !strings.Contains(stderr.String(), "inspect artifact store root") {
		t.Fatalf("dossier-revise-formalizer-candidate exit=%d stdout=%q stderr=%q; want missing-store refusal", code, stdout.String(), stderr.String())
	}
	if _, err := os.Lstat(outputPath); !os.IsNotExist(err) {
		t.Fatalf("missing candidate artifact created a dossier revision; Lstat error = %v", err)
	}
	if _, err := os.Lstat(storeRoot); !os.IsNotExist(err) {
		t.Fatalf("candidate revision command created a missing artifact store; Lstat error = %v", err)
	}
	unchanged, err := os.ReadFile(dossierPath)
	if err != nil {
		t.Fatalf("ReadFile(dossier) after refusal: %v", err)
	}
	if !bytes.Equal(unchanged, dossierBytes) {
		t.Fatal("missing artifact refusal modified the predecessor dossier")
	}
}
