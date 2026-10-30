package book

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"path"
	"reflect"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/state"
)

const maxLeanMetricsReceiptBytes = 1 << 20
const maxLeanMetricsRawOutputBytes = 1 << 20
const maxLeanMetricsSnapshotBytes = 4 << 20
const maxLeanMetricsRunRequestBytes = 1 << 20

type leanMetricsReceipt struct {
	SchemaVersion            string              `json:"schema_version"`
	Status                   string              `json:"status"`
	EvidenceClass            string              `json:"evidence_class"`
	RecordedAtUTC            time.Time           `json:"recorded_at_utc"`
	SourcePath               string              `json:"source_path"`
	SourceSHA256             string              `json:"source_sha256"`
	Declaration              string              `json:"declaration"`
	ProjectLakefilePath      *string             `json:"project_lakefile_path"`
	ProjectLakefileSHA256    *string             `json:"project_lakefile_sha256"`
	LakeManifestSHA256       *string             `json:"lake_manifest_sha256"`
	LeanToolchain            *string             `json:"lean_toolchain"`
	LeanToolchainSHA256      *string             `json:"lean_toolchain_sha256"`
	LeanVersion              string              `json:"lean_version"`
	MetricsHelperSHA256      string              `json:"metrics_helper_sha256"`
	OrchestratorScriptSHA256 string              `json:"orchestrator_script_sha256"`
	RuntimeScriptSHA256      string              `json:"runtime_script_sha256"`
	InstrumentedSourcePath   string              `json:"instrumented_source_path"`
	InstrumentedSourceSHA    string              `json:"instrumented_source_sha256"`
	SnapshotID               string              `json:"snapshot_id"`
	SnapshotManifestPath     string              `json:"snapshot_manifest_path"`
	SnapshotManifestSHA256   string              `json:"snapshot_manifest_sha256"`
	RunReceiptPath           string              `json:"run_receipt_path"`
	RunReceiptSHA256         string              `json:"run_receipt_sha256"`
	RunRequestPath           string              `json:"run_request_path"`
	RunRequestSHA256         string              `json:"run_request_sha256"`
	StdoutPath               string              `json:"stdout_path"`
	StdoutSHA256             string              `json:"stdout_sha256"`
	StderrPath               string              `json:"stderr_path"`
	StderrSHA256             string              `json:"stderr_sha256"`
	AxiomObservations        map[string][]string `json:"axiom_observations"`
	Metrics                  leanExprMetrics     `json:"metrics"`
	ScopeNote                string              `json:"scope_note"`
}

type leanExprMetrics struct {
	Schema                 string         `json:"schema"`
	Declaration            string         `json:"declaration"`
	CoreExprNodes          int            `json:"core_expr_nodes"`
	CoreExprDepth          int            `json:"core_expr_depth"`
	CoreExprNodesByKind    map[string]int `json:"core_expr_nodes_by_kind"`
	BinderNodes            int            `json:"binder_nodes"`
	ConstantReferenceNodes int            `json:"constant_reference_nodes"`
}

type leanMetricsRunReceipt struct {
	SchemaVersion               string                      `json:"schema_version"`
	EvidenceClass               string                      `json:"evidence_class"`
	Status                      string                      `json:"status"`
	RecordedAtUTC               time.Time                   `json:"recorded_at_utc"`
	SnapshotID                  string                      `json:"snapshot_id"`
	SnapshotManifestPath        string                      `json:"snapshot_manifest_path"`
	SnapshotManifestSHA256      string                      `json:"snapshot_manifest_sha256"`
	SourcePath                  string                      `json:"source_path"`
	SourceSHA256                string                      `json:"source_sha256"`
	InstrumentedSourceSHA256    string                      `json:"instrumented_source_sha256"`
	MetricsHelperSHA256         string                      `json:"metrics_helper_sha256"`
	Declaration                 string                      `json:"declaration"`
	RunRequestPath              string                      `json:"run_request_path"`
	RunRequestSHA256            string                      `json:"run_request_sha256"`
	RunnerScriptSHA256          string                      `json:"runner_script_sha256"`
	RunnerScriptPath            string                      `json:"runner_script_path"`
	OrchestratorScriptSHA256    string                      `json:"orchestrator_script_sha256"`
	OrchestratorScriptPath      string                      `json:"orchestrator_script_path"`
	RuntimeScriptSHA256         string                      `json:"runtime_script_sha256"`
	RuntimeScriptPath           string                      `json:"runtime_script_path"`
	PythonExecutable            string                      `json:"python_executable"`
	PythonVersion               string                      `json:"python_version"`
	WorkingTreeIdentity         map[string]any              `json:"working_tree_identity"`
	Configuration               leanMetricsRunConfig        `json:"configuration"`
	CacheProvenance             leanMetricsCacheProvenance  `json:"cache_provenance"`
	CacheVolumeProvenance       leanMetricsVolumeProvenance `json:"cache_volume_provenance"`
	ContainerName               string                      `json:"container_name"`
	CommandArgv                 []string                    `json:"command_argv"`
	DockerExecutable            string                      `json:"docker_executable"`
	DockerServerVersion         string                      `json:"docker_server_version"`
	ImageProbe                  map[string]any              `json:"image_probe"`
	LeanVersionPreflightPath    string                      `json:"lean_version_preflight_path"`
	LeanVersionPreflightSHA256  string                      `json:"lean_version_preflight_sha256"`
	PreflightEvidence           map[string]any              `json:"preflight_evidence"`
	LeanVersion                 string                      `json:"lean_version"`
	StartedAtUTC                time.Time                   `json:"started_at_utc"`
	FinishedAtUTC               time.Time                   `json:"finished_at_utc"`
	ElapsedMS                   float64                     `json:"elapsed_ms"`
	ExitCode                    *int                        `json:"exit_code"`
	TimedOut                    bool                        `json:"timed_out"`
	ContainerAbsentAfterCleanup bool                        `json:"container_absent_after_cleanup"`
	StdoutPath                  string                      `json:"stdout_path"`
	StdoutBytes                 int                         `json:"stdout_bytes"`
	StdoutSHA256                string                      `json:"stdout_sha256"`
	StderrPath                  string                      `json:"stderr_path"`
	StderrBytes                 int                         `json:"stderr_bytes"`
	StderrSHA256                string                      `json:"stderr_sha256"`
	MetricsParseStatus          string                      `json:"metrics_parse_status"`
	MetricsParseError           *string                     `json:"metrics_parse_error"`
	MetricsPayloadSHA256        *string                     `json:"metrics_payload_sha256"`
	AxiomObservations           map[string][]string         `json:"axiom_observations"`
	PhaseMarkerStatus           string                      `json:"phase_marker_status"`
	MarkerTimesMS               map[string]float64          `json:"marker_times_ms"`
	CleanupActions              []map[string]any            `json:"cleanup_actions"`
	Failure                     *leanMetricsFailure         `json:"failure"`
}

