package persistence

import (
	"bytes"
	"context"
	jsonv2 "encoding/json/v2"
	"errors"
	"fmt"
	"io"
	"io/fs"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/expositor"
	"github.com/DarthCeltic/MathCase/internal/fsutil"
)

const (
	expositionPairEvidenceSchema   = "mathcase-exposition-pair-evidence-v1"
	expositionPairEvidenceDir      = "exposition-pairs"
	maxExpositionPairEvidenceBytes = 64 << 20
)

// ExpositionPairCandidateEvidence carries the caller's typed M7 context and
// the complete referenced evidence tree for one candidate. M7 remains
// integrity-only: this object does not authenticate provider identity or
// provider-input clearance.
type ExpositionPairCandidateEvidence struct {
	Bundle        expositor.Bundle         `json:"bundle"`
	Review        expositor.TierEvaluation `json:"review"`
	ManifestPath  string                   `json:"manifest_path"`
	EvidenceFiles map[string][]byte        `json:"evidence_files"`
}

// ExpositionPairEvidenceArtifact binds one domain pair to the M0 snapshot and
// two independently reopened M7 evidence trees. It is candidate-only data;
// acceptance, reviewer identity, and training eligibility are never inferred.
type ExpositionPairEvidenceArtifact struct {
	SchemaVersion        string                          `json:"schema_version"`
	Record               domain.ExpositionPairRecord     `json:"record"`
	CatalogSnapshotBytes []byte                          `json:"catalog_snapshot_bytes"`
	Policy               expositor.EvaluationPolicy      `json:"policy"`
	WordLimits           expositor.WordLimits            `json:"word_limits"`
	CandidateX           ExpositionPairCandidateEvidence `json:"candidate_x"`
	CandidateY           ExpositionPairCandidateEvidence `json:"candidate_y"`
}

// ExpositionPairEvidenceAuditReport states only what the local readers proved.
// Provider clearance and external reviewer identity remain unauthenticated.
type ExpositionPairEvidenceAuditReport struct {
	Disposition                    string                               `json:"disposition"`
	IntegrityVerified              bool                                 `json:"integrity_verified"`
	ExternalIdentityAuthenticated  bool                                 `json:"external_identity_authenticated"`
	ProviderInputClearanceVerified bool                                 `json:"provider_input_clearance_verified"`
	TrainingEligible               bool                                 `json:"training_eligible"`
	CatalogSnapshotSHA256          string                               `json:"catalog_snapshot_sha256"`
	Candidates                     []ExpositionPairCandidateAuditReport `json:"candidates"`
}

type ExpositionPairCandidateAuditReport struct {
	CandidateID       string                       `json:"candidate_id"`
	ManifestSHA256    string                       `json:"manifest_sha256"`
	AuthorRunID       string                       `json:"author_run_id"`
	RoundTripRunID    string                       `json:"round_trip_run_id"`
	CanonRunID        string                       `json:"canon_run_id"`
	M7Disposition     expositor.M7AuditDisposition `json:"m7_disposition"`
	IntegrityVerified bool                         `json:"integrity_verified"`
}

// ExpositionPairEvidenceReceipt identifies an immutable local artifact. Its
// state fields explicitly prevent integrity checks from being read as M7
// acceptance, clearance, identity authentication, or training authorization.
type ExpositionPairEvidenceReceipt struct {
	RecordID                       string `json:"record_id"`
	ContentSHA256                  string `json:"content_sha256"`
	RelativePath                   string `json:"relative_path"`
	Size                           int64  `json:"size"`
	Disposition                    string `json:"disposition"`
	IntegrityVerified              bool   `json:"integrity_verified"`
	ExternalIdentityAuthenticated  bool   `json:"external_identity_authenticated"`
	ProviderInputClearanceVerified bool   `json:"provider_input_clearance_verified"`
	TrainingEligible               bool   `json:"training_eligible"`
}

type ExpositionPairEvidenceStore struct {
	root string
}

