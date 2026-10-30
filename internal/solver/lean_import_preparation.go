package solver

import (
	"bytes"
	"context"
	"crypto/sha256"
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	"errors"
	"io"
	"os"
	"path"
	"path/filepath"
	"reflect"
	"strings"
	"time"
)

const (
	leanImportPreparationSchema = "mathcase-lean-import-preparation-v1"
	leanImportConsumptionSchema = "mathcase-lean-import-consumption-v1"
	leanImportEnvironmentSchema = "mathcase-lean-import-environment-v1"
	leanImportImage             = "sha256:ec3377f34aaf0b83502e6755d5403ca36382adb99e4c7ab1470d42a1ac5abdc7"
	leanImportRevision          = "819816b2e0a3bf405af45ae5c7af2491d8f5bee6"
	// Shell.lean defaultTrustLevel is the pinned believer level plus one,
	// not runFrontend's API default zero. No trust/options flags are changed.
	leanImportOptions      = "PINNED_SHELL_DEFAULT_BELIEVER_PLUS_ONE_V1"
	leanImportHeaderLimit  = 128 << 20
	leanImportDepsLimit    = 2 << 20
	leanImportReceiptLimit = 1 << 20
	leanImportLifetime     = 24 * time.Hour
	leanImportSourceName   = "WarmImports.lean"
	leanImportSnapshotName = "imports.snap"
)

// LeanImportPreparationReceipt describes task-independent import preparation.
// It makes no claim about a proposition or candidate proof.
type LeanImportPreparationReceipt struct {
	SchemaVersion        string               `json:"schema_version"`
	EvidenceID           string               `json:"evidence_id"`
	RecordedAtUTC        time.Time            `json:"recorded_at_utc"`
	ExpiresAtUTC         time.Time            `json:"expires_at_utc"`
	EnvironmentSHA256    string               `json:"environment_sha256"`
	Image                string               `json:"image"`
	ImageID              string               `json:"image_id"`
	ManifestPath         string               `json:"manifest_path"`
	ManifestSHA256       string               `json:"manifest_sha256"`
	SnapshotID           string               `json:"snapshot_id"`
	Toolchain            string               `json:"toolchain"`
	LeanRevision         string               `json:"lean_revision"`
	Imports              []string             `json:"imports"`
	ModuleSearchPath     []string             `json:"module_search_path"`
	CompilerOptions      string               `json:"compiler_options"`
	ProducerSource       string               `json:"producer_source"`
	ProducerSourceSHA256 string               `json:"producer_source_sha256"`
	WorkerSource         []byte               `json:"worker_source_base64"`
	WorkerSourceSHA256   string               `json:"worker_source_sha256"`
	HeaderSHA256         string               `json:"header_sha256"`
	HeaderBytes          int64                `json:"header_bytes"`
	HeaderPrefix         []byte               `json:"header_prefix_base64"`
	ClosureCount         uint32               `json:"closure_count"`
	Libraries            []string             `json:"libraries"`
	DependenciesSHA256   string               `json:"dependencies_sha256"`
	DependenciesBytes    int64                `json:"dependencies_bytes"`
	Status               string               `json:"status"`
	ExitCode             int                  `json:"exit_code"`
	OutputTruncated      bool                 `json:"output_truncated"`
	StdoutBytes          int64                `json:"stdout_bytes"`
	StderrBytes          int64                `json:"stderr_bytes"`
	StdoutSHA256         string               `json:"stdout_sha256"`
	StderrSHA256         string               `json:"stderr_sha256"`
	SandboxExecution     LeanSandboxExecution `json:"sandbox_execution"`
}

// LeanImportConsumptionEvidence retains the producer receipt and dependency
// bytes so historical proof receipts do not depend on transient workspaces or
// the preparation's eligibility at the time a reader reopens the receipt.
type LeanImportConsumptionEvidence struct {
	SchemaVersion         string `json:"schema_version"`
	ProducerReceipt       []byte `json:"producer_receipt_base64"`
	ProducerReceiptSHA256 string `json:"producer_receipt_sha256"`
	Dependencies          []byte `json:"dependencies_base64"`
	HeaderCopyPath        string `json:"header_copy_path"`
	DependenciesCopyPath  string `json:"dependencies_copy_path"`
	ConsumerSourceSHA256  string `json:"consumer_source_sha256"`
}

