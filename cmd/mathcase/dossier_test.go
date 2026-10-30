package main

import (
	"bytes"
	"context"
	"crypto/ed25519"
	"crypto/sha256"
	"encoding/base64"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"math"
	"os"
	"path/filepath"
	"regexp"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/expositor"
	"github.com/DarthCeltic/MathCase/internal/persistence"
)

func minimalDossierForCLI() domain.Dossier {
	now := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	return domain.Dossier{
		SchemaVersion: domain.DossierSchemaVersion,
		Case:          domain.Case{ID: "case-draft", Question: "A local draft case", CreatedAt: now, UpdatedAt: now},
		Problem:       domain.MathProblem{ID: "problem-draft", Title: "Draft problem", Statement: "A draft statement."},
	}
}

func TestDossierM6AttachAndReadReopenPersistedNatChain(t *testing.T) {
	projectRoot, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	parentPath := filepath.Join(projectRoot, "data", "local", "dossier-store", "cases", "nat-add-assoc", "205a37023bcff8adbed43c7a1cee1776c5cebc8b1a1b36e8412e5c8c658010f1.json")
	m4Path := filepath.Join(projectRoot, "data", "local", "verification", "goal-continuation-2026-10-23", "solve-local-r0b-control-r3", "receipts", "lean-3debdf3b11dcf0b051559b2f6a9ed3ad.json")
	m6Directory := filepath.Join(projectRoot, "data", "local", "verification", "goal-continuation-2026-10-23", "m6-solve-local-r0b-proof-r1")
	parentBytes, err := os.ReadFile(parentPath)
	if errors.Is(err, os.ErrNotExist) {
		t.Skip("persisted Nat dossier is not available in this checkout")
	}
	if err != nil {
		t.Fatalf("read persisted Nat dossier: %v", err)
	}
	parentDigest := sha256.Sum256(parentBytes)
	parentSHA256 := hex.EncodeToString(parentDigest[:])
	storeRoot := filepath.Join(t.TempDir(), "dossier-store")
	var parent domain.Dossier
	if err := decodeStrictJSON(parentBytes, &parent, "persisted Nat parent dossier"); err != nil {
		t.Fatalf("decode persisted Nat parent dossier: %v", err)
	}
	store, err := persistence.NewDossierStore(storeRoot)
	if err != nil {
		t.Fatalf("create isolated dossier store: %v", err)
	}
	parentReceipt, err := store.Put(context.Background(), parent)
	if err != nil {
		t.Fatalf("store exact Nat parent dossier: %v", err)
	}
	if parentReceipt.ContentSHA256 != parentSHA256 {
		t.Fatalf("stored Nat parent digest = %s, want exact source digest %s", parentReceipt.ContentSHA256, parentSHA256)
	}
	var attachStdout, attachStderr bytes.Buffer
	code := run([]string{
		"dossier-attach-m6", "--project-root", projectRoot,
		"--store-root", storeRoot, "--dossier", parentPath,
		"--parent-sha256", parentSHA256, "--m4-receipt", m4Path,
		"--metrics-dir", m6Directory,
	}, &attachStdout, &attachStderr)
	if code != 0 {
		t.Fatalf("dossier-attach-m6 exit=%d stdout=%q stderr=%q", code, attachStdout.String(), attachStderr.String())
	}
	var attached dossierM6Output
	if err := json.Unmarshal(attachStdout.Bytes(), &attached); err != nil {
		t.Fatalf("decode dossier-attach-m6 output: %v; output=%q", err, attachStdout.String())
	}
	if attached.Status != "ATTACHED_IMMUTABLY" || attached.CaseID != "nat-add-assoc" ||
		attached.CoreExprNodes != 233 || attached.CoreExprDepth != 17 || attached.BinderNodes != 4 || attached.ConstantReferenceNodes != 95 || attached.DossierSHA256 == "" {
		t.Fatalf("dossier-attach-m6 output = %#v, want immutable Nat successor and reopened structural counts", attached)
	}
	if changed, err := os.ReadFile(parentPath); err != nil || !bytes.Equal(changed, parentBytes) {
		t.Fatalf("original dossier changed during immutable M6 attachment: err=%v", err)
	}

	var readStdout, readStderr bytes.Buffer
	code = run([]string{
		"dossier-read-m6", "--project-root", projectRoot,
		"--store-root", storeRoot, "--case-id", attached.CaseID,
		"--dossier-sha256", attached.DossierSHA256,
	}, &readStdout, &readStderr)
	if code != 0 {
		t.Fatalf("dossier-read-m6 exit=%d stdout=%q stderr=%q", code, readStdout.String(), readStderr.String())
	}
	var reopened dossierM6Output
	if err := json.Unmarshal(readStdout.Bytes(), &reopened); err != nil {
		t.Fatalf("decode dossier-read-m6 output: %v; output=%q", err, readStdout.String())
	}
	if reopened.Status != "REOPENED_EXACT_DOSSIER_AND_EXECUTION_CHAIN" || reopened.DossierSHA256 != attached.DossierSHA256 ||
		reopened.M6MetricsReceiptSHA256 != attached.M6MetricsReceiptSHA256 || reopened.CoreExprNodes != 233 {
		t.Fatalf("dossier-read-m6 output = %#v, want exact immutable successor and M4/M6 evidence reopen", reopened)
	}
}