type leanMetricsRunRequest struct {
	SchemaVersion             string               `json:"schema_version"`
	SnapshotID                string               `json:"snapshot_id"`
	SnapshotManifestSHA256    string               `json:"snapshot_manifest_sha256"`
	Declaration               string               `json:"declaration"`
	SourcePath                string               `json:"source_path"`
	SourceSHA256              string               `json:"source_sha256"`
	InstrumentedSourceSHA256  string               `json:"instrumented_source_sha256"`
	MetricsHelperSHA256       string               `json:"metrics_helper_sha256"`
	ProjectLakefileSHA256     string               `json:"project_lakefile_sha256"`
	ProjectLakeManifestSHA256 string               `json:"project_lake_manifest_sha256"`
	MathlibLakeManifestSHA256 string               `json:"mathlib_lake_manifest_sha256"`
	LeanToolchainSHA256       string               `json:"lean_toolchain_sha256"`
	OrchestratorScriptSHA256  string               `json:"orchestrator_script_sha256"`
	RuntimeScriptSHA256       string               `json:"runtime_script_sha256"`
	RunnerScriptSHA256        string               `json:"runner_script_sha256"`
	Configuration             leanMetricsRunConfig `json:"configuration"`
}

type leanMetricsFailure struct {
	Type    string `json:"type"`
	Message string `json:"message"`
}

type leanMetricsRunConfig struct {
	ImageID                string           `json:"image_id"`
	LeanToolchain          string           `json:"lean_toolchain"`
	MathlibRevision        string           `json:"mathlib_revision"`
	ProjectLakeManifestSHA string           `json:"project_lake_manifest_sha256"`
	MathlibLakeManifestSHA string           `json:"mathlib_lake_manifest_sha256"`
	NetworkMode            string           `json:"network_mode"`
	ContainerRootReadOnly  bool             `json:"container_root_read_only"`
	CacheVolume            string           `json:"cache_volume"`
	CacheVolumeReadOnly    bool             `json:"cache_volume_read_only"`
	CPULimit               int              `json:"cpu_limit"`
	MemoryLimit            string           `json:"memory_limit"`
	PIDsLimit              int              `json:"pids_limit"`
	TimeoutSeconds         int              `json:"timeout_seconds"`
	Tmpfs                  string           `json:"tmpfs"`
	ProofScope             string           `json:"proof_scope"`
	Mounts                 []map[string]any `json:"mounts"`
}

type leanMetricsCacheProvenance struct {
	SchemaVersion         string              `json:"schema_version"`
	CacheRootPath         string              `json:"cache_root_path"`
	CacheMountPath        string              `json:"cache_mount_path"`
	ProvenanceClass       string              `json:"provenance_class"`
	MathlibRevision       string              `json:"mathlib_revision"`
	LeanToolchain         string              `json:"lean_toolchain"`
	LakeManifestSHA256    string              `json:"lake_manifest_sha256"`
	CacheRunReceiptPath   string              `json:"cache_run_receipt_path"`
	CacheRunReceiptSHA256 string              `json:"cache_run_receipt_sha256"`
	InventoryPath         string              `json:"inventory_path"`
	InventorySHA256       string              `json:"inventory_sha256"`
	CacheMountReadOnly    bool                `json:"cache_mount_read_only"`
	TargetModules         []map[string]string `json:"target_modules"`
	ModuleOLean           map[string]string   `json:"module_olean"`
}

