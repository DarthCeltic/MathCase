package application

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/expositor"
)

type budgetedBundleAuthorStub struct {
	calls  int
	input  expositor.BundleGenerationInput
	bundle expositor.Bundle
	err    error
	onCall func()
}

func (a *budgetedBundleAuthorStub) Generate(_ context.Context, verified expositor.VerifiedBundleGenerationInput) (expositor.Bundle, error) {
	input, err := verified.Input()
	if err != nil {
		return expositor.Bundle{}, err
	}
	a.calls++
	a.input = input
	if a.onCall != nil {
		a.onCall()
	}
	return a.bundle, a.err
}

type testM7ClearanceVerifier struct {
	calls     int
	err       error
	problemID string
	source    domain.V3SourceStatementPin
	clearance domain.AgentRunInputClearance
}

func (v *testM7ClearanceVerifier) VerifyM7ProviderInput(
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

func TestBudgetedExpositorSessionRecordsCeilingAroundOneCompleteBundleCall(t *testing.T) {
	input := testBudgetedExpositionInput()
	path := filepath.Join(t.TempDir(), "ledger", "m7-costs.jsonl")
	author := &budgetedBundleAuthorStub{bundle: testBudgetedBundle(input)}
	author.onCall = func() {
		records := readBudgetedCostJournal(t, path)
		if len(records) != 1 || records[0].CallState != budget.CallStarted || records[0].CostCeilingMicros != 100 || records[0].ProviderCallID != "" {
			t.Errorf("journal at author call = %#v, want synced start, full ceiling, and no fabricated provider response ID", records)
		}
	}
	session, err := OpenBudgetedExpositorSession(testBudgetedExpositorConfig(path, author))
	if err != nil {
		t.Fatal(err)
	}
	got, err := session.Generate(context.Background(), input)
	if err != nil {
		t.Fatalf("Generate() error = %v", err)
	}
	if err := got.Validate(input.WordLimits); err != nil {
		t.Fatalf("returned bundle is invalid: %v", err)
	}
	mismatchedProviderID := got
	mismatchedProviderID.ProviderCallID = "different-provider-response"
	if err := mismatchedProviderID.Validate(input.WordLimits); err == nil || !strings.Contains(err.Error(), "provider call ID does not match the accounting receipt") {
		t.Fatalf("bundle with a substituted provider response ID error = %v, want accounting-binding refusal", err)
	}
	if author.calls != 1 || len(got.Tiers) != 5 {
		t.Fatalf("author calls/bundle tiers = %d/%d, want one call and five tiers", author.calls, len(got.Tiers))
	}
	if got.AuthorCallID == "" || got.AuthorCallID != author.input.AuthorCallID {
		t.Fatalf("bundle/author input call IDs = %q/%q, want the same persisted call identity", got.AuthorCallID, author.input.AuthorCallID)
	}
	if _, err := session.Generate(context.Background(), input); !errors.Is(err, ErrExpositorSessionUsed) {
		t.Fatalf("second Generate() error = %v, want ErrExpositorSessionUsed", err)
	}
	if err := session.Close(); err != nil {
		t.Fatalf("Close() error = %v", err)
	}
	if err := session.Close(); err != nil {
		t.Fatalf("second Close() error = %v, want idempotent success", err)
	}
	if _, err := session.Generate(context.Background(), input); !errors.Is(err, ErrExpositorSessionClosed) {
		t.Fatalf("Generate() after Close error = %v, want ErrExpositorSessionClosed", err)
	}

	records := readBudgetedCostJournal(t, path)
	if len(records) != 2 || records[0].CallState != budget.CallStarted || records[1].CallState != budget.CallFinished {
		t.Fatalf("M7 cost events = %#v, want one ordered start/finish pair", records)
	}
	if got.AuthorCallID != records[0].ID || got.AuthorCallID != records[1].ID {
		t.Fatalf("bundle author call ID %q does not match durable cost journal call IDs %q/%q", got.AuthorCallID, records[0].ID, records[1].ID)
	}
	finish := records[1]
	if finish.RunID != "run-m7" || finish.ProviderID != "test-provider" || finish.Model != "test-model" ||
		finish.ProviderCallID != got.ProviderCallID || finish.ProviderCallID == got.AuthorCallID ||
		finish.CostKnown || finish.EstimatedCostMicros != 100 || finish.CostCeilingMicros != 100 ||
		finish.GenerationOutcome != "complete" || finish.DecoderOutcome != "accepted" {
		t.Fatalf("M7 cost finish = %#v, want unknown usage conservatively charged at the full ceiling", finish)
	}
}

func TestBudgetedExpositorCallIdentityDoesNotPromoteScalarOnlyReviews(t *testing.T) {
	dossier, _, _, proof := signedPoseParentFixture(t)
	dossier.ExpositionEvaluations = nil // The new author bundle has no evidence-backed evaluation receipts.
	input := testBudgetedExpositionInput()
	input.ProblemID = dossier.Problem.ID
	input.Statement = dossier.Problem.Statement
	input.Source.Statement = dossier.Problem.Statement
	input.Proof = proof
	input.ProofSHA256 = digestOf(proof)
	input.CoreInsightID = dossier.Expositions[0].CoreInsightID
	input.CoreInsight = dossier.Argument.CoreInsight
	input.CanonSnapshotSHA256 = strings.Repeat("c", 64)

	journalPath := filepath.Join(t.TempDir(), "m7-costs.jsonl")
	author := &budgetedBundleAuthorStub{bundle: testBudgetedBundle(input)}
	session, err := OpenBudgetedExpositorSession(testBudgetedExpositorConfig(journalPath, author))
	if err != nil {
		t.Fatal(err)
	}
	bundle, err := session.Generate(context.Background(), input)
	if err != nil {
		t.Fatalf("Generate() error = %v", err)
	}
	if err := session.Close(); err != nil {
		t.Fatal(err)
	}
	costs := readBudgetedCostJournal(t, journalPath)
	if len(costs) != 2 || bundle.AuthorCallID == "" || costs[0].ID != bundle.AuthorCallID || costs[1].ID != bundle.AuthorCallID {
		t.Fatalf("cost journal/bundle call IDs = (%#v, %q), want one shared call ID", costs, bundle.AuthorCallID)
	}
	if bundle.AccountingReceipt == nil || bundle.AccountingReceipt.CallID != bundle.AuthorCallID {
		t.Fatalf("bundle accounting receipt = %#v, want the exact durable author call", bundle.AccountingReceipt)
	}
	if err := budget.VerifyCostCallReceiptJSONL(journalPath, *bundle.AccountingReceipt); err != nil {
		t.Fatalf("verify budgeted bundle receipt against durable JSONL: %v", err)
	}

	policy := domain.ExpositionEvaluationPolicy{
		Version: "signed-parent-test-v1", MinimumRoundTripScore: 0.7, MinimumCanonScore: 0.7,
		MaximumNgramOverlap: 0, MaximumStructureOverlap: 0, TransferWeight: 0.7, ProgressWeight: 0.1, LengthExponent: 1,
	}
	receipts, err := expositor.EvaluateBundle(bundle, passingBudgetedReviews(bundle, policy), policy, input.WordLimits, time.Date(2026, time.October, 20, 19, 0, 0, 0, time.UTC))
	if err == nil || receipts != nil || !strings.Contains(err.Error(), "legacy scalar-only reviews") {
		t.Fatalf("EvaluateBundle() = %#v, %v; want fail-closed M7 evidence refusal", receipts, err)
	}

	expositions, err := bundle.ToDossierExpositions("proof.lean", input.WordLimits)
	if err != nil {
		t.Fatal(err)
	}
	dossier.Expositions = expositions
	dossier.AuthorCallAccounting = bundle.AccountingReceipt
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "accepted M7 evaluation is required") {
		t.Fatalf("ValidateReadyForDelivery() with author-only M7 output = %v, want missing-evaluation refusal", err)
	}
	if dossier.AuthorCallAccounting == nil || dossier.AuthorCallAccounting.CallID != bundle.AuthorCallID {
		t.Fatalf("dossier accounting receipt = %#v, want generated author call %q", dossier.AuthorCallAccounting, bundle.AuthorCallID)
	}
	if len(dossier.ExpositionEvaluations) != 0 {
		t.Fatalf("dossier contains %d M7 evaluation receipts from scalar-only reviews, want none", len(dossier.ExpositionEvaluations))
	}
}

