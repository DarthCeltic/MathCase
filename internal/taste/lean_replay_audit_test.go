package taste

import (
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"
)

// These synthetic fixtures exercise receipt-consumption logic only. They do
// not execute Lean or Docker and make no authentication or production claim.
func TestAuditMathlibLeanReplayExecutionSyntheticPass(t *testing.T) {
	fixture := newSyntheticReplayAuditFixture(t)
	report, err := AuditMathlibLeanReplayExecution(fixture.request)
	if err != nil {
		t.Fatalf("AuditMathlibLeanReplayExecution() error = %v", err)
	}
	if report.Status != "PASS" || report.Authenticated || report.PassCount != 1 || report.FailCount != 0 || report.IncompleteCount != 0 {
		t.Fatalf("audit report = %+v, want one unauthenticated hash-bound pass", report)
	}
	if len(report.Pairs) != 1 || report.Pairs[0].Status != "PASS" || len(report.Receipts) != 1 || report.Receipts[0].ReceiptSHA256 == "" {
		t.Fatalf("pair/receipt report = %+v / %+v, want one passing pair and receipt digest", report.Pairs, report.Receipts)
	}
}

func TestReadRunnerFileRejectsSymlinkEscape(t *testing.T) {
	t.Parallel()
	root := t.TempDir()
	externalPath := filepath.Join(t.TempDir(), "external.py")
	if err := os.WriteFile(externalPath, []byte("outside\n"), 0o600); err != nil {
		t.Fatal(err)
	}
	escapePath := filepath.Join(root, "external.py")
	if err := os.Symlink(externalPath, escapePath); err != nil {
		t.Skipf("file symlink creation unavailable on this host: %v", err)
	}
	if _, _, err := readRunnerFile(root, escapePath, true, 1024); err == nil || !strings.Contains(err.Error(), "escapes the replay runner root") {
		t.Fatalf("readRunnerFile(out-of-root symlink) error = %v, want resolved-boundary refusal", err)
	}
}

func TestEvaluateReplayOutputSupportsMultipleExactPairsInOneProcess(t *testing.T) {
	pairs := [][2]string{
		{"PairOneBefore", "PairOneAfter"},
		{"PairTwoBefore", "PairTwoAfter"},
		{"PairThreeBefore", "PairThreeAfter"},
		{"PairFourBefore", "PairFourAfter"},
	}
	receipt := replayExecutionReceipt{
		ObservedTheoremAxioms: make(map[string][]string),
		AllowedAxioms:         standardAxiomNames(),
	}
	evidence := make([]MathlibSimplificationEvidence, 0, len(pairs))
	var output strings.Builder
	for _, pair := range pairs {
		before, after := pair[0], pair[1]
		axioms := []string{"propext"}
		receipt.ExpectedTheoremNames = append(receipt.ExpectedTheoremNames, before, after)
		receipt.ObservedTheoremAxioms[before] = append([]string(nil), axioms...)
		receipt.ObservedTheoremAxioms[after] = append([]string(nil), axioms...)
		receipt.Memberships = append(receipt.Memberships, replayMembership{
			BeforeTheorem: before, AfterTheorem: after,
			BeforeAxiomsExpectedFromExistingRecord: append([]string(nil), axioms...),
			AfterAxiomsExpectedFromExistingRecord:  append([]string(nil), axioms...),
		})
		evidence = append(evidence, MathlibSimplificationEvidence{
			BeforeTheorem: before, AfterTheorem: after,
			BeforeAxioms:  append([]string(nil), axioms...),
			AfterAxioms:   append([]string(nil), axioms...),
			AllowedAxioms: standardAxiomNames(),
		})
		fmt.Fprintf(&output, "'%s' depends on axioms: [propext]\n'%s' depends on axioms: [propext]\n", before, after)
	}

	namesMatch, allAllowed, claimsMatch, err := evaluateReplayOutput(output.String(), receipt, evidence)
	if err != nil || !namesMatch || !allAllowed || !claimsMatch {
		t.Fatalf("evaluateReplayOutput() = names %v, allowed %v, claims %v, err %v; want all checks to pass for %d exact pairs", namesMatch, allAllowed, claimsMatch, err, len(pairs))
	}
}