type leanMetricsVolumeProvenance struct {
	SchemaVersion                        string          `json:"schema_version"`
	Volume                               string          `json:"volume"`
	CacheInventorySHA256                 string          `json:"cache_inventory_sha256"`
	VolumePrepReceiptSHA256              string          `json:"volume_prep_receipt_sha256"`
	VolumeVerificationReceiptSHA256      string          `json:"volume_verification_receipt_sha256"`
	ReadOnlyDuringReplay                 bool            `json:"read_only_during_replay"`
	NetworkNoneDuringCopyAndVerification bool            `json:"network_none_during_copy_and_verification"`
	Checks                               map[string]bool `json:"checks"`
}

type leanMetricsSnapshotManifest struct {
	SchemaVersion string                    `json:"schema_version"`
	SnapshotID    string                    `json:"snapshot_id"`
	SourcePath    string                    `json:"source_path"`
	Declaration   string                    `json:"declaration"`
	Files         []leanMetricsSnapshotFile `json:"files"`
	IdentityRule  string                    `json:"identity_rule"`
}

type leanMetricsSnapshotFile struct {
	Path   string `json:"path"`
	Bytes  int    `json:"bytes"`
	SHA256 string `json:"sha256"`
}

// AttachLeanMetricsArtifacts accepts only M6 receipts backed by the same pinned
// run record, snapshot manifest, and captured raw stdout/stderr bytes.
func AttachLeanMetricsArtifacts(
	proof ProofMetrics,
	metricsReceiptBytes []byte,
	runReceiptBytes []byte,
	runRequestBytes []byte,
	snapshotManifestBytes []byte,
	stdout []byte,
	stderr []byte,
) (ProofMetrics, error) {
	if len(metricsReceiptBytes) == 0 || len(metricsReceiptBytes) > maxLeanMetricsReceiptBytes {
		return ProofMetrics{}, errors.New("book: Lean metrics receipt is empty or exceeds 1 MiB")
	}
	metricsReceipt, err := decodeLeanMetricsReceipt(metricsReceiptBytes)
	if err != nil {
		return ProofMetrics{}, err
	}
	if len(runReceiptBytes) == 0 || len(runReceiptBytes) > maxLeanMetricsReceiptBytes {
		return ProofMetrics{}, errors.New("book: Lean metrics run receipt is empty or exceeds 1 MiB")
	}
	if len(runRequestBytes) == 0 || len(runRequestBytes) > maxLeanMetricsRunRequestBytes {
		return ProofMetrics{}, errors.New("book: Lean metrics run request is empty or exceeds 1 MiB")
	}
	if len(snapshotManifestBytes) == 0 || len(snapshotManifestBytes) > maxLeanMetricsSnapshotBytes {
		return ProofMetrics{}, errors.New("book: Lean metrics snapshot manifest is empty or exceeds 4 MiB")
	}
	if len(stdout) > maxLeanMetricsRawOutputBytes || len(stderr) > maxLeanMetricsRawOutputBytes {
		return ProofMetrics{}, errors.New("book: Lean metrics raw output exceeds 1 MiB")
	}
	runReceipt, err := decodeLeanMetricsRunReceipt(runReceiptBytes)
	if err != nil {
		return ProofMetrics{}, err
	}
	runRequest, err := decodeLeanMetricsRunRequest(runRequestBytes)
	if err != nil {
		return ProofMetrics{}, err
	}
	manifest, err := decodeLeanMetricsSnapshotManifest(snapshotManifestBytes)
	if err != nil {
		return ProofMetrics{}, err
	}
	if proof.ProofSHA256 != metricsReceipt.SourceSHA256 {
		return ProofMetrics{}, errors.New("book: Lean metrics source digest does not match the scored proof")
	}
	if !boundSHA256(metricsReceipt.RunReceiptSHA256, runReceiptBytes) ||
		!boundSHA256(metricsReceipt.RunRequestSHA256, runRequestBytes) ||
		!boundSHA256(metricsReceipt.SnapshotManifestSHA256, snapshotManifestBytes) ||
		!boundSHA256(metricsReceipt.StdoutSHA256, stdout) || !boundSHA256(metricsReceipt.StderrSHA256, stderr) {
		return ProofMetrics{}, errors.New("book: Lean metrics receipt does not bind its run, snapshot, and raw output bytes")
	}
	if metricsReceipt.RunReceiptPath != "run-receipt.json" || metricsReceipt.RunRequestPath != "run-request.json" || metricsReceipt.SnapshotManifestPath != "snapshot/snapshot-manifest.json" ||
		metricsReceipt.StdoutPath != "stdout.bin" || metricsReceipt.StderrPath != "stderr.bin" ||
		metricsReceipt.InstrumentedSourcePath != "snapshot/instrumented.lean" {
		return ProofMetrics{}, errors.New("book: Lean metrics artifact paths are not the canonical sibling paths")
	}
	if err := validateLeanMetricsExecution(metricsReceipt, runReceipt, runRequest, manifest, stdout, stderr); err != nil {
		return ProofMetrics{}, err
	}
	digest := sha256.Sum256(metricsReceiptBytes)
	proof.LeanMetricsReceiptSHA256 = hex.EncodeToString(digest[:])
	proof.LeanMetricsSourceSHA256 = metricsReceipt.SourceSHA256
	proof.LeanMetricsToolchain = *metricsReceipt.LeanToolchain
	proof.LeanMetricsLeanVersion = metricsReceipt.LeanVersion
	proof.LeanDeclaration = metricsReceipt.Declaration
	proof.ElaboratedExprNodes = metricsReceipt.Metrics.CoreExprNodes
	proof.ElaboratedExprDepth = metricsReceipt.Metrics.CoreExprDepth
	proof.BinderNodes = metricsReceipt.Metrics.BinderNodes
	proof.ConstantReferenceNodes = metricsReceipt.Metrics.ConstantReferenceNodes
	return proof, nil
}

