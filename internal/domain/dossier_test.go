package domain

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"math"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
)

func validDossier() Dossier {
	now := time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC)
	problem := MathProblem{
		ID:            "nat-add-assoc",
		Title:         "Associativity of natural-number addition",
		Statement:     "For all natural numbers a, b, c, (a + b) + c = a + (b + c).",
		LeanStatement: "forall (n m k : Nat), (n + m) + k = n + (m + k)",
		SourceIDs:     []string{"source-lean-core"},
	}
	expositions := fiveExpositions()
	expositionEvaluations, expositionEvidence := fiveExpositionEvaluationFixtures(expositions, now)
	evidence := append([]Evidence{{
		ID:           "evidence-proof",
		CaseID:       "case-r0b",
		ClaimID:      "claim-main",
		SourceID:     "source-lean-core",
		Summary:      "The theorem compiles under Lean 4.33.1 without additional axioms.",
		Stance:       StanceSupports,
		Strength:     1,
		Independence: 1,
		AuditStatus:  AuditStatusAudited,
		AddedByRunID: "r0b-run-1",
		CreatedAt:    now,
	}}, expositionEvidence...)
	for _, evidenceID := range v3ReviewForProblem(problem, now).EvidenceIDs() {
		evidence = append(evidence, Evidence{
			ID: evidenceID, CaseID: "case-r0b", ClaimID: "claim-main", SourceID: "source-lean-core",
			Summary: "Pinned V3 statement-fidelity fixture evidence.", Stance: StanceNeutral,
			Strength: 1, Independence: 1, AuditStatus: AuditStatusAudited,
			AddedByRunID: "r0b-run-1", CreatedAt: now,
		})
	}
	for _, evidenceID := range []string{"rights-source-lean-core", "split-audit", "leakage-audit", "literature-search", "v4-random", "v4-smt", "v4-negation", "v5-ablation"} {
		evidence = append(evidence, Evidence{
			ID: evidenceID, CaseID: "case-r0b", ClaimID: "claim-main", SourceID: "source-lean-core",
			Summary: "V6 source-rights, split, or leakage evidence fixture.", Stance: StanceNeutral,
			Strength: 1, Independence: 1, AuditStatus: AuditStatusAudited,
			AddedByRunID: "r0b-run-1", CreatedAt: now,
		})
	}
	return Dossier{
		SchemaVersion:         DossierSchemaVersion,
		AuthorCallAccounting:  syntheticAuthorCallAccountingFixture(now),
		CatalogSnapshotSHA256: "dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd",
		M4Receipt: &M4ReceiptReference{
			EvidenceID: "evidence-proof", ReceiptSHA256: strings.Repeat("e", 64),
		},
		Case: Case{
			ID:        "case-r0b",
			Question:  "Is natural-number addition associative?",
			Status:    CaseStatusCompleted,
			Phase:     PhaseComplete,
			CreatedAt: now,
			UpdatedAt: now,
			OwnerUID:  "ryan-local",
			Version:   1,
		},
		Problem: problem,
		Claims: []Claim{{
			ID:          "claim-main",
			CaseID:      "case-r0b",
			Text:        "Natural-number addition is associative.",
			Importance:  PriorityP0,
			Status:      ClaimStatusSupported,
			Assessment:  Assessment{Confidence: 1, Rationale: "Lean kernel accepted the proof."},
			EvidenceIDs: []string{"evidence-proof"},
			CreatedAt:   now,
			UpdatedAt:   now,
		}},
		Sources: []Source{{
			ID:          "source-lean-core",
			CaseID:      "case-r0b",
			URL:         "https://leanprover-community.github.io/mathlib4_docs/Init/Data/Nat/Basic.html",
			Title:       "Lean core natural-number addition",
			SourceType:  SourceTypePrimary,
			Primary:     true,
			FetchStatus: FetchStatusOK,
			AuditStatus: AuditStatusAudited,
		}},
		Evidence: evidence,
		Attempts: []SolverAttempt{{
			ID:                  "attempt-r0b-1",
			RunID:               "r0b-run-1",
			ProblemID:           "nat-add-assoc",
			CandidateID:         "candidate-r0b-1",
			Stage:               SolverStageS0,
			Toolchain:           "leanprover/lean4:v4.33.1",
			VerifiedProofSHA256: strings.Repeat("a", 64),
			Outcome:             SolverOutcomePass,
			StartedAt:           now,
			FinishedAt:          now.Add(time.Second),
			EvidenceIDs:         []string{"evidence-proof"},
		}},
		Argument: Argument{
			ClaimID:      "claim-main",
			CoreInsight:  "Induct on the final addend and use the successor rule.",
			Text:         "The base case is definitional. In the successor case, the induction hypothesis identifies the remaining expressions.",
			EvidenceIDs:  []string{"evidence-proof"},
			CreatedAt:    now,
			CreatedByRun: "r0b-run-1",
		},
		ProvenanceArtifactSHA256: strings.Repeat("c", 64),
		Verifications:            passingVerificationRecords(now, problem),
		Expositions:              expositions,
		ExpositionEvaluations:    expositionEvaluations,
		Verdict: Verdict{
			Status:      VerdictProven,
			Summary:     "Lean verifies the sourced statement.",
			EvidenceIDs: []string{"evidence-proof"},
			RecordedAt:  now,
		},
	}
}

func syntheticAuthorCallAccountingFixture(now time.Time) *budget.CostCallReceipt {
	const callID = "m7call-dossier-fixture"
	started := now.UTC()
	start := budget.CostRecord{
		ID: callID, CallState: budget.CallStarted, RunID: "run-m7-fixture",
		ProviderID: "provider-fixture", AccountProfile: "account-fixture",
		Model: "expositor-v1", ModelVersion: "model-rev-1", TaskID: budget.TaskM7Expositor,
		CandidateID: "nat-add-assoc", ProviderCallID: callID, StartedAt: started,
		CostCeilingMicros: 100, EstimatedCostMicros: 100,
	}
	finish := start
	finish.CallState = budget.CallFinished
	finish.FinishedAt = started.Add(time.Second)
	finish.Latency = time.Second
	finish.ProviderOutcome = "returned"
	finish.GenerationOutcome = "complete"
	finish.DecoderOutcome = "accepted"
	prefix := []byte("synthetic ledger prefix\n")
	digest := sha256.Sum256(prefix)
	return &budget.CostCallReceipt{
		SchemaVersion: budget.CostCallReceiptSchemaVersion,
		CallID:        callID, JournalPrefixSHA256: fmt.Sprintf("%x", digest[:]),
		JournalPrefixBytes: int64(len(prefix)), StartEvent: 1, FinishEvent: 2,
		Start: start, Finish: finish,
	}
}

