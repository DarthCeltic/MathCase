package poser

import (
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"sort"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	GeneratorID       = "poser-ast-template-v1"
	defaultMaxPropose = 32
	maxProposals      = 128
)

// VerifiedTheorem is the minimum input M2 needs from M0: an item-level source
// record plus passed kernel, axiom, and statement-fidelity receipts.
type VerifiedTheorem struct {
	ProblemID             string                    `json:"problem_id"`
	SourceIDs             []string                  `json:"source_ids"`
	SourceSnapshotSHA256  string                    `json:"source_snapshot_sha256"`
	SignedDossierCaseID   string                    `json:"signed_dossier_case_id,omitempty"`
	SignedDossierSHA256   string                    `json:"signed_dossier_sha256,omitempty"`
	SignedDossierSignerID string                    `json:"signed_dossier_signer_id,omitempty"`
	InformalStatement     string                    `json:"informal_statement"`
	LeanStatement         string                    `json:"lean_statement"`
	ProofSHA256           string                    `json:"proof_sha256"`
	V1                    domain.VerificationRecord `json:"v1"`
	V2                    domain.VerificationRecord `json:"v2"`
	V3                    domain.VerificationRecord `json:"v3"`
	trustedDossierSHA256  string                    `json:"-"`
	trustedTheoremSHA256  string                    `json:"-"`
}

func (t VerifiedTheorem) Validate() error {
	if err := state.ValidateIdentifier("M2 parent problem ID", t.ProblemID); err != nil {
		return err
	}
	if err := validateIDs("M2 parent source ID", t.SourceIDs); err != nil {
		return err
	}
	if !validSHA256(t.SourceSnapshotSHA256) || !validSHA256(t.ProofSHA256) {
		return errors.New("poser: parent source snapshot and proof digests are required")
	}
	if err := validateSignedDossierReference(t.SignedDossierCaseID, t.SignedDossierSHA256, t.SignedDossierSignerID); err != nil {
		return err
	}
	if strings.TrimSpace(t.InformalStatement) == "" {
		return errors.New("poser: parent informal statement is required")
	}
	proposition, err := t.FormalProposition()
	if err != nil {
		return fmt.Errorf("poser: parent Lean statement: %w", err)
	}
	statementDigest, err := domain.ProblemStatementDigest(t.ProblemID, t.InformalStatement, proposition)
	if err != nil {
		return fmt.Errorf("poser: digest parent statement: %w", err)
	}
	if err := validateParentVerification(t.V1, domain.GateKernelBuild, t.ProblemID, statementDigest, t.ProofSHA256); err != nil {
		return err
	}
	if err := validateParentVerification(t.V2, domain.GateAxiomAudit, t.ProblemID, statementDigest, t.ProofSHA256); err != nil {
		return err
	}
	if err := validateParentStatementReview(t.V3, t.ProblemID, statementDigest, t.InformalStatement, proposition, t.SourceSnapshotSHA256); err != nil {
		return err
	}
	if t.trustedDossierSHA256 == "" || t.SignedDossierSHA256 != t.trustedDossierSHA256 {
		return errors.New("poser: parent V3 cannot pass from builder-authored claims; a trusted signed M8 dossier receipt proof is required")
	}
	trustedPayload, err := trustedParentPayloadSHA256(t)
	if err != nil {
		return fmt.Errorf("poser: hash trusted parent payload: %w", err)
	}
	if t.trustedTheoremSHA256 == "" || trustedPayload != t.trustedTheoremSHA256 {
		return errors.New("poser: trusted parent fields changed after they were bound to the signed dossier")
	}
	seenEvidence := make(map[string]struct{}, len(t.V1.EvidenceIDs)+len(t.V2.EvidenceIDs)+len(t.V3.EvidenceIDs))
	for _, record := range []domain.VerificationRecord{t.V1, t.V2, t.V3} {
		for _, evidenceID := range record.EvidenceIDs {
			if _, exists := seenEvidence[evidenceID]; exists {
				return fmt.Errorf("poser: parent verification evidence ID %q is reused", evidenceID)
			}
			seenEvidence[evidenceID] = struct{}{}
		}
	}
	return nil
}