func NewExpositionPairEvidenceStore(root string) (*ExpositionPairEvidenceStore, error) {
	if strings.TrimSpace(root) == "" {
		return nil, errors.New("persistence: exposition-pair evidence root is required")
	}
	if err := os.MkdirAll(root, 0o700); err != nil {
		return nil, fmt.Errorf("persistence: create exposition-pair evidence root: %w", err)
	}
	canonical, err := fsutil.CanonicalPath(root)
	if err != nil {
		return nil, fmt.Errorf("persistence: resolve exposition-pair evidence root: %w", err)
	}
	info, err := os.Lstat(canonical)
	if err != nil {
		return nil, fmt.Errorf("persistence: inspect exposition-pair evidence root: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return nil, errors.New("persistence: exposition-pair evidence root is not a regular directory")
	}
	return &ExpositionPairEvidenceStore{root: canonical}, nil
}

// Audit reopens the embedded M0 snapshot and both candidate evidence trees.
// The resulting integrity proof is deliberately BLOCKED for identity and
// provider-clearance purposes, and never makes a pair training eligible.
func (a ExpositionPairEvidenceArtifact) Audit(ctx context.Context) (ExpositionPairEvidenceAuditReport, error) {
	report := ExpositionPairEvidenceAuditReport{
		Disposition:                    "INTEGRITY_VERIFIED_IDENTITY_BLOCKED_CANDIDATE_ONLY",
		ExternalIdentityAuthenticated:  false,
		ProviderInputClearanceVerified: false,
		TrainingEligible:               false,
		Candidates:                     []ExpositionPairCandidateAuditReport{},
	}
	if ctx == nil {
		return report, errors.New("persistence: exposition-pair evidence context is required")
	}
	if err := ctx.Err(); err != nil {
		return report, err
	}
	if a.SchemaVersion != expositionPairEvidenceSchema {
		return report, errors.New("persistence: unsupported exposition-pair evidence schema")
	}
	if err := a.Record.Validate(); err != nil {
		return report, fmt.Errorf("persistence: invalid exposition-pair record: %w", err)
	}
	if len(a.CatalogSnapshotBytes) == 0 || len(a.CatalogSnapshotBytes) > 16<<20 {
		return report, errors.New("persistence: exposition-pair M0 snapshot is empty or exceeds its size limit")
	}
	var snapshot catalog.Snapshot
	if err := decodeStrictEvidenceJSON(a.CatalogSnapshotBytes, &snapshot); err != nil {
		return report, fmt.Errorf("persistence: decode exposition-pair M0 snapshot: %w", err)
	}
	if err := snapshot.Validate(); err != nil {
		return report, fmt.Errorf("persistence: validate exposition-pair M0 snapshot: %w", err)
	}
	if snapshot.ContentSHA256 != a.Record.CatalogSnapshotSHA256 {
		return report, errors.New("persistence: exposition-pair record is not bound to the embedded M0 snapshot")
	}
	if _, found := expositionCatalogProblem(snapshot, a.Record.ProblemID); !found {
		return report, fmt.Errorf("persistence: exposition-pair problem %q is absent from M0", a.Record.ProblemID)
	}
	policyDigest, err := a.Policy.Digest()
	if err != nil {
		return report, fmt.Errorf("persistence: digest exposition-pair evaluation policy: %w", err)
	}
	if err := a.Policy.Validate(); err != nil {
		return report, fmt.Errorf("persistence: invalid exposition-pair evaluation policy: %w", err)
	}
	if policyDigest != a.Record.EvaluationPolicySHA256 {
		return report, errors.New("persistence: exposition-pair policy digest does not match the record")
	}
	if err := a.WordLimits.Validate(); err != nil {
		return report, fmt.Errorf("persistence: invalid exposition-pair word limits: %w", err)
	}

	xAudit, xRuns, err := auditExpositionPairCandidate(ctx, "X", a.Record.CandidateX, a, a.CandidateX)
	if err != nil {
		return report, fmt.Errorf("persistence: candidate X: %w", err)
	}
	yAudit, yRuns, err := auditExpositionPairCandidate(ctx, "Y", a.Record.CandidateY, a, a.CandidateY)
	if err != nil {
		return report, fmt.Errorf("persistence: candidate Y: %w", err)
	}
	seenRuns := make(map[string]string, len(xRuns)+len(yRuns))
	for _, candidateRuns := range []struct {
		candidate string
		runs      []string
	}{{candidate: "X", runs: xRuns}, {candidate: "Y", runs: yRuns}} {
		for _, runID := range candidateRuns.runs {
			if previous, exists := seenRuns[runID]; exists {
				return report, fmt.Errorf("persistence: M7 run %q is reused by candidate %s and candidate %s", runID, previous, candidateRuns.candidate)
			}
			seenRuns[runID] = candidateRuns.candidate
		}
	}
	if err := ctx.Err(); err != nil {
		return report, err
	}
	report.IntegrityVerified = true
	report.CatalogSnapshotSHA256 = snapshot.ContentSHA256
	report.Candidates = []ExpositionPairCandidateAuditReport{xAudit, yAudit}
	return report, nil
}

// Put writes one immutable content-addressed pair evidence object. It encodes
// first, reopens that exact byte snapshot for validation, then atomically links
// it into the private store. Revisions naturally receive new content hashes.
func (s *ExpositionPairEvidenceStore) Put(ctx context.Context, artifact ExpositionPairEvidenceArtifact) (ExpositionPairEvidenceReceipt, error) {
	if s == nil || s.root == "" {
		return ExpositionPairEvidenceReceipt{}, errors.New("persistence: exposition-pair evidence store is nil")
	}
	if ctx == nil {
		return ExpositionPairEvidenceReceipt{}, errors.New("persistence: context is required")
	}
	if err := ctx.Err(); err != nil {
		return ExpositionPairEvidenceReceipt{}, err
	}
	body, err := jsonv2.Marshal(artifact, jsonv2.Deterministic(true))
	if err != nil {
		return ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: encode exposition-pair evidence: %w", err)
	}
	if len(body) == 0 || len(body) > maxExpositionPairEvidenceBytes {
		return ExpositionPairEvidenceReceipt{}, errors.New("persistence: exposition-pair evidence size is invalid")
	}
	var encoded ExpositionPairEvidenceArtifact
	if err := jsonv2.Unmarshal(body, &encoded, jsonv2.RejectUnknownMembers(true)); err != nil {
		return ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: reopen encoded exposition-pair evidence: %w", err)
	}
	report, err := encoded.Audit(ctx)
	if err != nil {
		return ExpositionPairEvidenceReceipt{}, err
	}
	if !report.IntegrityVerified || report.ExternalIdentityAuthenticated || report.ProviderInputClearanceVerified || report.TrainingEligible {
		return ExpositionPairEvidenceReceipt{}, errors.New("persistence: exposition-pair audit returned an invalid integrity-only state")
	}
	digest := sha256Hex(body)
	directory := filepath.Join(s.root, expositionPairEvidenceDir)
	if err := ensureDirectory(directory); err != nil {
		return ExpositionPairEvidenceReceipt{}, err
	}
	target := filepath.Join(directory, digest+".json")
	if receipt, ok, err := s.verifyExisting(ctx, target, digest); err != nil || ok {
		return receipt, err
	}
	if err := ctx.Err(); err != nil {
		return ExpositionPairEvidenceReceipt{}, err
	}
	temp, err := os.CreateTemp(directory, ".mathcase-exposition-pair-*.tmp")
	if err != nil {
		return ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: create exposition-pair temporary file: %w", err)
	}
	tempPath := temp.Name()
	defer func() { _ = os.Remove(tempPath) }()
	if err := temp.Chmod(0o600); err != nil {
		_ = temp.Close()
		return ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: restrict exposition-pair evidence: %w", err)
	}
	if err := writeAll(temp, body); err != nil {
		_ = temp.Close()
		return ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: write exposition-pair evidence: %w", err)
	}
	if err := temp.Sync(); err != nil {
		_ = temp.Close()
		return ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: sync exposition-pair evidence: %w", err)
	}
	if err := temp.Close(); err != nil {
		return ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: close exposition-pair evidence: %w", err)
	}
	if err := ctx.Err(); err != nil {
		return ExpositionPairEvidenceReceipt{}, err
	}
	if err := os.Link(tempPath, target); err != nil {
		if receipt, ok, verifyErr := s.verifyExisting(ctx, target, digest); verifyErr == nil && ok {
			return receipt, nil
		}
		return ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: append exposition-pair evidence: %w", err)
	}
	if err := os.Remove(tempPath); err != nil {
		return ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: remove exposition-pair temporary link: %w", err)
	}
	if runtime.GOOS != "windows" {
		directoryFile, err := os.Open(directory)
		if err != nil {
			return ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: open exposition-pair directory: %w", err)
		}
		syncErr := directoryFile.Sync()
		closeErr := directoryFile.Close()
		if syncErr != nil {
			return ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: sync exposition-pair directory: %w", syncErr)
		}
		if closeErr != nil {
			return ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: close exposition-pair directory: %w", closeErr)
		}
	}
	return expositionPairReceipt(s.root, target, digest, int64(len(body)), encoded.Record.RecordID), nil
}

// Get reopens an exact content-addressed artifact and repeats all M0/M7 checks.
func (s *ExpositionPairEvidenceStore) Get(ctx context.Context, digest string) (ExpositionPairEvidenceArtifact, ExpositionPairEvidenceReceipt, error) {
	if s == nil || s.root == "" {
		return ExpositionPairEvidenceArtifact{}, ExpositionPairEvidenceReceipt{}, errors.New("persistence: exposition-pair evidence store is nil")
	}
	if ctx == nil {
		return ExpositionPairEvidenceArtifact{}, ExpositionPairEvidenceReceipt{}, errors.New("persistence: context is required")
	}
	if !validSHA256(digest) {
		return ExpositionPairEvidenceArtifact{}, ExpositionPairEvidenceReceipt{}, errors.New("persistence: exposition-pair digest must be canonical SHA-256 hex")
	}
	if err := ctx.Err(); err != nil {
		return ExpositionPairEvidenceArtifact{}, ExpositionPairEvidenceReceipt{}, err
	}
	directory := filepath.Join(s.root, expositionPairEvidenceDir)
	if err := checkDirectory(directory); err != nil {
		return ExpositionPairEvidenceArtifact{}, ExpositionPairEvidenceReceipt{}, err
	}
	path := filepath.Join(directory, digest+".json")
	if err := ensureContained(s.root, path); err != nil {
		return ExpositionPairEvidenceArtifact{}, ExpositionPairEvidenceReceipt{}, err
	}
	file, err := openRegular(path)
	if err != nil {
		return ExpositionPairEvidenceArtifact{}, ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: open exposition-pair evidence: %w", err)
	}
	defer file.Close()
	body, err := io.ReadAll(io.LimitReader(file, maxExpositionPairEvidenceBytes+1))
	if err != nil {
		return ExpositionPairEvidenceArtifact{}, ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: read exposition-pair evidence: %w", err)
	}
	if len(body) == 0 || len(body) > maxExpositionPairEvidenceBytes || sha256Hex(body) != digest {
		return ExpositionPairEvidenceArtifact{}, ExpositionPairEvidenceReceipt{}, errors.New("persistence: exposition-pair evidence content hash or size is invalid")
	}
	var artifact ExpositionPairEvidenceArtifact
	if err := jsonv2.Unmarshal(body, &artifact, jsonv2.RejectUnknownMembers(true)); err != nil {
		return ExpositionPairEvidenceArtifact{}, ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: decode exposition-pair evidence: %w", err)
	}
	report, err := artifact.Audit(ctx)
	if err != nil {
		return ExpositionPairEvidenceArtifact{}, ExpositionPairEvidenceReceipt{}, fmt.Errorf("persistence: reopened exposition-pair evidence is invalid: %w", err)
	}
	if !report.IntegrityVerified || report.ExternalIdentityAuthenticated || report.ProviderInputClearanceVerified || report.TrainingEligible {
		return ExpositionPairEvidenceArtifact{}, ExpositionPairEvidenceReceipt{}, errors.New("persistence: reopened exposition-pair audit returned an invalid integrity-only state")
	}
	return artifact, expositionPairReceipt(s.root, path, digest, int64(len(body)), artifact.Record.RecordID), nil
}

func (s *ExpositionPairEvidenceStore) verifyExisting(ctx context.Context, target, digest string) (ExpositionPairEvidenceReceipt, bool, error) {
	if err := ctx.Err(); err != nil {
		return ExpositionPairEvidenceReceipt{}, false, err
	}
	file, err := openRegular(target)
	if errors.Is(err, os.ErrNotExist) {
		return ExpositionPairEvidenceReceipt{}, false, nil
	}
	if err != nil {
		return ExpositionPairEvidenceReceipt{}, false, err
	}
	defer file.Close()
	body, err := io.ReadAll(io.LimitReader(file, maxExpositionPairEvidenceBytes+1))
	if err != nil {
		return ExpositionPairEvidenceReceipt{}, false, err
	}
	if len(body) == 0 || len(body) > maxExpositionPairEvidenceBytes || sha256Hex(body) != digest {
		return ExpositionPairEvidenceReceipt{}, false, errors.New("persistence: existing exposition-pair evidence does not match its content address")
	}
	var artifact ExpositionPairEvidenceArtifact
	if err := jsonv2.Unmarshal(body, &artifact, jsonv2.RejectUnknownMembers(true)); err != nil {
		return ExpositionPairEvidenceReceipt{}, false, fmt.Errorf("persistence: decode existing exposition-pair evidence: %w", err)
	}
	report, err := artifact.Audit(ctx)
	if err != nil {
		return ExpositionPairEvidenceReceipt{}, false, fmt.Errorf("persistence: existing exposition-pair evidence is invalid: %w", err)
	}
	if !report.IntegrityVerified || report.ExternalIdentityAuthenticated || report.ProviderInputClearanceVerified || report.TrainingEligible {
		return ExpositionPairEvidenceReceipt{}, false, errors.New("persistence: existing exposition-pair audit returned an invalid integrity-only state")
	}
	return expositionPairReceipt(s.root, target, digest, int64(len(body)), artifact.Record.RecordID), true, nil
}

func auditExpositionPairCandidate(
	ctx context.Context,
	name string,
	pairCandidate domain.ExpositionPairCandidate,
	artifact ExpositionPairEvidenceArtifact,
	evidence ExpositionPairCandidateEvidence,
) (ExpositionPairCandidateAuditReport, []string, error) {
	var empty ExpositionPairCandidateAuditReport
	if err := ctx.Err(); err != nil {
		return empty, nil, err
	}
	if evidence.Bundle.ProblemID != artifact.Record.ProblemID || evidence.Bundle.ProofSHA256 != artifact.Record.ProofSHA256 ||
		evidence.Bundle.CanonSnapshotSHA256 != artifact.Record.CanonSnapshotSHA256 {
		return empty, nil, errors.New("M7 bundle does not match the pair problem, proof, or canon snapshot")
	}
	if evidence.Review.Tier != artifact.Record.Tier || evidence.Review.ProblemID != artifact.Record.ProblemID ||
		evidence.Review.ProofSHA256 != artifact.Record.ProofSHA256 || evidence.Review.CanonSnapshotSHA256 != artifact.Record.CanonSnapshotSHA256 ||
		evidence.Review.PolicySHA256 != artifact.Record.EvaluationPolicySHA256 || evidence.Review.Accepted || evidence.Review.Score != 0 {
		return empty, nil, errors.New("M7 review is mismatched or carries an unverified acceptance claim")
	}
	if strings.TrimSpace(evidence.ManifestPath) == "" || len(evidence.EvidenceFiles) == 0 {
		return empty, nil, errors.New("M7 manifest path and embedded evidence files are required")
	}
	if err := validateExpositionPairEvidenceFileBudget(evidence.EvidenceFiles); err != nil {
		return empty, nil, err
	}
	evidenceFS := expositionPairMemoryFS(evidence.EvidenceFiles)
	output, found := expositionTierOutput(evidence.Bundle, artifact.Record.Tier)
	if !found {
		return empty, nil, errors.New("M7 bundle does not contain the pair audience tier")
	}
	if err := evidence.Bundle.Validate(artifact.WordLimits); err != nil {
		return empty, nil, fmt.Errorf("validate exact M7 author bundle: %w", err)
	}
	expositionSHA, err := domain.ExpositionDigest(domain.Exposition{
		Tier: output.Tier, Text: output.Render(), CoreInsightID: output.CoreInsightID,
		CoreInsight: output.CoreInsightSentence, ProofRef: evidence.Bundle.ProofSHA256,
	})
	if err != nil {
		return empty, nil, err
	}
	if pairCandidate.ExpositionSHA256 != expositionSHA || evidence.Review.ExpositionSHA256 != expositionSHA ||
		pairCandidate.AuthorModelID != evidence.Bundle.ExpositorModelID || pairCandidate.AuthorModelVersion != evidence.Bundle.ExpositorVersion {
		return empty, nil, errors.New("pair exposition digest or author identity does not match exact M7 bundle")
	}
	if evidence.Review.EvidenceManifestPath != evidence.ManifestPath {
		return empty, nil, errors.New("M7 review manifest path does not match the embedded manifest")
	}
	M7Report, err := expositor.AuditM7Evidence(evidenceFS, evidence.ManifestPath, evidence.Bundle, output,
		evidence.Review, artifact.Policy, artifact.WordLimits)
	if err != nil {
		return empty, nil, fmt.Errorf("reopen typed M7 evidence: %w", err)
	}
	if !M7Report.IntegrityVerified || M7Report.Disposition != expositor.M7AuditBlocked || M7Report.ExternalIdentityAuthenticated {
		return empty, nil, errors.New("M7 evidence did not return the required integrity-only BLOCKED state")
	}
	if evidence.Review.EvidenceManifestSHA256 != M7Report.ManifestSHA256 {
		return empty, nil, errors.New("M7 review manifest digest does not match reopened manifest bytes")
	}
	manifest, receipts, err := readExpositionPairBindings(evidenceFS, evidence.ManifestPath)
	if err != nil {
		return empty, nil, err
	}
	if M7Report.AuthorRunID != receipts[domain.M7RunAuthor].RunID || pairCandidate.AuthorRunReceiptID != receipts[domain.M7RunAuthor].RunID {
		return empty, nil, errors.New("pair author receipt ID does not match reopened M7 author run")
	}
	if err := comparePairRoundTrip(pairCandidate.RoundTrip, evidence.Review.RoundTrip, manifest.RoundTrip, receipts[domain.M7RunRoundTrip]); err != nil {
		return empty, nil, err
	}
	if err := comparePairCanon(pairCandidate.Canon, evidence.Review.Canon, manifest.Canon, receipts[domain.M7RunCanon]); err != nil {
		return empty, nil, err
	}
	if err := validateExpositionPairEvidenceFilesExactly(evidence, manifest, receipts); err != nil {
		return empty, nil, err
	}
	runs := make([]string, 0, 4+len(manifest.StudentTrials))
	for _, role := range []domain.M7RunRole{domain.M7RunAuthor, domain.M7RunRoundTrip, domain.M7RunCanon, domain.M7RunLeakage} {
		runs = append(runs, receipts[role].RunID)
	}
	for _, binding := range manifest.StudentTrials {
		var receipt domain.M7RunReceiptV2
		if err := decodeStrictEvidenceJSON(evidence.EvidenceFiles[binding.RunReceiptPath], &receipt); err != nil {
			return empty, nil, fmt.Errorf("decode student run receipt %q: %w", binding.RunReceiptPath, err)
		}
		runs = append(runs, receipt.RunID)
	}
	return ExpositionPairCandidateAuditReport{
		CandidateID: pairCandidate.CandidateID, ManifestSHA256: M7Report.ManifestSHA256,
		AuthorRunID: M7Report.AuthorRunID, RoundTripRunID: receipts[domain.M7RunRoundTrip].RunID,
		CanonRunID: receipts[domain.M7RunCanon].RunID, M7Disposition: M7Report.Disposition,
		IntegrityVerified: M7Report.IntegrityVerified,
	}, runs, nil
}

func comparePairRoundTrip(pair domain.ExpositionPairRoundTrip, review expositor.RoundTripReview, binding domain.M7ArtifactBinding, receipt domain.M7RunReceiptV2) error {
	if pair.Score != review.Score || !equalExpositionPairStrings(pair.RequiredFacts, review.RequiredFacts) ||
		!equalExpositionPairStrings(pair.RecoveredFacts, review.RecoveredFacts) || pair.ModelID != review.ModelID ||
		pair.ModelVersion != review.ModelVersion || pair.Frozen != review.Frozen || pair.EvidenceID != review.EvidenceID ||
		pair.EvidenceID != binding.ID || pair.EvidenceSHA256 != binding.OutputSHA256 || pair.RunReceiptID != receipt.RunID {
		return errors.New("pair round-trip fields do not match reopened typed M7 observation, output digest, and run")
	}
	return nil
}

func comparePairCanon(pair domain.ExpositionPairCanon, review expositor.CanonReview, binding domain.M7ArtifactBinding, receipt domain.M7RunReceiptV2) error {
	if pair.ModelID != review.ModelID || pair.ModelVersion != review.ModelVersion || pair.Frozen != review.Frozen ||
		pair.EvidenceID != review.EvidenceID || pair.EvidenceID != binding.ID || pair.EvidenceSHA256 != binding.OutputSHA256 ||
		pair.RunReceiptID != receipt.RunID || len(pair.Scores) != len(review.Scores) {
		return errors.New("pair canon identity, evidence, or run linkage does not match reopened M7 evidence")
	}
	for index := range pair.Scores {
		if pair.Scores[index].Move != review.Scores[index].Move || pair.Scores[index].Score != review.Scores[index].Score {
			return errors.New("pair canon rubric does not match reopened typed M7 observation")
		}
	}
	return nil
}

func readExpositionPairBindings(evidenceFS fs.FS, manifestPath string) (domain.M7EvidenceManifestV1, map[domain.M7RunRole]domain.M7RunReceiptV2, error) {
	var manifest domain.M7EvidenceManifestV1
	manifestBytes, err := fs.ReadFile(evidenceFS, manifestPath)
	if err != nil {
		return manifest, nil, fmt.Errorf("read M7 manifest for pair linkage: %w", err)
	}
	if err := decodeStrictEvidenceJSON(manifestBytes, &manifest); err != nil {
		return manifest, nil, fmt.Errorf("decode M7 manifest for pair linkage: %w", err)
	}
	bindings := []domain.M7ArtifactBinding{manifest.Author, manifest.RoundTrip, manifest.Canon, manifest.Leakage}
	for _, binding := range manifest.StudentTrials {
		bindings = append(bindings, binding)
	}
	receipts := make(map[domain.M7RunRole]domain.M7RunReceiptV2, len(bindings))
	for _, binding := range bindings {
		if binding.Role == domain.M7RunStudentAttempt {
			continue
		}
		if _, duplicate := receipts[binding.Role]; duplicate {
			return manifest, nil, fmt.Errorf("duplicate M7 role %q in manifest", binding.Role)
		}
		var receipt domain.M7RunReceiptV2
		receiptBytes, err := fs.ReadFile(evidenceFS, binding.RunReceiptPath)
		if err != nil {
			return manifest, nil, fmt.Errorf("read M7 %s receipt: %w", binding.Role, err)
		}
		if err := decodeStrictEvidenceJSON(receiptBytes, &receipt); err != nil {
			return manifest, nil, fmt.Errorf("decode M7 %s receipt: %w", binding.Role, err)
		}
		receipts[binding.Role] = receipt
	}
	return manifest, receipts, nil
}

func validateExpositionPairEvidenceFilesExactly(evidence ExpositionPairCandidateEvidence, manifest domain.M7EvidenceManifestV1, receipts map[domain.M7RunRole]domain.M7RunReceiptV2) error {
	expected := map[string]struct{}{evidence.ManifestPath: {}}
	bindings := []domain.M7ArtifactBinding{manifest.Author, manifest.RoundTrip, manifest.Canon, manifest.Leakage}
	bindings = append(bindings, manifest.StudentTrials...)
	for _, binding := range bindings {
		receiptBytes, found := evidence.EvidenceFiles[binding.RunReceiptPath]
		if !found || len(receiptBytes) == 0 {
			return fmt.Errorf("missing M7 run receipt bytes for %q", binding.ID)
		}
		var receipt domain.M7RunReceiptV2
		if err := decodeStrictEvidenceJSON(receiptBytes, &receipt); err != nil {
			return fmt.Errorf("decode M7 run receipt for %q: %w", binding.ID, err)
		}
		expected[binding.RunReceiptPath] = struct{}{}
		expected[receipt.InputPath] = struct{}{}
		expected[binding.OutputPath] = struct{}{}
		if binding.Role != domain.M7RunStudentAttempt {
			validated, ok := receipts[binding.Role]
			if !ok || validated.RunID != receipt.RunID {
				return fmt.Errorf("M7 %s run receipt differs between evidence checks", binding.Role)
			}
		}
	}
	if len(expected) != len(evidence.EvidenceFiles) {
		return errors.New("M7 evidence file set contains missing or unreferenced bytes")
	}
	for path := range expected {
		if _, found := evidence.EvidenceFiles[path]; !found {
			return fmt.Errorf("M7 evidence file set is missing referenced path %q", path)
		}
	}
	return nil
}

func validateExpositionPairEvidenceFileBudget(files map[string][]byte) error {
	if len(files) == 0 || len(files) > 512 {
		return errors.New("M7 evidence file count is empty or exceeds its limit")
	}
	var total int64
	for name, data := range files {
		if name == "" || name == "." || !fs.ValidPath(name) || strings.Contains(name, "\\") || strings.ContainsRune(name, 0) {
			return fmt.Errorf("unsafe embedded M7 evidence path %q", name)
		}
		if len(data) == 0 {
			return fmt.Errorf("embedded M7 evidence file %q is empty", name)
		}
		total += int64(len(data))
		if total > maxExpositionPairEvidenceBytes {
			return errors.New("embedded M7 evidence exceeds its size limit")
		}
	}
	return nil
}

func expositionTierOutput(bundle expositor.Bundle, tier domain.AudienceTier) (expositor.TierOutput, bool) {
	for _, output := range bundle.Tiers {
		if output.Tier == tier {
			return output, true
		}
	}
	return expositor.TierOutput{}, false
}

func expositionCatalogProblem(snapshot catalog.Snapshot, problemID string) (catalog.Problem, bool) {
	for _, problem := range snapshot.Problems {
		if problem.ID == problemID {
			return problem, true
		}
	}
	return catalog.Problem{}, false
}

func equalExpositionPairStrings(left, right []string) bool {
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

func expositionPairReceipt(root, path, digest string, size int64, recordID string) ExpositionPairEvidenceReceipt {
	relative, _ := filepath.Rel(root, path)
	return ExpositionPairEvidenceReceipt{
		RecordID: recordID, ContentSHA256: digest, RelativePath: filepath.ToSlash(relative), Size: size,
		Disposition: "INTEGRITY_VERIFIED_IDENTITY_BLOCKED_CANDIDATE_ONLY", IntegrityVerified: true,
		ExternalIdentityAuthenticated: false, ProviderInputClearanceVerified: false, TrainingEligible: false,
	}
}

type expositionPairMemoryFS map[string][]byte

func (m expositionPairMemoryFS) Open(name string) (fs.File, error) {
	if name == "" || name == "." || !fs.ValidPath(name) {
		return nil, &fs.PathError{Op: "open", Path: name, Err: fs.ErrInvalid}
	}
	data, ok := m[name]
	if !ok {
		return nil, &fs.PathError{Op: "open", Path: name, Err: fs.ErrNotExist}
	}
	return &expositionPairMemoryFile{name: filepath.Base(name), reader: bytes.NewReader(data), size: int64(len(data))}, nil
}

type expositionPairMemoryFile struct {
	name   string
	reader *bytes.Reader
	size   int64
}

func (f *expositionPairMemoryFile) Read(p []byte) (int, error) { return f.reader.Read(p) }
func (f *expositionPairMemoryFile) Close() error               { return nil }
func (f *expositionPairMemoryFile) Stat() (fs.FileInfo, error) {
	return expositionPairMemoryFileInfo{name: f.name, size: f.size}, nil
}

type expositionPairMemoryFileInfo struct {
	name string
	size int64
}

func (i expositionPairMemoryFileInfo) Name() string       { return i.name }
func (i expositionPairMemoryFileInfo) Size() int64        { return i.size }
func (i expositionPairMemoryFileInfo) Mode() fs.FileMode  { return 0o400 }
func (i expositionPairMemoryFileInfo) ModTime() time.Time { return time.Time{} }
func (i expositionPairMemoryFileInfo) IsDir() bool        { return false }
func (i expositionPairMemoryFileInfo) Sys() any           { return nil }

var _ fs.FS = expositionPairMemoryFS{}
var _ fs.File = (*expositionPairMemoryFile)(nil)
var _ fs.FileInfo = expositionPairMemoryFileInfo{}