// syntheticReadyDossierForCLI creates a fully valid but explicitly fictional
// dossier for exercising the CLI boundary. Its placeholder source, gate
// receipts, and exposition reviews are test data, not research or a real
// signed MathCase deliverable.
func syntheticReadyDossierForCLI() domain.Dossier {
	now := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	caseID, problemID := "synthetic-cli-case", "synthetic-cli-problem"
	claimID, sourceID, runID := "synthetic-cli-claim", "synthetic-cli-source", "synthetic-cli-run"
	proofSHA256 := strings.Repeat("a", 64)
	artifactSHA256 := strings.Repeat("c", 64)
	statement := "Synthetic fixture statement: every natural number equals itself."
	leanStatement := "forall (n : Nat), n = n"
	problem := domain.MathProblem{
		ID: problemID, Title: "Synthetic CLI fixture", Statement: statement,
		LeanStatement: leanStatement, SourceIDs: []string{sourceID},
	}
	statementSHA256, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		panic(err)
	}

	expositions := []domain.Exposition{
		{Tier: domain.TierHighSchool, Text: "A number is equal to itself.", CoreInsightID: "synthetic-self-equality", CoreInsight: "Equality is reflexive.", ProofRef: "synthetic-fixture.lean"},
		{Tier: domain.TierAssociate, Text: "For each natural number, the value remains unchanged when compared with itself.", CoreInsightID: "synthetic-self-equality", CoreInsight: "Equality is reflexive.", ProofRef: "synthetic-fixture.lean"},
		{Tier: domain.TierBachelor, Text: "The statement is an instance of reflexivity for the equality relation on natural numbers.", CoreInsightID: "synthetic-self-equality", CoreInsight: "Equality is reflexive.", ProofRef: "synthetic-fixture.lean"},
		{Tier: domain.TierMaster, Text: "For any natural number n, the term n inhabits the identity type n = n by reflexivity.", CoreInsightID: "synthetic-self-equality", CoreInsight: "Equality is reflexive.", ProofRef: "synthetic-fixture.lean"},
		{Tier: domain.TierDoctorate, Text: "The dependent identity type at n is inhabited by its canonical constructor, yielding the proposition for arbitrary n.", CoreInsightID: "synthetic-self-equality", CoreInsight: "Equality is reflexive.", ProofRef: "synthetic-fixture.lean"},
	}

	policy := domain.ExpositionEvaluationPolicy{
		Version: "synthetic-cli-policy-v1", MinimumRoundTripScore: 0.7,
		MinimumCanonScore: 0.7, MaximumNgramOverlap: 0,
		MaximumStructureOverlap: 0, TransferWeight: 0.7,
		ProgressWeight: 0.1, LengthExponent: 1,
	}
	policySHA256, err := policy.Digest()
	if err != nil {
		panic(err)
	}
	canonScores := make([]domain.ExpositionMoveScore, 0, len(domain.RequiredExpositionCanonMoves()))
	for _, move := range domain.RequiredExpositionCanonMoves() {
		canonScores = append(canonScores, domain.ExpositionMoveScore{Move: move, Score: 0.8})
	}

	evidenceIDs := []string{
		"synthetic-proof", "synthetic-rights", "synthetic-split", "synthetic-leakage", "synthetic-literature",
		"synthetic-v4-random", "synthetic-v4-smt", "synthetic-v4-negation", "synthetic-v5-ablation",
	}
	v3Review := v3ReviewForCLIFixture(problem, []string{"n"}, now)
	evidenceIDs = append(evidenceIDs, v3Review.EvidenceIDs()...)
	evaluations := make([]domain.ExpositionEvaluation, 0, len(expositions))
	for index, exposition := range expositions {
		roundTripID := fmt.Sprintf("synthetic-tier-%d-roundtrip", index+1)
		canonID := fmt.Sprintf("synthetic-tier-%d-canon", index+1)
		leakageID := fmt.Sprintf("synthetic-tier-%d-leakage", index+1)
		studentID := fmt.Sprintf("synthetic-tier-%d-student", index+1)
		evidenceIDs = append(evidenceIDs, roundTripID, canonID, leakageID, studentID)
		expositionSHA256, digestErr := domain.ExpositionDigest(exposition)
		if digestErr != nil {
			panic(digestErr)
		}
		wordCount := len(strings.Fields(exposition.Text))
		const targetLift, transferLift, progressLift = 0.3, 0.3, 0.1
		score := ((1-policy.TransferWeight)*targetLift + policy.TransferWeight*transferLift + policy.ProgressWeight*progressLift) / math.Pow(float64(wordCount), policy.LengthExponent)
		evaluations = append(evaluations, domain.ExpositionEvaluation{
			Tier: exposition.Tier, AuthorCallID: "synthetic-cli-author-call", ProblemID: problemID,
			ProofSHA256: proofSHA256, ExpositionSHA256: expositionSHA256,
			CanonSnapshotSHA256: strings.Repeat("b", 64), PolicySHA256: policySHA256, Policy: policy,
			AuthorModelID: "synthetic-author", AuthorModelVersion: "fixture-v1",
			RoundTrip: domain.ExpositionRoundTripReview{
				ModelID: "synthetic-roundtrip", ModelVersion: "fixture-v1", Frozen: true, Score: 0.9,
				RequiredFacts: []string{"synthetic statement"}, RecoveredFacts: []string{"synthetic statement"}, EvidenceID: roundTripID,
			},
			Canon:   domain.ExpositionCanonReview{ModelID: "synthetic-canon", ModelVersion: "fixture-v1", Frozen: true, Scores: canonScores, EvidenceID: canonID},
			Leakage: domain.ExpositionLeakageAudit{Method: "synthetic-test-only", Passed: true, EvidenceID: leakageID},
			Student: domain.ExpositionStudentLift{
				ModelID: "synthetic-student", ModelVersion: "fixture-v1", Frozen: true, AttemptBudget: 1,
				TargetBaseline: 0.1, TargetWithExposition: 0.4, TransferBaseline: 0.1,
				TransferWithExposition: 0.4, ProgressLift: progressLift, EvidenceID: studentID,
			},
			Accepted: true, Score: score, RecordedAt: now,
		})
	}

	evidence := make([]domain.Evidence, 0, len(evidenceIDs))
	for _, evidenceID := range evidenceIDs {
		evidence = append(evidence, domain.Evidence{
			ID: evidenceID, CaseID: caseID, ClaimID: claimID, SourceID: sourceID,
			Summary: "Synthetic CLI integration-test evidence; not a real research receipt.",
			Stance:  domain.StanceNeutral, Strength: 1, Independence: 1,
			AuditStatus: domain.AuditStatusAudited, AddedByRunID: runID, CreatedAt: now,
		})
	}
	verificationRecords := make([]domain.VerificationRecord, 0, 7)
	for _, gate := range []domain.VerificationGate{
		domain.GateKernelBuild, domain.GateAxiomAudit, domain.GateStatementFidelity,
		domain.GateFalsification, domain.GateEssentiality, domain.GateProvenanceLeakage,
		domain.GateLiteratureAndStatus,
	} {
		record := domain.VerificationRecord{
			Gate: gate, Status: domain.VerificationPassed,
			Summary:     "Synthetic CLI fixture only; V3-V7 caller claims remain blocked pending reopened receipts.",
			EvidenceIDs: []string{"synthetic-proof"}, ProblemID: problemID,
			ProblemStatementSHA256: statementSHA256, RecordedAt: now,
		}
		if gate != domain.GateKernelBuild && gate != domain.GateAxiomAudit {
			record.Status = domain.VerificationBlocked
		}
		switch gate {
		case domain.GateKernelBuild:
			record.ProofSHA256 = proofSHA256
			record.LeanToolchain = "leanprover/lean4:v4.33.1"
			record.ExpectedLeanToolchain = record.LeanToolchain
		case domain.GateAxiomAudit, domain.GateEssentiality:
			record.ProofSHA256 = proofSHA256
			if gate == domain.GateEssentiality {
				record.EvidenceIDs = []string{"synthetic-v5-ablation"}
				record.Essentiality = &domain.V5EssentialityAudit{Ablations: []domain.V5LemmaAblation{{
					LemmaID: "synthetic-lemma", Attempted: true, SearchCompleted: true,
					AblatedSourceSHA256: strings.Repeat("d", 64), EvidenceID: "synthetic-v5-ablation",
				}}}
			}
		case domain.GateStatementFidelity:
			record.Status = domain.VerificationBlocked
			record.Summary = "V3 is blocked pending authenticated review and exact-instance Lean probe receipts."
			record.ReviewerID = v3Review.SemanticComparison.ReviewerID
			record.StatementFidelity = v3Review
			record.EvidenceIDs = v3Review.EvidenceIDs()
		case domain.GateFalsification:
			record.EvidenceIDs = []string{"synthetic-v4-random", "synthetic-v4-smt", "synthetic-v4-negation"}
			record.Falsification = &domain.V4FalsificationAudit{
				HypothesesSatisfiable: true, HypothesisEvidenceID: "synthetic-v4-random",
				RandomizedCheckStatus: domain.V4RandomizedSamplesPass, RandomizedTestsRun: 12, RandomizedEvidenceID: "synthetic-v4-random",
				SMTSearchStatus: domain.V4SMTUnsat, SMTEvidenceID: "synthetic-v4-smt",
				NegationSearchStatus: domain.V4NegationNoCounterexample, NegationSearchEvidenceIDs: []string{"synthetic-v4-negation"},
			}
		case domain.GateProvenanceLeakage:
			record.ArtifactSHA256 = artifactSHA256
			record.DatasetSplitSHA256 = strings.Repeat("d", 64)
			record.DatasetSplitEvidenceID = "synthetic-split"
			record.LeakageAuditEvidenceID = "synthetic-leakage"
			record.SourceIDs = []string{sourceID}
			record.ReviewerID = "synthetic-reviewer-v6"
			record.EvidenceIDs = []string{"synthetic-rights", "synthetic-split", "synthetic-leakage"}
			record.SourceRightsAudits = []domain.SourceRightsAudit{{
				SourceID: sourceID, RightsEvidenceID: "synthetic-rights", RightsStatus: "CLEARED",
				License:      "Apache-2.0 (synthetic fixture label)",
				RequiredUses: []string{"LOCAL_STORAGE"}, AllowedUses: []string{"LOCAL_STORAGE"},
			}}
		case domain.GateLiteratureAndStatus:
			record.EvidenceIDs = []string{"synthetic-literature"}
			record.ReviewerID = "synthetic-reviewer-v7"
			record.Novelty = domain.NoveltyKnownSolution
			record.Searches = []domain.LiteratureSearchRecord{{
				Database: "synthetic-fixture-only", Query: "synthetic CLI fixture", SearchedAt: now, EvidenceID: "synthetic-literature",
			}}
			record.Findings = []string{"Synthetic test data; makes no mathematical priority claim."}
		}
		if gate != domain.GateKernelBuild && gate != domain.GateAxiomAudit {
			for _, evidenceID := range record.EvidenceIDs {
				digest := sha256.Sum256([]byte("synthetic gate artifact: " + evidenceID))
				record.EvidenceArtifacts = append(record.EvidenceArtifacts, domain.EvidenceArtifactRef{
					EvidenceID: evidenceID, ArtifactSHA256: hex.EncodeToString(digest[:]),
				})
			}
		}
		verificationRecords = append(verificationRecords, record)
	}

	return domain.Dossier{
		SchemaVersion:         domain.DossierSchemaVersion,
		CatalogSnapshotSHA256: v3Review.Source.CatalogSnapshotSHA256,
		M4Receipt: &domain.M4ReceiptReference{
			EvidenceID: "synthetic-proof", ReceiptSHA256: strings.Repeat("e", 64),
		},
		Case: domain.Case{
			ID: caseID, Question: "Synthetic test question only.", Status: domain.CaseStatusCompleted,
			Phase: domain.PhaseComplete, OwnerUID: "synthetic-test-owner", CreatedAt: now, UpdatedAt: now, Version: 1,
		},
		Problem:                  problem,
		ProvenanceArtifactSHA256: artifactSHA256,
		Claims: []domain.Claim{{
			ID: claimID, CaseID: caseID, Text: "Synthetic fixture claim.", Importance: domain.PriorityP0,
			Status: domain.ClaimStatusSupported, Assessment: domain.Assessment{Confidence: 1, Rationale: "Synthetic fixture only."},
			EvidenceIDs: []string{"synthetic-proof"}, CreatedAt: now, UpdatedAt: now,
		}},
		Sources: []domain.Source{{
			ID: sourceID, CaseID: caseID, URL: "https://example.invalid/mathcase-synthetic-fixture",
			Title: "Synthetic test source placeholder", SourceType: domain.SourceTypeOther,
			FetchStatus: domain.FetchStatusPending, AuditStatus: domain.AuditStatusAudited,
		}},
		Evidence: evidence,
		Attempts: []domain.SolverAttempt{{
			ID: "synthetic-cli-attempt", RunID: runID, ProblemID: problemID,
			CandidateID: "synthetic-cli-candidate", Stage: domain.SolverStageS0,
			Toolchain: "leanprover/lean4:v4.33.1", VerifiedProofSHA256: proofSHA256,
			Outcome: domain.SolverOutcomePass, StartedAt: now, FinishedAt: now.Add(time.Second),
			EvidenceIDs: []string{"synthetic-proof"},
		}},
		Argument: domain.Argument{
			ClaimID: claimID, CoreInsight: "Synthetic fixture insight: equality is reflexive.",
			Text: "Synthetic fixture argument only.", EvidenceIDs: []string{"synthetic-proof"},
			CreatedAt: now, CreatedByRun: runID,
		},
		Verifications: verificationRecords, Expositions: expositions,
		ExpositionEvaluations: evaluations,
		Verdict: domain.Verdict{
			Status: domain.VerdictProven, Summary: "Synthetic test fixture only; not a mathematical result.",
			EvidenceIDs: []string{"synthetic-proof"}, RecordedAt: now,
		},
	}
}

