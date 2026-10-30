package taste

import (
	"bufio"
	"bytes"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"regexp"
	"sort"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/fsutil"
	"github.com/DarthCeltic/MathCase/internal/verification"
)

const (
	mathlibLeanReplayManifestSchema  = "mathcase-taste-replay-execution-manifest-v1"
	mathlibLeanReplayReceiptSchema   = "mathcase-taste-lean-replay-execution-v1"
	mathlibLeanReplayProgressSchema  = "mathcase-taste-lean-replay-progress-event-v1"
	mathlibLeanReplayPreflightSchema = "mathcase-lean-replay-preflight-v1"
	mathlibLeanReplayRuntimeSchema   = "mathcase-lean-runtime-execution-v1"
	mathlibLeanReplayAuditSchema     = "mathcase-taste-lean-replay-audit-v1"
	maxReplayAuditJSONBytes          = 32 << 20
	maxReplayAuditSidecarBytes       = 64 << 20
)

// MathlibLeanReplayAuditRequest binds runner evidence to caller-reopened M0,
// Mathlib, pair, and simplification-evidence bytes. RunnerRoot bounds every
// filesystem read made by this audit; SourceFiles and EvidenceFiles are the
// separately reopened input bytes supplied by the caller.
type MathlibLeanReplayAuditRequest struct {
	RunnerRoot              string
	RepositoryRoot          string
	ManifestPath            string
	Snapshot                catalog.Snapshot
	Pairs                   []MathlibProofPair
	SourceFiles             map[string][]byte
	EvidenceFiles           map[string][]byte
	ExpectedImageID         string
	ExpectedMathlibRevision string
}

// MathlibLeanReplayPairAudit is the execution outcome for one caller-supplied
// pair. PASS means its exact replay bytes have a hash-consistent passing local
// process receipt; it does not claim that the receipt is signed/authenticated.
type MathlibLeanReplayPairAudit struct {
	PairID           string `json:"pair_id"`
	EvidenceID       string `json:"evidence_id"`
	SourceSHA256     string `json:"source_sha256"`
	Status           string `json:"status"`
	ExecutionOutcome string `json:"execution_outcome,omitempty"`
	RunID            string `json:"run_id,omitempty"`
	ReceiptSHA256    string `json:"receipt_sha256,omitempty"`
	Reason           string `json:"reason,omitempty"`
}

// MathlibLeanReplayReceiptDigest identifies the content-hash-bound process
// receipt used for a replay source. It is a digest record, not a signature.
type MathlibLeanReplayReceiptDigest struct {
	RunID            string `json:"run_id"`
	SourceSHA256     string `json:"source_sha256"`
	ReceiptPath      string `json:"receipt_path"`
	ReceiptSHA256    string `json:"receipt_sha256"`
	ExecutionOutcome string `json:"execution_outcome"`
}

// MathlibLeanReplayAuditReport contains per-pair outcomes plus the hashes of
// the reopened runner evidence. Authenticated is always false: local hashes
// detect content changes but establish no signer identity or attestation.
type MathlibLeanReplayAuditReport struct {
	SchemaVersion         string                           `json:"schema_version"`
	EvidenceClass         string                           `json:"evidence_class"`
	Authenticated         bool                             `json:"authenticated"`
	Status                string                           `json:"status"`
	CatalogSnapshotSHA256 string                           `json:"catalog_snapshot_sha256"`
	PairSetSHA256         string                           `json:"pair_set_sha256"`
	ExpectedImageID       string                           `json:"expected_image_id"`
	MathlibRevision       string                           `json:"mathlib_revision"`
	ManifestSHA256        string                           `json:"manifest_sha256"`
	RunnerSHA256          string                           `json:"runner_sha256"`
	PreflightSHA256       string                           `json:"preflight_sha256"`
	RuntimeSHA256         string                           `json:"runtime_sha256"`
	ProgressSHA256        string                           `json:"progress_sha256"`
	PairCount             int                              `json:"pair_count"`
	PassCount             int                              `json:"pass_count"`
	FailCount             int                              `json:"fail_count"`
	IncompleteCount       int                              `json:"incomplete_count"`
	Pairs                 []MathlibLeanReplayPairAudit     `json:"pairs"`
	Receipts              []MathlibLeanReplayReceiptDigest `json:"receipts"`
}

type replayManifest struct {
	SchemaVersion                  string                `json:"schema_version"`
	RecordedAtUTC                  time.Time             `json:"recorded_at_utc"`
	RunnerPath                     string                `json:"runner_path"`
	RunnerSHA256                   string                `json:"runner_sha256"`
	PreflightPath                  string                `json:"preflight_path"`
	RuntimeReceiptPath             string                `json:"runtime_receipt_path"`
	PinnedImage                    string                `json:"pinned_image"`
	MathlibCheckout                string                `json:"mathlib_checkout"`
	MathlibRevision                string                `json:"mathlib_revision"`
	DeduplicationBasis             string                `json:"deduplication_basis"`
	DistinctReplaySourceCount      int                   `json:"distinct_replay_source_count"`
	SelectedSourceCount            int                   `json:"selected_source_count"`
	SourceSelection                replaySourceSelection `json:"source_selection"`
	RunProgressPath                string                `json:"run_progress_path"`
	RunProgressEventSchema         string                `json:"run_progress_event_schema"`
	ExecutionPassCount             int                   `json:"execution_pass_count"`
	ExecutionFailOrIncompleteCount int                   `json:"execution_fail_or_incomplete_count"`
	Batches                        []replayBatch         `json:"batches"`
	AttemptedSourceCount           int                   `json:"attempted_source_count"`
	NotStartedUniqueSourceCount    int                   `json:"not_started_unique_source_count"`
	Status                         string                `json:"status"`
	UnstartedSources               []string              `json:"unstarted_sources"`
	Runs                           []replayManifestRun   `json:"runs"`
}

type replaySourceSelection struct {
	RequestedSourceSHA256 string   `json:"requested_source_sha256"`
	SelectedSourceSHA256s []string `json:"selected_source_sha256s"`
}

type replayBatch struct {
	Batch                             string             `json:"batch"`
	PairCount                         int                `json:"pair_count"`
	PairSetPath                       string             `json:"pair_set_path"`
	PairSetSHA256                     string             `json:"pair_set_sha256"`
	CatalogSnapshotPath               string             `json:"catalog_snapshot_path"`
	CatalogSnapshotContentSHA256      string             `json:"catalog_snapshot_content_sha256"`
	CatalogSnapshotFileSHA256         string             `json:"catalog_snapshot_file_sha256"`
	MathlibRevision                   string             `json:"mathlib_revision"`
	Pairs                             []replayMembership `json:"pairs"`
	DistinctReplaySourceCount         int                `json:"distinct_replay_source_count"`
	UniqueSuccessfulProcessCount      int                `json:"unique_successful_process_count"`
	PairsWithSuccessfulFreshExecution int                `json:"pairs_with_successful_fresh_execution"`
	ExecutionOutcome                  string             `json:"execution_outcome"`
}

type replayMembership struct {
	Batch                                  string   `json:"batch"`
	PairID                                 string   `json:"pair_id"`
	EvidenceID                             string   `json:"evidence_id"`
	EvidenceJSONSHA256                     string   `json:"evidence_json_sha256"`
	ReplaySourceRelativePath               string   `json:"replay_source_relative_path"`
	ReplaySourceSHA256                     string   `json:"replay_source_sha256"`
	BeforeTheorem                          string   `json:"before_theorem"`
	AfterTheorem                           string   `json:"after_theorem"`
	BeforeAxiomsExpectedFromExistingRecord []string `json:"before_axioms_expected_from_existing_record"`
	AfterAxiomsExpectedFromExistingRecord  []string `json:"after_axioms_expected_from_existing_record"`
}

type replayManifestRun struct {
	SourceSHA256            string `json:"source_sha256"`
	ReceiptPath             string `json:"receipt_path"`
	StdoutPath              string `json:"stdout_path"`
	StderrPath              string `json:"stderr_path"`
	ExecutionOutcome        string `json:"execution_outcome"`
	ContainerResolvedAbsent bool   `json:"container_resolved_absent"`
}

type replayExecutionReceipt struct {
	SchemaVersion                    string                 `json:"schema_version"`
	RunID                            string                 `json:"run_id"`
	StartedAtUTC                     time.Time              `json:"started_at_utc"`
	FinishedAtUTC                    time.Time              `json:"finished_at_utc"`
	ElapsedMilliseconds              int64                  `json:"elapsed_milliseconds"`
	ExecutionOutcome                 string                 `json:"execution_outcome"`
	ExitCode                         int                    `json:"exit_code"`
	TimedOut                         bool                   `json:"timed_out"`
	CommandArgv                      []string               `json:"command_argv"`
	DockerExecutable                 string                 `json:"docker_executable"`
	ContainerName                    string                 `json:"container_name"`
	ImageID                          string                 `json:"image_id"`
	MathlibPath                      string                 `json:"mathlib_path"`
	MathlibRevision                  string                 `json:"mathlib_revision"`
	LeanVersionReceipt               string                 `json:"lean_version_receipt"`
	LeanPath                         string                 `json:"lean_path"`
	SourcePath                       string                 `json:"source_path"`
	SourceSHA256                     string                 `json:"source_sha256"`
	SourceBytes                      int64                  `json:"source_bytes"`
	SourceMountTarget                string                 `json:"source_mount_target"`
	StdoutPath                       string                 `json:"stdout_path"`
	StdoutSHA256                     string                 `json:"stdout_sha256"`
	StderrPath                       string                 `json:"stderr_path"`
	StderrSHA256                     string                 `json:"stderr_sha256"`
	StdoutBytes                      int64                  `json:"stdout_bytes"`
	StderrBytes                      int64                  `json:"stderr_bytes"`
	ExpectedTheoremNames             []string               `json:"expected_theorem_names"`
	ObservedTheoremAxioms            map[string][]string    `json:"observed_theorem_axioms"`
	OutputNamesMatchSourceAndPairSet bool                   `json:"output_names_match_source_and_pair_set"`
	AllObservedAxiomsAllowed         bool                   `json:"all_observed_axioms_allowed"`
	ActualAxiomsMatchExistingClaims  bool                   `json:"actual_axioms_match_existing_claims"`
	AllowedAxioms                    []string               `json:"allowed_axioms"`
	MonitoringSamples                []json.RawMessage      `json:"monitoring_samples"`
	ContainerCleanup                 replayContainerCleanup `json:"container_cleanup"`
	ContainerResolvedAbsent          bool                   `json:"container_resolved_absent"`
	HostCLITerminated                bool                   `json:"host_cli_terminated"`
	Memberships                      []replayMembership     `json:"memberships"`
}

type replayContainerCleanup struct {
	CleanupReason           string                     `json:"cleanup_reason"`
	ContainerName           string                     `json:"container_name"`
	FinalInspect            *replayDockerCommandResult `json:"final_inspect"`
	ContainerResolvedAbsent bool                       `json:"container_resolved_absent"`
}

type replayDockerCommandResult struct {
	CommandArgv         []string `json:"command_argv"`
	ExitCode            int      `json:"exit_code"`
	TimedOut            bool     `json:"timed_out"`
	ElapsedMilliseconds int64    `json:"elapsed_milliseconds"`
	StdoutSHA256        string   `json:"stdout_sha256"`
	StderrSHA256        string   `json:"stderr_sha256"`
	StdoutText          string   `json:"stdout_text"`
	StderrText          string   `json:"stderr_text"`
}

