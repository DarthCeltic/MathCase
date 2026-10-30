package verification

import (
	"crypto/sha256"
	"fmt"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
)

func evidenceTime() time.Time { return time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC) }

func v6SourceRights(now time.Time) catalog.SourceVersion {
	return catalog.SourceVersion{
		ID: "source-a", URL: "https://example.test/source-a", ItemLocator: "article/source-a",
		Lane: catalog.LaneMathlibProofPairs, Revision: "commit-1", RetrievedAt: now,
		ContentSHA256: strings.Repeat("b", 64), AuthorOrHolder: "Test publisher", License: "Apache-2.0",
		LicenseTermsURL: "https://www.apache.org/licenses/LICENSE-2.0", TermsNote: "Reviewed for local storage and training.",
		Attribution: "Test publisher, source-a", AllowedUses: []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseTraining},
		RightsReviewerID: "rights-reviewer", RightsReviewedAt: now, RightsEvidenceID: "rights-source-a", Rights: catalog.RightsCleared,
	}
}

func problemStatementSHA256(t *testing.T) string {
	t.Helper()
	digest, err := domain.ProblemStatementDigest("problem-a", "For all n, n plus zero equals n.", "forall n : Nat, n + 0 = n")
	if err != nil {
		t.Fatal(err)
	}
	return digest
}

func validV3StatementEvidence(problemID, informal, lean string, at time.Time) V3StatementEvidence {
	const snapshotSHA256 = "cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc"
	const sourceSHA256 = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	const leanFileSHA256 = "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"
	return V3StatementEvidence{
		ProblemID: problemID, CatalogStatement: informal, CatalogLeanStatement: lean,
		CatalogSnapshotSHA256: snapshotSHA256,
		Review: domain.V3StatementFidelity{
			Source: domain.V3SourceStatementPin{
				URL: "https://example.test/catalog", ItemLocator: "problems/problem-a",
				Revision: "catalog-commit-a", RawItemSHA256: sourceSHA256,
				CatalogSnapshotSHA256: snapshotSHA256, Statement: informal, EvidenceID: "v3-source-pin",
			},
			Lean: domain.V3LeanStatementPin{
				AuthorID: "formalizer-a", Revision: "lean-commit-a", FileLocator: "Main.lean",
				DeclarationName: "problem_a", SourceFileSHA256: leanFileSHA256,
				NormalizedStatement:       lean,
				NormalizedStatementSHA256: digestText(lean), EvidenceID: "v3-lean-pin",
			},
			BackTranslation: domain.V3BackTranslation{
				Text:         "For every natural number n, adding zero leaves n unchanged.",
				ProducedByID: "backtranslator-a", Role: domain.V3BackTranslationWitnessRole,
				RecordedAt: at, EvidenceID: "v3-backtranslation",
			},
			SemanticComparison: domain.V3SemanticComparison{
				Status: domain.V3SemanticPass, Differences: []domain.V3SemanticDifference{},
				Rationale:             "No material semantic difference from the pinned catalog wording.",
				UnresolvedAssumptions: []string{}, ReviewerID: "reviewer-a", HumanSpotReview: true,
				ReviewerAccepted: true, RecordedAt: at, EvidenceID: "v3-semantic-diff",
			},
			NaturalParameterApplicability: domain.V3NaturalParametersPresent,
			MeaningfulNaturalParameters:   []string{"n"},
			EmptyObjectApplicability:      domain.V3EmptyObjectNotApplicable,
			BoundaryProbes: []domain.V3BoundaryProbe{
				{Kind: domain.V3BoundaryNaturalValue, ParameterID: "n", Value: "0", SourceInstance: "0 + 0 = 0", LeanInstance: "0 + 0 = 0", Outcome: domain.V3BoundaryConsistent, Rationale: "Both exact instances reduce to true.", EvidenceID: "v3-probe-n0"},
				{Kind: domain.V3BoundaryNaturalValue, ParameterID: "n", Value: "1", SourceInstance: "1 + 0 = 1", LeanInstance: "1 + 0 = 1", Outcome: domain.V3BoundaryConsistent, Rationale: "Both exact instances reduce to true.", EvidenceID: "v3-probe-n1"},
				{Kind: domain.V3BoundaryEmptyObject, ParameterID: "objects", Value: "empty", Outcome: domain.V3BoundaryNotApplicable, Rationale: "The statement has no set or object parameter with an empty case.", EvidenceID: "v3-probe-empty"},
			},
			IndependentRoute: "independent-source-to-Lean-backtranslation-v1",
		},
	}
}

