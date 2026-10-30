package poser

import (
	"errors"
	"fmt"
	"strconv"
	"strings"
)

// SMTNegationQuery is a closed, bounded SMT-LIB translation of the candidate's
// negation. Unsupported Lean syntax is refused instead of approximated.
type SMTNegationQuery struct {
	SchemaVersion         string             `json:"schema_version"`
	ProposalID            string             `json:"proposal_id"`
	Binders               []RandomizedBinder `json:"binders"`
	ModelSymbols          []string           `json:"model_symbols"`
	ConclusionBinderCount int                `json:"conclusion_binder_count,omitempty"`
	SMTLIB                string             `json:"smtlib"`
}

type smtBinding struct {
	leanType string
	symbol   string
}

type smtSymbolAllocator struct {
	next int
}

func (a *smtSymbolAllocator) allocate() string {
	symbol := fmt.Sprintf("mc_arg_%d", a.next)
	a.next++
	return symbol
}

// BuildSMTNegationQuery translates the supported Nat, Int, and Bool
// proposition fragment. Nat variables are represented as integers with
// explicit nonnegativity constraints; nested Nat quantifiers use equivalent
// guards in their quantifier bodies. Nat subtraction uses Lean's truncated
// semantics. All other syntax fails closed.
func (p Proposal) BuildSMTNegationQuery() (SMTNegationQuery, error) {
	if err := p.Validate(); err != nil {
		return SMTNegationQuery{}, err
	}
	theorem, err := parseTheoremStatement(p.LeanStatement)
	if err != nil {
		return SMTNegationQuery{}, err
	}
	binderText, bodyExpression := extractLeadingUniversalBinders(theorem)
	binders, err := parseSampleBinders(binderText)
	if err != nil {
		return SMTNegationQuery{}, fmt.Errorf("poser: SMT translation: %w", err)
	}
	antecedents, conclusion := splitImplicationChain(bodyExpression)
	conclusionBinderCount := 0
	if len(antecedents) > 0 {
		conclusionBinders, normalizedConclusion, liftErr := liftConclusionUniversalBinders(binders, antecedents, conclusion)
		if liftErr != nil {
			return SMTNegationQuery{}, fmt.Errorf("poser: SMT translation: %w", liftErr)
		}
		if len(conclusionBinders) > 0 {
			binders = append(binders, conclusionBinders...)
			conclusionBinderCount = len(conclusionBinders)
			bodyExpression = rebuildImplicationChain(antecedents, normalizedConclusion)
		}
	}
	env := make(map[string]smtBinding, len(binders))
	allocator := &smtSymbolAllocator{}
	modelSymbols := make([]string, len(binders))
	var declarations strings.Builder
	for index, binder := range binders {
		symbol := allocator.allocate()
		modelSymbols[index] = symbol
		env[binder.Name] = smtBinding{leanType: binder.LeanType, symbol: symbol}
		if binder.LeanType == "Bool" {
			fmt.Fprintf(&declarations, "(declare-const %s Bool)\n", symbol)
			continue
		}
		fmt.Fprintf(&declarations, "(declare-const %s Int)\n", symbol)
		if binder.LeanType == "Nat" {
			fmt.Fprintf(&declarations, "(assert (>= %s 0))\n", symbol)
		}
	}
	body, err := translateSMTFormula(bodyExpression, env, allocator)
	if err != nil {
		return SMTNegationQuery{}, fmt.Errorf("poser: SMT translation: %w", err)
	}
	var script strings.Builder
	script.WriteString("(set-logic ALL)\n")
	script.WriteString(declarations.String())
	fmt.Fprintf(&script, "(assert (not %s))\n", body)
	return SMTNegationQuery{
		SchemaVersion:         "mathcase-m2-smt-query-v4",
		ProposalID:            p.ID,
		Binders:               binders,
		ModelSymbols:          modelSymbols,
		ConclusionBinderCount: conclusionBinderCount,
		SMTLIB:                script.String(),
	}, nil
}

