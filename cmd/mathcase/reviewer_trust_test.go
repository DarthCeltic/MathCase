package main

import (
	"bytes"
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestReviewerTrustCLIRejectsMalformedRegistryBeforeReadingInputs(t *testing.T) {
	t.Parallel()
	trustPath := filepath.Join(t.TempDir(), "reviewer-trust.json")
	if err := os.WriteFile(trustPath, []byte(`{"schema_version":"wrong","entries":[]}`), 0o600); err != nil {
		t.Fatal(err)
	}
	for _, args := range [][]string{
		{"gate-assess", "--dossier", "missing-dossier.json", "--assessment", "missing-assessment.json", "--evidence-root", t.TempDir(), "--output", filepath.Join(t.TempDir(), "out.json"), "--reviewer-trust", trustPath},
		{"dossier-audit", "--dossier", "missing-dossier.json", "--reviewer-trust", trustPath},
	} {
		var stdout, stderr bytes.Buffer
		if code := run(args, &stdout, &stderr); code != 2 {
			t.Errorf("run(%v) exit = %d, want invalid configuration exit 2; stderr=%q", args, code, stderr.String())
		}
		if stdout.Len() != 0 || !strings.Contains(stderr.String(), "load reviewer trust registry") {
			t.Errorf("run(%v) stdout=%q stderr=%q, want trusted-registry refusal before input use", args, stdout.String(), stderr.String())
		}
	}
}

func TestLoadReviewerVerifierRequiresEvidenceRootWhenConfigured(t *testing.T) {
	if _, _, err := loadReviewerVerifier("trust.json", ""); err == nil || !strings.Contains(err.Error(), "evidence root is required") {
		t.Fatalf("loadReviewerVerifier() error = %v, want missing evidence-root refusal", err)
	}
}