type replayRuntimeReceipt struct {
	SchemaVersion       string                 `json:"schema_version"`
	RunID               string                 `json:"run_id"`
	StartedAtUTC        time.Time              `json:"started_at_utc"`
	FinishedAtUTC       time.Time              `json:"finished_at_utc"`
	CommandArgv         []string               `json:"command_argv"`
	ExitCode            int                    `json:"exit_code"`
	TimedOut            bool                   `json:"timed_out"`
	ElapsedMilliseconds int64                  `json:"elapsed_milliseconds"`
	ImageID             string                 `json:"image_id"`
	MathlibCommit       string                 `json:"mathlib_commit"`
	StdoutPath          string                 `json:"stdout_path"`
	StdoutSHA256        string                 `json:"stdout_sha256"`
	StderrPath          string                 `json:"stderr_path"`
	StderrSHA256        string                 `json:"stderr_sha256"`
	LeanVersionOutput   string                 `json:"lean_version_output"`
	ContainerCleanup    replayContainerCleanup `json:"container_cleanup"`
	MonitoringSamples   []json.RawMessage      `json:"monitoring_samples"`
}

type replayPreflightReceipt struct {
	SchemaVersion                    string    `json:"schema_version"`
	RecordedAtUTC                    time.Time `json:"recorded_at_utc"`
	DockerExecutable                 string    `json:"docker_executable"`
	DockerVersionCommand             []string  `json:"docker_version_command"`
	DockerImageInspectCommand        []string  `json:"docker_image_inspect_command"`
	PinnedImage                      string    `json:"pinned_image"`
	ImageInspectExitCode             int       `json:"image_inspect_exit_code"`
	ImageInspectStdoutSHA256         string    `json:"image_inspect_stdout_sha256"`
	ImageInspectStderrSHA256         string    `json:"image_inspect_stderr_sha256"`
	ImageInspectStdout               string    `json:"image_inspect_stdout"`
	ImageInspectStderr               string    `json:"image_inspect_stderr"`
	ImageInspectTimedOut             bool      `json:"image_inspect_timed_out"`
	ImageInspectElapsedMilliseconds  int64     `json:"image_inspect_elapsed_milliseconds"`
	MathlibCheckout                  string    `json:"mathlib_checkout"`
	MathlibCommit                    string    `json:"mathlib_commit"`
	MathlibWorktreeClean             bool      `json:"mathlib_worktree_clean"`
	DockerVersionExitCode            int       `json:"docker_version_exit_code"`
	DockerServerVersion              string    `json:"docker_server_version"`
	DockerVersionStdoutSHA256        string    `json:"docker_version_stdout_sha256"`
	DockerVersionStderrSHA256        string    `json:"docker_version_stderr_sha256"`
	DockerVersionStderr              string    `json:"docker_version_stderr"`
	DockerVersionTimedOut            bool      `json:"docker_version_timed_out"`
	DockerVersionElapsedMilliseconds int64     `json:"docker_version_elapsed_milliseconds"`
}

type replayProgressEvent struct {
	SchemaVersion           string             `json:"schema_version"`
	EventType               string             `json:"event_type"`
	RecordedAtUTC           time.Time          `json:"recorded_at_utc"`
	RunID                   string             `json:"run_id"`
	SourceSHA256            string             `json:"source_sha256"`
	ContainerName           string             `json:"container_name"`
	ImageID                 string             `json:"image_id"`
	CommandArgv             []string           `json:"command_argv"`
	ReceiptPath             string             `json:"receipt_path"`
	StdoutPath              string             `json:"stdout_path"`
	StderrPath              string             `json:"stderr_path"`
	HostPID                 int                `json:"host_pid"`
	ExecutionOutcome        string             `json:"execution_outcome"`
	ContainerResolvedAbsent bool               `json:"container_resolved_absent"`
	Memberships             []replayMembership `json:"memberships"`
}

type auditedReplayRun struct {
	manifestRun replayManifestRun
	receipt     replayExecutionReceipt
	receiptSHA  string
	status      string
	reason      string
}

var replayLeanDeclarationPattern = regexp.MustCompile(`(?m)^\s*(?:(?:private|protected|noncomputable)\s+)*(?:theorem|lemma)\s+([^\s:({]+)`)
var replayLeanPrintPattern = regexp.MustCompile(`(?m)^\s*#print\s+axioms\s+([^\s]+)\s*$`)
var replayAxiomOutputLike = regexp.MustCompile(`^'[^']+' (?:depends on axioms:|does not depend on any axioms)`)

// AuditMathlibLeanReplayExecution reopens and validates the hash-bound local
// Lean runner evidence for req.Pairs. It never executes Lean or Docker.
func AuditMathlibLeanReplayExecution(req MathlibLeanReplayAuditRequest) (MathlibLeanReplayAuditReport, error) {
	if strings.TrimSpace(req.ExpectedImageID) == "" || strings.TrimSpace(req.ExpectedMathlibRevision) == "" {
		return MathlibLeanReplayAuditReport{}, errors.New("taste: expected image ID and Mathlib revision are required")
	}
	if !validPinnedImageID(req.ExpectedImageID) {
		return MathlibLeanReplayAuditReport{}, errors.New("taste: expected image ID must be a sha256 image digest")
	}
	if err := validateExactCallerInputs(req); err != nil {
		return MathlibLeanReplayAuditReport{}, err
	}

	root, err := canonicalRunnerRoot(req.RunnerRoot)
	if err != nil {
		return MathlibLeanReplayAuditReport{}, err
	}
	repositoryRoot, err := canonicalRepositoryRoot(req.RepositoryRoot)
	if err != nil {
		return MathlibLeanReplayAuditReport{}, err
	}
	manifestBytes, manifestPath, err := readRunnerFile(root, req.ManifestPath, true, maxReplayAuditJSONBytes)
	if err != nil {
		return MathlibLeanReplayAuditReport{}, fmt.Errorf("taste: read replay manifest: %w", err)
	}
	if base := filepath.Base(manifestPath); base != "manifest.json" && base != "manifest.incomplete.json" {
		return MathlibLeanReplayAuditReport{}, errors.New("taste: replay manifest path must name manifest.json or manifest.incomplete.json")
	}
	var manifest replayManifest
	if err := decodeReplayJSON(manifestBytes, &manifest); err != nil {
		return MathlibLeanReplayAuditReport{}, fmt.Errorf("taste: decode replay manifest: %w", err)
	}
	if err := validateManifestHeader(manifest, req); err != nil {
		return MathlibLeanReplayAuditReport{}, err
	}

	manifestSHA := digestBytes(manifestBytes)
	runnerBytes, _, err := readRunnerFile(root, manifest.RunnerPath, true, maxReplayAuditSidecarBytes)
	if err != nil {
		return MathlibLeanReplayAuditReport{}, fmt.Errorf("taste: reopen pinned replay runner: %w", err)
	}
	if digestBytes(runnerBytes) != manifest.RunnerSHA256 {
		return MathlibLeanReplayAuditReport{}, errors.New("taste: replay runner bytes do not match the manifest hash")
	}

	preflightBytes, _, err := readRunnerFile(root, manifest.PreflightPath, false, maxReplayAuditJSONBytes)
	if err != nil {
		return MathlibLeanReplayAuditReport{}, fmt.Errorf("taste: read replay preflight: %w", err)
	}
	var preflight replayPreflightReceipt
	if err := decodeReplayJSON(preflightBytes, &preflight); err != nil {
		return MathlibLeanReplayAuditReport{}, fmt.Errorf("taste: decode replay preflight: %w", err)
	}
	if err := validateReplayPreflight(root, manifest, preflight, req.ExpectedImageID, req.ExpectedMathlibRevision); err != nil {
		return MathlibLeanReplayAuditReport{}, err
	}

	runtimeBytes, _, err := readRunnerFile(root, manifest.RuntimeReceiptPath, false, maxReplayAuditJSONBytes)
	if err != nil {
		return MathlibLeanReplayAuditReport{}, fmt.Errorf("taste: read Lean runtime receipt: %w", err)
	}
	var runtime replayRuntimeReceipt
	if err := decodeReplayJSON(runtimeBytes, &runtime); err != nil {
		return MathlibLeanReplayAuditReport{}, fmt.Errorf("taste: decode Lean runtime receipt: %w", err)
	}
	if err := validateReplayRuntime(root, manifest, preflight, runtime, req.ExpectedImageID, req.ExpectedMathlibRevision); err != nil {
		return MathlibLeanReplayAuditReport{}, err
	}

	batchNames, requestedMemberships, pairSetSHA, err := matchRequestedBatch(repositoryRoot, manifest, req)
	if err != nil {
		return MathlibLeanReplayAuditReport{}, err
	}
	allMemberships, err := indexManifestMemberships(manifest)
	if err != nil {
		return MathlibLeanReplayAuditReport{}, err
	}
	progressBytes, _, err := readRunnerFile(root, manifest.RunProgressPath, false, maxReplayAuditSidecarBytes)
	if err != nil {
		return MathlibLeanReplayAuditReport{}, fmt.Errorf("taste: read replay process events: %w", err)
	}
	progressByRunID, progressSources, err := decodeProgress(progressBytes, manifest)
	if err != nil {
		return MathlibLeanReplayAuditReport{}, err
	}

	auditedRuns, runBySource, receiptDigests, err := auditManifestRuns(root, manifest, allMemberships, requestedMemberships, req, preflight, progressByRunID)
	if err != nil {
		return MathlibLeanReplayAuditReport{}, err
	}
	if err := validateProgressCompleteness(manifest, progressByRunID, progressSources, runBySource, allMemberships); err != nil {
		return MathlibLeanReplayAuditReport{}, err
	}
	if err := validateManifestRunCounts(manifest, auditedRuns, progressSources, allMemberships); err != nil {
		return MathlibLeanReplayAuditReport{}, err
	}

	report := MathlibLeanReplayAuditReport{
		SchemaVersion:         mathlibLeanReplayAuditSchema,
		EvidenceClass:         "HASH_BOUND_LOCAL_PROCESS_RECEIPTS_NOT_AUTHENTICATED",
		Authenticated:         false,
		Status:                "PASS",
		CatalogSnapshotSHA256: req.Snapshot.ContentSHA256,
		PairSetSHA256:         pairSetSHA,
		ExpectedImageID:       req.ExpectedImageID,
		MathlibRevision:       req.ExpectedMathlibRevision,
		ManifestSHA256:        manifestSHA,
		RunnerSHA256:          manifest.RunnerSHA256,
		PreflightSHA256:       digestBytes(preflightBytes),
		RuntimeSHA256:         digestBytes(runtimeBytes),
		ProgressSHA256:        digestBytes(progressBytes),
		PairCount:             len(req.Pairs),
		Pairs:                 make([]MathlibLeanReplayPairAudit, 0, len(req.Pairs)),
		Receipts:              receiptDigests,
	}
	orderedPairs := append([]MathlibProofPair(nil), req.Pairs...)
	sort.Slice(orderedPairs, func(i, j int) bool { return orderedPairs[i].PairID < orderedPairs[j].PairID })
	for _, pair := range orderedPairs {
		membership := requestedMemberships[pair.PairID]
		pairAudit := MathlibLeanReplayPairAudit{
			PairID: pair.PairID, EvidenceID: pair.SimplificationEvidenceID,
			SourceSHA256: membership.ReplaySourceSHA256, Status: "INCOMPLETE",
			Reason: "no completed process receipt covers this replay source",
		}
		if run, ok := runBySource[membership.ReplaySourceSHA256]; ok {
			pairAudit.ExecutionOutcome = run.receipt.ExecutionOutcome
			pairAudit.RunID = run.receipt.RunID
			pairAudit.ReceiptSHA256 = run.receiptSHA
			pairAudit.Status = run.status
			pairAudit.Reason = run.reason
		}
		switch pairAudit.Status {
		case "PASS":
			report.PassCount++
		case "FAIL":
			report.FailCount++
		default:
			report.IncompleteCount++
		}
		report.Pairs = append(report.Pairs, pairAudit)
	}
	if report.FailCount > 0 {
		report.Status = "FAIL"
	} else if report.IncompleteCount > 0 {
		report.Status = "INCOMPLETE"
	}
	_ = batchNames // retained to make the selected batch identity explicit in validation.
	return report, nil
}