type preparedLeanImports struct {
	evidence LeanImportConsumptionEvidence
}

func leanImportSource(imports []string) string {
	return "import " + strings.Join(imports, "\nimport ") + "\n\n"
}

func leanImportSupported(runtime leanSnapshotRuntime, imports []string) bool {
	return runtime.Image == leanImportImage && runtime.Manifest.Toolchain == defaultLeanToolchain &&
		reflect.DeepEqual(imports, []string{"Mathlib.Data.Nat.Prime.Basic"})
}

func leanImportEnvironment(runtime leanSnapshotRuntime, imports []string, workerSHA string) string {
	source := sha256.Sum256([]byte(leanImportSource(imports)))
	data, _ := json.Marshal(map[string]any{
		"schema_version": leanImportEnvironmentSchema, "image": runtime.Image,
		"manifest_path": filepath.ToSlash(runtime.ManifestPath), "manifest_sha256": runtime.ManifestSHA256,
		"snapshot_id": runtime.Manifest.SnapshotID, "toolchain": runtime.Manifest.Toolchain,
		"lean_revision": leanImportRevision, "imports": imports, "module_search_path": runtime.Manifest.ModuleSearchPath,
		"producer_source_sha256": hex.EncodeToString(source[:]), "worker_source_sha256": workerSHA,
		"compiler_options": leanImportOptions, "header_limit_bytes": leanImportHeaderLimit,
		"dependencies_limit_bytes": leanImportDepsLimit, "receipt_limit_bytes": leanImportReceiptLimit,
		"timeout_seconds": 60, "memory": "4g", "cpus": "2", "pids": "128",
	})
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:])
}

func leanImportNoLinks(root, filename string) error {
	root, err := filepath.Abs(root)
	if err != nil {
		return err
	}
	filename, err = filepath.Abs(filename)
	if err != nil {
		return err
	}
	rel, err := filepath.Rel(root, filename)
	if err != nil || rel == ".." || strings.HasPrefix(rel, ".."+string(filepath.Separator)) || filepath.IsAbs(rel) {
		return errors.New("import preparation is outside its private owner store")
	}
	for current := filename; ; current = filepath.Dir(current) {
		info, err := os.Lstat(current)
		if err != nil || info.Mode()&os.ModeSymlink != 0 {
			return errors.New("import preparation path is unavailable or linked")
		}
		if strings.EqualFold(current, root) {
			break
		}
	}
	return nil
}

func readLeanImportFile(ctx context.Context, filename string, limit int64) ([]byte, error) {
	if err := ctx.Err(); err != nil {
		return nil, err
	}
	info, err := os.Lstat(filename)
	if err != nil || !info.Mode().IsRegular() || info.Mode()&os.ModeSymlink != 0 || info.Size() < 1 || info.Size() > limit {
		return nil, errors.New("import preparation file is not a bounded non-link regular file")
	}
	f, err := os.Open(filename)
	if err != nil {
		return nil, err
	}
	defer f.Close()
	before, err := f.Stat()
	if err != nil || !os.SameFile(info, before) {
		return nil, errors.New("import preparation file identity changed")
	}
	var result bytes.Buffer
	buffer := make([]byte, 64<<10)
	for {
		if err := ctx.Err(); err != nil {
			return nil, err
		}
		n, readErr := f.Read(buffer)
		if int64(result.Len()+n) > limit {
			return nil, errors.New("import preparation file exceeds its bound")
		}
		result.Write(buffer[:n])
		if readErr == io.EOF {
			break
		}
		if readErr != nil {
			return nil, readErr
		}
	}
	after, err := f.Stat()
	if err != nil || !os.SameFile(before, after) || before.Size() != after.Size() || !before.ModTime().Equal(after.ModTime()) || int64(result.Len()) != before.Size() {
		return nil, errors.New("import preparation changed while reading")
	}
	return result.Bytes(), nil
}

func leanImportSHA(data []byte) string {
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:])
}

