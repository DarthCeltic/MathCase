// Package formalizer defines the model-neutral boundary for producing a Lean
// statement candidate from one pinned catalog item. It does not call a model,
// execute generated Lean, or assess statement fidelity.
package formalizer

import (
	"bytes"
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"strings"
	"unicode/utf8"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	RequestSchemaVersion           = "mathcase-nl-lean-request-v1"
	ResponseSchemaVersion          = "mathcase-nl-lean-response-v1"
	ResultSchemaVersion            = "mathcase-nl-lean-candidate-v2"
	CandidateRevisionSchemaVersion = "mathcase-nl-lean-candidate-revision-v1"
	formalizationPurpose           = "formalization"
	maxCandidateBytes              = 64 << 10
	statusPropositionPass          = "PROPOSITION_ELABORATED"
	statusPropositionFail          = "PROPOSITION_REJECTED"
	statusCheckerError             = "CHECK_EXECUTION_ERROR"
	statusGenerationRejected       = "GENERATION_REJECTED"
	statusGenerationInfraFailure   = "GENERATION_INFRASTRUCTURE_FAILURE"
	formalizationFailureClass      = "FORMALIZATION_FAILURE"
	infrastructureFailureClass     = "INFRASTRUCTURE_FAILURE"
)

// Request binds one model-agnostic generation request to the exact M0 source
// statement and the existing pre-run clearance and flywheel-label identities.
// The caller remains responsible for reopening and validating those evidence
// records before it constructs this value.
type Request struct {
	SchemaVersion    string                        `json:"schema_version"`
	CandidateID      string                        `json:"candidate_id"`
	ProblemID        string                        `json:"problem_id"`
	Source           domain.V3SourceStatementPin   `json:"source"`
	InputClearance   domain.AgentRunInputClearance `json:"input_clearance"`
	LabelRecordID    string                        `json:"label_record_id"`
	PlannedReceiptID string                        `json:"planned_receipt_id"`
}

// GeneratedCandidate is only the generator's proposed Lean proposition. The
// generator must return the actual agent-run receipt separately; callers must
// not synthesize one from these fields.
type GeneratedCandidate struct {
	SchemaVersion         string `json:"schema_version"`
	CandidateID           string `json:"candidate_id"`
	ProblemID             string `json:"problem_id"`
	CatalogSnapshotSHA256 string `json:"catalog_snapshot_sha256"`
	SourceStatementSHA256 string `json:"source_statement_sha256"`
	DeclarationName       string `json:"declaration_name"`
	LeanStatement         string `json:"lean_statement"`
}

// CandidateRevision gives a stable candidate lineage ID a separate
// content-addressed revision. A new Lean statement or source pin creates a
// distinct revision without overwriting an earlier candidate.
type CandidateRevision struct {
	SchemaVersion string `json:"schema_version"`
	CandidateID   string `json:"candidate_id"`
	SHA256        string `json:"sha256"`
}

// Generation contains the unmodified structured model response and the
// receipt emitted by the real generator surface. The adapter must capture
// model identity at launch and enforce the supplied clearance/label plan
// before sending input.
type Generation struct {
	RawResponse                string                            `json:"raw_response"`
	ProviderID                 string                            `json:"provider_id,omitempty"`
	ProviderProtocolID         string                            `json:"provider_protocol_id,omitempty"`
	ProviderEndpoint           string                            `json:"provider_endpoint,omitempty"`
	ProviderReturnedModel      string                            `json:"provider_returned_model,omitempty"`
	ProviderModelIdentityKind  string                            `json:"provider_model_identity_kind,omitempty"`
	ProviderRequestBody        string                            `json:"provider_request_body,omitempty"`
	ProviderRequestBodySHA256  string                            `json:"provider_request_body_sha256,omitempty"`
	ProviderResponseBody       string                            `json:"provider_response_body,omitempty"`
	ProviderResponseBodySHA256 string                            `json:"provider_response_body_sha256,omitempty"`
	ProviderResponseIncomplete bool                              `json:"provider_response_incomplete,omitempty"`
	RouteAuthorization         ProviderRouteAuthorizationReceipt `json:"route_authorization,omitempty"`
	Receipt                    domain.AgentRunReceipt            `json:"receipt"`
}

