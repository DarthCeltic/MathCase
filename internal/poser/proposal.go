// Package poser generates bounded structural conjecture variants with source
// lineage. Proposals remain unpromoted until the independent sieve has evidence.
package poser

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/state"
)

type Operator string

const (
	OperatorRelax   Operator = "RELAX"
	OperatorSharpen Operator = "SHARPEN"
	OperatorHybrid  Operator = "HYBRID"
	OperatorDual    Operator = "DUAL"
)

type Proposal struct {
	ID                  string          `json:"id"`
	Parents             []ParentLineage `json:"parents"`
	ParentLineageSHA256 string          `json:"parent_lineage_sha256"`
	Operator            Operator        `json:"operator"`
	LeanStatement       string          `json:"lean_statement"`
	MutationDiff        string          `json:"mutation_diff"`
	GeneratorID         string          `json:"generator_id"`
	GeneratedAt         time.Time       `json:"generated_at"`
}

// ParentLineage binds a generated conjecture to a source theorem, its exact
// source snapshot, proof, and independent kernel/axiom evidence.
type ParentLineage struct {
	ProblemID             string   `json:"problem_id"`
	SourceIDs             []string `json:"source_ids"`
	SnapshotSHA256        string   `json:"snapshot_sha256"`
	SignedDossierCaseID   string   `json:"signed_dossier_case_id,omitempty"`
	SignedDossierSHA256   string   `json:"signed_dossier_sha256,omitempty"`
	SignedDossierSignerID string   `json:"signed_dossier_signer_id,omitempty"`
	StatementSHA256       string   `json:"statement_sha256"`
	ProofSHA256           string   `json:"proof_sha256"`
	V1EvidenceIDs         []string `json:"v1_evidence_ids"`
	V2EvidenceIDs         []string `json:"v2_evidence_ids"`
	V3EvidenceIDs         []string `json:"v3_evidence_ids"`
	V3ReviewerID          string   `json:"v3_reviewer_id"`
}

func (p ParentLineage) Validate() error {
	if err := state.ValidateIdentifier("parent problem ID", p.ProblemID); err != nil {
		return err
	}
	if !validSHA256(p.SnapshotSHA256) || !validSHA256(p.StatementSHA256) || !validSHA256(p.ProofSHA256) {
		return errors.New("poser: parent lineage requires canonical source, statement, and proof SHA-256 digests")
	}
	if err := validateSignedDossierReference(p.SignedDossierCaseID, p.SignedDossierSHA256, p.SignedDossierSignerID); err != nil {
		return err
	}
	if err := validateIDs("parent source ID", p.SourceIDs); err != nil {
		return err
	}
	if err := validateIDs("parent V1 evidence ID", p.V1EvidenceIDs); err != nil {
		return err
	}
	if err := validateIDs("parent V2 evidence ID", p.V2EvidenceIDs); err != nil {
		return err
	}
	if err := validateIDs("parent V3 evidence ID", p.V3EvidenceIDs); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("parent V3 reviewer ID", p.V3ReviewerID); err != nil {
		return err
	}
	seen := make(map[string]struct{}, len(p.V1EvidenceIDs)+len(p.V2EvidenceIDs)+len(p.V3EvidenceIDs))
	evidenceIDs := append(append(append([]string(nil), p.V1EvidenceIDs...), p.V2EvidenceIDs...), p.V3EvidenceIDs...)
	for _, id := range evidenceIDs {
		if _, exists := seen[id]; exists {
			return fmt.Errorf("poser: parent verification evidence ID %q is reused", id)
		}
		seen[id] = struct{}{}
	}
	return nil
}