func digestText(value string) string {
	return fmt.Sprintf("%x", sha256.Sum256([]byte(value)))
}

func TestV1RequiresCleanPinnedBuildEvidence(t *testing.T) {
	evidence := V1BuildEvidence{ProblemID: "problem-a", ProblemStatementSHA256: problemStatementSHA256(t), ProofSHA256: strings.Repeat("a", 64), Toolchain: "leanprover/lean4:v4.33.1", ExpectedToolchain: "leanprover/lean4:v4.33.1", BuildSucceeded: true, NoSorry: true, EvidenceID: "evidence-v1"}
	if got := AssessV1(evidence, evidenceTime()).Status; got != domain.VerificationBlocked {
		t.Fatalf("dirty-checkout status = %q, want BLOCKED", got)
	}
	evidence.CleanCheckout = true
	passed := AssessV1(evidence, evidenceTime())
	if passed.Status != domain.VerificationPassed || passed.LeanToolchain != evidence.Toolchain || passed.ExpectedLeanToolchain != evidence.ExpectedToolchain {
		t.Fatalf("clean-checkout record = %#v, want PASSED with both toolchain pins retained", passed)
	}
	evidence.ExpectedToolchain = "leanprover/lean4:v4.34.0"
	mismatched := AssessV1(evidence, evidenceTime())
	if mismatched.Status != domain.VerificationFailed || mismatched.LeanToolchain != evidence.Toolchain || mismatched.ExpectedLeanToolchain != evidence.ExpectedToolchain {
		t.Fatalf("toolchain mismatch record = %#v, want FAILED with observed and expected toolchains retained", mismatched)
	}
	evidence.ExpectedToolchain = ""
	if got := AssessV1(evidence, evidenceTime()).Status; got != domain.VerificationBlocked {
		t.Fatalf("missing pinned toolchain status = %q, want BLOCKED", got)
	}
	evidence.ExpectedToolchain = evidence.Toolchain
	evidence.NoSorry = false
	if got := AssessV1(evidence, evidenceTime()).Status; got != domain.VerificationFailed {
		t.Fatalf("proof-hole status = %q, want FAILED", got)
	}
}

func TestV2AllowsOnlyTheRecordedStandardAxiomSet(t *testing.T) {
	evidence := V2AxiomEvidence{ProblemID: "problem-a", ProblemStatementSHA256: problemStatementSHA256(t), ProofSHA256: strings.Repeat("a", 64), Theorem: "theorem-a", PrintOutput: "'theorem-a' depends on axioms: [propext]", ObservedAxioms: []string{"propext"}, AllowedAxioms: []string{"propext"}, EvidenceID: "evidence-v2"}
	if got := AssessV2(evidence, evidenceTime()).Status; got != domain.VerificationPassed {
		t.Fatalf("approved axiom status = %q, want PASSED", got)
	}
	evidence.ObservedAxioms = []string{"custom_axiom"}
	evidence.PrintOutput = "'theorem-a' depends on axioms: [custom_axiom]"
	if got := AssessV2(evidence, evidenceTime()).Status; got != domain.VerificationFailed {
		t.Fatalf("unapproved axiom status = %q, want FAILED", got)
	}
	evidence.PrintOutput = "'theorem-a' does not depend on any axioms"
	if got := AssessV2(evidence, evidenceTime()).Status; got != domain.VerificationBlocked {
		t.Fatalf("raw/parsed axiom mismatch status = %q, want BLOCKED", got)
	}
	evidence.ObservedAxioms = nil
	if got := AssessV2(evidence, evidenceTime()).Status; got != domain.VerificationPassed {
		t.Fatalf("no-axiom theorem status = %q, want PASSED", got)
	}
}