// CandidateGenerator is implemented by whichever model surface MathCase uses.
// Keeping this interface small lets a hosted provider, a local model, or
// another approved surface be adapted without making the V3 evaluator provider-aware.
type CandidateGenerator interface {
	GenerateCandidate(context.Context, Request) (Generation, error)
}

// PropositionChecker is implemented by solver.LeanVerifier. The checker only
// establishes that the generated expression elaborates as Prop in its pinned
// isolated Lean project; it does not establish truth or V3 fidelity.
type PropositionChecker interface {
	CheckProposition(context.Context, domain.MathProblem) (solver.LeanStatementCheckReceipt, error)
}

// ProviderInputClearanceVerifier reopens and validates the exact item-level
// clearance against the pinned M0 source before any generator receives the
// statement. Implementations must fail closed when evidence is missing.
type ProviderInputClearanceVerifier interface {
	VerifyProviderInput(context.Context, Request) error
}

// Frontend validates request and run bindings, obtains one candidate from an
// injected model adapter, and sends its proposition through the existing Lean
// statement checker. It performs no model/API call itself.
type Frontend struct {
	Generator         CandidateGenerator
	Checker           PropositionChecker
	ClearanceVerifier ProviderInputClearanceVerifier
}

// Result is a candidate-only record. A passing proposition check is not a
// proof and does not fill any V3 review, back-translation, or boundary-probe
// fields.
type Result struct {
	SchemaVersion              string                            `json:"schema_version"`
	Status                     string                            `json:"status"`
	FailureClass               string                            `json:"failure_class,omitempty"`
	FailureReason              string                            `json:"failure_reason,omitempty"`
	Request                    Request                           `json:"request"`
	Candidate                  GeneratedCandidate                `json:"candidate"`
	CandidateRevision          CandidateRevision                 `json:"candidate_revision"`
	GenerationResponse         string                            `json:"generation_response"`
	GenerationResponseSHA256   string                            `json:"generation_response_sha256"`
	ProviderID                 string                            `json:"provider_id,omitempty"`
	ProviderProtocolID         string                            `json:"provider_protocol_id,omitempty"`
	ProviderEndpoint           string                            `json:"provider_endpoint,omitempty"`
	ProviderReturnedModel      string                            `json:"provider_returned_model,omitempty"`
	ProviderModelIdentityKind  string                            `json:"provider_model_identity_kind,omitempty"`
	ProviderRequestBody        string                            `json:"provider_request_body,omitempty"`
	ProviderRequestBodySHA256  string                            `json:"provider_request_body_sha256,omitempty"`
	ProviderResponseBody       string                            `json:"provider_response_body,omitempty"`
	ProviderResponseBodySHA256 string                            `json:"provider_response_body_sha256,omitempty"`
	ProviderResponseIncomplete bool                              `json:"provider_response_incomplete,omitempty"`
	RouteAuthorization         ProviderRouteAuthorizationReceipt `json:"route_authorization,omitempty"`
	RunReceipt                 domain.AgentRunReceipt            `json:"run_receipt"`
	StatementCheck             *solver.LeanStatementCheckReceipt `json:"statement_check,omitempty"`
}

// V3ReviewSeed is an explicit handoff input for a later V3 review. It contains
// no reviewer disposition and cannot be used as a passing V3 record.
type V3ReviewSeed struct {
	ProblemID                    string                      `json:"problem_id"`
	Source                       domain.V3SourceStatementPin `json:"source"`
	LeanCandidate                GeneratedCandidate          `json:"lean_candidate"`
	CandidateRevision            CandidateRevision           `json:"candidate_revision"`
	GenerationReceiptID          string                      `json:"generation_receipt_id"`
	StatementCheckEvidenceID     string                      `json:"statement_check_evidence_id"`
	RequiredBackTranslationRole  string                      `json:"required_back_translation_role"`
	RequiredBoundaryProbes       []string                    `json:"required_boundary_probes"`
	BackTranslationIsGroundTruth bool                        `json:"back_translation_is_ground_truth"`
}