func (p Proposal) Validate() error {
	for name, value := range map[string]string{"proposal ID": p.ID, "generator ID": p.GeneratorID} {
		if err := state.ValidateIdentifier(name, value); err != nil {
			return err
		}
	}
	if p.GeneratorID != GeneratorID {
		return fmt.Errorf("poser: unsupported generator ID %q", p.GeneratorID)
	}
	switch p.Operator {
	case OperatorRelax, OperatorSharpen, OperatorHybrid, OperatorDual:
	default:
		return fmt.Errorf("poser: unsupported mutation operator %q", p.Operator)
	}
	wantParents := 1
	if p.Operator == OperatorHybrid {
		wantParents = 2
	}
	if len(p.Parents) != wantParents {
		return fmt.Errorf("poser: %s proposals require %d verified parent lineages, got %d", p.Operator, wantParents, len(p.Parents))
	}
	seenProblems := make(map[string]struct{}, len(p.Parents))
	seenEvidence := make(map[string]struct{})
	for _, parent := range p.Parents {
		if err := parent.Validate(); err != nil {
			return err
		}
		if _, exists := seenProblems[parent.ProblemID]; exists {
			return fmt.Errorf("poser: proposal parents must refer to distinct source problems; duplicate %q", parent.ProblemID)
		}
		seenProblems[parent.ProblemID] = struct{}{}
		for _, id := range append(append(append([]string(nil), parent.V1EvidenceIDs...), parent.V2EvidenceIDs...), parent.V3EvidenceIDs...) {
			if _, exists := seenEvidence[id]; exists {
				return fmt.Errorf("poser: parent verification evidence ID %q is reused across lineages", id)
			}
			seenEvidence[id] = struct{}{}
		}
	}
	if want, err := parentLineageDigest(p.Parents); err != nil {
		return err
	} else if want != p.ParentLineageSHA256 {
		return errors.New("poser: parent lineage digest does not match the recorded parents")
	}
	if strings.TrimSpace(p.LeanStatement) == "" || len(p.LeanStatement) > 16_384 {
		return errors.New("poser: Lean statement is empty or exceeds the 16 KiB limit")
	}
	if strings.ContainsAny(p.LeanStatement, "\x00") || strings.Contains(p.LeanStatement, ":= by") || strings.Contains(p.LeanStatement, "sorry") || strings.Contains(p.LeanStatement, "admit") {
		return errors.New("poser: proposal must contain only a statement, without proof code or holes")
	}
	if strings.TrimSpace(p.MutationDiff) == "" || len(p.MutationDiff) > 8_192 || strings.ContainsAny(p.MutationDiff, "\x00") {
		return errors.New("poser: bounded mutation diff is required")
	}
	if p.GeneratedAt.IsZero() {
		return errors.New("poser: generation time is required")
	}
	parsed, err := parseTheoremStatement(p.LeanStatement)
	if err != nil {
		return fmt.Errorf("poser: generated Lean statement is outside the supported syntax: %w", err)
	}
	if canonical := renderTheoremDeclaration(parsed.name, parsed.binders, parsed.body); canonical != p.LeanStatement {
		return errors.New("poser: generated Lean statement is not in canonical form")
	}
	wantID := proposalIDFor(p.GeneratorID, p.Operator, p.ParentLineageSHA256, parsed.binders, parsed.body)
	if p.ID != wantID || parsed.name != "mathcase_poser_"+strings.TrimPrefix(wantID, "proposal-") {
		return errors.New("poser: proposal ID does not bind its generated statement and provenance")
	}
	return nil
}

