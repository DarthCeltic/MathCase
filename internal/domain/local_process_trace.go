package domain

import (
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"sort"
	"strings"
	"time"
)

const (
	LocalProcessTraceSchemaV1   = "mathcase-local-process-trace-v1"
	LocalProcessTraceSchemaV2   = "mathcase-local-process-trace-v2"
	LocalProcessHostUnisolated  = "HOST_PROCESS_UNISOLATED"
	LocalProcessDockerNoNetwork = "DOCKER_NO_NETWORK_CONFIGURED"
	LocalProcessCapturedIOOnly  = "CAPTURED_IO_ONLY"
	maxLocalProcessTraceOutput  = 256 << 10
)

// LocalProcessTrace preserves the bounded invocation and transcript for an
// existing local bridge. It is explicitly not proof evidence or an isolation
// receipt: host processes and their dependency environment are not sandboxed.
type LocalProcessTrace struct {
	SchemaVersion         string    `json:"schema_version"`
	ExecutionClass        string    `json:"execution_class"`
	Replayability         string    `json:"replayability"`
	ExecutablePath        string    `json:"executable_path"`
	ExecutableSHA256      string    `json:"executable_sha256"`
	ExecutableSHA256After string    `json:"executable_sha256_after,omitempty"`
	BridgePath            string    `json:"bridge_path"`
	BridgeSHA256          string    `json:"bridge_sha256"`
	BridgeSHA256After     string    `json:"bridge_sha256_after,omitempty"`
	WorkingDirectory      string    `json:"working_directory"`
	Arguments             []string  `json:"arguments"`
	ProcessID             int       `json:"process_id,omitempty"`
	StartedAt             time.Time `json:"started_at"`
	FinishedAt            time.Time `json:"finished_at"`
	// HostTimeoutNanos is the configured process-context deadline; HostElapsedNanos
	// uses a monotonic clock from launch until the process runner returns.
	// HostContextEnd is the context state observed on return, not a signal timestamp.
	HostTimeoutNanos               int64                          `json:"host_timeout_nanos,omitempty"`
	HostElapsedNanos               int64                          `json:"host_elapsed_nanos,omitempty"`
	HostContextEnd                 string                         `json:"host_context_end,omitempty"`
	HostTimeoutPhase               string                         `json:"host_timeout_phase,omitempty"`
	PantographSearchBudget         *PantographSearchBudgetProfile `json:"pantograph_search_budget,omitempty"`
	Termination                    string                         `json:"termination"`
	ExitCode                       int                            `json:"exit_code"`
	InputBase64                    []byte                         `json:"input_base64"`
	InputSHA256                    string                         `json:"input_sha256"`
	StdoutPrefixBase64             []byte                         `json:"stdout_prefix_base64"`
	StdoutSHA256                   string                         `json:"stdout_sha256"`
	StdoutCapturedSHA256           string                         `json:"stdout_captured_sha256"`
	StdoutBytesObserved            int64                          `json:"stdout_bytes_observed"`
	StdoutBytesCaptured            int64                          `json:"stdout_bytes_captured"`
	StderrPrefixBase64             []byte                         `json:"stderr_prefix_base64"`
	StderrSHA256                   string                         `json:"stderr_sha256"`
	StderrCapturedSHA256           string                         `json:"stderr_captured_sha256"`
	StderrBytesObserved            int64                          `json:"stderr_bytes_observed"`
	StderrBytesCaptured            int64                          `json:"stderr_bytes_captured"`
	OutputCaptureLimitBytes        int64                          `json:"output_capture_limit_bytes"`
	OutputTruncated                bool                           `json:"output_truncated"`
	CodeIdentityMatchesBeforeAfter bool                           `json:"code_identity_matches_before_after"`
	RuntimeIdentity                *RuntimeIdentity               `json:"runtime_identity,omitempty"`
	ContainerExecution             *ContainerExecutionIdentity    `json:"container_execution,omitempty"`
}