// ParentLineage returns the canonical lineage record derived from this
// verified theorem. Signed dossier references are included when present.
func (t VerifiedTheorem) ParentLineage() (ParentLineage, error) {
	if err := t.Validate(); err != nil {
		return ParentLineage{}, err
	}
	return lineageFor(t), nil
}

// FormalProposition returns the proposition expressed by the source theorem
// declaration. Verification receipts bind to this expression, while M2 keeps
// the declaration so its explicit binders can be structurally mutated.
func (t VerifiedTheorem) FormalProposition() (string, error) {
	parsed, err := parseTheoremStatement(t.LeanStatement)
	if err != nil {
		return "", err
	}
	return renderFormalProposition(parsed), nil
}

func validateParentVerification(record domain.VerificationRecord, gate domain.VerificationGate, problemID, statementDigest, proofDigest string) error {
	if record.Gate != gate || record.Status != domain.VerificationPassed {
		return fmt.Errorf("poser: parent requires a passed %s record", gate)
	}
	if record.ProblemID != problemID || record.ProblemStatementSHA256 != statementDigest || record.ProofSHA256 != proofDigest {
		return fmt.Errorf("poser: parent %s record is not bound to the exact statement and proof", gate)
	}
	if record.RecordedAt.IsZero() {
		return fmt.Errorf("poser: parent %s record has no recorded time", gate)
	}
	if err := validateIDs("parent "+string(gate)+" evidence ID", record.EvidenceIDs); err != nil {
		return err
	}
	return nil
}

func validateParentStatementReview(record domain.VerificationRecord, problemID, statementDigest, informalStatement, leanStatement, sourceSnapshotSHA256 string) error {
	if record.Gate != domain.GateStatementFidelity || record.Status != domain.VerificationPassed {
		return errors.New("poser: parent requires a passed V3 statement-fidelity record")
	}
	if record.ProblemID != problemID || record.ProblemStatementSHA256 != statementDigest {
		return errors.New("poser: parent V3 record is not bound to the exact statement")
	}
	if record.RecordedAt.IsZero() {
		return errors.New("poser: parent V3 record has no recorded time")
	}
	if err := state.ValidateIdentifier("parent V3 reviewer ID", record.ReviewerID); err != nil {
		return err
	}
	if err := validateIDs("parent V3 evidence ID", record.EvidenceIDs); err != nil {
		return err
	}
	if record.StatementFidelity == nil {
		return errors.New("poser: parent V3 record lacks the required dual-check evidence")
	}
	if err := record.StatementFidelity.Validate(informalStatement, leanStatement); err != nil {
		return fmt.Errorf("poser: parent V3 dual-check evidence is invalid: %w", err)
	}
	if record.StatementFidelity.Source.CatalogSnapshotSHA256 != sourceSnapshotSHA256 {
		return errors.New("poser: parent V3 review is not bound to the verified source snapshot")
	}
	// Typed reviewer identity and exact-instance probe receipts are
	// authenticated when the signed dossier's M8 evidence is reopened. This
	// function only checks the claim's structure and binding; it must not
	// promote builder-authored V3 fields into trusted evidence.
	if record.ReviewerID != record.StatementFidelity.SemanticComparison.ReviewerID {
		return errors.New("poser: parent V3 reviewer ID does not match the semantic comparison reviewer")
	}
	for _, evidenceID := range record.StatementFidelity.EvidenceIDs() {
		if !containsEvidenceID(record.EvidenceIDs, evidenceID) {
			return fmt.Errorf("poser: parent V3 record does not link evidence %q", evidenceID)
		}
	}
	return nil
}

func containsEvidenceID(ids []string, target string) bool {
	for _, id := range ids {
		if id == target {
			return true
		}
	}
	return false
}

