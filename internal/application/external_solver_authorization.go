package application

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"net"
	"net/url"
	"os"
	"path/filepath"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/provider"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	externalInputClearanceSchema     = "mathcase-provider-input-clearance-v1"
	externalOwnerAuthorizationSchema = "mathcase-external-solver-authorization-v1"
	MaxExternalAuthorizationBytes    = 1 << 20
	MaxExternalClearanceBytes        = 64 << 10
	externalStatementOnlyScope       = "theorem statement and proof attempts only"
	externalContextScope             = "theorem statement, proof attempts, and the SHA-256-pinned problem context only"
	externalOwnerContextScope        = "theorem statements, proof attempts, and exact SHA-256-listed problem contexts only"
)

// ExternalSolverAuthorization binds one remote inference route to a user
// authorization artifact, exact theorem statement clearances, and a call-cost
// ceiling. It grants no training, corpus, or evaluation use.
type ExternalSolverAuthorization struct {
	ProviderID               string
	ProtocolID               string
	ModelID                  string
	EndpointURL              string
	PerCallCostCeilingMicros int64
	OwnerAuthorizationPath   string
	OwnerAuthorizationBytes  []byte
	OwnerAuthorizationSHA256 string
	ClearanceArtifacts       []ExternalInputClearanceArtifact
	AllowedProblems          []domain.MathProblem
}

// ExternalInputClearanceArtifact carries the exact, locally saved item-level
// provider-input clearance bytes that bind a theorem name to its Lean text.
type ExternalInputClearanceArtifact struct {
	Path  string
	Bytes []byte
}

// ExternalSolverIdentity is implemented by remote solvers whose destination
// and launch identity can be compared with the scoped authorization.
type ExternalSolverIdentity interface {
	ProviderID() string
	ProtocolID() string
	ModelID() string
	EndpointURL() string
	MaxCostMicros() (int64, bool)
}

type verifiedExternalSolverScope struct {
	providerID string
	protocolID string
	expiresAt  time.Time
	inputs     map[string]verifiedExternalInputClearance
}

type verifiedExternalInputClearance struct {
	statementSHA256 string
	contextSHA256   string
	evidenceID      string
	evidenceSHA256  string
	path            string
}

type externalInputClearanceRecord struct {
	Schema              string   `json:"schema"`
	AuthorizationPath   string   `json:"authorization_path"`
	AuthorizationSHA256 string   `json:"authorization_sha256"`
	AuthorizedContent   string   `json:"authorized_content"`
	ClearanceID         string   `json:"clearance_id"`
	ExpiresAtUTC        string   `json:"expires_at_utc"`
	ProhibitedContent   []string `json:"prohibited_content"`
	Statement           string   `json:"statement"`
	StatementSHA256     string   `json:"statement_sha256"`
	ContextSHA256       string   `json:"context_sha256,omitempty"`
	ProviderContextPath string   `json:"provider_context_path,omitempty"`
	TheoremID           string   `json:"theorem_id"`
	TheoremName         string   `json:"theorem_name"`
	TrainingAuthorized  bool     `json:"training_authorized"`
}

type externalOwnerAuthorizationRecord struct {
	Schema                   string                            `json:"schema"`
	AuthorizationID          string                            `json:"authorization_id"`
	ProviderID               string                            `json:"provider_id"`
	ProtocolID               string                            `json:"protocol_id"`
	ModelIDs                 []string                          `json:"model_ids"`
	EndpointURL              string                            `json:"endpoint_url"`
	ExpiresAtUTC             string                            `json:"expires_at_utc"`
	PerCallCostCeilingMicros int64                             `json:"per_call_cost_ceiling_micros"`
	AuthorizedContent        string                            `json:"authorized_content"`
	AuthorizedContexts       []externalAuthorizedContextRecord `json:"authorized_contexts,omitempty"`
	Items                    []string                          `json:"items"`
	ProhibitedContent        []string                          `json:"prohibited_content"`
	TrainingAuthorized       *bool                             `json:"training_authorized"`
}

type externalAuthorizedContextRecord struct {
	ProblemID     string `json:"problem_id"`
	ContextSHA256 string `json:"context_sha256"`
}