func writeLeanImportCopy(ctx context.Context, filename string, data []byte) (err error) {
	f, err := os.OpenFile(filename, os.O_CREATE|os.O_EXCL|os.O_WRONLY, 0o600)
	if err != nil {
		return err
	}
	complete := false
	defer func() {
		_ = f.Close()
		if !complete {
			_ = os.Remove(filename)
		}
	}()
	for offset := 0; offset < len(data); {
		if err := ctx.Err(); err != nil {
			return err
		}
		end := min(offset+64<<10, len(data))
		n, err := f.Write(data[offset:end])
		if err != nil {
			return err
		}
		if n == 0 {
			return io.ErrShortWrite
		}
		offset += n
	}
	if err := ctx.Err(); err != nil {
		return err
	}
	if err := f.Close(); err != nil {
		return err
	}
	if err := os.Chmod(filename, 0o444); err != nil {
		return err
	}
	complete = true
	return nil
}

func decodeLeanImportReceipt(data []byte) (LeanImportPreparationReceipt, error) {
	var receipt LeanImportPreparationReceipt
	if len(data) == 0 || len(data) > leanImportReceiptLimit {
		return receipt, errors.New("import preparation receipt exceeds its bound")
	}
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(&receipt); err != nil {
		return receipt, err
	}
	return receipt, ensureJSONEOF(decoder)
}

func validateLeanImportReceipt(receipt LeanImportPreparationReceipt, runtime leanSnapshotRuntime, imports []string, at time.Time) error {
	if !leanImportSupported(runtime, imports) || receipt.SchemaVersion != leanImportPreparationSchema ||
		len(receipt.EvidenceID) != 39 || !strings.HasPrefix(receipt.EvidenceID, "import-") ||
		receipt.Image != runtime.Image || receipt.ImageID != runtime.Image || receipt.ManifestPath != runtime.ManifestPath ||
		receipt.ManifestSHA256 != runtime.ManifestSHA256 || receipt.SnapshotID != runtime.Manifest.SnapshotID ||
		receipt.Toolchain != runtime.Manifest.Toolchain || receipt.LeanRevision != leanImportRevision ||
		!reflect.DeepEqual(receipt.Imports, imports) || !reflect.DeepEqual(receipt.ModuleSearchPath, runtime.Manifest.ModuleSearchPath) ||
		receipt.CompilerOptions != leanImportOptions {
		return errors.New("import preparation does not match the exact supported environment")
	}
	if _, err := hex.DecodeString(strings.TrimPrefix(receipt.EvidenceID, "import-")); err != nil {
		return errors.New("invalid import preparation evidence ID")
	}
	if receipt.RecordedAtUTC.IsZero() || at.Before(receipt.RecordedAtUTC) || !receipt.ExpiresAtUTC.Equal(receipt.RecordedAtUTC.Add(leanImportLifetime)) || at.After(receipt.ExpiresAtUTC) {
		return errors.New("import preparation is future-dated or expired at consumption")
	}
	if receipt.ProducerSource != leanImportSource(imports) || receipt.ProducerSourceSHA256 != leanImportSHA([]byte(receipt.ProducerSource)) ||
		len(receipt.WorkerSource) == 0 || len(receipt.WorkerSource) > 512<<10 || receipt.WorkerSourceSHA256 != leanImportSHA(receipt.WorkerSource) ||
		receipt.EnvironmentSHA256 != leanImportEnvironment(runtime, imports, receipt.WorkerSourceSHA256) {
		return errors.New("import preparation producer source/config identity is invalid")
	}
	if receipt.Status != "PASSED" || receipt.ExitCode != 0 || receipt.OutputTruncated || receipt.StdoutBytes != 0 || receipt.StderrBytes != 0 ||
		receipt.StdoutSHA256 != leanImportSHA(nil) || receipt.StderrSHA256 != leanImportSHA(nil) ||
		!validSHA256(receipt.HeaderSHA256) || receipt.HeaderBytes <= 96 || receipt.HeaderBytes > leanImportHeaderLimit ||
		!validSHA256(receipt.DependenciesSHA256) || receipt.DependenciesBytes <= 0 || receipt.DependenciesBytes > leanImportDepsLimit {
		return errors.New("import preparation did not complete with bounded successful evidence")
	}
	if err := validateLeanImportHeaderDescription(receipt); err != nil {
		return err
	}
	execution := receipt.SandboxExecution
	if execution.ImportPreparation != nil || execution.ExecutionMode != LeanExecutionModeDirect || execution.DockerExecutable != runtime.Docker || execution.ContainerName == "" ||
		execution.StartedAtUTC.IsZero() || execution.FinishedAtUTC.Before(execution.StartedAtUTC) || receipt.RecordedAtUTC.Before(execution.FinishedAtUTC) ||
		execution.FinishedAtUTC.Sub(execution.StartedAtUTC) > 65*time.Second || execution.ExitCode == nil || *execution.ExitCode != 0 || execution.TimedOut || execution.CleanupAttempted {
		return errors.New("import preparation lacks a completed producer execution")
	}
	return validateLeanImportProducerInvocation(execution, runtime, receipt.EnvironmentSHA256)
}