func fiveExpositionEvaluationFixtures(expositions []Exposition, now time.Time) ([]ExpositionEvaluation, []Evidence) {
	evaluations := make([]ExpositionEvaluation, 0, len(expositions))
	evidence := make([]Evidence, 0, len(expositions)*4)
	policy := ExpositionEvaluationPolicy{
		Version: "expositor-eval-v1", MinimumRoundTripScore: 0.7, MinimumCanonScore: 0.7,
		MaximumNgramOverlap: 0, MaximumStructureOverlap: 0, TransferWeight: 0.7,
		ProgressWeight: 0.1, LengthExponent: 1,
	}
	policySHA256, err := policy.Digest()
	if err != nil {
		panic(err)
	}
	for index, exposition := range expositions {
		digest, err := ExpositionDigest(exposition)
		if err != nil {
			panic(err)
		}
		roundTripEvidenceID := fmt.Sprintf("evidence-exposition-%d-roundtrip", index+1)
		canonEvidenceID := fmt.Sprintf("evidence-exposition-%d-canon", index+1)
		leakageEvidenceID := fmt.Sprintf("evidence-exposition-%d-leakage", index+1)
		studentEvidenceID := fmt.Sprintf("evidence-exposition-%d-student", index+1)
		canonScores := make([]ExpositionMoveScore, 0, 6)
		for _, move := range RequiredExpositionCanonMoves() {
			canonScores = append(canonScores, ExpositionMoveScore{Move: move, Score: 0.8})
		}
		targetLift := 0.3
		transferLift := 0.3
		progressLift := 0.1
		combinedLift := (1-policy.TransferWeight)*targetLift + policy.TransferWeight*transferLift + policy.ProgressWeight*progressLift
		wordCount := len(strings.Fields(exposition.Text))
		evaluations = append(evaluations, ExpositionEvaluation{
			Tier: exposition.Tier, AuthorCallID: "m7call-dossier-fixture", ProblemID: "nat-add-assoc", ProofSHA256: strings.Repeat("a", 64),
			ExpositionSHA256: digest, CanonSnapshotSHA256: strings.Repeat("b", 64), PolicySHA256: policySHA256, Policy: policy,
			AuthorModelID: "expositor-v1", AuthorModelVersion: "model-rev-1",
			RoundTrip: ExpositionRoundTripReview{ModelID: "roundtrip-v1", ModelVersion: "r1", Frozen: true, Score: 0.9, RequiredFacts: []string{"statement", "central move"}, RecoveredFacts: []string{"statement", "central move"}, EvidenceID: roundTripEvidenceID},
			Canon:     ExpositionCanonReview{ModelID: "canon-v1", ModelVersion: "c1", Frozen: true, Scores: canonScores, EvidenceID: canonEvidenceID},
			Leakage:   ExpositionLeakageAudit{Method: "ngram-and-structure-v1", Passed: true, EvidenceID: leakageEvidenceID},
			Student:   ExpositionStudentLift{ModelID: "student-v1", ModelVersion: "s1", Frozen: true, AttemptBudget: 10, TargetBaseline: 0.2, TargetWithExposition: 0.5, TransferBaseline: 0.1, TransferWithExposition: 0.4, ProgressLift: progressLift, EvidenceID: studentEvidenceID},
			Accepted:  true, Score: combinedLift / math.Pow(float64(wordCount), policy.LengthExponent), RecordedAt: now,
		})
		for _, evidenceID := range []string{roundTripEvidenceID, canonEvidenceID, leakageEvidenceID, studentEvidenceID} {
			evidence = append(evidence, Evidence{
				ID: evidenceID, CaseID: "case-r0b", ClaimID: "claim-main", SourceID: "source-lean-core",
				Summary: "Independent M7 exposition review recorded for " + string(exposition.Tier) + ".",
				Stance:  StanceSupports, Strength: 1, Independence: 1, AuditStatus: AuditStatusAudited,
				AddedByRunID: "r0b-run-1", CreatedAt: now,
			})
		}
	}
	return evaluations, evidence
}

func v3ReviewForProblem(problem MathProblem, now time.Time) *V3StatementFidelity {
	const catalogSnapshot = "dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"
	const sourceFile = "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
	const leanFile = "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
	review := &V3StatementFidelity{
		Source: V3SourceStatementPin{
			URL: "https://example.test/pinned-mathlib-source", ItemLocator: problem.ID,
			Revision: "test-source-revision", RawItemSHA256: sourceFile,
			CatalogSnapshotSHA256: catalogSnapshot, Statement: problem.Statement, EvidenceID: "v3-source-pin",
		},
		Lean: V3LeanStatementPin{
			AuthorID: "formalizer-test", Revision: "test-lean-revision", FileLocator: "Main.lean",
			DeclarationName: "Nat.add_assoc", SourceFileSHA256: leanFile,
			NormalizedStatement:       problem.LeanStatement,
			NormalizedStatementSHA256: sha256Text(problem.LeanStatement),
			EvidenceID:                "v3-lean-pin",
		},
		BackTranslation: V3BackTranslation{
			Text:         "For all natural numbers a, b, and c, the two ways of grouping their sum are equal.",
			ProducedByID: "backtranslator-test", Role: V3BackTranslationWitnessRole,
			RecordedAt: now, EvidenceID: "v3-backtranslation",
		},
		SemanticComparison: V3SemanticComparison{
			Status: V3SemanticPass, Differences: []V3SemanticDifference{},
			Rationale:             "The back-translation and Lean statement preserve the source quantifiers and equality.",
			UnresolvedAssumptions: []string{}, ReviewerID: "reviewer-v3", HumanSpotReview: true,
			ReviewerAccepted: true, RecordedAt: now, EvidenceID: "v3-semantic-diff",
		},
		NaturalParameterApplicability: V3NaturalParametersPresent,
		MeaningfulNaturalParameters:   []string{"n", "m", "k"},
		EmptyObjectApplicability:      V3EmptyObjectNotApplicable,
		IndependentRoute:              "independent-source-to-Lean-review-v1",
	}
	for _, parameter := range review.MeaningfulNaturalParameters {
		for _, value := range []string{"0", "1"} {
			evidenceID := "v3-" + parameter + "-" + value
			var sourceInstance, leanInstance string
			switch parameter {
			case "n":
				sourceInstance = "(" + value + " + b) + c = " + value + " + (b + c)"
				leanInstance = "(" + value + " + m) + k = " + value + " + (m + k)"
			case "m":
				sourceInstance = "(a + " + value + ") + c = a + (" + value + " + c)"
				leanInstance = "(n + " + value + ") + k = n + (" + value + " + k)"
			case "k":
				sourceInstance = "(a + b) + " + value + " = a + (b + " + value + ")"
				leanInstance = "(n + m) + " + value + " = n + (m + " + value + ")"
			}
			review.BoundaryProbes = append(review.BoundaryProbes, V3BoundaryProbe{
				Kind: V3BoundaryNaturalValue, ParameterID: parameter, Value: value,
				SourceInstance: sourceInstance, LeanInstance: leanInstance,
				Outcome: V3BoundaryConsistent, Rationale: "The substituted source and Lean instances agree.", EvidenceID: evidenceID,
			})
		}
	}
	review.BoundaryProbes = append(review.BoundaryProbes, V3BoundaryProbe{
		Kind: V3BoundaryEmptyObject, ParameterID: "objects", Value: "empty",
		Outcome: V3BoundaryNotApplicable, Rationale: "The theorem has no set or object parameter with an empty case.", EvidenceID: "v3-empty-probe",
	})
	return review
}