func validateSignedDossierReference(caseID, dossierSHA256, signerID string) error {
	if caseID == "" && dossierSHA256 == "" && signerID == "" {
		return nil
	}
	if caseID == "" || dossierSHA256 == "" || signerID == "" {
		return errors.New("poser: signed dossier lineage requires case ID, dossier SHA-256, and signer ID together")
	}
	if err := state.ValidateIdentifier("signed dossier case ID", caseID); err != nil {
		return err
	}
	if !validSHA256(dossierSHA256) {
		return errors.New("poser: signed dossier lineage requires a canonical dossier SHA-256 digest")
	}
	if err := state.ValidateIdentifier("signed dossier signer ID", signerID); err != nil {
		return err
	}
	return nil
}

// GenerationRequest selects a bounded, deterministic set of structural
// mutations. A missing operator list requests the four supported operators.
type GenerationRequest struct {
	Primary      VerifiedTheorem  `json:"primary"`
	Secondary    *VerifiedTheorem `json:"secondary,omitempty"`
	Operators    []Operator       `json:"operators,omitempty"`
	MaxProposals int              `json:"max_proposals,omitempty"`
	GeneratedAt  time.Time        `json:"generated_at"`
}

type MutationRefusal struct {
	Operator Operator `json:"operator"`
	Reason   string   `json:"reason"`
}

type GenerationResult struct {
	Proposals    []Proposal        `json:"proposals"`
	Refusals     []MutationRefusal `json:"refusals"`
	LimitReached bool              `json:"limit_reached"`
}

// Generate creates statement-only proposals over a deliberately bounded Lean
// proposition fragment. Unsupported operators or unavailable mutations are
// returned as refusals; downstream Lean and falsification checks stay separate.
func Generate(request GenerationRequest) (GenerationResult, error) {
	result := GenerationResult{Proposals: []Proposal{}, Refusals: []MutationRefusal{}}
	if request.GeneratedAt.IsZero() {
		return result, errors.New("poser: deterministic generation time is required")
	}
	if err := request.Primary.Validate(); err != nil {
		return result, fmt.Errorf("poser: primary theorem: %w", err)
	}
	operators, err := requestedOperators(request.Operators)
	if err != nil {
		return result, err
	}
	limit := request.MaxProposals
	if limit == 0 {
		limit = defaultMaxPropose
	}
	if limit < 1 || limit > maxProposals {
		return result, fmt.Errorf("poser: proposal limit must be between 1 and %d", maxProposals)
	}

	primary, err := parseTheoremStatement(request.Primary.LeanStatement)
	if err != nil {
		return result, err
	}
	for _, operator := range operators {
		if len(result.Proposals) >= limit {
			result.LimitReached = true
			break
		}
		var mutations []syntaxMutation
		proposalParents := []ParentLineage{lineageFor(request.Primary)}
		switch operator {
		case OperatorRelax, OperatorSharpen, OperatorDual:
			mutations = collectSyntaxMutations(primary.body, operator)
		case OperatorHybrid:
			mutation, refusal := hybridMutation(request.Primary, request.Secondary, primary)
			if refusal != "" {
				result.Refusals = append(result.Refusals, MutationRefusal{Operator: operator, Reason: refusal})
				continue
			}
			mutations = []syntaxMutation{mutation}
			proposalParents = []ParentLineage{lineageFor(request.Primary), lineageFor(*request.Secondary)}
		default:
			return result, fmt.Errorf("poser: unsupported mutation operator %q", operator)
		}
		if len(mutations) == 0 {
			result.Refusals = append(result.Refusals, MutationRefusal{Operator: operator, Reason: "the parent syntax has no supported mutation for this operator"})
			continue
		}

		lineageDigest, err := parentLineageDigest(proposalParents)
		if err != nil {
			return result, err
		}
		seenBodies := make(map[string]struct{}, len(mutations))
		for _, mutation := range mutations {
			body := mutation.body.render()
			if _, exists := seenBodies[body]; exists {
				continue
			}
			seenBodies[body] = struct{}{}
			proposal := makeProposal(operator, mutation, primary.binders, proposalParents, lineageDigest, request.GeneratedAt)
			if err := proposal.Validate(); err != nil {
				return result, fmt.Errorf("poser: generated %s proposal: %w", operator, err)
			}
			if len(result.Proposals) == limit {
				result.LimitReached = true
				break
			}
			result.Proposals = append(result.Proposals, proposal)
		}
	}
	return result, nil
}