func passingBudgetedReviews(bundle expositor.Bundle, policy domain.ExpositionEvaluationPolicy) map[domain.AudienceTier]expositor.TierEvaluation {
	policyDigest, err := policy.Digest()
	if err != nil {
		panic(err)
	}
	reviews := make(map[domain.AudienceTier]expositor.TierEvaluation, len(bundle.Tiers))
	for index, output := range bundle.Tiers {
		expositionDigest, err := domain.ExpositionDigest(domain.Exposition{
			Tier: output.Tier, Text: output.Render(), CoreInsightID: output.CoreInsightID,
			CoreInsight: output.CoreInsightSentence, ProofRef: bundle.ProofSHA256,
		})
		if err != nil {
			panic(err)
		}
		prefix := "m7-e2e-" + string(rune('a'+index))
		canonScores := make([]expositor.MoveScore, 0, len(domain.RequiredExpositionCanonMoves()))
		for _, move := range domain.RequiredExpositionCanonMoves() {
			canonScores = append(canonScores, expositor.MoveScore{Move: move, Score: 0.8})
		}
		review := expositor.TierEvaluation{
			Tier: output.Tier, ProblemID: bundle.ProblemID, ProofSHA256: bundle.ProofSHA256,
			ExpositionSHA256: expositionDigest, CanonSnapshotSHA256: bundle.CanonSnapshotSHA256,
			PolicySHA256: policyDigest, AuthorModelID: bundle.ExpositorModelID,
			RoundTrip: expositor.RoundTripReview{ModelID: "roundtrip-v1", ModelVersion: "1", ExpositionSHA256: expositionDigest, Frozen: true, Score: 0.9, RequiredFacts: []string{"statement", "central move"}, RecoveredFacts: []string{"statement", "central move"}, EvidenceID: prefix + "-roundtrip"},
			Canon:     expositor.CanonReview{ModelID: "canon-v1", ModelVersion: "1", Frozen: true, ExpositionSHA256: expositionDigest, CanonSnapshotSHA256: bundle.CanonSnapshotSHA256, Scores: canonScores, EvidenceID: prefix + "-canon"},
			Leakage:   expositor.LeakageAudit{ProofSHA256: bundle.ProofSHA256, ExpositionSHA256: expositionDigest, Method: "test", Passed: true, EvidenceID: prefix + "-leakage"},
			Student:   expositor.StudentLift{ModelID: "student-v1", ModelVersion: "1", Frozen: true, ExpositionSHA256: expositionDigest, AttemptBudget: 5, TargetBaseline: 0.1, TargetWithExposition: 0.4, TransferBaseline: 0.1, TransferWithExposition: 0.4, ProgressLift: 0.1, EvidenceID: prefix + "-student"},
		}
		evaluated, err := expositor.Evaluate(bundle, output, review, policy, testBudgetedExpositionInput().WordLimits)
		if err != nil {
			panic(err)
		}
		review.Accepted, review.Score, review.Refusal = evaluated.Accepted, evaluated.Score, evaluated.Refusal
		reviews[output.Tier] = review
	}
	return reviews
}