func passingVerificationRecords(at time.Time, problem MathProblem) []VerificationRecord {
	statementDigest, err := ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		panic(err)
	}
	records := make([]VerificationRecord, 0, len(allVerificationGates))
	for _, gate := range allVerificationGates {
		record := VerificationRecord{
			Gate:                   gate,
			Status:                 VerificationPassed,
			Summary:                "Local acceptance evidence recorded; synthetic V3-V7 claims remain blocked pending reopened receipts.",
			EvidenceIDs:            []string{"evidence-proof"},
			ProblemID:              problem.ID,
			ProblemStatementSHA256: statementDigest,
			RecordedAt:             at,
		}
		if gate != GateKernelBuild && gate != GateAxiomAudit {
			record.Status = VerificationBlocked
		}
		switch gate {
		case GateKernelBuild:
			record.ProofSHA256 = strings.Repeat("a", 64)
			record.LeanToolchain = "leanprover/lean4:v4.33.1"
			record.ExpectedLeanToolchain = record.LeanToolchain
		case GateAxiomAudit:
			record.ProofSHA256 = strings.Repeat("a", 64)
		case GateStatementFidelity:
			review := v3ReviewForProblem(problem, at)
			record.Status = VerificationBlocked
			record.Summary = "V3 is blocked pending authenticated review and exact-instance Lean probe receipts."
			record.ReviewerID = review.SemanticComparison.ReviewerID
			record.StatementFidelity = review
			record.EvidenceIDs = review.EvidenceIDs()
		case GateFalsification:
			record.EvidenceIDs = []string{"v4-random", "v4-smt", "v4-negation"}
			record.Falsification = &V4FalsificationAudit{
				HypothesesSatisfiable: true, HypothesisEvidenceID: "v4-random",
				RandomizedCheckStatus: V4RandomizedSamplesPass, RandomizedTestsRun: 64, RandomizedEvidenceID: "v4-random",
				SMTSearchStatus: V4SMTUnsat, SMTEvidenceID: "v4-smt",
				NegationSearchStatus: V4NegationNoCounterexample, NegationSearchEvidenceIDs: []string{"v4-negation"},
			}
		case GateEssentiality:
			record.ProofSHA256 = strings.Repeat("a", 64)
			record.EvidenceIDs = []string{"v5-ablation"}
			record.Essentiality = &V5EssentialityAudit{Ablations: []V5LemmaAblation{{
				LemmaID: "lemma-assoc", Attempted: true, SearchCompleted: true,
				AblatedSourceSHA256: strings.Repeat("b", 64), EvidenceID: "v5-ablation",
			}}}
		case GateProvenanceLeakage:
			record.ArtifactSHA256 = strings.Repeat("c", 64)
			record.SourceIDs = []string{"source-lean-core"}
			record.ReviewerID = "reviewer-v6"
			record.DatasetSplitSHA256 = strings.Repeat("d", 64)
			record.DatasetSplitEvidenceID = "split-audit"
			record.LeakageAuditEvidenceID = "leakage-audit"
			record.SourceRightsAudits = []SourceRightsAudit{{
				SourceID: "source-lean-core", RightsEvidenceID: "rights-source-lean-core", RightsStatus: "CLEARED",
				License: "Apache-2.0", RequiredUses: []string{"LOCAL_STORAGE"}, AllowedUses: []string{"LOCAL_STORAGE", "LOCAL_PROOF_ATTEMPT"},
			}}
			record.EvidenceIDs = []string{"rights-source-lean-core", "split-audit", "leakage-audit"}
		case GateLiteratureAndStatus:
			record.EvidenceIDs = []string{"literature-search"}
			record.Novelty = NoveltyOpen
			record.ReviewerID = "reviewer-v7"
			record.Searches = []LiteratureSearchRecord{{Database: "formal-conjectures", Query: "natural number addition associativity", SearchedAt: at, EvidenceID: "literature-search"}}
			record.Findings = []string{"No priority claim is made by this fixture."}
		}
		if gate != GateKernelBuild && gate != GateAxiomAudit {
			for _, evidenceID := range record.EvidenceIDs {
				artifact := sha256.Sum256([]byte("synthetic gate artifact: " + evidenceID))
				record.EvidenceArtifacts = append(record.EvidenceArtifacts, EvidenceArtifactRef{
					EvidenceID: evidenceID, ArtifactSHA256: hex.EncodeToString(artifact[:]),
				})
			}
		}
		records = append(records, record)
	}
	return records
}

func fiveExpositions() []Exposition {
	sharedInsightID := "nat-add-assoc-core"
	return []Exposition{
		{Tier: TierHighSchool, Text: "For natural numbers, regrouping a sum does not change it.", CoreInsightID: sharedInsightID, CoreInsight: "Induction on the last number.", ProofRef: "proofs/r0b/MathCaseR0b.lean"},
		{Tier: TierAssociate, Text: "The base case is direct; adding one more successor preserves the equation.", CoreInsightID: sharedInsightID, CoreInsight: "Induction reduces the successor step to the previous case.", ProofRef: "proofs/r0b/MathCaseR0b.lean"},
		{Tier: TierBachelor, Text: "Induction on the third summand proves the identity using the recursive definition of addition.", CoreInsightID: sharedInsightID, CoreInsight: "The successor law moves the final successor across both groupings.", ProofRef: "proofs/r0b/MathCaseR0b.lean"},
		{Tier: TierMaster, Text: "The zero case reduces by computation. In the successor case, rewriting by the induction hypothesis closes the goal.", CoreInsightID: sharedInsightID, CoreInsight: "The recursion equation exposes the induction hypothesis.", ProofRef: "proofs/r0b/MathCaseR0b.lean"},
		{Tier: TierDoctorate, Text: "The theorem is the monoid associativity law specialized to ℕ; the selected proof makes the recursive structure explicit by induction.", CoreInsightID: sharedInsightID, CoreInsight: "The recursor for the third argument aligns both sides in the successor case.", ProofRef: "proofs/r0b/MathCaseR0b.lean"},
	}
}

func TestDossierRejectsMissingOrUnsupportedSchemaVersion(t *testing.T) {
	for _, version := range []string{"", "mathcase-dossier-v1", "mathcase-dossier-v3"} {
		t.Run(version, func(t *testing.T) {
			dossier := validDossier()
			dossier.SchemaVersion = version
			if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "unsupported schema version") {
				t.Fatalf("Validate() error = %v, want unsupported schema refusal", err)
			}
		})
	}
}

