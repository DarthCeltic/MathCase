package domain

import (
	"fmt"

	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	V4RandomizedSamplesPass            = "SAMPLES_PASS"
	V4RandomizedCounterexampleObserved = "COUNTEREXAMPLE_OBSERVED"
	V4SMTUnsat                         = "UNSAT"
	V4SMTSat                           = "SAT"
	V4NegationNoCounterexample         = "NO_COUNTEREXAMPLE_FOUND"
	V4NegationCounterexampleProved     = "COUNTEREXAMPLE_PROVED"
)

// V4FalsificationAudit preserves the exact outcomes and evidence links used to
// decide the falsification gate. Bounded checks never establish truth; they
// only pass when each required search completed without a verified witness.
type V4FalsificationAudit struct {
	HypothesesPresent                bool     `json:"hypotheses_present"`
	HypothesesSatisfiable            bool     `json:"hypotheses_satisfiable"`
	HypothesisEvidenceID             string   `json:"hypothesis_evidence_id"`
	RandomizedCheckStatus            string   `json:"randomized_check_status"`
	RandomizedTestsRun               int      `json:"randomized_tests_run"`
	RandomizedCounterexampleObserved bool     `json:"randomized_counterexample_observed"`
	RandomizedCounterexampleVerified bool     `json:"randomized_counterexample_verified"`
	RandomizedEvidenceID             string   `json:"randomized_evidence_id"`
	SMTSearchStatus                  string   `json:"smt_search_status"`
	SMTWitnessKernelPassed           bool     `json:"smt_witness_kernel_passed"`
	SMTWitnessAxiomsPassed           bool     `json:"smt_witness_axioms_passed"`
	SMTEvidenceID                    string   `json:"smt_evidence_id"`
	NegationSearchStatus             string   `json:"negation_search_status"`
	NegationSearchEvidenceIDs        []string `json:"negation_search_evidence_ids"`
}

func (f V4FalsificationAudit) EvidenceIDs() []string {
	ids := []string{f.HypothesisEvidenceID, f.RandomizedEvidenceID, f.SMTEvidenceID}
	ids = append(ids, f.NegationSearchEvidenceIDs...)
	return uniqueStrings(ids)
}

func (f V4FalsificationAudit) ValidateLinks(linkedEvidenceIDs []string) error {
	for _, id := range f.EvidenceIDs() {
		if err := state.ValidateIdentifier("V4 evidence ID", id); err != nil {
			return err
		}
		if !containsString(linkedEvidenceIDs, id) {
			return fmt.Errorf("V4 evidence %q is not linked by the verification record", id)
		}
	}
	if f.RandomizedCounterexampleVerified && !f.RandomizedCounterexampleObserved {
		return fmt.Errorf("V4 randomized witness is marked verified without an observed counterexample")
	}
	if !f.HypothesesPresent && f.HypothesisEvidenceID != f.RandomizedEvidenceID {
		return fmt.Errorf("V4 no-hypothesis disposition must be bound to the randomized receipt")
	}
	if f.SMTSearchStatus == V4SMTUnsat && (f.SMTWitnessKernelPassed || f.SMTWitnessAxiomsPassed) {
		return fmt.Errorf("V4 UNSAT result cannot also contain a verified SAT witness")
	}
	return nil
}

func (f V4FalsificationAudit) Conclusion() (VerificationStatus, string) {
	if f.HypothesesPresent && !f.HypothesesSatisfiable {
		return VerificationFailed, "V4 found unsatisfiable or unverified hypotheses."
	}
	if f.RandomizedCounterexampleVerified || f.SMTSearchStatus == V4SMTSat && f.SMTWitnessKernelPassed && f.SMTWitnessAxiomsPassed || f.NegationSearchStatus == V4NegationCounterexampleProved {
		return VerificationFailed, "V4 found a kernel-checked counterexample."
	}
	if !f.HypothesesSatisfiable || f.HypothesisEvidenceID == "" || f.RandomizedEvidenceID == "" || f.SMTEvidenceID == "" || len(f.NegationSearchEvidenceIDs) == 0 {
		return VerificationBlocked, "V4 is missing required hypothesis or search evidence."
	}
	if f.RandomizedCounterexampleObserved || f.RandomizedCheckStatus == V4RandomizedCounterexampleObserved {
		return VerificationBlocked, "V4 observed a randomized counterexample that lacks a complete kernel/V2 disposition."
	}
	if f.RandomizedCheckStatus != V4RandomizedSamplesPass || f.RandomizedTestsRun <= 0 {
		return VerificationBlocked, "V4 randomized checking did not complete with all sampled cases passing."
	}
	if f.SMTSearchStatus == V4SMTSat {
		return VerificationBlocked, "V4 SMT search found a model without a complete kernel/V2 counterexample proof."
	}
	if f.SMTSearchStatus != V4SMTUnsat {
		return VerificationBlocked, "V4 SMT search did not complete with UNSAT over its recorded supported fragment."
	}
	if f.NegationSearchStatus != V4NegationNoCounterexample {
		return VerificationBlocked, "V4 negation search did not complete without a counterexample."
	}
	return VerificationBlocked, "V4 typed falsification claims do not prove that the searches ran; reopened randomized, SMT, and negation-search execution receipts are required before passage."
}

