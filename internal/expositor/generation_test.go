package expositor

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"reflect"
	"strings"
	"testing"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

type testBundleAuthor struct {
	calls  int
	input  BundleGenerationInput
	bundle Bundle
	err    error
}

func (a *testBundleAuthor) Generate(_ context.Context, verified VerifiedBundleGenerationInput) (Bundle, error) {
	input, err := verified.Input()
	if err != nil {
		return Bundle{}, err
	}
	a.calls++
	a.input = input
	return a.bundle, a.err
}

type testM7InputClearanceVerifier struct {
	calls     int
	err       error
	problemID string
	source    domain.V3SourceStatementPin
	clearance domain.AgentRunInputClearance
}

func (v *testM7InputClearanceVerifier) VerifyM7ProviderInput(
	_ context.Context,
	problemID string,
	source domain.V3SourceStatementPin,
	clearance domain.AgentRunInputClearance,
) error {
	v.calls++
	v.problemID = problemID
	v.source = source
	v.clearance = clearance
	return v.err
}

func TestGenerateBundleCallsOnceAndReturnsDetachedCompleteBundle(t *testing.T) {
	input := testGenerationInput()
	bundle := testBundle()
	bundle.ProofSHA256 = input.ProofSHA256
	author := &testBundleAuthor{bundle: bundle}

	verifier := &testM7InputClearanceVerifier{}
	verified, err := VerifyBundleGenerationInput(context.Background(), input, verifier)
	if err != nil {
		t.Fatalf("VerifyBundleGenerationInput() error = %v", err)
	}
	got, err := GenerateBundle(context.Background(), verified, author)
	if err != nil {
		t.Fatalf("GenerateBundle() error = %v", err)
	}
	if author.calls != 1 {
		t.Fatalf("author calls = %d, want one bundle-level call", author.calls)
	}
	if verifier.calls != 1 || verifier.problemID != input.ProblemID || verifier.source != input.Source || verifier.clearance != input.InputClearance {
		t.Fatalf("clearance verifier calls/binding = %d/%#v/%#v/%#v; want exact M0 input", verifier.calls, verifier.problemID, verifier.source, verifier.clearance)
	}
	if err := got.Validate(input.WordLimits); err != nil {
		t.Fatalf("returned bundle is invalid: %v", err)
	}
	if len(got.Tiers) != 5 || got.ProblemID != input.ProblemID || got.ProofSHA256 != input.ProofSHA256 || got.CanonSnapshotSHA256 != input.CanonSnapshotSHA256 {
		t.Fatalf("returned bundle = %#v, want the requested five-tier bundle", got)
	}
	if author.input.WordLimits[got.Tiers[0].Tier] != input.WordLimits[got.Tiers[0].Tier] {
		t.Fatal("author request lost the frozen word limit")
	}
	if got.AuthorCallID == "" || got.AuthorCallID != author.input.AuthorCallID {
		t.Fatalf("bundle/author input call IDs = %q/%q, want the same nonempty generated identity", got.AuthorCallID, author.input.AuthorCallID)
	}
	got.Tiers[0].AssumedBackground[0] = "changed by caller"
	if author.bundle.Tiers[0].AssumedBackground[0] == "changed by caller" {
		t.Fatal("returned bundle aliases the author's mutable tier slices")
	}
}

func TestBundleGenerationRequiresPreflightAndRejectsMisboundSource(t *testing.T) {
	input := testGenerationInput()
	if verified, err := VerifyBundleGenerationInput(context.Background(), input, nil); err == nil || verified.verified {
		t.Fatalf("VerifyBundleGenerationInput() = %#v, %v; want missing-verifier refusal", verified, err)
	}

	denied := &testM7InputClearanceVerifier{err: errors.New("item clearance is not active")}
	if verified, err := VerifyBundleGenerationInput(context.Background(), input, denied); err == nil || verified.verified || denied.calls != 1 {
		t.Fatalf("VerifyBundleGenerationInput(denied) = %#v, %v; calls=%d, want refused preflight", verified, err, denied.calls)
	}

	misbound := input
	misbound.Source.Statement = "different M0 statement"
	if verified, err := VerifyBundleGenerationInput(context.Background(), misbound, &testM7InputClearanceVerifier{}); err == nil || verified.verified || !strings.Contains(err.Error(), "source and M0 statement pin") {
		t.Fatalf("VerifyBundleGenerationInput(misbound source) = %#v, %v; want M0 binding refusal", verified, err)
	}

	author := &testBundleAuthor{bundle: testBundle()}
	if bundle, err := GenerateBundle(context.Background(), VerifiedBundleGenerationInput{}, author); err == nil || bundle.ProblemID != "" || author.calls != 0 {
		t.Fatalf("GenerateBundle(unverified) = %#v, %v; author calls=%d, want refusal before dispatch", bundle, err, author.calls)
	}
}