func decodeLeanMetricsReceipt(data []byte) (leanMetricsReceipt, error) {
	var receipt leanMetricsReceipt
	if err := decodeStrictMetricsJSON(data, &receipt, "Lean metrics receipt"); err != nil {
		return leanMetricsReceipt{}, err
	}
	if receipt.SchemaVersion != "mathcase-m6-lean-expr-metrics-v4" || receipt.Status != "METRICS_RECORDED" || receipt.EvidenceClass != "PINNED_ISOLATED_EXECUTION" {
		return leanMetricsReceipt{}, errors.New("book: unsupported Lean metrics receipt schema, status, or evidence class")
	}
	if receipt.RecordedAtUTC.IsZero() {
		return leanMetricsReceipt{}, errors.New("book: Lean metrics receipt time is required")
	}
	if !canonicalProjectPath(receipt.SourcePath) {
		return leanMetricsReceipt{}, errors.New("book: Lean metrics source path must be canonical and project-relative")
	}
	if !validSHA256(receipt.SourceSHA256) || !validSHA256(receipt.MetricsHelperSHA256) || !validSHA256(receipt.InstrumentedSourceSHA) ||
		!validSHA256(receipt.OrchestratorScriptSHA256) || !validSHA256(receipt.RuntimeScriptSHA256) ||
		!validSHA256(receipt.SnapshotID) || !validSHA256(receipt.SnapshotManifestSHA256) || !validSHA256(receipt.RunReceiptSHA256) || !validSHA256(receipt.RunRequestSHA256) ||
		!validSHA256(receipt.StdoutSHA256) || !validSHA256(receipt.StderrSHA256) {
		return leanMetricsReceipt{}, errors.New("book: Lean metrics receipt contains an invalid SHA-256 digest")
	}
	if receipt.ProjectLakefilePath == nil || (*receipt.ProjectLakefilePath != "lakefile.lean" && *receipt.ProjectLakefilePath != "lakefile.toml") ||
		receipt.ProjectLakefileSHA256 == nil || !validSHA256(*receipt.ProjectLakefileSHA256) ||
		receipt.LakeManifestSHA256 == nil || !validSHA256(*receipt.LakeManifestSHA256) {
		return leanMetricsReceipt{}, errors.New("book: Lean metrics receipt must bind its project Lakefile and manifest")
	}
	if receipt.LeanToolchain == nil || strings.TrimSpace(*receipt.LeanToolchain) == "" ||
		receipt.LeanToolchainSHA256 == nil || !validSHA256(*receipt.LeanToolchainSHA256) || strings.TrimSpace(receipt.LeanVersion) == "" {
		return leanMetricsReceipt{}, errors.New("book: Lean metrics receipt must bind the Lean toolchain and version")
	}
	if receipt.ScopeNote == "" || strings.TrimSpace(receipt.ScopeNote) == "" {
		return leanMetricsReceipt{}, errors.New("book: Lean metrics receipt scope note is required")
	}
	if err := state.ValidateIdentifier("Lean metrics declaration", receipt.Declaration); err != nil {
		return leanMetricsReceipt{}, err
	}
	if err := validateLeanMetrics(receipt.Declaration, receipt.Metrics); err != nil {
		return leanMetricsReceipt{}, err
	}
	if axioms, ok := receipt.AxiomObservations[receipt.Declaration]; !ok || axioms == nil {
		return leanMetricsReceipt{}, errors.New("book: Lean metrics receipt lacks the selected declaration's axiom observation")
	} else {
		for _, axiom := range axioms {
			if strings.Contains(strings.ToLower(axiom), "sorryax") {
				return leanMetricsReceipt{}, errors.New("book: Lean metrics receipt reports sorryAx")
			}
		}
	}
	return receipt, nil
}

