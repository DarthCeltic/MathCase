package book

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/solver"
)

func TestAttachLeanMetricsArtifactsAcceptsPinnedExecutionChain(t *testing.T) {
	const sourceSHA = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	metricsBytes, runBytes, requestBytes, manifestBytes, stdout, stderr := testLeanMetricsArtifacts(t, sourceSHA)
	proof := proofMetrics("problem-a", "proof-a", sourceSHA, false)
	got, err := AttachLeanMetricsArtifacts(proof, metricsBytes, runBytes, requestBytes, manifestBytes, stdout, stderr)
	if err != nil {
		t.Fatalf("AttachLeanMetricsArtifacts(valid chain) error = %v, want nil", err)
	}
	receiptDigest := sha256.Sum256(metricsBytes)
	if got.LeanMetricsReceiptSHA256 != hex.EncodeToString(receiptDigest[:]) || got.LeanMetricsSourceSHA256 != sourceSHA ||
		got.LeanMetricsToolchain != "leanprover/lean4:v4.33.1" || !strings.Contains(got.LeanMetricsLeanVersion, "4.33.1") ||
		got.LeanDeclaration != "MathCase.mathcaseNatAddAssoc" || got.ElaboratedExprNodes != 6 || got.ElaboratedExprDepth != 3 ||
		got.BinderNodes != 2 || got.ConstantReferenceNodes != 2 {
		t.Fatalf("AttachLeanMetricsArtifacts(valid chain) proof metrics = %#v, want receipt-bound v4 expression metrics", got)
	}
	if err := got.Validate(); err != nil {
		t.Fatalf("attached Lean metrics proof.Validate() error = %v, want nil", err)
	}
}

func TestAttachProofDependencyInventoryRejectsUnopenedM4(t *testing.T) {
	_, err := AttachProofDependencyInventory([]byte(`{}`), solver.OpenedLeanVerificationReceipt{}, ProofMetrics{}, nil, nil, nil, nil, nil, nil)
	if err == nil || !strings.Contains(err.Error(), "canonically opened execution-bound M4 receipt") {
		t.Fatalf("AttachProofDependencyInventory(zero-value M4 capability) error = %v, want unopened-receipt refusal", err)
	}
}

func TestProofDependencyPayloadRequiresM6ProofValueOccurrenceAgreement(t *testing.T) {
	var payload proofDependencyPayload
	if err := json.Unmarshal([]byte(testProofDependencyPayloadJSON("mathcase_candidate")), &payload); err != nil {
		t.Fatal(err)
	}
	if err := validateProofDependencyPayload(payload, "mathcase_candidate", 2); err != nil {
		t.Fatalf("validateProofDependencyPayload(coherent counts) error = %v, want nil", err)
	}
	// Keep the altered payload internally consistent, but make its proof-value
	// count disagree with M6's constant-node measurement.
	payload.ProofValueOccurrenceCount = 1
	payload.TotalOccurrenceCount = 2
	payload.References[0].ProofValueOccurrences = 1
	payload.References[0].TotalOccurrences = 2
	if err := validateProofDependencyPayload(payload, "mathcase_candidate", 2); err == nil || !strings.Contains(err.Error(), "does not match M6 expression constant count") {
		t.Fatalf("validateProofDependencyPayload(mismatched proof-value count) error = %v, want M6 cross-check refusal", err)
	}
}

