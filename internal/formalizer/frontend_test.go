package formalizer

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

func TestFrontendGeneratesCandidateThroughExistingCheckerAndBuildsV3Seed(t *testing.T) {
	t.Parallel()
	request := validRequest()
	candidate := validCandidate(request)
	generation := validGeneration(request)
	checker := newFakeChecker(t)
	frontend := Frontend{Generator: &fakeGenerator{generation: generation}, Checker: checker, ClearanceVerifier: acceptClearance{}}

	result, err := frontend.GenerateCandidate(context.Background(), request)
	if err != nil {
		t.Fatalf("GenerateCandidate(%q) error = %v, want candidate proposition check", request.CandidateID, err)
	}
	if result.Status != statusPropositionPass {
		t.Fatalf("GenerateCandidate(%q) status = %q, want %q", request.CandidateID, result.Status, statusPropositionPass)
	}
	if checker.calls != 1 || checker.problem.ID != request.ProblemID || checker.problem.Statement != request.Source.Statement || checker.problem.LeanStatement != candidate.LeanStatement {
		t.Fatalf("CheckProposition calls/input = (%d, %#v), want the exact M0 statement and generated proposition", checker.calls, checker.problem)
	}
	if result.RunReceipt.ReceiptID != request.PlannedReceiptID || result.Request != request || result.StatementCheck == nil {
		t.Fatalf("GenerateCandidate(%q) result = %#v, want exact source and run/check receipt bindings", request.CandidateID, result)
	}
	if result.GenerationResponse != generation.RawResponse || result.GenerationResponseSHA256 != testDigestText(generation.RawResponse) {
		t.Fatalf("GenerateCandidate(%q) response/hash = (%q, %q), want exact raw generator response and its SHA-256", request.CandidateID, result.GenerationResponse, result.GenerationResponseSHA256)
	}
	wantRevision, err := newCandidateRevision(candidate)
	if err != nil || result.CandidateRevision != wantRevision {
		t.Fatalf("GenerateCandidate(%q) candidate revision = %#v, want content-addressed revision %#v (err=%v)", request.CandidateID, result.CandidateRevision, wantRevision, err)
	}

	seed, err := result.V3Seed()
	if err != nil {
		t.Fatalf("V3Seed() error = %v, want candidate-only V3 handoff", err)
	}
	if seed.Source != request.Source || seed.LeanCandidate != candidate || seed.CandidateRevision != wantRevision || seed.RequiredBackTranslationRole != domain.V3BackTranslationWitnessRole || seed.BackTranslationIsGroundTruth {
		t.Fatalf("V3Seed() = %#v, want exact source/candidate with witness-only back-translation", seed)
	}
	if strings.Join(seed.RequiredBoundaryProbes, ",") != "n=0,n=1,empty-object-or-NOT_APPLICABLE" {
		t.Fatalf("V3Seed() boundary requirements = %v, want n=0, n=1, and empty-object disposition", seed.RequiredBoundaryProbes)
	}
}

func TestFrontendFailsClosedWhenInvocationManifestIsMissing(t *testing.T) {
	snapshot := newFormalizerSnapshot(t)
	t.Setenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST", snapshot.manifestPath)
	request := validRequest()
	generator := &fakeGenerator{generation: validGeneration(request)}
	frontend := Frontend{
		Generator:         generator,
		Checker:           leanVerifierChecker{verifier: solver.LeanVerifier{}},
		ClearanceVerifier: acceptClearance{},
	}

	_, err := frontend.GenerateCandidate(context.Background(), request)
	if err == nil || !strings.Contains(err.Error(), "a qualified snapshot manifest is required") {
		t.Fatalf("GenerateCandidate(with ambient manifest only) error = %v, want fail-closed explicit-input refusal", err)
	}
	if generator.calls != 1 {
		t.Errorf("candidate generator calls = %d, want one generation before the isolated checker rejects missing manifest", generator.calls)
	}
}