func TestBudgetedExpositorSessionRefusesCallAboveCandidateLimit(t *testing.T) {
	input := testBudgetedExpositionInput()
	path := filepath.Join(t.TempDir(), "m7-costs.jsonl")
	author := &budgetedBundleAuthorStub{bundle: testBudgetedBundle(input)}
	config := testBudgetedExpositorConfig(path, author)
	config.BudgetLimits.MaxCandidateMicros = 99
	session, err := OpenBudgetedExpositorSession(config)
	if err != nil {
		t.Fatal(err)
	}
	if bundle, err := session.Generate(context.Background(), input); err == nil || bundle.ProblemID != "" {
		t.Fatalf("Generate() = %#v, %v; want refusal and no bundle", bundle, err)
	}
	if author.calls != 0 {
		t.Fatalf("author calls = %d, want budget refusal before authoring", author.calls)
	}
	if err := session.Close(); err != nil {
		t.Fatal(err)
	}
	if records := readBudgetedCostJournal(t, path); len(records) != 0 {
		t.Fatalf("budget-refused journal records = %#v, want no call events", records)
	}
}

func TestBudgetedExpositorSessionRefusesUnclearedInputBeforeCallOrReservation(t *testing.T) {
	input := testBudgetedExpositionInput()
	path := filepath.Join(t.TempDir(), "m7-costs.jsonl")
	author := &budgetedBundleAuthorStub{bundle: testBudgetedBundle(input)}
	verifier := &testM7ClearanceVerifier{err: errors.New("source is not cleared for provider input")}
	config := testBudgetedExpositorConfig(path, author)
	config.ClearanceVerifier = verifier
	session, err := OpenBudgetedExpositorSession(config)
	if err != nil {
		t.Fatal(err)
	}
	if bundle, err := session.Generate(context.Background(), input); err == nil || bundle.ProblemID != "" || !strings.Contains(err.Error(), "provider-input clearance preflight") {
		t.Fatalf("Generate() = %#v, %v; want clearance refusal before provider dispatch", bundle, err)
	}
	if verifier.calls != 1 || verifier.problemID != input.ProblemID || verifier.source != input.Source || verifier.clearance != input.InputClearance {
		t.Fatalf("preflight calls/binding = %d/%#v/%#v/%#v; want exact M0 and clearance pins", verifier.calls, verifier.problemID, verifier.source, verifier.clearance)
	}
	if author.calls != 0 {
		t.Fatalf("author calls = %d; want zero after clearance refusal", author.calls)
	}
	if records := readBudgetedCostJournal(t, path); len(records) != 0 {
		t.Fatalf("cost records = %#v; want no reservation or provider-call events", records)
	}
	if err := session.Close(); err != nil {
		t.Fatal(err)
	}
}

