package expositor

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"io/fs"
	"math"
	"os"
	"path"
	"path/filepath"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

type M7AuditDisposition string

const (
	M7AuditBlocked       M7AuditDisposition = "BLOCKED"
	M7AuditAuthenticated M7AuditDisposition = "AUTHENTICATED"
)

// M7EvidenceRoot exposes a symlink-confined filesystem rooted at one evidence
// directory. Use it for local production evidence; os.DirFS alone can follow
// symlinks outside its apparent root.
type M7EvidenceRoot struct {
	root *os.Root
}

func OpenM7EvidenceRoot(path string) (*M7EvidenceRoot, error) {
	root, err := os.OpenRoot(path)
	if err != nil {
		return nil, fmt.Errorf("expositor: open M7 evidence root: %w", err)
	}
	return &M7EvidenceRoot{root: root}, nil
}

func (r *M7EvidenceRoot) Open(name string) (fs.File, error) {
	if r == nil || r.root == nil {
		return nil, errors.New("expositor: M7 evidence root is closed")
	}
	if err := validateEvidencePath(name); err != nil {
		return nil, err
	}
	return r.root.Open(filepath.FromSlash(name))
}

func (r *M7EvidenceRoot) Close() error {
	if r == nil || r.root == nil {
		return nil
	}
	err := r.root.Close()
	r.root = nil
	return err
}

// M7EvidenceAuditReport separates byte integrity from issuer authentication.
// IntegrityVerified can be true while Disposition remains BLOCKED: MathCase
// currently has no authorized external identity-attestation verifier.
type M7EvidenceAuditReport struct {
	Disposition                   M7AuditDisposition         `json:"disposition"`
	ManifestSHA256                string                     `json:"manifest_sha256"`
	IdentityTrustRegistrySHA256   string                     `json:"identity_trust_registry_sha256,omitempty"`
	IntegrityVerified             bool                       `json:"integrity_verified"`
	ExternalIdentityAuthenticated bool                       `json:"external_identity_authenticated"`
	AuthenticatedPrincipals       []M7AuthenticatedPrincipal `json:"authenticated_principals,omitempty"`
	ExternalAttestationsPresent   int                        `json:"external_attestations_present"`
	AuthorCallID                  string                     `json:"author_call_id"`
	AuthorRunID                   string                     `json:"author_run_id"`
	AuthorProviderCallID          string                     `json:"author_provider_call_id,omitempty"`
	AuthorInputPath               string                     `json:"author_input_path"`
	AuthorInputSHA256             string                     `json:"author_input_sha256"`
	AuthorOutputSHA256            string                     `json:"author_output_sha256"`
	AuthorModelIdentitySHA256     string                     `json:"author_model_identity_sha256"`
	StudentTrialCount             int                        `json:"student_trial_count"`
	StudentAttemptCount           int                        `json:"student_attempt_count"`
	RecomputedTargetBaseline      float64                    `json:"recomputed_target_baseline"`
	RecomputedTargetExposition    float64                    `json:"recomputed_target_with_exposition"`
	RecomputedTransferBaseline    float64                    `json:"recomputed_transfer_baseline"`
	RecomputedTransferExposition  float64                    `json:"recomputed_transfer_with_exposition"`
	RecomputedProgressLift        float64                    `json:"recomputed_progress_lift"`
	Reasons                       []string                   `json:"reasons"`
}

type M7AuthenticatedPrincipal struct {
	Role        domain.M7RunRole `json:"role"`
	PrincipalID string           `json:"principal_id"`
}