// V5LemmaAblation records one independently identified attempt to remove a
// lemma from the exact baseline proof. The modified proof source hash remains
// useful even when the bounded search did not complete.
type V5LemmaAblation struct {
	LemmaID             string `json:"lemma_id"`
	Attempted           bool   `json:"attempted"`
	SearchCompleted     bool   `json:"search_completed"`
	AblatedProofClosed  bool   `json:"ablated_proof_closed"`
	AblatedSourceSHA256 string `json:"ablated_source_sha256"`
	EvidenceID          string `json:"evidence_id"`
}

// V5EssentialityAudit binds each ablation attempt to its source and evidence.
type V5EssentialityAudit struct {
	Ablations []V5LemmaAblation `json:"ablations"`
}

func (v V5EssentialityAudit) EvidenceIDs() []string {
	ids := make([]string, 0, len(v.Ablations))
	for _, ablation := range v.Ablations {
		ids = append(ids, ablation.EvidenceID)
	}
	return uniqueStrings(ids)
}

func (v V5EssentialityAudit) ValidateLinks(linkedEvidenceIDs []string) error {
	if len(v.Ablations) == 0 {
		return fmt.Errorf("V5 has no lemma-ablation attempts")
	}
	seenLemmas := make(map[string]struct{}, len(v.Ablations))
	seenEvidence := make(map[string]struct{}, len(v.Ablations))
	for _, ablation := range v.Ablations {
		if err := state.ValidateIdentifier("V5 lemma ID", ablation.LemmaID); err != nil {
			return err
		}
		if err := state.ValidateIdentifier("V5 evidence ID", ablation.EvidenceID); err != nil {
			return err
		}
		if _, exists := seenLemmas[ablation.LemmaID]; exists {
			return fmt.Errorf("V5 repeats lemma ablation %q", ablation.LemmaID)
		}
		if _, exists := seenEvidence[ablation.EvidenceID]; exists {
			return fmt.Errorf("V5 reuses evidence ID %q", ablation.EvidenceID)
		}
		seenLemmas[ablation.LemmaID] = struct{}{}
		seenEvidence[ablation.EvidenceID] = struct{}{}
		if !containsString(linkedEvidenceIDs, ablation.EvidenceID) {
			return fmt.Errorf("V5 evidence %q is not linked by the verification record", ablation.EvidenceID)
		}
		if ablation.Attempted && !validSHA256(ablation.AblatedSourceSHA256) {
			return fmt.Errorf("V5 ablation %q has an invalid source digest", ablation.LemmaID)
		}
	}
	return nil
}

func (v V5EssentialityAudit) Conclusion() (VerificationStatus, string) {
	if len(v.Ablations) == 0 {
		return VerificationBlocked, "V5 has no complete lemma-ablation set."
	}
	for _, ablation := range v.Ablations {
		if !ablation.Attempted || !ablation.SearchCompleted || !validSHA256(ablation.AblatedSourceSHA256) {
			return VerificationBlocked, fmt.Sprintf("V5 ablation for lemma %q is incomplete.", ablation.LemmaID)
		}
		if ablation.AblatedProofClosed {
			return VerificationFailed, fmt.Sprintf("V5 found that lemma %q can be ablated without breaking the proof.", ablation.LemmaID)
		}
	}
	return VerificationBlocked, "V5 typed ablation claims do not prove that the searches ran; reopened lemma-ablation execution receipts bound to the exact proof and source are required before passage."
}

func uniqueStrings(values []string) []string {
	seen := make(map[string]struct{}, len(values))
	result := make([]string, 0, len(values))
	for _, value := range values {
		if value == "" {
			continue
		}
		if _, exists := seen[value]; exists {
			continue
		}
		seen[value] = struct{}{}
		result = append(result, value)
	}
	return result
}
