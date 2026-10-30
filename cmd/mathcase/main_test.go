package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"flag"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/application"
	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/expositor"
	"github.com/DarthCeltic/MathCase/internal/poser"
	"github.com/DarthCeltic/MathCase/internal/state"
)

func TestLoadProblemAcceptsOneStrictProblemDocument(t *testing.T) {
	path := filepath.Join(t.TempDir(), "problem.json")
	contents := `{"id":"problem-a","title":"Sample","statement":"Truth is true.","lean_statement":"True"}`
	if err := os.WriteFile(path, []byte(contents), 0o600); err != nil {
		t.Fatal(err)
	}
	problem, err := loadProblem(path)
	if err != nil {
		t.Fatalf("loadProblem() error = %v, want valid problem", err)
	}
	if problem.ID != "problem-a" || problem.LeanStatement != "True" {
		t.Fatalf("loadProblem() = %#v, want supplied problem fields", problem)
	}
}

func TestLoadProblemRejectsUnknownFieldsAndTrailingDocuments(t *testing.T) {
	for _, test := range []struct {
		name string
		data string
	}{
		{name: "unknown field", data: `{"id":"problem-a","statement":"P","lean_statement":"True","provider_key":"secret"}`},
		{name: "trailing document", data: `{"id":"problem-a","statement":"P","lean_statement":"True"}{}`},
	} {
		t.Run(test.name, func(t *testing.T) {
			path := filepath.Join(t.TempDir(), "problem.json")
			if err := os.WriteFile(path, []byte(test.data), 0o600); err != nil {
				t.Fatal(err)
			}
			if _, err := loadProblem(path); err == nil {
				t.Fatal("loadProblem() error = nil, want strict JSON refusal")
			}
		})
	}
}

func TestLoadProblemRejectsMissingFormalInputAndOversizedFile(t *testing.T) {
	path := filepath.Join(t.TempDir(), "problem.json")
	if err := os.WriteFile(path, []byte(`{"id":"problem-a","statement":"P"}`), 0o600); err != nil {
		t.Fatal(err)
	}
	if _, err := loadProblem(path); err == nil {
		t.Fatal("loadProblem() accepted a problem without a Lean statement")
	}
	if err := os.WriteFile(path, []byte(strings.Repeat("x", maxProblemFileBytes+1)), 0o600); err != nil {
		t.Fatal(err)
	}
	if _, err := loadProblem(path); err == nil {
		t.Fatal("loadProblem() accepted a file larger than the configured limit")
	}
}

func TestCatalogValidateReportsRecomputedSnapshotDigestAndRightsCounts(t *testing.T) {
	capturedAt := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	snapshot, err := catalog.NewSnapshot(capturedAt, []catalog.SourceVersion{{
		ID: "source-pending", URL: "https://example.org/source", Revision: "revision-1",
		RetrievedAt: capturedAt, ContentSHA256: strings.Repeat("a", 64), Rights: catalog.RightsPending,
	}}, []catalog.Problem{{
		ID: "problem-pending", Title: "Pending source record", InformalStatement: "A statement awaiting review.",
		Status: catalog.StatusConjectured, SourceIDs: []string{"source-pending"},
	}})
	if err != nil {
		t.Fatalf("NewSnapshot() error = %v", err)
	}
	contents, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	snapshotPath := filepath.Join(t.TempDir(), "catalog-snapshot.json")
	if err := os.WriteFile(snapshotPath, contents, 0o600); err != nil {
		t.Fatal(err)
	}
	var stdout, stderr bytes.Buffer
	if code := run([]string{"catalog-validate", "--snapshot", snapshotPath}, &stdout, &stderr); code != 0 {
		t.Fatalf("catalog-validate exit code = %d, stderr=%q", code, stderr.String())
	}
	var result catalogValidationOutput
	if err := json.Unmarshal(stdout.Bytes(), &result); err != nil {
		t.Fatalf("decode catalog-validate output %q: %v", stdout.String(), err)
	}
	if result.SchemaVersion != "mathcase-catalog-v1" || result.Status != "VALIDATED" || result.ContentSHA256 != snapshot.ContentSHA256 || result.SourceCount != 1 || result.ProblemCount != 1 || result.RightsStatusCounts[catalog.RightsPending] != 1 || result.RightsStatusCounts[catalog.RightsCleared] != 0 {
		t.Fatalf("catalog-validate output = %#v, want digest-bound summary with pending rights preserved", result)
	}
}

func TestCatalogValidateRejectsTamperedDigest(t *testing.T) {
	capturedAt := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	snapshot, err := catalog.NewSnapshot(capturedAt, nil, nil)
	if err != nil {
		t.Fatal(err)
	}
	snapshot.ContentSHA256 = strings.Repeat("0", 64)
	contents, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	snapshotPath := filepath.Join(t.TempDir(), "tampered-catalog.json")
	if err := os.WriteFile(snapshotPath, contents, 0o600); err != nil {
		t.Fatal(err)
	}
	var stdout, stderr bytes.Buffer
	if code := run([]string{"catalog-validate", "--snapshot", snapshotPath}, &stdout, &stderr); code != 2 || !strings.Contains(stderr.String(), "content does not match its recorded digest") || stdout.Len() != 0 {
		t.Fatalf("catalog-validate tampered snapshot exit=%d stdout=%q stderr=%q; want fail-closed digest refusal", code, stdout.String(), stderr.String())
	}
}

