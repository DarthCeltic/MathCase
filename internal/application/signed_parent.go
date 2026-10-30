package application

import (
	"context"
	"crypto/ed25519"
	"crypto/sha256"
	"encoding/hex"
	"errors"
	"fmt"
	"reflect"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/persistence"
	"github.com/DarthCeltic/MathCase/internal/poser"
)

// SignedPoseParentReference identifies one signed dossier and the exact
// catalog snapshot, theorem declaration, and proof bytes used as its M2 input.
type SignedPoseParentReference struct {
	CaseID              string
	DossierSHA256       string
	SignerID            string
	CatalogSnapshotPath string
	Catalog             catalog.Snapshot
	LeanDeclaration     string
	VerifiedProof       string
}

// SignedPoseParentLoader derives a poser parent only from a delivery-ready
// dossier whose signature matches an explicitly trusted signer key.
type SignedPoseParentLoader struct {
	Dossiers       *persistence.DossierStore
	TrustedSigners map[string]ed25519.PublicKey
	EvidencePaths  persistence.DossierEvidencePaths
}

// Load verifies the signed dossier and binds the catalog, rights, declaration,
// and exact proof bytes before returning a M2 parent. It intentionally trusts
// only V1/V2/V3 records inside the signed dossier; caller-supplied receipt JSON
// is never accepted as proof that a parent passed those gates.
func (l SignedPoseParentLoader) Load(ctx context.Context, reference SignedPoseParentReference) (poser.VerifiedTheorem, error) {
	if ctx == nil {
		return poser.VerifiedTheorem{}, errors.New("signed poser parent: context is required")
	}
	if l.Dossiers == nil {
		return poser.VerifiedTheorem{}, errors.New("signed poser parent: dossier store is required")
	}
	if err := ctx.Err(); err != nil {
		return poser.VerifiedTheorem{}, err
	}
	if err := reference.Catalog.Validate(); err != nil {
		return poser.VerifiedTheorem{}, fmt.Errorf("signed poser parent: invalid catalog snapshot: %w", err)
	}
	if strings.TrimSpace(reference.CatalogSnapshotPath) == "" {
		return poser.VerifiedTheorem{}, errors.New("signed poser parent: exact M0 catalog snapshot path is required")
	}
	unsigned, err := l.Dossiers.Get(ctx, reference.CaseID, reference.DossierSHA256)
	if err != nil {
		return poser.VerifiedTheorem{}, fmt.Errorf("signed poser parent: load dossier snapshot: %w", err)
	}
	evidencePaths := l.EvidencePaths
	evidencePaths.CatalogSnapshotPath = reference.CatalogSnapshotPath
	evidence, err := persistence.VerifyDossierEvidence(unsigned, evidencePaths)
	if err != nil {
		return poser.VerifiedTheorem{}, fmt.Errorf("signed poser parent: reopen M8 evidence: %w", err)
	}
	dossier, signedEvidence, err := l.Dossiers.GetVerifiedSigned(ctx, reference.CaseID, reference.DossierSHA256, reference.SignerID, l.TrustedSigners, evidence)
	if err != nil {
		return poser.VerifiedTheorem{}, fmt.Errorf("signed poser parent: open trusted dossier: %w", err)
	}
	if dossier.ProvenanceArtifactSHA256 != reference.Catalog.ContentSHA256 {
		return poser.VerifiedTheorem{}, errors.New("signed poser parent: catalog snapshot does not match the dossier's signed provenance artifact")
	}
	if dossier.CatalogSnapshotSHA256 != reference.Catalog.ContentSHA256 {
		return poser.VerifiedTheorem{}, errors.New("signed poser parent: catalog snapshot does not match the dossier's explicit M0 snapshot pin")
	}

	problem, found := catalogProblem(reference.Catalog, dossier.Problem.ID)
	if !found {
		return poser.VerifiedTheorem{}, errors.New("signed poser parent: catalog does not contain the dossier problem")
	}
	if problem.Status != catalog.StatusProven {
		return poser.VerifiedTheorem{}, errors.New("signed poser parent: catalog problem is not recorded as proven")
	}
	if !problem.StatementAudit.Passed || strings.TrimSpace(problem.StatementAudit.ReviewerID) == "" || strings.TrimSpace(problem.StatementAudit.EvidenceID) == "" {
		return poser.VerifiedTheorem{}, errors.New("signed poser parent: catalog statement has no passed human audit")
	}
	if problem.InformalStatement != dossier.Problem.Statement || problem.LeanStatement != dossier.Problem.LeanStatement {
		return poser.VerifiedTheorem{}, errors.New("signed poser parent: catalog statements differ from the signed dossier")
	}
	if !sameIdentifiers(problem.SourceIDs, dossier.Problem.SourceIDs) {
		return poser.VerifiedTheorem{}, errors.New("signed poser parent: catalog and dossier source identities differ")
	}
	if err := requireDerivativeSources(reference.Catalog, problem.SourceIDs); err != nil {
		return poser.VerifiedTheorem{}, err
	}

	proofDigest := digestText(reference.VerifiedProof)
	if strings.TrimSpace(reference.VerifiedProof) == "" {
		return poser.VerifiedTheorem{}, errors.New("signed poser parent: exact proof bytes are required")
	}
	if !hasPassingAttempt(dossier, proofDigest) {
		return poser.VerifiedTheorem{}, errors.New("signed poser parent: supplied proof bytes do not match a passing signed solver attempt")
	}
	statementDigest, err := domain.ProblemStatementDigest(dossier.Problem.ID, dossier.Problem.Statement, dossier.Problem.LeanStatement)
	if err != nil {
		return poser.VerifiedTheorem{}, fmt.Errorf("signed poser parent: hash signed statement: %w", err)
	}
	v1, err := signedVerification(dossier, domain.GateKernelBuild, statementDigest, proofDigest)
	if err != nil {
		return poser.VerifiedTheorem{}, err
	}
	v2, err := signedVerification(dossier, domain.GateAxiomAudit, statementDigest, proofDigest)
	if err != nil {
		return poser.VerifiedTheorem{}, err
	}
	v3, err := signedVerification(dossier, domain.GateStatementFidelity, statementDigest, "")
	if err != nil {
		return poser.VerifiedTheorem{}, err
	}

	theorem := poser.VerifiedTheorem{
		ProblemID:             dossier.Problem.ID,
		SourceIDs:             append([]string(nil), problem.SourceIDs...),
		SourceSnapshotSHA256:  reference.Catalog.ContentSHA256,
		SignedDossierCaseID:   reference.CaseID,
		SignedDossierSHA256:   reference.DossierSHA256,
		SignedDossierSignerID: reference.SignerID,
		InformalStatement:     dossier.Problem.Statement,
		LeanStatement:         reference.LeanDeclaration,
		ProofSHA256:           proofDigest,
		V1:                    v1,
		V2:                    v2,
		V3:                    v3,
	}
	formalProposition, err := theorem.FormalProposition()
	if err != nil {
		return poser.VerifiedTheorem{}, fmt.Errorf("signed poser parent: parse supplied Lean declaration: %w", err)
	}
	if formalProposition != dossier.Problem.LeanStatement {
		return poser.VerifiedTheorem{}, errors.New("signed poser parent: supplied Lean declaration does not express the exact signed proposition")
	}
	trustedTheorem, err := poser.TrustTheoremFromSignedDossier(theorem, dossier, signedEvidence)
	if err != nil {
		return poser.VerifiedTheorem{}, fmt.Errorf("signed poser parent: bind M2 parent to reopened signature and M8 evidence: %w", err)
	}
	return trustedTheorem, nil
}

