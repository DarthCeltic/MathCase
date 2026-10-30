package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/telescope"
)

func writeTelescopeFeatures(t *testing.T, path, snapshotSHA, sourceSHA string) string {
	t.Helper()
	evidenceRoot := filepath.Join(filepath.Dir(path), "telescope-evidence")
	if err := os.MkdirAll(evidenceRoot, 0o700); err != nil {
		t.Fatal(err)
	}
	writeEvidence := func(id string, kind telescope.FeatureEvidenceKind, techniqueID string, value float64) telescope.FeatureEvidenceRef {
		t.Helper()
		record := telescope.FeatureEvidenceRecord{
			SchemaVersion:         telescope.FeatureEvidenceSchemaVersion,
			EvidenceID:            id,
			ProblemID:             "problem-open",
			Kind:                  kind,
			TechniqueID:           techniqueID,
			Value:                 value,
			CatalogSnapshotSHA256: snapshotSHA,
			Sources:               []telescope.FeatureEvidenceSource{{SourceID: "source-proof", SourceSHA256: sourceSHA}},
			Method:                "fixture annotation",
			Rationale:             "A source-linked fixture observation.",
		}
		data, err := json.Marshal(record)
		if err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(filepath.Join(evidenceRoot, id+".json"), data, 0o600); err != nil {
			t.Fatal(err)
		}
		digest := sha256.Sum256(data)
		return telescope.FeatureEvidenceRef{EvidenceID: id, ArtifactSHA256: hex.EncodeToString(digest[:])}
	}
	request := telescopeFeaturesFile{
		SchemaVersion: "mathcase-telescope-features-v1",
		Features: []telescope.Features{{
			ProblemID: "problem-open", SourceIDs: []string{"source-proof"},
			TasteScore:       0.5,
			TasteEvidence:    writeEvidence("taste-open", telescope.FeatureEvidenceTaste, "", 0.5),
			BoundaryTension:  0.8,
			BoundaryEvidence: writeEvidence("boundary-open", telescope.FeatureEvidenceBoundaryTension, "", 0.8),
			TechniqueCompatibilities: []telescope.TechniqueCompatibilityFeature{{
				TechniqueID: "technique-a", Score: 0.7,
				Evidence: writeEvidence("technique-open", telescope.FeatureEvidenceTechniqueCompatibility, "technique-a", 0.7),
			}},
			SourceSnapshotSHA256: snapshotSHA, Rationale: "Recorded candidate features support this allocation.",
		}},
	}
	data, err := json.Marshal(request)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(path, data, 0o600); err != nil {
		t.Fatal(err)
	}
	return evidenceRoot
}

func TestTelescopeRankWritesCatalogBoundFormulaResults(t *testing.T) {
	snapshotPath, _, _, outputPath, snapshot := writeRetrievalFixture(t, []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseIndex})
	featuresPath := filepath.Join(filepath.Dir(outputPath), "telescope.features.json")
	evidenceRoot := writeTelescopeFeatures(t, featuresPath, snapshot.ContentSHA256, snapshot.Sources[0].ContentSHA256)
	args := []string{"telescope-rank", "--snapshot", snapshotPath, "--features", featuresPath, "--evidence-root", evidenceRoot, "--output", outputPath}
	var stdout, stderr bytes.Buffer
	if code := run(args, &stdout, &stderr); code != 0 {
		t.Fatalf("telescope-rank exit code = %d, stderr=%q", code, stderr.String())
	}
	var output telescopeRankOutput
	if err := json.Unmarshal(stdout.Bytes(), &output); err != nil {
		t.Fatalf("decode telescope-rank output %q: %v", stdout.String(), err)
	}
	if output.SchemaVersion != "mathcase-telescope-rank-v1" || output.Status != "COMPLETED" || output.CatalogSnapshotSHA256 != snapshot.ContentSHA256 || output.FormulaVersion != telescope.FormulaVersion || output.ResultCount != 1 || len(output.Results) != 1 || output.Results[0].Features.ProblemID != "problem-open" {
		t.Fatalf("telescope-rank output = %#v, want one versioned catalog-bound result", output)
	}
	written, err := os.ReadFile(outputPath)
	if err != nil {
		t.Fatal(err)
	}
	if !bytes.Equal(written, stdout.Bytes()) {
		t.Fatal("telescope-rank stdout and persisted result differ")
	}
	stdout.Reset()
	stderr.Reset()
	if code := run(args, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("telescope-rank overwrite exit=%d stdout=%q stderr=%q; want no-overwrite refusal", code, stdout.String(), stderr.String())
	}
}

func TestTelescopeRankRefusesUnindexedSourcesAndUnknownFields(t *testing.T) {
	snapshotPath, _, _, outputPath, snapshot := writeRetrievalFixture(t, []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseReference})
	featuresPath := filepath.Join(filepath.Dir(outputPath), "telescope.features.json")
	evidenceRoot := writeTelescopeFeatures(t, featuresPath, snapshot.ContentSHA256, snapshot.Sources[0].ContentSHA256)
	args := []string{"telescope-rank", "--snapshot", snapshotPath, "--features", featuresPath, "--evidence-root", evidenceRoot, "--output", outputPath}
	var stdout, stderr bytes.Buffer
	if code := run(args, &stdout, &stderr); code != 2 || stdout.Len() != 0 || !strings.Contains(stderr.String(), "not cleared for INDEX use") {
		t.Fatalf("telescope-rank accepted reference-only sources: exit=%d stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
	if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
		t.Fatalf("telescope-rank created output after rights refusal, stat error=%v", err)
	}

	if err := os.WriteFile(featuresPath, []byte(`{"schema_version":"mathcase-telescope-features-v1","unexpected":true}`), 0o600); err != nil {
		t.Fatal(err)
	}
	stdout.Reset()
	stderr.Reset()
	if code := run(args, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("telescope-rank accepted unknown feature fields: exit=%d stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
}

func TestTelescopeRankRefusesEvidenceByteChanges(t *testing.T) {
	snapshotPath, _, _, outputPath, snapshot := writeRetrievalFixture(t, []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseIndex})
	featuresPath := filepath.Join(filepath.Dir(outputPath), "telescope.features.json")
	evidenceRoot := writeTelescopeFeatures(t, featuresPath, snapshot.ContentSHA256, snapshot.Sources[0].ContentSHA256)
	evidencePath := filepath.Join(evidenceRoot, "taste-open.json")
	data, err := os.ReadFile(evidencePath)
	if err != nil {
		t.Fatal(err)
	}
	data = append(data, '\n')
	if err := os.WriteFile(evidencePath, data, 0o600); err != nil {
		t.Fatal(err)
	}
	args := []string{"telescope-rank", "--snapshot", snapshotPath, "--features", featuresPath, "--evidence-root", evidenceRoot, "--output", outputPath}
	var stdout, stderr bytes.Buffer
	if code := run(args, &stdout, &stderr); code != 2 || stdout.Len() != 0 || !strings.Contains(stderr.String(), "does not match its recorded SHA-256") {
		t.Fatalf("telescope-rank accepted changed evidence bytes: exit=%d stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
	if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
		t.Fatalf("telescope-rank created output after evidence hash refusal, stat error=%v", err)
	}
}