func TestCatalogValidateRejectsUnknownFieldsAndTrailingDocuments(t *testing.T) {
	for _, test := range []struct {
		name string
		data string
	}{
		{name: "unknown field", data: `{"schema_version":"mathcase-catalog-v1","unexpected":"value"}`},
		{name: "trailing document", data: `{} {}`},
	} {
		t.Run(test.name, func(t *testing.T) {
			path := filepath.Join(t.TempDir(), "catalog.json")
			if err := os.WriteFile(path, []byte(test.data), 0o600); err != nil {
				t.Fatal(err)
			}
			var stdout, stderr bytes.Buffer
			if code := run([]string{"catalog-validate", "--snapshot", path}, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
				t.Fatalf("catalog-validate exit=%d stdout=%q stderr=%q; want strict input refusal", code, stdout.String(), stderr.String())
			}
		})
	}
}

func TestCatalogValidateHelpDoesNotReadInput(t *testing.T) {
	var stdout, stderr bytes.Buffer
	if code := run([]string{"catalog-validate", "--help"}, &stdout, &stderr); code != 0 {
		t.Fatalf("catalog-validate --help exit code = %d, want 0; stderr=%s", code, stderr.String())
	}
	if stdout.Len() != 0 || !strings.Contains(stderr.String(), "-snapshot") {
		t.Fatalf("catalog-validate --help output = stdout %q, stderr %q, want snapshot option only", stdout.String(), stderr.String())
	}
}

func TestCatalogBuildCreatesCanonicalSnapshotWithoutOverwriting(t *testing.T) {
	draft := catalogDraftFile{
		SchemaVersion: "mathcase-catalog-draft-v1",
		CapturedAt:    time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC),
		Sources: []catalog.SourceVersion{
			{ID: "source-z", URL: "https://example.org/z", Revision: "rev-z", RetrievedAt: time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC), ContentSHA256: strings.Repeat("b", 64), Rights: catalog.RightsPending},
			{ID: "source-a", URL: "https://example.org/a", Revision: "rev-a", RetrievedAt: time.Date(2026, time.October, 18, 12, 0, 0, 0, time.UTC), ContentSHA256: strings.Repeat("a", 64), Rights: catalog.RightsUnknown},
		},
		Problems: []catalog.Problem{
			{ID: "problem-z", Title: "Second item", InformalStatement: "A second statement.", Status: catalog.StatusConjectured, SourceIDs: []string{"source-z"}},
			{ID: "problem-a", Title: "First item", InformalStatement: "A first statement.", Status: catalog.StatusProven, SourceIDs: []string{"source-a"}},
		},
	}
	draftBytes, err := json.Marshal(draft)
	if err != nil {
		t.Fatal(err)
	}
	root := t.TempDir()
	draftPath := filepath.Join(root, "catalog-draft.json")
	outputPath := filepath.Join(root, "catalog.snapshot.json")
	if err := os.WriteFile(draftPath, draftBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	var stdout, stderr bytes.Buffer
	if code := run([]string{"catalog-build", "--draft", draftPath, "--output", outputPath}, &stdout, &stderr); code != 0 {
		t.Fatalf("catalog-build exit code = %d, stderr=%q", code, stderr.String())
	}
	var summary catalogBuildOutput
	if err := json.Unmarshal(stdout.Bytes(), &summary); err != nil {
		t.Fatalf("decode catalog-build output %q: %v", stdout.String(), err)
	}
	snapshot, err := loadCatalogSnapshot(outputPath)
	if err != nil {
		t.Fatalf("load created catalog snapshot: %v", err)
	}
	if summary.Status != "CREATED" || summary.ContentSHA256 != snapshot.ContentSHA256 || summary.SourceCount != 2 || summary.ProblemCount != 2 {
		t.Fatalf("catalog-build summary = %#v, want created digest-bound catalog counts", summary)
	}
	if snapshot.Sources[0].ID != "source-a" || snapshot.Sources[1].ID != "source-z" || snapshot.Problems[0].ID != "problem-a" || snapshot.Problems[1].ID != "problem-z" {
		t.Fatalf("catalog-build snapshot order = sources %#v, problems %#v; want canonical ID ordering", snapshot.Sources, snapshot.Problems)
	}
	originalBytes, err := os.ReadFile(outputPath)
	if err != nil {
		t.Fatal(err)
	}
	stdout.Reset()
	stderr.Reset()
	if code := run([]string{"catalog-build", "--draft", draftPath, "--output", outputPath}, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
		t.Fatalf("catalog-build overwrite exit=%d stdout=%q stderr=%q; want no-overwrite refusal", code, stdout.String(), stderr.String())
	}
	afterRefusal, err := os.ReadFile(outputPath)
	if err != nil {
		t.Fatal(err)
	}
	if !bytes.Equal(afterRefusal, originalBytes) {
		t.Fatal("catalog-build changed an existing snapshot after refusing overwrite")
	}
}

func TestCatalogBuildRejectsUnknownFieldsAndTrailingDocuments(t *testing.T) {
	draft := catalogDraftFile{
		SchemaVersion: "mathcase-catalog-draft-v1",
		CapturedAt:    time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC),
	}
	validDraft, err := json.Marshal(draft)
	if err != nil {
		t.Fatal(err)
	}
	unknownField := strings.TrimSuffix(string(validDraft), "}") + `,"unexpected":"value"}`
	for _, test := range []struct {
		name string
		data string
	}{
		{name: "unknown field", data: unknownField},
		{name: "trailing document", data: string(validDraft) + `{}`},
	} {
		t.Run(test.name, func(t *testing.T) {
			root := t.TempDir()
			draftPath := filepath.Join(root, "catalog-draft.json")
			outputPath := filepath.Join(root, "catalog.snapshot.json")
			if err := os.WriteFile(draftPath, []byte(test.data), 0o600); err != nil {
				t.Fatal(err)
			}
			var stdout, stderr bytes.Buffer
			if code := run([]string{"catalog-build", "--draft", draftPath, "--output", outputPath}, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
				t.Fatalf("catalog-build exit=%d stdout=%q stderr=%q; want strict draft refusal", code, stdout.String(), stderr.String())
			}
			if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
				t.Fatalf("catalog-build created output after invalid draft; stat error=%v", err)
			}
		})
	}
}