func validateExactCallerInputs(req MathlibLeanReplayAuditRequest) error {
	if err := ValidateMathlibProofPairEvidence(req.Snapshot, req.Pairs, req.SourceFiles, req.EvidenceFiles); err != nil {
		return fmt.Errorf("taste: validate caller-reopened pair evidence: %w", err)
	}
	wantSources := make(map[string]struct{})
	wantEvidence := make(map[string]struct{}, len(req.Pairs)*3)
	for _, pair := range req.Pairs {
		wantSources[pair.SourceID] = struct{}{}
		wantEvidence[pair.SimplificationEvidenceID+".json"] = struct{}{}
		var receipt MathlibSimplificationEvidence
		if err := json.Unmarshal(req.EvidenceFiles[pair.SimplificationEvidenceID+".json"], &receipt); err != nil {
			return fmt.Errorf("taste: decode caller simplification evidence %q: %w", pair.SimplificationEvidenceID, err)
		}
		wantEvidence[receipt.ReplaySourcePath] = struct{}{}
		wantEvidence[receipt.LeanOutputPath] = struct{}{}
		if receipt.SourceRevision != req.ExpectedMathlibRevision {
			return fmt.Errorf("taste: pair %q source revision does not match expected Mathlib revision", pair.PairID)
		}
	}
	if err := exactKeys(req.SourceFiles, wantSources, "Mathlib source bytes"); err != nil {
		return err
	}
	if err := exactKeys(req.EvidenceFiles, wantEvidence, "pair evidence bytes"); err != nil {
		return err
	}
	return nil
}

func exactKeys[T any](actual map[string]T, expected map[string]struct{}, name string) error {
	if len(actual) != len(expected) {
		return fmt.Errorf("taste: %s do not exactly cover the requested pair set", name)
	}
	for key := range actual {
		if _, ok := expected[key]; !ok {
			return fmt.Errorf("taste: unexpected %s entry %q", name, key)
		}
	}
	return nil
}

func canonicalRunnerRoot(path string) (string, error) {
	if strings.TrimSpace(path) == "" {
		return "", errors.New("taste: replay runner root is required")
	}
	abs, err := filepath.Abs(path)
	if err != nil {
		return "", fmt.Errorf("taste: resolve replay runner root: %w", err)
	}
	resolved, err := fsutil.CanonicalPath(abs)
	if err != nil {
		return "", fmt.Errorf("taste: resolve replay runner root: %w", err)
	}
	info, err := os.Stat(resolved)
	if err != nil {
		return "", fmt.Errorf("taste: stat replay runner root: %w", err)
	}
	if !info.IsDir() {
		return "", errors.New("taste: replay runner root must be a directory")
	}
	return filepath.Clean(resolved), nil
}

func readRunnerFile(root, name string, allowAbsolute bool, maximum int64) ([]byte, string, error) {
	if strings.TrimSpace(name) == "" || strings.ContainsRune(name, '\x00') {
		return nil, "", errors.New("path is empty or invalid")
	}
	if filepath.IsAbs(name) && !allowAbsolute {
		return nil, "", fmt.Errorf("absolute path %q is not permitted", name)
	}
	path := name
	if !filepath.IsAbs(path) {
		if filepath.VolumeName(path) != "" {
			return nil, "", fmt.Errorf("volume-qualified relative path %q is not permitted", name)
		}
		path = filepath.Join(root, path)
	}
	abs, err := filepath.Abs(filepath.Clean(path))
	if err != nil {
		return nil, "", err
	}
	resolved, err := fsutil.CanonicalPath(abs)
	if err != nil {
		return nil, "", err
	}
	if !pathWithin(root, resolved) {
		return nil, "", fmt.Errorf("resolved path %q escapes the replay runner root", name)
	}
	info, err := os.Stat(resolved)
	if err != nil {
		return nil, "", err
	}
	if !info.Mode().IsRegular() {
		return nil, "", fmt.Errorf("path %q is not a regular file", name)
	}
	if info.Size() < 0 || info.Size() > maximum {
		return nil, "", fmt.Errorf("path %q exceeds the %d-byte audit limit", name, maximum)
	}
	data, err := os.ReadFile(resolved)
	if err != nil {
		return nil, "", err
	}
	return data, resolved, nil
}

func pathWithin(root, candidate string) bool {
	return fsutil.IsWithin(root, candidate)
}

func decodeReplayJSON(data []byte, target any) error {
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(target); err != nil {
		return err
	}
	var trailing any
	if err := decoder.Decode(&trailing); !errors.Is(err, io.EOF) {
		if err == nil {
			return errors.New("multiple JSON values are not permitted")
		}
		return err
	}
	return nil
}

func validateManifestHeader(manifest replayManifest, req MathlibLeanReplayAuditRequest) error {
	if manifest.SchemaVersion != mathlibLeanReplayManifestSchema {
		return fmt.Errorf("taste: unsupported replay manifest schema %q", manifest.SchemaVersion)
	}
	if manifest.RecordedAtUTC.IsZero() || manifest.Status != "COMPLETE" && manifest.Status != "INCOMPLETE" {
		return errors.New("taste: replay manifest status or timestamp is invalid")
	}
	if !validDigest(manifest.RunnerSHA256) || !validPinnedImageID(manifest.PinnedImage) || manifest.PinnedImage != req.ExpectedImageID {
		return errors.New("taste: replay manifest runner hash or pinned image does not match the requested image")
	}
	if !filepath.IsAbs(manifest.RunnerPath) || strings.TrimSpace(manifest.MathlibCheckout) == "" || !filepath.IsAbs(manifest.MathlibCheckout) {
		return errors.New("taste: replay manifest runner and Mathlib checkout paths must be absolute")
	}
	if manifest.MathlibRevision != req.ExpectedMathlibRevision {
		return errors.New("taste: replay manifest Mathlib revision does not match the requested revision")
	}
	if manifest.RunProgressEventSchema != mathlibLeanReplayProgressSchema {
		return fmt.Errorf("taste: unsupported replay progress schema %q", manifest.RunProgressEventSchema)
	}
	if manifest.PreflightPath == "" || manifest.RuntimeReceiptPath == "" || manifest.RunProgressPath == "" || manifest.DeduplicationBasis == "" {
		return errors.New("taste: replay manifest is missing required paths or deduplication basis")
	}
	for _, name := range []string{manifest.PreflightPath, manifest.RuntimeReceiptPath, manifest.RunProgressPath} {
		if filepath.IsAbs(name) || filepath.VolumeName(name) != "" || filepath.Clean(name) == "." {
			return fmt.Errorf("taste: replay manifest path %q must be relative to RunnerRoot", name)
		}
	}
	return nil
}

func validateReplayPreflight(root string, manifest replayManifest, preflight replayPreflightReceipt, expectedImage, expectedRevision string) error {
	if preflight.SchemaVersion != mathlibLeanReplayPreflightSchema || preflight.RecordedAtUTC.IsZero() {
		return errors.New("taste: unsupported or incomplete replay preflight receipt")
	}
	if preflight.PinnedImage != expectedImage || preflight.MathlibCommit != expectedRevision || preflight.MathlibCheckout != manifest.MathlibCheckout {
		return errors.New("taste: replay preflight image or Mathlib pin does not match the manifest")
	}
	if !preflight.MathlibWorktreeClean || preflight.ImageInspectExitCode != 0 || preflight.ImageInspectTimedOut || preflight.DockerVersionExitCode != 0 || preflight.DockerVersionTimedOut {
		return errors.New("taste: replay preflight did not pass its pinned image, Docker, and clean-checkout checks")
	}
	if preflight.DockerExecutable == "" || !filepath.IsAbs(preflight.DockerExecutable) || !dockerExecutableName(preflight.DockerExecutable) {
		return errors.New("taste: replay preflight Docker executable is not an absolute Docker binary path")
	}
	if !sameCommand(preflight.DockerVersionCommand, []string{preflight.DockerExecutable, "version", "--format", "{{.Server.Version}}"}) ||
		!sameCommand(preflight.DockerImageInspectCommand, []string{preflight.DockerExecutable, "image", "inspect", expectedImage, "--format", "{{.Id}}"}) {
		return errors.New("taste: replay preflight Docker argv does not match the expected read-only checks")
	}
	imageOut, err := readHashedSidecar(root, "preflight-image.stdout.bin", preflight.ImageInspectStdoutSHA256)
	if err != nil {
		return fmt.Errorf("taste: replay image-inspect stdout: %w", err)
	}
	imageErr, err := readHashedSidecar(root, "preflight-image.stderr.bin", preflight.ImageInspectStderrSHA256)
	if err != nil {
		return fmt.Errorf("taste: replay image-inspect stderr: %w", err)
	}
	versionOut, err := readHashedSidecar(root, "preflight-docker-version.stdout.bin", preflight.DockerVersionStdoutSHA256)
	if err != nil {
		return fmt.Errorf("taste: replay Docker-version stdout: %w", err)
	}
	versionErr, err := readHashedSidecar(root, "preflight-docker-version.stderr.bin", preflight.DockerVersionStderrSHA256)
	if err != nil {
		return fmt.Errorf("taste: replay Docker-version stderr: %w", err)
	}
	if strings.TrimSpace(string(imageOut)) != preflight.PinnedImage || string(imageErr) != preflight.ImageInspectStderr ||
		strings.TrimSpace(string(versionOut)) != preflight.DockerServerVersion || string(versionErr) != preflight.DockerVersionStderr ||
		preflight.PinnedImage != expectedImage {
		return errors.New("taste: replay preflight raw output does not match its recorded claims")
	}
	return nil
}

func readHashedSidecar(root, path, expectedHash string) ([]byte, error) {
	if !validDigest(expectedHash) {
		return nil, fmt.Errorf("invalid SHA-256 for %q", path)
	}
	data, _, err := readRunnerFile(root, path, false, maxReplayAuditSidecarBytes)
	if err != nil {
		return nil, err
	}
	if digestBytes(data) != expectedHash {
		return nil, fmt.Errorf("%q bytes do not match their SHA-256", path)
	}
	return data, nil
}

