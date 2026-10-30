package poser

import (
	"crypto/sha256"
	"encoding/binary"
	"encoding/hex"
	"errors"
	"fmt"
	"math/rand"
	"strings"
	"unicode"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

const (
	defaultRandomizedSampleCount = 64
	maxRandomizedSampleCount     = 256
)

// RandomizedBinder is a closed, explicit binder that the local instance
// sampler can populate without interpreting dependent Lean types.
type RandomizedBinder struct {
	Name     string `json:"name"`
	LeanType string `json:"lean_type"`
}

// RandomizedPlan contains deterministic bounded assignments for a proposal.
// It is a falsification aid only: passing sampled instances is not proof of
// the universally quantified proposition.
type RandomizedPlan struct {
	SchemaVersion          string             `json:"schema_version"`
	ProposalID             string             `json:"proposal_id"`
	Seed                   string             `json:"seed"`
	SampleCount            int                `json:"sample_count"`
	Binders                []RandomizedBinder `json:"binders"`
	Body                   string             `json:"body"`
	HypothesesBody         string             `json:"hypotheses_body"`
	ImplicationAntecedents []string           `json:"implication_antecedents,omitempty"`
	ConclusionBody         string             `json:"conclusion_body,omitempty"`
	ConclusionBinderCount  int                `json:"conclusion_binder_count,omitempty"`
	HasHypotheses          bool               `json:"has_hypotheses"`
	HypothesesTrivial      bool               `json:"hypotheses_trivial"`
	Cases                  [][]string         `json:"cases"`
}

// BuildRandomizedPlan creates reproducible Nat, Int, and Bool instances for
// explicit nondependent theorem binders. Unsupported binder syntax fails
// closed so callers can report randomized testing as unavailable.
func (p Proposal) BuildRandomizedPlan(sampleCount int) (RandomizedPlan, error) {
	if err := p.Validate(); err != nil {
		return RandomizedPlan{}, err
	}
	if sampleCount == 0 {
		sampleCount = defaultRandomizedSampleCount
	}
	if sampleCount < 1 || sampleCount > maxRandomizedSampleCount {
		return RandomizedPlan{}, fmt.Errorf("poser: randomized sample count must be between 1 and %d", maxRandomizedSampleCount)
	}
	parsed, err := parseTheoremStatement(p.LeanStatement)
	if err != nil {
		return RandomizedPlan{}, err
	}
	binderText, body := extractLeadingUniversalBinders(parsed)
	binders, err := parseSampleBinders(binderText)
	if err != nil {
		return RandomizedPlan{}, err
	}
	antecedents, conclusion := splitImplicationChain(body)
	conclusionBinderCount := 0
	if len(antecedents) > 0 {
		conclusionBinders, normalizedConclusion, err := liftConclusionUniversalBinders(binders, antecedents, conclusion)
		if err != nil {
			return RandomizedPlan{}, fmt.Errorf("poser: randomized checks: %w", err)
		}
		if len(conclusionBinders) > 0 {
			binders = append(binders, conclusionBinders...)
			conclusionBinderCount = len(conclusionBinders)
			conclusion = normalizedConclusion
			body = rebuildImplicationChain(antecedents, conclusion)
		}
	}
	digest := sha256.Sum256([]byte(p.ID))
	seed := binary.LittleEndian.Uint64(digest[:8])
	rng := rand.New(rand.NewSource(int64(seed)))
	cases := make([][]string, sampleCount)
	for index := range cases {
		cases[index] = make([]string, len(binders))
		for binderIndex, binder := range binders {
			cases[index][binderIndex] = randomizedValue(rng, binder.LeanType, index)
		}
	}
	hypothesesBody := "True"
	implicationAntecedents := []string{}
	hypothesesTrivial := true
	conclusionBody := ""
	hasHypotheses := false
	antecedents, conclusion = splitImplicationChain(body)
	if len(antecedents) > 0 {
		implicationAntecedents = make([]string, len(antecedents))
		for index, antecedent := range antecedents {
			implicationAntecedents[index] = antecedent.render()
		}
		hypothesesBody = renderHypothesisConjunction(antecedents)
		conclusionBody = conclusion.render()
		hasHypotheses = true
		hypothesesTrivial = false
	}
	return RandomizedPlan{
		SchemaVersion:          "mathcase-m2-randomized-plan-v3",
		ProposalID:             p.ID,
		Seed:                   hex.EncodeToString(digest[:8]),
		SampleCount:            len(cases),
		Binders:                binders,
		Body:                   body.render(),
		HypothesesBody:         hypothesesBody,
		ImplicationAntecedents: implicationAntecedents,
		ConclusionBody:         conclusionBody,
		ConclusionBinderCount:  conclusionBinderCount,
		HasHypotheses:          hasHypotheses,
		HypothesesTrivial:      hypothesesTrivial,
		Cases:                  cases,
	}, nil
}

func extractLeadingUniversalBinders(declaration theoremSyntax) (string, *proposition) {
	binderText := strings.TrimSpace(declaration.binders)
	body := declaration.body
	for body != nil && body.kind == syntaxQuantifier && body.op == "∀" {
		quantifierBinders := strings.TrimSpace(body.text)
		if quantifierBinders == "" {
			break
		}
		if !strings.HasPrefix(quantifierBinders, "(") {
			quantifierBinders = "(" + quantifierBinders + ")"
		}
		if binderText == "" {
			binderText = quantifierBinders
		} else {
			binderText += " " + quantifierBinders
		}
		body = body.right
	}
	return binderText, body
}
func splitImplicationChain(body *proposition) ([]*proposition, *proposition) {
	antecedents := make([]*proposition, 0, 2)
	for body != nil && body.kind == syntaxBinary && body.op == "→" {
		antecedents = append(antecedents, body.left)
		body = body.right
	}
	return antecedents, body
}

func liftConclusionUniversalBinders(outerBinders []RandomizedBinder, antecedents []*proposition, conclusion *proposition) ([]RandomizedBinder, *proposition, error) {
	binderText, normalizedConclusion := extractLeadingUniversalBinders(theoremSyntax{body: conclusion})
	if strings.TrimSpace(binderText) == "" {
		return []RandomizedBinder{}, conclusion, nil
	}
	binders, err := parseSampleBinders(binderText)
	if err != nil {
		return nil, nil, err
	}
	if err := validateConclusionBinderScope(outerBinders, binders, antecedents); err != nil {
		return nil, nil, err
	}
	return binders, normalizedConclusion, nil
}

func validateConclusionBinderScope(outerBinders, conclusionBinders []RandomizedBinder, antecedents []*proposition) error {
	usedNames := make(map[string]struct{}, len(outerBinders)+len(conclusionBinders))
	for _, binder := range outerBinders {
		usedNames[binder.Name] = struct{}{}
	}
	for _, binder := range conclusionBinders {
		if _, exists := usedNames[binder.Name]; exists {
			return fmt.Errorf("cannot lift conclusion binder %q because it shadows an existing binder", binder.Name)
		}
		for _, antecedent := range antecedents {
			if propositionContainsIdentifier(antecedent, binder.Name) {
				return fmt.Errorf("cannot lift conclusion binder %q because it occurs in an implication antecedent", binder.Name)
			}
		}
		usedNames[binder.Name] = struct{}{}
	}
	return nil
}

func propositionContainsIdentifier(expression *proposition, name string) bool {
	if expression == nil {
		return false
	}
	switch expression.kind {
	case syntaxAtom:
		return leanTextContainsIdentifier(expression.text, name)
	case syntaxUnary:
		return propositionContainsIdentifier(expression.right, name)
	case syntaxQuantifier:
		return leanTextContainsIdentifier(expression.text, name) || propositionContainsIdentifier(expression.right, name)
	case syntaxBinary:
		return propositionContainsIdentifier(expression.left, name) || propositionContainsIdentifier(expression.right, name)
	default:
		return true
	}
}

func leanTextContainsIdentifier(text, name string) bool {
	runes := []rune(text)
	for index := 0; index < len(runes); {
		if runes[index] == '"' {
			index++
			for index < len(runes) {
				if runes[index] == '\\' {
					index += 2
					continue
				}
				if runes[index] == '"' {
					index++
					break
				}
				index++
			}
			continue
		}
		if !unicode.IsLetter(runes[index]) && runes[index] != '_' {
			index++
			continue
		}
		start := index
		for index < len(runes) && (unicode.IsLetter(runes[index]) || unicode.IsDigit(runes[index]) || runes[index] == '_' || runes[index] == '\'' || runes[index] == '.') {
			index++
		}
		if string(runes[start:index]) == name {
			return true
		}
	}
	return false
}

func rebuildImplicationChain(antecedents []*proposition, conclusion *proposition) *proposition {
	body := conclusion.clone()
	for index := len(antecedents) - 1; index >= 0; index-- {
		body = &proposition{kind: syntaxBinary, op: "→", left: antecedents[index].clone(), right: body}
	}
	return body
}

func renderHypothesisConjunction(antecedents []*proposition) string {
	if len(antecedents) == 0 {
		return "True"
	}
	combined := antecedents[len(antecedents)-1].clone()
	for index := len(antecedents) - 2; index >= 0; index-- {
		combined = &proposition{kind: syntaxBinary, op: "∧", left: antecedents[index].clone(), right: combined}
	}
	return combined.render()
}

// CounterexampleProof builds a proof term that instantiates the candidate's
// outer binders with one sampled assignment and decides the resulting body.
// Lean's independent kernel still has to accept the term before it counts.
func (p RandomizedPlan) CounterexampleProof(caseIndex int) (string, error) {
	if caseIndex < 0 || caseIndex >= len(p.Cases) || len(p.Cases[caseIndex]) != len(p.Binders) {
		return "", errors.New("poser: randomized case index or value count is invalid")
	}
	return p.CounterexampleProofValues(p.Cases[caseIndex])
}

// CounterexampleProofValues constructs a proof term for one concrete model.
// The caller must still verify the term with Lean and the configured axiom
// audit; values from an external solver are never trusted directly.
func (p RandomizedPlan) CounterexampleProofValues(values []string) (string, error) {
	if p.ConclusionBinderCount < 0 || p.ConclusionBinderCount > len(p.Binders) {
		return "", errors.New("poser: conclusion binder count is outside the randomized plan")
	}
	if len(values) != len(p.Binders) {
		return "", errors.New("poser: counterexample model value count does not match its binders")
	}
	for index, value := range values {
		if !validSampleValue(p.Binders[index].LeanType, value) {
			return "", fmt.Errorf("poser: counterexample model value for %q is outside its Lean type", p.Binders[index].Name)
		}
	}
	if p.ConclusionBinderCount > 0 {
		if !p.HasHypotheses || len(p.ImplicationAntecedents) == 0 || strings.TrimSpace(p.ConclusionBody) == "" {
			return "", errors.New("poser: lifted conclusion binders require an implication chain and conclusion body")
		}
		outerBinderCount := len(p.Binders) - p.ConclusionBinderCount
		instantiatedConclusion := instantiateLeanExpression(p.ConclusionBody, p.Binders, values)
		arguments := make([]string, 0, len(values)+len(p.ImplicationAntecedents))
		for _, value := range values[:outerBinderCount] {
			arguments = append(arguments, "("+value+")")
		}
		for range p.ImplicationAntecedents {
			arguments = append(arguments, "(by decide)")
		}
		for _, value := range values[outerBinderCount:] {
			arguments = append(arguments, "("+value+")")
		}
		instanceProof := "h " + strings.Join(arguments, " ")
		return "by\n  intro h\n  have hnot : ¬ (" + instantiatedConclusion + ") := by decide\n  exact hnot (" + instanceProof + ")", nil
	}
	if len(p.Binders) == 0 {
		return "by\n  decide", nil
	}
	instantiated := instantiateLeanExpression(p.Body, p.Binders, values)
	applications := make([]string, len(values))
	for index, value := range values {
		applications[index] = "(" + value + ")"
	}
	instanceProof := "h " + strings.Join(applications, " ")
	return "by\n  intro h\n  have hnot : ¬ (" + instantiated + ") := by decide\n  exact hnot (" + instanceProof + ")", nil
}

func instantiateLeanExpression(expression string, binders []RandomizedBinder, values []string) string {
	parameters := make([]string, len(binders))
	applications := make([]string, len(binders))
	for index, binder := range binders {
		parameters[index] = "(" + binder.Name + " : " + binder.LeanType + ")"
		// Parenthesize literals so a negative Int is one argument rather than
		// subtraction from the preceding function application.
		applications[index] = "(" + values[index] + ")"
	}
	if len(parameters) == 0 {
		return "(" + expression + ")"
	}
	return "(fun " + strings.Join(parameters, " ") + " => (" + expression + ")) " + strings.Join(applications, " ")
}

func validSampleValue(leanType, value string) bool {
	if value == "" || len(value) > 64 {
		return false
	}
	switch leanType {
	case "Bool":
		return value == "true" || value == "false"
	case "Nat":
		return validUnsignedDecimal(value)
	case "Int":
		if value[0] == '-' {
			return validUnsignedDecimal(value[1:]) && value[1:] != "0"
		}
		return validUnsignedDecimal(value)
	default:
		return false
	}
}

func validUnsignedDecimal(value string) bool {
	if value == "0" {
		return true
	}
	if value == "" || value[0] < '1' || value[0] > '9' {
		return false
	}
	for _, character := range value[1:] {
		if character < '0' || character > '9' {
			return false
		}
	}
	return true
}

// SatisfiabilityProblem asks Lean to prove that the proposal's explicit
// binder domains and complete outer implication hypothesis chain admit a witness.
func (p RandomizedPlan) SatisfiabilityProblem() (domain.MathProblem, error) {
	if p.ProposalID == "" || strings.TrimSpace(p.HypothesesBody) == "" {
		return domain.MathProblem{}, errors.New("poser: randomized plan lacks its proposal or hypothesis body")
	}
	statement := p.HypothesesBody
	for index := len(p.Binders) - 1; index >= 0; index-- {
		binder := p.Binders[index]
		if !sampleableName(binder.Name) || !sampleableType(binder.LeanType) {
			return domain.MathProblem{}, errors.New("poser: randomized plan contains an unsupported existential binder")
		}
		statement = "∃ (" + binder.Name + " : " + binder.LeanType + "), (" + statement + ")"
	}
	return domain.MathProblem{
		ID:            "m2-hypothesis-" + strings.TrimPrefix(p.ProposalID, "proposal-"),
		Title:         "M2 candidate hypothesis satisfiability",
		Statement:     "Prove that the hypotheses of MathCase proposal " + p.ProposalID + " have a witness.",
		LeanStatement: statement,
	}, nil
}

// SatisfiabilityProof constructs a witness proof from one sampled assignment.
// Callers must still verify it with Lean and the configured axiom audit.
func (p RandomizedPlan) SatisfiabilityProof(caseIndex int) (string, error) {
	if caseIndex < 0 || caseIndex >= len(p.Cases) || len(p.Cases[caseIndex]) != len(p.Binders) {
		return "", errors.New("poser: randomized case index or value count is invalid")
	}
	if p.HypothesesTrivial {
		if len(p.Binders) == 0 {
			return "by\n  exact True.intro", nil
		}
	}
	var proof strings.Builder
	proof.WriteString("by\n")
	for index, value := range p.Cases[caseIndex] {
		fmt.Fprintf(&proof, "  refine ⟨%s, ?_⟩\n", value)
		if index+1 < len(p.Cases[caseIndex]) {
			continue
		}
	}
	if p.HypothesesTrivial {
		proof.WriteString("  exact True.intro")
	} else {
		proof.WriteString("  decide")
	}
	return proof.String(), nil
}

func parseSampleBinders(binders string) ([]RandomizedBinder, error) {
	remaining := strings.TrimSpace(binders)
	if remaining == "" {
		return []RandomizedBinder{}, nil
	}
	out := make([]RandomizedBinder, 0, 4)
	seen := make(map[string]struct{})
	for remaining != "" {
		remaining = strings.TrimSpace(remaining)
		if remaining == "" || remaining[0] != '(' {
			return nil, errors.New("poser: randomized checks support only explicit parenthesized binders")
		}
		end, err := matchingBinderEnd(remaining)
		if err != nil {
			return nil, err
		}
		group := strings.TrimSpace(remaining[1:end])
		colon, err := findTopLevelRune(group, ':')
		if err != nil || colon < 0 {
			return nil, errors.New("poser: randomized binder requires an explicit name and type")
		}
		names := strings.Fields(strings.TrimSpace(group[:colon]))
		leanType := strings.TrimSpace(group[colon+1:])
		if len(names) == 0 || !sampleableType(leanType) {
			return nil, fmt.Errorf("poser: randomized checks do not support binder type %q", leanType)
		}
		for _, name := range names {
			if !sampleableName(name) {
				return nil, fmt.Errorf("poser: randomized binder name %q is unsupported", name)
			}
			if _, exists := seen[name]; exists {
				return nil, fmt.Errorf("poser: randomized binder %q is repeated", name)
			}
			seen[name] = struct{}{}
			out = append(out, RandomizedBinder{Name: name, LeanType: leanType})
		}
		remaining = strings.TrimSpace(remaining[end+1:])
	}
	return out, nil
}

func matchingBinderEnd(text string) (int, error) {
	depth := 0
	inString := false
	escaped := false
	for index, character := range text {
		if inString {
			if escaped {
				escaped = false
				continue
			}
			if character == '\\' {
				escaped = true
				continue
			}
			if character == '"' {
				inString = false
			}
			continue
		}
		if character == '"' {
			inString = true
			continue
		}
		if character == '(' {
			depth++
		} else if character == ')' {
			depth--
			if depth == 0 {
				return index, nil
			}
			if depth < 0 {
				break
			}
		}
	}
	return 0, errors.New("poser: randomized binder has unbalanced parentheses")
}

func sampleableType(leanType string) bool {
	switch leanType {
	case "Nat", "Int", "Bool":
		return true
	default:
		return false
	}
}

func sampleableName(name string) bool {
	if name == "" {
		return false
	}
	for index, character := range name {
		letter := character >= 'a' && character <= 'z' || character >= 'A' && character <= 'Z' || character == '_'
		digit := character >= '0' && character <= '9'
		if index == 0 && !letter || index > 0 && !letter && !digit {
			return false
		}
	}
	return true
}

func randomizedValue(rng *rand.Rand, leanType string, index int) string {
	switch leanType {
	case "Nat":
		edges := []string{"0", "1", "2", "10", "100", "1000", "4294967295", "18446744073709551615"}
		if index < len(edges) {
			return edges[index]
		}
		return fmt.Sprint(rng.Int63n(1_000_001))
	case "Int":
		edges := []string{"0", "1", "-1", "2", "-2", "10", "-10", "1000"}
		if index < len(edges) {
			return edges[index]
		}
		return fmt.Sprint(rng.Int63n(2_000_001) - 1_000_000)
	case "Bool":
		if index < 2 {
			if index == 0 {
				return "false"
			}
			return "true"
		}
		if rng.Intn(2) == 0 {
			return "false"
		}
		return "true"
	default:
		return ""
	}
}