type SieveEvidence struct {
	ProposalID                   string   `json:"proposal_id"`
	ParentLineageSHA256          string   `json:"parent_lineage_sha256"`
	TrustedParentsVerified       bool     `json:"trusted_parents_verified"`
	LeanTypechecked              bool     `json:"lean_typechecked"`
	CandidateTypecheckEvidenceID string   `json:"candidate_typecheck_evidence_id"`
	HypothesesPresent            bool     `json:"hypotheses_present"`
	HypothesesSatisfiable        bool     `json:"hypotheses_satisfiable"`
	HypothesisEvidenceID         string   `json:"hypothesis_evidence_id"`
	RandomizedCheckStatus        string   `json:"randomized_check_status"`
	RandomizedCounterexampleSeen bool     `json:"randomized_counterexample_seen"`
	RandomizedCounterexampleOK   bool     `json:"randomized_counterexample_verified"`
	RandomizedTestsRun           int      `json:"randomized_tests_run"`
	RandomizedEvidenceID         string   `json:"randomized_evidence_id"`
	SMTSearchPerformed           bool     `json:"smt_search_performed"`
	SMTSearchStatus              string   `json:"smt_search_status"`
	SMTWitnessKernelPassed       bool     `json:"smt_witness_kernel_passed"`
	SMTWitnessAxiomsPassed       bool     `json:"smt_witness_axioms_passed"`
	SMTEvidenceID                string   `json:"smt_evidence_id"`
	NegationSearchPerformed      bool     `json:"negation_search_performed"`
	NegationSearchStatus         string   `json:"negation_search_status"`
	NegationSearchEvidenceIDs    []string `json:"negation_search_evidence_ids"`
	CounterexampleFound          bool     `json:"counterexample_found"`
	EasyBaselineCompleted        bool     `json:"easy_baseline_completed"`
	EasyBaselineSolved           bool     `json:"easy_baseline_solved"`
	EasyBaselineEvidenceIDs      []string `json:"easy_baseline_evidence_ids"`
	EvidenceIDs                  []string `json:"evidence_ids"`
}

func (e SieveEvidence) EligibleForHumanReview(proposal Proposal) error {
	if err := proposal.Validate(); err != nil {
		return err
	}
	if e.ProposalID != proposal.ID || e.ParentLineageSHA256 != proposal.ParentLineageSHA256 {
		return errors.New("poser: sieve evidence does not match proposal provenance")
	}
	if !e.TrustedParentsVerified {
		return errors.New("poser: parent lineage has not been verified against trusted signed dossiers")
	}
	for _, parent := range proposal.Parents {
		if parent.SignedDossierCaseID == "" || parent.SignedDossierSHA256 == "" || parent.SignedDossierSignerID == "" {
			return errors.New("poser: proposal parent has no signed dossier reference")
		}
	}
	if !e.LeanTypechecked {
		return errors.New("poser: candidate statement has not typechecked in Lean")
	}
	if err := requireSieveEvidence("candidate typecheck", e.CandidateTypecheckEvidenceID, e.EvidenceIDs); err != nil {
		return err
	}
	if e.HypothesesPresent && !e.HypothesesSatisfiable {
		return errors.New("poser: candidate hypotheses are unsatisfiable or unverified")
	}
	if !e.HypothesesPresent && !e.HypothesesSatisfiable {
		return errors.New("poser: no-hypothesis applicability is not recorded as satisfied")
	}
	if err := requireSieveEvidence("hypothesis satisfiability", e.HypothesisEvidenceID, e.EvidenceIDs); err != nil {
		return err
	}
	if !e.HypothesesPresent && e.HypothesisEvidenceID != e.RandomizedEvidenceID {
		return errors.New("poser: no-hypothesis disposition is not bound to the randomized-check receipt")
	}
	if e.CounterexampleFound {
		return errors.New("poser: falsification sieve found a counterexample")
	}
	if e.RandomizedCheckStatus == "COUNTEREXAMPLE_OBSERVED" {
		if e.RandomizedCounterexampleSeen && e.RandomizedCounterexampleOK {
			return errors.New("poser: randomized falsification found a kernel-checked counterexample")
		}
		return errors.New("poser: randomized counterexample was observed but not fully kernel/V2 verified")
	}
	if e.RandomizedCheckStatus != "SAMPLES_PASS" || e.RandomizedCounterexampleSeen || e.RandomizedCounterexampleOK || e.RandomizedTestsRun <= 0 {
		return errors.New("poser: randomized checks did not complete with all sampled cases passing")
	}
	if e.SMTSearchStatus == "SAT" {
		if e.SMTWitnessKernelPassed && e.SMTWitnessAxiomsPassed {
			return errors.New("poser: SMT search found a kernel-checked counterexample")
		}
		return errors.New("poser: SMT search found a model that has not passed kernel and axiom verification")
	}
	if e.SMTSearchStatus != "UNSAT" || !e.SMTSearchPerformed || e.SMTWitnessKernelPassed || e.SMTWitnessAxiomsPassed {
		return errors.New("poser: SMT search did not complete with a verified no-counterexample result")
	}
	if e.NegationSearchStatus != "NO_COUNTEREXAMPLE_FOUND" || !e.NegationSearchPerformed {
		return errors.New("poser: randomized, SMT, and negation-search evidence is required")
	}
	if err := requireSieveEvidence("randomized checks", e.RandomizedEvidenceID, e.EvidenceIDs); err != nil {
		return err
	}
	if err := requireSieveEvidence("SMT search", e.SMTEvidenceID, e.EvidenceIDs); err != nil {
		return err
	}
	if len(e.NegationSearchEvidenceIDs) == 0 {
		return errors.New("poser: completed negation search evidence is required")
	}
	if err := requireSieveEvidenceIDs("negation search", e.NegationSearchEvidenceIDs, e.EvidenceIDs); err != nil {
		return err
	}
	if !e.EasyBaselineCompleted {
		return errors.New("poser: frozen easy-solver baseline did not complete")
	}
	if e.EasyBaselineSolved {
		return errors.New("poser: candidate is already solved by the frozen easy baseline")
	}
	if len(e.EasyBaselineEvidenceIDs) == 0 {
		return errors.New("poser: completed easy-solver baseline evidence is required")
	}
	if err := requireSieveEvidenceIDs("easy-solver baseline", e.EasyBaselineEvidenceIDs, e.EvidenceIDs); err != nil {
		return err
	}
	if len(e.EvidenceIDs) == 0 {
		return errors.New("poser: sieve evidence IDs are required")
	}
	seen := make(map[string]struct{}, len(e.EvidenceIDs))
	for _, id := range e.EvidenceIDs {
		if err := state.ValidateIdentifier("poser sieve evidence ID", id); err != nil {
			return err
		}
		if _, exists := seen[id]; exists {
			return fmt.Errorf("poser: duplicate sieve evidence ID %q", id)
		}
		seen[id] = struct{}{}
	}
	return nil
}