func TestParseAxiomOutputRequiresOneWellFormedTheoremLine(t *testing.T) {
	axioms, ok := ParseAxiomOutput("candidate", "warning: harmless\n'candidate' depends on axioms: [Classical.choice, propext]\n")
	if !ok || len(axioms) != 2 || axioms[0] != "Classical.choice" || axioms[1] != "propext" {
		t.Fatalf("parsed axioms = %v, ok=%v", axioms, ok)
	}
	if _, ok := ParseAxiomOutput("candidate", "'candidate' does not depend on any axioms\n'candidate' does not depend on any axioms\n"); ok {
		t.Fatal("duplicate theorem output was accepted")
	}
}

func TestV3RequiresPinnedDualCheckAndBoundaryProbes(t *testing.T) {
	informal := "For all n, n plus zero equals n."
	lean := "forall n : Nat, n + 0 = n"
	evidence := validV3StatementEvidence("problem-a", informal, lean, evidenceTime())
	record := AssessV3(evidence, evidenceTime())
	if record.Status != domain.VerificationBlocked || !strings.Contains(record.Summary, "builder-authored claims") || record.ProblemStatementSHA256 != problemStatementSHA256(t) || record.ReviewerID != "reviewer-a" || record.StatementFidelity == nil || len(record.StatementFidelity.EvidenceIDs()) != 7 {
		t.Fatalf("complete caller-authored V3 claims = %#v, want BLOCKED pending authenticated receipts", record)
	}
	allNotApplicable := validV3StatementEvidence("problem-a", informal, lean, evidenceTime())
	allNotApplicable.Review.NaturalParameterApplicability = domain.V3NaturalParametersNone
	allNotApplicable.Review.MeaningfulNaturalParameters = []string{}
	allNotApplicable.Review.EmptyObjectApplicability = domain.V3EmptyObjectNotApplicable
	allNotApplicable.Review.BoundaryProbes = []domain.V3BoundaryProbe{{
		Kind: domain.V3BoundaryEmptyObject, ParameterID: "objects", Value: "empty",
		Outcome: domain.V3BoundaryNotApplicable, Rationale: "The claim has no empty-object case.", EvidenceID: "v3-probe-empty-only",
	}}
	if got := AssessV3(allNotApplicable, evidenceTime()); got.Status != domain.VerificationBlocked || !strings.Contains(got.Summary, "builder-authored claims") {
		t.Fatalf("all-N/A caller-authored V3 assessment = %#v, want BLOCKED on missing authenticated review", got)
	}
	evidence.Review.SemanticComparison.HumanSpotReview = false
	if got := AssessV3(evidence, evidenceTime()).Status; got != domain.VerificationBlocked {
		t.Fatalf("missing human review status = %q, want BLOCKED", got)
	}
	evidence = validV3StatementEvidence("problem-a", informal, lean, evidenceTime())
	evidence.Review.BoundaryProbes[1].Outcome = domain.V3BoundaryMismatch
	if got := AssessV3(evidence, evidenceTime()).Status; got != domain.VerificationFailed {
		t.Fatalf("n=1 mismatch status = %q, want FAILED", got)
	}
	evidence = validV3StatementEvidence("problem-a", informal, lean, evidenceTime())
	evidence.Review.BoundaryProbes = evidence.Review.BoundaryProbes[:1]
	if got := AssessV3(evidence, evidenceTime()).Status; got != domain.VerificationBlocked {
		t.Fatalf("missing n=1 and empty-object probes status = %q, want BLOCKED", got)
	}
	evidence = validV3StatementEvidence("problem-a", informal, lean, evidenceTime())
	evidence.Review.BackTranslation.Role = "GROUND_TRUTH"
	if got := AssessV3(evidence, evidenceTime()).Status; got != domain.VerificationBlocked {
		t.Fatalf("back-translation ground-truth status = %q, want BLOCKED", got)
	}
	evidence = validV3StatementEvidence("problem-a", informal, lean, evidenceTime())
	evidence.CatalogStatement = "A changed catalog statement."
	if got := AssessV3(evidence, evidenceTime()).Status; got != domain.VerificationBlocked {
		t.Fatalf("catalog mismatch status = %q, want BLOCKED", got)
	}
	evidence = validV3StatementEvidence("problem-a", informal, lean, evidenceTime())
	evidence.Review.SemanticComparison.Status = domain.V3SemanticMismatch
	if got := AssessV3(evidence, evidenceTime()).Status; got != domain.VerificationFailed {
		t.Fatalf("semantic mismatch status = %q, want FAILED", got)
	}
	evidence = validV3StatementEvidence("problem-a", informal, lean, evidenceTime())
	evidence.Review.SemanticComparison.Differences = []domain.V3SemanticDifference{{
		Description: "A bound was omitted.", Material: true, Rationale: "The source is universally quantified but the Lean statement is not.",
	}}
	if got := AssessV3(evidence, evidenceTime()).Status; got != domain.VerificationFailed {
		t.Fatalf("material semantic diff status = %q, want FAILED", got)
	}
	evidence = validV3StatementEvidence("problem-a", informal, lean, evidenceTime())
	evidence.Review.SemanticComparison.UnresolvedAssumptions = []string{"whether the source uses classical equality"}
	if got := AssessV3(evidence, evidenceTime()).Status; got != domain.VerificationBlocked {
		t.Fatalf("unresolved assumption status = %q, want BLOCKED", got)
	}
}