func TestV3SeedRejectsCandidateRevisionIdentityTampering(t *testing.T) {
	t.Parallel()
	request := validRequest()
	frontend := Frontend{
		Generator:         &fakeGenerator{generation: validGeneration(request)},
		Checker:           newFakeChecker(t),
		ClearanceVerifier: acceptClearance{},
	}
	result, err := frontend.GenerateCandidate(context.Background(), request)
	if err != nil {
		t.Fatalf("GenerateCandidate() error = %v", err)
	}
	result.CandidateRevision.SHA256 = strings.Repeat("0", 64)
	if _, err := result.V3Seed(); err == nil || !strings.Contains(err.Error(), "versioned revision identity") {
		t.Fatalf("V3Seed(tampered revision) error = %v, want content-addressed identity refusal", err)
	}
}

func TestFrontendRefusesMissingClearanceBeforeCallingGenerator(t *testing.T) {
	t.Parallel()
	for _, test := range []struct {
		name   string
		mutate func(*Request)
		want   string
	}{
		{
			name:   "missing clearance ID",
			mutate: func(request *Request) { request.InputClearance.EvidenceID = "" },
			want:   "clearance evidence ID",
		},
		{
			name:   "missing clearance digest",
			mutate: func(request *Request) { request.InputClearance.EvidenceSHA256 = "" },
			want:   "exact evidence artifact SHA-256",
		},
	} {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			request := validRequest()
			test.mutate(&request)
			generator := &fakeGenerator{generation: validGeneration(validRequest())}
			frontend := Frontend{Generator: generator, Checker: newFakeChecker(t), ClearanceVerifier: acceptClearance{}}

			_, err := frontend.GenerateCandidate(context.Background(), request)
			if err == nil || !strings.Contains(err.Error(), test.want) {
				t.Fatalf("GenerateCandidate(%#v) error = %v, want %q refusal", request.InputClearance, err, test.want)
			}
			if generator.calls != 0 {
				t.Errorf("GenerateCandidate(%q) called generator %d times, want 0 before clearance validation", request.CandidateID, generator.calls)
			}
		})
	}
}

func TestFrontendRejectsReceiptWithDifferentTargetStatementDigestBeforeLean(t *testing.T) {
	t.Parallel()
	request := validRequest()
	generation := validGeneration(request)
	generation.Receipt.Target.StatementSHA256 = testDigestText("a different target statement")
	checker := newFakeChecker(t)
	frontend := Frontend{Generator: &fakeGenerator{generation: generation}, Checker: checker, ClearanceVerifier: acceptClearance{}}

	_, err := frontend.GenerateCandidate(context.Background(), request)
	if err == nil || !strings.Contains(err.Error(), "exact target statement SHA-256") {
		t.Fatalf("GenerateCandidate() error = %v, want exact target statement digest refusal", err)
	}
	if checker.calls != 0 {
		t.Errorf("CheckProposition calls = %d, want 0 for a receipt bound to a different statement", checker.calls)
	}
}

func TestFrontendVerifiesClearanceBeforeGeneratorDispatch(t *testing.T) {
	t.Parallel()
	request := validRequest()
	generation := validGeneration(request)
	order := []string{}
	verifier := acceptClearance{err: errors.New("clearance is not active"), order: &order}
	generator := &fakeGenerator{generation: generation, order: &order}
	frontend := Frontend{Generator: generator, Checker: newFakeChecker(t), ClearanceVerifier: verifier}

	if _, err := frontend.GenerateCandidate(context.Background(), request); err == nil || !strings.Contains(err.Error(), "clearance preflight") {
		t.Fatalf("GenerateCandidate() error = %v, want preflight refusal", err)
	}
	if generator.calls != 0 || strings.Join(order, ",") != "preflight" {
		t.Fatalf("dispatch order = %v, generator calls = %d; want preflight only", order, generator.calls)
	}
}

