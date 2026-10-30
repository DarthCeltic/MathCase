package taste

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"sort"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
)

const mathlibTastePairLabelSchema = "mathcase-mathlib-taste-pair-label-v1"
const mathlibTastePairLabelDatasetSchema = "mathcase-mathlib-taste-pair-label-dataset-v1"

const (
	TastePairAfterSimplification = "AFTER_SIMPLIFICATION"
	TastePairMechanicalBasis     = "SIMPLIFIER_TRANSFORMATION"
	TastePairHumanNotRated       = "NOT_RATED"
	TastePairCandidateOnly       = "CANDIDATE_ONLY"
)

// MathlibTasteSourcePin repeats the item-level rights identity beside every
// label so an exported record cannot silently lose its exact license basis.
type MathlibTasteSourcePin struct {
	SourceID         string               `json:"source_id"`
	URL              string               `json:"url"`
	ItemLocator      string               `json:"item_locator"`
	Revision         string               `json:"revision"`
	ContentSHA256    string               `json:"content_sha256"`
	AuthorOrHolder   string               `json:"author_or_rights_holder"`
	License          string               `json:"license"`
	LicenseTermsURL  string               `json:"license_terms_url"`
	RightsStatus     catalog.RightsStatus `json:"rights_status"`
	RightsEvidenceID string               `json:"rights_evidence_id"`
	RightsReviewerID string               `json:"rights_reviewer_id"`
	RightsReviewedAt time.Time            `json:"rights_reviewed_at_utc"`
	AllowedUses      []catalog.SourceUse  `json:"allowed_uses"`
}

// MathlibTasteVerification pins the replay, Lean output, and standard axiom
// audit that were independently recorded for both proof variants.
type MathlibTasteVerification struct {
	EvidenceID             string    `json:"evidence_id"`
	EvidenceSHA256         string    `json:"evidence_sha256"`
	ReplaySourcePath       string    `json:"replay_source_path"`
	ReplaySourceSHA256     string    `json:"replay_source_sha256"`
	LeanOutputPath         string    `json:"lean_output_path"`
	LeanOutputSHA256       string    `json:"lean_output_sha256"`
	LeanVersion            string    `json:"lean_version"`
	BeforeStatus           string    `json:"before_status"`
	AfterStatus            string    `json:"after_status"`
	BeforeAxiomAuditStatus string    `json:"before_axiom_audit_status"`
	AfterAxiomAuditStatus  string    `json:"after_axiom_audit_status"`
	BeforeAxioms           []string  `json:"before_axioms"`
	AfterAxioms            []string  `json:"after_axioms"`
	AllowedAxioms          []string  `json:"allowed_axioms"`
	RecordedAtUTC          time.Time `json:"recorded_at_utc"`
}

// MathlibTastePreference marks a mechanical before/after simplification
// comparison. It is not a human taste rating or an accepted quality judgment.
type MathlibTastePreference struct {
	PreferredProof    string `json:"preferred_proof"`
	Basis             string `json:"basis"`
	HumanRatingStatus string `json:"human_rating_status"`
	TrainingStatus    string `json:"training_status"`
}

// MathlibTastePairLabelRecord holds an exact source-bound proof pair, rights
// pin, replay/axiom evidence, and the narrowly scoped mechanical preference.
type MathlibTastePairLabelRecord struct {
	SchemaVersion string                   `json:"schema_version"`
	RecordID      string                   `json:"record_id"`
	Pair          MathlibProofPair         `json:"pair"`
	Source        MathlibTasteSourcePin    `json:"source"`
	Verification  MathlibTasteVerification `json:"verification"`
	Preference    MathlibTastePreference   `json:"preference"`
}

type MathlibTastePairLabelDataset struct {
	SchemaVersion         string                        `json:"schema_version"`
	CatalogSnapshotSHA256 string                        `json:"catalog_snapshot_sha256"`
	PairSetSHA256         string                        `json:"pair_set_sha256"`
	Records               []MathlibTastePairLabelRecord `json:"records"`
	ContentSHA256         string                        `json:"content_sha256"`
}

type mathlibTastePairLabelDatasetPayload struct {
	SchemaVersion         string                        `json:"schema_version"`
	CatalogSnapshotSHA256 string                        `json:"catalog_snapshot_sha256"`
	PairSetSHA256         string                        `json:"pair_set_sha256"`
	Records               []MathlibTastePairLabelRecord `json:"records"`
}