// AuditM7Evidence reopens the versioned manifest, exact run receipts, input
// bytes, and raw output bytes. It rejects malformed, substituted, or
// mismatched evidence. Successful integrity checks remain BLOCKED unless a
// host-controlled identity registry pins exact receipt bytes to principals.
func AuditM7Evidence(
	evidenceFS fs.FS,
	manifestPath string,
	bundle Bundle,
	output TierOutput,
	review TierEvaluation,
	policy EvaluationPolicy,
	wordLimits WordLimits,
	identityTrust ...*M7IdentityTrustRegistry,
) (M7EvidenceAuditReport, error) {
	var report M7EvidenceAuditReport
	report.Disposition = M7AuditBlocked
	report.ExternalIdentityAuthenticated = false
	if len(identityTrust) > 1 {
		return report, errors.New("expositor: at most one M7 identity trust registry may be supplied")
	}
	var trustedIdentities *M7IdentityTrustRegistry
	if len(identityTrust) == 1 {
		trustedIdentities = identityTrust[0]
	}
	if evidenceFS == nil {
		return report, errors.New("expositor: M7 evidence filesystem is required")
	}
	if err := bundle.Validate(wordLimits); err != nil {
		return report, fmt.Errorf("expositor: validate M7 author bundle: %w", err)
	}
	if err := policy.Validate(); err != nil {
		return report, err
	}
	if !outputBelongsToBundle(bundle, output) {
		return report, errors.New("expositor: M7 evidence output is not the exact tier stored in the bundle")
	}
	context, err := expectedM7Context(bundle, output, review, policy, wordLimits)
	if err != nil {
		return report, err
	}
	manifestBytes, err := readEvidenceFile(evidenceFS, manifestPath)
	if err != nil {
		return report, fmt.Errorf("expositor: read M7 evidence manifest: %w", err)
	}
	report.ManifestSHA256 = sha256Hex(manifestBytes)
	var manifest domain.M7EvidenceManifestV1
	if err := decodeCanonicalJSON(manifestBytes, &manifest); err != nil {
		return report, fmt.Errorf("expositor: decode M7 evidence manifest: %w", err)
	}
	if manifest.SchemaVersion != domain.M7EvidenceManifestSchemaV1 {
		return report, fmt.Errorf("expositor: unsupported M7 evidence manifest schema %q", manifest.SchemaVersion)
	}
	if manifest.Context != context {
		return report, errors.New("expositor: M7 evidence manifest is not bound to the exact evaluated context")
	}
	if manifest.Author.ID != bundle.AuthorCallID {
		return report, errors.New("expositor: author evidence binding must use the exact author call ID")
	}
	if len(manifest.StudentTrials) < 4 {
		return report, errors.New("expositor: M7 evidence manifest requires matched target and transfer student trials")
	}
	seenRunIDs := make(map[string]struct{}, 8+len(manifest.StudentTrials))
	seenPaths := make(map[string]struct{}, 16+len(manifest.StudentTrials)*3)
	seenInputPaths := make(map[string]struct{}, 8+len(manifest.StudentTrials))
	seenBindingIDs := make(map[string]struct{}, 8+len(manifest.StudentTrials))
	principalsByRole := make(map[domain.M7RunRole]string, 5)
	read := func(binding domain.M7ArtifactBinding, role domain.M7RunRole, expected domain.M7OutputContext) (domain.M7RunReceiptV2, []byte, error) {
		var empty domain.M7RunReceiptV2
		if binding.ID == "" || binding.Role != role || !validDigest(binding.RunReceiptSHA256) || !validDigest(binding.OutputSHA256) {
			return empty, nil, errors.New("expositor: malformed M7 artifact binding")
		}
		if _, exists := seenBindingIDs[binding.ID]; exists {
			return empty, nil, fmt.Errorf("expositor: duplicate M7 evidence binding ID %q", binding.ID)
		}
		seenBindingIDs[binding.ID] = struct{}{}
		for _, candidate := range []string{binding.RunReceiptPath, binding.OutputPath} {
			if err := validateEvidencePath(candidate); err != nil {
				return empty, nil, err
			}
			if _, exists := seenPaths[candidate]; exists {
				return empty, nil, fmt.Errorf("expositor: M7 evidence path %q is reused", candidate)
			}
			seenPaths[candidate] = struct{}{}
		}
		receiptBytes, err := readEvidenceFile(evidenceFS, binding.RunReceiptPath)
		if err != nil {
			return empty, nil, fmt.Errorf("read run receipt %q: %w", binding.RunReceiptPath, err)
		}
		if sha256Hex(receiptBytes) != binding.RunReceiptSHA256 {
			return empty, nil, fmt.Errorf("run receipt %q digest mismatch", binding.RunReceiptPath)
		}
		var receipt domain.M7RunReceiptV2
		if err := decodeCanonicalJSON(receiptBytes, &receipt); err != nil {
			return empty, nil, fmt.Errorf("decode run receipt %q: %w", binding.RunReceiptPath, err)
		}
		if err := receipt.Validate(); err != nil {
			return empty, nil, fmt.Errorf("invalid run receipt %q: %w", binding.RunReceiptPath, err)
		}
		if receipt.Role != role || receipt.Context != expected || receipt.OutputSHA256 != binding.OutputSHA256 {
			return empty, nil, fmt.Errorf("run receipt %q does not bind the required role, context, or output digest", binding.RunReceiptPath)
		}
		inputPath := receipt.InputPath
		if err := validateEvidencePath(inputPath); err != nil {
			return empty, nil, fmt.Errorf("run receipt %q has unsafe input path: %w", binding.RunReceiptPath, err)
		}
		if _, exists := seenPaths[inputPath]; exists {
			return empty, nil, fmt.Errorf("run input %q aliases another M7 artifact path", inputPath)
		}
		if _, exists := seenInputPaths[inputPath]; exists {
			return empty, nil, fmt.Errorf("M7 run input path %q is reused", inputPath)
		}
		seenInputPaths[inputPath] = struct{}{}
		inputBytes, err := readEvidenceFile(evidenceFS, inputPath)
		if err != nil {
			return empty, nil, fmt.Errorf("read run input %q: %w", inputPath, err)
		}
		if sha256Hex(inputBytes) != receipt.InputSHA256 {
			return empty, nil, fmt.Errorf("run input %q digest mismatch", inputPath)
		}
		outputBytes, err := readEvidenceFile(evidenceFS, binding.OutputPath)
		if err != nil {
			return empty, nil, fmt.Errorf("read raw output %q: %w", binding.OutputPath, err)
		}
		if sha256Hex(outputBytes) != receipt.OutputSHA256 {
			return empty, nil, fmt.Errorf("raw output %q digest mismatch", binding.OutputPath)
		}
		if _, exists := seenRunIDs[receipt.RunID]; exists {
			return empty, nil, fmt.Errorf("expositor: duplicate M7 run ID %q", receipt.RunID)
		}
		seenRunIDs[receipt.RunID] = struct{}{}
		if trustedIdentities != nil {
			principalID, err := trustedIdentities.VerifyRunReceipt(receipt, receiptBytes)
			if err != nil {
				return empty, nil, err
			}
			if previous, exists := principalsByRole[role]; exists && previous != principalID {
				return empty, nil, fmt.Errorf("M7 %s receipts change authenticated principal within one evaluation", role)
			}
			principalsByRole[role] = principalID
		}
		if receipt.Model.Attestation != nil {
			report.ExternalAttestationsPresent++
		}
		return receipt, outputBytes, nil
	}

	// One author run must reopen to the exact complete five-tier bundle.
	var authorOutput domain.M7AuthorOutputV1
	authorReceipt, authorBytes, err := read(manifest.Author, domain.M7RunAuthor, context)
	if err != nil {
		return report, fmt.Errorf("author evidence: %w", err)
	}
	if err := decodeCanonicalJSON(authorBytes, &authorOutput); err != nil {
		return report, fmt.Errorf("decode author output: %w", err)
	}
	if authorOutput.SchemaVersion != domain.M7ObservationOutputSchemaV1 || authorOutput.Context != expectedM7BundleContext(context) ||
		authorReceipt.CallID != bundle.AuthorCallID || authorReceipt.Model.ModelID != bundle.ExpositorModelID ||
		authorReceipt.Model.ModelVersion != bundle.ExpositorVersion || len(authorOutput.Tiers) != 5 {
		return report, errors.New("expositor: author receipt/output is not bound to the exact call and five-tier bundle")
	}
	authorModelBytes, err := json.Marshal(authorReceipt.Model)
	if err != nil {
		return report, fmt.Errorf("encode author model identity claim: %w", err)
	}
	report.AuthorCallID = authorReceipt.CallID
	report.AuthorRunID = authorReceipt.RunID
	report.AuthorProviderCallID = authorReceipt.ProviderCallID
	report.AuthorInputPath = authorReceipt.InputPath
	report.AuthorInputSHA256 = authorReceipt.InputSHA256
	report.AuthorOutputSHA256 = authorReceipt.OutputSHA256
	report.AuthorModelIdentitySHA256 = sha256Hex(authorModelBytes)
	seenAuthorTiers := make(map[domain.AudienceTier]struct{}, 5)
	for _, tierOutput := range authorOutput.Tiers {
		if _, duplicate := seenAuthorTiers[tierOutput.Tier]; duplicate {
			return report, fmt.Errorf("expositor: duplicate author output tier %s", tierOutput.Tier)
		}
		if !knownTier(tierOutput.Tier) {
			return report, fmt.Errorf("expositor: author output has unknown tier %q", tierOutput.Tier)
		}
		var candidate *TierOutput
		for index := range bundle.Tiers {
			if bundle.Tiers[index].Tier == tierOutput.Tier {
				candidate = &bundle.Tiers[index]
				break
			}
		}
		if candidate == nil || tierOutput.Text != candidate.Render() || tierOutput.CoreInsightID != candidate.CoreInsightID || tierOutput.CoreInsight != candidate.CoreInsightSentence {
			return report, fmt.Errorf("expositor: author raw output does not match exact bundled tier %s", tierOutput.Tier)
		}
		seenAuthorTiers[tierOutput.Tier] = struct{}{}
	}
	if len(seenAuthorTiers) != 5 {
		return report, errors.New("expositor: author output does not cover all five exact tiers")
	}
	if manifest.RoundTrip.ID != review.RoundTrip.EvidenceID || manifest.Canon.ID != review.Canon.EvidenceID ||
		manifest.Leakage.ID != review.Leakage.EvidenceID || manifest.StudentEvidenceID != review.Student.EvidenceID {
		return report, errors.New("expositor: M7 evidence IDs do not match the exact typed review records")
	}

	// Independent review observations are decoded from their raw output bytes,
	// and each typed claim must exactly match the caller-facing review record.
	roundTripContext := context
	rtReceipt, rtBytes, err := read(manifest.RoundTrip, domain.M7RunRoundTrip, roundTripContext)
	if err != nil {
		return report, fmt.Errorf("round-trip evidence: %w", err)
	}
	var rt domain.M7RoundTripOutputV1
	if err := decodeCanonicalJSON(rtBytes, &rt); err != nil {
		return report, fmt.Errorf("decode round-trip output: %w", err)
	}
	if rt.SchemaVersion != domain.M7ObservationOutputSchemaV1 || rt.Context != rtReceipt.Context ||
		rt.Score != review.RoundTrip.Score || !equalStrings(rt.RequiredFacts, review.RoundTrip.RequiredFacts) ||
		!equalStrings(rt.RecoveredFacts, review.RoundTrip.RecoveredFacts) ||
		rtReceipt.Model.ModelID != review.RoundTrip.ModelID || rtReceipt.Model.ModelVersion != review.RoundTrip.ModelVersion {
		return report, errors.New("expositor: raw round-trip output does not match the exact typed review")
	}

	canonReceipt, canonBytes, err := read(manifest.Canon, domain.M7RunCanon, context)
	if err != nil {
		return report, fmt.Errorf("canon evidence: %w", err)
	}
	var canon domain.M7CanonOutputV1
	if err := decodeCanonicalJSON(canonBytes, &canon); err != nil {
		return report, fmt.Errorf("decode canon output: %w", err)
	}
	if canon.SchemaVersion != domain.M7ObservationOutputSchemaV1 || canon.Context != canonReceipt.Context ||
		!equalMoveScores(canon.Scores, review.Canon.Scores) || canonReceipt.Model.ModelID != review.Canon.ModelID ||
		canonReceipt.Model.ModelVersion != review.Canon.ModelVersion {
		return report, errors.New("expositor: raw canon output does not match the exact typed review")
	}

	leakageReceipt, leakageBytes, err := read(manifest.Leakage, domain.M7RunLeakage, context)
	if err != nil {
		return report, fmt.Errorf("leakage evidence: %w", err)
	}
	var leakage domain.M7LeakageOutputV1
	if err := decodeCanonicalJSON(leakageBytes, &leakage); err != nil {
		return report, fmt.Errorf("decode leakage output: %w", err)
	}
	if leakage.SchemaVersion != domain.M7ObservationOutputSchemaV1 || leakage.Context != leakageReceipt.Context ||
		leakage.Method != review.Leakage.Method || leakage.NgramOverlap != review.Leakage.NgramOverlap ||
		leakage.StructureOverlap != review.Leakage.StructureOverlap || leakage.Passed != review.Leakage.Passed {
		return report, errors.New("expositor: raw leakage output does not match the exact typed review")
	}

	studentReceiptIDs := make(map[string]struct{}, len(manifest.StudentTrials))
	type armPair struct {
		class  domain.M7StudentTaskClass
		values map[domain.M7StudentArm]domain.M7StudentAttemptOutputV1
	}
	pairs := make(map[string]*armPair, len(manifest.StudentTrials)/2)
	for _, binding := range manifest.StudentTrials {
		receipt, raw, err := read(binding, domain.M7RunStudentAttempt, context)
		if err != nil {
			return report, fmt.Errorf("student attempt %q: %w", binding.ID, err)
		}
		var attempt domain.M7StudentAttemptOutputV1
		if err := decodeCanonicalJSON(raw, &attempt); err != nil {
			return report, fmt.Errorf("decode student attempt %q: %w", binding.OutputPath, err)
		}
		if attempt.SchemaVersion != domain.M7ObservationOutputSchemaV1 || attempt.Context != receipt.Context ||
			strings.TrimSpace(attempt.TrialID) == "" ||
			(attempt.TaskClass != domain.M7StudentTarget && attempt.TaskClass != domain.M7StudentTransfer) ||
			(attempt.Arm != domain.M7ArmBaseline && attempt.Arm != domain.M7ArmExposition) ||
			!unit(attempt.OutcomeScore) || !unit(attempt.ProgressScore) || attempt.AttemptCount < 1 ||
			attempt.AttemptCount > review.Student.AttemptBudget || binding.ID != attempt.TrialID+"-"+string(attempt.Arm) {
			return report, fmt.Errorf("student attempt %q has invalid trial, arm, task, score, or attempt-budget fields", binding.ID)
		}
		if receipt.Model.ModelID != review.Student.ModelID || receipt.Model.ModelVersion != review.Student.ModelVersion {
			return report, fmt.Errorf("student attempt %q model claim does not match the frozen student identity", binding.ID)
		}
		if _, duplicate := studentReceiptIDs[receipt.RunID]; duplicate {
			return report, fmt.Errorf("duplicate student attempt run %q", receipt.RunID)
		}
		studentReceiptIDs[receipt.RunID] = struct{}{}
		pair := pairs[attempt.TrialID]
		if pair == nil {
			pair = &armPair{class: attempt.TaskClass, values: make(map[domain.M7StudentArm]domain.M7StudentAttemptOutputV1, 2)}
			pairs[attempt.TrialID] = pair
		}
		if pair.class != attempt.TaskClass {
			return report, fmt.Errorf("student trial %q changes task class across arms", attempt.TrialID)
		}
		if _, duplicate := pair.values[attempt.Arm]; duplicate {
			return report, fmt.Errorf("student trial %q duplicates arm %s", attempt.TrialID, attempt.Arm)
		}
		pair.values[attempt.Arm] = attempt
	}
	var targetBase, targetExpo, transferBase, transferExpo, progressLift float64
	targetN, transferN := 0, 0
	for trialID, pair := range pairs {
		if len(pair.values) != 2 {
			return report, fmt.Errorf("student trial %q lacks a matched baseline/exposition pair", trialID)
		}
		base, baseOK := pair.values[domain.M7ArmBaseline]
		expo, expoOK := pair.values[domain.M7ArmExposition]
		if !baseOK || !expoOK {
			return report, fmt.Errorf("student trial %q lacks one required arm", trialID)
		}
		progressLift += expo.ProgressScore - base.ProgressScore
		switch pair.class {
		case domain.M7StudentTarget:
			targetBase += base.OutcomeScore
			targetExpo += expo.OutcomeScore
			targetN++
		case domain.M7StudentTransfer:
			transferBase += base.OutcomeScore
			transferExpo += expo.OutcomeScore
			transferN++
		}
	}
	if targetN == 0 || transferN == 0 {
		return report, errors.New("expositor: student evidence needs at least one matched target and transfer trial")
	}
	report.StudentTrialCount = len(pairs)
	report.StudentAttemptCount = len(manifest.StudentTrials)
	report.RecomputedTargetBaseline = targetBase / float64(targetN)
	report.RecomputedTargetExposition = targetExpo / float64(targetN)
	report.RecomputedTransferBaseline = transferBase / float64(transferN)
	report.RecomputedTransferExposition = transferExpo / float64(transferN)
	report.RecomputedProgressLift = progressLift / float64(len(pairs))
	if !sameFloat(report.RecomputedTargetBaseline, review.Student.TargetBaseline) ||
		!sameFloat(report.RecomputedTargetExposition, review.Student.TargetWithExposition) ||
		!sameFloat(report.RecomputedTransferBaseline, review.Student.TransferBaseline) ||
		!sameFloat(report.RecomputedTransferExposition, review.Student.TransferWithExposition) ||
		!sameFloat(report.RecomputedProgressLift, review.Student.ProgressLift) {
		return report, errors.New("expositor: recomputed student lift does not match the stored scalar summary")
	}

	// Check claimed aliases for duplicate labels, but never infer principal or
	// model independence from distinct strings. No external verifier is active.
	if err := validateReviewIndependence(review); err != nil {
		return report, err
	}
	report.IntegrityVerified = true
	if trustedIdentities == nil {
		report.Reasons = []string{
			"Raw inputs, outputs, run receipts, and student-attempt aggregates are integrity-bound.",
			"External identity and reviewer independence remain unauthenticated; model-name strings and embedded attestation fields are claims only.",
		}
		return report, nil
	}
	if err := validateM7PrincipalIndependence(principalsByRole); err != nil {
		return report, err
	}
	report.IdentityTrustRegistrySHA256 = trustedIdentities.SHA256()
	report.ExternalIdentityAuthenticated = true
	report.Disposition = M7AuditAuthenticated
	report.AuthenticatedPrincipals = orderedM7Principals(principalsByRole)
	report.Reasons = []string{
		"Every M7 role is pinned to exact run-receipt bytes and an independently assigned principal in the host-controlled identity registry.",
		"Principal identities are distinct across author, round-trip, canon, leakage, and student roles; embedded provider-attestation signatures are not independently verified by this registry.",
	}
	return report, nil
}