func TestCatalogBuildHelpDoesNotWriteSnapshot(t *testing.T) {
	var stdout, stderr bytes.Buffer
	if code := run([]string{"catalog-build", "--help"}, &stdout, &stderr); code != 0 {
		t.Fatalf("catalog-build --help exit code = %d, want 0; stderr=%s", code, stderr.String())
	}
	if stdout.Len() != 0 || !strings.Contains(stderr.String(), "-draft") || !strings.Contains(stderr.String(), "-output") {
		t.Fatalf("catalog-build --help output = stdout %q, stderr %q, want draft/output options only", stdout.String(), stderr.String())
	}
}

func TestLocalJSONLoadersRejectSymlinkInputs(t *testing.T) {
	root := t.TempDir()
	target := filepath.Join(root, "target.json")
	if err := os.WriteFile(target, []byte(`{}`), 0o600); err != nil {
		t.Fatal(err)
	}
	link := filepath.Join(root, "input.json")
	if err := os.Symlink(target, link); err != nil {
		t.Skipf("symbolic links are unavailable in this Windows test environment: %v", err)
	}
	for _, load := range []struct {
		name string
		fn   func(string) error
	}{
		{name: "problem", fn: func(path string) error { _, err := loadProblem(path); return err }},
		{name: "catalog snapshot", fn: func(path string) error { _, err := loadCatalogSnapshot(path); return err }},
		{name: "proposal", fn: func(path string) error { _, err := loadProposal(path); return err }},
	} {
		t.Run(load.name, func(t *testing.T) {
			if err := load.fn(link); err == nil || !strings.Contains(err.Error(), "non-symlink") {
				t.Fatalf("loader error = %v, want explicit symlink refusal", err)
			}
		})
	}
}

func TestGeneratedRunIDIsCanonical(t *testing.T) {
	runID, err := newRunID()
	if err != nil {
		t.Fatal(err)
	}
	if err := state.ValidateIdentifier("run ID", runID); err != nil {
		t.Fatalf("newRunID() = %q, invalid canonical identifier: %v", runID, err)
	}
}

func TestSolveLocalHelpDoesNotStartAWorkflow(t *testing.T) {
	var stdout, stderr bytes.Buffer
	if code := run([]string{"solve-local", "--help"}, &stdout, &stderr); code != 0 {
		t.Fatalf("solve-local --help exit code = %d, want 0; stderr=%s", code, stderr.String())
	}
	if stdout.Len() != 0 || !strings.Contains(stderr.String(), "-lean-project") || !strings.Contains(stderr.String(), "-lean-snapshot-manifest") || !strings.Contains(stderr.String(), "-pantograph-sandbox-image") {
		t.Fatalf("solve-local --help output = stdout %q, stderr %q, want explicit snapshot and sandbox options with no run output", stdout.String(), stderr.String())
	}
}

func TestLocalSearchCommandsRequireAnExplicitSnapshotManifest(t *testing.T) {
	for _, args := range [][]string{
		{"solve-local", "--problem", "missing-problem.json", "--lean-project", "proofs/r0b"},
		{"falsify-local", "--proposal", "missing-proposal.json", "--lean-project", "proofs/r0b"},
	} {
		var stdout, stderr bytes.Buffer
		if code := run(args, &stdout, &stderr); code != 2 || !strings.Contains(stderr.String(), "--lean-snapshot-manifest") || stdout.Len() != 0 {
			t.Errorf("run(%v) = code %d, stdout %q, stderr %q; want an early explicit-manifest refusal", args, code, stdout.String(), stderr.String())
		}
	}
}

func TestPoseLocalHelpDoesNotStartAWorkflow(t *testing.T) {
	var stdout, stderr bytes.Buffer
	if code := run([]string{"pose-local", "--help"}, &stdout, &stderr); code != 0 {
		t.Fatalf("pose-local --help exit code = %d, want 0; stderr=%s", code, stderr.String())
	}
	if stdout.Len() != 0 || !strings.Contains(stderr.String(), "-request") || !strings.Contains(stderr.String(), "-dossier-root") || !strings.Contains(stderr.String(), "-trusted-signers") || !strings.Contains(stderr.String(), "-evidence-root") || !strings.Contains(stderr.String(), "-reviewer-trust") || !strings.Contains(stderr.String(), "-lean-receipt-root") || !strings.Contains(stderr.String(), "-m7-evidence-root") || !strings.Contains(stderr.String(), "-m7-identity-trust") || !strings.Contains(stderr.String(), "-agent-run-ledger") {
		t.Fatalf("pose-local --help output = stdout %q, stderr %q, want signed-parent options and no run output", stdout.String(), stderr.String())
	}
}

