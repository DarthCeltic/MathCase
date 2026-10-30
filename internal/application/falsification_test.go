package application

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"os/exec"
	"path/filepath"
	"strconv"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/poser"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

func testV3Record(t *testing.T, problem domain.MathProblem, prefix string, naturalParameters []string, at time.Time) domain.VerificationRecord {
	t.Helper()
	const catalogSHA = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	const sourceSHA = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	const leanFileSHA = "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"
	review := &domain.V3StatementFidelity{
		Source: domain.V3SourceStatementPin{
			URL: "https://example.test/application-fixture", ItemLocator: problem.ID,
			Revision: "fixture-source-revision", RawItemSHA256: sourceSHA,
			CatalogSnapshotSHA256: catalogSHA, Statement: problem.Statement, EvidenceID: prefix + "-source",
		},
		Lean: domain.V3LeanStatementPin{
			AuthorID: prefix + "-formalizer", Revision: "fixture-lean-revision", FileLocator: "Fixture.lean",
			DeclarationName: "fixture_theorem", SourceFileSHA256: leanFileSHA,
			NormalizedStatement:       problem.LeanStatement,
			NormalizedStatementSHA256: appTestSHA256(problem.LeanStatement),
			EvidenceID:                prefix + "-lean",
		},
		BackTranslation: domain.V3BackTranslation{
			Text: problem.Statement, ProducedByID: prefix + "-backtranslator",
			Role: domain.V3BackTranslationWitnessRole, RecordedAt: at, EvidenceID: prefix + "-backtranslation",
		},
		SemanticComparison: domain.V3SemanticComparison{
			Status: domain.V3SemanticPass, Differences: []domain.V3SemanticDifference{},
			Rationale:             "Synthetic test fixture has no encoded material statement discrepancy.",
			UnresolvedAssumptions: []string{}, ReviewerID: prefix + "-reviewer", HumanSpotReview: true,
			ReviewerAccepted: true, RecordedAt: at, EvidenceID: prefix + "-semantic",
		},
		EmptyObjectApplicability: domain.V3EmptyObjectNotApplicable,
		IndependentRoute:         "synthetic-independent-backtranslation-v1",
	}
	if len(naturalParameters) == 0 {
		review.NaturalParameterApplicability = domain.V3NaturalParametersNone
		review.MeaningfulNaturalParameters = []string{}
	} else {
		review.NaturalParameterApplicability = domain.V3NaturalParametersPresent
		review.MeaningfulNaturalParameters = append([]string(nil), naturalParameters...)
		for _, parameter := range naturalParameters {
			for _, value := range []string{"0", "1"} {
				review.BoundaryProbes = append(review.BoundaryProbes, domain.V3BoundaryProbe{
					Kind: domain.V3BoundaryNaturalValue, ParameterID: parameter, Value: value,
					SourceInstance: problem.Statement + " [" + parameter + "=" + value + "]",
					LeanInstance:   problem.LeanStatement + " [" + parameter + "=" + value + "]",
					Outcome:        domain.V3BoundaryConsistent, Rationale: "Synthetic fixture records the required boundary value.",
					EvidenceID: prefix + "-" + parameter + "-" + value,
				})
			}
		}
	}
	review.BoundaryProbes = append(review.BoundaryProbes, domain.V3BoundaryProbe{
		Kind: domain.V3BoundaryEmptyObject, ParameterID: "objects", Value: "empty",
		Outcome: domain.V3BoundaryNotApplicable, Rationale: "The synthetic statement has no set or object parameter with an empty case.", EvidenceID: prefix + "-empty",
	})
	statementDigest, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	return domain.VerificationRecord{
		Gate: domain.GateStatementFidelity, Status: domain.VerificationPassed,
		Summary: "Synthetic V3 dual-check fixture.", EvidenceIDs: review.EvidenceIDs(),
		ProblemID: problem.ID, ProblemStatementSHA256: statementDigest,
		ReviewerID: review.SemanticComparison.ReviewerID, StatementFidelity: review, RecordedAt: at,
	}
}

func appTestSHA256(value string) string {
	digest := sha256.Sum256([]byte(value))
	return hex.EncodeToString(digest[:])
}