func TestBundleConvertsToCompleteDossierExpositionsInTierOrder(t *testing.T) {
	bundle := testBundle()
	expositions, err := bundle.ToDossierExpositions("proofs/r0b/MathCaseR0b.lean", testWordLimits())
	if err != nil {
		t.Fatalf("ToDossierExpositions() error = %v", err)
	}
	wantTiers := []domain.AudienceTier{
		domain.TierHighSchool,
		domain.TierAssociate,
		domain.TierBachelor,
		domain.TierMaster,
		domain.TierDoctorate,
	}
	if len(expositions) != len(wantTiers) {
		t.Fatalf("ToDossierExpositions() returned %d tiers, want 5", len(expositions))
	}
	for index, exposition := range expositions {
		if exposition.Tier != wantTiers[index] || exposition.CoreInsightID != "core-assoc" || exposition.ProofRef != "proofs/r0b/MathCaseR0b.lean" || exposition.Text == "" {
			t.Fatalf("dossier exposition %d = %#v, want ordered tier with shared insight and proof reference", index, exposition)
		}
	}
}

func TestBundleToDossierExpositionsRejectsIncompleteBundleWithoutPartialOutput(t *testing.T) {
	bundle := testBundle()
	bundle.Tiers = bundle.Tiers[:4]
	expositions, err := bundle.ToDossierExpositions("proofs/r0b/MathCaseR0b.lean", testWordLimits())
	if err == nil || !strings.Contains(err.Error(), "five") || expositions != nil {
		t.Fatalf("ToDossierExpositions() = %#v, %v; want no partial dossier records", expositions, err)
	}
}

func TestGenerateBundleRejectsPartialOrMismatchedOutputWithoutReturningIt(t *testing.T) {
	input := testGenerationInput()
	base := testBundle()
	base.ProofSHA256 = input.ProofSHA256
	base.ProviderCallID = "provider-response-generation-fixture"

	tests := []struct {
		name   string
		mutate func(*Bundle)
		want   string
	}{
		{
			name: "missing tier",
			mutate: func(bundle *Bundle) {
				bundle.Tiers = bundle.Tiers[:4]
			},
			want: "five",
		},
		{
			name: "wrong problem",
			mutate: func(bundle *Bundle) {
				bundle.ProblemID = "other-problem"
			},
			want: "not bound",
		},
		{
			name: "wrong proof",
			mutate: func(bundle *Bundle) {
				bundle.ProofSHA256 = strings.Repeat("c", 64)
			},
			want: "not bound",
		},
		{
			name: "wrong canon",
			mutate: func(bundle *Bundle) {
				bundle.CanonSnapshotSHA256 = strings.Repeat("d", 64)
			},
			want: "not bound",
		},
		{
			name: "wrong shared insight",
			mutate: func(bundle *Bundle) {
				bundle.Tiers[0].CoreInsightID = "other-insight"
			},
			want: "shared core insight",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			bundle := cloneBundle(base)
			tt.mutate(&bundle)
			author := &testBundleAuthor{bundle: bundle}
			verified, verifyErr := VerifyBundleGenerationInput(context.Background(), input, &testM7InputClearanceVerifier{})
			if verifyErr != nil {
				t.Fatalf("VerifyBundleGenerationInput() error = %v", verifyErr)
			}
			got, err := GenerateBundle(context.Background(), verified, author)
			if err == nil || !strings.Contains(err.Error(), tt.want) {
				t.Fatalf("GenerateBundle() error = %v, want %q", err, tt.want)
			}
			if !reflect.DeepEqual(got, Bundle{}) {
				t.Fatalf("GenerateBundle() returned partial or invalid bundle: %#v", got)
			}
			if providerCallID := ProviderCallIDFromError(err); providerCallID != base.ProviderCallID {
				t.Fatalf("ProviderCallIDFromError() = %q, want provider response ID %q preserved on refusal", providerCallID, base.ProviderCallID)
			}
		})
	}
}