// VerifiedPoseParents is an in-memory capability proving that every parent
// lineage of one proposal was reloaded from trusted signed dossiers. Its
// fields stay private so callers cannot construct a trusted value from JSON.
type VerifiedPoseParents struct {
	proposalID    string
	lineageSHA256 string
}

func (p VerifiedPoseParents) matches(proposal poser.Proposal) bool {
	return p.proposalID != "" && p.lineageSHA256 != "" &&
		p.proposalID == proposal.ID && p.lineageSHA256 == proposal.ParentLineageSHA256
}

// VerifyProposal reloads each exact signed parent and compares the derived
// lineage with the proposal's recorded parents. References must be supplied
// in proposal order; this also binds hybrid parent order.
func (l SignedPoseParentLoader) VerifyProposal(ctx context.Context, proposal poser.Proposal, references []SignedPoseParentReference) (VerifiedPoseParents, error) {
	if err := proposal.Validate(); err != nil {
		return VerifiedPoseParents{}, fmt.Errorf("signed poser parent: validate proposal: %w", err)
	}
	if len(references) != len(proposal.Parents) {
		return VerifiedPoseParents{}, fmt.Errorf("signed poser parent: got %d signed dossier references for %d proposal parents", len(references), len(proposal.Parents))
	}
	for index, reference := range references {
		theorem, err := l.Load(ctx, reference)
		if err != nil {
			return VerifiedPoseParents{}, fmt.Errorf("signed poser parent: verify parent %d: %w", index+1, err)
		}
		lineage, err := theorem.ParentLineage()
		if err != nil {
			return VerifiedPoseParents{}, fmt.Errorf("signed poser parent: derive parent %d lineage: %w", index+1, err)
		}
		if !reflect.DeepEqual(lineage, proposal.Parents[index]) {
			return VerifiedPoseParents{}, fmt.Errorf("signed poser parent: proposal parent %d does not match its trusted signed dossier", index+1)
		}
	}
	return VerifiedPoseParents{proposalID: proposal.ID, lineageSHA256: proposal.ParentLineageSHA256}, nil
}