func requireLeanSandbox(t *testing.T) {
	t.Helper()
	image := strings.TrimPrefix(os.Getenv("MATHCASE_LEAN_SANDBOX_IMAGE"), "sha256:")
	if len(image) != 64 {
		t.Skip("immutable MATHCASE_LEAN_SANDBOX_IMAGE is not configured")
	}
	if _, err := hex.DecodeString(image); err != nil {
		t.Skip("immutable MATHCASE_LEAN_SANDBOX_IMAGE is not configured")
	}
	if _, err := exec.LookPath("docker"); err != nil {
		t.Skip("Docker is not installed")
	}
	if manifest := os.Getenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST"); manifest == "" {
		t.Skip("qualified MATHCASE_LEAN_SNAPSHOT_MANIFEST is not configured")
	} else if _, err := os.Stat(manifest); err != nil {
		t.Skip("qualified MATHCASE_LEAN_SNAPSHOT_MANIFEST is unavailable")
	}
}

func TestSMTModelValuesAlignByLeanBinderAndRequireCompleteModel(t *testing.T) {
	query := poser.SMTNegationQuery{
		Binders:      []poser.RandomizedBinder{{Name: "n", LeanType: "Nat"}, {Name: "k", LeanType: "Int"}},
		ModelSymbols: []string{"mc_arg_0", "mc_arg_1"},
	}
	plan := poser.RandomizedPlan{
		Binders: []poser.RandomizedBinder{{Name: "k", LeanType: "Int"}, {Name: "n", LeanType: "Nat"}},
	}
	model := map[string]string{"mc_arg_0": "3", "mc_arg_1": "-2"}
	got, err := smtModelValuesForPlan(query, model, plan)
	if err != nil {
		t.Fatalf("smtModelValuesForPlan(query, model, plan) error = %v, want name-aligned values", err)
	}
	if len(got) != 2 || got[0] != "-2" || got[1] != "3" {
		t.Errorf("smtModelValuesForPlan() = %v, want values [-2 3] in Lean witness-plan order", got)
	}
}

func TestSieveEvidenceFromResultPreservesApplicabilityAndCounterexampleDisposition(t *testing.T) {
	base := ProposalFalsificationResult{
		ProposalID: "proposal-a", ParentLineageSHA256: strings.Repeat("a", 64),
		CandidateTypecheck: solver.LeanStatementCheckReceipt{TypecheckPassed: true, EvidenceID: "typecheck"},
		RandomizedCheck: solver.LeanRandomizedCheckReceipt{
			EvidenceID: "randomized", Status: "SAMPLES_PASS", TestsRun: 12, HasHypotheses: false,
		},
		SMTSearch: solver.SMTSearchReceipt{EvidenceID: "smt", Status: "UNSAT"},
		Status:    ProposalNoCounterexample,
	}
	noHypotheses := sieveEvidenceFromResult(base)
	if !noHypotheses.HypothesesSatisfiable || noHypotheses.HypothesesPresent || noHypotheses.HypothesisEvidenceID != "randomized" {
		t.Fatalf("no-hypothesis disposition = %#v, want explicit N/A bound to randomized receipt", noHypotheses)
	}

	base.RandomizedCheck.Status = "COUNTEREXAMPLE_OBSERVED"
	base.RandomizedCheck.CounterexampleCaseIndices = []int{3}
	unverified := sieveEvidenceFromResult(base)
	if !unverified.RandomizedCounterexampleSeen || unverified.RandomizedCounterexampleOK {
		t.Fatalf("unverified randomized counterexample = %#v, want observed but unverified", unverified)
	}

	base.CounterexampleRoutes = []string{"RANDOMIZED_INSTANCE"}
	base.CounterexampleVerification = LocalProofVerification{KernelPassed: true, AxiomsPassed: true}
	verified := sieveEvidenceFromResult(base)
	if !verified.RandomizedCounterexampleSeen || !verified.RandomizedCounterexampleOK {
		t.Fatalf("verified randomized counterexample = %#v, want both observed and independently verified", verified)
	}
}