type verifiedExternalOwnerAuthorization struct {
	theoremNames   map[string]struct{}
	contextSHA256s map[string]string
}

func verifyExternalSolverAuthorization(config SolverSessionConfig) (*verifiedExternalSolverScope, error) {
	authorization := config.ExternalAuthorization
	if authorization == nil {
		return nil, ErrExternalSolverDisabled
	}
	ownerAuthorization, err := validateExternalAuthorizationArtifact(*authorization, config.Now)
	if err != nil {
		return nil, fmt.Errorf("%w: %v", ErrExternalSolverAuthorization, err)
	}
	if authorization.PerCallCostCeilingMicros <= 0 {
		return nil, fmt.Errorf("%w: per-call cost ceiling must be positive", ErrExternalSolverAuthorization)
	}
	allowedProblems := make(map[string]domain.MathProblem, len(authorization.AllowedProblems))
	for _, problem := range authorization.AllowedProblems {
		if problem.ID == "" || problem.LeanStatement == "" {
			return nil, fmt.Errorf("%w: allowed problem requires an ID and exact Lean statement", ErrExternalSolverAuthorization)
		}
		if problem.ProviderContext != nil {
			if err := problem.ProviderContext.Validate(); err != nil {
				return nil, fmt.Errorf("%w: invalid provider prompt context: %v", ErrExternalSolverAuthorization, err)
			}
		}
		if _, duplicate := allowedProblems[problem.ID]; duplicate {
			return nil, fmt.Errorf("%w: duplicate allowed problem ID", ErrExternalSolverAuthorization)
		}
		allowedProblems[problem.ID] = problem
	}
	if len(allowedProblems) == 0 || len(allowedProblems) != len(authorization.ClearanceArtifacts) {
		return nil, fmt.Errorf("%w: allowed problem set must match the item-clearance set", ErrExternalSolverAuthorization)
	}

	verifiedRoutes := 0
	for _, candidate := range config.Solvers {
		if candidate.Local() {
			continue
		}
		identity, ok := candidate.(ExternalSolverIdentity)
		if !ok {
			return nil, fmt.Errorf("%w: external route does not expose a bindable provider identity", ErrExternalSolverAuthorization)
		}
		verifiedRoutes++
		if identity.ProviderID() != authorization.ProviderID || identity.ProtocolID() != authorization.ProtocolID || identity.ModelID() != authorization.ModelID || identity.EndpointURL() != authorization.EndpointURL {
			return nil, fmt.Errorf("%w: provider, protocol, model, or endpoint differs from the owner grant", ErrExternalSolverAuthorization)
		}
		maxCost, known := identity.MaxCostMicros()
		if !known || maxCost <= 0 || maxCost > authorization.PerCallCostCeilingMicros {
			return nil, fmt.Errorf("%w: route per-call ceiling exceeds or omits the authorized bound", ErrExternalSolverAuthorization)
		}
	}
	if verifiedRoutes == 0 {
		return nil, fmt.Errorf("%w: no external route consumes the supplied grant", ErrExternalSolverAuthorization)
	}

	ownerDigest := sha256Hex(authorization.OwnerAuthorizationBytes)
	authorizedTheoremNames := ownerAuthorization.theoremNames
	scope := &verifiedExternalSolverScope{
		providerID: authorization.ProviderID, protocolID: authorization.ProtocolID,
		inputs: make(map[string]verifiedExternalInputClearance, len(authorization.ClearanceArtifacts)),
	}
	clearanceIDs := make(map[string]struct{}, len(authorization.ClearanceArtifacts))
	for _, artifact := range authorization.ClearanceArtifacts {
		if len(artifact.Bytes) == 0 || len(artifact.Bytes) > MaxExternalClearanceBytes {
			return nil, fmt.Errorf("%w: item-clearance artifact is empty or too large", ErrExternalSolverAuthorization)
		}
		if !filepath.IsAbs(artifact.Path) || strings.HasPrefix(artifact.Path, `\\`) || strings.ContainsAny(artifact.Path, "\x00\r\n") {
			return nil, fmt.Errorf("%w: item-clearance path must be an absolute local path", ErrExternalSolverAuthorization)
		}
		diskBytes, err := readLocalAuthorizationArtifact(artifact.Path)
		if err != nil || !bytes.Equal(diskBytes, artifact.Bytes) {
			return nil, fmt.Errorf("%w: item-clearance bytes do not match the local artifact path", ErrExternalSolverAuthorization)
		}
		var record externalInputClearanceRecord
		if err := decodeExternalInputClearance(artifact.Bytes, &record); err != nil {
			return nil, fmt.Errorf("%w: decode item clearance: %v", ErrExternalSolverAuthorization, err)
		}
		if record.Schema != externalInputClearanceSchema || !authorizationReferenceMatchesPath(record.AuthorizationPath, authorization.OwnerAuthorizationPath) ||
			record.AuthorizationSHA256 != ownerDigest || record.AuthorizationSHA256 != authorization.OwnerAuthorizationSHA256 ||
			record.TrainingAuthorized {
			return nil, fmt.Errorf("%w: item clearance does not match the pinned owner authorization or allowed-use policy", ErrExternalSolverAuthorization)
		}
		if record.ProviderContextPath != "" {
			contextPath := record.ProviderContextPath
			if record.ContextSHA256 == "" || len(contextPath) > 1024 || !filepath.IsLocal(contextPath) ||
				filepath.ToSlash(filepath.Clean(contextPath)) != contextPath ||
				strings.ContainsAny(contextPath, "\\:\x00\r\n") ||
				!strings.HasPrefix(contextPath, "data/local/verification/user-problem-cases/") ||
				!strings.HasSuffix(contextPath, ".provider-context.json") {
				return nil, fmt.Errorf("%w: item clearance provider-context path is not a safe, context-bound local artifact", ErrExternalSolverAuthorization)
			}
		}
		if strings.TrimSpace(record.TheoremName) != record.TheoremName {
			return nil, fmt.Errorf("%w: clearance theorem name is not canonical", ErrExternalSolverAuthorization)
		}
		if _, ok := authorizedTheoremNames[record.TheoremName]; !ok {
			return nil, fmt.Errorf("%w: item clearance names a theorem outside the owner's explicit item list", ErrExternalSolverAuthorization)
		}
		allowedProblem, ok := allowedProblems[record.TheoremID]
		if !ok || allowedProblem.LeanStatement != record.Statement {
			return nil, fmt.Errorf("%w: item clearance statement differs from the explicitly allowed problem", ErrExternalSolverAuthorization)
		}
		if allowedProblem.ProviderContext == nil {
			if record.AuthorizedContent != externalStatementOnlyScope || record.ContextSHA256 != "" {
				return nil, fmt.Errorf("%w: item clearance authorizes context that is absent from the exact problem", ErrExternalSolverAuthorization)
			}
		} else {
			contextDigest := allowedProblem.ProviderContext.SHA256
			if record.AuthorizedContent != externalContextScope || record.ContextSHA256 != contextDigest || ownerAuthorization.contextSHA256s[record.TheoremID] != contextDigest {
				return nil, fmt.Errorf("%w: provider context is not authorized by the exact owner grant and item clearance", ErrExternalSolverAuthorization)
			}
		}
		if !hasAllProhibitedContent(record.ProhibitedContent) {
			return nil, fmt.Errorf("%w: item clearance omits a prohibited-input class", ErrExternalSolverAuthorization)
		}
		if record.Statement == "" || !validSHA256(record.StatementSHA256) || statementSHA256(record.Statement) != record.StatementSHA256 {
			return nil, fmt.Errorf("%w: item clearance statement digest is invalid", ErrExternalSolverAuthorization)
		}
		if err := state.ValidateIdentifier("cleared theorem ID", record.TheoremID); err != nil {
			return nil, fmt.Errorf("%w: %v", ErrExternalSolverAuthorization, err)
		}
		if err := state.ValidateIdentifier("provider-input clearance ID", record.ClearanceID); err != nil {
			return nil, fmt.Errorf("%w: %v", ErrExternalSolverAuthorization, err)
		}
		if _, duplicate := clearanceIDs[record.ClearanceID]; duplicate {
			return nil, fmt.Errorf("%w: duplicate item-clearance ID", ErrExternalSolverAuthorization)
		}
		clearanceIDs[record.ClearanceID] = struct{}{}
		expiresAt, err := time.Parse(time.RFC3339Nano, record.ExpiresAtUTC)
		if err != nil {
			return nil, fmt.Errorf("%w: item-clearance expiry is invalid", ErrExternalSolverAuthorization)
		}
		if config.Now != nil && !config.Now().Before(expiresAt) || config.Now == nil && !time.Now().Before(expiresAt) {
			return nil, fmt.Errorf("%w: item clearance has expired", ErrExternalSolverAuthorization)
		}
		if scope.expiresAt.IsZero() || expiresAt.Before(scope.expiresAt) {
			scope.expiresAt = expiresAt
		}
		if _, duplicate := scope.inputs[record.TheoremID]; duplicate {
			return nil, fmt.Errorf("%w: duplicate theorem clearance", ErrExternalSolverAuthorization)
		}
		artifactDigest := sha256Hex(artifact.Bytes)
		scope.inputs[record.TheoremID] = verifiedExternalInputClearance{
			statementSHA256: record.StatementSHA256,
			contextSHA256:   record.ContextSHA256,
			evidenceID:      record.ClearanceID,
			evidenceSHA256:  artifactDigest,
			path:            filepath.Clean(artifact.Path),
		}
	}
	if len(scope.inputs) == 0 {
		return nil, fmt.Errorf("%w: no item-level theorem clearances were supplied", ErrExternalSolverAuthorization)
	}
	return scope, nil
}

