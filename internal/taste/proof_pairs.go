package taste

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"sort"
	"strings"
	"unicode/utf8"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	mathlibProofPairDatasetSchema = "mathcase-taste-proof-pairs-v1"
	proofPairSplitSchema          = "mathcase-taste-proof-pair-split-v1"
	maxProofPairTextBytes         = 1 << 20
)

// MathlibProofPair binds a before/after simplification example to one exact
// rights-cleared Mathlib source version and M0 snapshot. The simplified proof
// is the initial positive preference; this record does not claim Lean has
// checked either proof or the transformation receipt.
type MathlibProofPair struct {
	PairID                       string `json:"pair_id"`
	TheoremKey                   string `json:"theorem_key"`
	LeakageGroupID               string `json:"leakage_group_id"`
	SourceID                     string `json:"source_id"`
	SourceSHA256                 string `json:"source_sha256"`
	CatalogSnapshotSHA256        string `json:"catalog_snapshot_sha256"`
	BeforeProof                  string `json:"before_proof"`
	BeforeProofSHA256            string `json:"before_proof_sha256"`
	AfterProof                   string `json:"after_proof"`
	AfterProofSHA256             string `json:"after_proof_sha256"`
	Simplifier                   string `json:"simplifier"`
	SimplifierVersion            string `json:"simplifier_version"`
	SimplificationEvidenceID     string `json:"simplification_evidence_id"`
	SimplificationEvidenceSHA256 string `json:"simplification_evidence_sha256"`
}

// MathlibProofPairDataset is the strict local input format for M3's initial
// proof-pair slice. It contains metadata and examples only; validating it does
// not run Lean or train a model.
type MathlibProofPairDataset struct {
	SchemaVersion         string             `json:"schema_version"`
	CatalogSnapshotSHA256 string             `json:"catalog_snapshot_sha256"`
	Pairs                 []MathlibProofPair `json:"pairs"`
}

func (d MathlibProofPairDataset) Validate(snapshot catalog.Snapshot) error {
	if d.SchemaVersion != mathlibProofPairDatasetSchema {
		return fmt.Errorf("taste: unsupported Mathlib proof-pair dataset schema %q", d.SchemaVersion)
	}
	if d.CatalogSnapshotSHA256 != snapshot.ContentSHA256 {
		return errors.New("taste: Mathlib proof-pair dataset is bound to a different catalog snapshot")
	}
	return ValidateMathlibProofPairs(snapshot, d.Pairs)
}

// Digest returns an order-independent hash of the exact pair records after
// sorting them by PairID. It includes proof text and source/evidence hashes.
func (d MathlibProofPairDataset) Digest() (string, error) {
	ordered := append([]MathlibProofPair(nil), d.Pairs...)
	sort.Slice(ordered, func(i, j int) bool { return ordered[i].PairID < ordered[j].PairID })
	encoded, err := json.Marshal(struct {
		SchemaVersion         string             `json:"schema_version"`
		CatalogSnapshotSHA256 string             `json:"catalog_snapshot_sha256"`
		Pairs                 []MathlibProofPair `json:"pairs"`
	}{d.SchemaVersion, d.CatalogSnapshotSHA256, ordered})
	if err != nil {
		return "", err
	}
	sum := sha256.Sum256(encoded)
	return hex.EncodeToString(sum[:]), nil
}

