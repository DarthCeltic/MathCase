package formalizer

import (
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/fsutil"
	"github.com/DarthCeltic/MathCase/internal/provider"
)

const (
	FormalizerArtifactSchemaVersion       = "mathcase-formalizer-artifact-v1"
	maxFormalizerArtifactBytes            = 320 << 20
	maxFormalizerSnapshotBytes            = 192 << 20
	maxFormalizerSourceBytes              = 16 << 20
	maxFormalizerClearanceBytes           = 8 << 20
	maxFormalizerProviderRequestBodyBytes = 1 << 20
	maxFormalizerRawResponseBytes         = 4 << 20
	maxFormalizerFailureReasonBytes       = 4 << 10
)

// DurableArtifact preserves the exact M0 snapshot, target source bytes,
// provider-input clearance register, provider request and response bodies,
// model output, run receipt, and Lean statement-check receipt that make one
// formalizer result auditable. The bytes are embedded so a later reader does
// not depend on mutable source paths or the current catalog file.
type DurableArtifact struct {
	SchemaVersion                   string `json:"schema_version"`
	Result                          Result `json:"result"`
	CatalogSnapshotBytes            []byte `json:"catalog_snapshot_bytes"`
	CatalogSnapshotFileSHA256       string `json:"catalog_snapshot_file_sha256"`
	SourceItemBytes                 []byte `json:"source_item_bytes"`
	ClearanceRegisterBytes          []byte `json:"clearance_register_bytes"`
	ProviderRouteAuthorizationBytes []byte `json:"provider_route_authorization_bytes,omitempty"`
}

// NewDurableArtifact captures the caller's exact snapshot bytes alongside
// the semantic M0 digest already pinned by the formalizer request.
func NewDurableArtifact(result Result, catalogSnapshotBytes, sourceItemBytes, clearanceRegisterBytes []byte, routeAuthorizationBytes ...[]byte) DurableArtifact {
	artifact := DurableArtifact{
		SchemaVersion:             FormalizerArtifactSchemaVersion,
		Result:                    result,
		CatalogSnapshotBytes:      append([]byte(nil), catalogSnapshotBytes...),
		CatalogSnapshotFileSHA256: digestBytes(catalogSnapshotBytes),
		SourceItemBytes:           append([]byte(nil), sourceItemBytes...),
		ClearanceRegisterBytes:    append([]byte(nil), clearanceRegisterBytes...),
	}
	if len(routeAuthorizationBytes) > 0 {
		artifact.ProviderRouteAuthorizationBytes = append([]byte(nil), routeAuthorizationBytes[0]...)
	}
	return artifact
}

// ArtifactReceipt identifies one immutable, content-addressed formalizer
// artifact. RelativePath is informational and is never accepted as an input
// path by the reader.
type ArtifactReceipt struct {
	ArtifactSHA256          string `json:"artifact_sha256"`
	CandidateID             string `json:"candidate_id"`
	CandidateRevisionSHA256 string `json:"candidate_revision_sha256"`
	GenerationReceiptID     string `json:"generation_receipt_id"`
	CatalogSnapshotSHA256   string `json:"catalog_snapshot_sha256"`
	RelativePath            string `json:"relative_path"`
	Size                    int64  `json:"size"`
}

// ArtifactEvidenceInputs are the exact immutable files needed to reopen an
// M0-bound formalization result after the generating process has exited.
type ArtifactEvidenceInputs struct {
	CatalogSnapshotBytes            []byte
	SourceItemBytes                 []byte
	ClearanceRegisterBytes          []byte
	ProviderRouteAuthorizationBytes []byte
}

// V3CandidateHandoff is returned only after the durable artifact reader has
// reopened and revalidated every embedded byte source. It is candidate input
// for later review, never a V3 pass.
type V3CandidateHandoff struct {
	Artifact      ArtifactReceipt
	Result        Result
	Snapshot      catalog.Snapshot
	RawSourceItem []byte
	Seed          V3ReviewSeed
}

type DossierFormalizerCandidateAuditEntry struct {
	ArtifactSHA256           string `json:"artifact_sha256"`
	CandidateID              string `json:"candidate_id"`
	CandidateRevisionSHA256  string `json:"candidate_revision_sha256"`
	GenerationReceiptID      string `json:"generation_receipt_id"`
	StatementCheckEvidenceID string `json:"statement_check_evidence_id"`
}

type DossierFormalizerCandidateAuditReport struct {
	Status         string                                 `json:"status"`
	CandidateCount int                                    `json:"candidate_count"`
	Candidates     []DossierFormalizerCandidateAuditEntry `json:"candidates,omitempty"`
}

// Assess runs the existing candidate-only V3 assessor over the reopened
// artifact. The assessor cannot pass V3; independent review and executed
// boundary probes remain separate evidence requirements.
func (h V3CandidateHandoff) Assess(review domain.V3StatementFidelity, atTime time.Time) (CandidateV3Assessment, error) {
	return AssessV3Candidate(h.Snapshot, h.Result, review, h.RawSourceItem, atTime)
}

