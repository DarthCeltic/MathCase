package poser

import (
	"errors"
	"fmt"
	"strings"
)

const (
	maxSyntaxDepth = 64
	maxSyntaxNodes = 512
)

type syntaxKind uint8

const (
	syntaxAtom syntaxKind = iota
	syntaxUnary
	syntaxQuantifier
	syntaxBinary
)

type proposition struct {
	kind    syntaxKind
	op      string
	text    string
	left    *proposition
	right   *proposition
	grouped bool
}

type theoremSyntax struct {
	name    string
	binders string
	body    *proposition
}

type expressionParser struct {
	nodes int
}

type binaryToken struct {
	text       string
	precedence int
	rightAssoc bool
	runeOffset int
}

var propositionOperators = []binaryToken{
	{text: "<->", precedence: 1, rightAssoc: true},
	{text: "↔", precedence: 1, rightAssoc: true},
	{text: "->", precedence: 2, rightAssoc: true},
	{text: "→", precedence: 2, rightAssoc: true},
	{text: "∨", precedence: 3},
	{text: "∧", precedence: 4},
	{text: "<=", precedence: 5},
	{text: ">=", precedence: 5},
	{text: "≤", precedence: 5},
	{text: "≥", precedence: 5},
	{text: "≠", precedence: 5},
	{text: "=", precedence: 5},
	{text: "<", precedence: 5},
	{text: ">", precedence: 5},
}

func parseTheoremStatement(statement string) (theoremSyntax, error) {
	if strings.TrimSpace(statement) == "" || len(statement) > 16_384 || strings.ContainsAny(statement, "\x00\r\n") {
		return theoremSyntax{}, errors.New("poser: parent statement is empty or outside the single-line size limit")
	}
	if strings.Contains(statement, "--") || strings.Contains(statement, "/-") || strings.Contains(statement, "-/") || strings.Contains(statement, ":=") {
		return theoremSyntax{}, errors.New("poser: comments and declaration bodies are outside the supported statement syntax")
	}

	text := strings.TrimSpace(statement)
	keyword, rest := "", ""
	for _, candidate := range []string{"theorem", "lemma"} {
		if strings.HasPrefix(text, candidate+" ") || strings.HasPrefix(text, candidate+"\t") {
			keyword = candidate
			rest = strings.TrimSpace(text[len(candidate):])
			break
		}
	}
	if keyword == "" {
		return theoremSyntax{}, errors.New("poser: parent must be a theorem or lemma declaration")
	}
	nameEnd := strings.IndexFunc(rest, func(r rune) bool {
		return r == ':' || r == '(' || r == '[' || r == '{' || r == ' ' || r == '\t'
	})
	if nameEnd <= 0 {
		return theoremSyntax{}, errors.New("poser: parent theorem name or statement separator is missing")
	}
	name := rest[:nameEnd]
	if err := validateLeanName(name); err != nil {
		return theoremSyntax{}, err
	}
	remainder := strings.TrimSpace(rest[nameEnd:])
	colon, err := findTopLevelRune(remainder, ':')
	if err != nil {
		return theoremSyntax{}, fmt.Errorf("poser: parse parent binders: %w", err)
	}
	if colon < 0 {
		return theoremSyntax{}, errors.New("poser: parent theorem statement has no top-level type separator")
	}
	binders := strings.TrimSpace(remainder[:colon])
	bodyText := strings.TrimSpace(remainder[colon+1:])
	if bodyText == "" {
		return theoremSyntax{}, errors.New("poser: parent theorem proposition is empty")
	}

	parser := expressionParser{}
	body, err := parser.parse(bodyText, 0)
	if err != nil {
		return theoremSyntax{}, err
	}
	return theoremSyntax{name: name, binders: binders, body: body}, nil
}