func TestFalsifyLocalHelpDoesNotStartAWorkflow(t *testing.T) {
	var stdout, stderr bytes.Buffer
	if code := run([]string{"falsify-local", "--help"}, &stdout, &stderr); code != 0 {
		t.Fatalf("falsify-local --help exit code = %d, want 0; stderr=%s", code, stderr.String())
	}
	if stdout.Len() != 0 || !strings.Contains(stderr.String(), "-proposal") || !strings.Contains(stderr.String(), "-lean-project") || !strings.Contains(stderr.String(), "-lean-snapshot-manifest") || !strings.Contains(stderr.String(), "-pantograph-sandbox-image") || !strings.Contains(stderr.String(), "-random-samples") || !strings.Contains(stderr.String(), "-smt-timeout") || !strings.Contains(stderr.String(), "-parents-request") || !strings.Contains(stderr.String(), "-trusted-signers") || !strings.Contains(stderr.String(), "-evidence-root") || !strings.Contains(stderr.String(), "-reviewer-trust") || !strings.Contains(stderr.String(), "-lean-receipt-root") || !strings.Contains(stderr.String(), "-m7-evidence-root") || !strings.Contains(stderr.String(), "-m7-identity-trust") || !strings.Contains(stderr.String(), "-agent-run-ledger") {
		t.Fatalf("falsify-local --help output = stdout %q, stderr %q, want proposal, project, sieve, and signed-parent options", stdout.String(), stderr.String())
	}
}

func TestPoseLocalFailsClosedWhenM8EvidencePathsAreNotConfigured(t *testing.T) {
	var stdout, stderr bytes.Buffer
	code := run([]string{
		"pose-local", "--request", "missing-request.json", "--dossier-root", "missing-store", "--trusted-signers", "missing-signers.json",
	}, &stdout, &stderr)
	if code != 2 || !strings.Contains(stderr.String(), "signed parent M8 evidence requires --evidence-root") || stdout.Len() != 0 {
		t.Fatalf("pose-local without M8 evidence roots = code %d, stdout %q, stderr %q; want explicit fail-closed configuration error", code, stdout.String(), stderr.String())
	}
}

func TestFalsifyLocalFailsClosedWhenSignedParentsLackM8EvidencePaths(t *testing.T) {
	var stdout, stderr bytes.Buffer
	code := run([]string{
		"falsify-local", "--proposal", "missing-proposal.json", "--lean-project", ".",
		"--lean-snapshot-manifest", "missing-snapshot-manifest.json",
		"--parents-request", "missing-parents.json", "--dossier-root", "missing-store", "--trusted-signers", "missing-signers.json",
	}, &stdout, &stderr)
	if code != 2 || !strings.Contains(stderr.String(), "signed parent M8 evidence requires --evidence-root") || stdout.Len() != 0 {
		t.Fatalf("falsify-local with signed parents but no M8 evidence roots = code %d, stdout %q, stderr %q; want explicit fail-closed configuration error", code, stdout.String(), stderr.String())
	}
}

func TestSignedParentEvidenceFlagsBindAllM8Inputs(t *testing.T) {
	root := t.TempDir()
	trustPath := filepath.Join(root, "reviewer-trust.json")
	m7IdentityTrustPath := filepath.Join(root, "m7-identity-trust.json")
	writeSyntheticM7IdentityTrustRegistry(t, m7IdentityTrustPath)
	digest := strings.Repeat("a", 64)
	trust := `{"schema_version":"mathcase-reviewer-trust-v1","entries":[{"reviewer_id":"reviewer","issuer":"issuer","subject":"subject","attestation_evidence_id":"attestation","problem_statement_sha256":"` + digest + `","attestation_sha256":"` + digest + `"}]}`
	if err := os.WriteFile(trustPath, []byte(trust), 0o600); err != nil {
		t.Fatal(err)
	}
	flags := flag.NewFlagSet("signed-parent-evidence-test", flag.ContinueOnError)
	evidence := addSignedParentEvidenceFlags(flags)
	args := []string{
		"--evidence-root", filepath.Join(root, "gates"),
		"--reviewer-trust", trustPath,
		"--lean-receipt-root", filepath.Join(root, "lean"),
		"--formalizer-artifact-root", filepath.Join(root, "formalizer"),
		"--m7-evidence-root", filepath.Join(root, "m7"),
		"--m7-identity-trust", m7IdentityTrustPath,
		"--agent-run-ledger", filepath.Join(root, "agent-runs.jsonl"),
	}
	if err := flags.Parse(args); err != nil {
		t.Fatalf("parse signed-parent evidence flags: %v", err)
	}
	paths, err := evidence.load()
	if err != nil {
		t.Fatalf("load signed-parent evidence paths: %v", err)
	}
	if paths.GateEvidenceRoot != filepath.Join(root, "gates") || paths.LeanReceiptRoot != filepath.Join(root, "lean") || paths.FormalizerArtifactRoot != filepath.Join(root, "formalizer") || paths.M7EvidenceRoot != filepath.Join(root, "m7") || paths.M7IdentityTrustRegistry == nil || paths.M7IdentityTrustRegistry.SHA256() == "" || paths.AgentRunLedgerPath != filepath.Join(root, "agent-runs.jsonl") || paths.CostLedgerPath != "" || paths.ReviewerVerifier == nil {
		t.Fatalf("loaded signed-parent M8 paths = %#v; want all exact roots, one agent ledger, and reviewer verifier", paths)
	}

	flags = flag.NewFlagSet("signed-parent-evidence-both-ledgers", flag.ContinueOnError)
	evidence = addSignedParentEvidenceFlags(flags)
	bothLedgerArgs := append([]string(nil), args[:len(args)-2]...)
	bothLedgerArgs = append(bothLedgerArgs, "--cost-ledger", filepath.Join(root, "cost.jsonl"), "--agent-run-ledger", filepath.Join(root, "agent-runs.jsonl"))
	if err := flags.Parse(bothLedgerArgs); err != nil {
		t.Fatalf("parse both-ledger signed-parent flags: %v", err)
	}
	bothPaths, err := evidence.load()
	if err != nil {
		t.Fatalf("load signed-parent paths with both ledgers: %v", err)
	}
	if bothPaths.CostLedgerPath != filepath.Join(root, "cost.jsonl") || bothPaths.AgentRunLedgerPath != filepath.Join(root, "agent-runs.jsonl") {
		t.Fatalf("loaded both signed-parent ledgers = %#v; want both exact configured paths", bothPaths)
	}

	flags = flag.NewFlagSet("signed-parent-evidence-no-ledger", flag.ContinueOnError)
	evidence = addSignedParentEvidenceFlags(flags)
	if err := flags.Parse(args[:len(args)-2]); err != nil {
		t.Fatalf("parse no-ledger signed-parent flags: %v", err)
	}
	if _, err := evidence.load(); err == nil || !strings.Contains(err.Error(), "requires --cost-ledger or --agent-run-ledger") {
		t.Fatalf("load signed-parent paths with no ledger = %v; want missing-ledger refusal", err)
	}
}