func TestFrontendRejectsCandidateBoundToDifferentProblemBeforeLeanCheck(t *testing.T) {
	t.Parallel()
	request := validRequest()
	generation := validGeneration(request)
	candidate := validCandidate(request)
	candidate.ProblemID = "another-problem"
	generation.RawResponse = encodeCandidate(candidate)
	checker := newFakeChecker(t)
	frontend := Frontend{Generator: &fakeGenerator{generation: generation}, Checker: checker, ClearanceVerifier: acceptClearance{}}

	_, err := frontend.GenerateCandidate(context.Background(), request)
	if err == nil || !strings.Contains(err.Error(), "identity does not match") {
		t.Fatalf("GenerateCandidate(%q) error = %v, want candidate identity refusal", request.CandidateID, err)
	}
	if checker.calls != 0 {
		t.Errorf("CheckProposition calls = %d, want 0 for a candidate bound to another problem", checker.calls)
	}
}

func TestFrontendRejectsReceiptThatDropsClearanceOrLabel(t *testing.T) {
	t.Parallel()
	request := validRequest()
	for _, test := range []struct {
		name   string
		mutate func(*domain.AgentRunReceipt)
	}{
		{
			name: "clearance",
			mutate: func(receipt *domain.AgentRunReceipt) {
				receipt.InputClearance = []domain.AgentRunInputClearance{{
					StatementID: receipt.Target.StatementID, EvidenceID: "different-clearance",
					EvidenceSHA256: testDigestText("different pinned clearance"),
				}}
			},
		},
		{
			name: "label",
			mutate: func(receipt *domain.AgentRunReceipt) {
				receipt.LabelRecordIDs = []string{"some-other-label"}
			},
		},
	} {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			generation := validGeneration(request)
			test.mutate(&generation.Receipt)
			checker := newFakeChecker(t)
			frontend := Frontend{Generator: &fakeGenerator{generation: generation}, Checker: checker, ClearanceVerifier: acceptClearance{}}

			_, err := frontend.GenerateCandidate(context.Background(), request)
			if err == nil || !strings.Contains(err.Error(), "dropped the exact input clearance or label") {
				t.Fatalf("GenerateCandidate(%q) error = %v, want exact %s binding refusal", request.CandidateID, err, test.name)
			}
			if checker.calls != 0 {
				t.Errorf("CheckProposition calls = %d, want 0 for an unbound generation receipt", checker.calls)
			}
		})
	}
}

func TestFrontendPreservesPropositionRejectionAndRefusesV3Seed(t *testing.T) {
	t.Parallel()
	request := validRequest()
	generation := validGeneration(request)
	candidate := validCandidate(request)
	checker := newFakeChecker(t)
	checker.receipt = checkReceipt(t, request, candidate, false, "REJECTED")
	frontend := Frontend{Generator: &fakeGenerator{generation: generation}, Checker: checker, ClearanceVerifier: acceptClearance{}}

	result, err := frontend.GenerateCandidate(context.Background(), request)
	if err != nil {
		t.Fatalf("GenerateCandidate(%q) error = %v, want recorded proposition rejection", request.CandidateID, err)
	}
	if result.Status != statusPropositionFail || result.StatementCheck == nil || result.StatementCheck.TypecheckPassed {
		t.Fatalf("GenerateCandidate(%q) result = %#v, want preserved rejected candidate receipt", request.CandidateID, result)
	}
	if _, err := result.V3Seed(); err == nil || !strings.Contains(err.Error(), "only a proposition-elaborated candidate") {
		t.Errorf("V3Seed() error = %v, want rejected proposition refusal", err)
	}
}

func TestFrontendClassifiesStatementOutputLimitAsInfrastructureFailure(t *testing.T) {
	request := validRequest()
	generation := validGeneration(request)
	candidate := validCandidate(request)
	check := outputLimitedStatementCheck(checkReceipt(t, request, candidate, false, "OUTPUT_LIMIT"))

	frontend := Frontend{
		Generator:         &fakeGenerator{generation: generation},
		Checker:           &fakeChecker{t: t, receipt: check},
		ClearanceVerifier: acceptClearance{},
	}
	result, err := frontend.GenerateCandidate(context.Background(), request)
	if err != nil {
		t.Fatalf("GenerateCandidate() error = %v, want nil for a receipted checker infrastructure failure", err)
	}
	if result.Status != statusCheckerError || result.FailureClass != infrastructureFailureClass || result.StatementCheck == nil || result.StatementCheck.Status != "OUTPUT_LIMIT" {
		t.Fatalf("output-limit formalizer result = (%q, %q, %#v), want checker infrastructure failure", result.Status, result.FailureClass, result.StatementCheck)
	}
}