func TestAttachLeanMetricsArtifactsRejectsMisbindingAndBrokenEvidence(t *testing.T) {
	const sourceSHA = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	metricsBytes, runBytes, requestBytes, manifestBytes, stdout, stderr := testLeanMetricsArtifacts(t, sourceSHA)
	tests := []struct {
		name     string
		proofSHA string
		mutate   func(*testing.T, [][]byte)
		wantErr  string
	}{
		{
			name:     "wrong proof source",
			proofSHA: strings.Repeat("b", 64),
			wantErr:  "does not match the scored proof",
		},
		{
			name:     "changed stdout",
			proofSHA: sourceSHA,
			wantErr:  "does not bind its run, snapshot, and raw output bytes",
			mutate:   func(_ *testing.T, artifacts [][]byte) { artifacts[4] = append(artifacts[4], []byte("forged\n")...) },
		},
		{
			name:     "changed snapshot manifest",
			proofSHA: sourceSHA,
			wantErr:  "does not bind its run, snapshot, and raw output bytes",
			mutate:   func(_ *testing.T, artifacts [][]byte) { artifacts[3] = append(artifacts[3], []byte(" ")...) },
		},
		{
			name:     "changed launch request",
			proofSHA: sourceSHA,
			wantErr:  "does not bind its run, snapshot, and raw output bytes",
			mutate:   func(_ *testing.T, artifacts [][]byte) { artifacts[2] = append(artifacts[2], []byte(" ")...) },
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			artifacts := [][]byte{append([]byte(nil), metricsBytes...), append([]byte(nil), runBytes...), append([]byte(nil), requestBytes...), append([]byte(nil), manifestBytes...), append([]byte(nil), stdout...), append([]byte(nil), stderr...)}
			if tt.mutate != nil {
				tt.mutate(t, artifacts)
			}
			proof := proofMetrics("problem-a", "proof-a", tt.proofSHA, false)
			if _, err := AttachLeanMetricsArtifacts(proof, artifacts[0], artifacts[1], artifacts[2], artifacts[3], artifacts[4], artifacts[5]); err == nil || !strings.Contains(err.Error(), tt.wantErr) {
				t.Fatalf("AttachLeanMetricsArtifacts(%s) error = %v, want error containing %q", tt.name, err, tt.wantErr)
			}
		})
	}
}

func TestAttachLeanMetricsArtifactsRejectsLegacyHashOnlyReceipt(t *testing.T) {
	legacy := []byte(`{"schema_version":"mathcase-m6-lean-expr-metrics-v2","status":"METRICS_RECORDED"}`)
	proof := proofMetrics("problem-a", "proof-a", strings.Repeat("a", 64), false)
	if _, err := AttachLeanMetricsArtifacts(proof, legacy, nil, nil, nil, nil, nil); err == nil || !strings.Contains(err.Error(), "unsupported Lean metrics receipt") {
		t.Fatalf("AttachLeanMetricsArtifacts(legacy hash-only receipt) error = %v, want legacy refusal", err)
	}
}

func testLeanMetricsArtifacts(t *testing.T, sourceSHA string) ([]byte, []byte, []byte, []byte, []byte, []byte) {
	t.Helper()
	return testLeanMetricsArtifactsForDeclaration(t, sourceSHA, "MathCase.mathcaseNatAddAssoc")
}