// ContainerExecutionIdentity records the Docker settings that the host
// launcher requested. It is configuration evidence, not a signed engine
// attestation.
type ContainerExecutionIdentity struct {
	ImageID                string `json:"image_id"`
	ContainerName          string `json:"container_name"`
	NetworkMode            string `json:"network_mode"`
	PullPolicy             string `json:"pull_policy"`
	ReadOnlyRoot           bool   `json:"read_only_root"`
	User                   string `json:"user"`
	DroppedAllCapabilities bool   `json:"dropped_all_capabilities"`
	NoNewPrivileges        bool   `json:"no_new_privileges"`
	CPULimit               string `json:"cpu_limit"`
	MemoryLimit            string `json:"memory_limit"`
	PidsLimit              int    `json:"pids_limit"`
	CleanupAttempted       bool   `json:"cleanup_attempted"`
	CleanupSucceeded       bool   `json:"cleanup_succeeded"`
	CleanupExitCode        *int   `json:"cleanup_exit_code,omitempty"`
	CleanupError           string `json:"cleanup_error,omitempty"`
}

// RuntimePackageIdentity records installed Python distributions by canonical
// name, version, optional VCS revision, and direct-URL metadata digest.
type RuntimePackageIdentity struct {
	Name            string `json:"name"`
	Version         string `json:"version"`
	SourceRevision  string `json:"source_revision,omitempty"`
	DirectURLSHA256 string `json:"direct_url_sha256,omitempty"`
}

// RuntimeArtifactIdentity binds a relevant runtime file or tree to a digest.
type RuntimeArtifactIdentity struct {
	Role   string `json:"role"`
	Path   string `json:"path"`
	SHA256 string `json:"sha256"`
}

// RuntimeIdentity captures package inventory and the specific runtime files
// used by a local bridge. It is descriptive process provenance, not isolation
// evidence or proof validation.
type RuntimeIdentity struct {
	SchemaVersion          string                    `json:"schema_version"`
	RuntimeKind            string                    `json:"runtime_kind"`
	PythonImplementation   string                    `json:"python_implementation"`
	PythonVersion          string                    `json:"python_version"`
	PackageInventorySHA256 string                    `json:"package_inventory_sha256"`
	Packages               []RuntimePackageIdentity  `json:"packages"`
	Artifacts              []RuntimeArtifactIdentity `json:"artifacts"`
}

// Validate checks package ordering and all inventory/artifact digests.
func (r RuntimeIdentity) Validate() error {
	if r.SchemaVersion != "mathcase-python-runtime-identity-v1" {
		return fmt.Errorf("runtime identity: unsupported schema %q", r.SchemaVersion)
	}
	if r.RuntimeKind != "pantograph-search" && r.RuntimeKind != "pantograph-replay" && r.RuntimeKind != "z3-smt" {
		return fmt.Errorf("runtime identity: unsupported runtime kind %q", r.RuntimeKind)
	}
	for name, value := range map[string]string{
		"Python implementation": r.PythonImplementation,
		"Python version":        r.PythonVersion,
	} {
		if strings.TrimSpace(value) == "" || strings.ContainsAny(value, "\x00\r\n") {
			return fmt.Errorf("runtime identity: %s is missing or malformed", name)
		}
	}
	if !validProcessDigest(r.PackageInventorySHA256) {
		return errors.New("runtime identity: package inventory is missing or malformed")
	}
	if !sort.SliceIsSorted(r.Packages, func(i, j int) bool {
		return runtimePackageKey(r.Packages[i]) < runtimePackageKey(r.Packages[j])
	}) {
		return errors.New("runtime identity: package inventory is not canonically sorted")
	}
	for index, pkg := range r.Packages {
		if pkg.Name == "" || strings.ToLower(pkg.Name) != pkg.Name || strings.TrimSpace(pkg.Version) == "" ||
			strings.ContainsAny(pkg.Name+pkg.Version+pkg.SourceRevision, "\x00\r\n") {
			return fmt.Errorf("runtime identity: package entry %d is malformed", index)
		}
		if index > 0 && runtimePackageKey(r.Packages[index-1]) == runtimePackageKey(pkg) {
			return fmt.Errorf("runtime identity: duplicate package entry %q", pkg.Name)
		}
		if pkg.DirectURLSHA256 != "" && !validProcessDigest(pkg.DirectURLSHA256) {
			return fmt.Errorf("runtime identity: package %q has an invalid direct-URL digest", pkg.Name)
		}
	}
	if runtimePackageInventoryDigest(r.Packages) != r.PackageInventorySHA256 {
		return errors.New("runtime identity: package inventory digest does not match entries")
	}
	requiredArtifacts := []string{"python_executable"}
	switch r.RuntimeKind {
	case "pantograph-search", "pantograph-replay":
		requiredArtifacts = append(requiredArtifacts,
			"pantograph_module_tree", "pantograph_backend", "lean_toolchain", "lake_manifest",
			"lake_configuration", "toolchain_lean", "toolchain_lake", "derived_value:lean_path",
		)
		if !r.HasPackage("pantograph") {
			return errors.New("runtime identity: Pantograph distribution is absent from the package inventory")
		}
	case "z3-smt":
		requiredArtifacts = append(requiredArtifacts, "z3_requirements")
	}
	seenArtifacts := make(map[string]struct{}, len(r.Artifacts))
	artifactRoles := make(map[string]struct{}, len(r.Artifacts))
	for index, artifact := range r.Artifacts {
		if strings.TrimSpace(artifact.Role) == "" || strings.TrimSpace(artifact.Path) == "" ||
			strings.ContainsAny(artifact.Role+artifact.Path, "\x00\r\n") || !validProcessDigest(artifact.SHA256) {
			return fmt.Errorf("runtime identity: artifact entry %d is malformed", index)
		}
		key := artifact.Role + "\x00" + artifact.Path
		if _, exists := seenArtifacts[key]; exists {
			return fmt.Errorf("runtime identity: duplicate artifact %q", artifact.Role)
		}
		seenArtifacts[key] = struct{}{}
		artifactRoles[artifact.Role] = struct{}{}
	}
	for _, role := range requiredArtifacts {
		if _, exists := artifactRoles[role]; !exists {
			return fmt.Errorf("runtime identity: required artifact role %q is missing", role)
		}
	}
	return nil
}