func TestV4NeedsAllSearchesAndVetoesCounterexamples(t *testing.T) {
	evidence := V4FalsificationEvidence{
		ProblemID: "problem-a", ProblemStatementSHA256: problemStatementSHA256(t),
		Audit: domain.V4FalsificationAudit{
			HypothesesPresent: false, HypothesesSatisfiable: true, HypothesisEvidenceID: "tests",
			RandomizedCheckStatus: domain.V4RandomizedSamplesPass, RandomizedTestsRun: 100, RandomizedEvidenceID: "tests",
			SMTSearchStatus: domain.V4SMTUnsat, SMTEvidenceID: "smt",
			NegationSearchStatus: domain.V4NegationNoCounterexample, NegationSearchEvidenceIDs: []string{"negation"},
		},
	}
	passed := AssessV4(evidence, evidenceTime())
	if passed.Status != domain.VerificationBlocked || passed.Falsification == nil || !strings.Contains(passed.Summary, "execution receipts") {
		t.Fatalf("complete caller-authored V4 record = %#v, want BLOCKED pending reopened execution receipts", passed)
	}
	evidence.Audit.RandomizedCheckStatus = domain.V4RandomizedCounterexampleObserved
	evidence.Audit.RandomizedCounterexampleObserved = true
	if got := AssessV4(evidence, evidenceTime()).Status; got != domain.VerificationBlocked {
		t.Fatalf("unverified randomized counterexample status = %q, want BLOCKED", got)
	}
	evidence.Audit.RandomizedCounterexampleVerified = true
	if got := AssessV4(evidence, evidenceTime()).Status; got != domain.VerificationFailed {
		t.Fatalf("verified randomized counterexample status = %q, want FAILED", got)
	}
	evidence.Audit.RandomizedCheckStatus = domain.V4RandomizedSamplesPass
	evidence.Audit.RandomizedCounterexampleObserved = false
	evidence.Audit.RandomizedCounterexampleVerified = false
	evidence.Audit.SMTSearchStatus = domain.V4SMTSat
	if got := AssessV4(evidence, evidenceTime()).Status; got != domain.VerificationBlocked {
		t.Fatalf("unverified SMT model status = %q, want BLOCKED", got)
	}
	evidence.Audit.SMTWitnessKernelPassed = true
	evidence.Audit.SMTWitnessAxiomsPassed = true
	if got := AssessV4(evidence, evidenceTime()).Status; got != domain.VerificationFailed {
		t.Fatalf("verified SMT counterexample status = %q, want FAILED", got)
	}
}