func translateSMTFormula(expression *proposition, env map[string]smtBinding, allocator *smtSymbolAllocator) (string, error) {
	if expression == nil {
		return "", errors.New("empty proposition node")
	}
	switch expression.kind {
	case syntaxAtom:
		atom := strings.TrimSpace(expression.text)
		if _, isLocalBinder := env[atom]; !isLocalBinder {
			switch atom {
			case "True", "true":
				return "true", nil
			case "False", "false":
				return "false", nil
			}
		}
		term, err := parseSMTTerm(expression.text, env)
		if err != nil {
			return "", err
		}
		if term.sort != "Bool" {
			return "", fmt.Errorf("formula atom %q is not a Bool expression", expression.text)
		}
		return term.code, nil
	case syntaxUnary:
		if expression.op != "¬" {
			return "", fmt.Errorf("unsupported unary proposition operator %q", expression.op)
		}
		body, err := translateSMTFormula(expression.right, env, allocator)
		if err != nil {
			return "", err
		}
		return "(not " + body + ")", nil
	case syntaxQuantifier:
		return translateSMTQuantifier(expression, env, allocator)
	case syntaxBinary:
		switch expression.op {
		case "∧", "∨", "→", "↔":
			left, err := translateSMTFormula(expression.left, env, allocator)
			if err != nil {
				return "", err
			}
			right, err := translateSMTFormula(expression.right, env, allocator)
			if err != nil {
				return "", err
			}
			switch expression.op {
			case "∧":
				return "(and " + left + " " + right + ")", nil
			case "∨":
				return "(or " + left + " " + right + ")", nil
			case "→":
				return "(=> " + left + " " + right + ")", nil
			default:
				return "(= " + left + " " + right + ")", nil
			}
		case "=", "≠", "<", ">", "≤", "≥":
			left, err := parseSMTTerm(expression.left.render(), env)
			if err != nil {
				return "", err
			}
			right, err := parseSMTTerm(expression.right.render(), env)
			if err != nil {
				return "", err
			}
			sort, err := unifySMTSorts(left, right)
			if err != nil {
				return "", err
			}
			if expression.op != "=" && expression.op != "≠" && sort == "Bool" {
				return "", errors.New("ordered comparison requires numeric operands")
			}
			if expression.op == "≠" {
				return "(distinct " + left.code + " " + right.code + ")", nil
			}
			operator := expression.op
			switch operator {
			case "≤":
				operator = "<="
			case "≥":
				operator = ">="
			}
			return "(" + operator + " " + left.code + " " + right.code + ")", nil
		default:
			return "", fmt.Errorf("unsupported proposition operator %q", expression.op)
		}
	default:
		return "", errors.New("unsupported proposition node")
	}
}

func translateSMTQuantifier(expression *proposition, env map[string]smtBinding, allocator *smtSymbolAllocator) (string, error) {
	if expression.op != "∀" && expression.op != "∃" {
		return "", fmt.Errorf("unsupported quantifier operator %q", expression.op)
	}
	binders, err := parseSampleBinders(expression.text)
	if err != nil {
		return "", fmt.Errorf("quantifier binders: %w", err)
	}
	if len(binders) == 0 {
		return "", errors.New("quantifier requires at least one binder")
	}

	localEnv := make(map[string]smtBinding, len(env)+len(binders))
	for name, binding := range env {
		localEnv[name] = binding
	}
	smtBinders := make([]string, 0, len(binders))
	natGuards := make([]string, 0, len(binders))
	for _, binder := range binders {
		symbol := allocator.allocate()
		switch binder.LeanType {
		case "Bool":
			smtBinders = append(smtBinders, "("+symbol+" Bool)")
		case "Nat":
			smtBinders = append(smtBinders, "("+symbol+" Int)")
			natGuards = append(natGuards, "(>= "+symbol+" 0)")
		case "Int":
			smtBinders = append(smtBinders, "("+symbol+" Int)")
		default:
			return "", fmt.Errorf("nested quantifier over %s is outside the bounded SMT fragment", binder.LeanType)
		}
		localEnv[binder.Name] = smtBinding{leanType: binder.LeanType, symbol: symbol}
	}
	body, err := translateSMTFormula(expression.right, localEnv, allocator)
	if err != nil {
		return "", err
	}
	quantifier := "forall"
	if expression.op == "∃" {
		quantifier = "exists"
	}
	if len(natGuards) == 1 {
		if quantifier == "forall" {
			body = "(=> " + natGuards[0] + " " + body + ")"
		} else {
			body = "(and " + natGuards[0] + " " + body + ")"
		}
	} else if len(natGuards) > 1 {
		guard := "(and " + strings.Join(natGuards, " ") + ")"
		if quantifier == "forall" {
			body = "(=> " + guard + " " + body + ")"
		} else {
			body = "(and " + guard + " " + body + ")"
		}
	}
	return "(" + quantifier + " (" + strings.Join(smtBinders, " ") + ") " + body + ")", nil
}

type smtTerm struct {
	code string
	sort string
}

type smtTermParser struct {
	tokens []string
	index  int
	env    map[string]smtBinding
}

func parseSMTTerm(text string, env map[string]smtBinding) (smtTerm, error) {
	tokens, err := tokenizeSMTTerm(text)
	if err != nil {
		return smtTerm{}, err
	}
	parser := smtTermParser{tokens: tokens, env: env}
	term, err := parser.parse(0)
	if err != nil {
		return smtTerm{}, err
	}
	if parser.index != len(tokens) {
		return smtTerm{}, fmt.Errorf("unsupported arithmetic expression %q", text)
	}
	return term, nil
}

func tokenizeSMTTerm(text string) ([]string, error) {
	runes := []rune(strings.TrimSpace(text))
	tokens := make([]string, 0, len(runes))
	for index := 0; index < len(runes); {
		character := runes[index]
		if character == ' ' || character == '\t' {
			index++
			continue
		}
		if character >= '0' && character <= '9' {
			start := index
			for index < len(runes) && runes[index] >= '0' && runes[index] <= '9' {
				index++
			}
			tokens = append(tokens, string(runes[start:index]))
			continue
		}
		if isSMTIdentifierStart(character) {
			start := index
			for index < len(runes) && isSMTIdentifierContinue(runes[index]) {
				index++
			}
			tokens = append(tokens, string(runes[start:index]))
			continue
		}
		switch character {
		case '+', '-', '*', '(', ')':
			tokens = append(tokens, string(character))
			index++
		default:
			return nil, fmt.Errorf("unsupported arithmetic character %q", character)
		}
	}
	if len(tokens) == 0 {
		return nil, errors.New("empty arithmetic expression")
	}
	return tokens, nil
}

