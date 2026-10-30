package application

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"path/filepath"
	"sort"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/poser"
	"github.com/DarthCeltic/MathCase/internal/solver"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	ProposalCounterexampleProved = "COUNTEREXAMPLE_PROVED"
	ProposalNoCounterexample     = "NO_COUNTEREXAMPLE_FOUND"
	ProposalSearchBounded        = "SEARCH_BOUNDED"
	ProposalSearchIncomplete     = "SEARCH_INCOMPLETE"
	ProposalStatementRejected    = "PROPOSITION_REJECTED"
	easyBaselinePolicyID         = "pantograph-local-easy-v1"
	easyBaselineMaxNodes         = 8
	easyBaselineMaxDepth         = 2
	easyBaselineTimeout          = 5 * time.Second
)

// ProposalFalsificationResult combines proposition elaboration, bounded
// randomized instances, a witness check for hypotheses, and a search for a
// kernel-checked proof of the proposal's negation. Passing samples or finding
// no negation proof does not establish that the proposal is true.
type ProposalFalsificationResult struct {
	SchemaVersion              string                            `json:"schema_version"`
	EvidenceID                 string                            `json:"evidence_id"`
	RecordedAtUTC              time.Time                         `json:"recorded_at_utc"`
	RunID                      string                            `json:"run_id"`
	ProposalID                 string                            `json:"proposal_id"`
	ParentLineageSHA256        string                            `json:"parent_lineage_sha256"`
	ParentLineageTrusted       bool                              `json:"parent_lineage_trusted"`
	Status                     string                            `json:"status"`
	CounterexampleFound        bool                              `json:"counterexample_found"`
	CounterexampleRoutes       []string                          `json:"counterexample_routes"`
	CandidateTypecheck         solver.LeanStatementCheckReceipt  `json:"candidate_typecheck"`
	RandomizedCheck            solver.LeanRandomizedCheckReceipt `json:"randomized_check"`
	HypothesesSatisfiable      bool                              `json:"hypotheses_satisfiable"`
	HypothesisVerification     LocalProofVerification            `json:"hypothesis_verification"`
	CounterexampleVerification LocalProofVerification            `json:"counterexample_verification"`
	SMTWitnessVerification     LocalProofVerification            `json:"smt_witness_verification"`
	SMTSearch                  solver.SMTSearchReceipt           `json:"smt_search"`
	EasyBaseline               EasyBaselineResult                `json:"easy_baseline"`
	SieveEvidence              poser.SieveEvidence               `json:"sieve_evidence"`
	SieveEligibilityStatus     string                            `json:"sieve_eligibility_status"`
	SieveEligibilitySummary    string                            `json:"sieve_eligibility_summary"`
	NegationProblemID          string                            `json:"negation_problem_id"`
	NegationSearch             solver.Result                     `json:"negation_search"`
}

type LocalProofVerification struct {
	KernelPassed bool   `json:"kernel_passed"`
	AxiomsPassed bool   `json:"axioms_passed"`
	EvidenceID   string `json:"evidence_id,omitempty"`
	Summary      string `json:"summary,omitempty"`
}

type EasyBaselineProfile struct {
	PolicyID            string `json:"policy_id"`
	MaxNodes            int    `json:"max_nodes"`
	MaxDepth            int    `json:"max_depth"`
	TimeoutMilliseconds int64  `json:"timeout_milliseconds"`
	SHA256              string `json:"sha256"`
}

type EasyBaselineResult struct {
	Profile EasyBaselineProfile `json:"profile"`
	Status  string              `json:"status"`
	Solved  bool                `json:"solved"`
	Search  solver.Result       `json:"search"`
	Summary string              `json:"summary"`
}

// FalsifyProposal elaborates the candidate, runs supported bounded samples,
// verifies any sample witnesses, and searches for a proof of the negation.
func (r LocalSearchRuntime) FalsifyProposal(ctx context.Context, runID string, proposal poser.Proposal) (ProposalFalsificationResult, error) {
	return r.falsifyProposal(ctx, runID, proposal, VerifiedPoseParents{})
}