func TestBudgetedExpositorSessionRequiresClearanceVerifier(t *testing.T) {
	config := testBudgetedExpositorConfig(filepath.Join(t.TempDir(), "m7-costs.jsonl"), &budgetedBundleAuthorStub{})
	config.ClearanceVerifier = nil
	if session, err := OpenBudgetedExpositorSession(config); err == nil || session != nil || !errors.Is(err, ErrExpositorSessionConfig) {
		t.Fatalf("OpenBudgetedExpositorSession() = %v, %v; want missing-clearance-verifier refusal", session, err)
	}
}

func TestBudgetedExpositorSessionChargesCeilingAndDropsInvalidBundle(t *testing.T) {
	input := testBudgetedExpositionInput()
	path := filepath.Join(t.TempDir(), "m7-costs.jsonl")
	partial := testBudgetedBundle(input)
	partial.Tiers = partial.Tiers[:4]
	author := &budgetedBundleAuthorStub{bundle: partial}
	session, err := OpenBudgetedExpositorSession(testBudgetedExpositorConfig(path, author))
	if err != nil {
		t.Fatal(err)
	}
	if bundle, err := session.Generate(context.Background(), input); err == nil || bundle.ProblemID != "" {
		t.Fatalf("Generate() = %#v, %v; want invalid bundle refusal with no partial output", bundle, err)
	}
	if err := session.Close(); err != nil {
		t.Fatal(err)
	}
	records := readBudgetedCostJournal(t, path)
	if len(records) != 2 || records[1].CallState != budget.CallFinished || records[1].ProviderCallID != partial.ProviderCallID || records[1].CostKnown || records[1].EstimatedCostMicros != 100 || records[1].GenerationOutcome != "failed" {
		t.Fatalf("invalid bundle cost events = %#v, want full ceiling charged after an attempted call", records)
	}
}

func TestBudgetedExpositorSessionRefusesMissingProviderResponseID(t *testing.T) {
	input := testBudgetedExpositionInput()
	path := filepath.Join(t.TempDir(), "m7-costs.jsonl")
	bundle := testBudgetedBundle(input)
	bundle.ProviderCallID = ""
	author := &budgetedBundleAuthorStub{bundle: bundle}
	session, err := OpenBudgetedExpositorSession(testBudgetedExpositorConfig(path, author))
	if err != nil {
		t.Fatal(err)
	}
	if got, err := session.Generate(context.Background(), input); err == nil || got.ProblemID != "" {
		t.Fatalf("Generate() = %#v, %v; want provider identity refusal and no bundle", got, err)
	}
	if err := session.Close(); err != nil {
		t.Fatal(err)
	}
	records := readBudgetedCostJournal(t, path)
	if len(records) != 2 || records[1].CallState != budget.CallFinished || records[1].ProviderCallID != "" || records[1].GenerationOutcome != "failed" {
		t.Fatalf("missing provider ID cost events = %#v, want failed call preserved without inventing an ID", records)
	}
}