func TestFrontendRefusesHashOnlyOrMisboundOutputLimitStatementReceipt(t *testing.T) {
	request := validRequest()
	candidate := validCandidate(request)
	valid := outputLimitedStatementCheck(checkReceipt(t, request, candidate, false, "OUTPUT_LIMIT"))
	for _, test := range []struct {
		name   string
		mutate func(*solver.LeanStatementCheckReceipt)
	}{
		{name: "hash only", mutate: func(r *solver.LeanStatementCheckReceipt) { r.StdoutPrefix = nil }},
		{name: "wrong prefix hash", mutate: func(r *solver.LeanStatementCheckReceipt) { r.StdoutCapturedSHA256 = testDigestText("different") }},
		{name: "cap above bound", mutate: func(r *solver.LeanStatementCheckReceipt) { r.OutputLimitBytes = 8 << 20 }},
		{name: "cleanup without exit receipt", mutate: func(r *solver.LeanStatementCheckReceipt) { r.SandboxExecution.CleanupExitCode = nil }},
		{name: "truncated output called rejection", mutate: func(r *solver.LeanStatementCheckReceipt) { r.Status = "REJECTED" }},
	} {
		t.Run(test.name, func(t *testing.T) {
			check := valid
			test.mutate(&check)
			frontend := Frontend{
				Generator:         &fakeGenerator{generation: validGeneration(request)},
				Checker:           &fakeChecker{t: t, receipt: check},
				ClearanceVerifier: acceptClearance{},
			}
			if _, err := frontend.GenerateCandidate(context.Background(), request); err == nil {
				t.Fatal("GenerateCandidate accepted malformed OUTPUT_LIMIT receipt evidence")
			}
		})
	}
}

func TestFrontendPreservesVersionProbeOutputLimitAsInfrastructureFailure(t *testing.T) {
	request := validRequest()
	candidate := validCandidate(request)
	base := outputLimitedToolchainProbeStatementCheck(checkReceipt(t, request, candidate, false, "EXECUTION_ERROR"))
	for _, test := range []struct {
		name   string
		mutate func(*solver.LeanStatementCheckReceipt)
		accept bool
	}{
		{name: "valid bounded capture", accept: true},
		{name: "hash only", mutate: func(r *solver.LeanStatementCheckReceipt) { r.LeanVersionCheck.StdoutPrefix = nil }},
		{name: "misbound prefix", mutate: func(r *solver.LeanStatementCheckReceipt) {
			r.LeanVersionCheck.StdoutCapturedSHA256 = testDigestText("different")
		}},
		{name: "missing cleanup", mutate: func(r *solver.LeanStatementCheckReceipt) {
			r.LeanVersionCheck.Execution.CleanupAttempted = false
			r.LeanVersionCheck.Execution.CleanupSucceeded = false
			r.LeanVersionCheck.Execution.CleanupExitCode = nil
		}},
	} {
		t.Run(test.name, func(t *testing.T) {
			receipt := base
			if test.mutate != nil {
				test.mutate(&receipt)
			}
			checkerErr := errors.New("synthetic Lean version probe stopped at output cap")
			frontend := Frontend{
				Generator:         &fakeGenerator{generation: validGeneration(request)},
				Checker:           &fakeChecker{t: t, receipt: receipt, err: checkerErr},
				ClearanceVerifier: acceptClearance{},
			}
			result, err := frontend.GenerateCandidate(context.Background(), request)
			if result.Status != statusCheckerError || result.FailureClass != infrastructureFailureClass || result.StatementCheck == nil {
				t.Fatalf("GenerateCandidate(version output limit) result = %#v, want a linked infrastructure-failure receipt", result)
			}
			if test.accept {
				if err == nil || result.StatementCheck.Status != "TOOLCHAIN_PROBE_FAILED" || !strings.Contains(err.Error(), checkerErr.Error()) {
					t.Fatalf("GenerateCandidate(valid version output-limit receipt) = (%#v, %v), want accepted infrastructure evidence and underlying checker error", result, err)
				}
			} else if err == nil {
				t.Fatal("GenerateCandidate(malformed version output-limit receipt) error = nil, want receipt refusal")
			}
		})
	}
}