func decodeLeanMetricsRunReceipt(data []byte) (leanMetricsRunReceipt, error) {
	var receipt leanMetricsRunReceipt
	if err := decodeStrictMetricsJSON(data, &receipt, "Lean metrics run receipt"); err != nil {
		return leanMetricsRunReceipt{}, err
	}
	if receipt.SchemaVersion != "mathcase-m6-pinned-lean-run-v2" || receipt.EvidenceClass != "PINNED_ISOLATED_EXECUTION" || receipt.Status != "EXECUTED_PASS" {
		return leanMetricsRunReceipt{}, errors.New("book: Lean metrics run receipt is not a passed pinned execution")
	}
	if receipt.RecordedAtUTC.IsZero() || receipt.StartedAtUTC.IsZero() || receipt.FinishedAtUTC.IsZero() || receipt.FinishedAtUTC.Before(receipt.StartedAtUTC) || receipt.ExitCode == nil || *receipt.ExitCode != 0 || receipt.TimedOut || !receipt.ContainerAbsentAfterCleanup {
		return leanMetricsRunReceipt{}, errors.New("book: Lean metrics run receipt has an incomplete process or cleanup result")
	}
	if receipt.MetricsParseStatus != "PASS" || receipt.MetricsParseError != nil || receipt.MetricsPayloadSHA256 == nil || !validSHA256(*receipt.MetricsPayloadSHA256) || !validSHA256(receipt.LeanVersionPreflightSHA256) || receipt.LeanVersionPreflightPath != "lean-version-preflight.json" {
		return leanMetricsRunReceipt{}, errors.New("book: Lean metrics run receipt does not record a successful metrics parse")
	}
	if receipt.PhaseMarkerStatus != "NOT_INSTRUMENTED_FOR_SINGLE_PASS_EXPRESSION_METRICS" {
		return leanMetricsRunReceipt{}, errors.New("book: Lean metrics run receipt has an unsupported phase-marker disposition")
	}
	for _, digest := range []string{receipt.SnapshotID, receipt.SnapshotManifestSHA256, receipt.SourceSHA256, receipt.InstrumentedSourceSHA256,
		receipt.MetricsHelperSHA256, receipt.RunRequestSHA256, receipt.RunnerScriptSHA256, receipt.OrchestratorScriptSHA256,
		receipt.RuntimeScriptSHA256, receipt.StdoutSHA256, receipt.StderrSHA256} {
		if !validSHA256(digest) {
			return leanMetricsRunReceipt{}, errors.New("book: Lean metrics run receipt contains an invalid SHA-256 digest")
		}
	}
	if receipt.RunRequestPath != "run-request.json" || receipt.SnapshotManifestPath != "snapshot/snapshot-manifest.json" || receipt.StdoutPath != "stdout.bin" || receipt.StderrPath != "stderr.bin" ||
		receipt.PythonExecutable == "" || receipt.PythonVersion == "" || receipt.RunnerScriptPath != "scripts/m6_pinned_lean_runtime.py" ||
		receipt.OrchestratorScriptPath != "scripts/lean_expr_metrics.py" || receipt.RuntimeScriptPath != "scripts/m6_pinned_lean_runtime.py" ||
		receipt.RuntimeScriptPath != receipt.RunnerScriptPath || receipt.RuntimeScriptSHA256 != receipt.RunnerScriptSHA256 ||
		receipt.DockerExecutable == "" || receipt.DockerServerVersion == "" || receipt.ContainerName == "" || receipt.WorkingTreeIdentity == nil || receipt.ImageProbe == nil || receipt.PreflightEvidence == nil {
		return leanMetricsRunReceipt{}, errors.New("book: Lean metrics run receipt omits its runner or artifact identity")
	}
	config := receipt.Configuration
	if config.NetworkMode != "none" || !config.ContainerRootReadOnly || !config.CacheVolumeReadOnly || config.CacheVolume == "" || config.CPULimit <= 0 || config.TimeoutSeconds <= 0 || config.PIDsLimit <= 0 ||
		!validImageID(config.ImageID) || config.LeanToolchain == "" || config.MathlibRevision == "" || config.ProjectLakeManifestSHA == "" || config.MathlibLakeManifestSHA == "" {
		return leanMetricsRunReceipt{}, errors.New("book: Lean metrics execution configuration is not pinned and isolated")
	}
	if !validSHA256(config.ProjectLakeManifestSHA) || !validSHA256(config.MathlibLakeManifestSHA) || !validRevision(config.MathlibRevision) {
		return leanMetricsRunReceipt{}, errors.New("book: Lean metrics execution configuration has invalid Mathlib or manifest identity")
	}
	if receipt.CacheProvenance.SchemaVersion != "mathcase-m3-cache-provenance-v1" || receipt.CacheProvenance.CacheRootPath == "" || receipt.CacheProvenance.CacheMountPath != "/mathcase/cache" ||
		receipt.CacheProvenance.CacheRunReceiptPath == "" || receipt.CacheProvenance.InventoryPath == "" || len(receipt.CacheProvenance.TargetModules) != 5 || len(receipt.CacheProvenance.ModuleOLean) == 0 ||
		receipt.CacheProvenance.ProvenanceClass == "" || receipt.CacheProvenance.MathlibRevision != config.MathlibRevision ||
		receipt.CacheProvenance.LeanToolchain != config.LeanToolchain || receipt.CacheProvenance.LakeManifestSHA256 != config.MathlibLakeManifestSHA ||
		!receipt.CacheProvenance.CacheMountReadOnly || !validSHA256(receipt.CacheProvenance.CacheRunReceiptSHA256) || !validSHA256(receipt.CacheProvenance.InventorySHA256) {
		return leanMetricsRunReceipt{}, errors.New("book: Lean metrics run receipt cache provenance is missing or misbound")
	}
	if receipt.CacheProvenance.ProvenanceClass != "LOCAL_ISOLATED_SOURCE_BUILD" && receipt.CacheProvenance.ProvenanceClass != "OFFICIAL_CI_PREBUILT_CACHE" && receipt.CacheProvenance.ProvenanceClass != "MIXED_CACHE_PROVENANCE" {
		return leanMetricsRunReceipt{}, errors.New("book: Lean metrics run receipt cache provenance class is unsupported")
	}
	volume := receipt.CacheVolumeProvenance
	if volume.SchemaVersion != "mathcase-m3-cache-volume-provenance-v1" || volume.Volume != config.CacheVolume || volume.CacheInventorySHA256 != receipt.CacheProvenance.InventorySHA256 ||
		!validSHA256(volume.VolumePrepReceiptSHA256) || !validSHA256(volume.VolumeVerificationReceiptSHA256) || !volume.ReadOnlyDuringReplay || len(volume.Checks) == 0 {
		return leanMetricsRunReceipt{}, errors.New("book: Lean metrics Docker-volume provenance is missing or misbound")
	}
	for name, passed := range volume.Checks {
		if !passed {
			return leanMetricsRunReceipt{}, fmt.Errorf("book: Lean metrics volume provenance check %q failed", name)
		}
	}
	if !volume.NetworkNoneDuringCopyAndVerification {
		return leanMetricsRunReceipt{}, errors.New("book: Lean metrics cache-volume provenance does not record network isolation")
	}
	if !canonicalOutputPath(receipt.StdoutPath) || !canonicalOutputPath(receipt.StderrPath) || receipt.StdoutBytes < 0 || receipt.StderrBytes < 0 ||
		!validSHA256(receipt.StdoutSHA256) || !validSHA256(receipt.StderrSHA256) {
		return leanMetricsRunReceipt{}, errors.New("book: Lean metrics run receipt has invalid raw-output identity")
	}
	policyFlags := []string{"--network=none", "--read-only", "--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128"}
	command := strings.Join(receipt.CommandArgv, "\n")
	if !strings.Contains(command, config.ImageID) {
		return leanMetricsRunReceipt{}, errors.New("book: Lean metrics command is not bound to its pinned image")
	}
	for _, flag := range policyFlags {
		if !strings.Contains(command, flag) {
			return leanMetricsRunReceipt{}, fmt.Errorf("book: Lean metrics command omits required isolation flag %q", flag)
		}
	}
	return receipt, nil
}