// HasPackage reports whether the canonical installed-distribution inventory
// contains the named package.
func (r RuntimeIdentity) HasPackage(name string) bool {
	for _, pkg := range r.Packages {
		if pkg.Name == name {
			return true
		}
	}
	return false
}

// HasArtifactRole reports whether the runtime identity includes an artifact
// with the given role.
func (r RuntimeIdentity) HasArtifactRole(role string) bool {
	for _, artifact := range r.Artifacts {
		if artifact.Role == role {
			return true
		}
	}
	return false
}

// Validate checks trace self-consistency and keeps its evidence class explicit.
func (t LocalProcessTrace) Validate() error {
	if t.SchemaVersion != LocalProcessTraceSchemaV1 && t.SchemaVersion != LocalProcessTraceSchemaV2 {
		return fmt.Errorf("local process trace: unsupported schema %q", t.SchemaVersion)
	}
	if t.SchemaVersion == LocalProcessTraceSchemaV2 {
		if t.HostTimeoutNanos <= 0 || t.HostElapsedNanos < 0 {
			return errors.New("local process trace: version 2 requires a positive timeout and nonnegative monotonic elapsed time")
		}
		switch t.HostContextEnd {
		case "NONE", "DEADLINE_EXCEEDED", "CANCELLED":
		default:
			return errors.New("local process trace: version 2 has an unsupported host context end state")
		}
		if t.Termination == "TIMED_OUT" && t.HostContextEnd != "DEADLINE_EXCEEDED" {
			return errors.New("local process trace: timeout termination does not match the host context end state")
		}
		if t.Termination == "CANCELLED" && t.HostContextEnd != "CANCELLED" {
			return errors.New("local process trace: cancellation termination does not match the host context end state")
		}
		switch t.HostTimeoutPhase {
		case "", "container_setup", "host_process", "caller_deadline":
		default:
			return errors.New("local process trace: unsupported host timeout phase")
		}
		if t.HostTimeoutPhase != "" && t.Termination != "TIMED_OUT" {
			return errors.New("local process trace: timeout phase is present for a non-timeout termination")
		}
		if t.PantographSearchBudget != nil {
			if err := t.PantographSearchBudget.Validate(); err != nil {
				return err
			}
			if t.HostTimeoutNanos != t.PantographSearchBudget.HostProcessNanos {
				return errors.New("local process trace: host timeout does not match the Pantograph search budget profile")
			}
		}
	} else if t.HostTimeoutNanos != 0 || t.HostElapsedNanos != 0 || t.HostContextEnd != "" || t.HostTimeoutPhase != "" {
		return errors.New("local process trace: version 1 cannot carry version 2 host timing fields")
	} else if t.PantographSearchBudget != nil {
		return errors.New("local process trace: version 1 cannot carry a Pantograph search budget profile")
	}
	if t.Replayability != LocalProcessCapturedIOOnly {
		return errors.New("local process trace: execution and replayability classes must remain explicit")
	}
	switch t.ExecutionClass {
	case LocalProcessHostUnisolated:
		if t.ContainerExecution != nil {
			return errors.New("local process trace: host execution cannot claim container settings")
		}
	case LocalProcessDockerNoNetwork:
		if t.ContainerExecution == nil {
			return errors.New("local process trace: Docker execution requires its requested container settings")
		}
		if err := t.ContainerExecution.Validate(t.Arguments); err != nil {
			return err
		}
	default:
		return errors.New("local process trace: execution class is unsupported")
	}
	for name, value := range map[string]string{
		"executable path":   t.ExecutablePath,
		"bridge path":       t.BridgePath,
		"working directory": t.WorkingDirectory,
	} {
		if strings.TrimSpace(value) == "" || strings.ContainsAny(value, "\x00\r\n") {
			return fmt.Errorf("local process trace: %s is missing or malformed", name)
		}
	}
	for name, value := range map[string]string{
		"executable digest":     t.ExecutableSHA256,
		"bridge digest":         t.BridgeSHA256,
		"input digest":          t.InputSHA256,
		"stdout digest":         t.StdoutSHA256,
		"stdout capture digest": t.StdoutCapturedSHA256,
		"stderr digest":         t.StderrSHA256,
		"stderr capture digest": t.StderrCapturedSHA256,
	} {
		if !validProcessDigest(value) {
			return fmt.Errorf("local process trace: %s is not canonical SHA-256 hex", name)
		}
	}
	if t.ExecutableSHA256After != "" && !validProcessDigest(t.ExecutableSHA256After) {
		return errors.New("local process trace: post-run executable digest is malformed")
	}
	if t.BridgeSHA256After != "" && !validProcessDigest(t.BridgeSHA256After) {
		return errors.New("local process trace: post-run bridge digest is malformed")
	}
	if len(t.InputBase64) == 0 || int64(len(t.InputBase64)) > 128<<10 || processDigest(t.InputBase64) != t.InputSHA256 {
		return errors.New("local process trace: captured input is missing, oversized, or does not match its digest")
	}
	if len(t.Arguments) == 0 || t.OutputCaptureLimitBytes < 1 || t.OutputCaptureLimitBytes > maxLocalProcessTraceOutput ||
		int64(len(t.StdoutPrefixBase64)) != t.StdoutBytesCaptured || int64(len(t.StderrPrefixBase64)) != t.StderrBytesCaptured {
		return errors.New("local process trace: captured output lengths are inconsistent")
	}
	if t.StdoutBytesObserved < t.StdoutBytesCaptured || t.StderrBytesObserved < t.StderrBytesCaptured ||
		t.StdoutBytesCaptured > t.OutputCaptureLimitBytes || t.StderrBytesCaptured > t.OutputCaptureLimitBytes {
		return errors.New("local process trace: output byte counts are outside their declared limits")
	}
	if processDigest(t.StdoutPrefixBase64) != t.StdoutCapturedSHA256 || processDigest(t.StderrPrefixBase64) != t.StderrCapturedSHA256 {
		return errors.New("local process trace: captured output does not match its digest")
	}
	if t.OutputTruncated != (t.StdoutBytesObserved > t.StdoutBytesCaptured || t.StderrBytesObserved > t.StderrBytesCaptured) {
		return errors.New("local process trace: truncation flag does not match observed output")
	}
	if !t.OutputTruncated && (t.StdoutSHA256 != t.StdoutCapturedSHA256 || t.StderrSHA256 != t.StderrCapturedSHA256) {
		return errors.New("local process trace: complete output digest does not match captured bytes")
	}
	if t.StartedAt.IsZero() || t.FinishedAt.IsZero() || t.FinishedAt.Before(t.StartedAt) {
		return errors.New("local process trace: invalid process timestamps")
	}
	switch t.Termination {
	case "EXITED":
		if t.ExitCode < 0 || t.ProcessID == 0 {
			return errors.New("local process trace: exited process requires an exit code and process ID")
		}
	case "TIMED_OUT", "CANCELLED", "OUTPUT_LIMIT", "START_FAILED":
	default:
		return fmt.Errorf("local process trace: unsupported termination %q", t.Termination)
	}
	if t.ProcessID < 0 {
		return errors.New("local process trace: process ID cannot be negative")
	}
	if t.Termination == "START_FAILED" && t.ProcessID != 0 {
		return errors.New("local process trace: failed process start cannot have a process ID")
	}
	if t.CodeIdentityMatchesBeforeAfter && (t.ExecutableSHA256After != t.ExecutableSHA256 || t.BridgeSHA256After != t.BridgeSHA256) {
		return errors.New("local process trace: code identity boundary comparison does not match before/after digests")
	}
	if t.RuntimeIdentity != nil {
		if err := t.RuntimeIdentity.Validate(); err != nil {
			return err
		}
	}
	return nil
}