// FalsifyProposalWithTrustedParents runs the local sieve only after a signed
// parent loader has verified every parent lineage for this exact proposal.
func (r LocalSearchRuntime) FalsifyProposalWithTrustedParents(ctx context.Context, runID string, proposal poser.Proposal, parents VerifiedPoseParents) (ProposalFalsificationResult, error) {
	if !parents.matches(proposal) {
		return ProposalFalsificationResult{}, errors.New("application: trusted parent verification does not match this proposal")
	}
	return r.falsifyProposal(ctx, runID, proposal, parents)
}

func (r LocalSearchRuntime) falsifyProposal(ctx context.Context, runID string, proposal poser.Proposal, parents VerifiedPoseParents) (ProposalFalsificationResult, error) {
	if ctx == nil {
		return ProposalFalsificationResult{}, errors.New("application: context is required for proposal falsification")
	}
	if err := state.ValidateIdentifier("run ID", runID); err != nil {
		return ProposalFalsificationResult{}, err
	}
	if err := proposal.Validate(); err != nil {
		return ProposalFalsificationResult{}, fmt.Errorf("application: validate proposal: %w", err)
	}
	typecheckProblem, err := proposal.TypecheckProblem()
	if err != nil {
		return ProposalFalsificationResult{}, err
	}
	negationProblem, err := proposal.NegationProblem()
	if err != nil {
		return ProposalFalsificationResult{}, err
	}
	if r.Problem.ID != negationProblem.ID || r.Problem.Statement != negationProblem.Statement || r.Problem.LeanStatement != negationProblem.LeanStatement {
		return ProposalFalsificationResult{}, errors.New("application: local search runtime is not configured for this proposal's exact negation")
	}
	result := ProposalFalsificationResult{
		SchemaVersion:        "mathcase-m2-v4-falsification-v5",
		EvidenceID:           falsificationEvidenceID(runID, proposal.ID),
		RunID:                runID,
		ProposalID:           proposal.ID,
		ParentLineageSHA256:  proposal.ParentLineageSHA256,
		ParentLineageTrusted: parents.matches(proposal),
		NegationProblemID:    negationProblem.ID,
		NegationSearch:       solver.Result{Attempts: []domain.SolverAttempt{}},
		CounterexampleRoutes: []string{},
	}
	check, err := r.StatementChecker.CheckProposition(ctx, typecheckProblem)
	result.CandidateTypecheck = check
	if err != nil {
		result.Status = ProposalSearchIncomplete
		if persistErr := r.persistFalsificationResult(&result, proposal); persistErr != nil {
			return result, persistErr
		}
		return result, fmt.Errorf("application: type-check candidate proposition: %w", err)
	}
	if !check.TypecheckPassed {
		result.Status = ProposalStatementRejected
		return result, r.persistFalsificationResult(&result, proposal)
	}

	randomizedPlan, err := proposal.BuildRandomizedPlan(r.RandomizedSampleCount)
	if err != nil {
		result.RandomizedCheck.Status = "UNSUPPORTED"
		result.RandomizedCheck.Summary = err.Error()
	} else {
		binders := make([]solver.LeanSampleBinder, len(randomizedPlan.Binders))
		for index, binder := range randomizedPlan.Binders {
			binders[index] = solver.LeanSampleBinder{Name: binder.Name, LeanType: binder.LeanType}
		}
		randomizedCheck, checkErr := r.StatementChecker.CheckRandomizedCases(ctx, solver.LeanRandomizedCheckRequest{
			Problem:                typecheckProblem,
			Seed:                   randomizedPlan.Seed,
			Binders:                binders,
			ClaimBody:              randomizedPlan.Body,
			HypothesesBody:         randomizedPlan.HypothesesBody,
			ImplicationAntecedents: randomizedPlan.ImplicationAntecedents,
			ConclusionBody:         randomizedPlan.ConclusionBody,
			ConclusionBinderCount:  randomizedPlan.ConclusionBinderCount,
			HasHypotheses:          randomizedPlan.HasHypotheses,
			Cases:                  randomizedPlan.Cases,
		})
		result.RandomizedCheck = randomizedCheck
		if checkErr != nil {
			result.RandomizedCheck.Status = "UNAVAILABLE"
			result.RandomizedCheck.Summary = checkErr.Error()
		} else {
			if randomizedCheck.HypothesisWitnessCaseIndex != nil {
				satisfiabilityProblem, problemErr := randomizedPlan.SatisfiabilityProblem()
				satisfiabilityProof, proofErr := randomizedPlan.SatisfiabilityProof(*randomizedCheck.HypothesisWitnessCaseIndex)
				if problemErr == nil && proofErr == nil {
					verification, verifyErr := r.StatementChecker.Verify(ctx, satisfiabilityProblem, satisfiabilityProof)
					result.HypothesisVerification = proofVerificationSummary(verification)
					result.HypothesesSatisfiable = verifyErr == nil && verification.KernelPassed && verification.AxiomsPassed
					if verifyErr != nil {
						result.HypothesisVerification.Summary = verifyErr.Error()
					}
				} else {
					result.HypothesisVerification.Summary = errors.Join(problemErr, proofErr).Error()
				}
			}
			for _, caseIndex := range randomizedCheck.CounterexampleCaseIndices {
				counterexampleProof, proofErr := randomizedPlan.CounterexampleProof(caseIndex)
				if proofErr != nil {
					result.CounterexampleVerification.Summary = proofErr.Error()
					continue
				}
				verification, verifyErr := r.StatementChecker.Verify(ctx, negationProblem, counterexampleProof)
				result.CounterexampleVerification = proofVerificationSummary(verification)
				if verifyErr != nil {
					result.CounterexampleVerification.Summary = verifyErr.Error()
					continue
				}
				if verification.KernelPassed && verification.AxiomsPassed {
					result.CounterexampleFound = true
					result.CounterexampleRoutes = append(result.CounterexampleRoutes, "RANDOMIZED_INSTANCE")
					break
				}
			}
		}
	}

	smtQuery, smtQueryErr := proposal.BuildSMTNegationQuery()
	if smtQueryErr != nil {
		result.SMTSearch = solver.SMTSearchReceipt{Engine: "z3-python-smtlib-v1", Status: "UNSUPPORTED", Summary: smtQueryErr.Error()}
	} else if len(smtQuery.ModelSymbols) != len(smtQuery.Binders) {
		result.SMTSearch = solver.SMTSearchReceipt{
			EvidenceID: "m2-smt-invalid-symbol-map-" + proposal.ID,
			Engine:     "z3-python-smtlib-v1",
			Status:     "ERROR",
			Summary:    "SMT query binder symbols do not align with the Lean binder list.",
		}
	} else {
		binders := make([]solver.SMTBinder, len(smtQuery.Binders))
		modelBindings := make([]solver.SMTModelBinding, len(smtQuery.Binders))
		for index, binder := range smtQuery.Binders {
			symbol := smtQuery.ModelSymbols[index]
			binders[index] = solver.SMTBinder{Name: symbol, LeanType: binder.LeanType}
			modelBindings[index] = solver.SMTModelBinding{LeanName: binder.Name, Symbol: symbol, LeanType: binder.LeanType}
		}
		smtResult, smtErr := r.SMTSolver.Search(ctx, smtQuery.SMTLIB, binders)
		if smtErr != nil {
			result.SMTSearch = solver.SMTSearchReceipt{
				EvidenceID: "m2-smt-unavailable-" + proposal.ID,
				Engine:     "z3-python-smtlib-v1",
				Status:     "UNAVAILABLE",
				Summary:    smtErr.Error(),
			}
		} else {
			result.SMTSearch = smtResult
			if smtResult.Status == "SAT" {
				plan, planErr := proposal.BuildRandomizedPlan(1)
				if planErr != nil {
					result.SMTWitnessVerification.Summary = planErr.Error()
				} else {
					modelValues, valuesErr := smtModelValuesForPlan(smtQuery, smtResult.CounterexampleValues, plan)
					if valuesErr != nil {
						result.SMTWitnessVerification.Summary = valuesErr.Error()
					} else if proof, proofErr := plan.CounterexampleProofValues(modelValues); proofErr != nil {
						result.SMTWitnessVerification.Summary = proofErr.Error()
					} else {
						verification, verifyErr := r.StatementChecker.Verify(ctx, negationProblem, proof)
						result.SMTWitnessVerification = proofVerificationSummary(verification)
						if verifyErr != nil {
							result.SMTWitnessVerification.Summary = verifyErr.Error()
						} else if verification.KernelPassed && verification.AxiomsPassed {
							result.CounterexampleFound = true
							result.CounterexampleRoutes = append(result.CounterexampleRoutes, "SMT_MODEL")
						}
					}
				}
			}
		}
		result.SMTSearch.ModelBindings = modelBindings
	}

	baseline, baselineErr := r.runEasySolverBaseline(ctx, runID, typecheckProblem)
	result.EasyBaseline = baseline
	if baselineErr != nil {
		result.EasyBaseline.Status = "INCOMPLETE"
		result.EasyBaseline.Summary = baselineErr.Error()
	}

	search, err := r.Solve(ctx, runID)
	result.NegationSearch = search
	if err != nil {
		if result.CounterexampleFound {
			result.Status = ProposalCounterexampleProved
			return result, r.persistFalsificationResult(&result, proposal)
		}
		result.Status = ProposalSearchIncomplete
		if persistErr := r.persistFalsificationResult(&result, proposal); persistErr != nil {
			return result, persistErr
		}
		return result, fmt.Errorf("application: search candidate negation: %w", err)
	}
	if search.Solved {
		result.Status = ProposalCounterexampleProved
		result.CounterexampleFound = true
		result.CounterexampleRoutes = append(result.CounterexampleRoutes, "NEGATION_SEARCH")
		return result, r.persistFalsificationResult(&result, proposal)
	}
	if result.CounterexampleFound {
		result.Status = ProposalCounterexampleProved
		return result, r.persistFalsificationResult(&result, proposal)
	}
	if len(search.Attempts) == 0 || search.Attempts[len(search.Attempts)-1].Outcome != domain.SolverOutcomeNoProgress {
		result.Status = ProposalSearchIncomplete
		return result, r.persistFalsificationResult(&result, proposal)
	}
	metrics := search.Attempts[len(search.Attempts)-1].SearchMetrics
	if metrics == nil {
		result.Status = ProposalSearchIncomplete
		return result, r.persistFalsificationResult(&result, proposal)
	}
	switch metrics.StopReason {
	case "frontier_exhausted":
		result.Status = ProposalNoCounterexample
	case "node_limit", "depth_limit", "branch_limit", "time_limit":
		result.Status = ProposalSearchBounded
	default:
		result.Status = ProposalSearchIncomplete
	}
	if result.SMTSearch.Status == "SAT" && !result.SMTWitnessVerification.KernelPassed {
		result.Status = ProposalSearchIncomplete
	}
	return result, r.persistFalsificationResult(&result, proposal)
}