func validateLeanImportHeaderDescription(receipt LeanImportPreparationReceipt) error {
	prefix := receipt.HeaderPrefix
	if len(prefix) != 96 || string(prefix[:5]) != "olean" || prefix[5] != 3 || prefix[6] != 1 ||
		string(bytes.TrimRight(prefix[7:40], "\x00")) != "4.33.1" || string(prefix[40:80]) != leanImportRevision {
		return errors.New("import preparation has an unsupported native header")
	}
	payload := binary.LittleEndian.Uint64(prefix[88:96])
	if payload < 8 || payload > leanImportHeaderLimit || receipt.ClosureCount > leanImportHeaderLimit/8 || len(receipt.Libraries) != 1 ||
		(receipt.Libraries[0] != "/opt/lean/bin/../lib/lean/libleanshared.so" && receipt.Libraries[0] != "/opt/lean/lib/lean/libleanshared.so") {
		return errors.New("import preparation has invalid native data/library bounds")
	}
	expected := uint64(96) + payload + 4 + uint64(receipt.ClosureCount)*8 + 4
	for _, library := range receipt.Libraries {
		expected += 12 + uint64(len(library))
	}
	if expected != uint64(receipt.HeaderBytes) {
		return errors.New("import preparation native layout size is inconsistent")
	}
	return nil
}

func validateLeanImportHeader(data []byte, receipt LeanImportPreparationReceipt) error {
	if int64(len(data)) != receipt.HeaderBytes || leanImportSHA(data) != receipt.HeaderSHA256 || len(data) < 96 || !bytes.Equal(data[:96], receipt.HeaderPrefix) {
		return errors.New("import preparation header bytes changed")
	}
	payload := binary.LittleEndian.Uint64(data[88:96])
	offset := uint64(96) + payload
	if offset+4 > uint64(len(data)) {
		return errors.New("import preparation native payload is truncated")
	}
	count := binary.LittleEndian.Uint32(data[offset : offset+4])
	offset += 4
	if count != receipt.ClosureCount || uint64(count)*8 > uint64(len(data))-offset {
		return errors.New("import preparation closure table is truncated")
	}
	for i := uint32(0); i < count; i++ {
		location := binary.LittleEndian.Uint64(data[offset : offset+8])
		offset += 8
		if payload < 8 || location > payload-8 {
			return errors.New("import preparation closure offset exceeds its payload")
		}
	}
	if offset+4 > uint64(len(data)) || binary.LittleEndian.Uint32(data[offset:offset+4]) != uint32(len(receipt.Libraries)) {
		return errors.New("import preparation library count differs")
	}
	offset += 4
	for _, expected := range receipt.Libraries {
		if offset+12 > uint64(len(data)) {
			return errors.New("import preparation library table is truncated")
		}
		size := uint64(binary.LittleEndian.Uint32(data[offset+8 : offset+12]))
		offset += 12
		if size > 4096 || size > uint64(len(data))-offset || string(data[offset:offset+size]) != expected {
			return errors.New("import preparation library identity differs")
		}
		offset += size
	}
	if offset != uint64(len(data)) {
		return errors.New("import preparation has unexpected trailing data")
	}
	return nil
}