func TestSignedParentReferencesKeepTheirOwnCatalogSnapshotPaths(t *testing.T) {
	root := t.TempDir()
	paths := make([]string, 0, 2)
	for index, capturedAt := range []time.Time{
		time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC),
		time.Date(2026, time.October, 21, 12, 0, 0, 0, time.UTC),
	} {
		snapshot, err := catalog.NewSnapshot(capturedAt, nil, nil)
		if err != nil {
			t.Fatalf("NewSnapshot(%d): %v", index, err)
		}
		data, err := json.Marshal(snapshot)
		if err != nil {
			t.Fatalf("marshal catalog snapshot %d: %v", index, err)
		}
		path := filepath.Join(root, "catalog-"+string(rune('a'+index))+".json")
		if err := os.WriteFile(path, data, 0o600); err != nil {
			t.Fatal(err)
		}
		paths = append(paths, path)
	}
	proofPath := filepath.Join(root, "proof.lean")
	if err := os.WriteFile(proofPath, []byte("by\n  exact True.intro\n"), 0o600); err != nil {
		t.Fatal(err)
	}
	for index, path := range paths {
		reference, err := loadSignedPoseParentReference(signedPoseParentFile{
			CaseID: "case-parent-" + string(rune('a'+index)), DossierSHA256: strings.Repeat("b", 64),
			SignerID: "signer", CatalogSnapshot: path, VerifiedProof: proofPath, LeanDeclaration: "theorem sample : True",
		})
		if err != nil {
			t.Fatalf("load parent reference %d: %v", index, err)
		}
		if reference.CatalogSnapshotPath != path {
			t.Fatalf("parent reference %d catalog path = %q, want its own %q", index, reference.CatalogSnapshotPath, path)
		}
	}
}

func TestFalsifyLocalRequiresCompleteSignedParentOptions(t *testing.T) {
	var stdout, stderr bytes.Buffer
	code := run([]string{"falsify-local", "--proposal", "candidate.json", "--lean-project", ".", "--lean-snapshot-manifest", "missing-snapshot-manifest.json", "--parents-request", "parents.json"}, &stdout, &stderr)
	if code != 2 || !strings.Contains(stderr.String(), "requires --parents-request, --dossier-root, and --trusted-signers together") {
		t.Fatalf("partial signed-parent options exit code = %d, stderr=%q; want explicit fail-closed option error", code, stderr.String())
	}
}

func TestPoseLocalRejectsCallerSuppliedVerificationRecords(t *testing.T) {
	legacyRequest := poser.GenerationRequest{
		Primary:     testVerifiedTheorem(t, "cli-parent", "theorem source_fact (a b : Nat) : a < b"),
		Operators:   []poser.Operator{poser.OperatorRelax},
		GeneratedAt: time.Date(2026, time.October, 20, 17, 0, 0, 0, time.UTC),
	}
	contents, err := json.Marshal(legacyRequest)
	if err != nil {
		t.Fatalf("marshal legacy pose request: %v", err)
	}
	requestPath := filepath.Join(t.TempDir(), "pose-request.json")
	if err := os.WriteFile(requestPath, contents, 0o600); err != nil {
		t.Fatal(err)
	}
	if _, err := loadPoseRequest(requestPath); err == nil {
		t.Fatal("loadPoseRequest() accepted caller-supplied verification records")
	}

	keyPath := filepath.Join(t.TempDir(), "trusted-signers.json")
	keyContents := `{"schema_version":"mathcase-trusted-signers-v1","signers":[{"signer_id":"ryan-primary","public_key_base64":"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="}]}`
	if err := os.WriteFile(keyPath, []byte(keyContents), 0o600); err != nil {
		t.Fatal(err)
	}
	evidenceRoot := t.TempDir()
	trustPath := filepath.Join(evidenceRoot, "reviewer-trust.json")
	digest := strings.Repeat("a", 64)
	trustContents := `{"schema_version":"mathcase-reviewer-trust-v1","entries":[{"reviewer_id":"reviewer","issuer":"issuer","subject":"subject","attestation_evidence_id":"attestation","problem_statement_sha256":"` + digest + `","attestation_sha256":"` + digest + `"}]}`
	if err := os.WriteFile(trustPath, []byte(trustContents), 0o600); err != nil {
		t.Fatal(err)
	}
	m7IdentityTrustPath := filepath.Join(evidenceRoot, "m7-identity-trust.json")
	writeSyntheticM7IdentityTrustRegistry(t, m7IdentityTrustPath)
	var stdout, stderr bytes.Buffer
	args := []string{
		"pose-local", "--request", requestPath, "--dossier-root", t.TempDir(), "--trusted-signers", keyPath,
		"--evidence-root", filepath.Join(evidenceRoot, "gates"), "--reviewer-trust", trustPath,
		"--lean-receipt-root", filepath.Join(evidenceRoot, "lean"), "--formalizer-artifact-root", filepath.Join(evidenceRoot, "formalizer"),
		"--m7-evidence-root", filepath.Join(evidenceRoot, "m7"), "--m7-identity-trust", m7IdentityTrustPath,
		"--agent-run-ledger", filepath.Join(evidenceRoot, "agent-runs.jsonl"),
	}
	code := run(args, &stdout, &stderr)
	if code != 2 || !strings.Contains(stderr.String(), "decode poser request JSON") {
		t.Fatalf("pose-local legacy request exit code = %d, stderr=%s; want strict refusal of claimed receipts", code, stderr.String())
	}
}