// GenerateCandidate validates the request before invoking the injected
// adapter. Once generated, it validates the returned run receipt and checks
// the proposition in the existing isolated Lean boundary.
func (f Frontend) GenerateCandidate(ctx context.Context, request Request) (Result, error) {
	if ctx == nil {
		return Result{}, errors.New("formalizer: context is required")
	}
	if err := request.Validate(); err != nil {
		return Result{}, err
	}
	if f.Generator == nil {
		return Result{}, errors.New("formalizer: candidate generator is required")
	}
	if f.Checker == nil {
		return Result{}, errors.New("formalizer: isolated Lean proposition checker is required")
	}
	if f.ClearanceVerifier == nil {
		return Result{}, errors.New("formalizer: provider-input clearance verifier is required before dispatch")
	}
	if err := f.ClearanceVerifier.VerifyProviderInput(ctx, request); err != nil {
		return Result{}, fmt.Errorf("formalizer: provider-input clearance preflight: %w", err)
	}

	generation, err := f.Generator.GenerateCandidate(ctx, request)
	if err != nil && generation.Receipt.ReceiptID == "" {
		// A route/scope refusal before a provider call is not a run receipt and
		// must not be persisted as though a provider attempt took place.
		return Result{}, fmt.Errorf("formalizer: candidate generator refused before dispatch: %w", err)
	}
	result := Result{
		SchemaVersion: ResultSchemaVersion,
		Status:        statusGenerationInfraFailure,
		FailureClass:  infrastructureFailureClass,
		Request:       request,
		RunReceipt:    generation.Receipt,
	}
	result.ProviderRequestBody = generation.ProviderRequestBody
	result.ProviderID = generation.ProviderID
	result.ProviderProtocolID = generation.ProviderProtocolID
	result.ProviderEndpoint = generation.ProviderEndpoint
	result.ProviderReturnedModel = generation.ProviderReturnedModel
	result.ProviderModelIdentityKind = generation.ProviderModelIdentityKind
	result.ProviderRequestBodySHA256 = generation.ProviderRequestBodySHA256
	result.ProviderResponseBody = generation.ProviderResponseBody
	result.ProviderResponseBodySHA256 = generation.ProviderResponseBodySHA256
	result.ProviderResponseIncomplete = generation.ProviderResponseIncomplete
	result.RouteAuthorization = generation.RouteAuthorization
	if generation.RawResponse != "" {
		result.GenerationResponse = generation.RawResponse
		result.GenerationResponseSHA256 = digestText(generation.RawResponse)
	}
	if err := validateProviderTransportEvidence(generation); err != nil {
		result.FailureReason = err.Error()
		return result, err
	}
	if err := validateProviderEvidence(request, generation.RawResponse, generation.ProviderID, generation.ProviderProtocolID, generation.ProviderEndpoint, generation.ProviderReturnedModel, generation.ProviderModelIdentityKind, generation.ProviderRequestBody, generation.ProviderResponseBody, generation.ProviderResponseIncomplete, generation.Receipt); err != nil {
		result.FailureReason = err.Error()
		return result, err
	}
	if generation.ProviderResponseIncomplete {
		result.FailureReason = "provider response was not completely captured"
		return result, errors.New("formalizer: provider response was not completely captured")
	}
	if err != nil {
		result.FailureReason = "candidate generator returned an error; raw error text is omitted from the durable artifact"
		return result, fmt.Errorf("formalizer: generate candidate: %w", err)
	}
	candidate, err := parseCandidateResponse(generation.RawResponse)
	if err != nil {
		result.Status = statusGenerationRejected
		result.FailureClass = formalizationFailureClass
		result.FailureReason = err.Error()
		return result, err
	}
	if err := validateGeneration(request, candidate, generation.Receipt); err != nil {
		result.Status = statusGenerationRejected
		result.FailureClass = infrastructureFailureClass
		result.FailureReason = err.Error()
		return result, err
	}
	candidateRevision, err := newCandidateRevision(candidate)
	if err != nil {
		result.Status = statusGenerationRejected
		result.FailureClass = infrastructureFailureClass
		result.FailureReason = err.Error()
		return result, fmt.Errorf("formalizer: create content-addressed candidate revision: %w", err)
	}

	result.Status = statusCheckerError
	result.FailureClass = infrastructureFailureClass
	result.Candidate = candidate
	result.CandidateRevision = candidateRevision
	problem := domain.MathProblem{
		ID:            request.ProblemID,
		Statement:     request.Source.Statement,
		LeanStatement: candidate.LeanStatement,
	}
	check, checkErr := f.Checker.CheckProposition(ctx, problem)
	if check.EvidenceID != "" {
		result.StatementCheck = &check
	}
	if err := validateStatementCheck(request, candidate, check); err != nil {
		result.FailureReason = err.Error()
		if checkErr != nil {
			return result, errors.Join(checkErr, err)
		}
		return result, err
	}
	if checkErr != nil {
		result.FailureReason = checkErr.Error()
		return result, fmt.Errorf("formalizer: check generated proposition: %w", checkErr)
	}
	if check.TypecheckPassed && check.Status == "PASSED" {
		result.Status = statusPropositionPass
		result.FailureClass = ""
		result.FailureReason = ""
	} else if check.Status == "OUTPUT_LIMIT" {
		result.Status = statusCheckerError
		result.FailureClass = infrastructureFailureClass
		result.FailureReason = "Lean statement-check output exceeded the configured capture limit"
	} else {
		result.Status = statusPropositionFail
		result.FailureClass = formalizationFailureClass
		result.FailureReason = "generated Lean proposition did not elaborate as Prop"
	}
	return result, nil
}