func TestFrontendRefusesCheckerReceiptForDifferentStatement(t *testing.T) {
	t.Parallel()
	request := validRequest()
	generation := validGeneration(request)
	candidate := validCandidate(request)
	check := checkReceipt(t, request, candidate, true, "PASSED")
	check.PropositionSHA256 = testDigestText("True")
	frontend := Frontend{
		Generator:         &fakeGenerator{generation: generation},
		Checker:           &fakeChecker{t: t, receipt: check},
		ClearanceVerifier: acceptClearance{},
	}

	result, err := frontend.GenerateCandidate(context.Background(), request)
	if err == nil || !strings.Contains(err.Error(), "does not bind to the exact generated candidate") {
		t.Fatalf("GenerateCandidate(%q) error = %v, want checker receipt binding refusal", request.CandidateID, err)
	}
	if result.Status != statusCheckerError || result.StatementCheck == nil {
		t.Errorf("GenerateCandidate(%q) result = %#v, want candidate plus mismatched check evidence kept blocked", request.CandidateID, result)
	}
}

func TestFrontendRejectsMalformedStructuredResponseBeforeLeanCheck(t *testing.T) {
	t.Parallel()
	request := validRequest()
	for _, test := range []struct {
		name        string
		rawResponse string
	}{
		{name: "unknown field", rawResponse: `{"schema_version":"mathcase-nl-lean-response-v1","candidate_id":"candidate-001","problem_id":"problem-001","catalog_snapshot_sha256":"` + testDigestText("catalog-snapshot") + `","source_statement_sha256":"` + testDigestText(request.Source.Statement) + `","declaration_name":"candidate_001","lean_statement":"True","unreviewed_claim":"discard me"}`},
		{name: "multiple values", rawResponse: encodeCandidate(validCandidate(request)) + ` {}`},
		{name: "trailing invalid bytes", rawResponse: encodeCandidate(validCandidate(request)) + ` trailing`},
	} {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			generation := validGeneration(request)
			generation.RawResponse = test.rawResponse
			checker := newFakeChecker(t)
			frontend := Frontend{Generator: &fakeGenerator{generation: generation}, Checker: checker, ClearanceVerifier: acceptClearance{}}

			_, err := frontend.GenerateCandidate(context.Background(), request)
			if err == nil || !strings.Contains(err.Error(), "generator response") {
				t.Fatalf("GenerateCandidate(%q) error = %v, want malformed structured-response refusal", request.CandidateID, err)
			}
			if checker.calls != 0 {
				t.Errorf("CheckProposition calls = %d, want 0 for malformed generator response", checker.calls)
			}
		})
	}
}

type fakeGenerator struct {
	generation Generation
	calls      int
	order      *[]string
}

func (f *fakeGenerator) GenerateCandidate(_ context.Context, _ Request) (Generation, error) {
	f.calls++
	if f.order != nil {
		*f.order = append(*f.order, "generator")
	}
	return f.generation, nil
}

type acceptClearance struct {
	err   error
	order *[]string
}

func (f acceptClearance) VerifyProviderInput(_ context.Context, _ Request) error {
	if f.order != nil {
		*f.order = append(*f.order, "preflight")
	}
	return f.err
}

type fakeChecker struct {
	t       *testing.T
	problem domain.MathProblem
	receipt solver.LeanStatementCheckReceipt
	err     error
	calls   int
}

type leanVerifierChecker struct {
	verifier solver.LeanVerifier
}

func (c leanVerifierChecker) CheckProposition(ctx context.Context, problem domain.MathProblem) (solver.LeanStatementCheckReceipt, error) {
	return c.verifier.CheckProposition(ctx, problem)
}

func newFakeChecker(t *testing.T) *fakeChecker {
	t.Helper()
	return &fakeChecker{t: t}
}