func catalogProblem(snapshot catalog.Snapshot, problemID string) (catalog.Problem, bool) {
	for _, problem := range snapshot.Problems {
		if problem.ID == problemID {
			return problem, true
		}
	}
	return catalog.Problem{}, false
}

func requireDerivativeSources(snapshot catalog.Snapshot, sourceIDs []string) error {
	sources := make(map[string]catalog.SourceVersion, len(snapshot.Sources))
	for _, source := range snapshot.Sources {
		sources[source.ID] = source
	}
	for _, sourceID := range sourceIDs {
		source, found := sources[sourceID]
		if !found {
			return fmt.Errorf("signed poser parent: source %q is absent from the catalog snapshot", sourceID)
		}
		if !source.EligibleFor(catalog.UseLocalStorage) || !source.EligibleFor(catalog.UseDerivative) {
			return fmt.Errorf("signed poser parent: source %q lacks cleared local-storage and derivative rights", sourceID)
		}
	}
	return nil
}

func hasPassingAttempt(dossier domain.Dossier, proofDigest string) bool {
	for _, attempt := range dossier.Attempts {
		if attempt.ProblemID == dossier.Problem.ID && attempt.Outcome == domain.SolverOutcomePass && attempt.VerifiedProofSHA256 == proofDigest {
			return true
		}
	}
	return false
}

func signedVerification(dossier domain.Dossier, gate domain.VerificationGate, statementDigest, proofDigest string) (domain.VerificationRecord, error) {
	for _, record := range dossier.Verifications {
		if record.Gate != gate {
			continue
		}
		if record.Status != domain.VerificationPassed || record.ProblemID != dossier.Problem.ID || record.ProblemStatementSHA256 != statementDigest {
			return domain.VerificationRecord{}, fmt.Errorf("signed poser parent: signed %s record is not a passing record for the exact problem statement", gate)
		}
		if proofDigest != "" && record.ProofSHA256 != proofDigest {
			return domain.VerificationRecord{}, fmt.Errorf("signed poser parent: signed %s record does not bind the supplied proof", gate)
		}
		return record, nil
	}
	return domain.VerificationRecord{}, fmt.Errorf("signed poser parent: signed dossier has no %s record", gate)
}

func sameIdentifiers(left, right []string) bool {
	if len(left) != len(right) {
		return false
	}
	seen := make(map[string]int, len(left))
	for _, id := range left {
		seen[id]++
	}
	for _, id := range right {
		seen[id]--
	}
	for _, count := range seen {
		if count != 0 {
			return false
		}
	}
	return true
}

func digestText(value string) string {
	digest := sha256.Sum256([]byte(value))
	return hex.EncodeToString(digest[:])
}
