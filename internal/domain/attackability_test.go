package domain

import (
	"strings"
	"testing"
	"time"
)

func validAttackabilityOutcome() AttackabilityOutcomeRecord {
	now := time.Date(2026, time.October, 20, 16, 0, 0, 0, time.UTC)
	receiptID := "run-receipt-001"
	modelCapturedAt := now.Add(-time.Minute)
	successProbability := 0.25
	solverConfiguration := validAttackabilitySolverConfiguration()
	solverConfigurationSHA256, _ := solverConfiguration.Digest()
	return AttackabilityOutcomeRecord{
		SchemaVersion:  AttackabilityOutcomeSchemaVersion,
		RecordID:       "attackability-label-001",
		CampaignID:     "campaign-001",
		RunReceiptID:   receiptID,
		RecordRevision: 1,
		Target: AttackabilityTarget{
			ProblemID:             "erdos-9-open",
			StatementID:           "erdos_9",
			CatalogSnapshotSHA256: strings.Repeat("a", 64),
			StatementSHA256:       strings.Repeat("b", 64),
		},
		Prediction: AttackabilityPrediction{
			Kind:                       AttackabilityModelPrediction,
			Source:                     "MODEL_RUN",
			SourceRecordID:             receiptID,
			PredictedAtUTC:             now.Add(-30 * time.Second),
			ModelID:                    "gpt-6-astra",
			ModelIdentityCapturedAtUTC: &modelCapturedAt,
			SuccessProbability:         &successProbability,
			HorizonProofAttempts:       2,
			SolverConfiguration:        &solverConfiguration,
			SolverConfigurationSHA256:  solverConfigurationSHA256,
		},
		ActualOutcome: AttackabilityActualOutcome{
			Status:        AttackabilityNotAttempted,
			EvidenceIDs:   []string{},
			RecordedAtUTC: now,
		},
		Attempts: AttackabilityAttemptCounts{
			InferenceRuns: 1,
			AttemptBudget: solverConfiguration.AttemptBudget,
			RunReceiptIDs: []string{receiptID},
		},
		Cost: AttackabilityRunCost{
			AccountingMode:     AttackabilityAgentQuota,
			AgentQuotaCalls:    1,
			ResourceReceiptIDs: []string{receiptID},
		},
		RecordedAtUTC: now,
	}
}

func validAttackabilitySolverConfiguration() AttackabilitySolverConfiguration {
	return AttackabilitySolverConfiguration{
		SolverID:               "mathcase-engine",
		SolverRevision:         "engine-revision-1",
		SolverModelID:          "gpt-6-astra",
		Toolchain:              "lean-4.33.1",
		InputBundleSHA256:      strings.Repeat("c", 64),
		ToolsetSHA256:          strings.Repeat("d", 64),
		TimeBudgetMillis:       60_000,
		TokenBudget:            20_000,
		AttemptBudget:          2,
		RetrievalPolicySHA256:  strings.Repeat("e", 64),
		AssistancePolicySHA256: strings.Repeat("f", 64),
	}
}

func TestAttackabilityOutcomeKeepsPredictionDistinctFromObservedOutcome(t *testing.T) {
	record := validAttackabilityOutcome()
	if err := record.Validate(); err != nil {
		t.Fatalf("Validate() error = %v, want valid scout record", err)
	}
	if record.Prediction.SuccessProbability == nil || *record.Prediction.SuccessProbability != 0.25 || record.ActualOutcome.Status != AttackabilityNotAttempted || record.Attempts.ProofAttempts != 0 {
		t.Fatalf("prediction/outcome/attempts = %v/%s/%d, want numeric probability/not attempted/zero", record.Prediction.SuccessProbability, record.ActualOutcome.Status, record.Attempts.ProofAttempts)
	}
}