func writeVerificationEvidenceArtifacts(t *testing.T, root string, dossier domain.Dossier) {
	t.Helper()
	if err := os.Mkdir(root, 0o700); err != nil {
		t.Fatalf("create evidence root: %v", err)
	}
	seen := make(map[string]struct{})
	for _, record := range dossier.Verifications {
		for _, artifact := range record.EvidenceArtifacts {
			if _, exists := seen[artifact.EvidenceID]; exists {
				continue
			}
			seen[artifact.EvidenceID] = struct{}{}
			data := []byte("synthetic gate artifact: " + artifact.EvidenceID)
			if got := sha256TextForTest(string(data)); got != artifact.ArtifactSHA256 {
				t.Fatalf("fixture artifact %q digest = %s, want %s", artifact.EvidenceID, got, artifact.ArtifactSHA256)
			}
			if err := os.WriteFile(filepath.Join(root, artifact.EvidenceID+".artifact"), data, 0o600); err != nil {
				t.Fatalf("write evidence artifact %q: %v", artifact.EvidenceID, err)
			}
		}
	}
}

func v3ReviewForCLIFixture(problem domain.MathProblem, naturalParameters []string, at time.Time) *domain.V3StatementFidelity {
	const snapshotSHA256 = "cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc"
	const sourceSHA256 = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	const leanFileSHA256 = "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"
	review := &domain.V3StatementFidelity{
		Source: domain.V3SourceStatementPin{
			URL: "https://example.invalid/synthetic-catalog", ItemLocator: problem.ID,
			Revision: "synthetic-catalog-revision", RawItemSHA256: sourceSHA256,
			CatalogSnapshotSHA256: snapshotSHA256, Statement: problem.Statement, EvidenceID: "synthetic-v3-source",
		},
		Lean: domain.V3LeanStatementPin{
			AuthorID: "synthetic-formalizer", Revision: "synthetic-lean-revision", FileLocator: "Synthetic.lean",
			DeclarationName: "synthetic_statement", SourceFileSHA256: leanFileSHA256,
			NormalizedStatement:       problem.LeanStatement,
			NormalizedStatementSHA256: sha256TextForTest(problem.LeanStatement), EvidenceID: "synthetic-v3-lean",
		},
		BackTranslation: domain.V3BackTranslation{
			Text: "Every natural number is equal to itself.", ProducedByID: "synthetic-backtranslator",
			Role: domain.V3BackTranslationWitnessRole, RecordedAt: at, EvidenceID: "synthetic-v3-backtranslation",
		},
		SemanticComparison: domain.V3SemanticComparison{
			Status: domain.V3SemanticPass, Differences: []domain.V3SemanticDifference{},
			Rationale:             "The synthetic witness preserves the exact self-equality statement.",
			UnresolvedAssumptions: []string{}, ReviewerID: "synthetic-reviewer-v3", HumanSpotReview: true,
			ReviewerAccepted: true, RecordedAt: at, EvidenceID: "synthetic-v3-semantic",
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
					EvidenceID: "synthetic-v3-" + parameter + "-" + value,
				})
			}
		}
	}
	review.BoundaryProbes = append(review.BoundaryProbes, domain.V3BoundaryProbe{
		Kind: domain.V3BoundaryEmptyObject, ParameterID: "objects", Value: "empty",
		Outcome: domain.V3BoundaryNotApplicable, Rationale: "The statement has no set or object parameter with an empty case.", EvidenceID: "synthetic-v3-empty",
	})
	return review
}

func sha256TextForTest(value string) string {
	digest := sha256.Sum256([]byte(value))
	return hex.EncodeToString(digest[:])
}

func naturalParametersForCLITest(leanStatement string) []string {
	pattern := regexp.MustCompile(`(?:\(([^()]*)\)|([A-Za-z][A-Za-z0-9_]*))\s*:\s*Nat`)
	seen := make(map[string]struct{})
	var result []string
	for _, match := range pattern.FindAllStringSubmatch(leanStatement, -1) {
		names := match[1]
		if names == "" {
			names = match[2]
		}
		for _, name := range strings.Fields(names) {
			if _, exists := seen[name]; exists {
				continue
			}
			seen[name] = struct{}{}
			result = append(result, name)
		}
	}
	return result
}