func decodeLeanMetricsRunRequest(data []byte) (leanMetricsRunRequest, error) {
	var request leanMetricsRunRequest
	if err := decodeStrictMetricsJSON(data, &request, "Lean metrics run request"); err != nil {
		return leanMetricsRunRequest{}, err
	}
	if request.SchemaVersion != "mathcase-m6-pinned-lean-run-request-v2" || !validSHA256(request.SnapshotID) ||
		!validSHA256(request.SnapshotManifestSHA256) || !validSHA256(request.SourceSHA256) || !validSHA256(request.InstrumentedSourceSHA256) ||
		!validSHA256(request.MetricsHelperSHA256) || !validSHA256(request.ProjectLakefileSHA256) || !validSHA256(request.ProjectLakeManifestSHA256) ||
		!validSHA256(request.MathlibLakeManifestSHA256) || !validSHA256(request.LeanToolchainSHA256) ||
		!validSHA256(request.OrchestratorScriptSHA256) || !validSHA256(request.RuntimeScriptSHA256) || !validSHA256(request.RunnerScriptSHA256) ||
		request.RuntimeScriptSHA256 != request.RunnerScriptSHA256 || !canonicalProjectPath(request.SourcePath) {
		return leanMetricsRunRequest{}, errors.New("book: Lean metrics run request schema or identity is unsupported")
	}
	if err := state.ValidateIdentifier("Lean metrics run request declaration", request.Declaration); err != nil {
		return leanMetricsRunRequest{}, err
	}
	return request, nil
}

func decodeLeanMetricsSnapshotManifest(data []byte) (leanMetricsSnapshotManifest, error) {
	var manifest leanMetricsSnapshotManifest
	if err := decodeStrictMetricsJSON(data, &manifest, "Lean metrics snapshot manifest"); err != nil {
		return leanMetricsSnapshotManifest{}, err
	}
	if manifest.SchemaVersion != "mathcase-m6-source-snapshot-v1" || !validSHA256(manifest.SnapshotID) || len(manifest.Files) == 0 ||
		manifest.IdentityRule != "SHA-256 of canonical sorted path/byte-count/SHA-256 rows" {
		return leanMetricsSnapshotManifest{}, errors.New("book: Lean metrics snapshot manifest schema or identity rule is unsupported")
	}
	if !canonicalProjectPath(manifest.SourcePath) {
		return leanMetricsSnapshotManifest{}, errors.New("book: Lean metrics snapshot source path is not canonical")
	}
	seen := make(map[string]bool, len(manifest.Files))
	var canonical strings.Builder
	for i, file := range manifest.Files {
		if !canonicalSnapshotFilePath(file.Path) || file.Bytes <= 0 || !validSHA256(file.SHA256) || seen[file.Path] {
			return leanMetricsSnapshotManifest{}, errors.New("book: Lean metrics snapshot file entry is malformed or duplicated")
		}
		if i > 0 && manifest.Files[i-1].Path >= file.Path {
			return leanMetricsSnapshotManifest{}, errors.New("book: Lean metrics snapshot files are not sorted")
		}
		seen[file.Path] = true
		fmt.Fprintf(&canonical, "%s\x00%d\x00%s\n", file.Path, file.Bytes, file.SHA256)
	}
	if hashString(canonical.String()) != manifest.SnapshotID {
		return leanMetricsSnapshotManifest{}, errors.New("book: Lean metrics snapshot ID does not match its file list")
	}
	for _, required := range []string{"source.lean", "instrumented.lean", "metrics-helper.lean", "lake-manifest.json", "lean-toolchain"} {
		if !seen[required] {
			return leanMetricsSnapshotManifest{}, fmt.Errorf("book: Lean metrics snapshot is missing %s", required)
		}
	}
	return manifest, nil
}

