package solver

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"testing"
	"time"
)

type testLeanSnapshot struct {
	Manifest       LeanSnapshotManifest
	ManifestPath   string
	ManifestSHA256 string
	ProjectRoot    string
}

func newTestLeanSnapshot(t *testing.T) testLeanSnapshot {
	t.Helper()
	root := t.TempDir()
	projectRoot := filepath.Join(root, "project")
	for name, contents := range map[string]string{
		"lean-toolchain":     defaultLeanToolchain + "\n",
		"lakefile.toml":      "name = \"fixture\"\n",
		"lake-manifest.json": "{\"packagesDir\":\".lake/packages\",\"packages\":[]}\n",
		"Main.lean":          "import Init\nexample : True := by trivial\n",
		"native_stub.c":      "int mathcase_fixture(void) { return 0; }\n",
		"native_stub.h":      "int mathcase_fixture(void);\n",
		filepath.Join(".lake", "build", "lib", "lean", "Init.olean"): "fixture compiled output",
	} {
		path := filepath.Join(projectRoot, name)
		if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(path, []byte(contents), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	sourceSnapshot, sourceEntries, err := BuildLeanSnapshotInventory(projectRoot, false)
	if err != nil {
		t.Fatalf("BuildLeanSnapshotInventory(source) error = %v", err)
	}
	projectSnapshot, projectEntries, err := BuildLeanSnapshotInventory(projectRoot, true)
	if err != nil {
		t.Fatalf("BuildLeanSnapshotInventory(project) error = %v", err)
	}
	manifestPath := filepath.Join(root, "source-inventory.jsonl")
	sourceManifestSHA, err := WriteLeanSnapshotInventory(manifestPath, sourceSnapshot, sourceEntries)
	if err != nil {
		t.Fatalf("WriteLeanSnapshotInventory(source) error = %v", err)
	}
	inventoryPath := filepath.Join(root, "compiled-inventory.jsonl")
	inventorySHA, err := WriteLeanSnapshotInventory(inventoryPath, projectSnapshot, projectEntries)
	if err != nil {
		t.Fatalf("WriteLeanSnapshotInventory(project) error = %v", err)
	}
	image := "sha256:" + repeatByte('a', 64)
	baseImage := "sha256:" + repeatByte('b', 64)
	gitToolImage := "sha256:" + repeatByte('c', 64)
	recipe := digestHex([]byte("fixture-build-recipe"))
	projectSnapshot.SourceManifestSHA256 = sourceManifestSHA
	projectSnapshot.InventorySHA256 = inventorySHA
	projectSnapshot.ImageDigest = image
	buildStarted := time.Now().UTC().Add(-2 * time.Second)
	buildFinished := buildStarted.Add(time.Second)
	stdoutPath := filepath.Join(root, "build.stdout.log")
	stderrPath := filepath.Join(root, "build.stderr.log")
	preBuildSummaryPath := filepath.Join(root, "pre-build-summary.json")
	for _, path := range []string{stdoutPath, stderrPath} {
		if err := os.WriteFile(path, nil, 0o600); err != nil {
			t.Fatal(err)
		}
	}
	preBuildSummary, err := json.Marshal(struct {
		SchemaVersion                    string              `json:"schema_version"`
		ProjectBuildArtifactFileCount    int64               `json:"project_build_artifact_file_count"`
		DependencyBuildArtifactFileCount int64               `json:"dependency_build_artifact_file_count"`
		ProjectSnapshot                  LeanProjectSnapshot `json:"project_snapshot"`
	}{SchemaVersion: LeanSnapshotInventorySchemaVersion, ProjectSnapshot: sourceSnapshot})
	if err != nil {
		t.Fatal(err)
	}
	preBuildSummary = append(preBuildSummary, '\n')
	if err := os.WriteFile(preBuildSummaryPath, preBuildSummary, 0o600); err != nil {
		t.Fatal(err)
	}
	buildReceipt := LeanSnapshotBuildReceipt{
		SchemaVersion:                   "mathcase-lean-snapshot-build-v1",
		RunID:                           "fixture-run",
		StartedAtUTC:                    buildStarted,
		FinishedAtUTC:                   buildFinished,
		DockerExecutable:                "docker",
		DockerVersion:                   "29.6.2",
		SourceManifestSHA256:            sourceManifestSHA,
		SourceSnapshot:                  sourceSnapshot,
		RecipeSHA256:                    recipe,
		BaseImageDigest:                 baseImage,
		GitToolImageDigest:              gitToolImage,
		ImageDigest:                     image,
		Toolchain:                       defaultLeanToolchain,
		BuildTarget:                     "fixture",
		BuildArguments:                  []string{"lake", "build", "fixture"},
		BuildStdoutPath:                 stdoutPath,
		BuildStderrPath:                 stderrPath,
		BuildStdoutSHA256:               digestHex(nil),
		BuildStderrSHA256:               digestHex(nil),
		BuildExitCode:                   0,
		PreBuildSummaryPath:             preBuildSummaryPath,
		PreBuildSummarySHA256:           digestHex(preBuildSummary),
		NetworkDisabled:                 true,
		PreBuildProjectArtifactCount:    0,
		PreBuildDependencyArtifactCount: 0,
		PostBuildProjectSnapshot:        projectSnapshot,
	}
	buildBytes, err := json.Marshal(buildReceipt)
	if err != nil {
		t.Fatal(err)
	}
	buildPath := filepath.Join(root, "build-receipt.json")
	if err := os.WriteFile(buildPath, append(buildBytes, '\n'), 0o600); err != nil {
		t.Fatal(err)
	}
	buildBytesOnDisk, err := os.ReadFile(buildPath)
	if err != nil {
		t.Fatal(err)
	}
	buildSHA := digestHex(buildBytesOnDisk)
	manifest := LeanSnapshotManifest{
		SchemaVersion:                   LeanSnapshotManifestSchemaVersion,
		SourceManifestPath:              manifestPath,
		SourceManifestSHA256:            sourceManifestSHA,
		SourceSnapshot:                  sourceSnapshot,
		InventoryPath:                   inventoryPath,
		InventorySHA256:                 inventorySHA,
		BuildReceiptPath:                buildPath,
		BuildReceiptSHA256:              buildSHA,
		RecipeSHA256:                    recipe,
		BaseImageDigest:                 baseImage,
		GitToolImageDigest:              gitToolImage,
		ImageDigest:                     image,
		Toolchain:                       defaultLeanToolchain,
		BuildTarget:                     "fixture",
		AllowedImports:                  []string{"Init"},
		ModuleSearchPath:                []string{"/mathcase/project/.lake/build/lib/lean"},
		ProjectSnapshot:                 projectSnapshot,
		CleanBuild:                      true,
		NetworkDisabled:                 true,
		PreBuildProjectArtifactCount:    0,
		PreBuildDependencyArtifactCount: 0,
	}
	manifest.SnapshotID = ComputeLeanSnapshotID(sourceManifestSHA, buildSHA, image, projectSnapshot.SHA256)
	data, err := json.MarshalIndent(manifest, "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	data = append(data, '\n')
	manifestPathOnDisk := filepath.Join(root, "snapshot-manifest.json")
	if err := os.WriteFile(manifestPathOnDisk, data, 0o600); err != nil {
		t.Fatal(err)
	}
	manifestSHA := sha256.Sum256(data)
	return testLeanSnapshot{
		Manifest:       manifest,
		ManifestPath:   manifestPathOnDisk,
		ManifestSHA256: hex.EncodeToString(manifestSHA[:]),
		ProjectRoot:    projectRoot,
	}
}

func testSnapshotImageCheck(manifest LeanSnapshotManifest) LeanSnapshotImageCheck {
	return LeanSnapshotImageCheck{
		Image:         manifest.ImageDigest,
		ImageID:       manifest.ImageDigest,
		Labels:        map[string]string{"org.mathcase.snapshot.source-manifest-sha256": manifest.SourceManifestSHA256, "org.mathcase.snapshot.source-root-sha256": manifest.SourceSnapshot.SHA256, "org.mathcase.snapshot.recipe-sha256": manifest.RecipeSHA256, "org.mathcase.snapshot.base-image-id": manifest.BaseImageDigest, "org.mathcase.snapshot.git-tool-image-id": manifest.GitToolImageDigest, "org.mathcase.snapshot.build-target": manifest.BuildTarget},
		StdoutSHA256:  digestHex([]byte("[]")),
		StartedAtUTC:  time.Now().UTC().Add(-2 * time.Second),
		FinishedAtUTC: time.Now().UTC().Add(-time.Second),
		ExitCode:      0,
	}
}

func digestHex(data []byte) string {
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:])
}

func repeatByte(value byte, count int) string {
	result := make([]byte, count)
	for index := range result {
		result[index] = value
	}
	return string(result)
}