func testLeanMetricsArtifactsForDeclaration(t *testing.T, sourceSHA, declaration string) ([]byte, []byte, []byte, []byte, []byte, []byte) {
	t.Helper()
	const toolchain = "leanprover/lean4:v4.33.1"
	const mathlibRevision = "0123456789abcdef0123456789abcdef01234567"
	const projectManifestSHA = "cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc"
	const mathlibManifestSHA = "dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"
	const helperSHA = "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
	const instrumentedSHA = "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
	const lakefileSHA = "1111111111111111111111111111111111111111111111111111111111111111"
	const toolchainSHA = "2222222222222222222222222222222222222222222222222222222222222222"
	const runnerSHA = "4444444444444444444444444444444444444444444444444444444444444444"
	const orchestratorSHA = "abababababababababababababababababababababababababababababababab"
	const cacheReceiptSHA = "5555555555555555555555555555555555555555555555555555555555555555"
	const inventorySHA = "6666666666666666666666666666666666666666666666666666666666666666"
	const prepSHA = "7777777777777777777777777777777777777777777777777777777777777777"
	const verifySHA = "8888888888888888888888888888888888888888888888888888888888888888"
	metrics := leanExprMetrics{
		Schema: "mathcase-lean-expr-metrics-v2", Declaration: declaration,
		CoreExprNodes: 6, CoreExprDepth: 3,
		CoreExprNodesByKind: map[string]int{
			"applications": 2, "lambdas": 1, "forall_expressions": 1, "let_expressions": 0,
			"metadata": 0, "projections": 0, "bound_variables": 0, "free_variables": 0,
			"metavariables": 0, "sorts": 0, "constants": 2, "literals": 0,
		},
		BinderNodes: 2, ConstantReferenceNodes: 2,
	}
	metricJSON, err := json.Marshal(metrics)
	if err != nil {
		t.Fatal(err)
	}
	stdout := []byte("info: MATHCASE_EXPR_METRICS " + string(metricJSON) + "\ninfo: MATHCASE_PROOF_DEPENDENCIES_V1 " + testProofDependencyPayloadJSON(declaration) + "\n'" + declaration + "' does not depend on any axioms\n")
	stderr := []byte{}
	stdoutSHA := digestBytes(stdout)
	stderrSHA := digestBytes(stderr)
	axioms := map[string][]string{declaration: {}}

	files := []leanMetricsSnapshotFile{
		{Path: "source.lean", Bytes: 64, SHA256: sourceSHA},
		{Path: "instrumented.lean", Bytes: 80, SHA256: instrumentedSHA},
		{Path: "metrics-helper.lean", Bytes: 128, SHA256: helperSHA},
		{Path: "lakefile.toml", Bytes: 30, SHA256: lakefileSHA},
		{Path: "lake-manifest.json", Bytes: 40, SHA256: projectManifestSHA},
		{Path: "lean-toolchain", Bytes: 31, SHA256: toolchainSHA},
	}
	// The snapshot identity contract sorts path/hash rows before hashing.
	for i := 0; i < len(files); i++ {
		for j := i + 1; j < len(files); j++ {
			if files[j].Path < files[i].Path {
				files[i], files[j] = files[j], files[i]
			}
		}
	}
	var canonical strings.Builder
	for _, file := range files {
		fmt.Fprintf(&canonical, "%s\x00%d\x00%s\n", file.Path, file.Bytes, file.SHA256)
	}
	snapshotID := digestBytes([]byte(canonical.String()))
	manifest := leanMetricsSnapshotManifest{
		SchemaVersion: "mathcase-m6-source-snapshot-v1", SnapshotID: snapshotID,
		SourcePath: "MathCaseR0b.lean", Declaration: declaration, Files: files,
		IdentityRule: "SHA-256 of canonical sorted path/byte-count/SHA-256 rows",
	}
	manifestBytes, err := json.Marshal(manifest)
	if err != nil {
		t.Fatal(err)
	}
	manifestSHA := digestBytes(manifestBytes)
	imageID := "sha256:" + strings.Repeat("a", 64)
	exitCode := 0
	started := time.Date(2026, 10, 22, 12, 0, 0, 0, time.UTC)
	cacheModules := make([]map[string]string, 5)
	for i := range cacheModules {
		cacheModules[i] = map[string]string{"module": fmt.Sprintf("Mathlib.Module%d", i), "relative_path": fmt.Sprintf("build/Module%d.olean", i), "sha256": strings.Repeat("9", 64)}
	}
	run := leanMetricsRunReceipt{
		SchemaVersion: "mathcase-m6-pinned-lean-run-v2", EvidenceClass: "PINNED_ISOLATED_EXECUTION", Status: "EXECUTED_PASS",
		RecordedAtUTC: started, SnapshotID: snapshotID, SnapshotManifestPath: "snapshot/snapshot-manifest.json", SnapshotManifestSHA256: manifestSHA,
		SourcePath: "MathCaseR0b.lean", SourceSHA256: sourceSHA, InstrumentedSourceSHA256: instrumentedSHA,
		MetricsHelperSHA256: helperSHA, Declaration: declaration, RunRequestPath: "run-request.json",
		RunnerScriptSHA256: runnerSHA, RunnerScriptPath: "scripts/m6_pinned_lean_runtime.py", PythonExecutable: "C:/python.exe", PythonVersion: "3.11.9",
		OrchestratorScriptSHA256: orchestratorSHA, OrchestratorScriptPath: "scripts/lean_expr_metrics.py",
		RuntimeScriptSHA256: runnerSHA, RuntimeScriptPath: "scripts/m6_pinned_lean_runtime.py",
		WorkingTreeIdentity: map[string]any{"status": "CAPTURED"},
		Configuration: leanMetricsRunConfig{
			ImageID: imageID, LeanToolchain: "Lean 4.33.1", MathlibRevision: mathlibRevision,
			ProjectLakeManifestSHA: projectManifestSHA, MathlibLakeManifestSHA: mathlibManifestSHA,
			NetworkMode: "none", ContainerRootReadOnly: true, CacheVolume: "mathcase-m3-cache-control-r1", CacheVolumeReadOnly: true,
			CPULimit: 2, MemoryLimit: "4g", PIDsLimit: 128, TimeoutSeconds: 180, Tmpfs: "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777",
			ProofScope: "One known-result expression-metrics probe", Mounts: []map[string]any{},
		},
		CacheProvenance: leanMetricsCacheProvenance{
			SchemaVersion: "mathcase-m3-cache-provenance-v1", CacheRootPath: "C:/cache", CacheMountPath: "/mathcase/cache",
			ProvenanceClass: "MIXED_CACHE_PROVENANCE", MathlibRevision: mathlibRevision, LeanToolchain: "Lean 4.33.1",
			LakeManifestSHA256: mathlibManifestSHA, CacheRunReceiptPath: "cache-receipt.json", CacheRunReceiptSHA256: cacheReceiptSHA,
			InventoryPath: "cache-inventory.jsonl", InventorySHA256: inventorySHA, CacheMountReadOnly: true,
			TargetModules: cacheModules, ModuleOLean: map[string]string{"module": "Mathlib.Data.Nat.Basic", "relative_path": "build/Nat/Basic.olean", "sha256": strings.Repeat("9", 64)},
		},
		CacheVolumeProvenance: leanMetricsVolumeProvenance{
			SchemaVersion: "mathcase-m3-cache-volume-provenance-v1", Volume: "mathcase-m3-cache-control-r1", CacheInventorySHA256: inventorySHA,
			VolumePrepReceiptSHA256: prepSHA, VolumeVerificationReceiptSHA256: verifySHA, ReadOnlyDuringReplay: true,
			NetworkNoneDuringCopyAndVerification: true, Checks: map[string]bool{"volume_verified": true},
		},
		ContainerName: "mathcase-m6-metrics-test", CommandArgv: []string{"docker", "run", "--network=none", "--read-only", "--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128", imageID},
		DockerExecutable: "docker", DockerServerVersion: "29.9.2", ImageProbe: map[string]any{"exit_code": float64(0)},
		LeanVersionPreflightPath: "lean-version-preflight.json", LeanVersionPreflightSHA256: strings.Repeat("a", 64),
		PreflightEvidence: map[string]any{"status": "PASS"}, LeanVersion: "Lean (version 4.33.1, x86_64-unknown-linux-gnu, commit test, Release)",
		StartedAtUTC: started, FinishedAtUTC: started.Add(time.Second), ElapsedMS: 1000, ExitCode: &exitCode,
		ContainerAbsentAfterCleanup: true, StdoutPath: "stdout.bin", StdoutBytes: len(stdout), StdoutSHA256: stdoutSHA,
		StderrPath: "stderr.bin", StderrBytes: len(stderr), StderrSHA256: stderrSHA,
		MetricsParseStatus: "PASS", MetricsPayloadSHA256: stringPointer(digestBytes(metricJSON)), AxiomObservations: axioms,
		PhaseMarkerStatus: "NOT_INSTRUMENTED_FOR_SINGLE_PASS_EXPRESSION_METRICS", MarkerTimesMS: map[string]float64{}, CleanupActions: []map[string]any{},
	}
	request := leanMetricsRunRequest{
		SchemaVersion: "mathcase-m6-pinned-lean-run-request-v2", SnapshotID: snapshotID,
		SnapshotManifestSHA256: manifestSHA, Declaration: declaration, SourcePath: "MathCaseR0b.lean",
		SourceSHA256: sourceSHA, InstrumentedSourceSHA256: instrumentedSHA, MetricsHelperSHA256: helperSHA,
		ProjectLakefileSHA256: lakefileSHA, ProjectLakeManifestSHA256: projectManifestSHA,
		MathlibLakeManifestSHA256: mathlibManifestSHA, LeanToolchainSHA256: toolchainSHA,
		OrchestratorScriptSHA256: orchestratorSHA, RuntimeScriptSHA256: runnerSHA, RunnerScriptSHA256: runnerSHA,
		Configuration: run.Configuration,
	}
	requestBytes, err := json.Marshal(request)
	if err != nil {
		t.Fatal(err)
	}
	run.RunRequestSHA256 = digestBytes(requestBytes)
	runBytes, err := json.Marshal(run)
	if err != nil {
		t.Fatal(err)
	}
	receipt := leanMetricsReceipt{
		SchemaVersion: "mathcase-m6-lean-expr-metrics-v4", Status: "METRICS_RECORDED", EvidenceClass: "PINNED_ISOLATED_EXECUTION",
		RecordedAtUTC: started, SourcePath: "MathCaseR0b.lean", SourceSHA256: sourceSHA, Declaration: declaration,
		ProjectLakefilePath: stringPointer("lakefile.toml"), ProjectLakefileSHA256: stringPointer(lakefileSHA), LakeManifestSHA256: stringPointer(projectManifestSHA),
		LeanToolchain: stringPointer(toolchain), LeanToolchainSHA256: stringPointer(toolchainSHA), LeanVersion: "Lean (version 4.33.1, x86_64-unknown-linux-gnu, commit test, Release)",
		MetricsHelperSHA256: helperSHA, OrchestratorScriptSHA256: orchestratorSHA, RuntimeScriptSHA256: runnerSHA,
		InstrumentedSourcePath: "snapshot/instrumented.lean", InstrumentedSourceSHA: instrumentedSHA,
		SnapshotID: snapshotID, SnapshotManifestPath: "snapshot/snapshot-manifest.json", SnapshotManifestSHA256: manifestSHA,
		RunReceiptPath: "run-receipt.json", RunReceiptSHA256: digestBytes(runBytes), RunRequestPath: "run-request.json", RunRequestSHA256: digestBytes(requestBytes),
		StdoutPath: "stdout.bin", StdoutSHA256: stdoutSHA,
		StderrPath: "stderr.bin", StderrSHA256: stderrSHA, AxiomObservations: axioms, Metrics: metrics,
		ScopeNote: "Expression shape only; not rewrite acceptance or V5 essentiality.",
	}
	metricsBytes, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	return metricsBytes, runBytes, requestBytes, manifestBytes, stdout, stderr
}

func testProofDependencyPayloadJSON(declaration string) string {
	return fmt.Sprintf(`{"schema":"mathcase-proof-dependencies-v1","declaration":%q,"traversal_scope":"declaration_type_and_stored_proof_value; recursive_core_expr_edges_including_binder_and_let_type_annotations; no_transitive_declaration_bodies","declaration_type_occurrence_count":1,"proof_value_occurrence_count":2,"total_occurrence_count":3,"unique_reference_count":1,"references":[{"name":"Nat.add","declaration_type_occurrences":1,"proof_value_occurrences":2,"total_occurrences":3,"resolution":"RESOLVED","declaration_kind":"definition"}],"unresolved_entries":[],"transitive_bodies_expanded":false,"necessity_claim":false,"interpretation":"Direct constants appearing in this freshly elaborated declaration type and proof value; occurrence is not necessity or causal contribution."}`, declaration)
}

func digestBytes(value []byte) string {
	digest := sha256.Sum256(value)
	return hex.EncodeToString(digest[:])
}

func stringPointer(value string) *string {
	return &value
}