func (r LocalSearchRuntime) runEasySolverBaseline(ctx context.Context, runID string, problem domain.MathProblem) (EasyBaselineResult, error) {
	profile := EasyBaselineProfile{
		PolicyID: easyBaselinePolicyID, MaxNodes: easyBaselineMaxNodes,
		MaxDepth: easyBaselineMaxDepth, TimeoutMilliseconds: easyBaselineTimeout.Milliseconds(),
	}
	policyData, err := json.Marshal(profile)
	if err != nil {
		return EasyBaselineResult{}, fmt.Errorf("application: encode easy-solver baseline profile: %w", err)
	}
	policyDigest := sha256.Sum256(policyData)
	profile.SHA256 = hex.EncodeToString(policyDigest[:])
	result := EasyBaselineResult{
		Profile: profile,
		Status:  "INCOMPLETE",
		Search:  solver.Result{Attempts: []domain.SolverAttempt{}},
	}
	if ctx == nil {
		return result, errors.New("application: context is required for easy-solver baseline")
	}
	if len(r.Cascade.Solvers) == 0 {
		return result, errors.New("application: local Pantograph solver is required for the easy-solver baseline")
	}
	baselineCascade := r.Cascade
	baselineSolvers := make([]solver.Solver, 0, len(r.Cascade.Solvers))
	for _, configured := range r.Cascade.Solvers {
		localSearch, ok := configured.(solver.PantographSearchSolver)
		if !ok {
			return result, errors.New("application: easy-solver baseline requires the configured local Pantograph engine")
		}
		localSearch.MaxNodes = easyBaselineMaxNodes
		localSearch.MaxDepth = easyBaselineMaxDepth
		localSearch.Timeout = easyBaselineTimeout
		baselineSolvers = append(baselineSolvers, localSearch)
	}
	baselineCascade.Solvers = baselineSolvers
	search, err := baselineCascade.Solve(ctx, runID, problem)
	result.Search = search
	result.Solved = search.Solved
	if err != nil {
		return result, fmt.Errorf("application: run easy-solver baseline: %w", err)
	}
	result.Status = "COMPLETED"
	if search.Solved {
		result.Summary = "The frozen low-budget local baseline proved the candidate; keep it out of the novel-proposal lane."
	} else {
		result.Summary = "The frozen low-budget local baseline did not prove the candidate within its recorded bounds."
	}
	return result, nil
}