func (p *smtTermParser) parse(minPrecedence int) (smtTerm, error) {
	if p.index >= len(p.tokens) {
		return smtTerm{}, errors.New("incomplete arithmetic expression")
	}
	token := p.tokens[p.index]
	p.index++
	var left smtTerm
	switch {
	case token == "-":
		operand, err := p.parse(3)
		if err != nil {
			return smtTerm{}, err
		}
		if !isSMTNumeric(operand.sort) || operand.sort == "Nat" {
			return smtTerm{}, errors.New("unary negation requires an Int expression")
		}
		left = smtTerm{code: "(- " + operand.code + ")", sort: "Int"}
	case token == "(":
		parsed, err := p.parse(0)
		if err != nil {
			return smtTerm{}, err
		}
		if p.index >= len(p.tokens) || p.tokens[p.index] != ")" {
			return smtTerm{}, errors.New("unclosed arithmetic parenthesis")
		}
		p.index++
		left = parsed
	case token == ")":
		return smtTerm{}, errors.New("unexpected closing arithmetic parenthesis")
	case isSMTDecimal(token):
		left = smtTerm{code: token, sort: "Literal"}
	case isSMTIdentifier(token):
		if binding, exists := p.env[token]; exists {
			left = smtTerm{code: binding.symbol, sort: binding.leanType}
		} else if token == "true" || token == "false" {
			left = smtTerm{code: token, sort: "Bool"}
		} else {
			return smtTerm{}, fmt.Errorf("unbound or unsupported Lean identifier %q", token)
		}
	default:
		return smtTerm{}, fmt.Errorf("unsupported arithmetic token %q", token)
	}
	for p.index < len(p.tokens) {
		op := p.tokens[p.index]
		precedence := smtArithmeticPrecedence(op)
		if precedence < minPrecedence {
			break
		}
		p.index++
		right, err := p.parse(precedence + 1)
		if err != nil {
			return smtTerm{}, err
		}
		sort, err := unifySMTSorts(left, right)
		if err != nil || !isSMTNumeric(sort) {
			if err != nil {
				return smtTerm{}, err
			}
			return smtTerm{}, errors.New("arithmetic operators require numeric operands")
		}
		if op == "-" && sort == "Literal" {
			return smtTerm{}, errors.New("subtraction of untyped numeric literals has ambiguous Lean Nat/Int semantics")
		}
		if op == "-" && sort == "Nat" {
			left = smtTerm{code: "(ite (>= " + left.code + " " + right.code + ") (- " + left.code + " " + right.code + ") 0)", sort: "Nat"}
			continue
		}
		left = smtTerm{code: "(" + op + " " + left.code + " " + right.code + ")", sort: sort}
	}
	return left, nil
}

func smtArithmeticPrecedence(operator string) int {
	switch operator {
	case "+", "-":
		return 1
	case "*":
		return 2
	default:
		return -1
	}
}

func unifySMTSorts(left, right smtTerm) (string, error) {
	if left.sort == "Literal" && right.sort == "Literal" {
		return "Int", nil
	}
	if left.sort == "Literal" {
		if right.sort == "Bool" {
			return "", errors.New("numeric literal cannot be compared with Bool")
		}
		return right.sort, nil
	}
	if right.sort == "Literal" {
		if left.sort == "Bool" {
			return "", errors.New("numeric literal cannot be compared with Bool")
		}
		return left.sort, nil
	}
	if left.sort != right.sort {
		return "", fmt.Errorf("mixed Lean operand types %s and %s are outside the SMT fragment", left.sort, right.sort)
	}
	return left.sort, nil
}

func isSMTNumeric(sort string) bool { return sort == "Nat" || sort == "Int" || sort == "Literal" }

func isSMTDecimal(token string) bool {
	if token == "" {
		return false
	}
	_, err := strconv.ParseUint(token, 10, 64)
	if err == nil {
		return true
	}
	for _, character := range token {
		if character < '0' || character > '9' {
			return false
		}
	}
	return true
}

func isSMTIdentifier(token string) bool {
	if token == "" || !isSMTIdentifierStart(rune(token[0])) {
		return false
	}
	for _, character := range token[1:] {
		if !isSMTIdentifierContinue(character) {
			return false
		}
	}
	return true
}

func isSMTIdentifierStart(character rune) bool {
	return character == '_' || character >= 'a' && character <= 'z' || character >= 'A' && character <= 'Z'
}

func isSMTIdentifierContinue(character rune) bool {
	return isSMTIdentifierStart(character) || character >= '0' && character <= '9'
}