func validateExternalAuthorizationArtifact(authorization ExternalSolverAuthorization, now func() time.Time) (*verifiedExternalOwnerAuthorization, error) {
	if authorization.ProviderID == "" || authorization.ProtocolID == "" || authorization.ModelID == "" || authorization.EndpointURL == "" {
		return nil, errors.New("provider, protocol, model, and endpoint identities are required")
	}
	if !provider.IsProofCompletionProtocol(authorization.ProtocolID) {
		return nil, errors.New("provider protocol is not supported")
	}
	if err := state.ValidateIdentifier("provider ID", authorization.ProviderID); err != nil {
		return nil, fmt.Errorf("invalid provider ID: %w", err)
	}
	if !validExternalModelID(authorization.ModelID) {
		return nil, errors.New("model ID is not canonical")
	}
	if len(authorization.OwnerAuthorizationBytes) == 0 || len(authorization.OwnerAuthorizationBytes) > MaxExternalAuthorizationBytes {
		return nil, errors.New("owner authorization artifact is empty or too large")
	}
	if !filepath.IsAbs(authorization.OwnerAuthorizationPath) || strings.HasPrefix(authorization.OwnerAuthorizationPath, `\\`) || strings.ContainsAny(authorization.OwnerAuthorizationPath, "\x00\r\n") {
		return nil, errors.New("owner authorization path must be an absolute local path")
	}
	if !validSHA256(authorization.OwnerAuthorizationSHA256) || sha256Hex(authorization.OwnerAuthorizationBytes) != authorization.OwnerAuthorizationSHA256 {
		return nil, errors.New("owner authorization bytes do not match their SHA-256 pin")
	}
	diskBytes, err := readLocalAuthorizationArtifact(authorization.OwnerAuthorizationPath)
	if err != nil || !bytes.Equal(diskBytes, authorization.OwnerAuthorizationBytes) {
		return nil, errors.New("owner authorization bytes do not match the local artifact path")
	}
	if authorization.PerCallCostCeilingMicros <= 0 {
		return nil, errors.New("per-call cost ceiling must be positive")
	}
	if err := validateExternalEndpoint(authorization.ProtocolID, authorization.EndpointURL); err != nil {
		return nil, err
	}

	var theoremNames map[string]struct{}
	contextSHA256s := make(map[string]string)
	ownerBytes := bytes.TrimSpace(authorization.OwnerAuthorizationBytes)
	if len(ownerBytes) > 0 && ownerBytes[0] == '{' {
		var record externalOwnerAuthorizationRecord
		if err := decodeExternalOwnerAuthorization(ownerBytes, &record); err != nil {
			return nil, fmt.Errorf("decode structured owner authorization: %w", err)
		}
		if record.Schema != externalOwnerAuthorizationSchema {
			return nil, fmt.Errorf("owner authorization schema must be %q", externalOwnerAuthorizationSchema)
		}
		if err := state.ValidateIdentifier("owner authorization ID", record.AuthorizationID); err != nil {
			return nil, fmt.Errorf("invalid owner authorization ID: %w", err)
		}
		if record.ProtocolID != authorization.ProtocolID || record.ProviderID != authorization.ProviderID || record.EndpointURL != authorization.EndpointURL {
			return nil, errors.New("configured provider, protocol, or endpoint differs from the owner authorization")
		}
		if record.AuthorizedContent != "theorem statements and proof attempts only" && record.AuthorizedContent != externalOwnerContextScope || record.TrainingAuthorized == nil || *record.TrainingAuthorized {
			return nil, errors.New("owner authorization must limit use to theorem statements and proof attempts and forbid training")
		}
		if record.AuthorizedContent == externalOwnerContextScope && len(record.AuthorizedContexts) == 0 {
			return nil, errors.New("owner authorization context scope must list exact problem and context digests")
		}
		if record.AuthorizedContent == "theorem statements and proof attempts only" && len(record.AuthorizedContexts) != 0 {
			return nil, errors.New("owner authorization lists context digests outside its statement-only scope")
		}
		for _, context := range record.AuthorizedContexts {
			if err := state.ValidateIdentifier("context-authorized problem ID", context.ProblemID); err != nil || !validSHA256(context.ContextSHA256) {
				return nil, errors.New("owner authorization contains an invalid context problem ID or digest")
			}
			if _, duplicate := contextSHA256s[context.ProblemID]; duplicate {
				return nil, errors.New("owner authorization repeats a problem context entry")
			}
			contextSHA256s[context.ProblemID] = context.ContextSHA256
		}
		if !hasAllProhibitedContent(record.ProhibitedContent) {
			return nil, errors.New("owner authorization omits a prohibited-input class")
		}
		if record.PerCallCostCeilingMicros <= 0 || authorization.PerCallCostCeilingMicros > record.PerCallCostCeilingMicros {
			return nil, errors.New("configured per-call ceiling exceeds or omits the owner-authorized ceiling")
		}
		modelIDs := make(map[string]struct{}, len(record.ModelIDs))
		for _, modelID := range record.ModelIDs {
			if !validExternalModelID(modelID) {
				return nil, errors.New("owner authorization contains a non-canonical model ID")
			}
			if _, duplicate := modelIDs[modelID]; duplicate {
				return nil, errors.New("owner authorization repeats a model ID")
			}
			modelIDs[modelID] = struct{}{}
		}
		if _, ok := modelIDs[authorization.ModelID]; !ok {
			return nil, errors.New("configured model is not listed in the owner authorization")
		}
		theoremNames, err = uniqueTheoremNames(record.Items)
		if err != nil {
			return nil, fmt.Errorf("owner authorization theorem list: %w", err)
		}
		expiresAt, err := time.Parse(time.RFC3339Nano, record.ExpiresAtUTC)
		if err != nil {
			return nil, errors.New("owner authorization expiry is invalid")
		}
		currentTime := time.Now()
		if now != nil {
			currentTime = now()
		}
		if !currentTime.Before(expiresAt) {
			return nil, errors.New("owner authorization has expired")
		}
	} else {
		ownerText := string(authorization.OwnerAuthorizationBytes)
		if authorization.ProviderID != "nebius-token-factory" || authorization.ProtocolID != provider.ProtocolChatCompletions || !strings.HasPrefix(authorization.ModelID, "nvidia/") ||
			authorization.EndpointURL != "https://api.tokenfactory.nebius.com/v1/chat/completions" ||
			!strings.Contains(ownerText, "Nebius-hosted NVIDIA model via Token Factory") {
			return nil, errors.New("legacy owner authorization does not identify this exact Nebius Token Factory route")
		}
		for _, phrase := range []string{
			"theorem statements and proof attempts only",
			"no mined Zulip/Erdős content",
			"no corpus material",
			"no locked cases",
			"no training data",
		} {
			if !strings.Contains(ownerText, phrase) {
				return nil, fmt.Errorf("owner authorization is missing required scope text %q", phrase)
			}
		}
		theoremNames, err = parseAuthorizedTheoremNames(ownerText)
		if err != nil {
			return nil, fmt.Errorf("parse owner-authorized theorem list: %w", err)
		}
	}
	if len(authorization.ClearanceArtifacts) == 0 {
		return nil, errors.New("at least one item-level provider-input clearance is required")
	}
	if len(authorization.AllowedProblems) == 0 {
		return nil, errors.New("the exact owner-authorized problem set is required")
	}
	return &verifiedExternalOwnerAuthorization{theoremNames: theoremNames, contextSHA256s: contextSHA256s}, nil
}