func TestDossierPreservesOnlyKnownM0CatalogStatuses(t *testing.T) {
	dossier := validDossier()
	dossier.Problem.M0Status = "CONJECTURED_OPEN"
	if err := dossier.Validate(); err != nil {
		t.Fatalf("Validate() with M0 catalog status = %v", err)
	}
	dossier.Problem.M0Status = "PROVENISH"
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "unsupported M0 problem status") {
		t.Fatalf("Validate() with unknown M0 status = %v; want status refusal", err)
	}
}

func TestDossierLocalArithmeticCaseCannotAdvanceProofGates(t *testing.T) {
	dossier := validDossier()
	dossier.Case.Question = "Solve the two pinned congruence conditions."
	dossier.Case.Status = CaseStatusActive
	dossier.Case.Phase = PhaseDraft
	dossier.CatalogSnapshotPath = "data/local/staging/local-case/catalog.snapshot.json"
	dossier.Problem = MathProblem{
		ID: "two-congruence-example", Kind: "LOCAL_ARITHMETIC_TASK", Title: "Two congruences",
		Statement: "Find every integer satisfying both remainder conditions.", M0Status: "UNASSESSED",
		SourceIDs:            []string{"source-lean-core"},
		LocalComputationSpec: &LocalComputationSpec{ToolID: LocalComputationTwoCongruenceToolID, Inputs: map[string]string{"residue1": "1", "modulus1": "6", "residue2": "4", "modulus2": "9"}},
	}
	dossier.Claims = nil
	dossier.Evidence = nil
	dossier.Attempts = nil
	dossier.Argument = Argument{}
	dossier.Verifications = make([]VerificationRecord, 0, len(allVerificationGates))
	for _, gate := range allVerificationGates {
		dossier.Verifications = append(dossier.Verifications, VerificationRecord{Gate: gate, Status: VerificationPending, Summary: "No assessment recorded.", RecordedAt: dossier.Case.CreatedAt})
	}
	dossier.M4Receipt = nil
	dossier.CandidateExposition = nil
	dossier.LocalComputationArtifacts = nil
	dossier.Expositions = nil
	dossier.ExpositionEvaluations = nil
	dossier.AuthorCallAccounting = nil
	dossier.AuthorAgentRunReceipt = nil
	dossier.Verdict = Verdict{Status: VerdictUnresolved, Summary: "Unassessed local arithmetic case.", RecordedAt: dossier.Case.CreatedAt}
	if err := dossier.Validate(); err != nil {
		t.Fatalf("unassessed nonformal local arithmetic dossier rejected: %v", err)
	}
	statementDigest, err := ProblemStatementDigest(dossier.Problem.ID, dossier.Problem.Statement, "")
	if err != nil {
		t.Fatal(err)
	}
	dossier.LocalComputationArtifacts = []LocalComputationArtifactReference{{
		SchemaVersion: LocalComputationArtifactReferenceSchemaVersion, ArtifactID: "local-comp-a",
		RelativePath: "cases/case-r0b/local-computations/artifact.json", ArtifactSHA256: strings.Repeat("a", 64),
		CaseID: dossier.Case.ID, ProblemID: dossier.Problem.ID, CatalogSnapshotSHA256: dossier.CatalogSnapshotSHA256,
		ProblemStatementSHA256: statementDigest, ParentDossierSHA256: strings.Repeat("b", 64),
		IdempotencyKey: strings.Repeat("c", 32), ToolID: LocalComputationTwoCongruenceToolID,
		ToolVersion: LocalComputationTwoCongruenceToolVersion, ResultSHA256: strings.Repeat("d", 64),
	}}
	if err := dossier.Validate(); err != nil {
		t.Fatalf("case-bound local arithmetic artifact reference rejected: %v", err)
	}
	mutated := dossier
	mutated.LocalComputationArtifacts = append([]LocalComputationArtifactReference(nil), dossier.LocalComputationArtifacts...)
	mutated.LocalComputationArtifacts[0].ProblemStatementSHA256 = strings.Repeat("e", 64)
	if err := mutated.Validate(); err == nil {
		t.Fatal("local arithmetic artifact reference detached from exact problem statement was accepted")
	}
	mutated = dossier
	mutated.Verifications = append([]VerificationRecord(nil), dossier.Verifications...)
	mutated.Verifications[0].Status = VerificationPassed
	if err := mutated.Validate(); err == nil {
		t.Fatal("local arithmetic computation advanced a proof verification gate")
	}
}

func TestDossierValidatesCompleteIntegratedDeliverable(t *testing.T) {
	dossier := validDossier()
	if err := dossier.Validate(); err != nil {
		t.Fatalf("Validate() of incomplete-but-auditable dossier error = %v", err)
	}
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "gate V3 has not passed") {
		t.Fatalf("ValidateReadyForDelivery() without authenticated V3 receipts = %v; want V3 hold", err)
	}
}

func TestDossierReadyRequiresExactM4ReceiptReference(t *testing.T) {
	t.Run("missing reference", func(t *testing.T) {
		dossier := validDossier()
		dossier.M4Receipt = nil
		if err := dossier.validateM4ReceiptReference(true); err == nil || !strings.Contains(err.Error(), "exact M4 Lean receipt reference") {
			t.Fatalf("required M4 reference validation = %v, want exact receipt reference refusal", err)
		}
	})

	t.Run("different V1/V2 identity", func(t *testing.T) {
		dossier := validDossier()
		dossier.M4Receipt.EvidenceID = "substituted-receipt"
		if err := dossier.validateM4ReceiptReference(false); err == nil || !strings.Contains(err.Error(), "does not match the single V1/V2 evidence ID") {
			t.Fatalf("M4 reference validation with mismatched identity = %v, want V1/V2 binding refusal", err)
		}
	})

	t.Run("invalid digest", func(t *testing.T) {
		dossier := validDossier()
		dossier.M4Receipt.ReceiptSHA256 = "not-a-sha256"
		if err := dossier.validateM4ReceiptReference(false); err == nil || !strings.Contains(err.Error(), "canonical receipt SHA-256") {
			t.Fatalf("M4 reference validation with invalid digest = %v, want SHA-256 refusal", err)
		}
	})
}

func TestDossierRejectsLegacyPassedV3WithoutDualCheckEvidence(t *testing.T) {
	dossier := validDossier()
	for index := range dossier.Verifications {
		if dossier.Verifications[index].Gate == GateStatementFidelity {
			dossier.Verifications[index].Status = VerificationPassed
			dossier.Verifications[index].StatementFidelity = nil
			break
		}
	}
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "passed gate V3 requires a typed receipt reference") {
		t.Fatalf("Validate() error = %v, want unreceipted passed-V3 refusal", err)
	}
}