// Validate confirms that the request is bound to one exact source item and
// that input-clearance and label references are already allocated.
func (r Request) Validate() error {
	if r.SchemaVersion != RequestSchemaVersion {
		return errors.New("formalizer: unsupported request schema")
	}
	for name, value := range map[string]string{
		"candidate ID":           r.CandidateID,
		"problem ID":             r.ProblemID,
		"source evidence ID":     r.Source.EvidenceID,
		"clearance statement ID": r.InputClearance.StatementID,
		"clearance evidence ID":  r.InputClearance.EvidenceID,
		"label record ID":        r.LabelRecordID,
		"planned receipt ID":     r.PlannedReceiptID,
	} {
		if err := state.ValidateIdentifier(name, value); err != nil {
			return err
		}
	}
	if !validSHA256(r.InputClearance.EvidenceSHA256) {
		return errors.New("formalizer: input clearance must pin the exact evidence artifact SHA-256")
	}
	if err := validateSourcePin(r.Source); err != nil {
		return err
	}
	return nil
}

// NewRequest creates a request using the established M0/V3 source pin plus
// preallocated clearance and flywheel identities. It does not verify the
// underlying evidence files; the caller must do that before use.
func NewRequest(candidateID, problemID string, source domain.V3SourceStatementPin, clearance domain.AgentRunInputClearance, labelRecordID, plannedReceiptID string) Request {
	return Request{
		SchemaVersion:    RequestSchemaVersion,
		CandidateID:      candidateID,
		ProblemID:        problemID,
		Source:           source,
		InputClearance:   clearance,
		LabelRecordID:    labelRecordID,
		PlannedReceiptID: plannedReceiptID,
	}
}