func (f *fakeChecker) CheckProposition(_ context.Context, problem domain.MathProblem) (solver.LeanStatementCheckReceipt, error) {
	f.calls++
	f.problem = problem
	if f.receipt.EvidenceID != "" {
		return f.receipt, f.err
	}
	request := Request{ProblemID: problem.ID, Source: domain.V3SourceStatementPin{Statement: problem.Statement}}
	candidate := GeneratedCandidate{LeanStatement: problem.LeanStatement}
	return checkReceipt(f.t, request, candidate, true, "PASSED"), nil
}

func validRequest() Request {
	return NewRequest(
		"candidate-001",
		"problem-001",
		domain.V3SourceStatementPin{
			URL:                   "https://example.invalid/problem-001",
			ItemLocator:           "problem-001",
			Revision:              "catalog-rev-001",
			RawItemSHA256:         testDigestText("source-item-bytes"),
			CatalogSnapshotSHA256: testDigestText("catalog-snapshot"),
			Statement:             "Every natural number equals itself.",
			EvidenceID:            "source-item-evidence",
		},
		domain.AgentRunInputClearance{
			StatementID:    "statement-001",
			EvidenceID:     "clearance-evidence",
			EvidenceSHA256: testDigestText("synthetic pinned provider-input clearance"),
		},
		"attackability-label-001",
		"agent-run-receipt-001",
	)
}

func validGeneration(request Request) Generation {
	launchedAt := time.Date(2026, time.October, 20, 19, 0, 0, 0, time.UTC)
	recordedAt := launchedAt.Add(time.Second)
	receipt := domain.AgentRunReceipt{
		SchemaVersion:              domain.AgentRunReceiptSchemaVersion2,
		ReceiptID:                  request.PlannedReceiptID,
		RecordedAtUTC:              recordedAt,
		Surface:                    "synthetic-test-surface",
		Model:                      "gpt-6-astra",
		ModelIdentityCapturedAtUTC: &launchedAt,
		Target: domain.AgentRunTarget{
			ProblemID:             request.ProblemID,
			StatementID:           request.InputClearance.StatementID,
			CatalogSnapshotSHA256: request.Source.CatalogSnapshotSHA256,
			StatementSHA256:       testDigestText(request.Source.Statement),
		},
		Purpose:        formalizationPurpose,
		Verdict:        "CANDIDATE_GENERATED",
		InputClearance: []domain.AgentRunInputClearance{request.InputClearance},
		LabelRecordIDs: []string{request.LabelRecordID},
	}
	return Generation{RawResponse: encodeCandidate(validCandidate(request)), Receipt: receipt}
}

func validCandidate(request Request) GeneratedCandidate {
	return GeneratedCandidate{
		SchemaVersion:         ResponseSchemaVersion,
		CandidateID:           request.CandidateID,
		ProblemID:             request.ProblemID,
		CatalogSnapshotSHA256: request.Source.CatalogSnapshotSHA256,
		SourceStatementSHA256: testDigestText(request.Source.Statement),
		DeclarationName:       "candidate_001",
		LeanStatement:         "∀ (n : Nat), n = n",
	}
}

func encodeCandidate(candidate GeneratedCandidate) string {
	data, _ := json.Marshal(candidate)
	return string(data)
}