func TestDossierRefusesCallerAuthoredPassedV4V7Claims(t *testing.T) {
	tests := []struct {
		gate VerificationGate
		want string
	}{
		{gate: GateFalsification, want: "passed gate V4 requires a typed receipt reference"},
		{gate: GateEssentiality, want: "passed gate V5 requires a typed receipt reference"},
		{gate: GateProvenanceLeakage, want: "passed gate V6 requires a typed receipt reference"},
		{gate: GateLiteratureAndStatus, want: "passed gate V7 requires a typed receipt reference"},
	}
	for _, test := range tests {
		t.Run(string(test.gate), func(t *testing.T) {
			dossier := validDossier()
			for index := range dossier.Verifications {
				if dossier.Verifications[index].Gate == test.gate {
					dossier.Verifications[index].Status = VerificationPassed
					break
				}
			}
			if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), test.want) {
				t.Fatalf("Validate() error = %v, want %q refusal", err, test.want)
			}
		})
	}
}

func TestDossierKeepsPersistedV3DispositionBoundToTypedEvidence(t *testing.T) {
	dossier := validDossier()
	var statementFidelity *V3StatementFidelity
	for index := range dossier.Verifications {
		record := &dossier.Verifications[index]
		if record.Gate != GateStatementFidelity {
			continue
		}
		statementFidelity = record.StatementFidelity
		if statementFidelity == nil {
			t.Fatal("validDossier() V3 record has no typed statement-fidelity evidence")
		}
		statementFidelity.SemanticComparison.Status = V3SemanticMismatch
		record.Status = VerificationFailed
		record.Summary = "V3 semantic comparison found a statement mismatch."
		break
	}
	if err := dossier.Validate(); err != nil {
		t.Fatalf("Dossier.Validate() with a matching V3 mismatch disposition = %v, want valid failed evidence", err)
	}

	for index := range dossier.Verifications {
		if dossier.Verifications[index].Gate == GateStatementFidelity {
			dossier.Verifications[index].Status = VerificationBlocked
			break
		}
	}
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "V3 status does not match") {
		t.Fatalf("Dossier.Validate() after changing V3 FAILED to BLOCKED = %v, want typed-disposition mismatch refusal", err)
	}
}

func TestDossierRejectsV3EvidenceOnAnotherGate(t *testing.T) {
	dossier := validDossier()
	var statementFidelity *V3StatementFidelity
	for index := range dossier.Verifications {
		if dossier.Verifications[index].Gate == GateStatementFidelity {
			statementFidelity = dossier.Verifications[index].StatementFidelity
			break
		}
	}
	if statementFidelity == nil {
		t.Fatal("validDossier() has no V3 statement-fidelity evidence")
	}
	for index := range dossier.Verifications {
		if dossier.Verifications[index].Gate == GateFalsification {
			dossier.Verifications[index].StatementFidelity = statementFidelity
			break
		}
	}
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "carries V3 statement-fidelity evidence") {
		t.Fatalf("Dossier.Validate() with V3 payload on V4 = %v, want cross-gate evidence refusal", err)
	}
}

func TestDossierRequiresV3ReviewToMatchPinnedCatalogSnapshot(t *testing.T) {
	dossier := validDossier()
	dossier.CatalogSnapshotSHA256 = strings.Repeat("e", 64)
	for index := range dossier.Verifications {
		if dossier.Verifications[index].Gate == GateStatementFidelity {
			dossier.Verifications[index].Status = VerificationPassed
			break
		}
	}
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "passed gate V3 requires a typed receipt reference") {
		t.Fatalf("Validate() error = %v, want unreceipted passed-V3 refusal before builder claim checks", err)
	}
}

func TestDossierPersistsBootstrapClaimClassAndRejectsMisclassification(t *testing.T) {
	dossier := validDossier()
	dossier.ClaimClass = ClaimClassBootstrapCalibration
	dossier.ClaimClassNote = ClaimClassBootstrapNote
	if err := dossier.Validate(); err != nil {
		t.Fatalf("Validate() for bootstrap dossier = %v", err)
	}
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "gate V3 has not passed") {
		t.Fatalf("ValidateReadyForDelivery() for bootstrap fixture = %v, want V3 receipt hold", err)
	}

	encoded, err := json.Marshal(dossier)
	if err != nil {
		t.Fatalf("Marshal() error = %v", err)
	}
	if !strings.Contains(string(encoded), `"claim_class":"BOOTSTRAP/CALIBRATION"`) {
		t.Fatalf("serialized dossier lacks exact bootstrap claim class: %s", encoded)
	}
	var decoded Dossier
	if err := json.Unmarshal(encoded, &decoded); err != nil {
		t.Fatalf("Unmarshal() error = %v", err)
	}
	if decoded.ClaimClass != ClaimClassBootstrapCalibration || decoded.ClaimClassNote != ClaimClassBootstrapNote {
		t.Fatalf("claim class round-trip = (%q, %q), want bootstrap classification and note", decoded.ClaimClass, decoded.ClaimClassNote)
	}

	t.Run("unknown class", func(t *testing.T) {
		bad := validDossier()
		bad.ClaimClass = "DISCOVERY_CLASS_MAYBE"
		if err := bad.Validate(); err == nil || !strings.Contains(err.Error(), "unsupported claim class") {
			t.Fatalf("Validate() error = %v, want unsupported claim class refusal", err)
		}
	})
	t.Run("bootstrap note required", func(t *testing.T) {
		bad := validDossier()
		bad.ClaimClass = ClaimClassBootstrapCalibration
		if err := bad.Validate(); err == nil || !strings.Contains(err.Error(), "known-result plumbing-only note") {
			t.Fatalf("Validate() error = %v, want bootstrap note refusal", err)
		}
	})
}

func TestDossierReadyRequiresM7AuthorRunReceipt(t *testing.T) {
	dossier := validDossier()
	dossier.AuthorCallAccounting = nil
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "M7 author-call") {
		t.Fatalf("ValidateReadyForDelivery() without M7 receipt error = %v, want author-call receipt refusal", err)
	}
}