func TestLoadPoseRequestRejectsUnknownFieldsAndTrailingDocuments(t *testing.T) {
	for _, test := range []struct {
		name string
		data string
	}{
		{name: "unknown field", data: `{"generated_at":"2026-10-20T17:00:00Z","unexpected":"field"}`},
		{name: "trailing document", data: `{"generated_at":"2026-10-20T17:00:00Z"}{}`},
	} {
		t.Run(test.name, func(t *testing.T) {
			path := filepath.Join(t.TempDir(), "request.json")
			if err := os.WriteFile(path, []byte(test.data), 0o600); err != nil {
				t.Fatal(err)
			}
			if _, err := loadPoseRequest(path); err == nil {
				t.Fatal("loadPoseRequest() error = nil, want strict JSON refusal")
			}
		})
	}
}

func TestLoadProposalStrictlyAcceptsFixtureAndRejectsMalformedDocuments(t *testing.T) {
	path := filepath.Join(t.TempDir(), "proposal.json")
	fixture := syntheticProposalForCLI(t, "n ≤ n")
	contents, err := json.Marshal(fixture)
	if err != nil {
		t.Fatalf("marshal synthetic proposal fixture: %v", err)
	}
	if err := os.WriteFile(path, contents, 0o600); err != nil {
		t.Fatal(err)
	}
	loaded, err := loadProposal(path)
	if err != nil {
		t.Fatalf("loadProposal() error = %v, want valid synthetic fixture", err)
	}
	if loaded.ID != fixture.ID {
		t.Fatalf("loadProposal() ID = %q, want %q", loaded.ID, fixture.ID)
	}

	for _, test := range []struct {
		name string
		data string
	}{
		{name: "unknown field", data: `{"id":"proposal-x","unexpected":"field"}`},
		{name: "trailing document", data: `{}{} `},
	} {
		t.Run(test.name, func(t *testing.T) {
			if err := os.WriteFile(path, []byte(test.data), 0o600); err != nil {
				t.Fatal(err)
			}
			if _, err := loadProposal(path); err == nil {
				t.Fatalf("loadProposal(%q) error = nil, want strict JSON refusal", test.name)
			}
		})
	}

	// A caller-authored test parent cannot mint a trusted proposal after the
	// V3 authentication boundary; keep the production refusal explicit.
	primary := testVerifiedTheorem(t, "proposal-load-parent", "theorem reflexive (n : Nat) : n ≤ n")
	if _, err := poser.Generate(poser.GenerationRequest{
		Primary: primary, Operators: []poser.Operator{poser.OperatorSharpen},
		GeneratedAt: time.Date(2026, time.October, 20, 11, 0, 0, 0, time.UTC),
	}); err == nil || !strings.Contains(err.Error(), "builder-authored claims") {
		t.Fatalf("Generate() error = %v, want unauthenticated V3 refusal", err)
	}
}