func authorizationReferenceMatchesPath(reference, pinnedPath string) bool {
	if reference == pinnedPath {
		return true
	}
	if reference == "" || strings.ContainsAny(reference, "\\:\x00\r\n") {
		return false
	}
	relativePath := filepath.FromSlash(reference)
	if !filepath.IsLocal(relativePath) || filepath.ToSlash(filepath.Clean(relativePath)) != reference {
		return false
	}
	resolvedReference, err := filepath.EvalSymlinks(relativePath)
	if err != nil {
		return false
	}
	resolvedPinned, err := filepath.EvalSymlinks(filepath.Clean(pinnedPath))
	if err != nil {
		return false
	}
	referenceInfo, err := os.Stat(resolvedReference)
	if err != nil {
		return false
	}
	pinnedInfo, err := os.Stat(resolvedPinned)
	if err != nil {
		return false
	}
	return os.SameFile(referenceInfo, pinnedInfo)
}

func decodeExternalOwnerAuthorization(data []byte, destination *externalOwnerAuthorizationRecord) error {
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(destination); err != nil {
		return err
	}
	var trailing any
	if err := decoder.Decode(&trailing); !errors.Is(err, io.EOF) {
		if err != nil {
			return err
		}
		return errors.New("owner authorization contains multiple JSON values")
	}
	return nil
}