func validateReplayRuntime(root string, manifest replayManifest, preflight replayPreflightReceipt, runtime replayRuntimeReceipt, expectedImage, expectedRevision string) error {
	if runtime.SchemaVersion != mathlibLeanReplayRuntimeSchema || runtime.RunID == "" || runtime.StartedAtUTC.IsZero() || runtime.FinishedAtUTC.IsZero() || runtime.FinishedAtUTC.Before(runtime.StartedAtUTC) {
		return errors.New("taste: Lean runtime receipt is missing its version, identity, or timestamps")
	}
	if len(runtime.CommandArgv) == 0 {
		return errors.New("taste: Lean runtime command argv is empty")
	}
	if runtime.ImageID != expectedImage || runtime.MathlibCommit != expectedRevision || preflight.PinnedImage != runtime.ImageID || preflight.MathlibCommit != runtime.MathlibCommit {
		return errors.New("taste: Lean runtime image or Mathlib revision does not match the requested pins")
	}
	stdout, err := readHashedSidecar(root, runtime.StdoutPath, runtime.StdoutSHA256)
	if err != nil {
		return fmt.Errorf("taste: Lean runtime stdout: %w", err)
	}
	stderr, err := readHashedSidecar(root, runtime.StderrPath, runtime.StderrSHA256)
	if err != nil {
		return fmt.Errorf("taste: Lean runtime stderr: %w", err)
	}
	if strings.TrimSpace(string(stdout)) != strings.TrimSpace(runtime.LeanVersionOutput) || runtime.ExitCode != 0 || runtime.TimedOut {
		return errors.New("taste: Lean runtime raw version output or process outcome is inconsistent")
	}
	if err := validateContainerCleanup(runtime.ContainerCleanup, runtime.CommandArgv[0], "mathlib-v3-runtime"); err != nil {
		return fmt.Errorf("taste: Lean runtime container cleanup: %w", err)
	}
	if !runtime.ContainerCleanup.ContainerResolvedAbsent {
		return errors.New("taste: Lean runtime container is not affirmatively resolved absent")
	}
	if !safeDockerRun(runtime.CommandArgv, dockerArgvExpectation{
		DockerExecutable: runtime.CommandArgv[0], ContainerName: runtime.ContainerCleanup.ContainerName,
		ImageID: expectedImage, MathlibPath: manifest.MathlibCheckout, Mode: "version",
	}) {
		return errors.New("taste: Lean runtime Docker argv does not satisfy the read-only sandbox policy")
	}
	if !sameCommand([]string{preflight.DockerExecutable}, []string{runtime.CommandArgv[0]}) || len(stderr) > maxReplayAuditSidecarBytes {
		return errors.New("taste: Lean runtime Docker executable differs from preflight")
	}
	return nil
}

type dockerArgvExpectation struct {
	DockerExecutable string
	ContainerName    string
	ImageID          string
	MathlibPath      string
	SourcePath       string
	SourceTarget     string
	Mode             string
}

func safeDockerRun(argv []string, want dockerArgvExpectation) bool {
	if len(argv) < 2 || !sameCommand(argv[:1], []string{want.DockerExecutable}) || !dockerExecutableName(argv[0]) || !validContainerName(want.ContainerName) || !validPinnedImageID(want.ImageID) {
		return false
	}
	if !filepath.IsAbs(want.MathlibPath) {
		return false
	}
	common := []string{
		argv[0], "run", "--rm", "--pull=never", "--name", want.ContainerName,
		"--network=none", "--read-only", "--user=65532:65532", "--cap-drop=ALL",
		"--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128",
		"--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"--env=HOME=/tmp", "--env=TMPDIR=/tmp", "--env=TMP=/tmp",
	}
	if want.Mode == "replay" {
		leanPath := ""
		for _, arg := range argv {
			if strings.HasPrefix(arg, "LEAN_PATH=") {
				leanPath = strings.TrimPrefix(arg, "LEAN_PATH=")
			}
		}
		if !safeLeanPath(leanPath) {
			return false
		}
		common = append(common, "--env", "LEAN_PATH="+leanPath)
	}
	common = append(common, "--mount", "type=bind,source="+want.MathlibPath+",target=/mathlib,readonly")
	if want.Mode == "replay" {
		if !filepath.IsAbs(want.SourcePath) || !safeContainerTarget(want.SourceTarget) || filepath.Base(want.SourcePath) != filepath.Base(want.SourceTarget) {
			return false
		}
		common = append(common, "--mount", "type=bind,source="+want.SourcePath+",target="+want.SourceTarget+",readonly")
	}
	common = append(common, "--workdir=/mathlib", "--entrypoint=lean", want.ImageID)
	if want.Mode == "version" {
		common = append(common, "--version")
	} else if want.Mode == "replay" {
		common = append(common, want.SourceTarget)
	} else {
		return false
	}
	return sameCommand(argv, common)
}

func safeLeanPath(value string) bool {
	if value == "" || strings.ContainsAny(value, "\x00\r\n") {
		return false
	}
	for _, entry := range strings.Split(value, ":") {
		if entry != "/mathlib" && !strings.HasPrefix(entry, "/mathlib/") || strings.Contains(entry, "..") {
			return false
		}
	}
	return true
}

func safeContainerTarget(value string) bool {
	return strings.HasPrefix(value, "/workspace/") && !strings.Contains(value, "..") && !strings.ContainsAny(value, "\\,\x00\r\n") && filepath.Base(value) != "."
}

func validateContainerCleanup(cleanup replayContainerCleanup, dockerExecutable, expectedNameSuffix string) error {
	if !validContainerName(cleanup.ContainerName) || !strings.Contains(cleanup.ContainerName, expectedNameSuffix) || cleanup.FinalInspect == nil {
		return errors.New("container cleanup identity is malformed")
	}
	inspect := cleanup.FinalInspect
	if len(inspect.CommandArgv) != 3 || !sameCommand(inspect.CommandArgv[:1], []string{dockerExecutable}) || inspect.CommandArgv[1] != "inspect" || inspect.CommandArgv[2] != cleanup.ContainerName {
		return errors.New("final container inspect command is malformed")
	}
	if !validDigest(inspect.StdoutSHA256) || digestText(inspect.StdoutText) != inspect.StdoutSHA256 || !validDigest(inspect.StderrSHA256) || digestText(inspect.StderrText) != inspect.StderrSHA256 {
		return errors.New("final container inspect text does not match its recorded hashes")
	}
	provenAbsent := false
	switch {
	case inspect.TimedOut:
		provenAbsent = false
	case inspect.ExitCode == 1 && strings.TrimSpace(inspect.StdoutText) == "[]" && strings.Contains(strings.ToLower(inspect.StderrText), "no such"):
		provenAbsent = true
	case inspect.ExitCode == 0 && strings.TrimSpace(inspect.StdoutText) != "":
		provenAbsent = false
	default:
		return errors.New("final container inspect output is neither a verified absence nor a recorded unresolved container")
	}
	if cleanup.ContainerResolvedAbsent != provenAbsent {
		return errors.New("container cleanup absence flag differs from the final Docker inspect")
	}
	if cleanup.CleanupReason != "natural_process_exit" && cleanup.CleanupReason != "timeout_force_remove" {
		return errors.New("unknown container cleanup reason")
	}
	return nil
}

func validPinnedImageID(value string) bool {
	if !strings.HasPrefix(value, "sha256:") || len(value) != len("sha256:")+64 {
		return false
	}
	return validDigest(strings.TrimPrefix(value, "sha256:"))
}

func validContainerName(value string) bool {
	if value == "" || len(value) > 128 {
		return false
	}
	for i, r := range value {
		valid := r >= 'a' && r <= 'z' || r >= 'A' && r <= 'Z' || r >= '0' && r <= '9' || (i > 0 && strings.ContainsRune("_.-", r))
		if !valid {
			return false
		}
	}
	return true
}

func dockerExecutableName(path string) bool {
	name := strings.ToLower(filepath.Base(path))
	return name == "docker" || name == "docker.exe"
}

func sameCommand(first, second []string) bool {
	if len(first) != len(second) {
		return false
	}
	for i := range first {
		left, right := first[i], second[i]
		if i == 0 {
			if !strings.EqualFold(filepath.Clean(left), filepath.Clean(right)) {
				return false
			}
			continue
		}
		if left != right {
			return false
		}
	}
	return true
}

func matchRequestedBatch(repositoryRoot string, manifest replayManifest, req MathlibLeanReplayAuditRequest) (map[string]struct{}, map[string]replayMembership, string, error) {
	dataset := MathlibProofPairDataset{
		SchemaVersion: mathlibProofPairDatasetSchema, CatalogSnapshotSHA256: req.Snapshot.ContentSHA256, Pairs: req.Pairs,
	}
	digest, err := dataset.Digest()
	if err != nil {
		return nil, nil, "", fmt.Errorf("taste: hash requested proof-pair set: %w", err)
	}
	requestedByID := make(map[string]MathlibProofPair, len(req.Pairs))
	for _, pair := range req.Pairs {
		requestedByID[pair.PairID] = pair
	}
	var matched []replayBatch
	for _, batch := range manifest.Batches {
		if batch.CatalogSnapshotContentSHA256 != req.Snapshot.ContentSHA256 || batch.MathlibRevision != req.ExpectedMathlibRevision {
			continue
		}
		pairSetBytes, _, err := readRunnerFile(repositoryRoot, batch.PairSetPath, false, maxReplayAuditJSONBytes)
		if err != nil {
			return nil, nil, "", fmt.Errorf("taste: reopen manifest pair-set file for batch %q: %w", batch.Batch, err)
		}
		if digestBytes(pairSetBytes) != batch.PairSetSHA256 {
			return nil, nil, "", fmt.Errorf("taste: manifest pair-set file hash does not match batch %q", batch.Batch)
		}
		var candidateDataset MathlibProofPairDataset
		if err := decodeReplayJSON(pairSetBytes, &candidateDataset); err != nil {
			return nil, nil, "", fmt.Errorf("taste: decode manifest pair-set file for batch %q: %w", batch.Batch, err)
		}
		if err := candidateDataset.Validate(req.Snapshot); err != nil {
			return nil, nil, "", fmt.Errorf("taste: validate manifest pair-set file for batch %q: %w", batch.Batch, err)
		}
		candidateDigest, err := candidateDataset.Digest()
		if err != nil {
			return nil, nil, "", fmt.Errorf("taste: digest manifest pair-set file for batch %q: %w", batch.Batch, err)
		}
		if candidateDigest == digest {
			matched = append(matched, batch)
		}
	}
	if len(matched) == 0 {
		return nil, nil, "", errors.New("taste: caller pair set does not exactly match any manifest batch")
	}
	batchNames := make(map[string]struct{}, len(matched))
	for _, batch := range matched {
		if batch.PairCount != len(req.Pairs) || len(batch.Pairs) != len(req.Pairs) {
			return nil, nil, "", fmt.Errorf("taste: manifest batch %q has inconsistent pair count", batch.Batch)
		}
		batchNames[batch.Batch] = struct{}{}
		seen := make(map[string]struct{}, len(batch.Pairs))
		for _, member := range batch.Pairs {
			pair, ok := requestedByID[member.PairID]
			if !ok {
				return nil, nil, "", fmt.Errorf("taste: manifest batch %q has an unrequested pair %q", batch.Batch, member.PairID)
			}
			if _, dup := seen[member.PairID]; dup {
				return nil, nil, "", fmt.Errorf("taste: manifest batch %q duplicates pair %q", batch.Batch, member.PairID)
			}
			seen[member.PairID] = struct{}{}
			if err := compareMembershipToCaller(member, batch.Batch, pair, req.EvidenceFiles); err != nil {
				return nil, nil, "", err
			}
		}
		if len(seen) != len(requestedByID) {
			return nil, nil, "", fmt.Errorf("taste: manifest batch %q omits a caller pair", batch.Batch)
		}
	}
	if len(matched) > 1 {
		// Identical content may have been staged under multiple batch names. All
		// matching batches are retained so receipt memberships can be checked
		// against each name without inventing a preferred source folder.
	}
	requestedMemberships := make(map[string]replayMembership, len(req.Pairs))
	for pairID, pair := range requestedByID {
		var selected replayMembership
		set := false
		for _, batch := range matched {
			for _, member := range batch.Pairs {
				if member.PairID != pairID {
					continue
				}
				if set && !sameMembershipIgnoringBatch(selected, member) {
					return nil, nil, "", fmt.Errorf("taste: duplicate manifest batches disagree on pair %q membership", pairID)
				}
				selected = member
				set = true
			}
		}
		if !set {
			return nil, nil, "", fmt.Errorf("taste: no exact manifest membership for caller pair %q", pairID)
		}
		if err := compareMembershipToCaller(selected, selected.Batch, pair, req.EvidenceFiles); err != nil {
			return nil, nil, "", err
		}
		requestedMemberships[pairID] = selected
	}
	return batchNames, requestedMemberships, digest, nil
}