func (p *expressionParser) parse(text string, depth int) (*proposition, error) {
	text = strings.TrimSpace(text)
	if text == "" {
		return nil, errors.New("poser: empty proposition fragment")
	}
	if depth > maxSyntaxDepth {
		return nil, errors.New("poser: proposition syntax exceeds the nesting limit")
	}
	p.nodes++
	if p.nodes > maxSyntaxNodes {
		return nil, errors.New("poser: proposition syntax exceeds the node limit")
	}
	if err := validateBalanced(text); err != nil {
		return nil, err
	}

	if inner, grouped := stripOuterParentheses(text); grouped {
		parsed, err := p.parse(inner, depth+1)
		if err != nil {
			return nil, err
		}
		parsed.grouped = true
		return parsed, nil
	}

	if op, rest, ok := quantifierPrefix(text); ok {
		comma, err := findTopLevelRune(rest, ',')
		if err != nil {
			return nil, fmt.Errorf("poser: parse quantified proposition: %w", err)
		}
		if comma < 0 {
			return nil, errors.New("poser: quantifier is missing its binder separator")
		}
		binders := strings.TrimSpace(rest[:comma])
		if binders == "" {
			return nil, errors.New("poser: quantifier binder is empty")
		}
		body, err := p.parse(strings.TrimSpace(rest[comma+1:]), depth+1)
		if err != nil {
			return nil, err
		}
		return &proposition{kind: syntaxQuantifier, op: op, text: binders, right: body}, nil
	}

	if op, rest, ok := unaryPrefix(text); ok {
		body, err := p.parse(rest, depth+1)
		if err != nil {
			return nil, err
		}
		return &proposition{kind: syntaxUnary, op: op, right: body}, nil
	}

	operator, err := findBinaryOperator(text)
	if err != nil {
		return nil, err
	}
	if operator != nil {
		left, err := p.parse(string([]rune(text)[:operator.runeOffset]), depth+1)
		if err != nil {
			return nil, err
		}
		right, err := p.parse(string([]rune(text)[operator.runeOffset+len([]rune(operator.text)):]), depth+1)
		if err != nil {
			return nil, err
		}
		return &proposition{kind: syntaxBinary, op: canonicalOperator(operator.text), left: left, right: right}, nil
	}

	return &proposition{kind: syntaxAtom, text: text}, nil
}

func findTopLevelRune(text string, target rune) (int, error) {
	runes := []rune(text)
	stack := make([]rune, 0, 4)
	inString := false
	escaped := false
	for index, character := range runes {
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
		switch character {
		case '(', '[', '{':
			stack = append(stack, character)
		case ')', ']', '}':
			if len(stack) == 0 || !matchesDelimiter(stack[len(stack)-1], character) {
				return -1, errors.New("unbalanced Lean delimiters")
			}
			stack = stack[:len(stack)-1]
		default:
			if len(stack) == 0 && character == target {
				return index, nil
			}
		}
	}
	if inString || len(stack) > 0 {
		return -1, errors.New("unbalanced Lean delimiters or string literal")
	}
	return -1, nil
}

func findBinaryOperator(text string) (*binaryToken, error) {
	runes := []rune(text)
	stack := make([]rune, 0, 4)
	inString := false
	escaped := false
	matches := make([]binaryToken, 0, 4)
	for index := 0; index < len(runes); index++ {
		character := runes[index]
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
		switch character {
		case '(', '[', '{':
			stack = append(stack, character)
			continue
		case ')', ']', '}':
			if len(stack) == 0 || !matchesDelimiter(stack[len(stack)-1], character) {
				return nil, errors.New("poser: unbalanced Lean delimiters")
			}
			stack = stack[:len(stack)-1]
			continue
		}
		if len(stack) != 0 {
			continue
		}
		for _, candidate := range propositionOperators {
			candidateRunes := []rune(candidate.text)
			if !runeSliceAt(runes, index, candidateRunes) {
				continue
			}
			if candidate.text == "=" && ((index > 0 && runes[index-1] == ':') || (index+1 < len(runes) && runes[index+1] == '>')) {
				continue
			}
			candidate.runeOffset = index
			matches = append(matches, candidate)
			index += len(candidateRunes) - 1
			break
		}
	}
	if inString || len(stack) > 0 {
		return nil, errors.New("poser: unbalanced Lean delimiters or string literal")
	}
	if len(matches) == 0 {
		return nil, nil
	}
	selected := matches[0]
	for _, candidate := range matches[1:] {
		if candidate.precedence < selected.precedence ||
			(candidate.precedence == selected.precedence && candidate.rightAssoc && candidate.runeOffset < selected.runeOffset) ||
			(candidate.precedence == selected.precedence && !candidate.rightAssoc && candidate.runeOffset > selected.runeOffset) {
			selected = candidate
		}
	}
	return &selected, nil
}

func validateBalanced(text string) error {
	_, err := findTopLevelRune(text, '\u0000')
	return err
}

func stripOuterParentheses(text string) (string, bool) {
	runes := []rune(text)
	if len(runes) < 2 || runes[0] != '(' {
		return text, false
	}
	stack := make([]rune, 0, 4)
	inString := false
	escaped := false
	for index, character := range runes {
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
		switch character {
		case '(', '[', '{':
			stack = append(stack, character)
		case ')', ']', '}':
			if len(stack) == 0 || !matchesDelimiter(stack[len(stack)-1], character) {
				return text, false
			}
			stack = stack[:len(stack)-1]
			if len(stack) == 0 && index != len(runes)-1 {
				return text, false
			}
		}
	}
	if len(stack) != 0 || inString {
		return text, false
	}
	return string(runes[1 : len(runes)-1]), true
}