func uniqueTheoremNames(values []string) (map[string]struct{}, error) {
	if len(values) == 0 {
		return nil, errors.New("theorem list is empty")
	}
	names := make(map[string]struct{}, len(values))
	for _, value := range values {
		if value == "" || strings.TrimSpace(value) != value || strings.ContainsAny(value, "\x00\r\n") {
			return nil, errors.New("theorem list contains an empty or non-canonical name")
		}
		if _, duplicate := names[value]; duplicate {
			return nil, fmt.Errorf("theorem list repeats %q", value)
		}
		names[value] = struct{}{}
	}
	return names, nil
}

func validExternalModelID(value string) bool {
	return value != "" && strings.TrimSpace(value) == value && len(value) <= 256 && !strings.ContainsAny(value, "\x00\r\n\t ")
}

func parseAuthorizedTheoremNames(ownerText string) (map[string]struct{}, error) {
	const marker = "Items:"
	if strings.Count(ownerText, marker) != 1 {
		return nil, errors.New("expected exactly one Items: section")
	}
	sectionStart := strings.Index(ownerText, marker) + len(marker)
	section := ownerText[sectionStart:]
	lineEnd := strings.IndexAny(section, "\r\n")
	if lineEnd >= 0 {
		section = section[:lineEnd]
	}
	open := strings.IndexByte(section, '(')
	close := strings.IndexByte(section, ')')
	if open < 0 || close <= open+1 || strings.Contains(section[close+1:], "(") || strings.Contains(section[:open], ")") {
		return nil, errors.New("the Items: section must contain one parenthesized theorem-name list")
	}
	values := strings.Split(section[open+1:close], ",")
	names := make(map[string]struct{}, len(values))
	for _, value := range values {
		name := strings.TrimSpace(value)
		if name == "" {
			return nil, errors.New("the theorem-name list contains an empty name")
		}
		if _, duplicate := names[name]; duplicate {
			return nil, fmt.Errorf("the theorem-name list repeats %q", name)
		}
		names[name] = struct{}{}
	}
	if len(names) == 0 {
		return nil, errors.New("the theorem-name list is empty")
	}
	return names, nil
}