func canonicalRepositoryRoot(path string) (string, error) {
	if strings.TrimSpace(path) == "" {
		return "", errors.New("taste: repository root is required to reopen exact manifest pair sets")
	}
	resolved, err := fsutil.CanonicalPath(path)
	if err != nil {
		return "", fmt.Errorf("taste: resolve repository root: %w", err)
	}
	info, err := os.Stat(resolved)
	if err != nil {
		return "", fmt.Errorf("taste: stat repository root: %w", err)
	}
	if !info.IsDir() {
		return "", errors.New("taste: repository root must be a directory")
	}
	return filepath.Clean(resolved), nil
}

func compareMembershipToCaller(member replayMembership, batchName string, pair MathlibProofPair, evidenceFiles map[string][]byte) error {
	var evidence MathlibSimplificationEvidence
	data, ok := evidenceFiles[pair.SimplificationEvidenceID+".json"]
	if !ok {
		return fmt.Errorf("taste: caller evidence bytes missing for pair %q", pair.PairID)
	}
	if err := json.Unmarshal(data, &evidence); err != nil {
		return fmt.Errorf("taste: decode evidence for pair %q: %w", pair.PairID, err)
	}
	if member.Batch != batchName || member.PairID != pair.PairID || member.EvidenceID != pair.SimplificationEvidenceID ||
		member.EvidenceJSONSHA256 != pair.SimplificationEvidenceSHA256 || member.ReplaySourceRelativePath != evidence.ReplaySourcePath ||
		member.ReplaySourceSHA256 != evidence.ReplaySourceSHA256 || member.BeforeTheorem != evidence.BeforeTheorem || member.AfterTheorem != evidence.AfterTheorem ||
		!sameStringSet(member.BeforeAxiomsExpectedFromExistingRecord, evidence.BeforeAxioms) ||
		!sameStringSet(member.AfterAxiomsExpectedFromExistingRecord, evidence.AfterAxioms) {
		return fmt.Errorf("taste: manifest membership for pair %q does not match its exact caller evidence", pair.PairID)
	}
	return nil
}

func sameMembershipIgnoringBatch(first, second replayMembership) bool {
	first.Batch, second.Batch = "", ""
	return first.PairID == second.PairID && first.EvidenceID == second.EvidenceID && first.EvidenceJSONSHA256 == second.EvidenceJSONSHA256 &&
		first.ReplaySourceRelativePath == second.ReplaySourceRelativePath && first.ReplaySourceSHA256 == second.ReplaySourceSHA256 &&
		first.BeforeTheorem == second.BeforeTheorem && first.AfterTheorem == second.AfterTheorem &&
		sameStringSet(first.BeforeAxiomsExpectedFromExistingRecord, second.BeforeAxiomsExpectedFromExistingRecord) &&
		sameStringSet(first.AfterAxiomsExpectedFromExistingRecord, second.AfterAxiomsExpectedFromExistingRecord)
}

func indexManifestMemberships(manifest replayManifest) (map[string]map[string]replayMembership, error) {
	bySource := make(map[string]map[string]replayMembership)
	for _, batch := range manifest.Batches {
		if strings.TrimSpace(batch.Batch) == "" || batch.PairSetPath == "" || batch.CatalogSnapshotPath == "" || !validDigest(batch.PairSetSHA256) || !validDigest(batch.CatalogSnapshotContentSHA256) || !validDigest(batch.CatalogSnapshotFileSHA256) {
			return nil, fmt.Errorf("taste: manifest batch %q has invalid identity or content hashes", batch.Batch)
		}
		if batch.PairCount != len(batch.Pairs) || batch.MathlibRevision != manifest.MathlibRevision {
			return nil, fmt.Errorf("taste: manifest batch %q pair count or Mathlib revision is inconsistent", batch.Batch)
		}
		uniqueSources := make(map[string]struct{})
		seenPairIDs := make(map[string]struct{}, len(batch.Pairs))
		for _, member := range batch.Pairs {
			if member.Batch != batch.Batch || member.PairID == "" || member.EvidenceID == "" || !validDigest(member.EvidenceJSONSHA256) || !validDigest(member.ReplaySourceSHA256) ||
				member.ReplaySourceRelativePath != "replay/"+member.EvidenceID+".lean" || member.BeforeTheorem == "" || member.AfterTheorem == "" {
				return nil, fmt.Errorf("taste: manifest batch %q contains malformed pair membership", batch.Batch)
			}
			if _, dup := seenPairIDs[member.PairID]; dup {
				return nil, fmt.Errorf("taste: manifest batch %q duplicates pair %q", batch.Batch, member.PairID)
			}
			seenPairIDs[member.PairID] = struct{}{}
			uniqueSources[member.ReplaySourceSHA256] = struct{}{}
			if bySource[member.ReplaySourceSHA256] == nil {
				bySource[member.ReplaySourceSHA256] = make(map[string]replayMembership)
			}
			key := membershipKey(member.Batch, member.PairID)
			if _, exists := bySource[member.ReplaySourceSHA256][key]; exists {
				return nil, fmt.Errorf("taste: duplicate source membership %q in batch %q", member.PairID, batch.Batch)
			}
			bySource[member.ReplaySourceSHA256][key] = member
		}
		if batch.DistinctReplaySourceCount != len(uniqueSources) {
			return nil, fmt.Errorf("taste: manifest batch %q distinct replay-source count is inconsistent", batch.Batch)
		}
	}
	return bySource, nil
}

func membershipKey(batch, pairID string) string { return batch + "\x00" + pairID }

func sameMembershipSet(first, second []replayMembership) bool {
	if len(first) != len(second) {
		return false
	}
	byKey := make(map[string]replayMembership, len(first))
	for _, member := range first {
		key := membershipKey(member.Batch, member.PairID)
		if _, exists := byKey[key]; exists {
			return false
		}
		byKey[key] = member
	}
	for _, member := range second {
		want, ok := byKey[membershipKey(member.Batch, member.PairID)]
		if !ok || !sameMembershipIgnoringBatch(want, member) {
			return false
		}
	}
	return true
}

func sameStringSet(first, second []string) bool {
	if len(first) != len(second) {
		return false
	}
	seen := make(map[string]struct{}, len(first))
	for _, value := range first {
		if _, dup := seen[value]; dup {
			return false
		}
		seen[value] = struct{}{}
	}
	for _, value := range second {
		if _, ok := seen[value]; !ok {
			return false
		}
		delete(seen, value)
	}
	return len(seen) == 0
}

func decodeProgress(data []byte, manifest replayManifest) (map[string][]replayProgressEvent, map[string]map[string]struct{}, error) {
	byRunID := make(map[string][]replayProgressEvent)
	sources := make(map[string]map[string]struct{})
	selected := make(map[string]struct{}, len(manifest.SourceSelection.SelectedSourceSHA256s))
	for _, sourceHash := range manifest.SourceSelection.SelectedSourceSHA256s {
		if !validDigest(sourceHash) {
			return nil, nil, errors.New("taste: manifest selected-source list contains an invalid digest")
		}
		if _, dup := selected[sourceHash]; dup {
			return nil, nil, errors.New("taste: manifest selected-source list contains a duplicate digest")
		}
		selected[sourceHash] = struct{}{}
	}
	scanner := bufio.NewScanner(bytes.NewReader(data))
	scanner.Buffer(make([]byte, 64*1024), maxReplayAuditJSONBytes)
	lineNumber := 0
	for scanner.Scan() {
		lineNumber++
		line := bytes.TrimSpace(scanner.Bytes())
		if len(line) == 0 {
			continue
		}
		var event replayProgressEvent
		if err := decodeReplayJSON(line, &event); err != nil {
			return nil, nil, fmt.Errorf("taste: decode process event line %d: %w", lineNumber, err)
		}
		if event.SchemaVersion != mathlibLeanReplayProgressSchema || event.RecordedAtUTC.IsZero() || event.RunID == "" || !validDigest(event.SourceSHA256) {
			return nil, nil, fmt.Errorf("taste: process event line %d has an invalid schema or identity", lineNumber)
		}
		if _, ok := selected[event.SourceSHA256]; !ok {
			return nil, nil, fmt.Errorf("taste: process event line %d references a source not selected by the manifest", lineNumber)
		}
		if event.EventType != "LAUNCH_INTENT" && event.EventType != "PROCESS_STARTED" && event.EventType != "COMPLETED" {
			return nil, nil, fmt.Errorf("taste: unknown process event type %q", event.EventType)
		}
		if event.ReceiptPath == "" {
			return nil, nil, fmt.Errorf("taste: process event line %d omits its receipt path", lineNumber)
		}
		switch event.EventType {
		case "LAUNCH_INTENT":
			if event.ContainerName == "" || event.ImageID == "" || len(event.CommandArgv) == 0 || event.StdoutPath == "" || event.StderrPath == "" {
				return nil, nil, fmt.Errorf("taste: process event line %d launch intent omits launch identity or output paths", lineNumber)
			}
		case "PROCESS_STARTED":
			if event.ContainerName == "" || len(event.CommandArgv) == 0 || event.HostPID <= 0 {
				return nil, nil, fmt.Errorf("taste: process event line %d start event omits process identity", lineNumber)
			}
		case "COMPLETED":
			if event.ExecutionOutcome == "" {
				return nil, nil, fmt.Errorf("taste: process event line %d completion omits its execution outcome", lineNumber)
			}
		}
		byRunID[event.RunID] = append(byRunID[event.RunID], event)
		if sources[event.SourceSHA256] == nil {
			sources[event.SourceSHA256] = make(map[string]struct{})
		}
		sources[event.SourceSHA256][event.RunID] = struct{}{}
	}
	if err := scanner.Err(); err != nil {
		return nil, nil, fmt.Errorf("taste: scan process event log: %w", err)
	}
	for runID, events := range byRunID {
		for i := range events {
			if i > 0 && events[i].RecordedAtUTC.Before(events[i-1].RecordedAtUTC) {
				return nil, nil, fmt.Errorf("taste: process events for run %q are out of timestamp order", runID)
			}
			if i == 0 && events[i].EventType != "LAUNCH_INTENT" || i == 1 && events[i].EventType != "PROCESS_STARTED" || i == 2 && events[i].EventType != "COMPLETED" || i > 2 {
				return nil, nil, fmt.Errorf("taste: process events for run %q are not in launch/start/complete order", runID)
			}
			if i > 0 && (events[i].SourceSHA256 != events[0].SourceSHA256 || events[i].RunID != events[0].RunID || !sameMembershipSet(events[i].Memberships, events[0].Memberships)) {
				return nil, nil, fmt.Errorf("taste: process events for run %q change source or memberships", runID)
			}
		}
	}
	return byRunID, sources, nil
}