// Validate requires the exact network-disabled, immutable-image profile used
// by the Pantograph container runner, and confirms the corresponding argv is
// present in the captured invocation.
func (c ContainerExecutionIdentity) Validate(arguments []string) error {
	if len(c.ImageID) != len("sha256:")+64 || !strings.HasPrefix(c.ImageID, "sha256:") ||
		!validProcessDigest(strings.TrimPrefix(c.ImageID, "sha256:")) {
		return errors.New("local process trace: container image ID is not immutable SHA-256")
	}
	if strings.TrimSpace(c.ContainerName) == "" || strings.ContainsAny(c.ContainerName, "\x00\r\n") ||
		c.NetworkMode != "none" || c.PullPolicy != "never" || !c.ReadOnlyRoot || c.User != "65532:65532" ||
		!c.DroppedAllCapabilities || !c.NoNewPrivileges || c.CPULimit != "2" || c.MemoryLimit != "4g" || c.PidsLimit != 128 {
		return errors.New("local process trace: container settings do not match the pinned Pantograph isolation profile")
	}
	for _, required := range []string{
		"--interactive", "--pull=never", "--network=none", "--read-only", "--user=65532:65532", "--cap-drop=ALL",
		"--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128", c.ImageID,
		"--name", c.ContainerName,
	} {
		if !containsString(arguments, required) {
			return fmt.Errorf("local process trace: captured Docker argv is missing %q", required)
		}
	}
	if c.CleanupSucceeded && !c.CleanupAttempted {
		return errors.New("local process trace: Docker cleanup cannot succeed without an attempt")
	}
	if c.CleanupExitCode != nil && !c.CleanupAttempted {
		return errors.New("local process trace: Docker cleanup exit code has no attempt")
	}
	if c.CleanupError != "" && !c.CleanupAttempted {
		return errors.New("local process trace: Docker cleanup error has no attempt")
	}
	return nil
}

func runtimePackageKey(pkg RuntimePackageIdentity) string {
	return pkg.Name + "\x00" + pkg.Version + "\x00" + pkg.SourceRevision + "\x00" + pkg.DirectURLSHA256
}

func runtimePackageInventoryDigest(packages []RuntimePackageIdentity) string {
	var canonical strings.Builder
	for _, pkg := range packages {
		canonical.WriteString(runtimePackageKey(pkg))
		canonical.WriteByte('\n')
	}
	return processDigest([]byte(canonical.String()))
}

func validProcessDigest(value string) bool {
	if len(value) != sha256.Size*2 || strings.ToLower(value) != value {
		return false
	}
	_, err := hex.DecodeString(value)
	return err == nil
}

func processDigest(value []byte) string {
	digest := sha256.Sum256(value)
	return hex.EncodeToString(digest[:])
}