func checkReceipt(t *testing.T, request Request, candidate GeneratedCandidate, passed bool, status string) solver.LeanStatementCheckReceipt {
	t.Helper()
	snapshot := newFormalizerSnapshot(t)
	statementDigest, _ := domain.ProblemStatementDigest(request.ProblemID, request.Source.Statement, candidate.LeanStatement)
	generatedSource := "#check (show Prop from (" + candidate.LeanStatement + "))\n"
	receipt := solver.LeanStatementCheckReceipt{
		SchemaVersion:          "mathcase-lean-statement-check-v3",
		EvidenceID:             "lean-statement-check-evidence",
		RecordedAtUTC:          time.Date(2026, time.October, 20, 19, 1, 0, 0, time.UTC),
		ProblemID:              request.ProblemID,
		ProblemStatementSHA256: statementDigest,
		PropositionSHA256:      testDigestText(candidate.LeanStatement),
		GeneratedSourceSHA256:  testDigestText(generatedSource),
		ArtifactSnapshotSchema: solver.LeanArtifactSnapshotSchemaVersion,
		GeneratedSource:        generatedSource,
		ProjectSnapshotSHA256:  snapshot.manifest.ProjectSnapshot.SHA256,
		ProjectSnapshot:        snapshot.manifest.ProjectSnapshot,
		SnapshotID:             snapshot.manifest.SnapshotID,
		SnapshotManifestPath:   snapshot.manifestPath,
		SnapshotManifestSHA256: snapshot.manifestSHA256,
		SnapshotImageCheck:     snapshotImageCheck(snapshot.manifest),
		Toolchain:              "leanprover/lean4:v4.33.1",
		LeanVersion:            "Lean (version 4.33.1, synthetic fixture)",
		ExecutionImage:         snapshot.manifest.ImageDigest,
		ExecutionIsolation:     "read-only qualified snapshot " + snapshot.manifest.ImageDigest,
		SandboxExecution:       syntheticStatementCheckExecution(snapshot.manifest, true),
		TypecheckPassed:        passed,
		Status:                 status,
		StdoutSHA256:           testDigestText(""),
		StderrSHA256:           testDigestText(""),
		ExitCode:               0,
	}
	versionOutput := receipt.LeanVersion + "\n"
	receipt.LeanVersionCheck = solver.LeanVersionCheck{
		Version: receipt.LeanVersion, StdoutSHA256: testDigestText(versionOutput), StderrSHA256: testDigestText(""), StdoutExcerpt: versionOutput,
		Execution: syntheticStatementCheckExecution(snapshot.manifest, false),
	}
	if passed {
		compiled := []byte("synthetic .olean bytes from fake checker; no Lean execution")
		receipt.CompiledArtifactStatus = "CAPTURED"
		receipt.CompiledArtifact = compiled
		receipt.CompiledArtifactSHA256 = testDigestText(string(compiled))
		receipt.CompiledArtifactSize = int64(len(compiled))
	} else {
		receipt.CompiledArtifactStatus = "NOT_PRODUCED"
	}
	if status == "REJECTED" {
		receipt.ExitCode = 1
		code := 1
		receipt.SandboxExecution.ExitCode = &code
	}
	return receipt
}

func outputLimitedStatementCheck(receipt solver.LeanStatementCheckReceipt) solver.LeanStatementCheckReceipt {
	receipt.StdoutSHA256 = ""
	receipt.StderrSHA256 = ""
	receipt.StdoutExcerpt = "12345678"
	receipt.StdoutCapturedSHA256 = testDigestText("12345678")
	receipt.StderrCapturedSHA256 = testDigestText("")
	receipt.StdoutPrefix = []byte("12345678")
	receipt.StdoutBytesObserved = 9
	receipt.StdoutBytesCaptured = 8
	receipt.OutputLimitBytes = 8
	receipt.OutputTruncated = true
	receipt.TypecheckPassed = false
	receipt.ExitCode = -1
	receipt.SandboxExecution.ExitCode = nil
	receipt.SandboxExecution.CleanupAttempted = true
	receipt.SandboxExecution.CleanupSucceeded = true
	cleanupExitCode := 0
	receipt.SandboxExecution.CleanupExitCode = &cleanupExitCode
	return receipt
}