// Validate checks the pair's local, content-addressed fields. Snapshot and
// source rights are checked by ValidateMathlibProofPairs against M0.
func (p MathlibProofPair) Validate() error {
	if err := validateLeanDeclarationKey("Mathlib theorem key", p.TheoremKey); err != nil {
		return err
	}
	for _, field := range []struct{ name, value string }{
		{"Mathlib proof-pair ID", p.PairID},
		{"Mathlib leakage group ID", p.LeakageGroupID},
		{"Mathlib source ID", p.SourceID},
		{"simplification evidence ID", p.SimplificationEvidenceID},
	} {
		if err := state.ValidateIdentifier(field.name, field.value); err != nil {
			return err
		}
	}
	for _, field := range []struct{ name, digest string }{
		{"source", p.SourceSHA256},
		{"catalog snapshot", p.CatalogSnapshotSHA256},
		{"before proof", p.BeforeProofSHA256},
		{"after proof", p.AfterProofSHA256},
		{"simplification evidence", p.SimplificationEvidenceSHA256},
	} {
		if !validDigest(field.digest) {
			return fmt.Errorf("taste: %s digest must be canonical SHA-256", field.name)
		}
	}
	if err := validateProofText("before proof", p.BeforeProof); err != nil {
		return err
	}
	if err := validateProofText("after proof", p.AfterProof); err != nil {
		return err
	}
	if digestText(p.BeforeProof) != p.BeforeProofSHA256 {
		return errors.New("taste: before-proof digest does not match proof text")
	}
	if digestText(p.AfterProof) != p.AfterProofSHA256 {
		return errors.New("taste: after-proof digest does not match proof text")
	}
	if p.BeforeProofSHA256 == p.AfterProofSHA256 {
		return errors.New("taste: before/after proof pair must contain distinct proof text")
	}
	if !singleLine(p.Simplifier) || !singleLine(p.SimplifierVersion) {
		return errors.New("taste: simplifier and version must be non-empty single-line values")
	}
	return nil
}

// validateLeanDeclarationKey accepts the route-safe identifier alphabet plus
// Lean's ASCII prime suffix marker. Prime-marked declaration names are common
// in Mathlib (for example, `guard_eq_some'`); treating them as invalid made an
// exact source theorem impossible to label without changing its identity.
func validateLeanDeclarationKey(name, value string) error {
	if name == "" {
		name = "Lean declaration key"
	}
	if value == "" {
		return fmt.Errorf("taste: %s is required", name)
	}
	if len(value) > state.MaxIdentifierBytes {
		return fmt.Errorf("taste: %s exceeds %d bytes", name, state.MaxIdentifierBytes)
	}
	hasNameCharacter := false
	for index := 0; index < len(value); index++ {
		character := value[index]
		if (character >= 'a' && character <= 'z') ||
			(character >= 'A' && character <= 'Z') ||
			(character >= '0' && character <= '9') ||
			character == '.' || character == '_' || character == '-' {
			hasNameCharacter = true
			continue
		}
		if character == '\'' {
			continue
		}
		return fmt.Errorf("taste: %s contains a non-canonical character", name)
	}
	if !hasNameCharacter {
		return fmt.Errorf("taste: %s must contain a declaration character", name)
	}
	return nil
}

func validateProofText(name, value string) error {
	if strings.TrimSpace(value) == "" || len(value) > maxProofPairTextBytes || !utf8.ValidString(value) || strings.ContainsRune(value, '\x00') {
		return fmt.Errorf("taste: %s must be valid non-empty UTF-8 text up to %d bytes", name, maxProofPairTextBytes)
	}
	return nil
}

func singleLine(value string) bool {
	return strings.TrimSpace(value) != "" && !strings.ContainsAny(value, "\x00\r\n")
}

func digestText(value string) string {
	sum := sha256.Sum256([]byte(value))
	return hex.EncodeToString(sum[:])
}

// ValidateMathlibProofPairs verifies pair provenance and the exact training
// permission on every linked source version. Reference-only rows and sources
// from other training lanes cannot enter this dataset.
func ValidateMathlibProofPairs(snapshot catalog.Snapshot, pairs []MathlibProofPair) error {
	_, err := validateMathlibProofPairSet(snapshot, pairs)
	return err
}