func TestAttackabilityForecastPinsExactSolverConfiguration(t *testing.T) {
	record := validAttackabilityOutcome()
	if record.Prediction.SuccessProbability == nil || record.Prediction.SolverConfiguration == nil {
		t.Fatal("model prediction must carry a probability and solver configuration")
	}
	changed := *record.Prediction.SolverConfiguration
	changed.InputBundleSHA256 = strings.Repeat("9", 64)
	record.Prediction.SolverConfiguration = &changed
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "does not match the pinned fields") {
		t.Fatalf("Validate() error = %v, want mutated config digest refusal", err)
	}

	record = validAttackabilityOutcome()
	record.Prediction.SuccessProbability = nil
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "must state a probability") {
		t.Fatalf("Validate() error = %v, want probability-required refusal", err)
	}
}

func TestAttackabilityJSPPriorCanOnlyRemainUnattempted(t *testing.T) {
	record := validAttackabilityOutcome()
	record.RunReceiptID = ""
	record.RecordRevision = 1
	record.Prediction = AttackabilityPrediction{
		Kind: AttackabilityPriorEstimate, Class: AttackabilityMedium,
		Source: "JSP_294_TRIAGE", SourceRecordID: "jsp-triage-row-001", PredictedAtUTC: record.RecordedAtUTC,
	}
	record.ActualOutcome = AttackabilityActualOutcome{
		Status: AttackabilityNotAttempted, EvidenceIDs: []string{}, RecordedAtUTC: record.RecordedAtUTC,
	}
	record.Attempts = AttackabilityAttemptCounts{RunReceiptIDs: []string{}}
	record.Cost = AttackabilityRunCost{AccountingMode: AttackabilityNoRun, ResourceReceiptIDs: []string{}}
	if err := record.Validate(); err != nil {
		t.Fatalf("Validate() error = %v, want prior estimate with no claimed outcome", err)
	}
}

func TestAttackabilityOutcomeRevisionsAreAppendOnly(t *testing.T) {
	record := validAttackabilityOutcome()
	record.RecordRevision = 2
	record.SupersedesRecordID = "attackability-label-000"
	if err := record.Validate(); err != nil {
		t.Fatalf("Validate() error = %v, want superseding outcome revision", err)
	}
	record.SupersedesRecordID = record.RecordID
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "cannot supersede itself") {
		t.Fatalf("Validate() error = %v, want self-supersession refusal", err)
	}
}

func TestAttackabilityOutcomeRejectsPriorAsObservedResult(t *testing.T) {
	record := validAttackabilityOutcome()
	record.RunReceiptID = ""
	record.Attempts.InferenceRuns = 0
	record.Attempts.RunReceiptIDs = nil
	record.Attempts.AttemptBudget = 1
	record.Prediction = AttackabilityPrediction{
		Kind:           AttackabilityPriorEstimate,
		Class:          AttackabilityMedium,
		Source:         "JSP_294_TRIAGE",
		SourceRecordID: "jsp-294-annex",
		PredictedAtUTC: record.RecordedAtUTC.Add(-time.Minute),
	}
	record.ActualOutcome.Status = AttackabilityProofPassed
	record.ActualOutcome.ResultArtifactSHA256 = strings.Repeat("c", 64)
	record.ActualOutcome.EvidenceIDs = []string{"lean-proof-receipt"}
	record.Attempts.ProofAttempts = 1
	record.Attempts.SolverAttemptReceiptIDs = []string{"solver-proof-receipt"}
	firstAttempt := record.Prediction.PredictedAtUTC.Add(time.Second)
	record.Attempts.FirstWorkAttemptAtUTC = &firstAttempt
	record.Cost = AttackabilityRunCost{AccountingMode: AttackabilityNoRun, ResourceReceiptIDs: []string{}}
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "prior labels") {
		t.Fatalf("Validate() error = %v, want prior/outcome separation refusal", err)
	}
}