func TestAuditMathlibLeanReplayExecutionSyntheticTamperedOutputRejected(t *testing.T) {
	fixture := newSyntheticReplayAuditFixture(t)
	path := filepath.Join(fixture.root, fixture.stdoutPath)
	if err := os.WriteFile(path, []byte("tampered stdout\n"), 0o600); err != nil {
		t.Fatalf("tamper synthetic stdout: %v", err)
	}
	if _, err := AuditMathlibLeanReplayExecution(fixture.request); err == nil || !strings.Contains(err.Error(), "hash") {
		t.Fatalf("AuditMathlibLeanReplayExecution() error = %v, want raw-output hash rejection", err)
	}
}

func TestAuditMathlibLeanReplayExecutionSyntheticMissingReferencedReceiptRejected(t *testing.T) {
	fixture := newSyntheticReplayAuditFixture(t)
	manifestPath := filepath.Join(fixture.root, "manifest.json")
	data, err := os.ReadFile(manifestPath)
	if err != nil {
		t.Fatalf("read synthetic manifest: %v", err)
	}
	var manifest replayManifest
	if err := decodeReplayJSON(data, &manifest); err != nil {
		t.Fatalf("decode synthetic manifest: %v", err)
	}
	manifest.Runs[0].ReceiptPath = "runs/missing-receipt.json"
	updated, err := json.MarshalIndent(manifest, "", "  ")
	if err != nil {
		t.Fatalf("encode synthetic manifest: %v", err)
	}
	if err := os.WriteFile(manifestPath, updated, 0o600); err != nil {
		t.Fatalf("write synthetic manifest: %v", err)
	}
	if _, err := AuditMathlibLeanReplayExecution(fixture.request); err == nil || !errors.Is(err, os.ErrNotExist) {
		t.Fatalf("AuditMathlibLeanReplayExecution() error = %v, want missing receipt rejection", err)
	}
}

func TestAuditMathlibLeanReplayExecutionSyntheticPairSetTamperingRejected(t *testing.T) {
	fixture := newSyntheticReplayAuditFixture(t)
	path := filepath.Join(fixture.root, "synthetic", "pairs.json")
	data, err := os.ReadFile(path)
	if err != nil {
		t.Fatalf("read synthetic pair set: %v", err)
	}
	if err := os.WriteFile(path, append(data, []byte("\n-- changed after replay\n")...), 0o600); err != nil {
		t.Fatalf("tamper synthetic pair set: %v", err)
	}
	if _, err := AuditMathlibLeanReplayExecution(fixture.request); err == nil || !strings.Contains(err.Error(), "pair-set file hash") {
		t.Fatalf("AuditMathlibLeanReplayExecution() error = %v, want pair-set file hash rejection", err)
	}
}

type syntheticReplayAuditFixture struct {
	root       string
	request    MathlibLeanReplayAuditRequest
	stdoutPath string
}