// V3Seed exposes the exact source/candidate pair for the existing V3 dual
// check, while explicitly requiring independent review artifacts. The
// back-translation remains a witness, not ground truth.
func (r Result) V3Seed() (V3ReviewSeed, error) {
	if r.SchemaVersion != ResultSchemaVersion || r.Status != statusPropositionPass {
		return V3ReviewSeed{}, errors.New("formalizer: only a proposition-elaborated candidate can be handed to V3")
	}
	if r.ProviderProtocolID != "" && !providerRouteReceiptPresent(r.RouteAuthorization) {
		return V3ReviewSeed{}, errors.New("formalizer: protocol-bound candidate lacks route-authorization receipt metadata; reopen it through the durable artifact reader")
	}
	if digestText(r.GenerationResponse) != r.GenerationResponseSHA256 {
		return V3ReviewSeed{}, errors.New("formalizer: exact generator response bytes no longer match their digest")
	}
	parsed, err := parseCandidateResponse(r.GenerationResponse)
	if err != nil {
		return V3ReviewSeed{}, err
	}
	if parsed != r.Candidate {
		return V3ReviewSeed{}, errors.New("formalizer: candidate fields do not match the exact generator response")
	}
	expectedRevision, err := newCandidateRevision(r.Candidate)
	if err != nil || r.CandidateRevision != expectedRevision {
		return V3ReviewSeed{}, errors.New("formalizer: candidate content does not match its versioned revision identity")
	}
	if err := r.Request.Validate(); err != nil {
		return V3ReviewSeed{}, errors.New("formalizer: a complete pinned source is required for the V3 handoff")
	}
	if err := validateGeneration(r.Request, r.Candidate, r.RunReceipt); err != nil {
		return V3ReviewSeed{}, errors.New("formalizer: generator evidence is not bound for the V3 handoff")
	}
	if r.StatementCheck == nil || r.StatementCheck.EvidenceID == "" || r.RunReceipt.ReceiptID == "" {
		return V3ReviewSeed{}, errors.New("formalizer: generation and proposition-check receipts are required for a V3 handoff")
	}
	if err := r.RunReceipt.ValidateForFutureRun(); err != nil {
		return V3ReviewSeed{}, errors.New("formalizer: generator run receipt is incomplete for the V3 handoff")
	}
	if err := validateStatementCheck(r.Request, r.Candidate, *r.StatementCheck); err != nil || !r.StatementCheck.TypecheckPassed || r.StatementCheck.Status != "PASSED" {
		return V3ReviewSeed{}, errors.New("formalizer: proposition-check evidence does not support a V3 candidate handoff")
	}
	return V3ReviewSeed{
		ProblemID:                    r.Candidate.ProblemID,
		Source:                       r.Request.Source,
		LeanCandidate:                r.Candidate,
		CandidateRevision:            r.CandidateRevision,
		GenerationReceiptID:          r.RunReceipt.ReceiptID,
		StatementCheckEvidenceID:     r.StatementCheck.EvidenceID,
		RequiredBackTranslationRole:  domain.V3BackTranslationWitnessRole,
		RequiredBoundaryProbes:       []string{"n=0", "n=1", "empty-object-or-NOT_APPLICABLE"},
		BackTranslationIsGroundTruth: false,
	}, nil
}

func providerRouteReceiptPresent(receipt ProviderRouteAuthorizationReceipt) bool {
	return receipt.AuthorizationID != "" && receipt.Path != "" && receipt.AccountProfile != "" && validSHA256(receipt.SHA256) &&
		receipt.CallCeilingMicros > 0 && receipt.MaxOutputTokens > 0 &&
		receipt.InputPriceMicrosPerMillionTokens >= 0 && receipt.OutputPriceMicrosPerMillionTokens >= 0
}

func newCandidateRevision(candidate GeneratedCandidate) (CandidateRevision, error) {
	if candidate.SchemaVersion != ResponseSchemaVersion || candidate.CandidateID == "" {
		return CandidateRevision{}, errors.New("formalizer: candidate revision requires a supported candidate schema and identity")
	}
	canonical, err := json.Marshal(candidate)
	if err != nil {
		return CandidateRevision{}, fmt.Errorf("encode candidate revision: %w", err)
	}
	hasher := sha256.New()
	_, _ = io.WriteString(hasher, CandidateRevisionSchemaVersion+"\x00")
	_, _ = hasher.Write(canonical)
	return CandidateRevision{SchemaVersion: CandidateRevisionSchemaVersion, CandidateID: candidate.CandidateID, SHA256: hex.EncodeToString(hasher.Sum(nil))}, nil
}