func TestAttackabilityPredictionMustPrecedeWorkAttempts(t *testing.T) {
	record := validAttackabilityOutcome()
	record.Attempts.FormalizationAttempts = 1
	record.Attempts.SolverAttemptReceiptIDs = []string{"solver-formalization-receipt"}
	firstAttempt := record.Prediction.PredictedAtUTC.Add(-time.Second)
	record.Attempts.FirstWorkAttemptAtUTC = &firstAttempt
	record.ActualOutcome = AttackabilityActualOutcome{
		Status: AttackabilityInProgress, EvidenceIDs: []string{"attempt-log"}, RecordedAtUTC: record.RecordedAtUTC,
	}
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "before the first work attempt") {
		t.Fatalf("Validate() error = %v, want prediction chronology refusal", err)
	}

	firstAttempt = record.Prediction.PredictedAtUTC.Add(time.Second)
	record.Attempts.FirstWorkAttemptAtUTC = &firstAttempt
	if err := record.Validate(); err != nil {
		t.Fatalf("Validate() error = %v, want correctly ordered forecast and attempt", err)
	}

	firstAttempt = record.Prediction.PredictedAtUTC
	record.Attempts.FirstWorkAttemptAtUTC = &firstAttempt
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "before the first work attempt") {
		t.Fatalf("Validate() error = %v, want strict forecast-before-attempt ordering", err)
	}

	firstAttempt = record.Prediction.PredictedAtUTC.Add(time.Second)
	record.Attempts.FirstWorkAttemptAtUTC = &firstAttempt
	record.Attempts.ProofAttempts = 2
	record.Attempts.SolverAttemptReceiptIDs = []string{"formalization-attempt", "proof-attempt-one", "proof-attempt-two"}
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "exceed the declared attempt budget") {
		t.Fatalf("Validate() error = %v, want attempt-budget overrun refusal", err)
	}
}

func TestAttackabilityFailureClassesStayDistinctAndEvidenceBound(t *testing.T) {
	tests := []struct {
		name   string
		status AttackabilityOutcomeStatus
		set    func(*AttackabilityOutcomeRecord)
		want   string
	}{
		{"formalization failure", AttackabilityFormalizationFailure, func(r *AttackabilityOutcomeRecord) {
			r.Attempts.FormalizationAttempts = 1
			r.Attempts.SolverAttemptReceiptIDs = []string{"formalization-attempt"}
			first := r.Prediction.PredictedAtUTC.Add(time.Second)
			r.Attempts.FirstWorkAttemptAtUTC = &first
			r.ActualOutcome.EvidenceIDs = []string{"formalizer-error"}
		}, ""},
		{"infrastructure failure", AttackabilityInfrastructureFailure, func(r *AttackabilityOutcomeRecord) {
			r.ActualOutcome.EvidenceIDs = []string{"sandbox-error"}
		}, ""},
		{"rejected proof", AttackabilityRejectedProof, func(r *AttackabilityOutcomeRecord) {
			r.Attempts.ProofAttempts = 1
			r.Attempts.SolverAttemptReceiptIDs = []string{"rejected-proof-attempt"}
			first := r.Prediction.PredictedAtUTC.Add(time.Second)
			r.Attempts.FirstWorkAttemptAtUTC = &first
			r.ActualOutcome.ResultArtifactSHA256 = strings.Repeat("d", 64)
			r.ActualOutcome.EvidenceIDs = []string{"rejected-proof"}
		}, ""},
		{"budget exhausted", AttackabilityBudgetExhausted, func(r *AttackabilityOutcomeRecord) {
			r.Attempts.FormalizationAttempts = 1
			r.Attempts.ProofAttempts = 1
			r.Attempts.SolverAttemptReceiptIDs = []string{"attempt-one", "attempt-two"}
			first := r.Prediction.PredictedAtUTC.Add(time.Second)
			r.Attempts.FirstWorkAttemptAtUTC = &first
			r.ActualOutcome.EvidenceIDs = []string{"attempt-ledger"}
		}, ""},
		{"budget overrun is not exhaustion", AttackabilityBudgetExhausted, func(r *AttackabilityOutcomeRecord) {
			r.Attempts.FormalizationAttempts = 2
			r.Attempts.ProofAttempts = 1
			r.Attempts.SolverAttemptReceiptIDs = []string{"attempt-one", "attempt-two", "attempt-three"}
			first := r.Prediction.PredictedAtUTC.Add(time.Second)
			r.Attempts.FirstWorkAttemptAtUTC = &first
			r.ActualOutcome.EvidenceIDs = []string{"attempt-ledger"}
		}, "exceed the declared attempt budget"},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			record := validAttackabilityOutcome()
			record.ActualOutcome.Status = test.status
			test.set(&record)
			err := record.Validate()
			if test.want != "" {
				if err == nil || !strings.Contains(err.Error(), test.want) {
					t.Fatalf("Validate() error = %v, want refusal containing %q", err, test.want)
				}
			} else if err != nil {
				t.Fatalf("Validate() error = %v, want distinct status accepted", err)
			}
		})
	}

	record := validAttackabilityOutcome()
	record.ActualOutcome.Status = AttackabilityFormalizationFailure
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "FORMALIZATION_FAILURE requires") {
		t.Fatalf("Validate() error = %v, want formalization evidence refusal", err)
	}
}