func validateExternalEndpoint(protocolID, endpoint string) error {
	parsed, err := url.Parse(endpoint)
	if err != nil || parsed.Scheme != "https" || parsed.User != nil || parsed.RawQuery != "" || parsed.ForceQuery || parsed.Fragment != "" || parsed.Opaque != "" {
		return errors.New("provider endpoint must use HTTPS without credentials, query, fragment, or opaque URL data")
	}
	host := parsed.Hostname()
	port := parsed.Port()
	if host == "" || parsed.Host != strings.ToLower(parsed.Host) || strings.HasSuffix(host, ".") || !strings.Contains(host, ".") ||
		net.ParseIP(host) != nil || host == "localhost" || strings.HasSuffix(host, ".local") || strings.HasSuffix(host, ".internal") ||
		(port != "" && port != "443") {
		return errors.New("provider endpoint must use a canonical public DNS host on the default HTTPS port")
	}
	if !validProviderEndpointPath(endpoint, protocolID) || parsed.RawPath != "" || parsed.String() != endpoint {
		return errors.New("provider endpoint path does not match the pinned protocol")
	}
	return nil
}

func validProviderEndpointPath(endpoint, protocolID string) bool {
	parsed, err := url.Parse(endpoint)
	if err != nil {
		return false
	}
	return validProviderPath(parsed.Path, protocolID)
}