func validateLeanMetricsExecution(
	metrics leanMetricsReceipt,
	run leanMetricsRunReceipt,
	request leanMetricsRunRequest,
	manifest leanMetricsSnapshotManifest,
	stdout []byte,
	stderr []byte,
) error {
	if run.SourcePath != metrics.SourcePath || run.SourceSHA256 != metrics.SourceSHA256 || run.Declaration != metrics.Declaration ||
		run.SnapshotID != metrics.SnapshotID || run.SnapshotManifestPath != metrics.SnapshotManifestPath || run.SnapshotManifestSHA256 != metrics.SnapshotManifestSHA256 ||
		run.InstrumentedSourceSHA256 != metrics.InstrumentedSourceSHA || run.MetricsHelperSHA256 != metrics.MetricsHelperSHA256 ||
		run.StdoutSHA256 != metrics.StdoutSHA256 || run.StderrSHA256 != metrics.StderrSHA256 ||
		run.RunRequestPath != metrics.RunRequestPath || run.RunRequestSHA256 != metrics.RunRequestSHA256 ||
		run.OrchestratorScriptSHA256 != metrics.OrchestratorScriptSHA256 || run.RuntimeScriptSHA256 != metrics.RuntimeScriptSHA256 {
		return errors.New("book: Lean metrics run receipt does not match the metrics receipt")
	}
	if request.SnapshotID != run.SnapshotID || request.SnapshotManifestSHA256 != run.SnapshotManifestSHA256 ||
		request.SourcePath != run.SourcePath || request.SourceSHA256 != run.SourceSHA256 || request.Declaration != run.Declaration ||
		request.InstrumentedSourceSHA256 != run.InstrumentedSourceSHA256 || request.MetricsHelperSHA256 != run.MetricsHelperSHA256 ||
		request.OrchestratorScriptSHA256 != run.OrchestratorScriptSHA256 || request.RuntimeScriptSHA256 != run.RuntimeScriptSHA256 ||
		request.ProjectLakeManifestSHA256 != run.Configuration.ProjectLakeManifestSHA || request.MathlibLakeManifestSHA256 != run.Configuration.MathlibLakeManifestSHA ||
		!reflect.DeepEqual(request.Configuration, run.Configuration) {
		return errors.New("book: Lean metrics run request does not match the executed run receipt")
	}
	if manifest.SnapshotID != metrics.SnapshotID || manifest.SourcePath != metrics.SourcePath || manifest.Declaration != metrics.Declaration {
		return errors.New("book: Lean metrics snapshot manifest does not match the metrics receipt")
	}
	manifestEntries := make(map[string]string, len(manifest.Files))
	for _, file := range manifest.Files {
		manifestEntries[file.Path] = file.SHA256
	}
	if manifestEntries["source.lean"] != metrics.SourceSHA256 || manifestEntries["instrumented.lean"] != metrics.InstrumentedSourceSHA ||
		manifestEntries["metrics-helper.lean"] != metrics.MetricsHelperSHA256 || manifestEntries[*metrics.ProjectLakefilePath] != *metrics.ProjectLakefileSHA256 ||
		manifestEntries["lake-manifest.json"] != *metrics.LakeManifestSHA256 || manifestEntries["lean-toolchain"] != *metrics.LeanToolchainSHA256 {
		return errors.New("book: Lean metrics snapshot file digests do not match the receipt configuration")
	}
	if request.ProjectLakefileSHA256 != manifestEntries[*metrics.ProjectLakefilePath] || request.ProjectLakeManifestSHA256 != *metrics.LakeManifestSHA256 ||
		request.LeanToolchainSHA256 != *metrics.LeanToolchainSHA256 || request.OrchestratorScriptSHA256 != metrics.OrchestratorScriptSHA256 ||
		request.RuntimeScriptSHA256 != metrics.RuntimeScriptSHA256 {
		return errors.New("book: Lean metrics launch request does not match the source snapshot or producer/runtime identities")
	}
	projectToolchainVersion := strings.TrimPrefix(*metrics.LeanToolchain, "leanprover/lean4:v")
	if run.Configuration.ProjectLakeManifestSHA != *metrics.LakeManifestSHA256 || run.Configuration.LeanToolchain != "Lean "+projectToolchainVersion || strings.TrimSpace(run.LeanVersion) != strings.TrimSpace(metrics.LeanVersion) {
		return errors.New("book: Lean metrics project configuration does not match the execution receipt")
	}
	if !boundSHA256(metrics.StdoutSHA256, stdout) || !boundSHA256(metrics.StderrSHA256, stderr) ||
		len(stdout) != run.StdoutBytes || len(stderr) != run.StderrBytes {
		return errors.New("book: Lean metrics raw output bytes do not match the pinned run receipt")
	}
	actualMetrics, err := parseLeanMetricsOutput(stdout, stderr)
	if err != nil {
		return err
	}
	if !reflect.DeepEqual(actualMetrics, metrics.Metrics) {
		return errors.New("book: Lean metrics receipt differs from the captured Lean metrics output")
	}
	if !reflect.DeepEqual(run.AxiomObservations, metrics.AxiomObservations) {
		return errors.New("book: Lean metrics axiom observations differ between receipts")
	}
	return nil
}