func validateMathlibProofPairSet(snapshot catalog.Snapshot, pairs []MathlibProofPair) (map[string]struct{}, error) {
	if err := snapshot.Validate(); err != nil {
		return nil, fmt.Errorf("taste: invalid catalog snapshot: %w", err)
	}
	if len(pairs) == 0 {
		return nil, errors.New("taste: no Mathlib proof pairs supplied")
	}
	sources := make(map[string]catalog.SourceVersion, len(snapshot.Sources))
	for _, source := range snapshot.Sources {
		if err := source.Validate(); err != nil {
			return nil, fmt.Errorf("taste: invalid source %q: %w", source.ID, err)
		}
		sources[source.ID] = source
	}
	groups := make(map[string]struct{}, len(pairs))
	pairIDs := make(map[string]struct{}, len(pairs))
	pairContent := make(map[string]struct{}, len(pairs))
	for _, pair := range pairs {
		if err := pair.Validate(); err != nil {
			return nil, fmt.Errorf("taste: invalid proof pair %q: %w", pair.PairID, err)
		}
		if pair.CatalogSnapshotSHA256 != snapshot.ContentSHA256 {
			return nil, fmt.Errorf("taste: proof pair %q is bound to a different catalog snapshot", pair.PairID)
		}
		source, ok := sources[pair.SourceID]
		if !ok {
			return nil, fmt.Errorf("taste: proof pair %q references missing source %q", pair.PairID, pair.SourceID)
		}
		if source.Lane != catalog.LaneMathlibProofPairs {
			return nil, fmt.Errorf("taste: proof pair %q source is outside the Mathlib proof-pair lane", pair.PairID)
		}
		if !source.EligibleForModelUse() {
			return nil, fmt.Errorf("taste: proof pair %q source lacks explicit TRAINING permission", pair.PairID)
		}
		if pair.SourceSHA256 != source.ContentSHA256 {
			return nil, fmt.Errorf("taste: proof pair %q source digest does not match catalog version", pair.PairID)
		}
		if _, exists := pairIDs[pair.PairID]; exists {
			return nil, fmt.Errorf("taste: duplicate Mathlib proof-pair ID %q", pair.PairID)
		}
		pairIDs[pair.PairID] = struct{}{}
		contentKey := pair.TheoremKey + "\x00" + pair.BeforeProofSHA256 + "\x00" + pair.AfterProofSHA256
		if _, exists := pairContent[contentKey]; exists {
			return nil, fmt.Errorf("taste: duplicate before/after proof content for theorem %q", pair.TheoremKey)
		}
		pairContent[contentKey] = struct{}{}
		groups[pair.LeakageGroupID] = struct{}{}
	}
	return groups, nil
}

type TasteDataSplit string

const (
	TasteSplitTraining   TasteDataSplit = "TRAINING"
	TasteSplitEvaluation TasteDataSplit = "EVALUATION"
)

type MathlibProofPairSplitConfig struct {
	TrainingPercent int
	Seed            string
}

type MathlibProofPairGroupAssignment struct {
	LeakageGroupID string         `json:"leakage_group_id"`
	Split          TasteDataSplit `json:"split"`
}

// MathlibProofPairSplitManifest records one deterministic, group-level split
// for one exact catalog snapshot. LeakageGroupID must be assigned during
// curation to keep related theorems and transformations together.
type MathlibProofPairSplitManifest struct {
	SchemaVersion         string                            `json:"schema_version"`
	CatalogSnapshotSHA256 string                            `json:"catalog_snapshot_sha256"`
	PairSetSHA256         string                            `json:"pair_set_sha256"`
	Seed                  string                            `json:"seed"`
	TrainingPercent       int                               `json:"training_percent"`
	Assignments           []MathlibProofPairGroupAssignment `json:"assignments"`
	ContentSHA256         string                            `json:"content_sha256"`
}

type proofPairSplitPayload struct {
	SchemaVersion         string                            `json:"schema_version"`
	CatalogSnapshotSHA256 string                            `json:"catalog_snapshot_sha256"`
	PairSetSHA256         string                            `json:"pair_set_sha256"`
	Seed                  string                            `json:"seed"`
	TrainingPercent       int                               `json:"training_percent"`
	Assignments           []MathlibProofPairGroupAssignment `json:"assignments"`
}