func requestedOperators(operators []Operator) ([]Operator, error) {
	if len(operators) == 0 {
		return []Operator{OperatorRelax, OperatorSharpen, OperatorHybrid, OperatorDual}, nil
	}
	seen := make(map[Operator]struct{}, len(operators))
	result := make([]Operator, 0, len(operators))
	for _, operator := range operators {
		switch operator {
		case OperatorRelax, OperatorSharpen, OperatorHybrid, OperatorDual:
		default:
			return nil, fmt.Errorf("poser: unsupported mutation operator %q", operator)
		}
		if _, exists := seen[operator]; exists {
			return nil, fmt.Errorf("poser: duplicate mutation operator %q", operator)
		}
		seen[operator] = struct{}{}
		result = append(result, operator)
	}
	return result, nil
}

type syntaxMutation struct {
	body        *proposition
	path        string
	description string
}

func collectSyntaxMutations(root *proposition, operator Operator) []syntaxMutation {
	mutations := make([]syntaxMutation, 0, 8)
	collectAt(root, root, nil, "root", true, operator, &mutations)
	return mutations
}

func collectAt(tree, node *proposition, path []int, label string, positive bool, operator Operator, mutations *[]syntaxMutation) {
	if node == nil || len(*mutations) >= maxSyntaxNodes {
		return
	}
	if node.kind == syntaxBinary {
		for _, replacement := range mutationsAt(node, positive, operator) {
			mutated := replaceAt(tree, path, replacement.body)
			*mutations = append(*mutations, syntaxMutation{body: mutated, path: label, description: replacement.description})
			if len(*mutations) >= maxSyntaxNodes {
				return
			}
		}
		leftPositive := positive
		if node.op == "→" {
			leftPositive = !leftPositive
		}
		collectAt(tree, node.left, appendPath(path, 0), childLabel(label, "left"), leftPositive, operator, mutations)
		collectAt(tree, node.right, appendPath(path, 1), childLabel(label, "right"), positive, operator, mutations)
		return
	}
	if node.kind == syntaxUnary || node.kind == syntaxQuantifier {
		childPositive := positive
		if node.kind == syntaxUnary {
			childPositive = !childPositive
		}
		collectAt(tree, node.right, appendPath(path, 1), childLabel(label, "body"), childPositive, operator, mutations)
	}
}

func mutationsAt(node *proposition, positive bool, operator Operator) []syntaxMutation {
	if operator == OperatorDual {
		dual, ok := dualRelation(node.op)
		if !ok {
			return nil
		}
		changed := node.clone()
		changed.op = dual
		return []syntaxMutation{{body: changed, description: fmt.Sprintf("order-dualize %s to %s", node.op, dual)}}
	}
	if node.op == "∧" || node.op == "∨" {
		selectBranch := operator == OperatorRelax && (node.op == "∧" && positive || node.op == "∨" && !positive) ||
			operator == OperatorSharpen && (node.op == "∨" && positive || node.op == "∧" && !positive)
		if selectBranch {
			return []syntaxMutation{
				{body: node.left.clone(), description: "select the left branch of " + node.op},
				{body: node.right.clone(), description: "select the right branch of " + node.op},
			}
		}
	}
	if !isOrderRelation(node.op) {
		return nil
	}
	changedOperator, ok := relaxOrSharpenRelation(node.op, positive, operator)
	if !ok {
		return nil
	}
	changed := node.clone()
	changed.op = changedOperator
	return []syntaxMutation{{body: changed, description: fmt.Sprintf("replace %s with %s", node.op, changedOperator)}}
}