// ArtifactStore appends immutable formalizer artifacts under a private root.
type ArtifactStore struct {
	root string
}

// NewArtifactStore creates or opens a private root owned by the application
// composition. Callers identify artifacts by digest rather than by path.
func NewArtifactStore(root string) (*ArtifactStore, error) {
	if strings.TrimSpace(root) == "" {
		return nil, errors.New("formalizer: artifact store root is required")
	}
	if err := os.MkdirAll(root, 0o700); err != nil {
		return nil, fmt.Errorf("formalizer: create artifact store root: %w", err)
	}
	return OpenArtifactStore(root)
}

// OpenArtifactStore opens an existing artifact store without creating or
// otherwise modifying its root. Read-only M8 audits use this entry point.
func OpenArtifactStore(root string) (*ArtifactStore, error) {
	if strings.TrimSpace(root) == "" {
		return nil, errors.New("formalizer: artifact store root is required")
	}
	info, err := os.Lstat(root)
	if err != nil {
		return nil, fmt.Errorf("formalizer: inspect artifact store root: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return nil, errors.New("formalizer: artifact store root is not a regular directory")
	}
	canonical, err := fsutil.CanonicalPath(root)
	if err != nil {
		return nil, fmt.Errorf("formalizer: resolve artifact store root: %w", err)
	}
	return &ArtifactStore{root: canonical}, nil
}

// Validate reopens the embedded evidence chain. It checks byte integrity and
// typed bindings, but does not authenticate the clearance issuer or claim that
// the embedded synthetic-looking receipts came from a real provider/process.
func (a DurableArtifact) Validate(ctx context.Context) error {
	if ctx == nil {
		return errors.New("formalizer: artifact validation context is required")
	}
	if err := ctx.Err(); err != nil {
		return err
	}
	if a.SchemaVersion != FormalizerArtifactSchemaVersion {
		return errors.New("formalizer: unsupported durable artifact schema")
	}
	if len(a.CatalogSnapshotBytes) == 0 || len(a.CatalogSnapshotBytes) > maxFormalizerSnapshotBytes {
		return errors.New("formalizer: embedded M0 snapshot is empty or exceeds its size limit")
	}
	if !validSHA256(a.CatalogSnapshotFileSHA256) || digestBytes(a.CatalogSnapshotBytes) != a.CatalogSnapshotFileSHA256 {
		return errors.New("formalizer: exact embedded M0 snapshot bytes do not match their file digest")
	}
	if len(a.SourceItemBytes) == 0 || len(a.SourceItemBytes) > maxFormalizerSourceBytes {
		return errors.New("formalizer: embedded M0 source item is empty or exceeds its size limit")
	}
	if len(a.ClearanceRegisterBytes) == 0 || len(a.ClearanceRegisterBytes) > maxFormalizerClearanceBytes {
		return errors.New("formalizer: embedded clearance register is empty or exceeds its size limit")
	}

	var snapshot catalog.Snapshot
	if err := decodeStrictFormalizerJSON(a.CatalogSnapshotBytes, &snapshot); err != nil {
		return fmt.Errorf("formalizer: reopen exact M0 snapshot: %w", err)
	}
	if err := snapshot.Validate(); err != nil {
		return fmt.Errorf("formalizer: validate reopened M0 snapshot: %w", err)
	}
	if err := a.validateResult(ctx, snapshot); err != nil {
		return err
	}
	return ctx.Err()
}

func (a DurableArtifact) validateResult(ctx context.Context, snapshot catalog.Snapshot) error {
	r := a.Result
	if r.SchemaVersion != ResultSchemaVersion {
		return errors.New("formalizer: durable artifact contains an unsupported result schema")
	}
	if err := r.Request.Validate(); err != nil {
		return fmt.Errorf("formalizer: durable request is invalid: %w", err)
	}
	if r.Request.Source.CatalogSnapshotSHA256 != snapshot.ContentSHA256 {
		return errors.New("formalizer: durable request is not bound to the exact embedded M0 snapshot")
	}
	if digestBytes(a.SourceItemBytes) != r.Request.Source.RawItemSHA256 {
		return errors.New("formalizer: embedded raw M0 source bytes do not match the request pin")
	}
	if digestBytes(a.ClearanceRegisterBytes) != r.Request.InputClearance.EvidenceSHA256 {
		return errors.New("formalizer: embedded provider-input clearance bytes do not match the request pin")
	}

	sourceID, err := sourceIDForPin(snapshot, r.Request)
	if err != nil {
		return err
	}
	preflight := PinnedProviderInputPreflight{
		Snapshot:               snapshot,
		ClearanceRegisterBytes: a.ClearanceRegisterBytes,
		SourceItemBytes:        map[string][]byte{sourceID: a.SourceItemBytes},
	}
	if err := preflight.VerifyProviderInput(ctx, r.Request); err != nil {
		return fmt.Errorf("formalizer: reopened provider-input clearance: %w", err)
	}
	if len(r.GenerationResponse) > maxFormalizerRawResponseBytes || len(r.FailureReason) > maxFormalizerFailureReasonBytes {
		return errors.New("formalizer: raw response or failure reason exceeds its durable size limit")
	}
	if r.GenerationResponse == "" {
		if r.GenerationResponseSHA256 != "" {
			return errors.New("formalizer: empty raw response carries a non-empty digest")
		}
	} else if digestText(r.GenerationResponse) != r.GenerationResponseSHA256 {
		return errors.New("formalizer: raw model response does not match its SHA-256")
	}
	if err := validateProviderTransportEvidence(Generation{
		Receipt:                    r.RunReceipt,
		ProviderID:                 r.ProviderID,
		ProviderProtocolID:         r.ProviderProtocolID,
		ProviderEndpoint:           r.ProviderEndpoint,
		ProviderReturnedModel:      r.ProviderReturnedModel,
		ProviderModelIdentityKind:  r.ProviderModelIdentityKind,
		ProviderRequestBody:        r.ProviderRequestBody,
		ProviderRequestBodySHA256:  r.ProviderRequestBodySHA256,
		ProviderResponseBody:       r.ProviderResponseBody,
		ProviderResponseBodySHA256: r.ProviderResponseBodySHA256,
		ProviderResponseIncomplete: r.ProviderResponseIncomplete,
	}); err != nil {
		return fmt.Errorf("formalizer: reopen provider transport evidence: %w", err)
	}
	if err := validateProviderEvidence(r.Request, r.GenerationResponse, r.ProviderID, r.ProviderProtocolID, r.ProviderEndpoint, r.ProviderReturnedModel, r.ProviderModelIdentityKind, r.ProviderRequestBody, r.ProviderResponseBody, r.ProviderResponseIncomplete, r.RunReceipt); err != nil {
		return fmt.Errorf("formalizer: reopen provider binding: %w", err)
	}
	if err := a.validateProviderRouteAuthorization(r); err != nil {
		return err
	}

	if r.Candidate.CandidateID == "" {
		if r.Candidate != (GeneratedCandidate{}) || r.CandidateRevision != (CandidateRevision{}) || r.StatementCheck != nil {
			return errors.New("formalizer: failed generation capture contains partial candidate or checker fields")
		}
		if r.RunReceipt.ReceiptID != "" {
			if err := validateGenerationReceipt(r.Request, r.RunReceipt); err != nil {
				return fmt.Errorf("formalizer: failed generation receipt is not bound to the request: %w", err)
			}
			if err := r.RunReceipt.ValidateInputClearanceArtifactBytes(map[string][]byte{
				r.Request.InputClearance.EvidenceID: a.ClearanceRegisterBytes,
			}); err != nil {
				return fmt.Errorf("formalizer: reopen failed-run clearance artifact: %w", err)
			}
		}
		if strings.TrimSpace(r.FailureReason) == "" {
			return errors.New("formalizer: failed generation capture lacks its failure reason")
		}
		switch r.Status {
		case statusGenerationRejected:
			if r.FailureClass != formalizationFailureClass && r.FailureClass != infrastructureFailureClass {
				return errors.New("formalizer: rejected generation capture has an unsupported failure class")
			}
		case statusGenerationInfraFailure:
			if r.FailureClass != infrastructureFailureClass {
				return errors.New("formalizer: generator failure capture must be classified as infrastructure failure")
			}
		default:
			return errors.New("formalizer: empty candidate is only valid for a classified generation failure")
		}
		return ctx.Err()
	}
	if r.ProviderResponseIncomplete {
		return errors.New("formalizer: incomplete provider response cannot contain an accepted candidate")
	}

	if r.GenerationResponse == "" {
		return errors.New("formalizer: candidate result lacks the exact raw model response")
	}
	candidate, err := parseCandidateResponse(r.GenerationResponse)
	if err != nil {
		return fmt.Errorf("formalizer: reopen exact raw model response: %w", err)
	}
	if candidate != r.Candidate {
		return errors.New("formalizer: stored candidate differs from the exact raw model response")
	}
	revision, err := newCandidateRevision(candidate)
	if err != nil || revision != r.CandidateRevision {
		return errors.New("formalizer: stored candidate does not match its content-addressed revision")
	}
	if err := validateGeneration(r.Request, candidate, r.RunReceipt); err != nil {
		return fmt.Errorf("formalizer: reopened provider run receipt: %w", err)
	}
	if len(r.RunReceipt.InputClearance) != 1 || r.RunReceipt.InputClearance[0] != r.Request.InputClearance {
		return errors.New("formalizer: provider run receipt must contain exactly the reopened target clearance")
	}
	if err := r.RunReceipt.ValidateInputClearanceArtifactBytes(map[string][]byte{
		r.Request.InputClearance.EvidenceID: a.ClearanceRegisterBytes,
	}); err != nil {
		return fmt.Errorf("formalizer: reopen clearance artifact pinned by provider receipt: %w", err)
	}

	if r.StatementCheck != nil {
		if err := validateStatementCheck(r.Request, candidate, *r.StatementCheck); err != nil {
			return fmt.Errorf("formalizer: reopen proposition-check receipt: %w", err)
		}
	}
	switch r.Status {
	case statusPropositionPass:
		if r.FailureClass != "" || r.FailureReason != "" || r.StatementCheck == nil || !r.StatementCheck.TypecheckPassed || r.StatementCheck.Status != "PASSED" {
			return errors.New("formalizer: proposition pass lacks a passing execution receipt")
		}
	case statusPropositionFail:
		if r.FailureClass != formalizationFailureClass || strings.TrimSpace(r.FailureReason) == "" || r.StatementCheck == nil || r.StatementCheck.TypecheckPassed || r.StatementCheck.Status != "REJECTED" {
			return errors.New("formalizer: proposition rejection lacks a matching rejected check receipt")
		}
	case statusCheckerError:
		if r.FailureClass != infrastructureFailureClass || strings.TrimSpace(r.FailureReason) == "" ||
			(r.StatementCheck != nil && (r.StatementCheck.TypecheckPassed || !isStatementCheckInfrastructureFailure(r.StatementCheck.Status))) {
			return errors.New("formalizer: checker error capture lacks its infrastructure failure disposition")
		}
	default:
		return errors.New("formalizer: durable candidate result has an unsupported status")
	}
	return ctx.Err()
}

func (a DurableArtifact) validateProviderRouteAuthorization(result Result) error {
	launchAt := result.RunReceipt.ModelIdentityCapturedAtUTC
	if result.ProviderProtocolID == "" {
		if result.RouteAuthorization != (ProviderRouteAuthorizationReceipt{}) || len(a.ProviderRouteAuthorizationBytes) != 0 {
			return errors.New("formalizer: route authorization evidence is present without a protocol-bound provider run")
		}
		return nil // protocol-less legacy receipts remain readable as historical records
	}
	if launchAt == nil || len(a.ProviderRouteAuthorizationBytes) == 0 || len(a.ProviderRouteAuthorizationBytes) > ProviderRouteAuthorizationMaxBytes {
		return errors.New("formalizer: provider result lacks its launch-time route authorization bytes")
	}
	receipt := result.RouteAuthorization
	if receipt.AuthorizationID == "" || receipt.Path == "" || !filepath.IsAbs(receipt.Path) ||
		strings.HasPrefix(receipt.Path, `\\`) || strings.ContainsAny(receipt.Path, "\x00\r\n") ||
		!validSHA256(receipt.SHA256) || digestBytes(a.ProviderRouteAuthorizationBytes) != receipt.SHA256 {
		return errors.New("formalizer: route authorization evidence does not match its recorded path and SHA-256")
	}
	record, err := decodeProviderRouteAuthorization(a.ProviderRouteAuthorizationBytes)
	if err != nil {
		return err
	}
	binding := ProviderRouteBinding{
		ProviderID: result.ProviderID, AccountProfile: receipt.AccountProfile,
		ProtocolID: result.ProviderProtocolID,
		Endpoint: result.ProviderEndpoint, ModelID: result.RunReceipt.Model,
		CallCeilingMicros: receipt.CallCeilingMicros, MaxOutputTokens: receipt.MaxOutputTokens,
		Price: budget.Price{Known: true, InputPerMillionMicros: receipt.InputPriceMicrosPerMillionTokens,
			OutputPerMillionMicros: receipt.OutputPriceMicrosPerMillionTokens},
	}
	if record.AuthorizationID != receipt.AuthorizationID {
		return errors.New("formalizer: route authorization ID differs from the embedded decision record")
	}
	if err := validateProviderRouteRecord(record, binding, launchAt.UTC()); err != nil {
		return fmt.Errorf("formalizer: reopen provider route authorization: %w", err)
	}
	if err := validateProviderRouteTarget(record, result.Request, launchAt.UTC()); err != nil {
		return err
	}
	decodedRequest, err := provider.DecodeProofCompletionRequest(result.ProviderProtocolID, []byte(result.ProviderRequestBody), result.RunReceipt.Model)
	if err != nil || decodedRequest.MaxOutputTokens != receipt.MaxOutputTokens {
		return errors.New("formalizer: route authorization token bound differs from the captured provider request")
	}
	return nil
}

func isStatementCheckInfrastructureFailure(status string) bool {
	switch status {
	case "OUTPUT_LIMIT", "TOOLCHAIN_PROBE_FAILED", "EXECUTION_ERROR", "TIMED_OUT", "CANCELLED", "COMPILED_ARTIFACT_MISSING", "COMPILED_ARTIFACT_CAPTURE_FAILED":
		return true
	default:
		return false
	}
}

// Put validates and appends one immutable artifact. Repeating the same
// artifact is idempotent; changed attempts or evidence produce a new digest.
func (s *ArtifactStore) Put(ctx context.Context, artifact DurableArtifact) (ArtifactReceipt, error) {
	if s == nil || s.root == "" {
		return ArtifactReceipt{}, errors.New("formalizer: artifact store is nil")
	}
	if err := artifact.Validate(ctx); err != nil {
		return ArtifactReceipt{}, err
	}
	body, err := json.Marshal(artifact)
	if err != nil {
		return ArtifactReceipt{}, fmt.Errorf("formalizer: encode durable artifact: %w", err)
	}
	if len(body) == 0 || len(body) > maxFormalizerArtifactBytes {
		return ArtifactReceipt{}, errors.New("formalizer: encoded durable artifact is empty or exceeds its size limit")
	}
	artifactID := digestBytes(body)
	objectsRoot := filepath.Join(s.root, "objects")
	if err := ensureFormalizerDirectory(objectsRoot); err != nil {
		return ArtifactReceipt{}, err
	}
	target := filepath.Join(objectsRoot, artifactID+".json")
	if receipt, ok, err := s.verifyExisting(ctx, target, artifactID); err != nil || ok {
		return receipt, err
	}
	if err := ctx.Err(); err != nil {
		return ArtifactReceipt{}, err
	}
	temp, err := os.CreateTemp(objectsRoot, ".mathcase-formalizer-*.tmp")
	if err != nil {
		return ArtifactReceipt{}, fmt.Errorf("formalizer: create temporary artifact: %w", err)
	}
	tempPath := temp.Name()
	defer func() { _ = os.Remove(tempPath) }()
	if err := temp.Chmod(0o600); err != nil {
		_ = temp.Close()
		return ArtifactReceipt{}, fmt.Errorf("formalizer: restrict temporary artifact: %w", err)
	}
	if err := writeFormalizerAll(temp, body); err != nil {
		_ = temp.Close()
		return ArtifactReceipt{}, fmt.Errorf("formalizer: write durable artifact: %w", err)
	}
	if err := temp.Sync(); err != nil {
		_ = temp.Close()
		return ArtifactReceipt{}, fmt.Errorf("formalizer: flush durable artifact: %w", err)
	}
	if err := temp.Close(); err != nil {
		return ArtifactReceipt{}, fmt.Errorf("formalizer: close durable artifact: %w", err)
	}
	if err := ctx.Err(); err != nil {
		return ArtifactReceipt{}, err
	}
	// A same-directory hard link publishes the fully flushed file without
	// replacing any existing content-addressed object, including on Windows.
	if err := os.Link(tempPath, target); err != nil {
		if receipt, ok, verifyErr := s.verifyExisting(ctx, target, artifactID); verifyErr == nil && ok {
			return receipt, nil
		}
		return ArtifactReceipt{}, fmt.Errorf("formalizer: append durable artifact: %w", err)
	}
	if err := os.Remove(tempPath); err != nil {
		return ArtifactReceipt{}, fmt.Errorf("formalizer: remove temporary artifact link: %w", err)
	}
	if runtime.GOOS != "windows" {
		directory, err := os.Open(objectsRoot)
		if err != nil {
			return ArtifactReceipt{}, fmt.Errorf("formalizer: open artifact directory: %w", err)
		}
		syncErr := directory.Sync()
		closeErr := directory.Close()
		if syncErr != nil {
			return ArtifactReceipt{}, fmt.Errorf("formalizer: sync artifact directory: %w", syncErr)
		}
		if closeErr != nil {
			return ArtifactReceipt{}, fmt.Errorf("formalizer: close artifact directory: %w", closeErr)
		}
	}
	return artifactReceipt(target, artifactID, artifact, int64(len(body))), nil
}

// GenerateAndPersist composes the authorized path: it verifies the exact
// item-level provider-input clearance and M0 bytes before dispatch, runs the
// existing candidate frontend, then appends any complete candidate result
// before returning it. A local checker error is returned alongside its saved
// artifact when the generation and all bindings remain valid.
func (f Frontend) GenerateAndPersist(ctx context.Context, request Request, store *ArtifactStore, evidence ArtifactEvidenceInputs) (Result, ArtifactReceipt, error) {
	if ctx == nil {
		return Result{}, ArtifactReceipt{}, errors.New("formalizer: context is required")
	}
	if store == nil || store.root == "" {
		return Result{}, ArtifactReceipt{}, errors.New("formalizer: durable artifact store is required before dispatch")
	}
	if f.Generator == nil || f.Checker == nil || f.ClearanceVerifier == nil {
		return Result{}, ArtifactReceipt{}, errors.New("formalizer: generator, isolated Lean checker, and clearance verifier are required before dispatch")
	}
	if err := request.Validate(); err != nil {
		return Result{}, ArtifactReceipt{}, err
	}
	var snapshot catalog.Snapshot
	if err := decodeStrictFormalizerJSON(evidence.CatalogSnapshotBytes, &snapshot); err != nil {
		return Result{}, ArtifactReceipt{}, fmt.Errorf("formalizer: validate pre-dispatch M0 bytes: %w", err)
	}
	if err := snapshot.Validate(); err != nil {
		return Result{}, ArtifactReceipt{}, fmt.Errorf("formalizer: validate pre-dispatch M0 snapshot: %w", err)
	}
	sourceID, err := sourceIDForPin(snapshot, request)
	if err != nil {
		return Result{}, ArtifactReceipt{}, err
	}
	preflight := PinnedProviderInputPreflight{
		Snapshot:               snapshot,
		ClearanceRegisterBytes: evidence.ClearanceRegisterBytes,
		SourceItemBytes:        map[string][]byte{sourceID: evidence.SourceItemBytes},
	}
	if err := preflight.VerifyProviderInput(ctx, request); err != nil {
		return Result{}, ArtifactReceipt{}, fmt.Errorf("formalizer: durable pre-dispatch clearance: %w", err)
	}

	result, generationErr := f.GenerateCandidate(ctx, request)
	if result.SchemaVersion != ResultSchemaVersion {
		return result, ArtifactReceipt{}, generationErr
	}
	artifact := NewDurableArtifact(result, evidence.CatalogSnapshotBytes, evidence.SourceItemBytes, evidence.ClearanceRegisterBytes, evidence.ProviderRouteAuthorizationBytes)
	receipt, persistErr := store.Put(ctx, artifact)
	if persistErr != nil {
		if generationErr != nil {
			return result, ArtifactReceipt{}, errors.Join(generationErr, fmt.Errorf("formalizer: persist generated candidate: %w", persistErr))
		}
		return result, ArtifactReceipt{}, fmt.Errorf("formalizer: persist generated candidate: %w", persistErr)
	}
	return result, receipt, generationErr
}

// Get locates by content ID, verifies immutable bytes, then reopens and
// revalidates the complete M0/clearance/run/candidate/check chain.
func (s *ArtifactStore) Get(ctx context.Context, artifactID string) (DurableArtifact, ArtifactReceipt, error) {
	if s == nil || s.root == "" {
		return DurableArtifact{}, ArtifactReceipt{}, errors.New("formalizer: artifact store is nil")
	}
	if !validSHA256(artifactID) {
		return DurableArtifact{}, ArtifactReceipt{}, errors.New("formalizer: artifact ID must be canonical SHA-256 hex")
	}
	if ctx == nil {
		return DurableArtifact{}, ArtifactReceipt{}, errors.New("formalizer: context is required")
	}
	if err := ctx.Err(); err != nil {
		return DurableArtifact{}, ArtifactReceipt{}, err
	}
	objectsRoot := filepath.Join(s.root, "objects")
	if err := checkFormalizerDirectory(objectsRoot); err != nil {
		return DurableArtifact{}, ArtifactReceipt{}, err
	}
	path := filepath.Join(objectsRoot, artifactID+".json")
	if err := ensureFormalizerContained(s.root, path); err != nil {
		return DurableArtifact{}, ArtifactReceipt{}, err
	}
	data, err := readFormalizerRegular(path)
	if err != nil {
		return DurableArtifact{}, ArtifactReceipt{}, fmt.Errorf("formalizer: open durable artifact: %w", err)
	}
	if len(data) == 0 || digestBytes(data) != artifactID {
		return DurableArtifact{}, ArtifactReceipt{}, errors.New("formalizer: durable artifact bytes do not match their content address")
	}
	var artifact DurableArtifact
	if err := decodeStrictFormalizerJSON(data, &artifact); err != nil {
		return DurableArtifact{}, ArtifactReceipt{}, fmt.Errorf("formalizer: decode durable artifact: %w", err)
	}
	if err := artifact.Validate(ctx); err != nil {
		return DurableArtifact{}, ArtifactReceipt{}, fmt.Errorf("formalizer: validate reopened durable artifact: %w", err)
	}
	return artifact, artifactReceipt(path, artifactID, artifact, int64(len(data))), nil
}

// OpenV3 reopens a durable artifact and creates the existing non-passing V3
// review seed from its exact stored result. It is the durable producer to
// downstream-reader boundary for a formalizer candidate.
func (s *ArtifactStore) OpenV3(ctx context.Context, artifactID string) (V3CandidateHandoff, error) {
	artifact, receipt, err := s.Get(ctx, artifactID)
	if err != nil {
		return V3CandidateHandoff{}, err
	}
	seed, err := artifact.Result.V3Seed()
	if err != nil {
		return V3CandidateHandoff{}, fmt.Errorf("formalizer: durable candidate is not ready for V3 handoff: %w", err)
	}
	var snapshot catalog.Snapshot
	if err := decodeStrictFormalizerJSON(artifact.CatalogSnapshotBytes, &snapshot); err != nil {
		return V3CandidateHandoff{}, fmt.Errorf("formalizer: reopen M0 snapshot for V3 handoff: %w", err)
	}
	return V3CandidateHandoff{
		Artifact:      receipt,
		Result:        artifact.Result,
		Snapshot:      snapshot,
		RawSourceItem: append([]byte(nil), artifact.SourceItemBytes...),
		Seed:          seed,
	}, nil
}

// AttachCandidateToDossier appends one reopened, proposition-elaborated
// candidate reference to a DRAFT dossier value. It does not mutate the M0
// statement, write a dossier file, or advance V3. The caller writes the
// returned value as the canonical immutable dossier successor.
func (s *ArtifactStore) AttachCandidateToDossier(ctx context.Context, dossier domain.Dossier, artifactID string) (domain.Dossier, V3CandidateHandoff, error) {
	handoff, err := s.OpenV3(ctx, artifactID)
	if err != nil {
		return domain.Dossier{}, V3CandidateHandoff{}, err
	}
	ref, err := formalizerCandidateReferenceForDossier(dossier, handoff)
	if err != nil {
		return domain.Dossier{}, V3CandidateHandoff{}, err
	}
	for _, existing := range dossier.FormalizerCandidateArtifacts {
		if existing.ArtifactSHA256 == ref.ArtifactSHA256 {
			return domain.Dossier{}, V3CandidateHandoff{}, errors.New("formalizer: candidate artifact is already attached to this dossier")
		}
	}
	updated := dossier
	updated.FormalizerCandidateArtifacts = append(append([]domain.FormalizerCandidateArtifactRef(nil), dossier.FormalizerCandidateArtifacts...), ref)
	if err := updated.Validate(); err != nil {
		return domain.Dossier{}, V3CandidateHandoff{}, fmt.Errorf("formalizer: candidate reference makes dossier invalid: %w", err)
	}
	return updated, handoff, nil
}

// AuditDossierCandidateArtifacts reopens every formalizer artifact referenced
// by an M8 dossier and checks its exact candidate revision, run receipt, M0
// snapshot, problem statement, and linked source. A candidate reference never
// changes the V3 gate status.
func (s *ArtifactStore) AuditDossierCandidateArtifacts(ctx context.Context, dossier domain.Dossier) (DossierFormalizerCandidateAuditReport, error) {
	report := DossierFormalizerCandidateAuditReport{Status: "NOT_PRESENT"}
	if len(dossier.FormalizerCandidateArtifacts) == 0 {
		return report, nil
	}
	report.Status = "NOT_REOPENED"
	if s == nil || s.root == "" {
		return report, errors.New("formalizer: dossier references candidates but no artifact store is open")
	}
	if ctx == nil {
		return report, errors.New("formalizer: context is required")
	}
	if err := dossier.Validate(); err != nil {
		return report, fmt.Errorf("formalizer: invalid dossier candidate references: %w", err)
	}
	for _, ref := range dossier.FormalizerCandidateArtifacts {
		handoff, err := s.OpenV3(ctx, ref.ArtifactSHA256)
		if err != nil {
			return report, fmt.Errorf("formalizer: reopen dossier candidate %q: %w", ref.ArtifactSHA256, err)
		}
		expected, err := formalizerCandidateReferenceForDossier(dossier, handoff)
		if err != nil {
			return report, err
		}
		if ref != expected {
			return report, errors.New("formalizer: dossier candidate reference does not match the reopened artifact identity")
		}
		report.Candidates = append(report.Candidates, DossierFormalizerCandidateAuditEntry{
			ArtifactSHA256:           ref.ArtifactSHA256,
			CandidateID:              ref.CandidateID,
			CandidateRevisionSHA256:  ref.CandidateRevisionSHA256,
			GenerationReceiptID:      ref.GenerationReceiptID,
			StatementCheckEvidenceID: handoff.Result.StatementCheck.EvidenceID,
		})
	}
	report.CandidateCount = len(report.Candidates)
	report.Status = "REOPENED_ALL"
	return report, nil
}

func formalizerCandidateReferenceForDossier(dossier domain.Dossier, handoff V3CandidateHandoff) (domain.FormalizerCandidateArtifactRef, error) {
	result := handoff.Result
	if result.Status != statusPropositionPass || result.StatementCheck == nil || !result.StatementCheck.TypecheckPassed {
		return domain.FormalizerCandidateArtifactRef{}, errors.New("formalizer: only a proposition-elaborated candidate with a passing check can be linked to a dossier")
	}
	if dossier.Case.ID == "" || dossier.Problem.ID != result.Request.ProblemID || dossier.Problem.Statement != result.Request.Source.Statement {
		return domain.FormalizerCandidateArtifactRef{}, errors.New("formalizer: candidate problem and exact M0 statement do not match the dossier")
	}
	if strings.TrimSpace(dossier.Problem.LeanStatement) != "" {
		return domain.FormalizerCandidateArtifactRef{}, errors.New("formalizer: candidate cannot replace or attach over a Lean statement already present in the M0 dossier")
	}
	if dossier.CatalogSnapshotSHA256 == "" || dossier.CatalogSnapshotSHA256 != result.Request.Source.CatalogSnapshotSHA256 {
		return domain.FormalizerCandidateArtifactRef{}, errors.New("formalizer: candidate is not bound to the dossier's exact M0 catalog snapshot")
	}
	sourceID, err := sourceIDForPin(handoff.Snapshot, result.Request)
	if err != nil {
		return domain.FormalizerCandidateArtifactRef{}, err
	}
	if !containsString(dossier.Problem.SourceIDs, sourceID) {
		return domain.FormalizerCandidateArtifactRef{}, errors.New("formalizer: candidate source is not linked by the dossier problem")
	}
	linkedDossierSource := false
	for _, source := range dossier.Sources {
		if source.ID == sourceID && source.CaseID == dossier.Case.ID {
			linkedDossierSource = true
			break
		}
	}
	if !linkedDossierSource {
		return domain.FormalizerCandidateArtifactRef{}, errors.New("formalizer: candidate source is not present in the dossier source records")
	}
	ref := domain.FormalizerCandidateArtifactRef{
		ArtifactSHA256:          handoff.Artifact.ArtifactSHA256,
		CandidateID:             result.Candidate.CandidateID,
		CandidateRevisionSHA256: result.CandidateRevision.SHA256,
		GenerationReceiptID:     result.RunReceipt.ReceiptID,
	}
	if err := ref.Validate(); err != nil {
		return domain.FormalizerCandidateArtifactRef{}, fmt.Errorf("formalizer: invalid candidate reference: %w", err)
	}
	return ref, nil
}

func sourceIDForPin(snapshot catalog.Snapshot, request Request) (string, error) {
	problem, ok := catalogProblem(snapshot, request.ProblemID)
	if !ok || problem.InformalStatement != request.Source.Statement {
		return "", errors.New("formalizer: exact target problem is absent from embedded M0")
	}
	matched := ""
	for _, source := range snapshot.Sources {
		if !containsString(problem.SourceIDs, source.ID) || source.URL != request.Source.URL || source.ItemLocator != request.Source.ItemLocator ||
			source.Revision != request.Source.Revision || source.ContentSHA256 != request.Source.RawItemSHA256 {
			continue
		}
		if matched != "" {
			return "", errors.New("formalizer: exact source pin matches multiple M0 source records")
		}
		matched = source.ID
	}
	if matched == "" {
		return "", errors.New("formalizer: exact source pin is absent from embedded M0")
	}
	return matched, nil
}

func (s *ArtifactStore) verifyExisting(ctx context.Context, target, artifactID string) (ArtifactReceipt, bool, error) {
	if err := ctx.Err(); err != nil {
		return ArtifactReceipt{}, false, err
	}
	data, err := readFormalizerRegular(target)
	if errors.Is(err, os.ErrNotExist) {
		return ArtifactReceipt{}, false, nil
	}
	if err != nil {
		return ArtifactReceipt{}, false, err
	}
	if len(data) == 0 || digestBytes(data) != artifactID {
		return ArtifactReceipt{}, false, errors.New("formalizer: existing artifact does not match its content address")
	}
	var artifact DurableArtifact
	if err := decodeStrictFormalizerJSON(data, &artifact); err != nil {
		return ArtifactReceipt{}, false, err
	}
	if err := artifact.Validate(ctx); err != nil {
		return ArtifactReceipt{}, false, err
	}
	return artifactReceipt(target, artifactID, artifact, int64(len(data))), true, nil
}

func artifactReceipt(target, artifactID string, artifact DurableArtifact, size int64) ArtifactReceipt {
	return ArtifactReceipt{
		ArtifactSHA256:          artifactID,
		CandidateID:             artifact.Result.Candidate.CandidateID,
		CandidateRevisionSHA256: artifact.Result.CandidateRevision.SHA256,
		GenerationReceiptID:     artifact.Result.RunReceipt.ReceiptID,
		CatalogSnapshotSHA256:   artifact.Result.Request.Source.CatalogSnapshotSHA256,
		RelativePath:            filepath.ToSlash(filepath.Join("objects", filepath.Base(target))),
		Size:                    size,
	}
}

func decodeStrictFormalizerJSON(data []byte, destination any) error {
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
		return errors.New("formalizer: JSON contains multiple values")
	}
	return nil
}