// BuildMathlibTastePairLabels creates label records only after item-level
// training rights and raw source/replay/output bytes pass the existing M3
// validators. It does not create a split or start training.
func BuildMathlibTastePairLabels(
	snapshot catalog.Snapshot,
	pairs []MathlibProofPair,
	sourceFiles map[string][]byte,
	evidenceFiles map[string][]byte,
) (MathlibTastePairLabelDataset, error) {
	if err := ValidateMathlibProofPairEvidence(snapshot, pairs, sourceFiles, evidenceFiles); err != nil {
		return MathlibTastePairLabelDataset{}, err
	}
	pairSet := MathlibProofPairDataset{
		SchemaVersion:         mathlibProofPairDatasetSchema,
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		Pairs:                 append([]MathlibProofPair(nil), pairs...),
	}
	pairSetSHA256, err := pairSet.Digest()
	if err != nil {
		return MathlibTastePairLabelDataset{}, fmt.Errorf("taste labels: digest pair set: %w", err)
	}
	sources := make(map[string]catalog.SourceVersion, len(snapshot.Sources))
	for _, source := range snapshot.Sources {
		sources[source.ID] = source
	}
	ordered := append([]MathlibProofPair(nil), pairs...)
	sort.Slice(ordered, func(i, j int) bool { return ordered[i].PairID < ordered[j].PairID })
	records := make([]MathlibTastePairLabelRecord, 0, len(ordered))
	for _, pair := range ordered {
		source := sources[pair.SourceID]
		receiptBytes := evidenceFiles[pair.SimplificationEvidenceID+".json"]
		receipt, err := decodeSimplificationEvidence(receiptBytes)
		if err != nil {
			return MathlibTastePairLabelDataset{}, fmt.Errorf("taste labels: decode pair %q evidence: %w", pair.PairID, err)
		}
		record := MathlibTastePairLabelRecord{
			SchemaVersion: mathlibTastePairLabelSchema,
			RecordID:      "taste-label-" + pair.PairID,
			Pair:          pair,
			Source:        sourcePin(source),
			Verification:  verificationPin(receiptBytes, receipt),
			Preference: MathlibTastePreference{
				PreferredProof:    TastePairAfterSimplification,
				Basis:             TastePairMechanicalBasis,
				HumanRatingStatus: TastePairHumanNotRated,
				TrainingStatus:    TastePairCandidateOnly,
			},
		}
		if err := record.Validate(snapshot); err != nil {
			return MathlibTastePairLabelDataset{}, fmt.Errorf("taste labels: invalid pair %q label: %w", pair.PairID, err)
		}
		records = append(records, record)
	}
	dataset := MathlibTastePairLabelDataset{
		SchemaVersion:         mathlibTastePairLabelDatasetSchema,
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		PairSetSHA256:         pairSetSHA256,
		Records:               records,
	}
	dataset.ContentSHA256, err = dataset.Digest()
	if err != nil {
		return MathlibTastePairLabelDataset{}, fmt.Errorf("taste labels: digest label dataset: %w", err)
	}
	return dataset, nil
}

func (r MathlibTastePairLabelRecord) Validate(snapshot catalog.Snapshot) error {
	if r.SchemaVersion != mathlibTastePairLabelSchema {
		return errors.New("taste labels: unsupported record schema")
	}
	if r.RecordID != "taste-label-"+r.Pair.PairID {
		return errors.New("taste labels: record ID must be deterministically bound to its pair ID")
	}
	if err := r.Pair.Validate(); err != nil {
		return err
	}
	if r.Pair.CatalogSnapshotSHA256 != snapshot.ContentSHA256 {
		return errors.New("taste labels: pair is bound to a different catalog snapshot")
	}
	var source *catalog.SourceVersion
	for i := range snapshot.Sources {
		if snapshot.Sources[i].ID == r.Pair.SourceID {
			source = &snapshot.Sources[i]
			break
		}
	}
	if source == nil || !source.EligibleForModelUse() || source.Lane != catalog.LaneMathlibProofPairs {
		return errors.New("taste labels: source lacks item-level Mathlib training clearance")
	}
	if !sameSourcePin(r.Source, *source) {
		return errors.New("taste labels: source rights pin does not match the exact M0 source record")
	}
	if r.Verification.EvidenceID != r.Pair.SimplificationEvidenceID ||
		r.Verification.EvidenceSHA256 != r.Pair.SimplificationEvidenceSHA256 ||
		r.Verification.BeforeStatus != "PASSED" || r.Verification.AfterStatus != "PASSED" ||
		r.Verification.BeforeAxiomAuditStatus != "PASSED" || r.Verification.AfterAxiomAuditStatus != "PASSED" ||
		r.Verification.RecordedAtUTC.IsZero() {
		return errors.New("taste labels: both proof replays and axiom audits must be pinned as passed")
	}
	for _, digest := range []string{
		r.Verification.EvidenceSHA256, r.Verification.ReplaySourceSHA256, r.Verification.LeanOutputSHA256,
	} {
		if !validDigest(digest) {
			return errors.New("taste labels: verification artifact digests must be canonical SHA-256")
		}
	}
	if r.Verification.ReplaySourcePath != "replay/"+r.Verification.EvidenceID+".lean" ||
		r.Verification.LeanOutputPath != "output/"+r.Verification.EvidenceID+".txt" ||
		r.Verification.LeanVersion == "" {
		return errors.New("taste labels: replay evidence must use evidence-ID-bound paths and record the Lean version")
	}
	if r.Preference.PreferredProof != TastePairAfterSimplification ||
		r.Preference.Basis != TastePairMechanicalBasis ||
		r.Preference.HumanRatingStatus != TastePairHumanNotRated ||
		r.Preference.TrainingStatus != TastePairCandidateOnly {
		return errors.New("taste labels: only unrated, mechanical simplification candidates are accepted")
	}
	return nil
}