func TestFalsifyLocalCommandRunsProposalSelectedSearch(t *testing.T) {
	repositoryRoot, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	docker, err := exec.LookPath("docker")
	if err != nil || os.Getenv("MATHCASE_LEAN_SANDBOX_IMAGE") == "" {
		t.Skip("pinned Lean Docker sandbox is not configured")
	}
	python := filepath.Join(repositoryRoot, ".venv", "Scripts", "python.exe")
	if _, err := os.Stat(python); err != nil {
		python = filepath.Join(repositoryRoot, ".venv", "bin", "python")
		if _, err := os.Stat(python); err != nil {
			t.Skip("local Pantograph Python environment is not installed")
		}
	}
	proposal := syntheticProposalForCLI(t, "n < 0")
	proposalPath := filepath.Join(t.TempDir(), "proposal.json")
	proposalData, err := json.Marshal(proposal)
	if err != nil {
		t.Fatalf("marshal proposal: %v", err)
	}
	if err := os.WriteFile(proposalPath, proposalData, 0o600); err != nil {
		t.Fatal(err)
	}
	tempRoot := t.TempDir()
	var stdout, stderr bytes.Buffer
	code := run([]string{
		"falsify-local",
		"--proposal", proposalPath,
		"--lean-project", filepath.Join(repositoryRoot, "proofs", "r0b"),
		"--imports", "Init",
		"--repo-root", repositoryRoot,
		"--python", python,
		"--docker", docker,
		"--lean-sandbox-image", os.Getenv("MATHCASE_LEAN_SANDBOX_IMAGE"),
		"--lean-snapshot-manifest", os.Getenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST"),
		"--pantograph-sandbox-image", os.Getenv("MATHCASE_PANTOGRAPH_SANDBOX_IMAGE"),
		"--workspace-root", filepath.Join(tempRoot, "workspaces"),
		"--receipt-root", filepath.Join(tempRoot, "receipts"),
		"--run-id", "cli-falsify-local-run",
		"--max-nodes", "64",
		"--max-depth", "4",
		"--verification-timeout", (90 * time.Second).String(),
	}, &stdout, &stderr)
	if code != 0 {
		t.Fatalf("falsify-local exit code = %d, stderr=%s, stdout=%s", code, stderr.String(), stdout.String())
	}
	var result application.ProposalFalsificationResult
	if err := json.Unmarshal(stdout.Bytes(), &result); err != nil {
		t.Fatalf("decode falsify-local JSON: %v; output=%s", err, stdout.String())
	}
	if result.Status != application.ProposalCounterexampleProved || !result.CandidateTypecheck.TypecheckPassed || !result.NegationSearch.Solved || !result.CounterexampleFound {
		t.Fatalf("falsify-local result = %#v, want a typed proposal with a kernel-checked counterexample", result)
	}
	if result.RandomizedCheck.TestsRun != 64 || result.EasyBaseline.Status != "COMPLETED" || result.EasyBaseline.Profile.SHA256 == "" {
		t.Fatalf("falsify-local M2/V4 evidence = randomized tests %d, easy baseline %#v; want 64 samples and a policy-bound baseline", result.RandomizedCheck.TestsRun, result.EasyBaseline)
	}
	if result.ProposalID != proposal.ID || result.RunID != "cli-falsify-local-run" {
		t.Fatalf("falsify-local result identity = proposal %q, run %q; want proposal %q and requested run", result.ProposalID, result.RunID, proposal.ID)
	}
	if _, err := os.Stat(filepath.Join(tempRoot, "receipts", result.EvidenceID+".json")); err != nil {
		t.Fatalf("falsify-local result receipt was not persisted: %v", err)
	}
}

// syntheticProposalForCLI builds an explicitly synthetic serialized proposal
// for parser and local falsification integration tests. It does not represent
// an authenticated parent or a trusted M2 campaign input.
func syntheticProposalForCLI(t *testing.T, body string) poser.Proposal {
	t.Helper()
	parents := []poser.ParentLineage{{
		ProblemID: "synthetic-cli-parent", SourceIDs: []string{"synthetic-cli-source"},
		SnapshotSHA256: strings.Repeat("a", 64), StatementSHA256: strings.Repeat("b", 64), ProofSHA256: strings.Repeat("c", 64),
		V1EvidenceIDs: []string{"synthetic-cli-v1"}, V2EvidenceIDs: []string{"synthetic-cli-v2"},
		V3EvidenceIDs: []string{"synthetic-cli-v3"}, V3ReviewerID: "synthetic-cli-reviewer",
	}}
	lineageBytes, err := json.Marshal(parents)
	if err != nil {
		t.Fatalf("marshal synthetic parent lineage: %v", err)
	}
	lineageHash := sha256.Sum256(lineageBytes)
	lineageDigest := hex.EncodeToString(lineageHash[:])
	operator := poser.OperatorSharpen
	binders := "(n : Nat)"
	identity := strings.Join([]string{poser.GeneratorID, string(operator), lineageDigest, binders, body}, "\x00")
	idHash := sha256.Sum256([]byte(identity))
	proposalID := "proposal-" + hex.EncodeToString(idHash[:12])
	declaration := "theorem mathcase_poser_" + strings.TrimPrefix(proposalID, "proposal-") + " " + binders + " : " + body
	proposal := poser.Proposal{
		ID: proposalID, Parents: parents, ParentLineageSHA256: lineageDigest,
		Operator: operator, LeanStatement: declaration,
		MutationDiff: "synthetic CLI fixture; no MathCase result claim",
		GeneratorID:  poser.GeneratorID, GeneratedAt: time.Date(2026, time.October, 20, 15, 0, 0, 0, time.UTC),
	}
	if err := proposal.Validate(); err != nil {
		t.Fatalf("synthetic proposal validation = %v, want parser-ready fixture", err)
	}
	return proposal
}