func newSyntheticReplayAuditFixture(t *testing.T) syntheticReplayAuditFixture {
	t.Helper()
	root := t.TempDir()
	now := time.Date(2026, time.October, 20, 20, 0, 0, 0, time.UTC)
	snapshot, pairs, sourceFiles, evidenceFiles := tasteLabelFixture(t)
	pair := pairs[0]
	var evidence MathlibSimplificationEvidence
	if err := json.Unmarshal(evidenceFiles[pair.SimplificationEvidenceID+".json"], &evidence); err != nil {
		t.Fatalf("decode fixture evidence: %v", err)
	}

	beforeTheorem, afterTheorem := "MathCaseTasteBefore", "MathCaseTasteAfter"
	replaySource := []byte("theorem MathCaseTasteBefore : True := " + pair.BeforeProof + "\ntheorem MathCaseTasteAfter : True := " + pair.AfterProof + "\n#print axioms MathCaseTasteBefore\n#print axioms MathCaseTasteAfter\n")
	leanOutput := []byte("'MathCaseTasteBefore' does not depend on any axioms\n'MathCaseTasteAfter' does not depend on any axioms\n")
	evidence.BeforeTheorem = beforeTheorem
	evidence.AfterTheorem = afterTheorem
	evidence.BeforeAxiomOutput = "'" + beforeTheorem + "' does not depend on any axioms\n"
	evidence.AfterAxiomOutput = "'" + afterTheorem + "' does not depend on any axioms\n"
	evidence.BeforeAxioms = []string{}
	evidence.AfterAxioms = []string{}
	evidence.ReplaySourceSHA256 = digestBytes(replaySource)
	evidence.LeanOutputSHA256 = digestBytes(leanOutput)
	evidence.LeanVersion = "Lean (synthetic test fixture)"
	evidence.Command = "synthetic fixture only; no process was launched"
	evidence.RecordedAt = now
	evidenceBytes, err := json.Marshal(evidence)
	if err != nil {
		t.Fatalf("marshal synthetic evidence: %v", err)
	}
	pair.SimplificationEvidenceSHA256 = digestBytes(evidenceBytes)
	pairs[0] = pair
	evidenceFiles[pair.SimplificationEvidenceID+".json"] = evidenceBytes
	evidenceFiles[evidence.ReplaySourcePath] = replaySource
	evidenceFiles[evidence.LeanOutputPath] = leanOutput

	imageID := "sha256:" + strings.Repeat("a", 64)
	mathlibRevision := evidence.SourceRevision
	docker := filepath.Join(root, "docker.exe")
	mathlibPath := filepath.Join(root, "mathlib")
	sourcePath := filepath.Join(root, "input", "replay", filepath.Base(evidence.ReplaySourcePath))
	containerName := "mathcase-taste-replay-v3-synthetic"
	stdoutPath := "stdout/" + evidence.ReplaySourceSHA256[:16] + ".bin"
	stderrPath := "stderr/" + evidence.ReplaySourceSHA256[:16] + ".bin"
	receiptPath := "runs/" + evidence.ReplaySourceSHA256[:16] + ".json"
	leanPath := "/mathlib/.lake/build/lib/lean"
	runArgv := syntheticDockerArgv(docker, containerName, imageID, mathlibPath, sourcePath, "/workspace/"+filepath.Base(sourcePath), leanPath, true)
	versionArgv := syntheticDockerArgv(docker, "mathcase-mathlib-v3-runtime", imageID, mathlibPath, "", "", "", false)

	if err := writeSyntheticFile(root, "run_replays.py", []byte("synthetic runner fixture; not production runner code")); err != nil {
		t.Fatal(err)
	}
	for _, dir := range []string{"runs", "stdout", "stderr"} {
		if err := os.MkdirAll(filepath.Join(root, dir), 0o700); err != nil {
			t.Fatalf("create synthetic %s: %v", dir, err)
		}
	}
	if err := writeSyntheticFile(root, stdoutPath, leanOutput); err != nil {
		t.Fatal(err)
	}
	if err := writeSyntheticFile(root, stderrPath, nil); err != nil {
		t.Fatal(err)
	}

	cleanup := syntheticCleanup(t, docker, containerName, now)
	runtimeCleanup := syntheticCleanup(t, docker, "mathcase-mathlib-v3-runtime", now)
	runtimeOut := []byte("Lean (version 4.33.1, synthetic test fixture)\n")
	runtimeErr := []byte{}
	if err := writeSyntheticFile(root, "runtime.stdout.bin", runtimeOut); err != nil {
		t.Fatal(err)
	}
	if err := writeSyntheticFile(root, "runtime.stderr.bin", runtimeErr); err != nil {
		t.Fatal(err)
	}
	runtime := replayRuntimeReceipt{
		SchemaVersion: mathlibLeanReplayRuntimeSchema, RunID: "synthetic-runtime-run", StartedAtUTC: now, FinishedAtUTC: now.Add(time.Second),
		CommandArgv: versionArgv, ExitCode: 0, ElapsedMilliseconds: 1000, ImageID: imageID, MathlibCommit: mathlibRevision,
		StdoutPath: "runtime.stdout.bin", StdoutSHA256: digestBytes(runtimeOut), StderrPath: "runtime.stderr.bin", StderrSHA256: digestBytes(runtimeErr),
		LeanVersionOutput: strings.TrimSpace(string(runtimeOut)), ContainerCleanup: runtimeCleanup,
	}
	runtimeBytes := marshalSyntheticJSON(t, runtime)
	if err := writeSyntheticFile(root, "runtime.json", runtimeBytes); err != nil {
		t.Fatal(err)
	}

	imageOut := []byte(imageID + "\n")
	imageErr := []byte{}
	dockerVersionOut := []byte("29.6.2\n")
	dockerVersionErr := []byte{}
	for path, content := range map[string][]byte{
		"preflight-image.stdout.bin": imageOut, "preflight-image.stderr.bin": imageErr,
		"preflight-docker-version.stdout.bin": dockerVersionOut, "preflight-docker-version.stderr.bin": dockerVersionErr,
	} {
		if err := writeSyntheticFile(root, path, content); err != nil {
			t.Fatal(err)
		}
	}
	preflight := replayPreflightReceipt{
		SchemaVersion: mathlibLeanReplayPreflightSchema, RecordedAtUTC: now, DockerExecutable: docker,
		DockerVersionCommand:      []string{docker, "version", "--format", "{{.Server.Version}}"},
		DockerImageInspectCommand: []string{docker, "image", "inspect", imageID, "--format", "{{.Id}}"},
		PinnedImage:               imageID, ImageInspectExitCode: 0, ImageInspectStdoutSHA256: digestBytes(imageOut), ImageInspectStderrSHA256: digestBytes(imageErr),
		ImageInspectStdout: imageID, ImageInspectTimedOut: false, MathlibCheckout: mathlibPath, MathlibCommit: mathlibRevision, MathlibWorktreeClean: true,
		DockerVersionExitCode: 0, DockerServerVersion: "29.6.2", DockerVersionStdoutSHA256: digestBytes(dockerVersionOut),
		DockerVersionStderrSHA256: digestBytes(dockerVersionErr), DockerVersionTimedOut: false,
	}
	preflightBytes := marshalSyntheticJSON(t, preflight)
	if err := writeSyntheticFile(root, "preflight.json", preflightBytes); err != nil {
		t.Fatal(err)
	}
	runnerBytes, err := os.ReadFile(filepath.Join(root, "run_replays.py"))
	if err != nil {
		t.Fatal(err)
	}
	dataset := MathlibProofPairDataset{SchemaVersion: mathlibProofPairDatasetSchema, CatalogSnapshotSHA256: snapshot.ContentSHA256, Pairs: pairs}
	pairSetBytes := marshalSyntheticJSON(t, dataset)
	pairSetSHA := digestBytes(pairSetBytes)
	if err := writeSyntheticFile(root, "synthetic/pairs.json", pairSetBytes); err != nil {
		t.Fatal(err)
	}
	membership := replayMembership{
		Batch: "synthetic-batch", PairID: pair.PairID, EvidenceID: pair.SimplificationEvidenceID,
		EvidenceJSONSHA256: pair.SimplificationEvidenceSHA256, ReplaySourceRelativePath: evidence.ReplaySourcePath,
		ReplaySourceSHA256: evidence.ReplaySourceSHA256, BeforeTheorem: evidence.BeforeTheorem, AfterTheorem: evidence.AfterTheorem,
		BeforeAxiomsExpectedFromExistingRecord: evidence.BeforeAxioms, AfterAxiomsExpectedFromExistingRecord: evidence.AfterAxioms,
	}
	manifest := replayManifest{
		SchemaVersion: mathlibLeanReplayManifestSchema, RecordedAtUTC: now, RunnerPath: filepath.Join(root, "run_replays.py"), RunnerSHA256: digestBytes(runnerBytes),
		PreflightPath: "preflight.json", RuntimeReceiptPath: "runtime.json", PinnedImage: imageID, MathlibCheckout: mathlibPath, MathlibRevision: mathlibRevision,
		DeduplicationBasis: "synthetic exact-source hash fixture", DistinctReplaySourceCount: 1, SelectedSourceCount: 1,
		SourceSelection: replaySourceSelection{RequestedSourceSHA256: evidence.ReplaySourceSHA256, SelectedSourceSHA256s: []string{evidence.ReplaySourceSHA256}},
		RunProgressPath: "run-progress.jsonl", RunProgressEventSchema: mathlibLeanReplayProgressSchema,
		ExecutionPassCount: 1, ExecutionFailOrIncompleteCount: 0,
		Batches: []replayBatch{{
			Batch: "synthetic-batch", PairCount: 1, PairSetPath: "synthetic/pairs.json", PairSetSHA256: pairSetSHA,
			CatalogSnapshotPath: "synthetic/catalog.json", CatalogSnapshotContentSHA256: snapshot.ContentSHA256,
			CatalogSnapshotFileSHA256: digestBytes([]byte("synthetic snapshot file")), MathlibRevision: mathlibRevision,
			Pairs: []replayMembership{membership}, DistinctReplaySourceCount: 1, UniqueSuccessfulProcessCount: 1,
			PairsWithSuccessfulFreshExecution: 1, ExecutionOutcome: "EXECUTION_PASS",
		}},
		AttemptedSourceCount: 1, NotStartedUniqueSourceCount: 0, Status: "COMPLETE", UnstartedSources: []string{},
		Runs: []replayManifestRun{{SourceSHA256: evidence.ReplaySourceSHA256, ReceiptPath: receiptPath, StdoutPath: stdoutPath, StderrPath: stderrPath, ExecutionOutcome: "EXECUTED_PASS", ContainerResolvedAbsent: true}},
	}
	receipt := replayExecutionReceipt{
		SchemaVersion: mathlibLeanReplayReceiptSchema, RunID: "synthetic-run-0001", StartedAtUTC: now.Add(2 * time.Second), FinishedAtUTC: now.Add(4 * time.Second),
		ElapsedMilliseconds: 2000, ExecutionOutcome: "EXECUTED_PASS", ExitCode: 0, CommandArgv: runArgv, DockerExecutable: docker,
		ContainerName: containerName, ImageID: imageID, MathlibPath: mathlibPath, MathlibRevision: mathlibRevision, LeanVersionReceipt: "runtime.json",
		LeanPath: leanPath, SourcePath: sourcePath, SourceSHA256: evidence.ReplaySourceSHA256, SourceBytes: int64(len(replaySource)),
		SourceMountTarget: "/workspace/" + filepath.Base(sourcePath), StdoutPath: stdoutPath, StdoutSHA256: digestBytes(leanOutput), StderrPath: stderrPath,
		StderrSHA256: digestBytes(nil), StdoutBytes: int64(len(leanOutput)), StderrBytes: 0,
		ExpectedTheoremNames: []string{afterTheorem, beforeTheorem}, ObservedTheoremAxioms: map[string][]string{beforeTheorem: {}, afterTheorem: {}},
		OutputNamesMatchSourceAndPairSet: true, AllObservedAxiomsAllowed: true, ActualAxiomsMatchExistingClaims: true,
		AllowedAxioms: standardAxiomNames(), ContainerCleanup: cleanup, ContainerResolvedAbsent: true, Memberships: []replayMembership{membership},
	}
	if err := writeSyntheticFile(root, receiptPath, marshalSyntheticJSON(t, receipt)); err != nil {
		t.Fatal(err)
	}
	progressEvents := []replayProgressEvent{
		{SchemaVersion: mathlibLeanReplayProgressSchema, EventType: "LAUNCH_INTENT", RecordedAtUTC: now.Add(time.Second), RunID: receipt.RunID,
			SourceSHA256: evidence.ReplaySourceSHA256, ContainerName: containerName, ImageID: imageID, CommandArgv: runArgv,
			ReceiptPath: receiptPath, StdoutPath: stdoutPath, StderrPath: stderrPath, Memberships: []replayMembership{membership}},
		{SchemaVersion: mathlibLeanReplayProgressSchema, EventType: "PROCESS_STARTED", RecordedAtUTC: now.Add(2 * time.Second), RunID: receipt.RunID,
			SourceSHA256: evidence.ReplaySourceSHA256, ContainerName: containerName, CommandArgv: runArgv,
			ReceiptPath: receiptPath, HostPID: 1234, Memberships: []replayMembership{membership}},
		{SchemaVersion: mathlibLeanReplayProgressSchema, EventType: "COMPLETED", RecordedAtUTC: now.Add(4 * time.Second), RunID: receipt.RunID,
			SourceSHA256: evidence.ReplaySourceSHA256, ReceiptPath: receiptPath, ExecutionOutcome: "EXECUTED_PASS", ContainerResolvedAbsent: true,
			Memberships: []replayMembership{membership}},
	}
	var progress []byte
	for _, event := range progressEvents {
		progress = append(progress, marshalSyntheticJSON(t, event)...)
		progress = append(progress, '\n')
	}
	if err := writeSyntheticFile(root, manifest.RunProgressPath, progress); err != nil {
		t.Fatal(err)
	}
	manifestBytes := marshalSyntheticJSON(t, manifest)
	if err := writeSyntheticFile(root, "manifest.json", manifestBytes); err != nil {
		t.Fatal(err)
	}
	return syntheticReplayAuditFixture{
		root: root, stdoutPath: stdoutPath,
		request: MathlibLeanReplayAuditRequest{
			RunnerRoot: root, RepositoryRoot: root, ManifestPath: "manifest.json", Snapshot: snapshot, Pairs: pairs,
			SourceFiles: sourceFiles, EvidenceFiles: evidenceFiles,
			ExpectedImageID: imageID, ExpectedMathlibRevision: mathlibRevision,
		},
	}
}