func validateLeanImportDependencies(data []byte, receipt LeanImportPreparationReceipt, manifest LeanSnapshotManifest) error {
	if int64(len(data)) != receipt.DependenciesBytes || leanImportSHA(data) != receipt.DependenciesSHA256 {
		return errors.New("import preparation dependencies changed")
	}
	var dependencies []map[string]string
	if err := json.Unmarshal(data, &dependencies); err != nil || len(dependencies) == 0 || len(dependencies) > 20000 {
		return errors.New("invalid bounded import dependency JSON")
	}
	file, err := os.Open(manifest.InventoryPath)
	if err != nil {
		return errors.New("cannot reopen qualified import dependency inventory")
	}
	defer file.Close()
	info, err := file.Stat()
	if err != nil || !info.Mode().IsRegular() || info.Size() > maxLeanSnapshotManifestBytes {
		return errors.New("qualified import dependency inventory exceeds its bound")
	}
	inventory, err := io.ReadAll(io.LimitReader(file, maxLeanSnapshotManifestBytes+1))
	if err != nil || len(inventory) > maxLeanSnapshotManifestBytes || leanImportSHA(inventory) != manifest.InventorySHA256 {
		return errors.New("qualified import dependency inventory changed")
	}
	paths := make(map[string]bool)
	for _, line := range bytes.Split(inventory, []byte{'\n'}) {
		var entry LeanSnapshotInventoryEntry
		if json.Unmarshal(line, &entry) == nil && entry.Path != "" {
			paths["/mathcase/project/"+entry.Path] = true
		}
	}
	suffixes := map[string]string{"olean": ".olean", "oleanServer": ".olean.server", "oleanPrivate": ".olean.private", "ir": ".ir", "irSig": ".ir.sig"}
	for _, dependency := range dependencies {
		if dependency["olean"] == "" {
			return errors.New("import dependency omits its module")
		}
		for kind, filename := range dependency {
			suffix, ok := suffixes[kind]
			if !ok || !strings.HasSuffix(filename, suffix) || filename != path.Clean(filename) || strings.ContainsAny(filename, "\\\x00\r\n") ||
				(!strings.HasPrefix(filename, "/opt/lean/lib/lean/") && !paths[filename]) {
				return errors.New("import dependency is outside the immutable qualified image artifacts")
			}
		}
	}
	return nil
}

func leanImportMount(args []string, target string) (string, error) {
	var found string
	for _, arg := range args {
		if strings.HasPrefix(arg, "type=bind,source=") && strings.HasSuffix(arg, ",target="+target) {
			source := strings.TrimSuffix(strings.TrimPrefix(arg, "type=bind,source="), ",target="+target)
			if found != "" || source == "" || strings.ContainsAny(source, ",\x00\r\n") {
				return "", errors.New("invalid import mount source")
			}
			found = arg
		}
	}
	if found == "" {
		return "", errors.New("missing import mount")
	}
	return found, nil
}

func leanImportDockerPrefix(docker, container, image, modulePath, limit string) []string {
	return []string{docker, "run", "--rm", "--name", container,
		"--pull=never", "--network=none", "--read-only", "--user=65532:65532",
		"--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128",
		"--ulimit", limit,
		"--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"--tmpfs", "/mathcase/work:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"--tmpfs", "/mathcase/cache:rw,noexec,nosuid,nodev,size=512m,mode=1777",
		"--workdir=/mathcase/work", "--env=HOME=/tmp", "--env=TMPDIR=/tmp", "--env=TMP=/tmp",
		"--env=LAKE_HOME=/mathcase/cache", "--env=LEAN_SYSROOT=/opt/lean", "--env=LEAN_PATH=" + modulePath}
}

