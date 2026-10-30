// Package book implements the deterministic M6 proof-elegance scoreboard
// interface. A scorer result never substitutes for kernel verification.
package book

import (
	"errors"
	"fmt"
	"math"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const ScoreVersion = "book-score-v2"

const (
	ScoreDispositionBlocked       = "BLOCKED"
	ScoreDispositionCandidateOnly = "CANDIDATE_ONLY"
)

type Config struct {
	Beta  float64 `json:"beta"`
	Eta   float64 `json:"eta"`
	Alpha float64 `json:"alpha"`
}

func (c Config) Validate() error {
	if !finiteNonnegative(c.Beta) || !finiteNonnegative(c.Eta) || !finiteNonnegative(c.Alpha) || c.Alpha == 0 {
		return errors.New("book: beta and eta must be nonnegative and alpha must be positive")
	}
	return nil
}

type ProofMetrics struct {
	ProblemID                     string                      `json:"problem_id"`
	ProblemStatementSHA256        string                      `json:"problem_statement_sha256"`
	ProofID                       string                      `json:"proof_id"`
	ProofSHA256                   string                      `json:"proof_sha256"`
	LeanMetricsReceiptSHA256      string                      `json:"lean_metrics_receipt_sha256"`
	LeanMetricsSourceSHA256       string                      `json:"lean_metrics_source_sha256"`
	LeanMetricsToolchain          string                      `json:"lean_metrics_toolchain,omitempty"`
	LeanMetricsLeanVersion        string                      `json:"lean_metrics_lean_version,omitempty"`
	LeanVerificationReceiptSHA256 string                      `json:"lean_verification_receipt_sha256,omitempty"`
	LeanProofInputSHA256          string                      `json:"lean_proof_input_sha256,omitempty"`
	LeanDeclaration               string                      `json:"lean_declaration"`
	VerificationRecords           []domain.VerificationRecord `json:"verification_records"`
	GlobalSurprise                float64                     `json:"global_surprise"`
	LocalObviousness              float64                     `json:"local_obviousness"`
	SurfaceTokens                 int                         `json:"surface_tokens"`
	ElaboratedExprNodes           int                         `json:"elaborated_expr_nodes"`
	ElaboratedExprDepth           int                         `json:"elaborated_expr_depth"`
	BinderNodes                   int                         `json:"binder_nodes"`
	ConstantReferenceNodes        int                         `json:"constant_reference_nodes"`
	CaseSplits                    int                         `json:"case_splits"`
}

type Result struct {
	ScoreVersion string       `json:"score_version"`
	Disposition  string       `json:"disposition"`
	Config       Config       `json:"config"`
	Proof        ProofMetrics `json:"proof"`
	Score        float64      `json:"score"`
	Refusal      string       `json:"refusal,omitempty"`
}

func Score(config Config, proof ProofMetrics) (Result, error) {
	if err := config.Validate(); err != nil {
		return Result{}, err
	}
	if err := proof.Validate(); err != nil {
		return Result{}, err
	}
	result := Result{ScoreVersion: ScoreVersion, Disposition: ScoreDispositionBlocked, Config: config, Proof: proof}
	for _, gate := range [...]domain.VerificationGate{
		domain.GateKernelBuild,
		domain.GateAxiomAudit,
		domain.GateEssentiality,
	} {
		if refusal := verificationRefusal(proof, gate); refusal != "" {
			result.Refusal = refusal
			return result, nil
		}
	}
	complexity := math.Max(float64(proof.SurfaceTokens), float64(proof.ElaboratedExprNodes)) + config.Eta*float64(proof.CaseSplits)
	if complexity <= 0 {
		return Result{}, errors.New("book: proof complexity must be positive")
	}
	result.Score = (1 + config.Beta*proof.GlobalSurprise) * proof.LocalObviousness / math.Pow(complexity, config.Alpha)
	result.Disposition = ScoreDispositionCandidateOnly
	result.Refusal = "M6 quality ratings are caller-supplied and unreviewed; this candidate score cannot accept a rewrite"
	return result, nil
}

func (p ProofMetrics) Validate() error {
	for name, value := range map[string]string{"problem ID": p.ProblemID, "proof ID": p.ProofID} {
		if err := state.ValidateIdentifier("book "+name, value); err != nil {
			return err
		}
	}
	if !validSHA256(p.ProblemStatementSHA256) {
		return errors.New("book: problem statement digest must be canonical SHA-256 hex")
	}
	if !validSHA256(p.ProofSHA256) {
		return errors.New("book: proof digest must be canonical SHA-256 hex")
	}
	if !validSHA256(p.LeanMetricsReceiptSHA256) || !validSHA256(p.LeanMetricsSourceSHA256) {
		return errors.New("book: source-bound Lean metrics receipt and source digests are required")
	}
	if p.LeanMetricsSourceSHA256 != p.ProofSHA256 {
		return errors.New("book: Lean metrics must be measured from the exact scored proof source")
	}
	if err := state.ValidateIdentifier("Lean metrics declaration", p.LeanDeclaration); err != nil {
		return err
	}
	if !unitInterval(p.GlobalSurprise) || !unitInterval(p.LocalObviousness) {
		return errors.New("book: surprise and local obviousness must be in [0,1]")
	}
	if p.SurfaceTokens < 0 || p.ElaboratedExprNodes <= 0 || p.ElaboratedExprDepth <= 0 || p.BinderNodes < 0 || p.ConstantReferenceNodes < 0 || p.CaseSplits < 0 {
		return errors.New("book: proof complexity counts must be nonnegative with positive expression size and depth")
	}
	if err := p.validateVerificationRecords(); err != nil {
		return err
	}
	if err := p.validateLeanExecutionLink(); err != nil {
		return err
	}
	return nil
}

func (p ProofMetrics) validateLeanExecutionLink() error {
	if p.LeanVerificationReceiptSHA256 == "" && p.LeanProofInputSHA256 == "" {
		return nil
	}
	if !validSHA256(p.LeanVerificationReceiptSHA256) || !validSHA256(p.LeanProofInputSHA256) {
		return errors.New("book: typed Lean verification linkage requires canonical receipt and proof-input SHA-256 values")
	}
	for _, gate := range []domain.VerificationGate{domain.GateKernelBuild, domain.GateAxiomAudit} {
		var record *domain.VerificationRecord
		for index := range p.VerificationRecords {
			if p.VerificationRecords[index].Gate == gate {
				record = &p.VerificationRecords[index]
				break
			}
		}
		if record == nil || record.Status != domain.VerificationPassed || record.GateReceipt == nil ||
			record.GateReceipt.ReceiptSHA256 != p.LeanVerificationReceiptSHA256 || record.ProofSHA256 != p.ProofSHA256 {
			return fmt.Errorf("book: %s is not linked to the typed Lean receipt and exact generated source", gate)
		}
		foundReceiptArtifact := false
		for _, artifact := range record.EvidenceArtifacts {
			if artifact.ArtifactSHA256 == p.LeanVerificationReceiptSHA256 {
				foundReceiptArtifact = true
				break
			}
		}
		if !foundReceiptArtifact {
			return fmt.Errorf("book: %s typed Lean receipt artifact is missing", gate)
		}
	}
	if p.LeanMetricsSourceSHA256 != p.ProofSHA256 || strings.TrimSpace(p.LeanMetricsToolchain) == "" || strings.TrimSpace(p.LeanMetricsLeanVersion) == "" {
		return errors.New("book: typed Lean linkage requires matching full-source metrics and a recorded toolchain identity")
	}
	return nil
}

func (p ProofMetrics) validateVerificationRecords() error {
	seenGates := make(map[domain.VerificationGate]struct{}, len(p.VerificationRecords))
	seenEvidence := make(map[string]struct{})
	for _, record := range p.VerificationRecords {
		switch record.Gate {
		case domain.GateKernelBuild, domain.GateAxiomAudit, domain.GateEssentiality:
		default:
			return fmt.Errorf("book: unsupported verification gate %q", record.Gate)
		}
		if _, exists := seenGates[record.Gate]; exists {
			return fmt.Errorf("book: duplicate %s verification record", record.Gate)
		}
		seenGates[record.Gate] = struct{}{}
		switch record.Status {
		case domain.VerificationPending, domain.VerificationPassed, domain.VerificationFailed, domain.VerificationBlocked:
		default:
			return fmt.Errorf("book: invalid status %q for %s", record.Status, record.Gate)
		}
		if record.ProblemID != p.ProblemID || record.ProblemStatementSHA256 != p.ProblemStatementSHA256 || record.ProofSHA256 != p.ProofSHA256 {
			return fmt.Errorf("book: %s verification does not match the scored problem, statement, and proof", record.Gate)
		}
		if strings.TrimSpace(record.Summary) == "" || record.RecordedAt.IsZero() || len(record.EvidenceIDs) == 0 {
			return fmt.Errorf("book: %s verification requires a summary, timestamp, and evidence", record.Gate)
		}
		for _, evidenceID := range record.EvidenceIDs {
			if err := state.ValidateIdentifier("book verification evidence ID", evidenceID); err != nil {
				return err
			}
			if _, exists := seenEvidence[evidenceID]; exists {
				return fmt.Errorf("book: verification evidence %q is reused", evidenceID)
			}
			seenEvidence[evidenceID] = struct{}{}
		}
	}
	return nil
}

// AcceptRewrite requires independently reviewed M6 quality judgments after
// matching V1, V2, and V5 records; candidate-only heuristic scores cannot pass.
func AcceptRewrite(baseline, candidate Result) error {
	if err := validateScoreResult(baseline); err != nil {
		return fmt.Errorf("book: baseline score is invalid: %w", err)
	}
	if err := validateScoreResult(candidate); err != nil {
		return fmt.Errorf("book: candidate score is invalid: %w", err)
	}
	if baseline.Proof.ProblemID != candidate.Proof.ProblemID {
		return errors.New("book: rewrite candidates must prove the same problem")
	}
	if baseline.Proof.ProblemStatementSHA256 != candidate.Proof.ProblemStatementSHA256 {
		return errors.New("book: rewrite candidates must use the same problem statement")
	}
	if baseline.Config != candidate.Config {
		return errors.New("book: rewrite candidates must use the same score configuration")
	}
	if shareVerificationEvidence(baseline.Proof.VerificationRecords, candidate.Proof.VerificationRecords) {
		return errors.New("book: baseline and candidate cannot reuse verification evidence")
	}
	if baseline.Disposition == ScoreDispositionBlocked || baseline.Refusal == "" {
		return errors.New("book: baseline rewrite reference has not passed V1, V2, and V5")
	}
	if candidate.Disposition == ScoreDispositionBlocked || candidate.Refusal == "" {
		return errors.New("book: candidate rewrite has not passed V1, V2, and V5")
	}
	if baseline.Disposition != ScoreDispositionCandidateOnly || candidate.Disposition != ScoreDispositionCandidateOnly {
		return errors.New("book: unsupported score disposition")
	}
	return errors.New("book: rewrite acceptance requires independently reviewed M6 quality judgments; caller-supplied ratings are candidate-only")
}

func shareVerificationEvidence(first, second []domain.VerificationRecord) bool {
	seen := make(map[string]struct{})
	for _, record := range first {
		for _, evidenceID := range record.EvidenceIDs {
			seen[evidenceID] = struct{}{}
		}
	}
	for _, record := range second {
		for _, evidenceID := range record.EvidenceIDs {
			if _, exists := seen[evidenceID]; exists {
				return true
			}
		}
	}
	return false
}

func verificationRefusal(proof ProofMetrics, gate domain.VerificationGate) string {
	var label string
	switch gate {
	case domain.GateKernelBuild:
		label = "V1 kernel verification"
	case domain.GateAxiomAudit:
		label = "V2 axiom audit"
	case domain.GateEssentiality:
		label = "V5 essentiality review"
	default:
		return ""
	}
	for _, record := range proof.VerificationRecords {
		if record.Gate != gate {
			continue
		}
		if record.Status != domain.VerificationPassed {
			return fmt.Sprintf("%s is %s", label, strings.ToLower(string(record.Status)))
		}
		return ""
	}
	return label + " is absent"
}

func validateScoreResult(result Result) error {
	if result.ScoreVersion != ScoreVersion {
		return errors.New("unsupported score version")
	}
	computed, err := Score(result.Config, result.Proof)
	if err != nil {
		return err
	}
	if computed.Score != result.Score || computed.Refusal != result.Refusal || computed.Disposition != result.Disposition {
		return errors.New("recorded score does not match its proof metrics and configuration")
	}
	return nil
}

func unitInterval(value float64) bool {
	return !math.IsNaN(value) && !math.IsInf(value, 0) && value >= 0 && value <= 1
}

func finiteNonnegative(value float64) bool {
	return !math.IsNaN(value) && !math.IsInf(value, 0) && value >= 0
}

func validSHA256(value string) bool {
	if len(value) != 64 || strings.ToLower(value) != value {
		return false
	}
	for _, character := range value {
		if !(character >= '0' && character <= '9' || character >= 'a' && character <= 'f') {
			return false
		}
	}
	return true
}