func validProviderPath(path, protocolID string) bool {
	if !strings.HasPrefix(path, "/") || strings.ContainsAny(path, "\\\x00\r\n") || strings.Contains(path, "..") {
		return false
	}
	segments := strings.Split(strings.TrimPrefix(path, "/"), "/")
	switch protocolID {
	case provider.ProtocolChatCompletions:
		if len(segments) < 2 || segments[len(segments)-2] != "chat" || segments[len(segments)-1] != "completions" {
			return false
		}
	case provider.ProtocolAnthropicMessages:
		if len(segments) < 2 || segments[len(segments)-1] != "messages" {
			return false
		}
	case provider.ProtocolGeminiGenerateContent:
		if len(segments) < 3 || segments[len(segments)-2] != "models" || !strings.HasSuffix(segments[len(segments)-1], ":generateContent") ||
			!provider.IsGeminiModelID(strings.TrimSuffix(segments[len(segments)-1], ":generateContent")) {
			return false
		}
		segments[len(segments)-1] = strings.TrimSuffix(segments[len(segments)-1], ":generateContent")
	default:
		return false
	}
	for _, segment := range segments {
		if segment == "" || segment == "." || segment == ".." {
			return false
		}
		for _, character := range segment {
			if (character >= 'a' && character <= 'z') || (character >= 'A' && character <= 'Z') ||
				(character >= '0' && character <= '9') || character == '.' || character == '_' || character == '~' || character == '-' {
				continue
			}
			return false
		}
	}
	return true
}

func readLocalAuthorizationArtifact(path string) ([]byte, error) {
	resolved, err := filepath.EvalSymlinks(filepath.Clean(path))
	if err != nil {
		return nil, err
	}
	if strings.HasPrefix(resolved, `\\`) {
		return nil, errors.New("authorization artifacts must resolve to local storage")
	}
	return os.ReadFile(resolved)
}

func decodeExternalInputClearance(data []byte, destination *externalInputClearanceRecord) error {
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(destination); err != nil {
		return err
	}
	var trailing any
	if err := decoder.Decode(&trailing); !errors.Is(err, io.EOF) {
		if err != nil {
			return err
		}
		return errors.New("clearance artifact contains multiple JSON values")
	}
	return nil
}

func hasAllProhibitedContent(values []string) bool {
	wanted := map[string]struct{}{
		"mined Zulip or Erdős content": {},
		"corpus material":              {},
		"locked cases":                 {},
		"training data":                {},
	}
	for _, value := range values {
		delete(wanted, value)
	}
	return len(wanted) == 0
}

func statementSHA256(statement string) string {
	digest := sha256.Sum256([]byte(statement))
	return hex.EncodeToString(digest[:])
}

func validSHA256(value string) bool {
	if len(value) != sha256.Size*2 || strings.ToLower(value) != value {
		return false
	}
	_, err := hex.DecodeString(value)
	return err == nil
}

func sha256Hex(data []byte) string {
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:])
}
