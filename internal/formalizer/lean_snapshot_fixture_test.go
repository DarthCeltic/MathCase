package formalizer

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/solver"
)

type formalizerSnapshotFixture struct {
	manifest       solver.LeanSnapshotManifest
	manifestPath   string
	manifestSHA256 string
}

func newFormalizerSnapshot(t testing.TB) formalizerSnapshotFixture {
	t.Helper()
	root := t.TempDir()
	projectRoot := filepath.Join(root, "project")
	files := map[string]string{
		"lean-toolchain":         "leanprover/lean4:v4.33.1\n",
		"lakefile.toml":          "name = \"formalizer-fixture\"\n",
		"lake-manifest.json":     "{\"packagesDir\":\".lake/packages\",\"packages\":[]}\n",
		"MathCaseStatement.lean": "import Init\n#check True\n",
		filepath.Join(".lake", "build", "lib", "lean", "MathCaseStatement.olean"): "synthetic compiled artifact; no Lean run\n",
	}
	for name, content := range files {
		path := filepath.Join(projectRoot, name)
		if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(path, []byte(content), 0o600); err != nil {
			t.Fatal(err)
		}
	}
	sourceSnapshot, sourceEntries, err := solver.BuildLeanSnapshotInventory(projectRoot, false)
	if err != nil {
		t.Fatal(err)
	}
	projectSnapshot, projectEntries, err := solver.BuildLeanSnapshotInventory(projectRoot, true)
	if err != nil {
		t.Fatal(err)
	}
	sourceManifestPath := filepath.Join(root, "source-inventory.jsonl")
	sourceManifestSHA, err := solver.WriteLeanSnapshotInventory(sourceManifestPath, sourceSnapshot, sourceEntries)
	if err != nil {
		t.Fatal(err)
	}
	inventoryPath := filepath.Join(root, "compiled-inventory.jsonl")
	inventorySHA, err := solver.WriteLeanSnapshotInventory(inventoryPath, projectSnapshot, projectEntries)
	if err != nil {
		t.Fatal(err)
	}
	image := "sha256:" + strings.Repeat("a", 64)
	baseImage := "sha256:" + strings.Repeat("b", 64)
	gitToolImage := "sha256:" + strings.Repeat("c", 64)
	recipeSHA := testDigestText("formalizer synthetic snapshot recipe")
	projectSnapshot.SourceManifestSHA256 = sourceManifestSHA
	projectSnapshot.InventorySHA256 = inventorySHA
	projectSnapshot.ImageDigest = image
	started := time.Date(2026, time.October, 20, 18, 59, 0, 0, time.UTC)
	stdoutPath := filepath.Join(root, "build.stdout.log")
	stderrPath := filepath.Join(root, "build.stderr.log")
	preBuildPath := filepath.Join(root, "pre-build-summary.json")
	for _, path := range []string{stdoutPath, stderrPath} {
		if err := os.WriteFile(path, nil, 0o600); err != nil {
			t.Fatal(err)
		}
	}
	preBuildBytes, err := json.Marshal(struct {
		SchemaVersion                    string                     `json:"schema_version"`
		ProjectBuildArtifactFileCount    int64                      `json:"project_build_artifact_file_count"`
		DependencyBuildArtifactFileCount int64                      `json:"dependency_build_artifact_file_count"`
		ProjectSnapshot                  solver.LeanProjectSnapshot `json:"project_snapshot"`
	}{SchemaVersion: solver.LeanSnapshotInventorySchemaVersion, ProjectSnapshot: sourceSnapshot})
	if err != nil {
		t.Fatal(err)
	}
	preBuildBytes = append(preBuildBytes, '\n')
	if err := os.WriteFile(preBuildPath, preBuildBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	buildReceipt := solver.LeanSnapshotBuildReceipt{
		SchemaVersion:                   "mathcase-lean-snapshot-build-v1",
		RunID:                           "formalizer-fixture-run",
		StartedAtUTC:                    started,
		FinishedAtUTC:                   started.Add(time.Minute),
		DockerExecutable:                "docker",
		DockerVersion:                   "29.6.2",
		SourceManifestSHA256:            sourceManifestSHA,
		SourceSnapshot:                  sourceSnapshot,
		RecipeSHA256:                    recipeSHA,
		BaseImageDigest:                 baseImage,
		GitToolImageDigest:              gitToolImage,
		ImageDigest:                     image,
		Toolchain:                       "leanprover/lean4:v4.33.1",
		BuildTarget:                     "formalizer-fixture",
		BuildArguments:                  []string{"docker", "build", "--network=none", "formalizer-fixture"},
		BuildStdoutPath:                 stdoutPath,
		BuildStderrPath:                 stderrPath,
		BuildStdoutSHA256:               testDigestText(""),
		BuildStderrSHA256:               testDigestText(""),
		BuildExitCode:                   0,
		PreBuildSummaryPath:             preBuildPath,
		PreBuildSummarySHA256:           testDigestText(string(preBuildBytes)),
		NetworkDisabled:                 true,
		PreBuildProjectArtifactCount:    0,
		PreBuildDependencyArtifactCount: 0,
		PostBuildProjectSnapshot:        projectSnapshot,
	}
	buildBytes, err := json.Marshal(buildReceipt)
	if err != nil {
		t.Fatal(err)
	}
	buildReceiptPath := filepath.Join(root, "build-receipt.json")
	if err := os.WriteFile(buildReceiptPath, append(buildBytes, '\n'), 0o600); err != nil {
		t.Fatal(err)
	}
	buildReceiptBytes, err := os.ReadFile(buildReceiptPath)
	if err != nil {
		t.Fatal(err)
	}
	buildReceiptSHA := testDigestText(string(buildReceiptBytes))
	manifest := solver.LeanSnapshotManifest{
		SchemaVersion:                   solver.LeanSnapshotManifestSchemaVersion,
		SourceManifestPath:              sourceManifestPath,
		SourceManifestSHA256:            sourceManifestSHA,
		SourceSnapshot:                  sourceSnapshot,
		InventoryPath:                   inventoryPath,
		InventorySHA256:                 inventorySHA,
		BuildReceiptPath:                buildReceiptPath,
		BuildReceiptSHA256:              buildReceiptSHA,
		RecipeSHA256:                    recipeSHA,
		BaseImageDigest:                 baseImage,
		GitToolImageDigest:              gitToolImage,
		ImageDigest:                     image,
		Toolchain:                       "leanprover/lean4:v4.33.1",
		BuildTarget:                     "formalizer-fixture",
		AllowedImports:                  []string{"Init"},
		ModuleSearchPath:                []string{"/mathcase/project/.lake/build/lib/lean"},
		ProjectSnapshot:                 projectSnapshot,
		CleanBuild:                      true,
		NetworkDisabled:                 true,
		PreBuildProjectArtifactCount:    0,
		PreBuildDependencyArtifactCount: 0,
	}
	manifest.SnapshotID = solver.ComputeLeanSnapshotID(sourceManifestSHA, buildReceiptSHA, image, projectSnapshot.SHA256)
	manifestPath := filepath.Join(root, "snapshot-manifest.json")
	manifestBytes, err := json.MarshalIndent(manifest, "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	manifestBytes = append(manifestBytes, '\n')
	if err := os.WriteFile(manifestPath, manifestBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	digest := sha256.Sum256(manifestBytes)
	return formalizerSnapshotFixture{manifest: manifest, manifestPath: manifestPath, manifestSHA256: hex.EncodeToString(digest[:])}
}

func snapshotImageCheck(manifest solver.LeanSnapshotManifest) solver.LeanSnapshotImageCheck {
	return solver.LeanSnapshotImageCheck{
		Image: manifest.ImageDigest, ImageID: manifest.ImageDigest,
		Labels: map[string]string{
			"org.mathcase.snapshot.source-manifest-sha256": manifest.SourceManifestSHA256,
			"org.mathcase.snapshot.source-root-sha256":     manifest.SourceSnapshot.SHA256,
			"org.mathcase.snapshot.recipe-sha256":          manifest.RecipeSHA256,
			"org.mathcase.snapshot.base-image-id":          manifest.BaseImageDigest,
			"org.mathcase.snapshot.git-tool-image-id":      manifest.GitToolImageDigest,
			"org.mathcase.snapshot.build-target":           manifest.BuildTarget,
		},
		StdoutSHA256: testDigestText("[]"), StartedAtUTC: time.Date(2026, time.October, 20, 18, 58, 0, 0, time.UTC),
		FinishedAtUTC: time.Date(2026, time.October, 20, 18, 58, 1, 0, time.UTC), ExitCode: 0,
	}
}
