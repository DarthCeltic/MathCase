package expositor

import (
	"context"
	"crypto/rand"
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

// BundleGenerationInput binds one complete five-tier generation request to
// the exact statement, proof, shared core insight, and canon snapshot.
type BundleGenerationInput struct {
	AuthorCallID        string                        `json:"author_call_id,omitempty"`
	ProblemID           string                        `json:"problem_id"`
	Statement           string                        `json:"statement"`
	Source              domain.V3SourceStatementPin   `json:"source"`
	InputClearance      domain.AgentRunInputClearance `json:"input_clearance"`
	Proof               string                        `json:"proof"`
	ProofSHA256         string                        `json:"proof_sha256"`
	CoreInsightID       string                        `json:"core_insight_id"`
	CoreInsight         string                        `json:"core_insight"`
	CanonSnapshotSHA256 string                        `json:"canon_snapshot_sha256"`
	WordLimits          WordLimits                    `json:"word_limits"`
}

// ProviderInputClearanceVerifier reopens the exact M0 source and item-level
// provider-input grant before an author can receive a generation request.
type ProviderInputClearanceVerifier interface {
	VerifyM7ProviderInput(context.Context, string, domain.V3SourceStatementPin, domain.AgentRunInputClearance) error
}

// VerifiedBundleGenerationInput can only be produced by the successful M0
// source and provider-input clearance preflight. The embedded request is
// intentionally private so an unverified zero value cannot be dispatched.
type VerifiedBundleGenerationInput struct {
	input    BundleGenerationInput
	verified bool
}

// Input returns a detached request only after a successful clearance check.
func (v VerifiedBundleGenerationInput) Input() (BundleGenerationInput, error) {
	if !v.verified {
		return BundleGenerationInput{}, errors.New("expositor: bundle input has not passed provider-input clearance preflight")
	}
	return cloneGenerationInput(v.input), nil
}

// WithAuthorCallID attaches the application-owned journal ID after preflight.
func (v VerifiedBundleGenerationInput) WithAuthorCallID(callID string) (VerifiedBundleGenerationInput, error) {
	if !v.verified {
		return VerifiedBundleGenerationInput{}, errors.New("expositor: cannot assign an author call ID before provider-input clearance")
	}
	if err := state.ValidateIdentifier("exposition author call ID", callID); err != nil {
		return VerifiedBundleGenerationInput{}, err
	}
	v.input.AuthorCallID = callID
	return v, nil
}

// BundleAuthor is an injected authoring boundary. It receives only a verified
// all-tier request. MathCase does not provide a network-backed implementation.
type BundleAuthor interface {
	Generate(context.Context, VerifiedBundleGenerationInput) (Bundle, error)
}

type providerCallIDError interface {
	error
	ProviderCallID() string
}

type authorCallIdentityError struct {
	providerCallID string
	err            error
}

func (e *authorCallIdentityError) Error() string          { return e.err.Error() }
func (e *authorCallIdentityError) Unwrap() error          { return e.err }
func (e *authorCallIdentityError) ProviderCallID() string { return e.providerCallID }

// ProviderCallIDFromError recovers the provider-issued call ID when an
// authoring request returned a response but its bundle could not be accepted.
func ProviderCallIDFromError(err error) string {
	var identified providerCallIDError
	if errors.As(err, &identified) {
		return identified.ProviderCallID()
	}
	return ""
}

func withProviderCallID(providerCallID string, err error) error {
	if err == nil {
		return nil
	}
	var identified providerCallIDError
	if errors.As(err, &identified) {
		if providerCallID != "" && providerCallID != identified.ProviderCallID() {
			return &authorCallIdentityError{
				providerCallID: identified.ProviderCallID(),
				err:            fmt.Errorf("expositor: author response and error disagree on provider call ID: %w", err),
			}
		}
		return err
	}
	if providerCallID == "" {
		return err
	}
	return &authorCallIdentityError{providerCallID: providerCallID, err: err}
}

// ToDossierExpositions converts a validated M7 bundle into one complete set
// of M8 exposition records, preserving the shared insight identity and exact
// proof reference across all five tiers.
func (b Bundle) ToDossierExpositions(proofRef string, wordLimits WordLimits) ([]domain.Exposition, error) {
	if strings.TrimSpace(proofRef) == "" || strings.ContainsAny(proofRef, "\x00\r\n") {
		return nil, errors.New("expositor: dossier proof reference is required")
	}
	if err := b.Validate(wordLimits); err != nil {
		return nil, fmt.Errorf("expositor: convert invalid five-tier bundle to dossier: %w", err)
	}
	outputs := make(map[domain.AudienceTier]TierOutput, len(b.Tiers))
	for _, output := range b.Tiers {
		outputs[output.Tier] = output
	}
	expositions := make([]domain.Exposition, 0, 5)
	for _, tier := range []domain.AudienceTier{
		domain.TierHighSchool,
		domain.TierAssociate,
		domain.TierBachelor,
		domain.TierMaster,
		domain.TierDoctorate,
	} {
		output, ok := outputs[tier]
		if !ok {
			return nil, fmt.Errorf("expositor: five-tier bundle is missing %s", tier)
		}
		expositions = append(expositions, domain.Exposition{
			Tier: tier, Text: output.Render(), CoreInsightID: output.CoreInsightID,
			CoreInsight: output.CoreInsightSentence, ProofRef: proofRef,
		})
	}
	return expositions, nil
}

// VerifyBundleGenerationInput checks the complete request and reopens the
// exact M0 source and item-level provider-input clearance before any author
// implementation is called.
func VerifyBundleGenerationInput(
	ctx context.Context,
	input BundleGenerationInput,
	verifier ProviderInputClearanceVerifier,
) (VerifiedBundleGenerationInput, error) {
	if ctx == nil {
		return VerifiedBundleGenerationInput{}, errors.New("expositor: generation context is required")
	}
	if verifier == nil {
		return VerifiedBundleGenerationInput{}, errors.New("expositor: provider-input clearance verifier is required before authoring")
	}
	if err := input.Validate(); err != nil {
		return VerifiedBundleGenerationInput{}, err
	}
	if err := ctx.Err(); err != nil {
		return VerifiedBundleGenerationInput{}, fmt.Errorf("expositor: generation canceled before clearance preflight: %w", err)
	}
	if err := verifier.VerifyM7ProviderInput(ctx, input.ProblemID, input.Source, input.InputClearance); err != nil {
		return VerifiedBundleGenerationInput{}, fmt.Errorf("expositor: provider-input clearance preflight: %w", err)
	}
	if err := ctx.Err(); err != nil {
		return VerifiedBundleGenerationInput{}, fmt.Errorf("expositor: generation canceled after clearance preflight: %w", err)
	}
	return VerifiedBundleGenerationInput{input: cloneGenerationInput(input), verified: true}, nil
}

// GenerateBundle performs one all-or-nothing authoring operation for all five
// tiers using only a preflight-verified request. It returns no bundle if the
// author fails, returns partial work, or changes a pinned request field.
func GenerateBundle(ctx context.Context, verified VerifiedBundleGenerationInput, author BundleAuthor) (Bundle, error) {
	if ctx == nil {
		return Bundle{}, errors.New("expositor: generation context is required")
	}
	if author == nil {
		return Bundle{}, errors.New("expositor: five-tier bundle author is required")
	}
	input, err := verified.Input()
	if err != nil {
		return Bundle{}, err
	}
	if err := input.Validate(); err != nil {
		return Bundle{}, err
	}
	if err := ctx.Err(); err != nil {
		return Bundle{}, fmt.Errorf("expositor: generation canceled before authoring: %w", err)
	}
	if input.AuthorCallID == "" {
		callID, err := newBundleAuthorCallID()
		if err != nil {
			return Bundle{}, fmt.Errorf("expositor: create author call ID: %w", err)
		}
		verified, err = verified.WithAuthorCallID(callID)
		if err != nil {
			return Bundle{}, fmt.Errorf("expositor: attach author call ID: %w", err)
		}
		input.AuthorCallID = callID
	}

	bundle, err := author.Generate(ctx, verified)
	if err != nil {
		return Bundle{}, withProviderCallID(bundle.ProviderCallID, fmt.Errorf("expositor: author five-tier bundle: %w", err))
	}
	if err := ctx.Err(); err != nil {
		return Bundle{}, withProviderCallID(bundle.ProviderCallID, fmt.Errorf("expositor: generation canceled before bundle acceptance: %w", err))
	}
	if bundle.ProblemID != input.ProblemID || bundle.ProofSHA256 != input.ProofSHA256 || bundle.CanonSnapshotSHA256 != input.CanonSnapshotSHA256 {
		return Bundle{}, withProviderCallID(bundle.ProviderCallID, errors.New("expositor: generated bundle is not bound to the requested problem, proof, and canon snapshot"))
	}
	// Accounting receipts are application-owned evidence. Ignore any similarly
	// named metadata supplied by the injected author implementation.
	bundle.AccountingReceipt = nil
	bundle.AuthorCallID = input.AuthorCallID
	for _, output := range bundle.Tiers {
		if output.CoreInsightID != input.CoreInsightID {
			return Bundle{}, withProviderCallID(bundle.ProviderCallID, errors.New("expositor: generated tier changed the requested shared core insight"))
		}
	}
	if err := bundle.Validate(input.WordLimits); err != nil {
		return Bundle{}, withProviderCallID(bundle.ProviderCallID, fmt.Errorf("expositor: generated bundle is incomplete or invalid: %w", err))
	}
	return cloneBundle(bundle), nil
}

// Validate checks the source/proof binding and frozen shared generation policy.
func (i BundleGenerationInput) Validate() error {
	if i.AuthorCallID != "" {
		if err := state.ValidateIdentifier("exposition author call ID", i.AuthorCallID); err != nil {
			return err
		}
	}
	if err := state.ValidateIdentifier("exposition problem ID", i.ProblemID); err != nil {
		return err
	}
	if strings.TrimSpace(i.Statement) == "" || strings.ContainsAny(i.Statement, "\x00") {
		return errors.New("expositor: source statement is required")
	}
	if strings.TrimSpace(i.Source.URL) == "" || strings.ContainsAny(i.Source.URL, "\x00\r\n") ||
		strings.TrimSpace(i.Source.ItemLocator) == "" || strings.ContainsAny(i.Source.ItemLocator, "\x00\r\n") ||
		strings.TrimSpace(i.Source.Revision) == "" || strings.ContainsAny(i.Source.Revision, "\x00\r\n") ||
		i.Source.Statement != i.Statement || !validDigest(i.Source.RawItemSHA256) ||
		!validDigest(i.Source.CatalogSnapshotSHA256) || i.Source.EvidenceID == "" {
		return errors.New("expositor: exact source and M0 statement pin are required")
	}
	if err := state.ValidateIdentifier("M0 source evidence ID", i.Source.EvidenceID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("provider-input clearance statement ID", i.InputClearance.StatementID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("provider-input clearance evidence ID", i.InputClearance.EvidenceID); err != nil {
		return err
	}
	if !validDigest(i.InputClearance.EvidenceSHA256) {
		return errors.New("expositor: provider-input clearance must pin the exact evidence bytes")
	}
	if strings.TrimSpace(i.Proof) == "" || strings.ContainsAny(i.Proof, "\x00") {
		return errors.New("expositor: verified proof text is required")
	}
	proofDigest := sha256.Sum256([]byte(i.Proof))
	if i.ProofSHA256 != hex.EncodeToString(proofDigest[:]) {
		return errors.New("expositor: proof text does not match its SHA-256")
	}
	if err := state.ValidateIdentifier("core insight ID", i.CoreInsightID); err != nil {
		return err
	}
	if strings.TrimSpace(i.CoreInsight) == "" || strings.ContainsAny(i.CoreInsight, "\x00") {
		return errors.New("expositor: shared core insight is required")
	}
	if !validDigest(i.CanonSnapshotSHA256) {
		return errors.New("expositor: canon snapshot digest must be canonical SHA-256")
	}
	for _, tier := range []domain.AudienceTier{
		domain.TierHighSchool,
		domain.TierAssociate,
		domain.TierBachelor,
		domain.TierMaster,
		domain.TierDoctorate,
	} {
		if i.WordLimits[tier] <= 0 {
			return fmt.Errorf("expositor: positive frozen word limit is required for %s", tier)
		}
	}
	return nil
}

func newBundleAuthorCallID() (string, error) {
	var raw [16]byte
	if _, err := rand.Read(raw[:]); err != nil {
		return "", err
	}
	return "m7call-" + hex.EncodeToString(raw[:]), nil
}

func cloneGenerationInput(input BundleGenerationInput) BundleGenerationInput {
	copy := input
	copy.WordLimits = make(WordLimits, len(input.WordLimits))
	for tier, limit := range input.WordLimits {
		copy.WordLimits[tier] = limit
	}
	return copy
}

func cloneBundle(bundle Bundle) Bundle {
	copy := bundle
	if bundle.AccountingReceipt != nil {
		receipt := *bundle.AccountingReceipt
		copy.AccountingReceipt = &receipt
	}
	copy.Tiers = make([]TierOutput, len(bundle.Tiers))
	for index, tier := range bundle.Tiers {
		copy.Tiers[index] = tier
		copy.Tiers[index].AssumedBackground = append([]string(nil), tier.AssumedBackground...)
		copy.Tiers[index].AssertedSteps = append([]string(nil), tier.AssertedSteps...)
		copy.Tiers[index].PreciseLemmas = append([]string(nil), tier.PreciseLemmas...)
		copy.Tiers[index].AlternativesRejected = append([]string(nil), tier.AlternativesRejected...)
		copy.Tiers[index].TransferTargets = append([]string(nil), tier.TransferTargets...)
	}
	return copy
}