func validateM7PrincipalIndependence(principals map[domain.M7RunRole]string) error {
	roles := []domain.M7RunRole{
		domain.M7RunAuthor, domain.M7RunRoundTrip, domain.M7RunCanon,
		domain.M7RunLeakage, domain.M7RunStudentAttempt,
	}
	seen := make(map[string]domain.M7RunRole, len(roles))
	for _, role := range roles {
		principal := strings.TrimSpace(principals[role])
		if principal == "" {
			return fmt.Errorf("expositor: M7 %s principal is not authenticated", role)
		}
		if previous, duplicate := seen[principal]; duplicate {
			return fmt.Errorf("expositor: M7 %s principal is not independent of %s", role, previous)
		}
		seen[principal] = role
	}
	return nil
}

func orderedM7Principals(principals map[domain.M7RunRole]string) []M7AuthenticatedPrincipal {
	roles := []domain.M7RunRole{
		domain.M7RunAuthor, domain.M7RunRoundTrip, domain.M7RunCanon,
		domain.M7RunLeakage, domain.M7RunStudentAttempt,
	}
	result := make([]M7AuthenticatedPrincipal, 0, len(roles))
	for _, role := range roles {
		result = append(result, M7AuthenticatedPrincipal{Role: role, PrincipalID: principals[role]})
	}
	return result
}