func testVerifiedTheorem(t *testing.T, id, leanStatement string) poser.VerifiedTheorem {
	t.Helper()
	informal := "A verified theorem used by a local poser test."
	proofDigest := strings.Repeat("b", 64)
	theorem := poser.VerifiedTheorem{
		ProblemID: id, SourceIDs: []string{"source-" + id}, SourceSnapshotSHA256: strings.Repeat("a", 64),
		InformalStatement: informal, LeanStatement: leanStatement, ProofSHA256: proofDigest,
	}
	proposition, err := theorem.FormalProposition()
	if err != nil {
		t.Fatalf("VerifiedTheorem.FormalProposition(%q) error = %v", id, err)
	}
	statementDigest, err := domain.ProblemStatementDigest(id, informal, proposition)
	if err != nil {
		t.Fatalf("ProblemStatementDigest(%q) error = %v", id, err)
	}
	recordedAt := time.Date(2026, time.October, 20, 10, 0, 0, 0, time.UTC)
	problem := domain.MathProblem{ID: id, Statement: informal, LeanStatement: proposition}
	review := v3ReviewForCLIFixture(problem, naturalParametersForCLITest(leanStatement), recordedAt)
	review.Source.CatalogSnapshotSHA256 = strings.Repeat("a", 64)
	theorem.V1 = domain.VerificationRecord{
		Gate: domain.GateKernelBuild, Status: domain.VerificationPassed, Summary: "Build passed.",
		EvidenceIDs: []string{id + "-v1"}, ProblemID: id, ProblemStatementSHA256: statementDigest,
		ProofSHA256: proofDigest, RecordedAt: recordedAt,
	}
	theorem.V2 = domain.VerificationRecord{
		Gate: domain.GateAxiomAudit, Status: domain.VerificationPassed, Summary: "Axiom audit passed.",
		EvidenceIDs: []string{id + "-v2"}, ProblemID: id, ProblemStatementSHA256: statementDigest,
		ProofSHA256: proofDigest, RecordedAt: recordedAt,
	}
	theorem.V3 = domain.VerificationRecord{
		Gate: domain.GateStatementFidelity, Status: domain.VerificationPassed, Summary: "Statement correspondence reviewed.",
		EvidenceIDs: review.EvidenceIDs(), ProblemID: id, ProblemStatementSHA256: statementDigest,
		ReviewerID: review.SemanticComparison.ReviewerID, StatementFidelity: review, RecordedAt: recordedAt,
	}
	return theorem
}

func TestSolveLocalCommandUsesProblemSelectedProject(t *testing.T) {
	repositoryRoot, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	docker, err := exec.LookPath("docker")
	if err != nil || os.Getenv("MATHCASE_LEAN_SANDBOX_IMAGE") == "" {
		t.Skip("pinned Lean Docker sandbox is not configured")
	}
	python := filepath.Join(repositoryRoot, ".venv", "Scripts", "python.exe")
	if _, err := os.Stat(python); err != nil {
		python = filepath.Join(repositoryRoot, ".venv", "bin", "python")
		if _, err := os.Stat(python); err != nil {
			t.Skip("local Pantograph Python environment is not installed")
		}
	}
	tempRoot := t.TempDir()
	projectRoot := filepath.Join(repositoryRoot, "proofs", "r0b")
	problemPath := filepath.Join(tempRoot, "problem.json")
	problem := `{"id":"selected-project-problem","title":"Reflexive equality","statement":"Every natural number equals itself.","lean_statement":"∀ n : Nat, n = n"}`
	if err := os.WriteFile(problemPath, []byte(problem), 0o600); err != nil {
		t.Fatal(err)
	}
	var stdout, stderr bytes.Buffer
	code := run([]string{
		"solve-local",
		"--problem", problemPath,
		"--lean-project", projectRoot,
		"--imports", "Init",
		"--repo-root", repositoryRoot,
		"--python", python,
		"--docker", docker,
		"--lean-sandbox-image", os.Getenv("MATHCASE_LEAN_SANDBOX_IMAGE"),
		"--lean-snapshot-manifest", os.Getenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST"),
		"--pantograph-sandbox-image", os.Getenv("MATHCASE_PANTOGRAPH_SANDBOX_IMAGE"),
		"--workspace-root", filepath.Join(tempRoot, "workspaces"),
		"--receipt-root", filepath.Join(tempRoot, "receipts"),
		"--run-id", "cli-selected-project-run",
	}, &stdout, &stderr)
	if code != 0 {
		t.Fatalf("solve-local exit code = %d, stderr=%s, stdout=%s", code, stderr.String(), stdout.String())
	}
	var result solveOutput
	if err := json.Unmarshal(stdout.Bytes(), &result); err != nil {
		t.Fatalf("decode solve-local JSON: %v; output=%s", err, stdout.String())
	}
	if !result.Solved || result.ProblemID != "selected-project-problem" || result.Proof == "" {
		t.Fatalf("solve-local result = %#v, want verified selected-project proof", result)
	}
	if len(result.Attempts) != 1 || result.Attempts[0].Outcome != "PASS" || len(result.Attempts[0].EvidenceIDs) != 1 {
		t.Fatalf("solve-local attempts = %#v, want one passing evidence-backed attempt", result.Attempts)
	}
	if _, err := os.Stat(filepath.Join(tempRoot, "costs", "solver-costs.jsonl")); err != nil {
		t.Fatalf("solve-local durable cost journal: %v", err)
	}
}

func writeSyntheticM7IdentityTrustRegistry(t *testing.T, path string) {
	t.Helper()
	registry := expositor.M7IdentityTrustRegistry{
		SchemaVersion: expositor.M7IdentityTrustSchemaV1,
		Entries: []expositor.M7IdentityTrustEntry{{
			Role: domain.M7RunAuthor, CallID: "synthetic-m7-call", RunID: "synthetic-m7-run",
			ReceiptSHA256: strings.Repeat("a", 64), PrincipalID: "synthetic-m7-principal",
			ReviewedBy: "synthetic-test-fixture",
			ReviewedAt: time.Date(2026, time.October, 23, 12, 0, 0, 0, time.UTC),
		}},
	}
	data, err := json.Marshal(registry)
	if err != nil {
		t.Fatalf("marshal synthetic M7 identity trust registry: %v", err)
	}
	if err := os.WriteFile(path, data, 0o600); err != nil {
		t.Fatalf("write synthetic M7 identity trust registry: %v", err)
	}
}