func ensureFormalizerDirectory(path string) error {
	if err := os.MkdirAll(path, 0o700); err != nil {
		return fmt.Errorf("formalizer: create directory: %w", err)
	}
	return checkFormalizerDirectory(path)
}

func checkFormalizerDirectory(path string) error {
	info, err := os.Lstat(path)
	if err != nil {
		return fmt.Errorf("formalizer: inspect directory: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return errors.New("formalizer: path is not a regular directory")
	}
	return nil
}

func readFormalizerRegular(path string) ([]byte, error) {
	info, err := os.Lstat(path)
	if err != nil {
		return nil, err
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() || info.Size() > maxFormalizerArtifactBytes {
		return nil, errors.New("formalizer: artifact is not a bounded regular file")
	}
	file, err := os.Open(path) //nolint:gosec // path is derived from a validated content hash under the private store root
	if err != nil {
		return nil, err
	}
	defer file.Close()
	data, err := io.ReadAll(io.LimitReader(file, maxFormalizerArtifactBytes+1))
	if err != nil {
		return nil, err
	}
	if len(data) > maxFormalizerArtifactBytes {
		return nil, errors.New("formalizer: artifact exceeds its size limit")
	}
	return data, nil
}

func ensureFormalizerContained(root, path string) error {
	if !fsutil.IsWithin(root, path) {
		return errors.New("formalizer: artifact path escapes configured root")
	}
	return nil
}

func writeFormalizerAll(writer io.Writer, data []byte) error {
	for len(data) > 0 {
		written, err := writer.Write(data)
		if err != nil {
			return err
		}
		if written <= 0 || written > len(data) {
			return errors.New("formalizer: writer returned invalid byte count")
		}
		data = data[written:]
	}
	return nil
}