func TestDossierAuditSummarizesValidIncompleteDraftWithoutMutation(t *testing.T) {
	dossier := minimalDossierForCLI()
	data, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	path := filepath.Join(t.TempDir(), "dossier.json")
	if err := os.WriteFile(path, data, 0o600); err != nil {
		t.Fatal(err)
	}
	var stdout, stderr bytes.Buffer
	if code := run([]string{"dossier-audit", "--dossier", path}, &stdout, &stderr); code != 1 {
		t.Fatalf("dossier-audit exit=%d stdout=%q stderr=%q; want valid-but-incomplete status", code, stdout.String(), stderr.String())
	}
	var result dossierAuditOutput
	if err := json.Unmarshal(stdout.Bytes(), &result); err != nil {
		t.Fatalf("decode dossier-audit output %q: %v", stdout.String(), err)
	}
	if result.SchemaVersion != "mathcase-dossier-audit-v2" || result.Status != "NOT_READY_FOR_DELIVERY" || result.DeliveryReady || result.CaseID != dossier.Case.ID || result.ProblemID != dossier.Problem.ID {
		t.Fatalf("dossier-audit result = %#v, want a valid but not-ready draft summary", result)
	}
	if result.M0CatalogSnapshot == nil || result.M0CatalogSnapshot.Status != "MISSING" {
		t.Fatalf("dossier-audit M0 snapshot = %#v, want explicit MISSING status", result.M0CatalogSnapshot)
	}
	if len(result.GateStatuses) != 7 || len(result.ExpositionTiers) != 5 || !strings.Contains(result.DeliveryRefusal, "Lean statement is required") {
		t.Fatalf("dossier-audit summary = %#v, want all seven gates, five tiers, and readiness refusal", result)
	}
	for _, gate := range result.GateStatuses {
		if gate.Status != "MISSING" {
			t.Fatalf("gate %s status = %q, want MISSING", gate.Gate, gate.Status)
		}
	}
	after, err := os.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	if !bytes.Equal(data, after) {
		t.Fatal("dossier-audit mutated the input dossier")
	}
}

func TestDossierAuditReportsM7BlockAndBootstrapCalibrationApplicability(t *testing.T) {
	dossier := minimalDossierForCLI()
	dossier.ClaimClass = domain.ClaimClassBootstrapCalibration
	dossier.ClaimClassNote = domain.ClaimClassBootstrapNote
	dossier.CatalogSnapshotSHA256 = strings.Repeat("a", 64)
	dossier.Problem.M0Status = "PROVEN"
	data, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	dossierPath := filepath.Join(t.TempDir(), "bootstrap.json")
	if err := os.WriteFile(dossierPath, data, 0o600); err != nil {
		t.Fatal(err)
	}
	var stdout, stderr bytes.Buffer
	if code := run([]string{"dossier-audit", "--dossier", dossierPath}, &stdout, &stderr); code != 1 {
		t.Fatalf("dossier-audit exit=%d stdout=%q stderr=%q; want incomplete Bootstrap", code, stdout.String(), stderr.String())
	}
	var output dossierAuditOutput
	if err := json.Unmarshal(stdout.Bytes(), &output); err != nil {
		t.Fatalf("decode dossier-audit output: %v; output=%q", err, stdout.String())
	}
	if output.M7Evidence == nil || !output.M7Evidence.LegacyWithoutEvidence || output.M7Evidence.IntegrityVerified || output.M7Evidence.ExternalIdentityAuthenticated {
		t.Fatalf("M7 audit = %#v; want legacy evidence explicitly BLOCKED without integrity or authenticated identity", output.M7Evidence)
	}
	if output.Calibration == nil || output.Calibration.State != "INCOMPLETE" || output.Calibration.Signed {
		t.Fatalf("Bootstrap calibration audit = %#v; want unsigned INCOMPLETE state", output.Calibration)
	}
	if output.M0CatalogSnapshot == nil || output.M0CatalogSnapshot.Status != "MISSING" {
		t.Fatalf("Bootstrap M0 snapshot audit = %#v; want explicit missing evidence", output.M0CatalogSnapshot)
	}
	findApplicability := func(rows []dossierCalibrationGate, gate string) string {
		for _, row := range rows {
			if row.Gate == gate {
				return row.Applicability
			}
		}
		return ""
	}
	if findApplicability(output.Calibration.Modules, "M1") != "NOT_APPLICABLE" ||
		findApplicability(output.Calibration.Modules, "M4") != "REQUIRED" ||
		findApplicability(output.Calibration.Gates, "V3") != "REQUIRED" ||
		findApplicability(output.Calibration.Gates, "V7_NOVELTY") != "REQUIRED" ||
		findApplicability(output.Calibration.Gates, "V7") != "REQUIRED" {
		t.Fatalf("Bootstrap applicability is incomplete or unjustified: modules=%#v gates=%#v", output.Calibration.Modules, output.Calibration.Gates)
	}
	if calibrationGateStatus(output.Calibration.Gates, "V7_NOVELTY") != string(domain.NoveltyOpen) {
		t.Fatalf("Bootstrap V7 novelty status = %q; want OPEN, still required until a source-backed KNOWN_SOLUTION record exists",
			calibrationGateStatus(output.Calibration.Gates, "V7_NOVELTY"))
	}
	findModuleStatus := func(module string) string {
		for _, row := range output.Calibration.Modules {
			if row.Gate == module {
				return row.Status
			}
		}
		return ""
	}
	if findModuleStatus("M0") != "MISSING" || findModuleStatus("M4") != "NOT_VERIFIED" ||
		findModuleStatus("M7") != "BLOCKED_NO_EVIDENCE" || findModuleStatus("M8") != "NOT_READY_FOR_DELIVERY" {
		t.Fatalf("Bootstrap module statuses = %#v; want values from current M0/M4/M7/M8 readers", output.Calibration.Modules)
	}
	missing := strings.Join(output.Calibration.Missing, "\n")
	if !strings.Contains(missing, "M7 raw run/output evidence is not integrity-verified") ||
		!strings.Contains(missing, "M7 reviewer identity and independence are not authenticated") {
		t.Fatalf("calibration missing list = %#v; want both M7 evidence and identity blockers", output.Calibration.Missing)
	}
}

func TestAssessDossierCalibrationRequiresTypedEvidenceForRequiredModules(t *testing.T) {
	dossier, m0, m7 := completeSyntheticCalibrationInputs()
	leanExecution := &dossierLeanExecutionAudit{Status: "NOT_VERIFIED"}
	got := assessDossierCalibration(dossier, m0, leanExecution, m7, true)
	if got.State != dossierCalibrationIncomplete || got.Signed {
		t.Fatalf("assessDossierCalibration(M4 status %q) = state %q signed %t, want unsigned %q",
			leanExecution.Status, got.State, got.Signed, dossierCalibrationIncomplete)
	}
	if moduleStatus(got.Modules, "M4") != "NOT_VERIFIED" {
		t.Fatalf("assessDossierCalibration(M4 status %q) module status = %q, want reader status",
			leanExecution.Status, moduleStatus(got.Modules, "M4"))
	}
	if !strings.Contains(strings.Join(got.Missing, "\n"), "M4 execution-receipt reader status is NOT_VERIFIED") {
		t.Fatalf("assessDossierCalibration(M4 status %q) missing = %#v, want typed M4 blocker",
			leanExecution.Status, got.Missing)
	}
}