func expectedM7Context(bundle Bundle, output TierOutput, review TierEvaluation, policy EvaluationPolicy, wordLimits WordLimits) (domain.M7OutputContext, error) {
	expositionSHA, err := expositionDigest(bundle, output)
	if err != nil {
		return domain.M7OutputContext{}, err
	}
	policySHA, err := policy.Digest()
	if err != nil {
		return domain.M7OutputContext{}, err
	}
	wordLimitsSHA, err := wordLimits.Digest()
	if err != nil {
		return domain.M7OutputContext{}, err
	}
	context := domain.M7OutputContext{
		ProblemID: bundle.ProblemID, Tier: output.Tier, ProofSHA256: bundle.ProofSHA256,
		ExpositionSHA256: expositionSHA, CanonSnapshotSHA256: bundle.CanonSnapshotSHA256,
		PolicySHA256: policySHA, WordLimit: wordLimits[output.Tier], WordLimitsSHA256: wordLimitsSHA,
	}
	if review.Tier != output.Tier || review.ProblemID != context.ProblemID || review.ProofSHA256 != context.ProofSHA256 ||
		review.ExpositionSHA256 != context.ExpositionSHA256 || review.CanonSnapshotSHA256 != context.CanonSnapshotSHA256 ||
		review.PolicySHA256 != context.PolicySHA256 || review.AuthorModelID != bundle.ExpositorModelID ||
		review.RoundTrip.ExpositionSHA256 != context.ExpositionSHA256 ||
		review.Canon.ExpositionSHA256 != context.ExpositionSHA256 || review.Canon.CanonSnapshotSHA256 != context.CanonSnapshotSHA256 ||
		review.Leakage.ExpositionSHA256 != context.ExpositionSHA256 || review.Leakage.ProofSHA256 != context.ProofSHA256 ||
		review.Student.ExpositionSHA256 != context.ExpositionSHA256 {
		return domain.M7OutputContext{}, errors.New("expositor: M7 review does not match exact problem/proof/exposition/canon/policy context")
	}
	return context, nil
}