func TestBudgetedExpositorSessionRejectsUnaccountedModelIdentity(t *testing.T) {
	input := testBudgetedExpositionInput()
	path := filepath.Join(t.TempDir(), "m7-costs.jsonl")
	bundle := testBudgetedBundle(input)
	bundle.ExpositorModelID = "different-model"
	author := &budgetedBundleAuthorStub{bundle: bundle}
	session, err := OpenBudgetedExpositorSession(testBudgetedExpositorConfig(path, author))
	if err != nil {
		t.Fatal(err)
	}
	if got, err := session.Generate(context.Background(), input); err == nil || got.ProblemID != "" {
		t.Fatalf("Generate() = %#v, %v; want model mismatch refusal and no bundle", got, err)
	}
	if err := session.Close(); err != nil {
		t.Fatal(err)
	}
	records := readBudgetedCostJournal(t, path)
	if len(records) != 2 || records[1].EstimatedCostMicros != 100 || records[1].GenerationOutcome != "failed" {
		t.Fatalf("model mismatch cost events = %#v, want full call ceiling recorded", records)
	}
}

func TestBudgetedExpositorSessionChargesCeilingWhenAuthorFails(t *testing.T) {
	input := testBudgetedExpositionInput()
	path := filepath.Join(t.TempDir(), "m7-costs.jsonl")
	author := &budgetedBundleAuthorStub{err: errors.New("author transport failed")}
	session, err := OpenBudgetedExpositorSession(testBudgetedExpositorConfig(path, author))
	if err != nil {
		t.Fatal(err)
	}
	if bundle, err := session.Generate(context.Background(), input); err == nil || bundle.ProblemID != "" {
		t.Fatalf("Generate() = %#v, %v; want author failure and no partial output", bundle, err)
	}
	if err := session.Close(); err != nil {
		t.Fatal(err)
	}
	records := readBudgetedCostJournal(t, path)
	if len(records) != 2 || records[1].CallState != budget.CallFinished || records[1].CostKnown || records[1].EstimatedCostMicros != 100 || records[1].ProviderOutcome != "error" {
		t.Fatalf("failed author cost events = %#v, want full ceiling charged after call start", records)
	}
}

func TestBudgetedExpositorSessionCloseWaitsForInflightAuthor(t *testing.T) {
	input := testBudgetedExpositionInput()
	path := filepath.Join(t.TempDir(), "m7-costs.jsonl")
	started := make(chan struct{})
	release := make(chan struct{})
	author := &budgetedBundleAuthorStub{bundle: testBudgetedBundle(input)}
	author.onCall = func() {
		close(started)
		<-release
	}
	session, err := OpenBudgetedExpositorSession(testBudgetedExpositorConfig(path, author))
	if err != nil {
		t.Fatal(err)
	}
	type generationResult struct {
		bundle expositor.Bundle
		err    error
	}
	generated := make(chan generationResult, 1)
	go func() {
		bundle, generateErr := session.Generate(context.Background(), input)
		generated <- generationResult{bundle: bundle, err: generateErr}
	}()
	<-started
	closed := make(chan error, 1)
	go func() { closed <- session.Close() }()
	deadline := time.Now().Add(time.Second)
	for {
		session.mu.Lock()
		closeStarted := session.closeStarted
		session.mu.Unlock()
		if closeStarted {
			break
		}
		if time.Now().After(deadline) {
			close(release)
			t.Fatal("Close() did not begin while the author call was in flight")
		}
		runtime.Gosched()
	}
	if _, err := session.Generate(context.Background(), input); !errors.Is(err, ErrExpositorSessionClosed) {
		t.Fatalf("Generate() while closing = %v, want ErrExpositorSessionClosed", err)
	}
	select {
	case err := <-closed:
		t.Fatalf("Close() returned before the active author completed: %v", err)
	default:
	}
	close(release)
	if result := <-generated; result.err != nil || len(result.bundle.Tiers) != 5 {
		t.Fatalf("in-flight Generate() = %d tiers, %v; want complete bundle", len(result.bundle.Tiers), result.err)
	}
	if err := <-closed; err != nil {
		t.Fatalf("Close() after author completion: %v", err)
	}
}

