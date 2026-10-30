package main

import (
	"bytes"
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestFormalizerAssessV3CandidateRefusesMissingStoreWithoutWritingReport(t *testing.T) {
	t.Parallel()
	root := t.TempDir()
	storeRoot := filepath.Join(root, "missing-store")
	reviewPath := filepath.Join(root, "review.json")
	outputPath := filepath.Join(root, "candidate-v3.json")
	if err := os.WriteFile(reviewPath, []byte("{}\n"), 0o600); err != nil {
		t.Fatalf("WriteFile(%q) error = %v", reviewPath, err)
	}
	var stdout, stderr bytes.Buffer
	code := run([]string{
		"formalizer-assess-v3-candidate",
		"--formalizer-artifact-root", storeRoot,
		"--artifact-sha256", strings.Repeat("a", 64),
		"--review", reviewPath,
		"--output", outputPath,
	}, &stdout, &stderr)
	if code != 2 || stdout.Len() != 0 || !strings.Contains(stderr.String(), "resolve existing formalizer artifact root") {
		t.Fatalf("formalizer-assess-v3-candidate(missing store) = (%d, %q, %q), want read-only store refusal", code, stdout.String(), stderr.String())
	}
	if _, err := os.Lstat(outputPath); !os.IsNotExist(err) {
		t.Errorf("formalizer-assess-v3-candidate(missing store) created report: Lstat error = %v, want absent", err)
	}
	if _, err := os.Lstat(storeRoot); !os.IsNotExist(err) {
		t.Errorf("formalizer-assess-v3-candidate(missing store) created store: Lstat error = %v, want absent", err)
	}
}

func TestFormalizerAssessV3CandidateRefusesReportInsideImmutableStore(t *testing.T) {
	t.Parallel()
	root := t.TempDir()
	storeRoot := filepath.Join(root, "formalizer-store")
	outputPath := filepath.Join(storeRoot, "candidate-v3.json")
	if err := os.Mkdir(storeRoot, 0o700); err != nil {
		t.Fatalf("Mkdir(%q) error = %v", storeRoot, err)
	}
	reviewPath := filepath.Join(root, "review.json")
	if err := os.WriteFile(reviewPath, []byte("{}\n"), 0o600); err != nil {
		t.Fatalf("WriteFile(%q) error = %v", reviewPath, err)
	}
	var stdout, stderr bytes.Buffer
	code := run([]string{
		"formalizer-assess-v3-candidate",
		"--formalizer-artifact-root", storeRoot,
		"--artifact-sha256", strings.Repeat("a", 64),
		"--review", reviewPath,
		"--output", outputPath,
	}, &stdout, &stderr)
	if code != 2 || stdout.Len() != 0 || !strings.Contains(stderr.String(), "outside the immutable formalizer artifact store") {
		t.Fatalf("formalizer-assess-v3-candidate(report inside store) = (%d, %q, %q), want refusal before writing", code, stdout.String(), stderr.String())
	}
	if _, err := os.Lstat(outputPath); !os.IsNotExist(err) {
		t.Errorf("formalizer-assess-v3-candidate(report inside store) created report: Lstat error = %v, want absent", err)
	}
}

func TestFormalizerAssessV3CandidateRejectsMalformedReviewWithoutWritingReport(t *testing.T) {
	t.Parallel()
	root := t.TempDir()
	storeRoot := filepath.Join(root, "formalizer-store")
	if err := os.Mkdir(storeRoot, 0o700); err != nil {
		t.Fatalf("Mkdir(%q) error = %v", storeRoot, err)
	}
	reviewPath := filepath.Join(root, "review.json")
	if err := os.WriteFile(reviewPath, []byte("{invalid json"), 0o600); err != nil {
		t.Fatalf("WriteFile(%q) error = %v", reviewPath, err)
	}
	outputPath := filepath.Join(root, "candidate-v3.json")
	var stdout, stderr bytes.Buffer
	code := run([]string{
		"formalizer-assess-v3-candidate",
		"--formalizer-artifact-root", storeRoot,
		"--artifact-sha256", strings.Repeat("a", 64),
		"--review", reviewPath,
		"--output", outputPath,
	}, &stdout, &stderr)
	if code != 2 || stdout.Len() != 0 || !strings.Contains(stderr.String(), "decode V3 comparison input") {
		t.Fatalf("formalizer-assess-v3-candidate(malformed review) = (%d, %q, %q), want strict JSON refusal", code, stdout.String(), stderr.String())
	}
	if _, err := os.Lstat(outputPath); !os.IsNotExist(err) {
		t.Errorf("formalizer-assess-v3-candidate(malformed review) created report: Lstat error = %v, want absent", err)
	}
}