func outputLimitedToolchainProbeStatementCheck(receipt solver.LeanStatementCheckReceipt) solver.LeanStatementCheckReceipt {
	receipt.Status = "TOOLCHAIN_PROBE_FAILED"
	receipt.Summary = "Pinned Lean version preflight output exceeded the configured capture limit; proposition checking did not start."
	receipt.LeanVersion = ""
	receipt.TypecheckPassed = false
	receipt.CompiledArtifactStatus = "NOT_PRODUCED"
	receipt.CompiledArtifact = nil
	receipt.CompiledArtifactSHA256 = ""
	receipt.CompiledArtifactSize = 0
	receipt.ExitCode = -1
	receipt.StdoutSHA256 = ""
	receipt.StderrSHA256 = ""
	receipt.StdoutExcerpt = ""
	receipt.StderrExcerpt = ""
	receipt.StdoutCapturedSHA256 = ""
	receipt.StderrCapturedSHA256 = ""
	receipt.StdoutPrefix = nil
	receipt.StderrPrefix = nil
	receipt.StdoutBytesObserved = 0
	receipt.StderrBytesObserved = 0
	receipt.StdoutBytesCaptured = 0
	receipt.StderrBytesCaptured = 0
	receipt.OutputLimitBytes = 0
	receipt.OutputTruncated = false
	receipt.SandboxExecution = solver.LeanSandboxExecution{}
	check := &receipt.LeanVersionCheck
	check.Version = ""
	check.StdoutSHA256 = ""
	check.StderrSHA256 = ""
	check.StdoutExcerpt = "12345678"
	check.StderrExcerpt = ""
	check.StdoutCapturedSHA256 = testDigestText(check.StdoutExcerpt)
	check.StderrCapturedSHA256 = testDigestText("")
	check.StdoutPrefix = []byte(check.StdoutExcerpt)
	check.StderrPrefix = nil
	check.StdoutBytesObserved = 9
	check.StderrBytesObserved = 0
	check.StdoutBytesCaptured = 8
	check.StderrBytesCaptured = 0
	check.OutputLimitBytes = 8
	check.OutputTruncated = true
	check.Execution.ExitCode = nil
	check.Execution.CleanupAttempted = true
	check.Execution.CleanupSucceeded = true
	cleanupExitCode := 0
	check.Execution.CleanupExitCode = &cleanupExitCode
	return receipt
}

// syntheticStatementCheckExecution is a structurally valid argv fixture only.
// It does not attest to a Docker or Lean process having run.
func syntheticStatementCheckExecution(manifest solver.LeanSnapshotManifest, candidate bool) solver.LeanSandboxExecution {
	started := time.Date(2026, time.October, 20, 19, 0, 0, 0, time.UTC)
	finished := started.Add(100 * time.Millisecond)
	container := "mathcase-synthetic-formalizer"
	args := []string{
		"docker", "run", "--rm", "--name", container, "--pull=never", "--network=none", "--read-only", "--user=65532:65532",
		"--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128",
		"--ulimit", "fsize=16777216:16777216",
		"--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"--tmpfs", "/mathcase/work:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"--tmpfs", "/mathcase/cache:rw,noexec,nosuid,nodev,size=512m,mode=1777",
		"--workdir=/mathcase/work", "--env=HOME=/tmp", "--env=TMPDIR=/tmp", "--env=TMP=/tmp",
		"--env=LAKE_HOME=/mathcase/cache", "--env=LEAN_SYSROOT=/opt/lean",
		"--env=LEAN_PATH=" + strings.Join(manifest.ModuleSearchPath, ":"),
	}
	if candidate {
		args = append(args, "--mount", "type=bind,source=C:/synthetic/MathCaseStatement.lean,target=/mathcase/input/MathCaseStatement.lean,readonly")
		args = append(args, "--mount", "type=bind,source=C:/synthetic/output,target=/mathcase/output")
	}
	args = append(args, "--entrypoint=lean", manifest.ImageDigest)
	if candidate {
		args = append(args, "--root=/mathcase/input", "-o", "/mathcase/output/MathCaseStatement.olean", "/mathcase/input/MathCaseStatement.lean")
	} else {
		started = started.Add(-2 * time.Second)
		args = append(args, "--version")
		finished = started.Add(50 * time.Millisecond)
	}
	exitCode := 0
	return solver.LeanSandboxExecution{
		DockerExecutable: "docker", ExecutionMode: solver.LeanExecutionModeDirect, ContainerName: container,
		CommandArgv: args, StartedAtUTC: started, FinishedAtUTC: finished, ExitCode: &exitCode,
	}
}

func testDigestText(value string) string {
	digest := sha256.Sum256([]byte(value))
	return hex.EncodeToString(digest[:])
}