// smtModelValuesForPlan aligns solver symbols with the exact Lean binders used
// by the proof constructor. The SMT query and randomized plan are generated by
// separate transformations, so a positional coincidence is not enough to
// justify turning an external model into a proof candidate.
func smtModelValuesForPlan(query poser.SMTNegationQuery, model map[string]string, plan poser.RandomizedPlan) ([]string, error) {
	if len(query.Binders) != len(query.ModelSymbols) || len(query.Binders) != len(plan.Binders) {
		return nil, errors.New("application: SMT model binders do not align with the Lean witness plan")
	}
	if len(model) != len(query.ModelSymbols) {
		return nil, errors.New("application: SMT model does not contain exactly one value for every query symbol")
	}

	queryBinders := make(map[string]poser.RandomizedBinder, len(query.Binders))
	symbolsByName := make(map[string]string, len(query.Binders))
	seenSymbols := make(map[string]struct{}, len(query.ModelSymbols))
	for index, binder := range query.Binders {
		symbol := query.ModelSymbols[index]
		if binder.Name == "" || symbol == "" {
			return nil, errors.New("application: SMT model binding has an empty Lean name or solver symbol")
		}
		if _, exists := queryBinders[binder.Name]; exists {
			return nil, fmt.Errorf("application: SMT query repeats Lean binder %q", binder.Name)
		}
		if _, exists := seenSymbols[symbol]; exists {
			return nil, fmt.Errorf("application: SMT query repeats solver symbol %q", symbol)
		}
		value, exists := model[symbol]
		if !exists || value == "" {
			return nil, fmt.Errorf("application: SMT model is missing a value for solver symbol %q", symbol)
		}
		queryBinders[binder.Name] = binder
		symbolsByName[binder.Name] = symbol
		seenSymbols[symbol] = struct{}{}
	}

	values := make([]string, len(plan.Binders))
	seenPlanBinders := make(map[string]struct{}, len(plan.Binders))
	for index, binder := range plan.Binders {
		if binder.Name == "" {
			return nil, errors.New("application: Lean witness plan contains an empty binder name")
		}
		if _, exists := seenPlanBinders[binder.Name]; exists {
			return nil, fmt.Errorf("application: Lean witness plan repeats binder %q", binder.Name)
		}
		queryBinder, exists := queryBinders[binder.Name]
		if !exists || queryBinder.LeanType != binder.LeanType {
			return nil, fmt.Errorf("application: SMT query binder %q (%s) does not match the Lean witness plan", binder.Name, binder.LeanType)
		}
		values[index] = model[symbolsByName[binder.Name]]
		seenPlanBinders[binder.Name] = struct{}{}
	}
	return values, nil
}