func syntheticDockerArgv(docker, container, image, mathlibPath, sourcePath, sourceTarget, leanPath string, replay bool) []string {
	argv := []string{
		docker, "run", "--rm", "--pull=never", "--name", container, "--network=none", "--read-only", "--user=65532:65532",
		"--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128",
		"--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777", "--env=HOME=/tmp", "--env=TMPDIR=/tmp", "--env=TMP=/tmp",
	}
	if replay {
		argv = append(argv, "--env", "LEAN_PATH="+leanPath)
	}
	argv = append(argv, "--mount", "type=bind,source="+mathlibPath+",target=/mathlib,readonly")
	if replay {
		argv = append(argv, "--mount", "type=bind,source="+sourcePath+",target="+sourceTarget+",readonly")
	}
	argv = append(argv, "--workdir=/mathlib", "--entrypoint=lean", image)
	if replay {
		argv = append(argv, sourceTarget)
	} else {
		argv = append(argv, "--version")
	}
	return argv
}

func syntheticCleanup(t *testing.T, docker, container string, now time.Time) replayContainerCleanup {
	t.Helper()
	stdout := "[]\n"
	stderr := "Error response from daemon: No such object: " + container + "\n"
	return replayContainerCleanup{
		CleanupReason: "natural_process_exit", ContainerName: container,
		FinalInspect: &replayDockerCommandResult{
			CommandArgv: []string{docker, "inspect", container}, ExitCode: 1, ElapsedMilliseconds: 10,
			StdoutSHA256: digestText(stdout), StderrSHA256: digestText(stderr), StdoutText: stdout, StderrText: stderr,
		},
		ContainerResolvedAbsent: true,
	}
}

func writeSyntheticFile(root, relativePath string, data []byte) error {
	path := filepath.Join(root, filepath.FromSlash(relativePath))
	if err := os.MkdirAll(filepath.Dir(path), 0o700); err != nil {
		return err
	}
	return os.WriteFile(path, data, 0o600)
}

func marshalSyntheticJSON(t *testing.T, value any) []byte {
	t.Helper()
	data, err := json.Marshal(value)
	if err != nil {
		t.Fatalf("marshal synthetic fixture: %v", err)
	}
	return data
}
