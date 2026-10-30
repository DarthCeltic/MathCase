package poser

import (
	"crypto/sha256"
	"encoding/hex"
	"regexp"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestCollectSyntaxMutationsCoversBoundedOperators(t *testing.T) {
	parsed, err := parseTheoremStatement("theorem order_fact (a b c : Nat) : a ≤ b ∧ b < c")
	if err != nil {
		t.Fatal(err)
	}
	for _, test := range []struct {
		operator Operator
		want     []string
	}{
		{operator: OperatorRelax, want: []string{"a ≤ b", "b < c", "b ≤ c"}},
		{operator: OperatorSharpen, want: []string{"a < b"}},
		{operator: OperatorDual, want: []string{"a ≥ b", "b > c"}},
	} {
		t.Run(string(test.operator), func(t *testing.T) {
			var rendered []string
			for _, mutation := range collectSyntaxMutations(parsed.body, test.operator) {
				rendered = append(rendered, renderTheoremDeclaration("candidate", parsed.binders, mutation.body))
			}
			joined := strings.Join(rendered, "\n")
			for _, expected := range test.want {
				if !strings.Contains(joined, expected) {
					t.Errorf("%s mutations %q do not include %q", test.operator, joined, expected)
				}
			}
		})
	}
}

func TestCollectSyntaxMutationsTracksImplicationPolarity(t *testing.T) {
	parsed, err := parseTheoremStatement("theorem bound (a b : Nat) : a ≤ b → a < b")
	if err != nil {
		t.Fatal(err)
	}
	var rendered []string
	for _, mutation := range collectSyntaxMutations(parsed.body, OperatorRelax) {
		rendered = append(rendered, renderTheoremDeclaration("candidate", parsed.binders, mutation.body))
	}
	joined := strings.Join(rendered, "\n")
	for _, expected := range []string{"(a < b) → (a < b)", "(a ≤ b) → (a ≤ b)"} {
		if !strings.Contains(joined, expected) {
			t.Errorf("relax mutations %q do not include polarity-aware form %q", joined, expected)
		}
	}
}

func TestHybridMutationComposesMatchingImplicationsAndRejectsBinderMismatch(t *testing.T) {
	primary, err := parseTheoremStatement("theorem first (n : Nat) : n ≤ 2 → n ≤ 5")
	if err != nil {
		t.Fatal(err)
	}
	secondary, err := parseTheoremStatement("theorem second (n : Nat) : n ≤ 5 → n ≤ 9")
	if err != nil {
		t.Fatal(err)
	}
	mutation, refusal := hybridMutationFromSyntax("chain-a", primary, "chain-b", secondary)
	if refusal != "" {
		t.Fatalf("hybridMutationFromSyntax() refusal = %q, want composition", refusal)
	}
	if rendered := mutation.body.render(); !strings.Contains(rendered, "n ≤ 2") || !strings.Contains(rendered, "n ≤ 9") {
		t.Fatalf("hybrid mutation = %q, want composed endpoint implication", rendered)
	}

	mismatched, err := parseTheoremStatement("theorem other (x : Nat) : x ≤ 3")
	if err != nil {
		t.Fatal(err)
	}
	if _, refusal := hybridMutationFromSyntax("chain-a", primary, "chain-c", mismatched); !strings.Contains(refusal, "matching Lean binders") {
		t.Fatalf("hybridMutationFromSyntax() refusal = %q, want binder mismatch", refusal)
	}
}

func TestPureMutationBuilderExposesUnsupportedSyntaxRefusal(t *testing.T) {
	parsed, err := parseTheoremStatement("theorem atomic : True")
	if err != nil {
		t.Fatal(err)
	}
	if got := collectSyntaxMutations(parsed.body, OperatorRelax); len(got) != 0 {
		t.Fatalf("collectSyntaxMutations(True, relax) = %#v, want no supported mutations", got)
	}
	parent := VerifiedTheorem{ProblemID: "synthetic-parent"}
	if _, refusal := hybridMutation(parent, nil, theoremSyntax{}); !strings.Contains(refusal, "second verified theorem") {
		t.Fatalf("hybridMutation() refusal = %q, want second-parent refusal", refusal)
	}
}

func TestGenerateRefusesCallerAuthoredV3BeforeStructuralMutations(t *testing.T) {
	parent := verifiedTheorem(t, "parent-order", "theorem order_fact (a b c : Nat) : a ≤ b ∧ b < c", 'a', 'b')
	assertM2RefusesUnreceiptedV3(t, parent, []Operator{OperatorRelax, OperatorSharpen, OperatorDual})
}

func TestGenerateRefusesCallerAuthoredV3BeforeHybridization(t *testing.T) {
	parent := verifiedTheorem(t, "parent-chain-a", "theorem first (n : Nat) : n ≤ 2 → n ≤ 5", 'e', 'f')
	assertM2RefusesUnreceiptedV3(t, parent, []Operator{OperatorHybrid})
}

func assertM2RefusesUnreceiptedV3(t *testing.T, parent VerifiedTheorem, operators []Operator) {
	t.Helper()
	request := GenerationRequest{
		Primary: parent, Operators: operators,
		GeneratedAt: time.Date(2026, time.October, 20, 16, 30, 0, 0, time.UTC),
	}
	if err := parent.Validate(); err == nil || !strings.Contains(err.Error(), "builder-authored claims") {
		t.Fatalf("VerifiedTheorem.Validate(%q) error = %v, want authenticated V3 receipt hold", parent.ProblemID, err)
	}
	result, err := Generate(request)
	if err == nil || !strings.Contains(err.Error(), "builder-authored claims") || len(result.Proposals) != 0 {
		t.Fatalf("Generate(%q) = (%#v, %v), want no proposals and an authenticated V3 receipt hold", parent.ProblemID, result, err)
	}
}

func TestVerifiedTheoremRejectsMismatchedVersionTwoProofBinding(t *testing.T) {
	theorem := verifiedTheorem(t, "parent-invalid-v2", "theorem fact (n : Nat) : n = n", 'd', 'e')
	theorem.V2.ProofSHA256 = strings.Repeat("f", 64)
	if err := theorem.Validate(); err == nil || !strings.Contains(err.Error(), "not bound to the exact statement and proof") {
		t.Fatalf("VerifiedTheorem.Validate() error = %v, want mismatched V2 proof refusal", err)
	}
}

func TestVerifiedTheoremRequiresV3SnapshotToMatchParentSourceSnapshot(t *testing.T) {
	theorem := verifiedTheorem(t, "parent-v3-snapshot", "theorem fact (n : Nat) : n = n", 'd', 'e')
	theorem.V3.StatementFidelity.Source.CatalogSnapshotSHA256 = strings.Repeat("f", 64)
	if err := theorem.Validate(); err == nil || !strings.Contains(err.Error(), "source snapshot") {
		t.Fatalf("VerifiedTheorem.Validate() error = %v, want V3/source snapshot mismatch refusal", err)
	}
}

func TestVerifiedTheoremRejectsReusedVerificationEvidence(t *testing.T) {
	theorem := verifiedTheorem(t, "parent-reused-evidence", "theorem fact (n : Nat) : n = n", 'e', 'f')
	theorem.V1.EvidenceIDs = []string{theorem.V3.StatementFidelity.EvidenceIDs()[0]}
	if err := theorem.Validate(); err == nil || !strings.Contains(err.Error(), "builder-authored claims") {
		t.Fatalf("VerifiedTheorem.Validate() error = %v, want authenticated V3 receipt hold before M2", err)
	}
}

func verifiedTheorem(t *testing.T, id, leanStatement string, snapshotByte, proofByte byte) VerifiedTheorem {
	t.Helper()
	informal := "A verified source theorem: " + id
	proofDigest := strings.Repeat(string(proofByte), 64)
	parsed, err := parseTheoremStatement(leanStatement)
	if err != nil {
		t.Fatalf("parse test theorem statement %q: %v", leanStatement, err)
	}
	statementDigest, err := domain.ProblemStatementDigest(id, informal, renderFormalProposition(parsed))
	if err != nil {
		t.Fatalf("ProblemStatementDigest(%q) error = %v", id, err)
	}
	recordedAt := time.Date(2026, time.October, 20, 11, 0, 0, 0, time.UTC)
	leanProposition := renderFormalProposition(parsed)
	review := poserV3ReviewFixture(id, informal, leanProposition, natParameters(leanStatement), recordedAt)
	review.Source.CatalogSnapshotSHA256 = strings.Repeat(string(snapshotByte), 64)
	return VerifiedTheorem{
		ProblemID: id, SourceIDs: []string{"source-" + id},
		SourceSnapshotSHA256: strings.Repeat(string(snapshotByte), 64),
		InformalStatement:    informal, LeanStatement: leanStatement, ProofSHA256: proofDigest,
		V1: domain.VerificationRecord{
			Gate: domain.GateKernelBuild, Status: domain.VerificationPassed, Summary: "Lean kernel build passed.",
			EvidenceIDs: []string{id + "-v1"}, ProblemID: id, ProblemStatementSHA256: statementDigest,
			ProofSHA256: proofDigest, RecordedAt: recordedAt,
		},
		V2: domain.VerificationRecord{
			Gate: domain.GateAxiomAudit, Status: domain.VerificationPassed, Summary: "Axiom audit passed.",
			EvidenceIDs: []string{id + "-v2"}, ProblemID: id, ProblemStatementSHA256: statementDigest,
			ProofSHA256: proofDigest, RecordedAt: recordedAt,
		},
		V3: domain.VerificationRecord{
			Gate: domain.GateStatementFidelity, Status: domain.VerificationPassed, Summary: "Statement correspondence reviewed.",
			EvidenceIDs: review.EvidenceIDs(), ProblemID: id, ProblemStatementSHA256: statementDigest,
			ReviewerID: review.SemanticComparison.ReviewerID, StatementFidelity: review, RecordedAt: recordedAt,
		},
	}
}

func poserV3ReviewFixture(id, informal, lean string, parameters []string, at time.Time) *domain.V3StatementFidelity {
	const snapshot = "cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc"
	const sourceSHA = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	const leanSHA = "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"
	prefix := id + "-v3-"
	review := &domain.V3StatementFidelity{
		Source: domain.V3SourceStatementPin{
			URL: "https://example.test/poser-fixture", ItemLocator: id,
			Revision: "fixture-revision", RawItemSHA256: sourceSHA,
			CatalogSnapshotSHA256: snapshot, Statement: informal, EvidenceID: prefix + "source",
		},
		Lean: domain.V3LeanStatementPin{
			AuthorID: id + "-formalizer", Revision: "fixture-lean-revision", FileLocator: "Fixture.lean",
			DeclarationName: "fixture_theorem", SourceFileSHA256: leanSHA,
			NormalizedStatement: lean, NormalizedStatementSHA256: poserSHA256Text(lean), EvidenceID: prefix + "lean",
		},
		BackTranslation: domain.V3BackTranslation{
			Text: informal, ProducedByID: id + "-backtranslator", Role: domain.V3BackTranslationWitnessRole,
			RecordedAt: at, EvidenceID: prefix + "backtranslation",
		},
		SemanticComparison: domain.V3SemanticComparison{
			Status: domain.V3SemanticPass, Differences: []domain.V3SemanticDifference{},
			Rationale:             "Synthetic fixture comparison; no material discrepancy is encoded.",
			UnresolvedAssumptions: []string{}, ReviewerID: id + "-reviewer", HumanSpotReview: true,
			ReviewerAccepted: true, RecordedAt: at, EvidenceID: prefix + "semantic",
		},
		IndependentRoute: "synthetic-independent-backtranslation-v1",
	}
	if len(parameters) == 0 {
		review.NaturalParameterApplicability = domain.V3NaturalParametersNone
		review.MeaningfulNaturalParameters = []string{}
	} else {
		review.NaturalParameterApplicability = domain.V3NaturalParametersPresent
		review.MeaningfulNaturalParameters = append([]string(nil), parameters...)
		for _, parameter := range parameters {
			for _, value := range []string{"0", "1"} {
				review.BoundaryProbes = append(review.BoundaryProbes, domain.V3BoundaryProbe{
					Kind: domain.V3BoundaryNaturalValue, ParameterID: parameter, Value: value,
					SourceInstance: informal + " [" + parameter + "=" + value + "]",
					LeanInstance:   lean + " [" + parameter + "=" + value + "]",
					Outcome:        domain.V3BoundaryConsistent,
					Rationale:      "Synthetic fixture records the required boundary value.", EvidenceID: prefix + parameter + "-" + value,
				})
			}
		}
	}
	review.EmptyObjectApplicability = domain.V3EmptyObjectNotApplicable
	review.BoundaryProbes = append(review.BoundaryProbes, domain.V3BoundaryProbe{
		Kind: domain.V3BoundaryEmptyObject, ParameterID: "objects", Value: "empty",
		Outcome: domain.V3BoundaryNotApplicable, Rationale: "This synthetic theorem has no set or object parameter with an empty case.", EvidenceID: prefix + "empty",
	})
	return review
}

func natParameters(statement string) []string {
	pattern := regexp.MustCompile(`(?:\(([^()]*)\)|([A-Za-z][A-Za-z0-9_]*))\s*:\s*Nat`)
	seen := make(map[string]struct{})
	var parameters []string
	for _, match := range pattern.FindAllStringSubmatch(statement, -1) {
		nameList := match[1]
		if nameList == "" {
			nameList = match[2]
		}
		for _, name := range strings.Fields(nameList) {
			if _, exists := seen[name]; exists {
				continue
			}
			seen[name] = struct{}{}
			parameters = append(parameters, name)
		}
	}
	return parameters
}

func poserSHA256Text(value string) string {
	digest := sha256.Sum256([]byte(value))
	return hex.EncodeToString(digest[:])
}

func proposalStatements(proposals []Proposal) []string {
	statements := make([]string, 0, len(proposals))
	for _, proposal := range proposals {
		statements = append(statements, proposal.LeanStatement)
	}
	return statements
}

func hasStatement(proposals []Proposal, expected string) bool {
	for _, proposal := range proposals {
		if strings.Contains(proposal.LeanStatement, expected) {
			return true
		}
	}
	return false
}