func proofVerificationSummary(verification solver.Verification) LocalProofVerification {
	return LocalProofVerification{
		KernelPassed: verification.KernelPassed,
		AxiomsPassed: verification.AxiomsPassed,
		EvidenceID:   verification.EvidenceID,
		Summary:      verification.Summary,
	}
}

func (r LocalSearchRuntime) persistFalsificationResult(result *ProposalFalsificationResult, proposal poser.Proposal) error {
	if result == nil {
		return errors.New("application: M2 falsification result is required")
	}
	result.SieveEvidence = sieveEvidenceFromResult(*result)
	if err := result.SieveEvidence.EligibleForHumanReview(proposal); err != nil {
		switch {
		case result.CounterexampleFound:
			result.SieveEligibilityStatus = "REJECTED"
			result.SieveEligibilitySummary = "A kernel-checked counterexample was found; the proposal is rejected."
		case result.EasyBaseline.Solved:
			result.SieveEligibilityStatus = "REJECTED"
			result.SieveEligibilitySummary = "The frozen easy-solver baseline proved the candidate; it is excluded from the novel-proposal lane."
		default:
			result.SieveEligibilityStatus = "BLOCKED"
			result.SieveEligibilitySummary = err.Error()
		}
	} else {
		result.SieveEligibilityStatus = "ELIGIBLE_FOR_HUMAN_REVIEW"
		result.SieveEligibilitySummary = "All configured local sieve checks passed; an independent human review is still required."
	}
	return r.writeFalsificationReceipt(result)
}