func validateGeneration(request Request, candidate GeneratedCandidate, receipt domain.AgentRunReceipt) error {
	if candidate.SchemaVersion != ResponseSchemaVersion {
		return errors.New("formalizer: generated candidate has an unsupported response schema")
	}
	if candidate.CandidateID != request.CandidateID || candidate.ProblemID != request.ProblemID {
		return errors.New("formalizer: generated candidate identity does not match the request")
	}
	if candidate.CatalogSnapshotSHA256 != request.Source.CatalogSnapshotSHA256 || candidate.SourceStatementSHA256 != digestText(request.Source.Statement) {
		return errors.New("formalizer: generated candidate is not bound to the exact pinned source statement")
	}
	if err := state.ValidateIdentifier("Lean declaration name", candidate.DeclarationName); err != nil {
		return err
	}
	if strings.TrimSpace(candidate.LeanStatement) == "" || len(candidate.LeanStatement) > maxCandidateBytes || strings.ContainsAny(candidate.LeanStatement, "\x00\r\n") {
		return errors.New("formalizer: Lean proposition must be non-empty, bounded, and single-line")
	}
	return validateGenerationReceipt(request, receipt)
}

func validateGenerationReceipt(request Request, receipt domain.AgentRunReceipt) error {
	if err := receipt.ValidateForFutureRun(); err != nil {
		return fmt.Errorf("formalizer: generator returned an invalid future-run receipt: %w", err)
	}
	if receipt.ReceiptID != request.PlannedReceiptID || receipt.Target.ProblemID != request.ProblemID ||
		receipt.Target.StatementID != request.InputClearance.StatementID ||
		receipt.Target.CatalogSnapshotSHA256 != request.Source.CatalogSnapshotSHA256 || receipt.Purpose != formalizationPurpose {
		return errors.New("formalizer: generator receipt is misbound to the preallocated problem, statement, purpose, or receipt ID")
	}
	if receipt.Target.StatementSHA256 != digestText(request.Source.Statement) {
		return errors.New("formalizer: generator receipt does not bind the exact target statement SHA-256")
	}
	if len(receipt.InputClearance) != 1 || receipt.InputClearance[0] != request.InputClearance {
		return errors.New("formalizer: generator receipt dropped the exact input clearance or label allocation")
	}
	if len(receipt.LabelRecordIDs) != 1 || receipt.LabelRecordIDs[0] != request.LabelRecordID {
		return errors.New("formalizer: generator receipt dropped the exact input clearance or label allocation")
	}
	if receipt.Surface == nebiusSurface && receipt.CostRecordID != nebiusCostRecordID(request.PlannedReceiptID) {
		return errors.New("formalizer: Nebius receipt does not link the cost-ledger record for this planned call")
	}
	return nil
}

func validateProviderTransportEvidence(generation Generation) error {
	if len(generation.ProviderRequestBody) > maxFormalizerProviderRequestBodyBytes {
		return errors.New("formalizer: provider request body exceeds the durable capture limit")
	}
	if len(generation.ProviderResponseBody) > maxFormalizerRawResponseBytes {
		return errors.New("formalizer: provider response body exceeds the durable capture limit")
	}
	if generation.ProviderRequestBody == "" {
		if generation.ProviderRequestBodySHA256 != "" {
			return errors.New("formalizer: empty provider request body carries a non-empty digest")
		}
	} else if digestText(generation.ProviderRequestBody) != generation.ProviderRequestBodySHA256 {
		return errors.New("formalizer: provider request body does not match its SHA-256")
	}
	if generation.ProviderResponseBody == "" {
		if generation.ProviderResponseBodySHA256 != "" {
			return errors.New("formalizer: empty provider response body has inconsistent capture metadata")
		}
	} else if digestText(generation.ProviderResponseBody) != generation.ProviderResponseBodySHA256 {
		return errors.New("formalizer: provider response body does not match its SHA-256")
	}
	return validateProviderRouteEvidence(generation)
}