func TestAssessDossierCalibrationCanCompleteUnsignedFromAllEvidence(t *testing.T) {
	dossier, m0, m7 := completeSyntheticCalibrationInputs()
	leanExecution := &dossierLeanExecutionAudit{Status: "VERIFIED_EXECUTION_BOUND"}
	got := assessDossierCalibration(dossier, m0, leanExecution, m7, true)
	if got.State != dossierCalibrationComplete || got.Signed || len(got.Missing) != 0 {
		t.Fatalf("assessDossierCalibration(all typed evidence) = state %q signed %t missing=%#v, want unsigned %q with no missing items",
			got.State, got.Signed, got.Missing, dossierCalibrationComplete)
	}
	for _, expected := range []struct{ module, status string }{
		{module: "M0", status: "VERIFIED"},
		{module: "M4", status: "VERIFIED_EXECUTION_BOUND"},
		{module: "M7", status: "AUTHENTICATED_FIVE_TIER_ACCEPTED"},
		{module: "M8", status: "READY_FOR_DELIVERY"},
	} {
		if gotStatus := moduleStatus(got.Modules, expected.module); gotStatus != expected.status {
			t.Errorf("assessDossierCalibration(all typed evidence) module %s status = %q, want %q",
				expected.module, gotStatus, expected.status)
		}
	}
	if gotApplicability := gateApplicability(got.Gates, "V7_NOVELTY"); gotApplicability != "NOT_APPLICABLE" ||
		calibrationGateStatus(got.Gates, "V7_NOVELTY") != "NOT_APPLICABLE" {
		t.Errorf("assessDossierCalibration(KNOWN_SOLUTION) V7 novelty = %s/%s, want NOT_APPLICABLE/NOT_APPLICABLE",
			gotApplicability, calibrationGateStatus(got.Gates, "V7_NOVELTY"))
	}
}

func TestAssessDossierCalibrationRequiresAllFiveM7TiersAccepted(t *testing.T) {
	dossier, m0, m7 := completeSyntheticCalibrationInputs()
	for index := range dossier.ExpositionEvaluations {
		if dossier.ExpositionEvaluations[index].Tier == domain.TierDoctorate {
			dossier.ExpositionEvaluations[index] = domain.ExpositionEvaluation{
				Tier: domain.TierDoctorate, Accepted: false, Refusal: "synthetic refusal",
			}
		}
	}
	leanExecution := &dossierLeanExecutionAudit{Status: "VERIFIED_EXECUTION_BOUND"}
	got := assessDossierCalibration(dossier, m0, leanExecution, m7, true)
	if got.State != dossierCalibrationIncomplete {
		t.Fatalf("assessDossierCalibration(with one refused tier) = %q, want %q",
			got.State, dossierCalibrationIncomplete)
	}
	if gotStatus := moduleStatus(got.Modules, "M7"); gotStatus != "FIVE_TIER_NOT_ACCEPTED" {
		t.Fatalf("assessDossierCalibration(with one refused tier) M7 status = %q, want FIVE_TIER_NOT_ACCEPTED", gotStatus)
	}
}

func completeSyntheticCalibrationInputs() (domain.Dossier, *persistence.DossierCatalogSnapshotAudit, *expositor.M7DossierEvidenceAuditReport) {
	dossier := minimalDossierForCLI()
	dossier.ClaimClass = domain.ClaimClassBootstrapCalibration
	dossier.ClaimClassNote = domain.ClaimClassBootstrapNote
	dossier.CatalogSnapshotSHA256 = strings.Repeat("a", 64)
	dossier.Problem.M0Status = "PROVEN"
	dossier.M4Receipt = &domain.M4ReceiptReference{EvidenceID: "synthetic-m4", ReceiptSHA256: strings.Repeat("b", 64)}
	for _, gate := range dossierGateOrder {
		record := domain.VerificationRecord{Gate: gate, Status: domain.VerificationPassed}
		if gate == domain.GateLiteratureAndStatus {
			record.Novelty = domain.NoveltyKnownSolution
		}
		dossier.Verifications = append(dossier.Verifications, record)
	}
	for _, tier := range dossierTierOrder {
		dossier.ExpositionEvaluations = append(dossier.ExpositionEvaluations, domain.ExpositionEvaluation{
			Tier: tier, Accepted: true, Score: 1,
		})
	}
	m0 := &persistence.DossierCatalogSnapshotAudit{Status: "VERIFIED"}
	bundleAudit := &expositor.M7BundleEvidenceAuditReport{
		Disposition: expositor.M7AuditAuthenticated, IntegrityVerified: true, ExternalIdentityAuthenticated: true,
	}
	for _, tier := range dossierTierOrder {
		bundleAudit.Tiers = append(bundleAudit.Tiers, expositor.M7TierEvidenceAuditReport{Tier: tier})
	}
	m7 := &expositor.M7DossierEvidenceAuditReport{
		Disposition: expositor.M7AuditAuthenticated, IntegrityVerified: true,
		ExternalIdentityAuthenticated: true, BundleAudit: bundleAudit,
	}
	return dossier, m0, m7
}

func moduleStatus(modules []dossierCalibrationGate, module string) string {
	for _, row := range modules {
		if row.Gate == module {
			return row.Status
		}
	}
	return ""
}

func gateApplicability(gates []dossierCalibrationGate, gate string) string {
	for _, row := range gates {
		if row.Gate == gate {
			return row.Applicability
		}
	}
	return ""
}

func calibrationGateStatus(gates []dossierCalibrationGate, gate string) string {
	for _, row := range gates {
		if row.Gate == gate {
			return row.Status
		}
	}
	return ""
}

