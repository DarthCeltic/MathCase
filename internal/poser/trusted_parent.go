package poser

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"reflect"
	"sort"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/persistence"
)

// TrustTheoremFromSignedDossier binds a parent theorem to an exact dossier
// whose detached signature and M8 evidence were reopened by DossierStore.
// Caller-authored theorem JSON cannot populate the private trust binding.
func TrustTheoremFromSignedDossier(theorem VerifiedTheorem, dossier domain.Dossier, evidence persistence.VerifiedSignedDossier) (VerifiedTheorem, error) {
	if !evidence.MatchesDossier(dossier) {
		return VerifiedTheorem{}, errors.New("poser: signed parent capability does not match the reopened dossier")
	}
	if theorem.SignedDossierCaseID != evidence.CaseID() || theorem.SignedDossierSHA256 != evidence.DossierSHA256() || theorem.SignedDossierSignerID != evidence.SignerID() {
		return VerifiedTheorem{}, errors.New("poser: parent signed-dossier identity differs from the verified signature capability")
	}
	if err := validateTheoremAgainstDossier(theorem, dossier); err != nil {
		return VerifiedTheorem{}, err
	}
	theorem.trustedDossierSHA256 = evidence.DossierSHA256()
	trustedPayloadSHA256, err := trustedParentPayloadSHA256(theorem)
	if err != nil {
		return VerifiedTheorem{}, errors.New("poser: cannot hash trusted parent payload")
	}
	theorem.trustedTheoremSHA256 = trustedPayloadSHA256
	if err := theorem.Validate(); err != nil {
		return VerifiedTheorem{}, err
	}
	return theorem, nil
}

func trustedParentPayloadSHA256(theorem VerifiedTheorem) (string, error) {
	body, err := json.Marshal(theorem)
	if err != nil {
		return "", err
	}
	digest := sha256.Sum256(body)
	return hex.EncodeToString(digest[:]), nil
}

func validateTheoremAgainstDossier(theorem VerifiedTheorem, dossier domain.Dossier) error {
	if theorem.ProblemID != dossier.Problem.ID || theorem.InformalStatement != dossier.Problem.Statement || theorem.SourceSnapshotSHA256 != dossier.CatalogSnapshotSHA256 || !sameSourceIDs(theorem.SourceIDs, dossier.Problem.SourceIDs) {
		return errors.New("poser: parent problem, source identities, or M0 snapshot differ from the signed dossier")
	}
	proposition, err := theorem.FormalProposition()
	if err != nil {
		return err
	}
	if proposition != dossier.Problem.LeanStatement {
		return errors.New("poser: parent Lean declaration differs from the signed dossier statement")
	}
	if !hasPassingProof(dossier, theorem.ProofSHA256) {
		return errors.New("poser: parent proof is not an exact passing attempt in the signed dossier")
	}
	for _, record := range []domain.VerificationRecord{theorem.V1, theorem.V2, theorem.V3} {
		if !hasExactVerification(dossier, record) {
			return errors.New("poser: parent V1/V2/V3 records differ from the signed dossier")
		}
	}
	return nil
}

func sameSourceIDs(left, right []string) bool {
	if len(left) != len(right) {
		return false
	}
	leftCopy := append([]string(nil), left...)
	rightCopy := append([]string(nil), right...)
	sort.Strings(leftCopy)
	sort.Strings(rightCopy)
	return reflect.DeepEqual(leftCopy, rightCopy)
}

func hasPassingProof(dossier domain.Dossier, proofSHA256 string) bool {
	if proofSHA256 == "" {
		return false
	}
	for _, attempt := range dossier.Attempts {
		if attempt.ProblemID == dossier.Problem.ID && attempt.Outcome == domain.SolverOutcomePass && attempt.VerifiedProofSHA256 == proofSHA256 {
			return true
		}
	}
	return false
}

func hasExactVerification(dossier domain.Dossier, expected domain.VerificationRecord) bool {
	found := false
	for _, record := range dossier.Verifications {
		if record.Gate != expected.Gate {
			continue
		}
		if found || !reflect.DeepEqual(record, expected) {
			return false
		}
		found = true
	}
	return found
}