// BuildMathlibProofPairSplit assigns whole leakage groups to deterministic
// train/evaluation partitions. The percentage is applied to groups, not rows;
// at least one group is reserved for each partition.
func BuildMathlibProofPairSplit(snapshot catalog.Snapshot, pairs []MathlibProofPair, config MathlibProofPairSplitConfig) (MathlibProofPairSplitManifest, error) {
	groups, err := validateMathlibProofPairSet(snapshot, pairs)
	if err != nil {
		return MathlibProofPairSplitManifest{}, err
	}
	if err := validateSplitConfig(config); err != nil {
		return MathlibProofPairSplitManifest{}, err
	}
	dataset := MathlibProofPairDataset{
		SchemaVersion:         mathlibProofPairDatasetSchema,
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		Pairs:                 pairs,
	}
	pairSetDigest, err := dataset.Digest()
	if err != nil {
		return MathlibProofPairSplitManifest{}, fmt.Errorf("taste: hash proof-pair dataset: %w", err)
	}
	groupIDs := make([]string, 0, len(groups))
	for groupID := range groups {
		groupIDs = append(groupIDs, groupID)
	}
	if len(groupIDs) < 2 {
		return MathlibProofPairSplitManifest{}, errors.New("taste: at least two independent leakage groups are required for train/evaluation")
	}
	rankedGroups := append([]string(nil), groupIDs...)
	sort.Slice(rankedGroups, func(i, j int) bool {
		left := splitRank(config.Seed, snapshot.ContentSHA256, rankedGroups[i])
		right := splitRank(config.Seed, snapshot.ContentSHA256, rankedGroups[j])
		if left == right {
			return rankedGroups[i] < rankedGroups[j]
		}
		return left < right
	})
	trainingCount := len(rankedGroups) * config.TrainingPercent / 100
	if trainingCount < 1 {
		trainingCount = 1
	}
	if trainingCount >= len(rankedGroups) {
		trainingCount = len(rankedGroups) - 1
	}
	trainGroups := make(map[string]struct{}, trainingCount)
	for _, groupID := range rankedGroups[:trainingCount] {
		trainGroups[groupID] = struct{}{}
	}
	sort.Strings(groupIDs)
	assignments := make([]MathlibProofPairGroupAssignment, 0, len(groupIDs))
	for _, groupID := range groupIDs {
		partition := TasteSplitEvaluation
		if _, ok := trainGroups[groupID]; ok {
			partition = TasteSplitTraining
		}
		assignments = append(assignments, MathlibProofPairGroupAssignment{LeakageGroupID: groupID, Split: partition})
	}
	manifest := MathlibProofPairSplitManifest{
		SchemaVersion:         proofPairSplitSchema,
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		PairSetSHA256:         pairSetDigest,
		Seed:                  config.Seed,
		TrainingPercent:       config.TrainingPercent,
		Assignments:           assignments,
	}
	manifest.ContentSHA256, err = splitManifestDigest(manifest)
	if err != nil {
		return MathlibProofPairSplitManifest{}, fmt.Errorf("taste: hash split manifest: %w", err)
	}
	return manifest, nil
}

func validateSplitConfig(config MathlibProofPairSplitConfig) error {
	if config.TrainingPercent < 1 || config.TrainingPercent > 99 {
		return errors.New("taste: training split percentage must be between 1 and 99")
	}
	return state.ValidateIdentifier("Mathlib proof-pair split seed", config.Seed)
}

func splitRank(seed, snapshotDigest, groupID string) string {
	return digestText(seed + "\x00" + snapshotDigest + "\x00" + groupID)
}

func splitManifestDigest(manifest MathlibProofPairSplitManifest) (string, error) {
	payload := proofPairSplitPayload{
		SchemaVersion:         manifest.SchemaVersion,
		CatalogSnapshotSHA256: manifest.CatalogSnapshotSHA256,
		PairSetSHA256:         manifest.PairSetSHA256,
		Seed:                  manifest.Seed,
		TrainingPercent:       manifest.TrainingPercent,
		Assignments:           manifest.Assignments,
	}
	encoded, err := json.Marshal(payload)
	if err != nil {
		return "", err
	}
	sum := sha256.Sum256(encoded)
	return hex.EncodeToString(sum[:]), nil
}