func relaxOrSharpenRelation(operator string, positive bool, mutation Operator) (string, bool) {
	if positive {
		switch mutation {
		case OperatorRelax:
			switch operator {
			case "<":
				return "≤", true
			case ">":
				return "≥", true
			case "=":
				return "≤", true
			}
		case OperatorSharpen:
			switch operator {
			case "≤":
				return "<", true
			case "≥":
				return ">", true
			}
		}
		return "", false
	}
	switch mutation {
	case OperatorRelax:
		switch operator {
		case "≤":
			return "<", true
		case "≥":
			return ">", true
		}
	case OperatorSharpen:
		switch operator {
		case "<":
			return "≤", true
		case ">":
			return "≥", true
		}
	}
	return "", false
}

func dualRelation(operator string) (string, bool) {
	switch operator {
	case "<":
		return ">", true
	case "≤":
		return "≥", true
	case ">":
		return "<", true
	case "≥":
		return "≤", true
	default:
		return "", false
	}
}

func isOrderRelation(operator string) bool {
	switch operator {
	case "=", "<", "≤", ">", "≥":
		return true
	default:
		return false
	}
}

func replaceAt(root *proposition, path []int, replacement *proposition) *proposition {
	if len(path) == 0 {
		return replacement.clone()
	}
	changed := root.clone()
	if path[0] == 0 {
		changed.left = replaceAt(root.left, path[1:], replacement)
		return changed
	}
	changed.right = replaceAt(root.right, path[1:], replacement)
	return changed
}

func appendPath(path []int, child int) []int {
	result := make([]int, len(path)+1)
	copy(result, path)
	result[len(path)] = child
	return result
}

func childLabel(parent, child string) string {
	if parent == "root" {
		return child
	}
	return parent + "." + child
}

func hybridMutation(primary VerifiedTheorem, secondary *VerifiedTheorem, primarySyntax theoremSyntax) (syntaxMutation, string) {
	if secondary == nil {
		return syntaxMutation{}, "a second verified theorem is required for hybridization"
	}
	if err := secondary.Validate(); err != nil {
		return syntaxMutation{}, "secondary parent is invalid: " + err.Error()
	}
	secondarySyntax, err := parseTheoremStatement(secondary.LeanStatement)
	if err != nil {
		return syntaxMutation{}, "secondary parent syntax is unsupported: " + err.Error()
	}
	return hybridMutationFromSyntax(primary.ProblemID, primarySyntax, secondary.ProblemID, secondarySyntax)
}

// hybridMutationFromSyntax contains the pure structural portion of hybrid
// composition. Production calls it only after both parents pass their
// evidence validation; direct unit tests may exercise this syntax transform
// without manufacturing a trusted-parent receipt.
func hybridMutationFromSyntax(primaryProblemID string, primarySyntax theoremSyntax, secondaryProblemID string, secondarySyntax theoremSyntax) (syntaxMutation, string) {
	if primaryProblemID == secondaryProblemID {
		return syntaxMutation{}, "hybrid parents must be distinct source problems"
	}
	if normalizeAtom(primarySyntax.binders) != normalizeAtom(secondarySyntax.binders) {
		return syntaxMutation{}, "hybrid parents require exactly matching Lean binders"
	}
	if propositionEqual(primarySyntax.body, secondarySyntax.body) {
		return syntaxMutation{}, "hybrid parents have identical propositions"
	}
	if primarySyntax.body.kind == syntaxBinary && primarySyntax.body.op == "→" && secondarySyntax.body.kind == syntaxBinary && secondarySyntax.body.op == "→" && propositionEqual(primarySyntax.body.right, secondarySyntax.body.left) {
		body := &proposition{kind: syntaxBinary, op: "→", left: primarySyntax.body.left.clone(), right: secondarySyntax.body.right.clone()}
		return syntaxMutation{body: body, path: "root", description: "compose the matching implication results"}, ""
	}
	if secondarySyntax.body.kind == syntaxBinary && secondarySyntax.body.op == "→" && primarySyntax.body.kind == syntaxBinary && primarySyntax.body.op == "→" && propositionEqual(secondarySyntax.body.right, primarySyntax.body.left) {
		body := &proposition{kind: syntaxBinary, op: "→", left: secondarySyntax.body.left.clone(), right: primarySyntax.body.right.clone()}
		return syntaxMutation{body: body, path: "root", description: "compose the matching implication results"}, ""
	}
	body := &proposition{kind: syntaxBinary, op: "∧", left: primarySyntax.body.clone(), right: secondarySyntax.body.clone()}
	return syntaxMutation{body: body, path: "root", description: "hybridize distinct source statements as a joint conjecture"}, ""
}