func parseLeanMetricsOutput(stdout, stderr []byte) (leanExprMetrics, error) {
	const marker = "MATHCASE_EXPR_METRICS "
	combined := string(stdout) + "\n" + string(stderr)
	var found []leanExprMetrics
	for _, line := range strings.Split(combined, "\n") {
		if at := strings.Index(line, marker); at >= 0 {
			var metric leanExprMetrics
			if err := decodeStrictMetricsJSON([]byte(strings.TrimSpace(line[at+len(marker):])), &metric, "captured Lean metrics output"); err != nil {
				return leanExprMetrics{}, err
			}
			found = append(found, metric)
		}
	}
	if len(found) != 1 {
		return leanExprMetrics{}, fmt.Errorf("book: captured Lean output contains %d metrics records, want one", len(found))
	}
	return found[0], nil
}

func decodeStrictMetricsJSON(data []byte, target any, label string) error {
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(target); err != nil {
		return fmt.Errorf("book: decode %s: %w", label, err)
	}
	if err := decoder.Decode(new(any)); !errors.Is(err, io.EOF) {
		return fmt.Errorf("book: %s contains trailing JSON", label)
	}
	return nil
}

func canonicalProjectPath(value string) bool {
	return value != "" && !strings.ContainsAny(value, "\\\x00\r\n") && !path.IsAbs(value) && path.Clean(value) == value && value != "." && value != ".." && !strings.HasPrefix(value, "../")
}

func canonicalSnapshotFilePath(value string) bool {
	return value != "" && !strings.ContainsAny(value, "\\\x00\r\n") && !path.IsAbs(value) && path.Clean(value) == value && value != "." && value != ".." && !strings.HasPrefix(value, "../")
}

func canonicalOutputPath(value string) bool {
	return value != "" && !strings.ContainsAny(value, "\\\x00\r\n") && !path.IsAbs(value) && path.Clean(value) == value && !strings.Contains(value, "/") && value != "." && value != ".."
}

func validImageID(value string) bool {
	return strings.HasPrefix(value, "sha256:") && validSHA256(strings.TrimPrefix(value, "sha256:"))
}

func validRevision(value string) bool {
	if len(value) != 40 {
		return false
	}
	_, err := hex.DecodeString(value)
	return err == nil && value == strings.ToLower(value)
}

func boundSHA256(expected string, data []byte) bool {
	if !validSHA256(expected) {
		return false
	}
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:]) == expected
}

func hashString(value string) string {
	digest := sha256.Sum256([]byte(value))
	return hex.EncodeToString(digest[:])
}

func validateLeanMetrics(topDeclaration string, metrics leanExprMetrics) error {
	if err := state.ValidateIdentifier("Lean metrics declaration", topDeclaration); err != nil {
		return err
	}
	if metrics.Schema != "mathcase-lean-expr-metrics-v2" || metrics.Declaration != topDeclaration {
		return errors.New("book: Lean metrics payload schema or declaration does not match its receipt")
	}
	if metrics.CoreExprNodes <= 0 || metrics.CoreExprDepth <= 0 || metrics.BinderNodes < 0 || metrics.ConstantReferenceNodes < 0 {
		return errors.New("book: Lean expression metrics contain invalid structural counts")
	}
	validKinds := []string{
		"applications", "lambdas", "forall_expressions", "let_expressions", "metadata", "projections",
		"bound_variables", "free_variables", "metavariables", "sorts", "constants", "literals",
	}
	if len(metrics.CoreExprNodesByKind) != len(validKinds) {
		return errors.New("book: Lean expression metrics have an incomplete node-kind breakdown")
	}
	total := 0
	for _, kind := range validKinds {
		count, exists := metrics.CoreExprNodesByKind[kind]
		if !exists || count < 0 || count > int(^uint(0)>>1)-total {
			return errors.New("book: Lean expression node-kind counts are invalid")
		}
		total += count
	}
	if total != metrics.CoreExprNodes ||
		metrics.BinderNodes != metrics.CoreExprNodesByKind["lambdas"]+metrics.CoreExprNodesByKind["forall_expressions"] ||
		metrics.ConstantReferenceNodes != metrics.CoreExprNodesByKind["constants"] {
		return errors.New("book: Lean structural totals do not match the node-kind breakdown")
	}
	return nil
}