func auditManifestRuns(
	root string,
	manifest replayManifest,
	allMemberships map[string]map[string]replayMembership,
	requestedMemberships map[string]replayMembership,
	req MathlibLeanReplayAuditRequest,
	preflight replayPreflightReceipt,
	progressByRunID map[string][]replayProgressEvent,
) ([]auditedReplayRun, map[string]auditedReplayRun, []MathlibLeanReplayReceiptDigest, error) {
	_ = requestedMemberships // caller membership bytes are rechecked per receipt below.
	_ = req
	if len(manifest.Runs) > len(manifest.SourceSelection.SelectedSourceSHA256s) {
		return nil, nil, nil, errors.New("taste: manifest has more process receipts than selected replay sources")
	}
	audited := make([]auditedReplayRun, 0, len(manifest.Runs))
	bySource := make(map[string]auditedReplayRun, len(manifest.Runs))
	digests := make([]MathlibLeanReplayReceiptDigest, 0, len(manifest.Runs))
	seenSources := make(map[string]struct{}, len(manifest.Runs))
	seenPaths := make(map[string]struct{}, len(manifest.Runs))
	selected := make(map[string]struct{}, len(manifest.SourceSelection.SelectedSourceSHA256s))
	for _, source := range manifest.SourceSelection.SelectedSourceSHA256s {
		selected[source] = struct{}{}
	}
	for _, run := range manifest.Runs {
		if !validDigest(run.SourceSHA256) {
			return nil, nil, nil, errors.New("taste: manifest run contains an invalid source digest")
		}
		if _, ok := selected[run.SourceSHA256]; !ok {
			return nil, nil, nil, fmt.Errorf("taste: manifest run source %s was not selected", run.SourceSHA256)
		}
		if _, dup := seenSources[run.SourceSHA256]; dup {
			return nil, nil, nil, fmt.Errorf("taste: manifest repeats a process receipt for source %s", run.SourceSHA256)
		}
		seenSources[run.SourceSHA256] = struct{}{}
		if _, dup := seenPaths[run.ReceiptPath]; dup {
			return nil, nil, nil, fmt.Errorf("taste: manifest repeats receipt path %q", run.ReceiptPath)
		}
		seenPaths[run.ReceiptPath] = struct{}{}
		if filepath.IsAbs(run.ReceiptPath) || filepath.IsAbs(run.StdoutPath) || filepath.IsAbs(run.StderrPath) || run.ReceiptPath == "" || run.StdoutPath == "" || run.StderrPath == "" {
			return nil, nil, nil, errors.New("taste: manifest run receipt and output paths must be non-empty and RunnerRoot-relative")
		}
		receiptBytes, receiptPath, err := readRunnerFile(root, run.ReceiptPath, false, maxReplayAuditJSONBytes)
		if err != nil {
			return nil, nil, nil, fmt.Errorf("taste: reopen referenced execution receipt %q: %w", run.ReceiptPath, err)
		}
		var receipt replayExecutionReceipt
		if err := decodeReplayJSON(receiptBytes, &receipt); err != nil {
			return nil, nil, nil, fmt.Errorf("taste: decode referenced execution receipt %q: %w", run.ReceiptPath, err)
		}
		if err := validateExecutionReceipt(root, manifest, run, receipt, allMemberships, req, preflight); err != nil {
			return nil, nil, nil, fmt.Errorf("taste: execution receipt %q: %w", run.ReceiptPath, err)
		}
		if err := validateReceiptProgress(run, receipt, progressByRunID[receipt.RunID]); err != nil {
			return nil, nil, nil, fmt.Errorf("taste: execution receipt %q process events: %w", run.ReceiptPath, err)
		}
		runAudit := auditedReplayRun{manifestRun: run, receipt: receipt, receiptSHA: digestBytes(receiptBytes)}
		switch {
		case receipt.TimedOut || receipt.HostCLITerminated || !receipt.ContainerResolvedAbsent:
			runAudit.status = "INCOMPLETE"
			runAudit.reason = "timeout, host-process interruption, or unresolved container prevents a complete execution result"
		case receipt.ExecutionOutcome == "EXECUTED_PASS":
			runAudit.status = "PASS"
			runAudit.reason = "raw process output, theorem names, axiom sets, sandbox argv, and receipt hashes agree"
		default:
			runAudit.status = "FAIL"
			runAudit.reason = "the recorded process completed without satisfying the Lean replay acceptance checks"
		}
		audited = append(audited, runAudit)
		bySource[run.SourceSHA256] = runAudit
		digests = append(digests, MathlibLeanReplayReceiptDigest{
			RunID: receipt.RunID, SourceSHA256: run.SourceSHA256, ReceiptPath: filepath.ToSlash(run.ReceiptPath),
			ReceiptSHA256: runAudit.receiptSHA, ExecutionOutcome: receipt.ExecutionOutcome,
		})
		_ = receiptPath
	}
	sort.Slice(digests, func(i, j int) bool { return digests[i].SourceSHA256 < digests[j].SourceSHA256 })
	return audited, bySource, digests, nil
}

func validateExecutionReceipt(root string, manifest replayManifest, run replayManifestRun, receipt replayExecutionReceipt, allMemberships map[string]map[string]replayMembership, req MathlibLeanReplayAuditRequest, preflight replayPreflightReceipt) error {
	if receipt.SchemaVersion != mathlibLeanReplayReceiptSchema || receipt.RunID == "" || receipt.StartedAtUTC.IsZero() || receipt.FinishedAtUTC.IsZero() || receipt.FinishedAtUTC.Before(receipt.StartedAtUTC) || receipt.ElapsedMilliseconds < 0 {
		return errors.New("unsupported or incomplete process receipt identity/timestamps")
	}
	if receipt.ExecutionOutcome != "EXECUTED_PASS" && receipt.ExecutionOutcome != "EXECUTED_FAIL_OR_INCOMPLETE" {
		return fmt.Errorf("unknown execution outcome %q", receipt.ExecutionOutcome)
	}
	if receipt.SourceSHA256 != run.SourceSHA256 || receipt.ImageID != req.ExpectedImageID || receipt.MathlibRevision != req.ExpectedMathlibRevision || receipt.MathlibPath != manifest.MathlibCheckout || receipt.LeanVersionReceipt != manifest.RuntimeReceiptPath {
		return errors.New("process receipt source, image, Mathlib, or runtime pin does not match the manifest/request")
	}
	if !sameCommand([]string{receipt.DockerExecutable}, []string{preflight.DockerExecutable}) {
		return errors.New("process receipt Docker executable differs from preflight")
	}
	if !validDigest(receipt.SourceSHA256) || !filepath.IsAbs(receipt.MathlibPath) || !filepath.IsAbs(receipt.SourcePath) || receipt.SourceBytes <= 0 || receipt.ContainerName == "" {
		return errors.New("process receipt has invalid source, Mathlib, or container metadata")
	}
	if receipt.StdoutPath != run.StdoutPath || receipt.StderrPath != run.StderrPath || receipt.ExecutionOutcome != run.ExecutionOutcome || receipt.ContainerResolvedAbsent != run.ContainerResolvedAbsent {
		return errors.New("manifest process summary differs from the referenced execution receipt")
	}
	stdout, _, err := readRunnerFile(root, receipt.StdoutPath, false, maxReplayAuditSidecarBytes)
	if err != nil {
		return fmt.Errorf("read raw Lean stdout: %w", err)
	}
	stderr, _, err := readRunnerFile(root, receipt.StderrPath, false, maxReplayAuditSidecarBytes)
	if err != nil {
		return fmt.Errorf("read raw Lean stderr: %w", err)
	}
	if digestBytes(stdout) != receipt.StdoutSHA256 || digestBytes(stderr) != receipt.StderrSHA256 || int64(len(stdout)) != receipt.StdoutBytes || int64(len(stderr)) != receipt.StderrBytes {
		return errors.New("raw Lean stdout/stderr hashes or byte counts do not match the process receipt")
	}
	if receipt.ContainerCleanup.ContainerName != receipt.ContainerName || receipt.ContainerResolvedAbsent != receipt.ContainerCleanup.ContainerResolvedAbsent {
		return errors.New("process receipt and container-cleanup record disagree")
	}
	if err := validateContainerCleanup(receipt.ContainerCleanup, receipt.DockerExecutable, "taste-replay-v3"); err != nil {
		return fmt.Errorf("container cleanup: %w", err)
	}
	if !sameCommand(receipt.CommandArgv[:minInt(1, len(receipt.CommandArgv))], []string{receipt.DockerExecutable}) ||
		!safeDockerRun(receipt.CommandArgv, dockerArgvExpectation{
			DockerExecutable: receipt.DockerExecutable, ContainerName: receipt.ContainerName,
			ImageID: req.ExpectedImageID, MathlibPath: manifest.MathlibCheckout,
			SourcePath: receipt.SourcePath, SourceTarget: receipt.SourceMountTarget, Mode: "replay",
		}) {
		return errors.New("process Docker argv does not satisfy the pinned read-only sandbox policy")
	}
	if !dockerExecutableName(receipt.DockerExecutable) || !sameCommand(receipt.CommandArgv[:1], []string{receipt.DockerExecutable}) || !validDigest(receipt.StdoutSHA256) || !validDigest(receipt.StderrSHA256) {
		return errors.New("process receipt has invalid Docker executable or raw-output digests")
	}
	if filepath.Base(receipt.SourcePath) != filepath.Base(receipt.SourceMountTarget) || receipt.SourceMountTarget != "/workspace/"+filepath.Base(receipt.SourcePath) {
		return errors.New("process receipt replay-source mount target does not match the exact source filename")
	}

	var source []byte
	var candidateEvidence []MathlibSimplificationEvidence
	for pairID, membership := range requestedMembershipsForSource(receipt.SourceSHA256, req) {
		_ = pairID
		if membership.ReplaySourceSHA256 != receipt.SourceSHA256 {
			continue
		}
		candidateBytes, ok := req.EvidenceFiles[membership.ReplaySourceRelativePath]
		if !ok {
			return errors.New("caller-reopened replay source bytes are missing")
		}
		if source == nil {
			source = candidateBytes
		} else if !bytes.Equal(source, candidateBytes) {
			return errors.New("pairs sharing a replay source hash supplied different source bytes")
		}
		var evidence MathlibSimplificationEvidence
		if err := json.Unmarshal(req.EvidenceFiles[membership.EvidenceID+".json"], &evidence); err != nil {
			return fmt.Errorf("decode caller evidence %q: %w", membership.EvidenceID, err)
		}
		candidateEvidence = append(candidateEvidence, evidence)
	}
	if source == nil {
		// This source may belong to a different batch in the same multi-batch
		// manifest. The runner receipt still has to bind to its manifest entries.
		for _, membership := range receipt.Memberships {
			if membership.ReplaySourceSHA256 != receipt.SourceSHA256 {
				continue
			}
			if digestBytes(req.EvidenceFiles[membership.ReplaySourceRelativePath]) == receipt.SourceSHA256 && len(req.EvidenceFiles[membership.ReplaySourceRelativePath]) > 0 {
				source = req.EvidenceFiles[membership.ReplaySourceRelativePath]
				var evidence MathlibSimplificationEvidence
				if err := json.Unmarshal(req.EvidenceFiles[membership.EvidenceID+".json"], &evidence); err == nil {
					candidateEvidence = append(candidateEvidence, evidence)
				}
			}
		}
	}
	if source == nil {
		// Caller batches can be a strict subset of the runner's staged batches.
		// In that case, pair evidence for this source is unavailable; the manifest
		// still supplies the exact memberships and source hash, but no claim is
		// made about non-requested candidate evidence.
		if !safeContainerTarget(receipt.SourceMountTarget) {
			return errors.New("process receipt has an unsafe source mount target")
		}
	} else if digestBytes(source) != receipt.SourceSHA256 || int64(len(source)) != receipt.SourceBytes || !sourceDeclaresExpectedTheorems(source, receipt.ExpectedTheoremNames, receipt.Memberships) {
		return errors.New("process source bytes/hash/size or theorem declarations do not match the receipt")
	}
	if source != nil && !bytes.Equal(source, req.EvidenceFiles[filepath.ToSlash(filepath.Join("replay", filepath.Base(receipt.SourcePath)))]) {
		// The source may be rooted under another candidate bundle, so the stable
		// evidence map key is validated through each membership above; this extra
		// comparison only applies when the conventional key is present.
		if conventional, ok := req.EvidenceFiles["replay/"+filepath.Base(receipt.SourcePath)]; ok && !bytes.Equal(source, conventional) {
			return errors.New("caller replay source aliases disagree")
		}
	}

	manifestExpectedMemberships := allMemberships[receipt.SourceSHA256]
	if len(manifestExpectedMemberships) == 0 || !sameMembershipSet(receipt.Memberships, mapMemberships(manifestExpectedMemberships)) {
		return errors.New("process receipt pair/evidence memberships do not exactly match the manifest's source membership")
	}
	if !validObservedAxiomMap(receipt.ObservedTheoremAxioms, receipt.ExpectedTheoremNames) || !sameStringSet(receipt.AllowedAxioms, standardAxiomNames()) {
		return errors.New("process receipt theorem/axiom map or allowed-axiom policy is malformed")
	}
	if !sameStringSet(receipt.ExpectedTheoremNames, theoremNamesFromMemberships(receipt.Memberships)) {
		return errors.New("process receipt theorem names differ from exact pair/evidence memberships")
	}
	if source != nil && !sourceDeclaresExpectedTheorems(source, receipt.ExpectedTheoremNames, receipt.Memberships) {
		return errors.New("process receipt theorem names are not declared and queried by the exact replay source")
	}
	computedNamesMatch, computedAllowed, computedClaimsMatch, parseErr := evaluateReplayOutput(string(stdout), receipt, candidateEvidence)
	if receipt.OutputNamesMatchSourceAndPairSet != computedNamesMatch || receipt.AllObservedAxiomsAllowed != computedAllowed || receipt.ActualAxiomsMatchExistingClaims != computedClaimsMatch {
		return errors.New("process receipt's derived theorem/axiom booleans do not match reopened stdout and caller evidence")
	}
	processCanPass := receipt.ExitCode == 0 && !receipt.TimedOut && !receipt.HostCLITerminated && receipt.ContainerResolvedAbsent &&
		computedNamesMatch && computedAllowed && computedClaimsMatch && parseErr == nil && receipt.ContainerCleanup.CleanupReason == "natural_process_exit"
	if processCanPass != (receipt.ExecutionOutcome == "EXECUTED_PASS") {
		return errors.New("process outcome label does not match the reopened process and Lean output")
	}
	if receipt.TimedOut && receipt.ExitCode == 0 {
		return errors.New("timed-out Lean process cannot record exit code zero as a completed result")
	}
	return nil
}