// Validate binds the label set back to M0 and reopens the raw source, replay,
// and Lean output bytes. Hashes in the JSON alone are not treated as evidence.
func (d MathlibTastePairLabelDataset) Validate(
	snapshot catalog.Snapshot,
	sourceFiles map[string][]byte,
	evidenceFiles map[string][]byte,
) error {
	if d.SchemaVersion != mathlibTastePairLabelDatasetSchema || d.CatalogSnapshotSHA256 != snapshot.ContentSHA256 {
		return errors.New("taste labels: unsupported schema or catalog snapshot mismatch")
	}
	pairs := make([]MathlibProofPair, 0, len(d.Records))
	for _, record := range d.Records {
		if err := record.Validate(snapshot); err != nil {
			return err
		}
		pairs = append(pairs, record.Pair)
	}
	expected, err := BuildMathlibTastePairLabels(snapshot, pairs, sourceFiles, evidenceFiles)
	if err != nil {
		return err
	}
	if expected.PairSetSHA256 != d.PairSetSHA256 || expected.ContentSHA256 != d.ContentSHA256 {
		return errors.New("taste labels: pair-set or label-set digest mismatch")
	}
	expectedBytes, err := json.Marshal(expected.Records)
	if err != nil {
		return err
	}
	actualBytes, err := json.Marshal(d.Records)
	if err != nil {
		return err
	}
	if !bytes.Equal(expectedBytes, actualBytes) {
		return errors.New("taste labels: label records do not match reopened source and verification evidence")
	}
	return nil
}

func (d MathlibTastePairLabelDataset) Digest() (string, error) {
	ordered := append([]MathlibTastePairLabelRecord(nil), d.Records...)
	sort.Slice(ordered, func(i, j int) bool { return ordered[i].RecordID < ordered[j].RecordID })
	data, err := json.Marshal(mathlibTastePairLabelDatasetPayload{
		SchemaVersion:         d.SchemaVersion,
		CatalogSnapshotSHA256: d.CatalogSnapshotSHA256,
		PairSetSHA256:         d.PairSetSHA256,
		Records:               ordered,
	})
	if err != nil {
		return "", err
	}
	sum := sha256.Sum256(data)
	return hex.EncodeToString(sum[:]), nil
}

func sourcePin(source catalog.SourceVersion) MathlibTasteSourcePin {
	return MathlibTasteSourcePin{
		SourceID: source.ID, URL: source.URL, ItemLocator: source.ItemLocator, Revision: source.Revision,
		ContentSHA256: source.ContentSHA256, AuthorOrHolder: source.AuthorOrHolder,
		License: source.License, LicenseTermsURL: source.LicenseTermsURL, RightsStatus: source.Rights,
		RightsEvidenceID: source.RightsEvidenceID, RightsReviewerID: source.RightsReviewerID,
		RightsReviewedAt: source.RightsReviewedAt.UTC(), AllowedUses: append([]catalog.SourceUse(nil), source.AllowedUses...),
	}
}

func sameSourcePin(pin MathlibTasteSourcePin, source catalog.SourceVersion) bool {
	if pin.SourceID != source.ID || pin.URL != source.URL || pin.ItemLocator != source.ItemLocator ||
		pin.Revision != source.Revision || pin.ContentSHA256 != source.ContentSHA256 ||
		pin.AuthorOrHolder != source.AuthorOrHolder || pin.License != source.License ||
		pin.LicenseTermsURL != source.LicenseTermsURL || pin.RightsStatus != source.Rights ||
		pin.RightsEvidenceID != source.RightsEvidenceID || pin.RightsReviewerID != source.RightsReviewerID ||
		!pin.RightsReviewedAt.Equal(source.RightsReviewedAt) || len(pin.AllowedUses) != len(source.AllowedUses) {
		return false
	}
	for i := range source.AllowedUses {
		if pin.AllowedUses[i] != source.AllowedUses[i] {
			return false
		}
	}
	return true
}

func verificationPin(evidenceBytes []byte, receipt MathlibSimplificationEvidence) MathlibTasteVerification {
	return MathlibTasteVerification{
		EvidenceID: receipt.EvidenceID, EvidenceSHA256: digestBytes(evidenceBytes),
		ReplaySourcePath: receipt.ReplaySourcePath, ReplaySourceSHA256: receipt.ReplaySourceSHA256,
		LeanOutputPath: receipt.LeanOutputPath, LeanOutputSHA256: receipt.LeanOutputSHA256,
		LeanVersion: receipt.LeanVersion, BeforeStatus: receipt.BeforeStatus, AfterStatus: receipt.AfterStatus,
		BeforeAxiomAuditStatus: receipt.BeforeAxiomAuditStatus, AfterAxiomAuditStatus: receipt.AfterAxiomAuditStatus,
		BeforeAxioms: append([]string(nil), receipt.BeforeAxioms...), AfterAxioms: append([]string(nil), receipt.AfterAxioms...),
		AllowedAxioms: append([]string(nil), receipt.AllowedAxioms...), RecordedAtUTC: receipt.RecordedAt.UTC(),
	}
}