func validateLeanImportProducerInvocation(execution LeanSandboxExecution, runtime leanSnapshotRuntime, environmentSHA string) error {
	args := execution.CommandArgv
	if len(args) < 4 || args[0] != runtime.Docker {
		return errors.New("import producer Docker identity is missing")
	}
	input, err := leanImportMount(args, "/mathcase/input/"+leanImportSourceName+",readonly")
	if err != nil {
		return err
	}
	output, err := leanImportMount(args, "/mathcase/output")
	if err != nil {
		return err
	}
	owner := ""
	for _, arg := range args {
		if strings.HasPrefix(arg, "com.mathcase.worker-owner=") {
			owner = strings.TrimPrefix(arg, "com.mathcase.worker-owner=")
		}
	}
	if len(owner) != 32 || !strings.HasPrefix(execution.ContainerName, "mathcase-warm-"+owner[:12]+"-imports-") {
		return errors.New("import producer lacks its exact owner")
	}
	if _, err := hex.DecodeString(owner); err != nil {
		return err
	}
	base := leanImportDockerPrefix(runtime.Docker, execution.ContainerName, runtime.Image, strings.Join(runtime.Manifest.ModuleSearchPath, ":"), "fsize=134217728:134217728")
	expected := append([]string(nil), base[:5]...)
	expected = append(expected, "--label", "com.mathcase.component=lean-import-preparation", "--label", "com.mathcase.worker-owner="+owner, "--label", "com.mathcase.environment-sha256="+environmentSHA)
	expected = append(expected, base[5:]...)
	expected = append(expected, "--mount", input, "--mount", output, "--entrypoint=lean", runtime.Image,
		"--root=/mathcase/input", "--incr-header-save=/mathcase/output/"+leanImportSnapshotName, "/mathcase/input/"+leanImportSourceName)
	if !reflect.DeepEqual(args, expected) {
		return errors.New("import producer changes pinned compiler/options/security configuration")
	}
	return nil
}

func (v LeanVerifier) prepareOptionalLeanImports(ctx context.Context, runtime leanSnapshotRuntime, imports []string, workspace, sourceSHA string) *preparedLeanImports {
	if v.ImportPreparationReceiptPath == "" || !leanImportSupported(runtime, imports) || ctx.Err() != nil {
		return nil
	}
	if labels, err := queueRunContainerLabelArgs(); err != nil || len(labels) != 0 {
		return nil
	}
	root := v.importPreparationRoot
	if root == "" {
		root, _ = os.Getwd()
	}
	root, err := filepath.Abs(root)
	if err != nil || strings.HasPrefix(root, `\\`) {
		return nil
	}
	store := filepath.Join(root, "data", "local", "state", "lean-runtime-warm", "import-preparations")
	filename, err := filepath.Abs(v.ImportPreparationReceiptPath)
	if err != nil || leanImportNoLinks(root, filename) != nil {
		return nil
	}
	rel, err := filepath.Rel(store, filename)
	if err != nil || filepath.IsAbs(rel) || strings.HasPrefix(rel, "..") || len(strings.Split(rel, string(filepath.Separator))) != 3 || filepath.Base(filename) != "preparation.json" {
		return nil
	}
	data, err := readLeanImportFile(ctx, filename, leanImportReceiptLimit)
	if err != nil {
		return nil
	}
	receipt, err := decodeLeanImportReceipt(data)
	if err != nil {
		return nil
	}
	now := time.Now
	if v.Now != nil {
		now = v.Now
	}
	if validateLeanImportReceipt(receipt, runtime, imports, now().UTC()) != nil || filepath.Base(filepath.Dir(filename)) != receipt.EvidenceID ||
		filepath.Base(filepath.Dir(filepath.Dir(filename))) != receipt.EnvironmentSHA256 {
		return nil
	}
	workerPath := filepath.Join(root, "scripts", "lean_runtime_warm.py")
	if leanImportNoLinks(root, workerPath) != nil {
		return nil
	}
	worker, err := readLeanImportFile(ctx, workerPath, 512<<10)
	if err != nil || leanImportSHA(worker) != receipt.WorkerSourceSHA256 {
		return nil
	}
	directory := filepath.Dir(filename)
	headerPath := filepath.Join(directory, leanImportSnapshotName)
	depsPath := headerPath + ".deps"
	if leanImportNoLinks(root, headerPath) != nil || leanImportNoLinks(root, depsPath) != nil {
		return nil
	}
	header, err := readLeanImportFile(ctx, headerPath, leanImportHeaderLimit)
	if err != nil || validateLeanImportHeader(header, receipt) != nil {
		return nil
	}
	deps, err := readLeanImportFile(ctx, depsPath, leanImportDepsLimit)
	if err != nil || validateLeanImportDependencies(deps, receipt, runtime.Manifest) != nil {
		return nil
	}
	copyHeader := filepath.Join(workspace, "prepared-imports.snap")
	copyDeps := copyHeader + ".deps"
	if strings.ContainsAny(copyHeader, ",\x00\r\n") {
		return nil
	}
	if ctx.Err() != nil || writeLeanImportCopy(ctx, copyHeader, header) != nil {
		return nil
	}
	if writeLeanImportCopy(ctx, copyDeps, deps) != nil || ctx.Err() != nil {
		_ = os.Remove(copyHeader)
		_ = os.Remove(copyDeps)
		return nil
	}
	return &preparedLeanImports{evidence: LeanImportConsumptionEvidence{
		SchemaVersion: leanImportConsumptionSchema, ProducerReceipt: append([]byte(nil), data...), ProducerReceiptSHA256: leanImportSHA(data),
		Dependencies: append([]byte(nil), deps...), HeaderCopyPath: copyHeader, DependenciesCopyPath: copyDeps, ConsumerSourceSHA256: sourceSHA,
	}}
}