func lineageFor(theorem VerifiedTheorem) ParentLineage {
	sourceIDs := append([]string(nil), theorem.SourceIDs...)
	v1IDs := append([]string(nil), theorem.V1.EvidenceIDs...)
	v2IDs := append([]string(nil), theorem.V2.EvidenceIDs...)
	v3IDs := append([]string(nil), theorem.V3.EvidenceIDs...)
	sort.Strings(sourceIDs)
	sort.Strings(v1IDs)
	sort.Strings(v2IDs)
	sort.Strings(v3IDs)
	proposition, _ := theorem.FormalProposition()
	statementDigest, _ := domain.ProblemStatementDigest(theorem.ProblemID, theorem.InformalStatement, proposition)
	return ParentLineage{
		ProblemID:             theorem.ProblemID,
		SourceIDs:             sourceIDs,
		SnapshotSHA256:        theorem.SourceSnapshotSHA256,
		SignedDossierCaseID:   theorem.SignedDossierCaseID,
		SignedDossierSHA256:   theorem.SignedDossierSHA256,
		SignedDossierSignerID: theorem.SignedDossierSignerID,
		StatementSHA256:       statementDigest,
		ProofSHA256:           theorem.ProofSHA256,
		V1EvidenceIDs:         v1IDs,
		V2EvidenceIDs:         v2IDs,
		V3EvidenceIDs:         v3IDs,
		V3ReviewerID:          theorem.V3.ReviewerID,
	}
}

func makeProposal(operator Operator, mutation syntaxMutation, binders string, parents []ParentLineage, lineageDigest string, generatedAt time.Time) Proposal {
	proposalID := proposalIDFor(GeneratorID, operator, lineageDigest, binders, mutation.body)
	shortDigest := strings.TrimPrefix(proposalID, "proposal-")
	leanStatement := renderTheoremDeclaration("mathcase_poser_"+shortDigest, binders, mutation.body)
	diff := fmt.Sprintf("%s at %s: %s", strings.ToLower(string(operator)), mutation.path, mutation.description)
	return Proposal{
		ID:                  proposalID,
		Parents:             cloneParents(parents),
		ParentLineageSHA256: lineageDigest,
		Operator:            operator,
		LeanStatement:       leanStatement,
		MutationDiff:        diff,
		GeneratorID:         GeneratorID,
		GeneratedAt:         generatedAt,
	}
}

func proposalIDFor(generatorID string, operator Operator, lineageDigest, binders string, body *proposition) string {
	identity := strings.Join([]string{
		generatorID,
		string(operator),
		lineageDigest,
		strings.TrimSpace(binders),
		body.render(),
	}, "\x00")
	digest := sha256.Sum256([]byte(identity))
	return "proposal-" + hex.EncodeToString(digest[:12])
}

func cloneParents(parents []ParentLineage) []ParentLineage {
	result := make([]ParentLineage, len(parents))
	for index, parent := range parents {
		result[index] = parent
		result[index].SourceIDs = append([]string(nil), parent.SourceIDs...)
		result[index].V1EvidenceIDs = append([]string(nil), parent.V1EvidenceIDs...)
		result[index].V2EvidenceIDs = append([]string(nil), parent.V2EvidenceIDs...)
		result[index].V3EvidenceIDs = append([]string(nil), parent.V3EvidenceIDs...)
	}
	return result
}