func TestDossierAuditRefusesTamperedGateEvidenceArtifact(t *testing.T) {
	dossier := syntheticReadyDossierForCLI()
	evidenceRoot := filepath.Join(t.TempDir(), "evidence")
	writeVerificationEvidenceArtifacts(t, evidenceRoot, dossier)
	artifactID := dossier.Verifications[2].EvidenceArtifacts[0].EvidenceID
	if err := os.WriteFile(filepath.Join(evidenceRoot, artifactID+".artifact"), []byte("tampered artifact"), 0o600); err != nil {
		t.Fatal(err)
	}
	dossierBytes, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	dossierPath := filepath.Join(t.TempDir(), "dossier.json")
	if err := os.WriteFile(dossierPath, dossierBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	var stdout, stderr bytes.Buffer
	if code := run([]string{"dossier-audit", "--dossier", dossierPath, "--evidence-root", evidenceRoot}, &stdout, &stderr); code != 1 {
		t.Fatalf("dossier-audit with tampered evidence exit=%d stdout=%q stderr=%q; want not-ready refusal", code, stdout.String(), stderr.String())
	}
	var result dossierAuditOutput
	if err := json.Unmarshal(stdout.Bytes(), &result); err != nil {
		t.Fatalf("decode audit output: %v", err)
	}
	if result.EvidenceArtifacts == nil || result.EvidenceArtifacts.Status != "FAILED" || result.EvidenceArtifacts.VerifiedCount >= result.EvidenceArtifacts.RequiredCount || result.DeliveryReady || !strings.Contains(result.DeliveryRefusal, "do not match") {
		t.Fatalf("audit result = %#v; want tampered artifact to fail readiness", result)
	}
}

func TestDossierAuditReconcilesQuotaFundedAuthorReceipt(t *testing.T) {
	dossier := syntheticReadyDossierForCLI()
	dossier.AuthorCallAccounting = nil
	receipt := domain.AgentRunReceipt{
		SchemaVersion: domain.AgentRunReceiptSchemaVersion,
		ReceiptID:     "f1377461-bfa3-4c54-93b1-09e6370f10a4",
		RecordedAtUTC: time.Date(2026, time.October, 20, 12, 30, 0, 0, time.UTC),
		Surface:       "Delegated worker quota",
		Model:         "synthetic-author",
		Target: domain.AgentRunTarget{
			ProblemID:             dossier.Problem.ID,
			CatalogSnapshotSHA256: strings.Repeat("e", 64),
		},
		Purpose: "reviewer/expositor",
		Verdict: "completed: synthetic fixture only",
		InputClearance: []domain.AgentRunInputClearance{{
			StatementID: dossier.Problem.ID,
			EvidenceID:  "synthetic-provider-clearance",
		}},
	}
	dossier.AuthorAgentRunReceipt = &receipt
	for index := range dossier.ExpositionEvaluations {
		dossier.ExpositionEvaluations[index].AuthorCallID = receipt.AuthorCallID()
		dossier.ExpositionEvaluations[index].AuthorModelID = receipt.Model
	}
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "gate V3 has not passed") {
		t.Fatalf("synthetic quota-funded dossier readiness = %v, want the unauthenticated V3 hold", err)
	}
	evidenceRoot := filepath.Join(t.TempDir(), "evidence")
	writeVerificationEvidenceArtifacts(t, evidenceRoot, dossier)

	dossierBytes, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	dossierPath := filepath.Join(t.TempDir(), "quota-dossier.json")
	if err := os.WriteFile(dossierPath, dossierBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	ledgerPath := filepath.Join(t.TempDir(), "agent-run-receipts.jsonl")
	receiptBytes, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(ledgerPath, append(receiptBytes, '\n'), 0o600); err != nil {
		t.Fatal(err)
	}

	t.Run("receipt ledger required", func(t *testing.T) {
		var stdout, stderr bytes.Buffer
		if code := run([]string{"dossier-audit", "--dossier", dossierPath, "--evidence-root", evidenceRoot}, &stdout, &stderr); code != 1 {
			t.Fatalf("dossier-audit without run ledger exit=%d stdout=%q stderr=%q; want reconciliation refusal", code, stdout.String(), stderr.String())
		}
		var result dossierAuditOutput
		if err := json.Unmarshal(stdout.Bytes(), &result); err != nil {
			t.Fatalf("decode audit output: %v", err)
		}
		if result.AgentRunReceipt == nil || result.AgentRunReceipt.LedgerReconciled {
			t.Fatalf("audit = %#v; want present but unreconciled quota receipt", result)
		}
	})

	t.Run("matching ledger accepted", func(t *testing.T) {
		var stdout, stderr bytes.Buffer
		if code := run([]string{"dossier-audit", "--dossier", dossierPath, "--agent-run-ledger", ledgerPath, "--evidence-root", evidenceRoot}, &stdout, &stderr); code != 1 {
			t.Fatalf("dossier-audit with matching run ledger exit=%d stdout=%q stderr=%q; want synthetic execution refused", code, stdout.String(), stderr.String())
		}
		var result dossierAuditOutput
		if err := json.Unmarshal(stdout.Bytes(), &result); err != nil {
			t.Fatalf("decode audit output: %v", err)
		}
		if result.Status != "NOT_READY_FOR_DELIVERY" || result.DeliveryReady || result.LeanExecution == nil || result.LeanExecution.Status != "NOT_VERIFIED" || result.AgentRunReceipt == nil || !result.AgentRunReceipt.LedgerReconciled || result.Accounting != nil {
			t.Fatalf("audit = %#v; want reconciled quota ledger but no readiness without Lean execution", result)
		}
	})

	t.Run("altered ledger rejected", func(t *testing.T) {
		altered := receipt
		altered.Verdict = "completed: different run content"
		line, err := json.Marshal(altered)
		if err != nil {
			t.Fatal(err)
		}
		alteredPath := filepath.Join(t.TempDir(), "altered-agent-run-receipts.jsonl")
		if err := os.WriteFile(alteredPath, append(line, '\n'), 0o600); err != nil {
			t.Fatal(err)
		}
		var stdout, stderr bytes.Buffer
		if code := run([]string{"dossier-audit", "--dossier", dossierPath, "--agent-run-ledger", alteredPath, "--evidence-root", evidenceRoot}, &stdout, &stderr); code != 1 {
			t.Fatalf("dossier-audit with altered ledger exit=%d stdout=%q stderr=%q; want refusal", code, stdout.String(), stderr.String())
		}
		var result dossierAuditOutput
		if err := json.Unmarshal(stdout.Bytes(), &result); err != nil {
			t.Fatalf("decode audit output: %v", err)
		}
		if result.DeliveryReady || result.AgentRunReceipt == nil || result.AgentRunReceipt.LedgerReconciled || !strings.Contains(result.AgentRunReceipt.ReconciliationError, "differs from the dossier") {
			t.Fatalf("audit = %#v; want exact receipt mismatch refusal", result)
		}
	})
}

func TestDossierAuditRejectsUnknownFieldsTrailingDocumentsAndUnsupportedSchema(t *testing.T) {
	valid, err := json.Marshal(minimalDossierForCLI())
	if err != nil {
		t.Fatal(err)
	}
	unknown := strings.TrimSuffix(string(valid), "}") + `,"unexpected":"value"}`
	unsupported := strings.Replace(string(valid), domain.DossierSchemaVersion, "mathcase-dossier-v3", 1)
	for _, test := range []struct {
		name string
		data string
	}{
		{name: "unknown field", data: unknown},
		{name: "trailing document", data: string(valid) + `{}`},
		{name: "unsupported schema", data: unsupported},
	} {
		t.Run(test.name, func(t *testing.T) {
			path := filepath.Join(t.TempDir(), "dossier.json")
			if err := os.WriteFile(path, []byte(test.data), 0o600); err != nil {
				t.Fatal(err)
			}
			var stdout, stderr bytes.Buffer
			if code := run([]string{"dossier-audit", "--dossier", path}, &stdout, &stderr); code != 2 || stdout.Len() != 0 {
				t.Fatalf("dossier-audit exit=%d stdout=%q stderr=%q; want strict refusal", code, stdout.String(), stderr.String())
			}
		})
	}
}

func TestDossierVerifyRefusesUnsignedDraftBeforeSignatureValidation(t *testing.T) {
	storeRoot := filepath.Join(t.TempDir(), "store")
	store, err := persistence.NewDossierStore(storeRoot)
	if err != nil {
		t.Fatal(err)
	}
	dossier := minimalDossierForCLI()
	receipt, err := store.Put(context.Background(), dossier)
	if err != nil {
		t.Fatalf("store incomplete draft fixture: %v", err)
	}
	publicKey := make(ed25519.PublicKey, ed25519.PublicKeySize)
	keyring := trustedSignerKeyringFile{
		SchemaVersion: "mathcase-trusted-signers-v1",
		Signers: []trustedSignerKeyFile{{
			SignerID: "reviewer-test", PublicKeyBase64: base64.StdEncoding.EncodeToString(publicKey),
		}},
	}
	keyringBytes, err := json.Marshal(keyring)
	if err != nil {
		t.Fatal(err)
	}
	keyringPath := filepath.Join(t.TempDir(), "trusted-signers.json")
	if err := os.WriteFile(keyringPath, keyringBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	var stdout, stderr bytes.Buffer
	args := []string{
		"dossier-verify", "--store-root", storeRoot,
		"--case-id", receipt.CaseID, "--dossier-sha256", receipt.ContentSHA256,
		"--signer-id", "reviewer-test", "--trusted-signers", keyringPath,
		"--cost-ledger", filepath.Join(t.TempDir(), "missing-cost-ledger.jsonl"),
		"--lean-receipt-root", filepath.Join(t.TempDir(), "missing-lean-receipts"),
		"--catalog-snapshot", filepath.Join(t.TempDir(), "catalog.snapshot.json"),
	}
	if code := run(args, &stdout, &stderr); code != 2 || stdout.Len() != 0 || !strings.Contains(stderr.String(), "not structurally ready") {
		t.Fatalf("dossier-verify exit=%d stdout=%q stderr=%q; want unsigned draft refused before signature validation", code, stdout.String(), stderr.String())
	}
}

func TestDossierCommandHelpIsReadOnly(t *testing.T) {
	for _, command := range []struct {
		name      string
		want      string
		alsoWants []string
	}{
		{name: "dossier-audit", want: "-catalog-snapshot", alsoWants: []string{"-m7-identity-trust"}},
		{name: "dossier-verify", want: "-catalog-snapshot", alsoWants: []string{"-m7-identity-trust"}},
		{name: "dossier-revise-m4", want: "-lean-receipt"},
	} {
		t.Run(command.name, func(t *testing.T) {
			var stdout, stderr bytes.Buffer
			if code := run([]string{command.name, "--help"}, &stdout, &stderr); code != 0 {
				t.Fatalf("%s --help exit=%d stderr=%q; want 0", command.name, code, stderr.String())
			}
			if stdout.Len() != 0 || !strings.Contains(stderr.String(), command.want) {
				t.Fatalf("%s --help output stdout=%q stderr=%q; want options and no action", command.name, stdout.String(), stderr.String())
			}
			for _, want := range command.alsoWants {
				if !strings.Contains(stderr.String(), want) {
					t.Fatalf("%s --help stderr=%q; want %s", command.name, stderr.String(), want)
				}
			}
		})
	}
}

func TestDossierAuditRejectsMalformedM7IdentityTrustRegistry(t *testing.T) {
	dossierBytes, err := json.Marshal(minimalDossierForCLI())
	if err != nil {
		t.Fatal(err)
	}
	root := t.TempDir()
	dossierPath := filepath.Join(root, "dossier.json")
	registryPath := filepath.Join(root, "m7-identity-trust.json")
	if err := os.WriteFile(dossierPath, dossierBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(registryPath, []byte(`{"schema_version":"unsupported","entries":[]}`), 0o600); err != nil {
		t.Fatal(err)
	}
	var stdout, stderr bytes.Buffer
	code := run([]string{"dossier-audit", "--dossier", dossierPath, "--m7-identity-trust", registryPath}, &stdout, &stderr)
	if code != 2 || stdout.Len() != 0 || !strings.Contains(stderr.String(), "load M7 identity trust registry") {
		t.Fatalf("dossier-audit with malformed M7 identity registry exit=%d stdout=%q stderr=%q; want fail-closed input refusal", code, stdout.String(), stderr.String())
	}
}

func TestSyntheticEvidenceCannotReachReadyWithoutLeanExecutionReceipt(t *testing.T) {
	dossier := syntheticReadyDossierForCLI()
	evidenceRoot := filepath.Join(t.TempDir(), "evidence")
	writeVerificationEvidenceArtifacts(t, evidenceRoot, dossier)
	costLedgerPath := filepath.Join(t.TempDir(), "synthetic-cost-ledger.jsonl")
	receipt := writeSyntheticCLICostReceipt(t, costLedgerPath)
	dossier.AuthorCallAccounting = &receipt
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "gate V3 has not passed") {
		t.Fatalf("synthetic fixture readiness = %v, want the unauthenticated V3 hold before execution audit", err)
	}
	encoded, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	dossierPath := filepath.Join(t.TempDir(), "synthetic-dossier.json")
	if err := os.WriteFile(dossierPath, encoded, 0o600); err != nil {
		t.Fatal(err)
	}
	var stdout, stderr bytes.Buffer
	args := []string{"dossier-audit", "--dossier", dossierPath, "--cost-ledger", costLedgerPath, "--evidence-root", evidenceRoot}
	if code := run(args, &stdout, &stderr); code != 1 {
		t.Fatalf("dossier-audit exit=%d stdout=%q stderr=%q; want synthetic evidence refused", code, stdout.String(), stderr.String())
	}
	var audit dossierAuditOutput
	if err := json.Unmarshal(stdout.Bytes(), &audit); err != nil {
		t.Fatalf("decode dossier-audit output %q: %v", stdout.String(), err)
	}
	if audit.Status != "NOT_READY_FOR_DELIVERY" || audit.DeliveryReady || audit.LeanExecution == nil || audit.LeanExecution.Status != "NOT_VERIFIED" || !strings.Contains(audit.DeliveryRefusal, "--lean-receipt-root") {
		t.Fatalf("synthetic dossier audit = %#v; want explicit refusal without actual Lean execution receipt", audit)
	}
}

func TestM8SigningAndSignedStorageRequireReopenedEvidence(t *testing.T) {
	dossier := domain.Dossier{}

	if _, err := persistence.SignReadyDossier(dossier, "synthetic-test-signer", time.Now().UTC(), ed25519.PrivateKey(nil)); err == nil || !strings.Contains(err.Error(), "reopened M8 evidence") {
		t.Fatalf("SignReadyDossier() without external evidence = %v, want provenance refusal before key validation", err)
	}

	storeRoot := filepath.Join(t.TempDir(), "signed-store")
	store, err := persistence.NewDossierStore(storeRoot)
	if err != nil {
		t.Fatal(err)
	}
	if _, err := store.PutSigned(context.Background(), dossier, persistence.DossierSignature{}, nil); err == nil || !strings.Contains(err.Error(), "reopened M8 evidence") {
		t.Fatalf("PutSigned() without external evidence = %v, want provenance refusal before signed storage", err)
	}
	if _, err := os.Stat(filepath.Join(storeRoot, "cases")); !os.IsNotExist(err) {
		t.Fatalf("failed PutSigned() created a dossier path before evidence verification: %v", err)
	}
}

func TestM8ReadinessRejectsHashOnlyV3BeforeReceiptReconciliation(t *testing.T) {
	dossier := syntheticReadyDossierForCLI()
	for index := range dossier.Verifications {
		switch dossier.Verifications[index].Gate {
		case domain.GateStatementFidelity:
			dossier.Verifications[index].Status = domain.VerificationPassed
		case domain.GateFalsification, domain.GateEssentiality, domain.GateProvenanceLeakage, domain.GateLiteratureAndStatus:
			dossier.Verifications[index].Status = domain.VerificationPending
		}
	}
	if _, err := persistence.VerifyDossierEvidence(dossier, persistence.DossierEvidencePaths{}); err == nil || !strings.Contains(err.Error(), "refuse M8 readiness for V3 PASSED claim") {
		t.Fatalf("VerifyDossierEvidence() with hash-only V3 artifacts = %v, want V3 provenance refusal", err)
	}
}

func TestOverCeilingM7ReceiptIsAuditableButRefusedForAuditAndSignedVerify(t *testing.T) {
	dossier := syntheticReadyDossierForCLI()
	evidenceRoot := filepath.Join(t.TempDir(), "evidence")
	writeVerificationEvidenceArtifacts(t, evidenceRoot, dossier)
	costLedgerPath := filepath.Join(t.TempDir(), "synthetic-over-ceiling-ledger.jsonl")
	receipt := writeSyntheticOverCeilingCLICostReceipt(t, costLedgerPath, dossier.Problem.ID)
	if err := budget.VerifyCostCallReceiptJSONL(costLedgerPath, receipt); err != nil {
		t.Fatalf("over-ceiling receipt should still reconcile to its structurally valid journal: %v", err)
	}
	dossier.AuthorCallAccounting = &receipt
	for index := range dossier.Verifications {
		switch dossier.Verifications[index].Gate {
		case domain.GateStatementFidelity:
			dossier.Verifications[index].Status = domain.VerificationPending
			dossier.Verifications[index].StatementFidelity = nil
		case domain.GateFalsification:
			dossier.Verifications[index].Status = domain.VerificationPending
			dossier.Verifications[index].Falsification = nil
		case domain.GateEssentiality:
			dossier.Verifications[index].Status = domain.VerificationPending
			dossier.Verifications[index].Essentiality = nil
		case domain.GateProvenanceLeakage, domain.GateLiteratureAndStatus:
			dossier.Verifications[index].Status = domain.VerificationPending
		}
	}
	if err := dossier.Validate(); err != nil {
		t.Fatalf("over-ceiling receipt should remain structurally auditable: %v", err)
	}
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "exceeds cost ceiling") {
		t.Fatalf("ValidateReadyForDelivery() error = %v, want successful M7 over-ceiling refusal", err)
	}

	dossierBytes, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	dossierPath := filepath.Join(t.TempDir(), "synthetic-over-ceiling-dossier.json")
	if err := os.WriteFile(dossierPath, dossierBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	var auditStdout, auditStderr bytes.Buffer
	if code := run([]string{"dossier-audit", "--dossier", dossierPath, "--cost-ledger", costLedgerPath, "--evidence-root", evidenceRoot}, &auditStdout, &auditStderr); code != 1 {
		t.Fatalf("dossier-audit over-ceiling exit=%d stdout=%q stderr=%q; want not-ready refusal", code, auditStdout.String(), auditStderr.String())
	}
	var audit dossierAuditOutput
	if err := json.Unmarshal(auditStdout.Bytes(), &audit); err != nil {
		t.Fatalf("decode dossier-audit output %q: %v", auditStdout.String(), err)
	}
	if audit.Status != "NOT_READY_FOR_DELIVERY" || audit.DeliveryReady || audit.Accounting == nil || audit.Accounting.LedgerReconciled || !strings.Contains(audit.DeliveryRefusal, "exceeds cost ceiling") {
		t.Fatalf("over-ceiling audit = %#v; want readiness refusal without a reconciled/ready claim", audit)
	}

	storeRoot := filepath.Join(t.TempDir(), "synthetic-over-ceiling-store")
	store, err := persistence.NewDossierStore(storeRoot)
	if err != nil {
		t.Fatal(err)
	}
	stored, err := store.Put(context.Background(), dossier)
	if err != nil {
		t.Fatalf("store structurally valid over-ceiling dossier for read-time refusal test: %v", err)
	}
	const signerID = "synthetic-over-ceiling-reviewer"
	// A public-only keyring is enough to reach the readiness gate. The CLI
	// must refuse before looking for a detached signature or invoking signing.
	publicKey := make(ed25519.PublicKey, ed25519.PublicKeySize)
	keyring := trustedSignerKeyringFile{
		SchemaVersion: "mathcase-trusted-signers-v1",
		Signers: []trustedSignerKeyFile{{
			SignerID: signerID, PublicKeyBase64: base64.StdEncoding.EncodeToString(publicKey),
		}},
	}
	keyringBytes, err := json.Marshal(keyring)
	if err != nil {
		t.Fatal(err)
	}
	keyringPath := filepath.Join(t.TempDir(), "synthetic-over-ceiling-trusted-signers.json")
	if err := os.WriteFile(keyringPath, keyringBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	verifyArgs := []string{
		"dossier-verify", "--store-root", storeRoot,
		"--case-id", dossier.Case.ID, "--dossier-sha256", stored.ContentSHA256,
		"--signer-id", signerID, "--trusted-signers", keyringPath,
		"--cost-ledger", costLedgerPath,
		"--evidence-root", evidenceRoot,
		"--lean-receipt-root", filepath.Join(t.TempDir(), "missing-lean-receipts"),
		"--catalog-snapshot", filepath.Join(t.TempDir(), "missing-catalog-snapshot.json"),
	}
	var verifyStdout, verifyStderr bytes.Buffer
	if code := run(verifyArgs, &verifyStdout, &verifyStderr); code != 2 || verifyStdout.Len() != 0 || !strings.Contains(verifyStderr.String(), "exceeds cost ceiling") {
		t.Fatalf("dossier-verify over-ceiling exit=%d stdout=%q stderr=%q; want signed-readiness refusal", code, verifyStdout.String(), verifyStderr.String())
	}
}

func writeSyntheticCLICostReceipt(t *testing.T, path string) budget.CostCallReceipt {
	t.Helper()
	limits := budget.Limits{MaxRunMicros: 1000, MaxSessionMicros: 1000, MaxCandidateMicros: 1000}
	session, err := budget.OpenCostSession(path, limits)
	if err != nil {
		t.Fatal(err)
	}
	run, err := session.RunBudgetFor("synthetic-cli-run")
	if err != nil {
		t.Fatal(err)
	}
	reservation, err := run.Reserve(100)
	if err != nil {
		t.Fatal(err)
	}
	callID := "synthetic-cli-author-call"
	started := time.Date(2026, time.October, 20, 12, 15, 0, 0, time.UTC)
	start := budget.CostRecord{
		ID: callID, CallState: budget.CallStarted, RunID: "synthetic-cli-run",
		ProviderID: "synthetic-provider", AccountProfile: "synthetic-account",
		Model: "synthetic-author", ModelVersion: "fixture-v1", TaskID: budget.TaskM7Expositor,
		CandidateID: "synthetic-cli-problem", ProviderCallID: callID, StartedAt: started,
		CostCeilingMicros: 100, EstimatedCostMicros: 100,
	}
	if err := session.Journal().BeginCall(start); err != nil {
		t.Fatal(err)
	}
	finish := start
	finish.CallState = budget.CallFinished
	finish.FinishedAt = started.Add(2 * time.Second)
	finish.Latency = 2 * time.Second
	finish.ProviderOutcome = "returned"
	finish.GenerationOutcome = "complete"
	finish.DecoderOutcome = "accepted"
	if err := session.Journal().FinishCall(finish); err != nil {
		t.Fatal(err)
	}
	if err := reservation.Commit(100); err != nil {
		t.Fatal(err)
	}
	receipt, err := session.CallReceipt(callID)
	if err != nil {
		t.Fatal(err)
	}
	if err := session.Close(); err != nil {
		t.Fatal(err)
	}
	return receipt
}

func writeSyntheticOverCeilingCLICostReceipt(t *testing.T, path, problemID string) budget.CostCallReceipt {
	t.Helper()
	limits := budget.Limits{MaxRunMicros: 1000, MaxSessionMicros: 1000, MaxCandidateMicros: 1000}
	session, err := budget.OpenCostSession(path, limits)
	if err != nil {
		t.Fatal(err)
	}
	closed := false
	t.Cleanup(func() {
		if !closed {
			_ = session.Close()
		}
	})
	run, err := session.RunBudgetFor("synthetic-overrun-run")
	if err != nil {
		t.Fatal(err)
	}
	reservation, err := run.Reserve(100)
	if err != nil {
		t.Fatal(err)
	}
	const callID = "synthetic-overrun-author-call"
	started := time.Date(2026, time.October, 20, 12, 45, 0, 0, time.UTC)
	start := budget.CostRecord{
		ID: callID, CallState: budget.CallStarted, RunID: "synthetic-overrun-run",
		ProviderID: "synthetic-provider", AccountProfile: "synthetic-account",
		Model: "synthetic-author", ModelVersion: "fixture-v1", TaskID: budget.TaskM7Expositor,
		CandidateID: problemID, ProviderCallID: callID, StartedAt: started,
		CostCeilingMicros: 100, EstimatedCostMicros: 100,
	}
	if err := session.Journal().BeginCall(start); err != nil {
		t.Fatal(err)
	}
	finish := start
	finish.CallState = budget.CallFinished
	finish.FinishedAt = started.Add(time.Second)
	finish.Latency = time.Second
	finish.EstimatedCostMicros = 101
	finish.CostKnown = true
	finish.UsageReported = true
	finish.UsageValid = true
	finish.InputTokens = 10
	finish.OutputTokens = 5
	finish.ProviderOutcome = "returned"
	finish.GenerationOutcome = "complete"
	finish.DecoderOutcome = "accepted"
	if err := session.Journal().FinishCall(finish); err != nil {
		t.Fatal(err)
	}
	if err := reservation.Commit(finish.EstimatedCostMicros); !errors.Is(err, budget.ErrActualExceedsLimit) {
		t.Fatalf("over-ceiling synthetic reservation commit error = %v, want ErrActualExceedsLimit", err)
	}
	receipt, err := session.CallReceipt(callID)
	if err != nil {
		t.Fatalf("create receipt for auditable overrun: %v", err)
	}
	if err := session.Close(); err != nil {
		t.Fatal(err)
	}
	closed = true
	return receipt
}