func TestSMTModelValuesForPlanRejectsMissingOrMismatchedBindings(t *testing.T) {
	query := poser.SMTNegationQuery{
		Binders:      []poser.RandomizedBinder{{Name: "n", LeanType: "Nat"}, {Name: "k", LeanType: "Int"}},
		ModelSymbols: []string{"mc_arg_0", "mc_arg_1"},
	}
	plan := poser.RandomizedPlan{
		Binders: []poser.RandomizedBinder{{Name: "n", LeanType: "Nat"}, {Name: "k", LeanType: "Int"}},
	}
	tests := []struct {
		name  string
		query poser.SMTNegationQuery
		model map[string]string
		plan  poser.RandomizedPlan
	}{
		{name: "missing model value", query: query, model: map[string]string{"mc_arg_0": "0"}, plan: plan},
		{name: "extra model value", query: query, model: map[string]string{"mc_arg_0": "0", "mc_arg_1": "1", "extra": "2"}, plan: plan},
		{name: "type mismatch", query: query, model: map[string]string{"mc_arg_0": "0", "mc_arg_1": "1"}, plan: poser.RandomizedPlan{Binders: []poser.RandomizedBinder{{Name: "n", LeanType: "Int"}, {Name: "k", LeanType: "Int"}}}},
		{name: "missing query symbol", query: poser.SMTNegationQuery{Binders: query.Binders, ModelSymbols: []string{"mc_arg_0"}}, model: map[string]string{"mc_arg_0": "0"}, plan: plan},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			if got, err := smtModelValuesForPlan(test.query, test.model, test.plan); err == nil {
				t.Errorf("smtModelValuesForPlan(%q) = %v, nil, want a binding refusal", test.name, got)
			}
		})
	}
}