func parseCandidateResponse(raw string) (GeneratedCandidate, error) {
	if strings.TrimSpace(raw) == "" || len(raw) > maxCandidateBytes || !utf8.ValidString(raw) {
		return GeneratedCandidate{}, errors.New("formalizer: exact raw generator response is required and must be bounded")
	}
	decoder := json.NewDecoder(bytes.NewBufferString(raw))
	decoder.DisallowUnknownFields()
	var candidate GeneratedCandidate
	if err := decoder.Decode(&candidate); err != nil {
		return GeneratedCandidate{}, fmt.Errorf("formalizer: decode structured generator response: %w", err)
	}
	var trailing any
	if err := decoder.Decode(&trailing); !errors.Is(err, io.EOF) {
		if err != nil {
			return GeneratedCandidate{}, fmt.Errorf("formalizer: decode trailing generator response: %w", err)
		}
		return GeneratedCandidate{}, errors.New("formalizer: generator response contains multiple JSON values")
	}
	return candidate, nil
}

func validateSourcePin(source domain.V3SourceStatementPin) error {
	for name, value := range map[string]string{
		"source evidence ID": source.EvidenceID,
	} {
		if err := state.ValidateIdentifier(name, value); err != nil {
			return err
		}
	}
	if strings.TrimSpace(source.URL) == "" || strings.ContainsAny(source.URL, "\x00\r\n") ||
		strings.TrimSpace(source.ItemLocator) == "" || strings.ContainsAny(source.ItemLocator, "\x00\r\n") ||
		strings.TrimSpace(source.Revision) == "" || strings.ContainsAny(source.Revision, "\x00\r\n") {
		return errors.New("formalizer: exact source URL, item locator, and revision are required")
	}
	if strings.TrimSpace(source.Statement) == "" || strings.ContainsRune(source.Statement, '\x00') {
		return errors.New("formalizer: exact pinned source statement is required")
	}
	if !validSHA256(source.RawItemSHA256) || !validSHA256(source.CatalogSnapshotSHA256) {
		return errors.New("formalizer: source item and catalog snapshot SHA-256 values are required")
	}
	return nil
}

func validateStatementCheck(request Request, candidate GeneratedCandidate, check solver.LeanStatementCheckReceipt) error {
	if check.SchemaVersion != "mathcase-lean-statement-check-v3" || check.EvidenceID == "" {
		return errors.New("formalizer: Lean checker did not return a versioned execution receipt")
	}
	statementDigest, err := domain.ProblemStatementDigest(request.ProblemID, request.Source.Statement, candidate.LeanStatement)
	if err != nil {
		return fmt.Errorf("formalizer: compute candidate statement binding: %w", err)
	}
	if check.ProblemID != request.ProblemID || check.ProblemStatementSHA256 != statementDigest || check.PropositionSHA256 != digestText(candidate.LeanStatement) {
		return errors.New("formalizer: Lean check receipt does not bind to the exact generated candidate")
	}
	if err := check.ValidateCandidateArtifacts(domain.MathProblem{
		ID:            request.ProblemID,
		Statement:     request.Source.Statement,
		LeanStatement: candidate.LeanStatement,
	}); err != nil {
		return fmt.Errorf("formalizer: Lean checker artifact snapshot is invalid: %w", err)
	}
	return nil
}

func validSHA256(value string) bool {
	if len(value) != sha256.Size*2 || strings.ToLower(value) != value {
		return false
	}
	decoded, err := hex.DecodeString(value)
	return err == nil && len(decoded) == sha256.Size
}

func digestText(value string) string {
	digest := sha256.Sum256([]byte(value))
	return hex.EncodeToString(digest[:])
}

func containsClearance(values []domain.AgentRunInputClearance, expected domain.AgentRunInputClearance) bool {
	for _, value := range values {
		if value == expected {
			return true
		}
	}
	return false
}

func containsString(values []string, expected string) bool {
	for _, value := range values {
		if value == expected {
			return true
		}
	}
	return false
}