func testBudgetedExpositorConfig(path string, author expositor.BundleAuthor) BudgetedExpositorSessionConfig {
	return BudgetedExpositorSessionConfig{
		CostJournalPath: path,
		RunID:           "run-m7",
		ProviderID:      "test-provider",
		AccountProfile:  "test-account",
		ModelID:         "test-model",
		ModelVersion:    "test-version",
		BudgetLimits: budget.Limits{
			MaxRunMicros: 1000, MaxSessionMicros: 1000, MaxCandidateMicros: 1000,
		},
		MaxCallCostMicros: 100,
		Author:            author,
		ClearanceVerifier: &testM7ClearanceVerifier{},
		Now:               time.Now,
	}
}

func testBudgetedExpositionInput() expositor.BundleGenerationInput {
	proof := "by exact Nat.add_assoc"
	digest := sha256.Sum256([]byte(proof))
	return expositor.BundleGenerationInput{
		ProblemID: "problem-m7", Statement: "Natural-number addition is associative.",
		Source: domain.V3SourceStatementPin{
			URL: "https://example.invalid/mathcase/problem-m7", ItemLocator: "problem-m7", Revision: "m0-revision-1",
			RawItemSHA256: strings.Repeat("a", 64), CatalogSnapshotSHA256: strings.Repeat("d", 64),
			Statement: "Natural-number addition is associative.", EvidenceID: "source-m7",
		},
		InputClearance: domain.AgentRunInputClearance{
			StatementID: "statement-m7", EvidenceID: "clearance-m7", EvidenceSHA256: strings.Repeat("e", 64),
		},
		Proof: proof, ProofSHA256: hex.EncodeToString(digest[:]),
		CoreInsightID: "core-assoc", CoreInsight: "Induct on the recursive argument.",
		CanonSnapshotSHA256: strings.Repeat("c", 64),
		WordLimits: expositor.WordLimits{
			domain.TierHighSchool: 500, domain.TierAssociate: 500, domain.TierBachelor: 500,
			domain.TierMaster: 500, domain.TierDoctorate: 500,
		},
	}
}

func testBudgetedBundle(input expositor.BundleGenerationInput) expositor.Bundle {
	orders := []domain.AudienceTier{
		domain.TierHighSchool, domain.TierAssociate, domain.TierBachelor,
		domain.TierMaster, domain.TierDoctorate,
	}
	tiers := make([]expositor.TierOutput, 0, len(orders))
	for _, tier := range orders {
		output := expositor.TierOutput{
			Tier: tier, AssumedBackground: []string{"Natural-number addition."},
			CoreInsightID: input.CoreInsightID, Motivation: "We want to understand the order of addition.",
			WhyNotObvious:       "The recursive definition treats the second argument specially.",
			CoreInsightSentence: input.CoreInsight, ProofNarrative: "Induction moves the recursive definition into view.",
			Example:       "For 2 + 3, the recursive steps can be followed directly.",
			StoppingPoint: "The argument covers natural numbers under this definition.",
		}
		switch tier {
		case domain.TierHighSchool:
			output.AssertedSteps = []string{"The induction hypothesis is used here."}
		case domain.TierAssociate:
			output.WorkedVariant = "Try the same induction with another natural number."
		case domain.TierBachelor:
			output.BoundaryCase = "Zero is the base case."
			output.MissingHypothesis = "The induction hypothesis is required."
		case domain.TierMaster:
			output.PreciseLemmas = []string{"Nat.add_assoc"}
			output.TextbookComparison = "This follows the recursive definition directly."
		case domain.TierDoctorate:
			output.AlternativesRejected = []string{"A direct rewrite obscures the induction step."}
			output.TransferTargets = []string{"Recursive operations on other inductive types."}
		}
		tiers = append(tiers, output)
	}
	return expositor.Bundle{
		AuthorCallID: "m7call-session-fixture", ProviderCallID: "provider-response-session-fixture",
		ProblemID: input.ProblemID, ProofSHA256: input.ProofSHA256,
		CanonSnapshotSHA256: input.CanonSnapshotSHA256,
		ExpositorModelID:    "test-model", ExpositorVersion: "test-version", Tiers: tiers,
	}
}

func readBudgetedCostJournal(t *testing.T, path string) []budget.CostRecord {
	t.Helper()
	file, err := os.Open(path)
	if err != nil {
		t.Fatal(err)
	}
	defer file.Close()
	records, err := budget.ReadJSONL(file)
	if err != nil {
		t.Fatalf("read cost journal: %v", err)
	}
	return records
}