func TestDossierV2AuthorReceiptBindsExactStatementAndClearance(t *testing.T) {
	dossier := validDossier()
	dossier.AuthorCallAccounting = nil
	receipt := testAgentRunReceipt(dossier.Problem.ID)
	receipt.SchemaVersion = AgentRunReceiptSchemaVersion2
	capturedAt := receipt.RecordedAtUTC.Add(-time.Second)
	receipt.ModelIdentityCapturedAtUTC = &capturedAt
	receipt.LabelRecordIDs = []string{"exposition-pair-bootstrap-001"}
	receipt.Target.CatalogSnapshotSHA256 = dossier.CatalogSnapshotSHA256
	receipt.Target.StatementID = "statement-nat-add-assoc"
	statementDigest := sha256.Sum256([]byte(dossier.Problem.Statement))
	receipt.Target.StatementSHA256 = hex.EncodeToString(statementDigest[:])
	receipt.InputClearance[0].StatementID = receipt.Target.StatementID
	receipt.InputClearance[0].EvidenceSHA256 = strings.Repeat("b", 64)
	dossier.AuthorAgentRunReceipt = &receipt
	if err := dossier.Validate(); err != nil {
		t.Fatalf("Validate() with exact V2 author receipt error = %v, want valid dossier", err)
	}

	t.Run("clearance must name target statement ID", func(t *testing.T) {
		bad := dossier
		badReceipt := receipt
		badReceipt.InputClearance = append([]AgentRunInputClearance(nil), receipt.InputClearance...)
		badReceipt.Target.StatementID = "different-statement-id"
		bad.AuthorAgentRunReceipt = &badReceipt
		if err := bad.Validate(); err == nil || !strings.Contains(err.Error(), "exact target statement ID") {
			t.Fatalf("Validate() error = %v, want exact target-statement clearance refusal", err)
		}
	})
	t.Run("statement digest must match dossier", func(t *testing.T) {
		bad := dossier
		badReceipt := receipt
		badReceipt.Target.StatementSHA256 = strings.Repeat("c", 64)
		bad.AuthorAgentRunReceipt = &badReceipt
		if err := bad.Validate(); err == nil || !strings.Contains(err.Error(), "exact dossier statement") {
			t.Fatalf("Validate() error = %v, want exact statement digest refusal", err)
		}
	})
	t.Run("snapshot must match dossier", func(t *testing.T) {
		bad := dossier
		badReceipt := receipt
		badReceipt.Target.CatalogSnapshotSHA256 = strings.Repeat("c", 64)
		bad.AuthorAgentRunReceipt = &badReceipt
		if err := bad.Validate(); err == nil || !strings.Contains(err.Error(), "different M0 catalog snapshot") {
			t.Fatalf("Validate() error = %v, want M0 snapshot refusal", err)
		}
	})
}

func TestDossierReadyRejectsSuccessfulM7CostOverCeilingButKeepsReceiptAuditable(t *testing.T) {
	dossier := validDossier()
	dossier.AuthorCallAccounting.Finish.CostKnown = true
	dossier.AuthorCallAccounting.Finish.EstimatedCostMicros = dossier.AuthorCallAccounting.Finish.CostCeilingMicros + 1
	if err := dossier.Validate(); err != nil {
		t.Fatalf("Validate() should preserve the structurally valid overrun receipt for audit: %v", err)
	}
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "exceeds cost ceiling") {
		t.Fatalf("ValidateReadyForDelivery() error = %v, want successful M7 over-ceiling refusal", err)
	}
}

func TestDossierReadyBindsAccountingReceiptToAllFiveM7Evaluations(t *testing.T) {
	t.Run("model ID", func(t *testing.T) {
		dossier := validDossier()
		dossier.AuthorCallAccounting.Start.Model = "another-model"
		dossier.AuthorCallAccounting.Finish.Model = "another-model"
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "accounting receipt model identity") {
			t.Fatalf("ValidateReadyForDelivery() with mismatched journal model error = %v, want accounting-binding refusal", err)
		}
	})
	t.Run("model version", func(t *testing.T) {
		dossier := validDossier()
		dossier.AuthorCallAccounting.Start.ModelVersion = "another-version"
		dossier.AuthorCallAccounting.Finish.ModelVersion = "another-version"
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "accounting receipt model identity") {
			t.Fatalf("ValidateReadyForDelivery() with mismatched journal model version error = %v, want accounting-binding refusal", err)
		}
	})
	t.Run("problem", func(t *testing.T) {
		dossier := validDossier()
		dossier.AuthorCallAccounting.Start.CandidateID = "another-problem"
		dossier.AuthorCallAccounting.Finish.CandidateID = "another-problem"
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "not a successful M7 call for this problem") {
			t.Fatalf("ValidateReadyForDelivery() with mismatched call candidate error = %v, want problem-binding refusal", err)
		}
	})
	t.Run("outcome", func(t *testing.T) {
		dossier := validDossier()
		dossier.AuthorCallAccounting.Finish.GenerationOutcome = "failed"
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "not a successful M7 call") {
			t.Fatalf("ValidateReadyForDelivery() with failed author outcome error = %v, want success-outcome refusal", err)
		}
	})
}

func TestDossierBindsVerificationReceiptsToStatementProofAndArtifact(t *testing.T) {
	t.Run("statement", func(t *testing.T) {
		dossier := validDossier()
		dossier.Verifications[2].ProblemStatementSHA256 = strings.Repeat("d", 64)
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "problem statement") {
			t.Fatalf("expected stale statement receipt refusal, got %v", err)
		}
	})
	t.Run("proof", func(t *testing.T) {
		dossier := validDossier()
		dossier.Verifications[0].ProofSHA256 = strings.Repeat("d", 64)
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "five-tier proof") {
			t.Fatalf("expected mismatched proof receipt refusal, got %v", err)
		}
	})
	t.Run("v1 toolchain missing", func(t *testing.T) {
		dossier := validDossier()
		dossier.Verifications[0].ExpectedLeanToolchain = ""
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "observed or expected Lean toolchain") {
			t.Fatalf("expected missing V1 toolchain refusal, got %v", err)
		}
	})
	t.Run("v1 toolchain mismatch", func(t *testing.T) {
		dossier := validDossier()
		dossier.Verifications[0].LeanToolchain = "leanprover/lean4:v4.34.0"
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "does not match the pinned project toolchain") {
			t.Fatalf("expected mismatched V1 toolchain refusal, got %v", err)
		}
	})
	t.Run("artifact", func(t *testing.T) {
		dossier := validDossier()
		dossier.Verifications[5].ArtifactSHA256 = strings.Repeat("d", 64)
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "provenance artifact") {
			t.Fatalf("expected mismatched artifact receipt refusal, got %v", err)
		}
	})
	t.Run("v6 rights coverage", func(t *testing.T) {
		dossier := validDossier()
		dossier.Verifications[5].SourceRightsAudits = nil
		if err := dossier.Validate(); err != nil {
			t.Fatalf("Validate() for incomplete blocked V6 evidence = %v, want partial evidence to remain auditable", err)
		}
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "gate V3 has not passed") {
			t.Fatalf("ValidateReadyForDelivery() = %v, want blocked V3 refusal", err)
		}
	})
	t.Run("v6 required use", func(t *testing.T) {
		dossier := validDossier()
		dossier.Verifications[5].SourceRightsAudits[0].RequiredUses = []string{"TRAINING"}
		if err := dossier.Validate(); err != nil {
			t.Fatalf("Validate() for blocked V6 with a rights-use mismatch = %v, want claim-free evidence to remain auditable", err)
		}
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "gate V3 has not passed") {
			t.Fatalf("ValidateReadyForDelivery() = %v, want blocked V3 refusal", err)
		}
	})
	t.Run("v6 split evidence", func(t *testing.T) {
		dossier := validDossier()
		dossier.Verifications[5].DatasetSplitEvidenceID = ""
		if err := dossier.Validate(); err != nil {
			t.Fatalf("Validate() for blocked V6 without split evidence = %v, want partial evidence to remain auditable", err)
		}
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "gate V3 has not passed") {
			t.Fatalf("ValidateReadyForDelivery() = %v, want blocked V3 refusal", err)
		}
	})
	t.Run("v7 search evidence", func(t *testing.T) {
		dossier := validDossier()
		dossier.Verifications[6].Searches[0].EvidenceID = ""
		if err := dossier.Validate(); err != nil {
			t.Fatalf("Validate() for blocked V7 with an incomplete search note = %v, want partial evidence to remain auditable", err)
		}
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "gate V3 has not passed") {
			t.Fatalf("ValidateReadyForDelivery() = %v, want blocked V3 refusal", err)
		}
	})
}