func requestedMembershipsForSource(sourceSHA string, req MathlibLeanReplayAuditRequest) map[string]replayMembership {
	result := make(map[string]replayMembership)
	for _, pair := range req.Pairs {
		data := req.EvidenceFiles[pair.SimplificationEvidenceID+".json"]
		var evidence MathlibSimplificationEvidence
		if json.Unmarshal(data, &evidence) != nil || evidence.ReplaySourceSHA256 != sourceSHA {
			continue
		}
		result[pair.PairID] = replayMembership{
			PairID: pair.PairID, EvidenceID: pair.SimplificationEvidenceID, EvidenceJSONSHA256: pair.SimplificationEvidenceSHA256,
			ReplaySourceRelativePath: evidence.ReplaySourcePath, ReplaySourceSHA256: evidence.ReplaySourceSHA256,
			BeforeTheorem: evidence.BeforeTheorem, AfterTheorem: evidence.AfterTheorem,
			BeforeAxiomsExpectedFromExistingRecord: append([]string(nil), evidence.BeforeAxioms...),
			AfterAxiomsExpectedFromExistingRecord:  append([]string(nil), evidence.AfterAxioms...),
		}
	}
	return result
}

func mapMemberships(members map[string]replayMembership) []replayMembership {
	result := make([]replayMembership, 0, len(members))
	for _, member := range members {
		result = append(result, member)
	}
	return result
}

func sourceDeclaresExpectedTheorems(source []byte, expected []string, memberships []replayMembership) bool {
	if len(expected) == 0 || len(memberships) == 0 {
		return false
	}
	decls := replayLeanDeclarationPattern.FindAllSubmatch(source, -1)
	prints := replayLeanPrintPattern.FindAllSubmatch(source, -1)
	if len(decls) != len(expected) || len(prints) != len(expected) {
		return false
	}
	want := make(map[string]struct{}, len(expected))
	for _, name := range expected {
		want[name] = struct{}{}
	}
	seenDecls := make(map[string]struct{}, len(decls))
	for _, match := range decls {
		if len(match) < 2 {
			return false
		}
		seenDecls[string(match[1])] = struct{}{}
	}
	seenPrints := make(map[string]struct{}, len(prints))
	for _, match := range prints {
		if len(match) < 2 {
			return false
		}
		seenPrints[string(match[1])] = struct{}{}
	}
	for name := range want {
		declared := false
		printed := false
		if _, ok := seenDecls[name]; ok {
			declared = true
		} else if strings.Contains(name, ".") {
			_, declared = seenDecls[name[strings.LastIndex(name, ".")+1:]]
		}
		if _, ok := seenPrints[name]; ok {
			printed = true
		} else if strings.Contains(name, ".") {
			_, printed = seenPrints[name[strings.LastIndex(name, ".")+1:]]
		}
		if !declared || !printed {
			return false
		}
	}
	return len(seenDecls) == len(expected) && len(seenPrints) == len(expected)
}

func evaluateReplayOutput(output string, receipt replayExecutionReceipt, evidence []MathlibSimplificationEvidence) (namesMatch, allAllowed, claimsMatch bool, parseErr error) {
	if len(receipt.ExpectedTheoremNames) < 2 || len(receipt.ExpectedTheoremNames)%2 != 0 {
		return false, false, false, errors.New("proof-pair replay requires a positive even number of theorem names")
	}
	allAllowed = true
	claimsMatch = true
	observed := make(map[string][]string, len(receipt.ExpectedTheoremNames))
	for _, theorem := range receipt.ExpectedTheoremNames {
		axioms, ok := verification.ParseAxiomOutput(theorem, output)
		if !ok {
			parseErr = fmt.Errorf("Lean stdout does not contain exactly one axiom line for %q", theorem)
			allAllowed = false
			claimsMatch = false
			continue
		}
		observed[theorem] = axioms
		for _, axiom := range axioms {
			if _, ok := mathlibStandardAxioms[axiom]; !ok {
				allAllowed = false
			}
		}
	}
	var printedNames []string
	for _, line := range strings.Split(output, "\n") {
		line = strings.TrimSpace(line)
		if !replayAxiomOutputLike.MatchString(line) {
			continue
		}
		start := strings.IndexByte(line, '\'')
		end := strings.IndexByte(line[start+1:], '\'')
		if start < 0 || end < 0 {
			continue
		}
		printedNames = append(printedNames, line[start+1:start+1+end])
	}
	namesMatch = sameStringSet(printedNames, receipt.ExpectedTheoremNames) && len(printedNames) == len(receipt.ExpectedTheoremNames)
	if len(observed) != len(receipt.ExpectedTheoremNames) || len(receipt.ObservedTheoremAxioms) != len(receipt.ExpectedTheoremNames) || !validObservedAxiomMap(receipt.ObservedTheoremAxioms, receipt.ExpectedTheoremNames) {
		claimsMatch = false
	} else {
		for _, theorem := range receipt.ExpectedTheoremNames {
			if !sameStringSet(observed[theorem], receipt.ObservedTheoremAxioms[theorem]) {
				claimsMatch = false
			}
		}
	}
	if !allAxiomsMatchMemberships(observed, receipt.Memberships) {
		claimsMatch = false
	}
	if len(evidence) > 0 {
		for _, row := range evidence {
			if !sameStringSet(observed[row.BeforeTheorem], row.BeforeAxioms) || !sameStringSet(observed[row.AfterTheorem], row.AfterAxioms) {
				claimsMatch = false
			}
			if !sameStringSet(row.AllowedAxioms, receipt.AllowedAxioms) {
				claimsMatch = false
			}
		}
	}
	for _, line := range strings.Split(output, "\n") {
		trimmed := strings.TrimSpace(line)
		if strings.HasPrefix(trimmed, "'") && strings.Contains(trimmed, " depends on axioms") && !replayAxiomOutputLike.MatchString(trimmed) {
			namesMatch = false
		}
	}
	return namesMatch, allAllowed, claimsMatch, parseErr
}

func allAxiomsMatchMemberships(observed map[string][]string, memberships []replayMembership) bool {
	if len(memberships) == 0 {
		return false
	}
	for _, member := range memberships {
		before, beforeOK := observed[member.BeforeTheorem]
		after, afterOK := observed[member.AfterTheorem]
		if !beforeOK || !afterOK || !sameStringSet(before, member.BeforeAxiomsExpectedFromExistingRecord) || !sameStringSet(after, member.AfterAxiomsExpectedFromExistingRecord) {
			return false
		}
	}
	return true
}

func validObservedAxiomMap(actual map[string][]string, expectedNames []string) bool {
	want := make(map[string]struct{}, len(expectedNames))
	for _, name := range expectedNames {
		if name == "" {
			return false
		}
		if _, dup := want[name]; dup {
			return false
		}
		want[name] = struct{}{}
	}
	if len(actual) > len(want) {
		return false
	}
	for name, axioms := range actual {
		if _, ok := want[name]; !ok {
			return false
		}
		seen := make(map[string]struct{}, len(axioms))
		for _, axiom := range axioms {
			if axiom == "" {
				return false
			}
			if _, dup := seen[axiom]; dup {
				return false
			}
			seen[axiom] = struct{}{}
		}
	}
	return true
}