func validateLeanImportConsumption(execution LeanSandboxExecution, runtime leanSnapshotRuntime, imports []string) error {
	evidence := execution.ImportPreparation
	if evidence == nil {
		return nil
	}
	if len(execution.CommandArgv) < 4 {
		return errors.New("import consumer has no execution argv")
	}
	if evidence.SchemaVersion != leanImportConsumptionSchema || evidence.ProducerReceiptSHA256 != leanImportSHA(evidence.ProducerReceipt) || !validSHA256(evidence.ConsumerSourceSHA256) {
		return errors.New("import consumption provenance is incomplete")
	}
	receipt, err := decodeLeanImportReceipt(evidence.ProducerReceipt)
	if err != nil {
		return err
	}
	// Eligibility is evaluated at actual execution, never at receipt-read time.
	// Saved evidence does not reopen deleted per-consumer workspace copies.
	if err := validateLeanImportReceipt(receipt, runtime, imports, execution.StartedAtUTC); err != nil {
		return err
	}
	if err := validateLeanImportDependencies(evidence.Dependencies, receipt, runtime.Manifest); err != nil {
		return err
	}
	if evidence.HeaderCopyPath == "" || evidence.DependenciesCopyPath != evidence.HeaderCopyPath+".deps" ||
		!containsArg(execution.CommandArgv, "type=bind,source="+filepath.ToSlash(evidence.HeaderCopyPath)+",target=/mathcase/prepared/imports.snap,readonly") ||
		!containsArg(execution.CommandArgv, "type=bind,source="+filepath.ToSlash(evidence.DependenciesCopyPath)+",target=/mathcase/prepared/imports.snap.deps,readonly") {
		return errors.New("import consumption does not bind exact read-only workspace copies")
	}
	input, err := leanImportMount(execution.CommandArgv, "/mathcase/input/"+filepath.Base(execution.CommandArgv[len(execution.CommandArgv)-1])+",readonly")
	if err != nil {
		return err
	}
	output, err := leanImportMount(execution.CommandArgv, "/mathcase/output")
	if err != nil {
		return err
	}
	base := leanImportDockerPrefix(runtime.Docker, execution.ContainerName, runtime.Image, strings.Join(runtime.Manifest.ModuleSearchPath, ":"), "fsize=16777216:16777216")
	expected := append(base, "--mount", input, "--mount", output,
		"--mount", "type=bind,source="+filepath.ToSlash(evidence.HeaderCopyPath)+",target=/mathcase/prepared/imports.snap,readonly",
		"--mount", "type=bind,source="+filepath.ToSlash(evidence.DependenciesCopyPath)+",target=/mathcase/prepared/imports.snap.deps,readonly",
		"--entrypoint=lean", runtime.Image)
	// The caller additionally validates the exact source/output argument tail.
	if len(execution.CommandArgv) < len(expected) || !reflect.DeepEqual(execution.CommandArgv[:len(expected)], expected) {
		return errors.New("import consumer changes existing security/resource limits")
	}
	return nil
}