func TestDossierRequiresEveryVerificationGateAndExpositionTier(t *testing.T) {
	dossier := validDossier()
	dossier.Verifications = dossier.Verifications[:len(dossier.Verifications)-1]
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "gate V7 is missing") {
		t.Fatalf("expected missing V7 refusal before evaluating other blocked gates, got %v", err)
	}

	dossier = validDossier()
	dossier.Expositions = dossier.Expositions[:len(dossier.Expositions)-1]
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "DOCTORATE") {
		t.Fatalf("expected missing doctorate exposition refusal, got %v", err)
	}
}

func TestDossierRequiresAcceptedBoundM7EvaluationForEveryTier(t *testing.T) {
	dossier := validDossier()
	dossier.ExpositionEvaluations = dossier.ExpositionEvaluations[:len(dossier.ExpositionEvaluations)-1]
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "accepted M7 evaluation") {
		t.Fatalf("ValidateReadyForDelivery() without a tier evaluation error = %v, want M7 evaluation refusal", err)
	}

	dossier = validDossier()
	dossier.Expositions[0].Text += " Edited after review."
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "not bound to the stored exposition") {
		t.Fatalf("Validate() after exposition edit error = %v, want digest-binding refusal", err)
	}

	dossier = validDossier()
	dossier.ExpositionEvaluations[0].Score += 0.1
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "does not match its stored review metrics") {
		t.Fatalf("Validate() with a changed M7 score error = %v, want score-integrity refusal", err)
	}

	dossier = validDossier()
	dossier.ExpositionEvaluations[0].Policy.MinimumCanonScore = 0.95
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "policy does not match") {
		t.Fatalf("Validate() after policy mutation error = %v, want policy-digest refusal", err)
	}
}

func TestDossierRequiresOneCoreInsightIdentityAcrossAllFiveTiers(t *testing.T) {
	dossier := validDossier()
	dossier.Expositions[1].CoreInsightID = "different-core-insight"
	digest, err := ExpositionDigest(dossier.Expositions[1])
	if err != nil {
		t.Fatal(err)
	}
	dossier.ExpositionEvaluations[1].ExpositionSHA256 = digest
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "share one core insight ID") {
		t.Fatalf("ValidateReadyForDelivery() with split core insight identities error = %v, want shared-insight refusal", err)
	}
}

func TestDossierRequiresOneExpositorAuthorIdentityAcrossAllFiveTiers(t *testing.T) {
	t.Run("model ID", func(t *testing.T) {
		dossier := validDossier()
		dossier.ExpositionEvaluations[1].AuthorModelID = "expositor-v2"
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "share one author model and version") {
			t.Fatalf("ValidateReadyForDelivery() with mixed author models error = %v, want shared-author refusal", err)
		}
	})
	t.Run("model version", func(t *testing.T) {
		dossier := validDossier()
		dossier.ExpositionEvaluations[1].AuthorModelVersion = "model-rev-2"
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "share one author model and version") {
			t.Fatalf("ValidateReadyForDelivery() with mixed author versions error = %v, want shared-author refusal", err)
		}
	})
	t.Run("author call", func(t *testing.T) {
		dossier := validDossier()
		dossier.ExpositionEvaluations[1].AuthorCallID = "m7call-second-run"
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "share one author call ID") {
			t.Fatalf("ValidateReadyForDelivery() with mixed author calls error = %v, want shared-call refusal", err)
		}
	})
	t.Run("missing author call", func(t *testing.T) {
		dossier := validDossier()
		dossier.ExpositionEvaluations[2].AuthorCallID = ""
		if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "author call ID is required") {
			t.Fatalf("ValidateReadyForDelivery() without author call identity error = %v, want refusal", err)
		}
	})
}

func TestDossierRejectsM7ReviewEvidenceReusedAcrossTiers(t *testing.T) {
	dossier := validDossier()
	dossier.ExpositionEvaluations[1].RoundTrip.EvidenceID = dossier.ExpositionEvaluations[0].RoundTrip.EvidenceID
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "reused across") {
		t.Fatalf("Validate() with reused M7 evidence error = %v, want cross-tier evidence refusal", err)
	}
}

func TestDossierRequiresPassingSolverAttemptForDelivery(t *testing.T) {
	dossier := validDossier()
	dossier.Attempts = nil
	dossier.ExpositionEvaluations = nil
	if err := dossier.ValidateReadyForDelivery(); err == nil || !strings.Contains(err.Error(), "passing solver attempt") {
		t.Fatalf("expected missing passing-attempt refusal, got %v", err)
	}
}

func TestDossierPreservesFailedAttemptAndRejectsBrokenLineage(t *testing.T) {
	dossier := validDossier()
	dossier.Attempts = append(dossier.Attempts, SolverAttempt{
		ID:              "attempt-r0b-retry",
		RunID:           "r0b-run-1",
		ProblemID:       "nat-add-assoc",
		CandidateID:     "candidate-r0b-retry",
		ParentAttemptID: "attempt-r0b-1",
		Stage:           SolverStageS1,
		Toolchain:       "leanprover/lean4:v4.33.1",
		Outcome:         SolverOutcomeNoProgress,
		FailureClass:    "search_exhausted",
		StartedAt:       time.Date(2026, time.October, 19, 12, 0, 2, 0, time.UTC),
		FinishedAt:      time.Date(2026, time.October, 19, 12, 0, 3, 0, time.UTC),
	})
	if err := dossier.Validate(); err != nil {
		t.Fatalf("Validate() with a failed retry error = %v", err)
	}
	dossier.Attempts[1].ParentAttemptID = "missing-parent"
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "missing or mismatched parent") {
		t.Fatalf("expected broken-parent refusal, got %v", err)
	}
}

func TestAttemptIDIsRunScopedAndRequiresCanonicalInputs(t *testing.T) {
	started := time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC)
	first, err := AttemptIDFor("run-a", "problem-1", SolverStageS0, "candidate-1", started)
	if err != nil {
		t.Fatal(err)
	}
	second, err := AttemptIDFor("run-b", "problem-1", SolverStageS0, "candidate-1", started)
	if err != nil {
		t.Fatal(err)
	}
	if first == second {
		t.Fatal("attempt IDs for separate runs must differ")
	}
	if _, err := AttemptIDFor("run/a", "problem-1", SolverStageS0, "candidate-1", started); err == nil {
		t.Fatal("expected non-canonical run ID rejection")
	}
}