func expectedM7BundleContext(context domain.M7OutputContext) domain.M7BundleOutputContext {
	return domain.M7BundleOutputContext{
		ProblemID: context.ProblemID, ProofSHA256: context.ProofSHA256,
		CanonSnapshotSHA256: context.CanonSnapshotSHA256, PolicySHA256: context.PolicySHA256,
		WordLimitsSHA256: context.WordLimitsSHA256,
	}
}

func contextForTier(context domain.M7OutputContext, tier domain.AudienceTier) domain.M7OutputContext {
	context.Tier = tier
	return context
}

func readEvidenceFile(fsys fs.FS, name string) ([]byte, error) {
	if err := validateEvidencePath(name); err != nil {
		return nil, err
	}
	return fs.ReadFile(fsys, name)
}

func validateEvidencePath(name string) error {
	if name == "" || strings.Contains(name, "\\") || strings.ContainsRune(name, 0) || !fs.ValidPath(name) || path.Clean(name) != name {
		return fmt.Errorf("unsafe M7 evidence path %q", name)
	}
	return nil
}

func decodeCanonicalJSON(data []byte, destination any) error {
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(destination); err != nil {
		return err
	}
	var trailing any
	if err := decoder.Decode(&trailing); !errors.Is(err, io.EOF) {
		if err == nil {
			return errors.New("trailing JSON value")
		}
		return err
	}
	canonical, err := json.Marshal(destination)
	if err != nil {
		return err
	}
	if !bytes.Equal(data, canonical) {
		return errors.New("JSON bytes are not canonical encoding")
	}
	return nil
}

func sha256Hex(data []byte) string {
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:])
}

func sameFloat(left, right float64) bool {
	return !math.IsNaN(left) && !math.IsInf(left, 0) && math.Abs(left-right) <= 1e-12
}

func equalStrings(left, right []string) bool {
	if len(left) != len(right) {
		return false
	}
	for index := range left {
		if left[index] != right[index] {
			return false
		}
	}
	return true
}

func equalMoveScores(left []domain.ExpositionMoveScore, right []MoveScore) bool {
	if len(left) != len(right) {
		return false
	}
	for index := range left {
		if left[index].Move != right[index].Move || left[index].Score != right[index].Score {
			return false
		}
	}
	return true
}