// Validate checks that a manifest is digest-correct and is the deterministic
// assignment for exactly the supplied proof-pair groups and snapshot.
func (m MathlibProofPairSplitManifest) Validate(snapshot catalog.Snapshot, pairs []MathlibProofPair) error {
	groups, err := validateMathlibProofPairSet(snapshot, pairs)
	if err != nil {
		return err
	}
	if m.SchemaVersion != proofPairSplitSchema {
		return fmt.Errorf("taste: unsupported proof-pair split schema %q", m.SchemaVersion)
	}
	if m.CatalogSnapshotSHA256 != snapshot.ContentSHA256 {
		return errors.New("taste: proof-pair split is bound to a different catalog snapshot")
	}
	dataset := MathlibProofPairDataset{
		SchemaVersion:         mathlibProofPairDatasetSchema,
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		Pairs:                 pairs,
	}
	pairSetDigest, err := dataset.Digest()
	if err != nil {
		return fmt.Errorf("taste: hash proof-pair dataset: %w", err)
	}
	if m.PairSetSHA256 != pairSetDigest {
		return errors.New("taste: proof-pair split is bound to a different pair set")
	}
	config := MathlibProofPairSplitConfig{TrainingPercent: m.TrainingPercent, Seed: m.Seed}
	if err := validateSplitConfig(config); err != nil {
		return err
	}
	if !validDigest(m.ContentSHA256) {
		return errors.New("taste: split manifest digest must be canonical SHA-256")
	}
	actualDigest, err := splitManifestDigest(m)
	if err != nil {
		return fmt.Errorf("taste: hash split manifest: %w", err)
	}
	if actualDigest != m.ContentSHA256 {
		return errors.New("taste: split manifest content does not match its recorded digest")
	}
	if len(groups) < 2 {
		return errors.New("taste: at least two independent leakage groups are required for train/evaluation")
	}
	if len(m.Assignments) != len(groups) {
		return errors.New("taste: split manifest must assign every leakage group exactly once")
	}
	for i, assignment := range m.Assignments {
		if err := state.ValidateIdentifier("Mathlib proof-pair leakage group ID", assignment.LeakageGroupID); err != nil {
			return err
		}
		if i > 0 && m.Assignments[i-1].LeakageGroupID >= assignment.LeakageGroupID {
			return errors.New("taste: split manifest assignments must be uniquely sorted by leakage group ID")
		}
		if _, exists := groups[assignment.LeakageGroupID]; !exists {
			return fmt.Errorf("taste: split manifest contains unknown leakage group %q", assignment.LeakageGroupID)
		}
		if assignment.Split != TasteSplitTraining && assignment.Split != TasteSplitEvaluation {
			return fmt.Errorf("taste: invalid split assignment %q", assignment.Split)
		}
	}
	expected, err := BuildMathlibProofPairSplit(snapshot, pairs, config)
	if err != nil {
		return err
	}
	if len(expected.Assignments) != len(m.Assignments) {
		return errors.New("taste: split manifest group assignment count does not match deterministic split")
	}
	for i := range expected.Assignments {
		if expected.Assignments[i] != m.Assignments[i] {
			return errors.New("taste: split manifest does not match deterministic group assignment")
		}
	}
	return nil
}

type MathlibProofPairPartitions struct {
	Manifest   MathlibProofPairSplitManifest `json:"manifest"`
	Training   []MathlibProofPair            `json:"training"`
	Evaluation []MathlibProofPair            `json:"evaluation"`
}

// Partition applies a validated split manifest and returns pair rows in
// canonical PairID order for stable persistence and downstream training.
func (m MathlibProofPairSplitManifest) Partition(snapshot catalog.Snapshot, pairs []MathlibProofPair) (MathlibProofPairPartitions, error) {
	if err := m.Validate(snapshot, pairs); err != nil {
		return MathlibProofPairPartitions{}, err
	}
	assignmentByGroup := make(map[string]TasteDataSplit, len(m.Assignments))
	for _, assignment := range m.Assignments {
		assignmentByGroup[assignment.LeakageGroupID] = assignment.Split
	}
	ordered := append([]MathlibProofPair(nil), pairs...)
	sort.Slice(ordered, func(i, j int) bool { return ordered[i].PairID < ordered[j].PairID })
	partitions := MathlibProofPairPartitions{Manifest: m}
	for _, pair := range ordered {
		switch assignmentByGroup[pair.LeakageGroupID] {
		case TasteSplitTraining:
			partitions.Training = append(partitions.Training, pair)
		case TasteSplitEvaluation:
			partitions.Evaluation = append(partitions.Evaluation, pair)
		default:
			return MathlibProofPairPartitions{}, fmt.Errorf("taste: no split assignment for leakage group %q", pair.LeakageGroupID)
		}
	}
	if len(partitions.Training) == 0 || len(partitions.Evaluation) == 0 {
		return MathlibProofPairPartitions{}, errors.New("taste: split must contain proof pairs in both train and evaluation")
	}
	return partitions, nil
}