func TestProngJudgmentsPreserveDisagreementWithoutAggregation(t *testing.T) {
	record := validAttackabilityOutcome()
	record.ProngJudgments = []ProngJudgment{
		{Prong: ProngNovelty, Class: AttackabilityHigh, Source: "reviewer", SourceRecordID: "review-a", EvidenceIDs: []string{"novelty-a"}},
		{Prong: ProngNovelty, Class: AttackabilityLow, Source: "catalog-audit", SourceRecordID: "review-b", EvidenceIDs: []string{"novelty-b"}},
		{Prong: ProngReachability, Class: AttackabilityMedium, Source: "solver-estimate", SourceRecordID: "reachability-a", EvidenceIDs: []string{"reachability-evidence"}},
	}
	if err := record.Validate(); err != nil {
		t.Fatalf("Validate() error = %v, want source-attributed disagreement to remain representable", err)
	}
	record.ProngJudgments[1].SourceRecordID = "review-a"
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "duplicate prong judgment") {
		t.Fatalf("Validate() error = %v, want duplicate same-source judgment refusal", err)
	}
}

func TestAttackabilityOutcomeRequiresLaunchIdentityAndQuotaReceipt(t *testing.T) {
	t.Run("launch-time identity", func(t *testing.T) {
		record := validAttackabilityOutcome()
		record.Prediction.ModelIdentityCapturedAtUTC = nil
		if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "captured at launch") {
			t.Fatalf("Validate() error = %v, want launch identity refusal", err)
		}
	})
	t.Run("quota has no dollar amount", func(t *testing.T) {
		record := validAttackabilityOutcome()
		amount := 0.01
		record.Cost.ProviderAmountUSD = &amount
		if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "AGENT_QUOTA") {
			t.Fatalf("Validate() error = %v, want quota accounting refusal", err)
		}
	})
	t.Run("one label per inference run", func(t *testing.T) {
		record := validAttackabilityOutcome()
		record.Attempts.InferenceRuns = 2
		record.Attempts.RunReceiptIDs = []string{"run-receipt-001", "run-receipt-002"}
		if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "exactly one inference run receipt") {
			t.Fatalf("Validate() error = %v, want one-run-per-label refusal", err)
		}
	})
}