func sieveEvidenceFromResult(result ProposalFalsificationResult) poser.SieveEvidence {
	evidence := poser.SieveEvidence{
		ProposalID:                   result.ProposalID,
		ParentLineageSHA256:          result.ParentLineageSHA256,
		TrustedParentsVerified:       result.ParentLineageTrusted,
		LeanTypechecked:              result.CandidateTypecheck.TypecheckPassed,
		CandidateTypecheckEvidenceID: result.CandidateTypecheck.EvidenceID,
		HypothesesPresent:            result.RandomizedCheck.HasHypotheses,
		HypothesesSatisfiable:        result.HypothesesSatisfiable,
		HypothesisEvidenceID:         result.HypothesisVerification.EvidenceID,
		RandomizedCheckStatus:        result.RandomizedCheck.Status,
		RandomizedCounterexampleSeen: len(result.RandomizedCheck.CounterexampleCaseIndices) > 0,
		RandomizedCounterexampleOK:   containsRoute(result.CounterexampleRoutes, "RANDOMIZED_INSTANCE") && result.CounterexampleVerification.KernelPassed && result.CounterexampleVerification.AxiomsPassed,
		RandomizedTestsRun:           result.RandomizedCheck.TestsRun,
		RandomizedEvidenceID:         result.RandomizedCheck.EvidenceID,
		SMTSearchPerformed:           result.SMTSearch.Status == "UNSAT" || result.SMTSearch.Status == "SAT" && result.SMTWitnessVerification.KernelPassed && result.SMTWitnessVerification.AxiomsPassed,
		SMTSearchStatus:              result.SMTSearch.Status,
		SMTWitnessKernelPassed:       result.SMTWitnessVerification.KernelPassed,
		SMTWitnessAxiomsPassed:       result.SMTWitnessVerification.AxiomsPassed,
		SMTEvidenceID:                result.SMTSearch.EvidenceID,
		NegationSearchPerformed:      result.Status == ProposalNoCounterexample || result.CounterexampleFound,
		NegationSearchStatus:         result.Status,
		NegationSearchEvidenceIDs:    searchEvidenceIDs(result.NegationSearch),
		CounterexampleFound:          result.CounterexampleFound,
		EasyBaselineCompleted:        result.EasyBaseline.Status == "COMPLETED",
		EasyBaselineSolved:           result.EasyBaseline.Solved,
		EasyBaselineEvidenceIDs:      searchEvidenceIDs(result.EasyBaseline.Search),
		EvidenceIDs:                  []string{},
	}
	if !evidence.HypothesesPresent {
		// For an unconditional proposition, the recorded randomized-check receipt
		// is the evidence that no hypothesis-satisfiability obligation applies.
		evidence.HypothesesSatisfiable = true
		evidence.HypothesisEvidenceID = result.RandomizedCheck.EvidenceID
	}
	evidence.NegationSearchEvidenceIDs = append(evidence.NegationSearchEvidenceIDs, result.EvidenceID)
	evidence.EasyBaselineEvidenceIDs = append(evidence.EasyBaselineEvidenceIDs, result.EvidenceID)
	seen := make(map[string]struct{})
	addEvidence := func(id string) {
		if id == "" {
			return
		}
		if _, exists := seen[id]; exists {
			return
		}
		seen[id] = struct{}{}
		evidence.EvidenceIDs = append(evidence.EvidenceIDs, id)
	}
	addEvidence(result.CandidateTypecheck.EvidenceID)
	addEvidence(result.RandomizedCheck.EvidenceID)
	addEvidence(result.HypothesisVerification.EvidenceID)
	addEvidence(result.CounterexampleVerification.EvidenceID)
	addEvidence(result.SMTSearch.EvidenceID)
	addEvidence(result.SMTWitnessVerification.EvidenceID)
	for _, evidenceID := range evidence.NegationSearchEvidenceIDs {
		addEvidence(evidenceID)
	}
	for _, evidenceID := range evidence.EasyBaselineEvidenceIDs {
		addEvidence(evidenceID)
	}
	addEvidence(result.EvidenceID)
	sort.Strings(evidence.NegationSearchEvidenceIDs)
	sort.Strings(evidence.EasyBaselineEvidenceIDs)
	sort.Strings(evidence.EvidenceIDs)
	return evidence
}