func theoremNamesFromMemberships(memberships []replayMembership) []string {
	seen := make(map[string]struct{}, len(memberships)*2)
	for _, member := range memberships {
		if member.BeforeTheorem == "" || member.AfterTheorem == "" || member.BeforeTheorem == member.AfterTheorem {
			return nil
		}
		seen[member.BeforeTheorem] = struct{}{}
		seen[member.AfterTheorem] = struct{}{}
	}
	result := make([]string, 0, len(seen))
	for name := range seen {
		result = append(result, name)
	}
	sort.Strings(result)
	return result
}

func standardAxiomNames() []string {
	result := make([]string, 0, len(mathlibStandardAxioms))
	for name := range mathlibStandardAxioms {
		result = append(result, name)
	}
	sort.Strings(result)
	return result
}

func minInt(first, second int) int {
	if first < second {
		return first
	}
	return second
}

func validateReceiptProgress(run replayManifestRun, receipt replayExecutionReceipt, events []replayProgressEvent) error {
	if len(events) != 3 {
		return fmt.Errorf("got %d process events, want LAUNCH_INTENT, PROCESS_STARTED, COMPLETED", len(events))
	}
	launch, started, completed := events[0], events[1], events[2]
	if launch.EventType != "LAUNCH_INTENT" || started.EventType != "PROCESS_STARTED" || completed.EventType != "COMPLETED" {
		return errors.New("process event sequence is not LAUNCH_INTENT, PROCESS_STARTED, COMPLETED")
	}
	for _, event := range events {
		if event.RunID != receipt.RunID || event.SourceSHA256 != receipt.SourceSHA256 || event.ReceiptPath != run.ReceiptPath || !sameMembershipSet(event.Memberships, receipt.Memberships) {
			return errors.New("process event identity or memberships differ from the receipt")
		}
	}
	if launch.ContainerName != receipt.ContainerName || launch.ImageID != receipt.ImageID || !sameCommand(launch.CommandArgv, receipt.CommandArgv) ||
		launch.StdoutPath != receipt.StdoutPath || launch.StderrPath != receipt.StderrPath {
		return errors.New("LAUNCH_INTENT fields differ from the execution receipt")
	}
	if started.ContainerName != receipt.ContainerName || !sameCommand(started.CommandArgv, receipt.CommandArgv) || started.HostPID <= 0 {
		return errors.New("PROCESS_STARTED fields differ from the execution receipt")
	}
	if completed.ExecutionOutcome != receipt.ExecutionOutcome || completed.ContainerResolvedAbsent != receipt.ContainerResolvedAbsent || receipt.ExecutionOutcome != run.ExecutionOutcome || receipt.ContainerResolvedAbsent != run.ContainerResolvedAbsent {
		return errors.New("COMPLETED event outcome differs from the execution receipt or manifest")
	}
	return nil
}

func validateProgressCompleteness(
	manifest replayManifest,
	progressByRunID map[string][]replayProgressEvent,
	progressSources map[string]map[string]struct{},
	runBySource map[string]auditedReplayRun,
	allMemberships map[string]map[string]replayMembership,
) error {
	for runID, events := range progressByRunID {
		if len(events) == 0 {
			continue
		}
		sourceHash := events[0].SourceSHA256
		if _, completedRun := runBySource[sourceHash]; completedRun {
			continue // validated against the exact receipt in validateReceiptProgress.
		}
		if events[len(events)-1].EventType == "COMPLETED" {
			return fmt.Errorf("taste: process event run %q completed without a manifest receipt", runID)
		}
		if len(events) > 2 || len(events) == 2 && events[1].EventType != "PROCESS_STARTED" {
			return fmt.Errorf("taste: receipt-free process run %q has an invalid partial event sequence", runID)
		}
		if events[0].EventType != "LAUNCH_INTENT" {
			return fmt.Errorf("taste: receipt-free process run %q has no launch intent", runID)
		}
		if !sameMembershipSet(events[0].Memberships, mapMemberships(allMemberships[sourceHash])) {
			return fmt.Errorf("taste: partial process run %q membership differs from its source records", runID)
		}
		if len(events[0].CommandArgv) == 0 || !safeDockerRun(events[0].CommandArgv, dockerArgvExpectation{
			DockerExecutable: events[0].CommandArgv[0], ContainerName: events[0].ContainerName,
			ImageID: manifest.PinnedImage, MathlibPath: manifest.MathlibCheckout,
			SourcePath: sourcePathFromDockerArgv(events[0].CommandArgv), SourceTarget: finalDockerArg(events[0].CommandArgv), Mode: "replay",
		}) {
			return fmt.Errorf("taste: partial process run %q launch intent violates the pinned sandbox policy", runID)
		}
	}
	for sourceHash, runIDs := range progressSources {
		if len(runIDs) == 0 {
			return fmt.Errorf("taste: empty process event group for source %s", sourceHash)
		}
		if len(runIDs) > 1 {
			return fmt.Errorf("taste: multiple process attempts for source %s are not represented as separate manifest receipts", sourceHash)
		}
	}
	return nil
}

func sourcePathFromDockerArgv(argv []string) string {
	for i := 0; i+1 < len(argv); i++ {
		if argv[i] != "--mount" {
			continue
		}
		mount := argv[i+1]
		if !strings.Contains(mount, "target=/workspace/") {
			continue
		}
		for _, field := range strings.Split(mount, ",") {
			if strings.HasPrefix(field, "source=") {
				return strings.TrimPrefix(field, "source=")
			}
		}
	}
	return ""
}

func finalDockerArg(argv []string) string {
	if len(argv) == 0 {
		return ""
	}
	return argv[len(argv)-1]
}

func validateManifestRunCounts(
	manifest replayManifest,
	runs []auditedReplayRun,
	progressSources map[string]map[string]struct{},
	allMemberships map[string]map[string]replayMembership,
) error {
	allSources := make(map[string]struct{}, len(allMemberships))
	for sourceHash := range allMemberships {
		allSources[sourceHash] = struct{}{}
	}
	if manifest.DistinctReplaySourceCount != len(allSources) || manifest.SelectedSourceCount != len(manifest.SourceSelection.SelectedSourceSHA256s) ||
		manifest.NotStartedUniqueSourceCount != len(manifest.UnstartedSources) || manifest.AttemptedSourceCount != len(manifest.Runs) {
		return errors.New("taste: manifest source counts do not match exact memberships and run records")
	}
	selected := make(map[string]struct{}, len(manifest.SourceSelection.SelectedSourceSHA256s))
	for _, sourceHash := range manifest.SourceSelection.SelectedSourceSHA256s {
		if _, ok := allSources[sourceHash]; !ok {
			return fmt.Errorf("taste: selected source %s is absent from batch memberships", sourceHash)
		}
		selected[sourceHash] = struct{}{}
	}
	if requested := manifest.SourceSelection.RequestedSourceSHA256; requested != "" {
		if !validDigest(requested) {
			return errors.New("taste: requested source digest is malformed")
		}
		if len(selected) != 1 {
			return errors.New("taste: a source-specific replay selection must select exactly one source")
		}
		if _, ok := selected[requested]; !ok {
			return errors.New("taste: requested source digest is not the selected source")
		}
	}
	unstarted := make(map[string]struct{}, len(manifest.UnstartedSources))
	for _, sourceHash := range manifest.UnstartedSources {
		if !validDigest(sourceHash) {
			return errors.New("taste: manifest unstarted-source list contains an invalid digest")
		}
		if _, dup := unstarted[sourceHash]; dup {
			return errors.New("taste: manifest unstarted-source list contains duplicates")
		}
		if _, ok := allSources[sourceHash]; !ok {
			return fmt.Errorf("taste: unstarted source %s is absent from batch memberships", sourceHash)
		}
		unstarted[sourceHash] = struct{}{}
	}
	for sourceHash := range allSources {
		if _, selectedOK := selected[sourceHash]; !selectedOK && manifest.SelectedSourceCount == len(allSources) {
			return fmt.Errorf("taste: full selection omits replay source %s", sourceHash)
		}
	}
	passCount, failOrIncompleteCount := 0, 0
	runSources := make(map[string]struct{}, len(runs))
	for _, run := range runs {
		if _, ok := selected[run.receipt.SourceSHA256]; !ok {
			return fmt.Errorf("taste: process receipt source %s was not selected", run.receipt.SourceSHA256)
		}
		runSources[run.receipt.SourceSHA256] = struct{}{}
		if run.receipt.ExecutionOutcome == "EXECUTED_PASS" {
			passCount++
		} else {
			failOrIncompleteCount++
		}
	}
	if manifest.ExecutionPassCount != passCount || manifest.ExecutionFailOrIncompleteCount != failOrIncompleteCount {
		return errors.New("taste: manifest pass/failure counts do not match reopened process receipts")
	}
	for sourceHash := range runSources {
		if _, ok := unstarted[sourceHash]; ok {
			return fmt.Errorf("taste: source %s has a receipt but is marked unstarted", sourceHash)
		}
	}
	if len(runSources)+len(unstarted) != len(allSources) {
		return errors.New("taste: receipt and unstarted-source sets do not partition the runner input")
	}
	for sourceHash := range allSources {
		_, hasRun := runSources[sourceHash]
		_, isUnstarted := unstarted[sourceHash]
		if hasRun == isUnstarted {
			return fmt.Errorf("taste: source %s must appear in exactly one of receipt or unstarted sets", sourceHash)
		}
	}
	if len(progressSources) > 0 {
		for sourceHash := range progressSources {
			if _, ok := selected[sourceHash]; !ok {
				return fmt.Errorf("taste: process events exist for unselected source %s", sourceHash)
			}
		}
	}
	if manifest.Status == "COMPLETE" {
		if len(runSources) != len(allSources) || len(unstarted) != 0 || failOrIncompleteCount != 0 {
			return errors.New("taste: manifest claims COMPLETE without passing receipts for every replay source")
		}
	} else if len(runSources) == len(allSources) && failOrIncompleteCount == 0 {
		return errors.New("taste: manifest claims INCOMPLETE although every replay source has a passing receipt")
	}
	for _, batch := range manifest.Batches {
		passingSources := make(map[string]struct{})
		passingPairs := 0
		for _, member := range batch.Pairs {
			for _, run := range runs {
				if run.receipt.SourceSHA256 == member.ReplaySourceSHA256 && run.receipt.ExecutionOutcome == "EXECUTED_PASS" {
					passingSources[member.ReplaySourceSHA256] = struct{}{}
					passingPairs++
					break
				}
			}
		}
		wantOutcome := "EXECUTION_INCOMPLETE_OR_FAILED"
		if passingPairs == batch.PairCount {
			wantOutcome = "EXECUTION_PASS"
		}
		if batch.UniqueSuccessfulProcessCount != len(passingSources) || batch.PairsWithSuccessfulFreshExecution != passingPairs || batch.ExecutionOutcome != wantOutcome {
			return fmt.Errorf("taste: manifest batch %q execution counts do not match reopened receipts", batch.Batch)
		}
	}
	return nil
}