func TestGenerateBundleDoesNotCallAuthorForInvalidInputOrCanceledContext(t *testing.T) {
	input := testGenerationInput()
	validAuthor := &testBundleAuthor{bundle: testBundle()}
	validAuthor.bundle.ProofSHA256 = input.ProofSHA256

	invalid := input
	invalid.ProofSHA256 = strings.Repeat("0", 64)
	if got, err := VerifyBundleGenerationInput(context.Background(), invalid, &testM7InputClearanceVerifier{}); err == nil || !strings.Contains(err.Error(), "does not match") || got.verified {
		t.Fatalf("VerifyBundleGenerationInput() with mismatched proof hash = %#v, %v", got, err)
	}
	if validAuthor.calls != 0 {
		t.Fatalf("author calls after invalid input = %d, want 0", validAuthor.calls)
	}

	invalidLimits := cloneGenerationInput(input)
	delete(invalidLimits.WordLimits, testBundle().Tiers[0].Tier)
	if got, err := VerifyBundleGenerationInput(context.Background(), invalidLimits, &testM7InputClearanceVerifier{}); err == nil || !strings.Contains(err.Error(), "word limit") || got.verified {
		t.Fatalf("VerifyBundleGenerationInput() with incomplete word policy = %#v, %v", got, err)
	}
	if validAuthor.calls != 0 {
		t.Fatalf("author calls after invalid word policy = %d, want 0", validAuthor.calls)
	}

	verified, err := VerifyBundleGenerationInput(context.Background(), input, &testM7InputClearanceVerifier{})
	if err != nil {
		t.Fatalf("VerifyBundleGenerationInput() error = %v", err)
	}
	canceled, cancel := context.WithCancel(context.Background())
	cancel()
	if got, err := GenerateBundle(canceled, verified, validAuthor); !errors.Is(err, context.Canceled) || !reflect.DeepEqual(got, Bundle{}) {
		t.Fatalf("GenerateBundle() with canceled context = %#v, %v", got, err)
	}
	if validAuthor.calls != 0 {
		t.Fatalf("author calls after canceled context = %d, want 0", validAuthor.calls)
	}
}

func TestGenerateBundleDropsPartialAuthorResultOnError(t *testing.T) {
	input := testGenerationInput()
	partial := testBundle()
	partial.ProofSHA256 = input.ProofSHA256
	author := &testBundleAuthor{bundle: partial, err: errors.New("author stopped after two tiers")}

	verified, err := VerifyBundleGenerationInput(context.Background(), input, &testM7InputClearanceVerifier{})
	if err != nil {
		t.Fatalf("VerifyBundleGenerationInput() error = %v", err)
	}
	got, err := GenerateBundle(context.Background(), verified, author)
	if err == nil || !strings.Contains(err.Error(), "author five-tier bundle") {
		t.Fatalf("GenerateBundle() error = %v, want author failure", err)
	}
	if !reflect.DeepEqual(got, Bundle{}) {
		t.Fatalf("GenerateBundle() returned a partial author result: %#v", got)
	}
}

func testGenerationInput() BundleGenerationInput {
	proof := "by\n  induction n <;> simp [Nat.add_assoc]"
	digest := sha256.Sum256([]byte(proof))
	return BundleGenerationInput{
		ProblemID: "problem-a",
		Statement: "For natural numbers, addition is associative.",
		Source: domain.V3SourceStatementPin{
			URL: "https://example.invalid/mathcase/problem-a", ItemLocator: "problem-a", Revision: "m0-revision-1",
			RawItemSHA256: strings.Repeat("a", 64), CatalogSnapshotSHA256: strings.Repeat("e", 64),
			Statement: "For natural numbers, addition is associative.", EvidenceID: "source-evidence-a",
		},
		InputClearance: domain.AgentRunInputClearance{
			StatementID: "statement-a", EvidenceID: "clearance-a", EvidenceSHA256: strings.Repeat("f", 64),
		},
		Proof:               proof,
		ProofSHA256:         hex.EncodeToString(digest[:]),
		CoreInsightID:       "core-assoc",
		CoreInsight:         "Induct on the argument that follows the recursive definition.",
		CanonSnapshotSHA256: strings.Repeat("b", 64),
		WordLimits:          testWordLimits(),
	}
}