func requireSieveEvidence(name, id string, evidenceIDs []string) error {
	if err := state.ValidateIdentifier("poser "+name+" evidence ID", id); err != nil {
		return err
	}
	for _, evidenceID := range evidenceIDs {
		if evidenceID == id {
			return nil
		}
	}
	return fmt.Errorf("poser: %s evidence ID %q is not linked in the sieve record", name, id)
}

func requireSieveEvidenceIDs(name string, required, evidenceIDs []string) error {
	if len(required) == 0 {
		return fmt.Errorf("poser: %s evidence IDs are required", name)
	}
	if err := validateIDs("poser "+name+" evidence ID", required); err != nil {
		return err
	}
	available := make(map[string]struct{}, len(evidenceIDs))
	for _, evidenceID := range evidenceIDs {
		available[evidenceID] = struct{}{}
	}
	for _, id := range required {
		if _, ok := available[id]; !ok {
			return fmt.Errorf("poser: %s evidence ID %q is not linked in the sieve record", name, id)
		}
	}
	return nil
}

func validSHA256(value string) bool {
	if len(value) != 64 {
		return false
	}
	for _, character := range value {
		if !(character >= '0' && character <= '9' || character >= 'a' && character <= 'f') {
			return false
		}
	}
	return true
}

func validateIDs(name string, values []string) error {
	if len(values) == 0 {
		return fmt.Errorf("poser: at least one %s is required", name)
	}
	seen := make(map[string]struct{}, len(values))
	for _, id := range values {
		if err := state.ValidateIdentifier(name, id); err != nil {
			return err
		}
		if _, exists := seen[id]; exists {
			return fmt.Errorf("poser: duplicate %s %q", name, id)
		}
		seen[id] = struct{}{}
	}
	return nil
}

func parentLineageDigest(parents []ParentLineage) (string, error) {
	data, err := json.Marshal(parents)
	if err != nil {
		return "", fmt.Errorf("poser: encode parent lineage: %w", err)
	}
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:]), nil
}