func TestDossierRejectsBrokenEvidenceLinks(t *testing.T) {
	dossier := validDossier()
	dossier.Evidence[0].SourceID = "missing-source"
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "missing source") {
		t.Fatalf("expected missing-source refusal, got %v", err)
	}
}

func TestDossierRejectsPassedGateWithoutEvidence(t *testing.T) {
	dossier := validDossier()
	dossier.Verifications[0].EvidenceIDs = nil
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "requires evidence") {
		t.Fatalf("expected evidence-backed gate refusal, got %v", err)
	}
}

func TestDossierJSONContractRemainsStable(t *testing.T) {
	dossier := validDossier()
	data, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	text := string(data)
	for _, field := range []string{`"case_id"`, `"claim_id"`, `"source_id"`, `"audit_status"`, `"evidence_ids"`} {
		if !strings.Contains(text, field) {
			t.Errorf("JSON is missing reused domain field %s", field)
		}
	}
}

func TestDossierM7ManifestReferencesRequirePinnedLimitsAndAllTiers(t *testing.T) {
	legacy := validDossier()
	if err := legacy.Validate(); err != nil {
		t.Fatalf("Validate() of legacy dossier without M7 manifests = %v, want backward-compatible acceptance", err)
	}

	dossier := validDossier()
	dossier.ExpositionEvaluations[0].EvidenceManifestPath = "m7/high-school.json"
	dossier.ExpositionEvaluations[0].EvidenceManifestSHA256 = strings.Repeat("1", 64)
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "caller-pinned five-tier word limits") {
		t.Fatalf("Validate() with manifest but no word limits error = %v, want pinned-limit refusal", err)
	}

	dossier.ExpositionWordLimits = &ExpositionWordLimits{
		HighSchool: 500, Associate: 500, Bachelor: 500, Master: 500, Doctorate: 500,
	}
	if err := dossier.Validate(); err == nil || !strings.Contains(err.Error(), "missing the ASSOCIATE tier manifest") {
		t.Fatalf("Validate() with partial manifests error = %v, want all-tier refusal", err)
	}

	for index := range dossier.ExpositionEvaluations {
		evaluation := &dossier.ExpositionEvaluations[index]
		if evaluation.EvidenceManifestPath == "" {
			evaluation.EvidenceManifestPath = "m7/" + strings.ToLower(string(evaluation.Tier)) + ".json"
			evaluation.EvidenceManifestSHA256 = strings.Repeat("1", 64)
		}
	}
	if err := dossier.Validate(); err != nil {
		t.Fatalf("Validate() with all five manifests and pinned limits = %v, want valid M7 links", err)
	}
}

func TestDossierM6StructuralMetricsReferenceRequiresExactM4AndPinnedArtifacts(t *testing.T) {
	dossier := validDossier()
	dossier.M6StructuralMetrics = &M6StructuralMetricsReference{
		SchemaVersion: M6StructuralMetricsReferenceSchemaVersion,
		Status:        M6StructuralMetricsAttachedStatus, EvidenceClass: M6StructuralMetricsPinnedExecutionClass,
		ParentDossierSHA256:   strings.Repeat("9", 64),
		M4ReceiptEvidenceID:   dossier.M4Receipt.EvidenceID,
		M4ReceiptRelativePath: "data/local/verification/m4/receipt.json",
		M4ReceiptSHA256:       dossier.M4Receipt.ReceiptSHA256,
		ProblemStatementSHA256: func() string {
			digest, err := ProblemStatementDigest(dossier.Problem.ID, dossier.Problem.Statement, dossier.Problem.LeanStatement)
			if err != nil {
				t.Fatal(err)
			}
			return digest
		}(),
		GeneratedSourceSHA256:    strings.Repeat("1", 64),
		InstrumentedSourceSHA256: strings.Repeat("8", 64),
		MetricsDirectoryPath:     "data/local/verification/m6/run-r1",
		MetricsReceiptSHA256:     strings.Repeat("2", 64), RunReceiptSHA256: strings.Repeat("3", 64),
		RunRequestSHA256: strings.Repeat("4", 64), SnapshotID: "snapshot-r1",
		SnapshotManifestSHA256: strings.Repeat("5", 64), StdoutSHA256: strings.Repeat("6", 64),
		StderrSHA256: strings.Repeat("7", 64), Declaration: "mathcase_candidate",
		LeanToolchain: "leanprover/lean4:v4.33.1", LeanVersion: "Lean (version 4.33.1, test)",
		CoreExprNodes: 233, CoreExprDepth: 17, BinderNodes: 4, ConstantReferenceNodes: 95,
		ScopeNote: "Structure only; no proof-quality judgment.",
	}
	if err := dossier.Validate(); err != nil {
		t.Fatalf("Validate() with exact M6 structural reference = %v, want success", err)
	}

	t.Run("wrong M4 receipt", func(t *testing.T) {
		changed := dossier
		ref := *dossier.M6StructuralMetrics
		changed.M6StructuralMetrics = &ref
		changed.M6StructuralMetrics.M4ReceiptSHA256 = strings.Repeat("8", 64)
		if err := changed.Validate(); err == nil || !strings.Contains(err.Error(), "exact M4 receipt") {
			t.Fatalf("Validate() with mismatched M4 receipt error = %v, want exact-receipt refusal", err)
		}
	})
	t.Run("unsafe artifact path", func(t *testing.T) {
		changed := dossier
		ref := *dossier.M6StructuralMetrics
		changed.M6StructuralMetrics = &ref
		changed.M6StructuralMetrics.MetricsDirectoryPath = "../outside"
		if err := changed.Validate(); err == nil || !strings.Contains(err.Error(), "paths are incomplete or unsafe") {
			t.Fatalf("Validate() with unsafe M6 path error = %v, want unsafe-path refusal", err)
		}
	})
	t.Run("legacy hash-only evidence", func(t *testing.T) {
		changed := dossier
		ref := *dossier.M6StructuralMetrics
		changed.M6StructuralMetrics = &ref
		changed.M6StructuralMetrics.EvidenceClass = "HASH_ONLY_LEGACY"
		if err := changed.Validate(); err == nil || !strings.Contains(err.Error(), "schema, status, or evidence class") {
			t.Fatalf("Validate() with hash-only evidence error = %v, want evidence-class refusal", err)
		}
	})
	t.Run("invalid metrics", func(t *testing.T) {
		changed := dossier
		ref := *dossier.M6StructuralMetrics
		changed.M6StructuralMetrics = &ref
		changed.M6StructuralMetrics.CoreExprNodes = 0
		if err := changed.Validate(); err == nil || !strings.Contains(err.Error(), "metric counts") {
			t.Fatalf("Validate() with invalid M6 metrics error = %v, want metric-count refusal", err)
		}
	})
}