func containsRoute(routes []string, expected string) bool {
	for _, route := range routes {
		if route == expected {
			return true
		}
	}
	return false
}

func searchEvidenceIDs(result solver.Result) []string {
	seen := make(map[string]struct{})
	var evidenceIDs []string
	for _, attempt := range result.Attempts {
		for _, evidenceID := range attempt.EvidenceIDs {
			if evidenceID == "" {
				continue
			}
			if _, exists := seen[evidenceID]; exists {
				continue
			}
			seen[evidenceID] = struct{}{}
			evidenceIDs = append(evidenceIDs, evidenceID)
		}
	}
	sort.Strings(evidenceIDs)
	return evidenceIDs
}

func falsificationEvidenceID(runID, proposalID string) string {
	digest := sha256.Sum256([]byte(runID + "\x00" + proposalID))
	return "m2-v4-" + hex.EncodeToString(digest[:])
}

func (r LocalSearchRuntime) writeFalsificationReceipt(result *ProposalFalsificationResult) error {
	if result == nil {
		return errors.New("application: M2 falsification receipt is required")
	}
	if r.ReceiptRoot == "" {
		return errors.New("application: durable M2 falsification receipt root is required")
	}
	root, err := filepath.Abs(r.ReceiptRoot)
	if err != nil {
		return fmt.Errorf("application: resolve M2 falsification receipt root: %w", err)
	}
	if err := os.MkdirAll(root, 0o700); err != nil {
		return fmt.Errorf("application: create M2 falsification receipt root: %w", err)
	}
	result.RecordedAtUTC = time.Now().UTC()
	data, err := json.MarshalIndent(result, "", "  ")
	if err != nil {
		return fmt.Errorf("application: encode M2 falsification receipt: %w", err)
	}
	data = append(data, '\n')
	path := filepath.Join(root, result.EvidenceID+".json")
	file, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0o600)
	if err != nil {
		return fmt.Errorf("application: create append-only M2 falsification receipt: %w", err)
	}
	if _, err := file.Write(data); err != nil {
		_ = file.Close()
		return fmt.Errorf("application: write M2 falsification receipt: %w", err)
	}
	if err := file.Sync(); err != nil {
		_ = file.Close()
		return fmt.Errorf("application: flush M2 falsification receipt: %w", err)
	}
	if err := file.Close(); err != nil {
		return fmt.Errorf("application: close M2 falsification receipt: %w", err)
	}
	return nil
}