func TestV5RequiresEachLemmaAblationAndVetoesInessentialLemmas(t *testing.T) {
	evidence := V5EssentialityEvidence{
		ProblemID: "problem-a", ProblemStatementSHA256: problemStatementSHA256(t), ProofSHA256: strings.Repeat("a", 64),
		Ablations: []LemmaAblation{{LemmaID: "lemma-a", Attempted: true, SearchCompleted: true, AblatedProofClosed: false, AblatedSourceSHA256: strings.Repeat("b", 64), EvidenceID: "ablation-a"}},
	}
	passed := AssessV5(evidence, evidenceTime())
	if passed.Status != domain.VerificationBlocked || passed.Essentiality == nil || len(passed.Essentiality.Ablations) != 1 || !strings.Contains(passed.Summary, "execution receipts") {
		t.Fatalf("complete caller-authored V5 record = %#v, want BLOCKED pending reopened ablation receipts", passed)
	}
	evidence.Ablations[0].AblatedProofClosed = true
	if got := AssessV5(evidence, evidenceTime()).Status; got != domain.VerificationFailed {
		t.Fatalf("inessential lemma status = %q, want FAILED", got)
	}
	evidence.Ablations[0].AblatedProofClosed = false
	evidence.Ablations[0].SearchCompleted = false
	if got := AssessV5(evidence, evidenceTime()).Status; got != domain.VerificationBlocked {
		t.Fatalf("incomplete ablation search status = %q, want BLOCKED", got)
	}
}

func TestAssessV4V5DoNotPromoteCallerAuthoredPassShapedEvidence(t *testing.T) {
	problemDigest := problemStatementSHA256(t)
	when := evidenceTime()

	v4 := AssessV4(V4FalsificationEvidence{
		ProblemID: "problem-a", ProblemStatementSHA256: problemDigest,
		Audit: domain.V4FalsificationAudit{
			HypothesesSatisfiable: true, HypothesisEvidenceID: "synthetic-random",
			RandomizedCheckStatus: domain.V4RandomizedSamplesPass, RandomizedTestsRun: 12, RandomizedEvidenceID: "synthetic-random",
			SMTSearchStatus: domain.V4SMTUnsat, SMTEvidenceID: "synthetic-smt",
			NegationSearchStatus: domain.V4NegationNoCounterexample, NegationSearchEvidenceIDs: []string{"synthetic-negation"},
		},
	}, when)
	if v4.Status != domain.VerificationBlocked || !strings.Contains(v4.Summary, "execution receipts") {
		t.Fatalf("AssessV4(clean caller-authored fields) = %#v, want BLOCKED pending reopened execution receipts", v4)
	}

	v5 := AssessV5(V5EssentialityEvidence{
		ProblemID: "problem-a", ProblemStatementSHA256: problemDigest, ProofSHA256: strings.Repeat("a", 64),
		Ablations: []LemmaAblation{{
			LemmaID: "synthetic-lemma", Attempted: true, SearchCompleted: true,
			AblatedSourceSHA256: strings.Repeat("b", 64), EvidenceID: "synthetic-ablation",
		}},
	}, when)
	if v5.Status != domain.VerificationBlocked || !strings.Contains(v5.Summary, "execution receipts") {
		t.Fatalf("AssessV5(clean caller-authored fields) = %#v, want BLOCKED pending reopened execution receipts", v5)
	}
}