func TestAttackabilityPredictionReconcilesExactFutureRunReceipt(t *testing.T) {
	record := validAttackabilityOutcome()
	launchedAt := *record.Prediction.ModelIdentityCapturedAtUTC
	solverConfigSHA256 := record.Prediction.SolverConfigurationSHA256
	receipt := AgentRunReceipt{
		SchemaVersion:              AgentRunReceiptSchemaVersion2,
		ReceiptID:                  record.RunReceiptID,
		RecordedAtUTC:              record.RecordedAtUTC,
		Surface:                    "Delegated worker quota",
		Model:                      record.Prediction.ModelID,
		ModelIdentityCapturedAtUTC: &launchedAt,
		Target: AgentRunTarget{
			ProblemID:             record.Target.ProblemID,
			StatementID:           record.Target.StatementID,
			CatalogSnapshotSHA256: record.Target.CatalogSnapshotSHA256,
			StatementSHA256:       record.Target.StatementSHA256,
		},
		Purpose:        "scouting",
		Verdict:        "completed",
		InputClearance: []AgentRunInputClearance{{StatementID: record.Target.StatementID, EvidenceID: "clearance-mathcase-erdos-9", EvidenceSHA256: strings.Repeat("e", 64)}},
		LabelRecordIDs: []string{record.RecordID}, SolverConfigurationSHA256: &solverConfigSHA256,
	}
	if err := record.ValidateAgainstAgentRunReceipt(receipt); err != nil {
		t.Fatalf("ValidateAgainstAgentRunReceipt() error = %v, want reconciled prediction", err)
	}

	tests := []struct {
		name   string
		mutate func(*AgentRunReceipt)
		want   string
	}{
		{"receipt ID", func(receipt *AgentRunReceipt) { receipt.ReceiptID = "run-receipt-002" }, "identity"},
		{"predeclared label", func(receipt *AgentRunReceipt) { receipt.LabelRecordIDs = []string{"other-label"} }, "predeclare"},
		{"problem target", func(receipt *AgentRunReceipt) { receipt.Target.ProblemID = "another-problem" }, "target"},
		{"catalog snapshot", func(receipt *AgentRunReceipt) { receipt.Target.CatalogSnapshotSHA256 = strings.Repeat("c", 64) }, "target"},
		{"statement bytes", func(receipt *AgentRunReceipt) { receipt.Target.StatementSHA256 = strings.Repeat("d", 64) }, "target"},
		{"model identity", func(receipt *AgentRunReceipt) { receipt.Model = "gpt-6-sol" }, "model ID"},
		{"launch timestamp", func(receipt *AgentRunReceipt) {
			changed := receipt.RecordedAtUTC
			receipt.ModelIdentityCapturedAtUTC = &changed
		}, "capture time"},
		{"model snapshot", func(receipt *AgentRunReceipt) {
			snapshot := "immutable-snapshot-1"
			receipt.ModelSnapshotID = &snapshot
		}, "snapshot ID"},
		{"wrong target statement", func(receipt *AgentRunReceipt) { receipt.Target.StatementID = "another-statement" }, "target statement ID"},
		{"wrong clearance", func(receipt *AgentRunReceipt) { receipt.InputClearance[0].StatementID = "another-statement" }, "exact target statement ID"},
		{"solver configuration", func(receipt *AgentRunReceipt) {
			changed := strings.Repeat("a", 64)
			receipt.SolverConfigurationSHA256 = &changed
		}, "solver configuration digest"},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			changedReceipt := receipt
			changedReceipt.InputClearance = append([]AgentRunInputClearance(nil), receipt.InputClearance...)
			test.mutate(&changedReceipt)
			if err := record.ValidateAgainstAgentRunReceipt(changedReceipt); err == nil || !strings.Contains(err.Error(), test.want) {
				t.Fatalf("ValidateAgainstAgentRunReceipt() error = %v, want %q refusal", err, test.want)
			}
		})
	}
}

func TestAttackabilityVerifiedProofNeedsAttemptAndEvidence(t *testing.T) {
	record := validAttackabilityOutcome()
	record.ActualOutcome.Status = AttackabilityProofPassed
	record.ActualOutcome.ResultArtifactSHA256 = strings.Repeat("d", 64)
	record.ActualOutcome.EvidenceIDs = []string{"lean-proof-receipt"}
	record.Attempts.ProofAttempts = 1
	record.Attempts.SolverAttemptReceiptIDs = []string{"solver-proof-receipt"}
	firstAttempt := record.RecordedAtUTC
	record.Attempts.FirstWorkAttemptAtUTC = &firstAttempt
	if err := record.Validate(); err != nil {
		t.Fatalf("Validate() error = %v, want verified proof outcome", err)
	}
	record.Attempts.ProofAttempts = 0
	record.Attempts.SolverAttemptReceiptIDs = nil
	record.Attempts.FirstWorkAttemptAtUTC = nil
	if err := record.Validate(); err == nil || !strings.Contains(err.Error(), "at least one proof attempt") {
		t.Fatalf("Validate() error = %v, want missing proof-attempt refusal", err)
	}
}