func quantifierPrefix(text string) (string, string, bool) {
	trimmed := strings.TrimSpace(text)
	for _, symbol := range []string{"∀", "∃"} {
		if strings.HasPrefix(trimmed, symbol) {
			return symbol, strings.TrimSpace(strings.TrimPrefix(trimmed, symbol)), true
		}
	}
	for _, word := range []string{"forall", "exists"} {
		prefix := word + " "
		if strings.HasPrefix(trimmed, prefix) || strings.HasPrefix(trimmed, word+"\t") {
			operator := "∀"
			if word == "exists" {
				operator = "∃"
			}
			return operator, strings.TrimSpace(trimmed[len(word):]), true
		}
	}
	return "", "", false
}

func unaryPrefix(text string) (string, string, bool) {
	trimmed := strings.TrimSpace(text)
	if strings.HasPrefix(trimmed, "¬") {
		return "¬", strings.TrimSpace(strings.TrimPrefix(trimmed, "¬")), true
	}
	if strings.HasPrefix(trimmed, "not ") || strings.HasPrefix(trimmed, "not\t") {
		return "¬", strings.TrimSpace(trimmed[len("not"):]), true
	}
	return "", "", false
}

func canonicalOperator(operator string) string {
	switch operator {
	case "->":
		return "→"
	case "<->":
		return "↔"
	case "<=":
		return "≤"
	case ">=":
		return "≥"
	default:
		return operator
	}
}

func matchesDelimiter(open, close rune) bool {
	return open == '(' && close == ')' || open == '[' && close == ']' || open == '{' && close == '}'
}

func runeSliceAt(haystack []rune, index int, needle []rune) bool {
	if index < 0 || index+len(needle) > len(haystack) {
		return false
	}
	for offset, character := range needle {
		if haystack[index+offset] != character {
			return false
		}
	}
	return true
}

func (p *proposition) render() string {
	if p == nil {
		return ""
	}
	var rendered string
	switch p.kind {
	case syntaxAtom:
		rendered = strings.TrimSpace(p.text)
	case syntaxUnary:
		body := p.right.render()
		if !p.right.grouped {
			body = "(" + body + ")"
		}
		rendered = p.op + " " + body
	case syntaxQuantifier:
		rendered = p.op + " " + p.text + ", " + p.right.render()
	case syntaxBinary:
		rendered = renderChild(p.left) + " " + p.op + " " + renderChild(p.right)
	}
	if p.grouped {
		return "(" + rendered + ")"
	}
	return rendered
}

func renderChild(expression *proposition) string {
	if expression == nil {
		return ""
	}
	rendered := expression.render()
	if expression.kind == syntaxAtom || expression.grouped {
		return rendered
	}
	return "(" + rendered + ")"
}

func (p *proposition) clone() *proposition {
	if p == nil {
		return nil
	}
	copy := *p
	copy.left = p.left.clone()
	copy.right = p.right.clone()
	return &copy
}

func propositionEqual(left, right *proposition) bool {
	if left == nil || right == nil {
		return left == right
	}
	if left.kind != right.kind || left.op != right.op || normalizeAtom(left.text) != normalizeAtom(right.text) {
		return false
	}
	return propositionEqual(left.left, right.left) && propositionEqual(left.right, right.right)
}

func normalizeAtom(value string) string {
	return strings.TrimSpace(value)
}

func renderTheoremDeclaration(name, binders string, body *proposition) string {
	declaration := "theorem " + name
	if strings.TrimSpace(binders) != "" {
		declaration += " " + strings.TrimSpace(binders)
	}
	return declaration + " : " + body.render()
}

func renderFormalProposition(theorem theoremSyntax) string {
	proposition := theorem.body.render()
	if strings.TrimSpace(theorem.binders) == "" {
		return proposition
	}
	return "(∀ " + strings.TrimSpace(theorem.binders) + ", " + proposition + ")"
}

func validateLeanName(name string) error {
	if name == "" {
		return errors.New("poser: Lean declaration name is empty")
	}
	for index, character := range name {
		valid := character >= 'a' && character <= 'z' || character >= 'A' && character <= 'Z' || character == '_' || character == '.' || index > 0 && character >= '0' && character <= '9'
		if !valid {
			return errors.New("poser: parent theorem name is outside the supported identifier syntax")
		}
	}
	return nil
}