func TestFalsifyProposalTypechecksAndPersistsKernelCheckedNegation(t *testing.T) {
	requireLeanSandbox(t)
	repositoryRoot, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	python := filepath.Join(repositoryRoot, ".venv", "Scripts", "python.exe")
	if _, err := os.Stat(python); err != nil {
		python = filepath.Join(repositoryRoot, ".venv", "bin", "python")
		if _, err := os.Stat(python); err != nil {
			t.Skip("local Pantograph Python environment is not installed")
		}
	}
	leanProjectRoot := filepath.Join(repositoryRoot, "proofs", "r0b")
	tempRoot := t.TempDir()
	receiptRoot := filepath.Join(tempRoot, "receipts")
	verifier := solver.LeanVerifier{
		SnapshotManifestPath: os.Getenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST"),
		WorkspaceRoot:        filepath.Join(tempRoot, "parent-workspaces"),
		ReceiptRoot:          receiptRoot,
		ExpectedToolchain:    r0bToolchain,
		Imports:              []string{"Init"},
		Timeout:              90 * time.Second,
	}
	parentDeclaration := "theorem nat_le_refl : ∀ n : Nat, n ≤ n"
	parentProposition, err := (poser.VerifiedTheorem{LeanStatement: parentDeclaration}).FormalProposition()
	if err != nil {
		t.Fatalf("derive M2 parent proposition: %v", err)
	}
	parentProblem := domain.MathProblem{
		ID:            "m2-test-nat-le-refl",
		Title:         "Natural-number reflexivity",
		Statement:     "Every natural number is less than or equal to itself.",
		LeanStatement: parentProposition,
	}
	parentProof := "by\n  intro n\n  exact Nat.le_refl n"
	parentVerification, err := verifier.Verify(context.Background(), parentProblem, parentProof)
	if err != nil {
		t.Fatalf("verify M2 parent theorem: %v", err)
	}
	parentAxiomVerification, err := verifier.Verify(context.Background(), parentProblem, parentProof)
	if err != nil {
		t.Fatalf("audit M2 parent theorem axioms: %v", err)
	}
	if !parentVerification.KernelPassed || !parentVerification.AxiomsPassed || !parentAxiomVerification.KernelPassed || !parentAxiomVerification.AxiomsPassed {
		t.Fatalf("parent verification = %#v, want kernel and axiom pass", parentVerification)
	}
	statementDigest, err := domain.ProblemStatementDigest(parentProblem.ID, parentProblem.Statement, parentProblem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	proofDigest := sha256.Sum256([]byte(parentProof))
	recordedAt := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	parent := poser.VerifiedTheorem{
		ProblemID: "m2-test-nat-le-refl", SourceIDs: []string{"local-integration-fixture"},
		SourceSnapshotSHA256: strings.Repeat("a", 64), InformalStatement: parentProblem.Statement,
		LeanStatement: parentDeclaration, ProofSHA256: hex.EncodeToString(proofDigest[:]),
		V1: domain.VerificationRecord{
			Gate: domain.GateKernelBuild, Status: domain.VerificationPassed, Summary: "Test fixture Lean build passed.",
			EvidenceIDs: []string{parentVerification.EvidenceID}, ProblemID: parentProblem.ID,
			ProblemStatementSHA256: statementDigest, ProofSHA256: hex.EncodeToString(proofDigest[:]), RecordedAt: recordedAt,
		},
		V2: domain.VerificationRecord{
			Gate: domain.GateAxiomAudit, Status: domain.VerificationPassed, Summary: "Test fixture axiom audit passed.",
			EvidenceIDs: []string{parentAxiomVerification.EvidenceID}, ProblemID: parentProblem.ID,
			ProblemStatementSHA256: statementDigest, ProofSHA256: hex.EncodeToString(proofDigest[:]), RecordedAt: recordedAt,
		},
		V3: testV3Record(t, parentProblem, "m2-test-parent", []string{"n"}, recordedAt),
	}
	generated, err := poser.Generate(poser.GenerationRequest{
		Primary: parent, Operators: []poser.Operator{poser.OperatorSharpen},
		GeneratedAt: recordedAt,
	})
	if err != nil {
		t.Fatalf("generate M2 proposal: %v", err)
	}
	if len(generated.Proposals) != 1 || !strings.Contains(generated.Proposals[0].LeanStatement, "∀ n : Nat,") || !strings.Contains(generated.Proposals[0].LeanStatement, "n < n") {
		t.Fatalf("generated M2 proposals = %#v, want the sharpened false statement ∀ n : Nat, n < n", generated.Proposals)
	}
	proposal := generated.Proposals[0]
	negationProblem, err := proposal.NegationProblem()
	if err != nil {
		t.Fatalf("build proposal negation: %v", err)
	}
	runtime, err := NewLocalSearchRuntime(LocalSearchConfig{
		LocalTools: LocalToolsConfig{
			RepositoryRoot: repositoryRoot, PythonExecutable: python,
			LeanSnapshotManifestPath: os.Getenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST"),
			WorkspaceRoot:            filepath.Join(tempRoot, "search-workspaces"), ReceiptRoot: receiptRoot,
			BudgetLimits: budget.Limits{MaxRunMicros: 1, MaxSessionMicros: 1, MaxCandidateMicros: 1},
		},
		Problem: negationProblem, LeanProjectRoot: leanProjectRoot, LeanImports: []string{"Init"},
		MaxNodes: 64, MaxDepth: 4, VerificationTimeout: 90 * time.Second,
	})
	if err != nil {
		t.Fatalf("configure local M2 falsification: %v", err)
	}
	result, err := runtime.FalsifyProposal(context.Background(), "m2-v4-integration-run", proposal)
	if err != nil {
		t.Fatalf("FalsifyProposal() error = %v; result=%#v", err, result)
	}
	if result.Status != ProposalCounterexampleProved || !result.CounterexampleFound || !result.CandidateTypecheck.TypecheckPassed || !result.NegationSearch.Solved || result.NegationSearch.Proof == "" {
		t.Fatalf("FalsifyProposal() = %#v, want typed candidate and kernel-checked negation", result)
	}
	if result.RandomizedCheck.Status != "COUNTEREXAMPLE_OBSERVED" || result.RandomizedCheck.TestsRun != 64 || !result.HypothesesSatisfiable || !result.HypothesisVerification.KernelPassed || !result.HypothesisVerification.AxiomsPassed {
		t.Fatalf("FalsifyProposal() V4 instance evidence = random %#v, hypotheses-satisfiable %t, witness verification %#v; want 64 checked samples and a kernel-checked hypothesis witness", result.RandomizedCheck, result.HypothesesSatisfiable, result.HypothesisVerification)
	}
	if !result.CounterexampleVerification.KernelPassed || !result.CounterexampleVerification.AxiomsPassed || !result.SMTWitnessVerification.KernelPassed || !result.SMTWitnessVerification.AxiomsPassed || len(result.CounterexampleRoutes) != 3 || result.CounterexampleRoutes[0] != "RANDOMIZED_INSTANCE" || result.CounterexampleRoutes[1] != "SMT_MODEL" || result.CounterexampleRoutes[2] != "NEGATION_SEARCH" {
		t.Fatalf("FalsifyProposal() counterexample evidence = random %#v, SMT %#v, routes %#v; want random, Lean-checked SMT model, and search proofs", result.CounterexampleVerification, result.SMTWitnessVerification, result.CounterexampleRoutes)
	}
	if result.SMTSearch.Status != "SAT" || result.SMTSearch.SolverVersion == "" || result.SMTSearch.CounterexampleValues["mc_arg_0"] == "" || !result.SieveEvidence.SMTSearchPerformed {
		t.Fatalf("FalsifyProposal() SMT evidence = %#v, sieve %#v; want a real Z3 model accepted by Lean and V2", result.SMTSearch, result.SieveEvidence)
	}
	if len(result.SMTSearch.ModelBindings) != 1 || result.SMTSearch.ModelBindings[0] != (solver.SMTModelBinding{LeanName: "n", Symbol: "mc_arg_0", LeanType: "Nat"}) {
		t.Fatalf("FalsifyProposal() SMT model bindings = %#v, want the solver symbol mapped to Lean binder n", result.SMTSearch.ModelBindings)
	}
	if result.EasyBaseline.Status != "COMPLETED" || result.EasyBaseline.Solved || result.EasyBaseline.Profile.PolicyID != easyBaselinePolicyID || result.EasyBaseline.Profile.MaxNodes != easyBaselineMaxNodes || result.EasyBaseline.Profile.MaxDepth != easyBaselineMaxDepth || result.EasyBaseline.Profile.SHA256 == "" || !result.SieveEvidence.EasyBaselineCompleted || len(result.SieveEvidence.EasyBaselineEvidenceIDs) == 0 {
		t.Fatalf("FalsifyProposal() easy baseline = %#v, want completed frozen profile that does not prove the false candidate", result.EasyBaseline)
	}
	if result.SieveEligibilityStatus != "REJECTED" || !result.SieveEvidence.CounterexampleFound || !result.SieveEvidence.NegationSearchPerformed || len(result.SieveEvidence.NegationSearchEvidenceIDs) == 0 || result.ParentLineageTrusted || result.SieveEvidence.TrustedParentsVerified || len(result.SieveEvidence.EvidenceIDs) < 3 {
		t.Fatalf("FalsifyProposal() sieve result = status %q, evidence %#v, summary %q; want explicit counterexample rejection with linked evidence", result.SieveEligibilityStatus, result.SieveEvidence, result.SieveEligibilitySummary)
	}
	requiredEvidenceIDs := []string{
		result.SieveEvidence.CandidateTypecheckEvidenceID,
		result.SieveEvidence.HypothesisEvidenceID,
		result.SieveEvidence.RandomizedEvidenceID,
		result.SieveEvidence.SMTEvidenceID,
	}
	requiredEvidenceIDs = append(requiredEvidenceIDs, result.SieveEvidence.NegationSearchEvidenceIDs...)
	requiredEvidenceIDs = append(requiredEvidenceIDs, result.SieveEvidence.EasyBaselineEvidenceIDs...)
	for _, evidenceID := range requiredEvidenceIDs {
		if evidenceID == "" || !containsEvidenceID(result.SieveEvidence.EvidenceIDs, evidenceID) {
			t.Fatalf("required sieve evidence ID %q is empty or missing from the linked evidence set %#v", evidenceID, result.SieveEvidence.EvidenceIDs)
		}
	}
	if len(result.NegationSearch.Attempts) != 1 || result.NegationSearch.Attempts[0].Outcome != domain.SolverOutcomePass || result.NegationSearch.Attempts[0].ProviderID != "" || result.NegationSearch.Attempts[0].CostMicros != 0 {
		t.Fatalf("negation-search attempt = %#v, want one provider-free verified attempt", result.NegationSearch.Attempts)
	}
	if result.RecordedAtUTC.IsZero() {
		t.Fatal("FalsifyProposal() receipt timestamp is zero")
	}
	data, err := os.ReadFile(filepath.Join(receiptRoot, result.EvidenceID+".json"))
	if err != nil {
		t.Fatalf("read M2 falsification receipt %q: %v", result.EvidenceID, err)
	}
	var stored ProposalFalsificationResult
	if err := json.Unmarshal(data, &stored); err != nil {
		t.Fatalf("decode M2 falsification receipt: %v", err)
	}
	if stored.EvidenceID != result.EvidenceID || stored.ProposalID != proposal.ID || stored.Status != ProposalCounterexampleProved {
		t.Fatalf("stored M2 falsification receipt = %#v, want exact proposal and counterexample result", stored)
	}
	if _, err := os.Stat(filepath.Join(receiptRoot, result.CandidateTypecheck.EvidenceID+".statement.json")); err != nil {
		t.Fatalf("candidate typecheck evidence %q was not persisted: %v", result.CandidateTypecheck.EvidenceID, err)
	}
}

func TestFalsifyProposalNegativeIntModelFromZ3PassesLeanAndGoVerifier(t *testing.T) {
	requireLeanSandbox(t)
	repositoryRoot, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	python := filepath.Join(repositoryRoot, ".venv", "Scripts", "python.exe")
	if _, err := os.Stat(python); err != nil {
		python = filepath.Join(repositoryRoot, ".venv", "bin", "python")
		if _, err := os.Stat(python); err != nil {
			t.Skip("local Python environment is not installed")
		}
	}
	if err := exec.Command(python, "-c", "import z3").Run(); err != nil {
		t.Skip("optional local z3-solver dependency is not installed")
	}
	projectRoot := filepath.Join(repositoryRoot, "proofs", "r0b")
	tempRoot := t.TempDir()
	receiptRoot := filepath.Join(tempRoot, "receipts")
	verifier := solver.LeanVerifier{
		SnapshotManifestPath: os.Getenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST"),
		WorkspaceRoot:        filepath.Join(tempRoot, "parent-workspaces"), ReceiptRoot: receiptRoot,
		ExpectedToolchain: r0bToolchain, Imports: []string{"Init"}, Timeout: 90 * time.Second,
	}
	parentDeclaration := "theorem int_sign_split (n : Int) : n < 0 ∨ n ≥ 0"
	parentProposition, err := (poser.VerifiedTheorem{LeanStatement: parentDeclaration}).FormalProposition()
	if err != nil {
		t.Fatalf("derive parent proposition: %v", err)
	}
	parentProblem := domain.MathProblem{
		ID: "m2-test-int-sign-split", Title: "Integer sign split",
		Statement: "Every integer is negative or nonnegative.", LeanStatement: parentProposition,
	}
	parentProof := "by\n  intro n\n  exact Int.lt_or_le n 0"
	parentV1, err := verifier.Verify(context.Background(), parentProblem, parentProof)
	if err != nil || !parentV1.KernelPassed || !parentV1.AxiomsPassed {
		t.Fatalf("verify parent theorem = %#v, %v", parentV1, err)
	}
	parentV2, err := verifier.Verify(context.Background(), parentProblem, parentProof)
	if err != nil || !parentV2.KernelPassed || !parentV2.AxiomsPassed {
		t.Fatalf("audit parent theorem = %#v, %v", parentV2, err)
	}
	statementDigest, err := domain.ProblemStatementDigest(parentProblem.ID, parentProblem.Statement, parentProblem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	proofDigest := sha256.Sum256([]byte(parentProof))
	recordedAt := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	parent := poser.VerifiedTheorem{
		ProblemID: parentProblem.ID, SourceIDs: []string{"local-int-sign-fixture"},
		SourceSnapshotSHA256: strings.Repeat("a", 64), InformalStatement: parentProblem.Statement,
		LeanStatement: parentDeclaration, ProofSHA256: hex.EncodeToString(proofDigest[:]),
		V1: domain.VerificationRecord{
			Gate: domain.GateKernelBuild, Status: domain.VerificationPassed,
			EvidenceIDs: []string{parentV1.EvidenceID}, ProblemID: parentProblem.ID,
			ProblemStatementSHA256: statementDigest, ProofSHA256: hex.EncodeToString(proofDigest[:]), RecordedAt: recordedAt,
		},
		V2: domain.VerificationRecord{
			Gate: domain.GateAxiomAudit, Status: domain.VerificationPassed,
			EvidenceIDs: []string{parentV2.EvidenceID}, ProblemID: parentProblem.ID,
			ProblemStatementSHA256: statementDigest, ProofSHA256: hex.EncodeToString(proofDigest[:]), RecordedAt: recordedAt,
		},
		V3: testV3Record(t, parentProblem, "m2-test-int-sign", []string{}, recordedAt),
	}
	generation, err := poser.Generate(poser.GenerationRequest{Primary: parent, Operators: []poser.Operator{poser.OperatorSharpen}, GeneratedAt: recordedAt})
	if err != nil {
		t.Fatalf("generate sharpened propositions: %v", err)
	}
	var proposal poser.Proposal
	for _, candidate := range generation.Proposals {
		if strings.Contains(candidate.LeanStatement, "n ≥ 0") {
			proposal = candidate
			break
		}
	}
	if proposal.ID == "" {
		t.Fatalf("generated proposals = %#v; want sharpened nonnegative branch", generation.Proposals)
	}
	negationProblem, err := proposal.NegationProblem()
	if err != nil {
		t.Fatal(err)
	}
	runtime, err := NewLocalSearchRuntime(LocalSearchConfig{
		LocalTools: LocalToolsConfig{
			RepositoryRoot: repositoryRoot, PythonExecutable: python,
			LeanSnapshotManifestPath: os.Getenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST"),
			WorkspaceRoot:            filepath.Join(tempRoot, "search-workspaces"), ReceiptRoot: receiptRoot,
			BudgetLimits: budget.Limits{MaxRunMicros: 1, MaxSessionMicros: 1, MaxCandidateMicros: 1},
		},
		Problem: negationProblem, LeanProjectRoot: projectRoot, LeanImports: []string{"Init"},
		MaxNodes: 64, MaxDepth: 4, VerificationTimeout: 90 * time.Second,
	})
	if err != nil {
		t.Fatalf("configure local falsification runtime: %v", err)
	}
	result, err := runtime.FalsifyProposal(context.Background(), "m2-int-negative-z3-e2e", proposal)
	if err != nil {
		t.Fatalf("FalsifyProposal() = %#v, %v", result, err)
	}
	modelValue, parseErr := strconv.ParseInt(result.SMTSearch.CounterexampleValues["mc_arg_0"], 10, 64)
	if result.SMTSearch.Status != "SAT" || parseErr != nil || modelValue >= 0 {
		t.Fatalf("Z3 search = %#v; want a negative Int counterexample model", result.SMTSearch)
	}
	if !result.SMTWitnessVerification.KernelPassed || !result.SMTWitnessVerification.AxiomsPassed || !containsEvidenceID(result.CounterexampleRoutes, "SMT_MODEL") {
		t.Fatalf("SMT witness verification = %#v, routes=%#v; want local Lean/V2 accepted model", result.SMTWitnessVerification, result.CounterexampleRoutes)
	}
}

func containsEvidenceID(evidenceIDs []string, expected string) bool {
	for _, evidenceID := range evidenceIDs {
		if evidenceID == expected {
			return true
		}
	}
	return false
}

func TestNestedBoolQuantifierSMTModelGetsLeanChecked(t *testing.T) {
	requireLeanSandbox(t)
	repositoryRoot, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	python := filepath.Join(repositoryRoot, ".venv", "Scripts", "python.exe")
	if _, err := os.Stat(python); err != nil {
		python = filepath.Join(repositoryRoot, ".venv", "bin", "python")
		if _, err := os.Stat(python); err != nil {
			t.Skip("local Python environment is not installed")
		}
	}
	if err := exec.Command(python, "-c", "import z3").Run(); err != nil {
		t.Skip("optional local z3-solver dependency is not installed")
	}
	tempRoot := t.TempDir()
	receiptRoot := filepath.Join(tempRoot, "receipts")
	verifier := solver.LeanVerifier{
		SnapshotManifestPath: os.Getenv("MATHCASE_LEAN_SNAPSHOT_MANIFEST"),
		WorkspaceRoot:        filepath.Join(tempRoot, "workspaces"),
		ReceiptRoot:          receiptRoot,
		ExpectedToolchain:    r0bToolchain,
		Imports:              []string{"Init"},
		Timeout:              90 * time.Second,
	}
	declaration := "theorem bool_masked_parent (n : Nat) : n ≤ n ∨ ((∀ (flag : Bool), flag = flag) → n = 0)"
	parentSyntax := poser.VerifiedTheorem{LeanStatement: declaration}
	formalProposition, err := parentSyntax.FormalProposition()
	if err != nil {
		t.Fatalf("derive parent proposition: %v", err)
	}
	parentProblem := domain.MathProblem{
		ID: "m2-nested-bool-parent", Title: "A true disjunction with a false branch",
		Statement: "For each natural number, reflexivity holds.", LeanStatement: formalProposition,
	}
	parentProof := "by\n  intro n\n  left\n  exact Nat.le_refl n"
	v1, err := verifier.Verify(context.Background(), parentProblem, parentProof)
	if err != nil || !v1.KernelPassed || !v1.AxiomsPassed {
		t.Fatalf("verify parent proof = %#v, %v; want kernel and axiom pass", v1, err)
	}
	v2, err := verifier.Verify(context.Background(), parentProblem, parentProof)
	if err != nil || !v2.KernelPassed || !v2.AxiomsPassed {
		t.Fatalf("verify parent axiom record = %#v, %v; want kernel and axiom pass", v2, err)
	}
	statementDigest, err := domain.ProblemStatementDigest(parentProblem.ID, parentProblem.Statement, parentProblem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	proofDigest := sha256.Sum256([]byte(parentProof))
	recordedAt := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	parent := poser.VerifiedTheorem{
		ProblemID: parentProblem.ID, SourceIDs: []string{"nested-bool-fixture"},
		SourceSnapshotSHA256: strings.Repeat("a", 64), InformalStatement: parentProblem.Statement,
		LeanStatement: declaration, ProofSHA256: hex.EncodeToString(proofDigest[:]),
		V1: domain.VerificationRecord{
			Gate: domain.GateKernelBuild, Status: domain.VerificationPassed,
			EvidenceIDs: []string{v1.EvidenceID}, ProblemID: parentProblem.ID,
			ProblemStatementSHA256: statementDigest, ProofSHA256: hex.EncodeToString(proofDigest[:]), RecordedAt: recordedAt,
		},
		V2: domain.VerificationRecord{
			Gate: domain.GateAxiomAudit, Status: domain.VerificationPassed,
			EvidenceIDs: []string{v2.EvidenceID}, ProblemID: parentProblem.ID,
			ProblemStatementSHA256: statementDigest, ProofSHA256: hex.EncodeToString(proofDigest[:]), RecordedAt: recordedAt,
		},
		V3: testV3Record(t, parentProblem, "m2-nested-bool", []string{"n"}, recordedAt),
	}
	generation, err := poser.Generate(poser.GenerationRequest{
		Primary: parent, Operators: []poser.Operator{poser.OperatorSharpen}, GeneratedAt: recordedAt,
	})
	if err != nil {
		t.Fatalf("generate nested Bool proposal: %v", err)
	}
	var proposal poser.Proposal
	for _, candidate := range generation.Proposals {
		if strings.Contains(candidate.MutationDiff, "select the right branch") && strings.Contains(candidate.LeanStatement, "∀ (flag : Bool)") {
			proposal = candidate
			break
		}
	}
	if proposal.ID == "" {
		t.Fatalf("Generate() proposals = %#v; want right-branch candidate with nested Bool quantifier", generation.Proposals)
	}
	query, err := proposal.BuildSMTNegationQuery()
	if err != nil {
		t.Fatalf("translate nested Bool candidate: %v", err)
	}
	binders := make([]solver.SMTBinder, len(query.Binders))
	for index, binder := range query.Binders {
		binders[index] = solver.SMTBinder{Name: query.ModelSymbols[index], LeanType: binder.LeanType}
	}
	search := solver.Z3SMTSearchSolver{
		PythonExecutable: python, BridgePath: filepath.Join(repositoryRoot, "scripts", "z3_smt_search.py"),
		ProjectRoot: repositoryRoot, Timeout: 5 * time.Second,
	}
	smtReceipt, err := search.Search(context.Background(), query.SMTLIB, binders)
	if err != nil || smtReceipt.Status != "SAT" || smtReceipt.SolverVersion == "" {
		t.Fatalf("Z3 nested Bool search = %#v, %v; want SAT counterexample model", smtReceipt, err)
	}
	plan, err := proposal.BuildRandomizedPlan(1)
	if err != nil {
		t.Fatalf("build counterexample proof plan: %v", err)
	}
	modelValues := make([]string, len(plan.Binders))
	for index, binder := range plan.Binders {
		value, exists := smtReceipt.CounterexampleValues[query.ModelSymbols[index]]
		if !exists || query.Binders[index].LeanType != binder.LeanType {
			t.Fatalf("Z3 model %#v does not align with proposal binders %#v", smtReceipt.CounterexampleValues, plan.Binders)
		}
		modelValues[index] = value
	}
	proof, err := plan.CounterexampleProofValues(modelValues)
	if err != nil {
		t.Fatalf("construct Lean counterexample proof: %v", err)
	}
	negation, err := proposal.NegationProblem()
	if err != nil {
		t.Fatalf("build candidate negation: %v", err)
	}
	checked, err := verifier.Verify(context.Background(), negation, proof)
	if err != nil || !checked.KernelPassed || !checked.AxiomsPassed {
		t.Fatalf("verify nested Bool counterexample = %#v, %v; want kernel and axiom pass", checked, err)
	}
}