func TestV6VetoesRightsGapsAndLeakage(t *testing.T) {
	now := evidenceTime()
	evidence := V6ProvenanceEvidence{
		ProblemID: "problem-a", ProblemStatementSHA256: problemStatementSHA256(t), ArtifactSHA256: strings.Repeat("a", 64),
		DatasetSplitSHA256: strings.Repeat("c", 64), DatasetSplitEvidenceID: "split-audit", LeakageAuditEvidenceID: "leakage-audit",
		SourceIDs: []string{"source-a"}, SourceRights: []V6SourceRightsEvidence{{Source: v6SourceRights(now), RequiredUses: []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseTraining}}},
		ReviewerID: "reviewer-a", EvidenceIDs: []string{"rights-source-a", "split-audit", "leakage-audit"},
	}
	passed := AssessV6(evidence, now)
	if passed.Status != domain.VerificationBlocked || passed.DatasetSplitSHA256 != evidence.DatasetSplitSHA256 || passed.DatasetSplitEvidenceID != evidence.DatasetSplitEvidenceID || len(passed.SourceRightsAudits) != 1 || passed.SourceRightsAudits[0].RightsEvidenceID != "rights-source-a" || !strings.Contains(passed.Summary, "not independently reopened") {
		t.Fatalf("complete caller-authored V6 record = %#v, want BLOCKED pending reopened provenance computations", passed)
	}
	evidence.LeakageDetected = true
	if got := AssessV6(evidence, now).Status; got != domain.VerificationFailed {
		t.Fatalf("leakage status = %q, want FAILED", got)
	}
	evidence.LeakageDetected = false
	evidence.SourceRights[0].RequiredUses = append(evidence.SourceRights[0].RequiredUses, catalog.UseDerivative)
	if got := AssessV6(evidence, now).Status; got != domain.VerificationFailed {
		t.Fatalf("uncleared required-use status = %q, want FAILED", got)
	}
	evidence.SourceRights[0].RequiredUses = []catalog.SourceUse{catalog.UseLocalStorage}
	evidence.SourceRights[0].Source.Rights = catalog.RightsPending
	if got := AssessV6(evidence, now).Status; got != domain.VerificationBlocked {
		t.Fatalf("pending rights status = %q, want BLOCKED", got)
	}
	evidence.SourceRights[0].Source.Rights = catalog.RightsCleared
	evidence.EvidenceIDs = []string{"split-audit", "leakage-audit"}
	if got := AssessV6(evidence, now).Status; got != domain.VerificationBlocked {
		t.Fatalf("unlinked rights evidence status = %q, want BLOCKED", got)
	}
}

func TestV7RecordsKnownPriorSolutionsWithoutNewDiscoveryClaims(t *testing.T) {
	evidence := V7LiteratureEvidence{ProblemID: "problem-a", ProblemStatementSHA256: problemStatementSHA256(t), Searches: []SearchRecord{{Database: "formal-conjectures", Query: "problem-a theorem name", SearchedAt: evidenceTime(), EvidenceID: "search-log"}}, Findings: []string{"A prior proof was located."}, Novelty: NoveltyKnownSolution, ReviewerID: "reviewer-a", EvidenceIDs: []string{"search-log", "prior-proof"}}
	record := AssessV7(evidence, evidenceTime())
	if record.Status != domain.VerificationBlocked || !strings.Contains(record.Summary, "not independently reopened") || !strings.Contains(record.Summary, "must not be represented as a new discovery") || record.Novelty != NoveltyKnownSolution || len(record.Searches) != 1 || len(record.Findings) != 1 {
		t.Fatalf("caller-authored known-solution V7 record = %#v, want BLOCKED pending reopened search results", record)
	}
	evidence.Novelty = NoveltyUncertain
	if got := AssessV7(evidence, evidenceTime()).Status; got != domain.VerificationBlocked {
		t.Fatalf("uncertain novelty status = %q, want BLOCKED", got)
	}
	evidence.Novelty = NoveltyKnownSolution
	evidence.EvidenceIDs = []string{"prior-proof"}
	if got := AssessV7(evidence, evidenceTime()).Status; got != domain.VerificationBlocked {
		t.Fatalf("unlinked search-log status = %q, want BLOCKED", got)
	}
}

func TestV7OpenPriorityClaimRemainsBlockedWithoutSearchResultReader(t *testing.T) {
	evidence := V7LiteratureEvidence{
		ProblemID: "problem-a", ProblemStatementSHA256: problemStatementSHA256(t),
		Searches: []SearchRecord{{Database: "synthetic source", Query: "synthetic query", SearchedAt: evidenceTime(), EvidenceID: "search-log"}},
		Findings: []string{"No prior solution identified in synthetic fixture."}, Novelty: NoveltyOpen,
		ReviewerID: "synthetic-reviewer", EvidenceIDs: []string{"search-log"},
	}
	record := AssessV7(evidence, evidenceTime())
	if record.Status != domain.VerificationBlocked || !strings.Contains(record.Summary, "result reader") {
		t.Fatalf("caller-authored open-priority V7 record = %#v, want BLOCKED pending search result reader", record)
	}
}
