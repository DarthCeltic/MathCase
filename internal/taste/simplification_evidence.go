package taste

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"sort"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/state"
	"github.com/DarthCeltic/MathCase/internal/verification"
)

const simplificationEvidenceSchema = "mathcase-taste-simplification-evidence-v1"

var mathlibStandardAxioms = map[string]struct{}{
	"Classical.choice": {},
	"Quot.sound":       {},
	"propext":          {},
}

// MathlibSimplificationEvidence is a local, content-addressed record of both
// proof variants being checked in the pinned project. It records claims from
// that run; it is not a training label or a substitute for independently
// rerunning Lean.
type MathlibSimplificationEvidence struct {
	SchemaVersion          string    `json:"schema_version"`
	EvidenceID             string    `json:"evidence_id"`
	PairID                 string    `json:"pair_id"`
	TheoremKey             string    `json:"theorem_key"`
	SourceID               string    `json:"source_id"`
	SourcePath             string    `json:"source_path"`
	SourceRevision         string    `json:"source_revision"`
	SourceSHA256           string    `json:"source_sha256"`
	CatalogSnapshotSHA256  string    `json:"catalog_snapshot_sha256"`
	BeforeProofSHA256      string    `json:"before_proof_sha256"`
	AfterProofSHA256       string    `json:"after_proof_sha256"`
	Simplifier             string    `json:"simplifier"`
	SimplifierVersion      string    `json:"simplifier_version"`
	BeforeTheorem          string    `json:"before_theorem"`
	AfterTheorem           string    `json:"after_theorem"`
	BeforeAxiomOutput      string    `json:"before_axiom_output"`
	AfterAxiomOutput       string    `json:"after_axiom_output"`
	BeforeAxioms           []string  `json:"before_axioms"`
	AfterAxioms            []string  `json:"after_axioms"`
	AllowedAxioms          []string  `json:"allowed_axioms"`
	ReplaySourcePath       string    `json:"replay_source_path"`
	BeforeStatus           string    `json:"before_status"`
	AfterStatus            string    `json:"after_status"`
	BeforeAxiomAuditStatus string    `json:"before_axiom_audit_status"`
	AfterAxiomAuditStatus  string    `json:"after_axiom_audit_status"`
	ReplaySourceSHA256     string    `json:"replay_source_sha256"`
	LeanOutputPath         string    `json:"lean_output_path"`
	LeanOutputSHA256       string    `json:"lean_output_sha256"`
	LeanVersion            string    `json:"lean_version"`
	Command                string    `json:"command"`
	RecordedAt             time.Time `json:"recorded_at_utc"`
}

// ValidateAgainst ensures the receipt refers to the exact source-backed pair
// and that Lean reported success for both variants and their axiom audits.
func (e MathlibSimplificationEvidence) ValidateAgainst(pair MathlibProofPair, source catalog.SourceVersion) error {
	if e.SchemaVersion != simplificationEvidenceSchema {
		return fmt.Errorf("taste: unsupported simplification-evidence schema %q", e.SchemaVersion)
	}
	for _, field := range []struct{ name, value string }{
		{"simplification evidence ID", e.EvidenceID},
		{"simplification evidence pair ID", e.PairID},
		{"simplification evidence source ID", e.SourceID},
	} {
		if err := state.ValidateIdentifier(field.name, field.value); err != nil {
			return err
		}
	}
	if err := validateLeanDeclarationKey("simplification evidence theorem key", e.TheoremKey); err != nil {
		return err
	}
	for _, field := range []struct{ name, value string }{
		{"source revision", e.SourceRevision},
		{"source path", e.SourcePath},
		{"replay source path", e.ReplaySourcePath},
		{"Lean output path", e.LeanOutputPath},
		{"Lean version", e.LeanVersion},
		{"replay command", e.Command},
	} {
		if field.value == "" || !singleLine(field.value) {
			return fmt.Errorf("taste: simplification evidence %s must be non-empty single-line text", field.name)
		}
	}
	for _, field := range []struct{ name, value string }{
		{"source", e.SourceSHA256},
		{"catalog snapshot", e.CatalogSnapshotSHA256},
		{"before proof", e.BeforeProofSHA256},
		{"after proof", e.AfterProofSHA256},
		{"replay source", e.ReplaySourceSHA256},
		{"Lean output", e.LeanOutputSHA256},
	} {
		if !validDigest(field.value) {
			return fmt.Errorf("taste: simplification evidence %s digest must be canonical SHA-256", field.name)
		}
	}
	if e.RecordedAt.IsZero() {
		return errors.New("taste: simplification evidence timestamp is required")
	}
	if e.PairID != pair.PairID || e.TheoremKey != pair.TheoremKey || e.SourceID != pair.SourceID {
		return errors.New("taste: simplification evidence does not match the pair identity")
	}
	if e.SourcePath != source.ItemLocator || e.SourceRevision != source.Revision || e.SourceSHA256 != source.ContentSHA256 || e.SourceSHA256 != pair.SourceSHA256 {
		return errors.New("taste: simplification evidence does not match the exact catalog source version")
	}
	if e.CatalogSnapshotSHA256 != pair.CatalogSnapshotSHA256 ||
		e.BeforeProofSHA256 != pair.BeforeProofSHA256 || e.AfterProofSHA256 != pair.AfterProofSHA256 {
		return errors.New("taste: simplification evidence does not match the exact pair and catalog snapshot")
	}
	if e.Simplifier != pair.Simplifier || e.SimplifierVersion != pair.SimplifierVersion {
		return errors.New("taste: simplification evidence does not match the recorded simplifier")
	}
	if e.BeforeStatus != "PASSED" || e.AfterStatus != "PASSED" {
		return errors.New("taste: both proof variants must have passed Lean verification")
	}
	if e.BeforeAxiomAuditStatus != "PASSED" || e.AfterAxiomAuditStatus != "PASSED" {
		return errors.New("taste: both proof variants must have passed the axiom audit")
	}
	if err := validateReceiptAxiomAudit(e.BeforeTheorem, e.BeforeAxiomOutput, e.BeforeAxioms, e.AllowedAxioms); err != nil {
		return fmt.Errorf("taste: before-proof axiom audit: %w", err)
	}
	if err := validateReceiptAxiomAudit(e.AfterTheorem, e.AfterAxiomOutput, e.AfterAxioms, e.AllowedAxioms); err != nil {
		return fmt.Errorf("taste: after-proof axiom audit: %w", err)
	}
	if e.ReplaySourcePath != "replay/"+e.EvidenceID+".lean" || e.LeanOutputPath != "output/"+e.EvidenceID+".txt" {
		return errors.New("taste: replay and Lean output paths must use the evidence-ID-bound layout")
	}
	return nil
}

func validateReceiptAxiomAudit(theorem, output string, recorded, allowed []string) error {
	if err := state.ValidateIdentifier("Lean theorem", theorem); err != nil {
		return err
	}
	if strings.TrimSpace(output) == "" || strings.ContainsRune(output, '\x00') {
		return errors.New("raw Lean axiom output is required")
	}
	observed, ok := verification.ParseAxiomOutput(theorem, output)
	if !ok {
		return errors.New("raw Lean axiom output is missing or ambiguous")
	}
	canonicalObserved := append([]string(nil), observed...)
	canonicalRecorded := append([]string(nil), recorded...)
	canonicalAllowed := append([]string(nil), allowed...)
	sort.Strings(canonicalObserved)
	sort.Strings(canonicalRecorded)
	sort.Strings(canonicalAllowed)
	if !sameAxiomNames(canonicalObserved, canonicalRecorded) {
		return errors.New("recorded axioms do not match raw Lean output")
	}
	if len(canonicalAllowed) != len(mathlibStandardAxioms) {
		return errors.New("allowed axioms must match Lean's standard axiom set")
	}
	for i, name := range canonicalAllowed {
		if _, ok := mathlibStandardAxioms[name]; !ok {
			return fmt.Errorf("allowed axiom %q is outside Lean's standard axiom set", name)
		}
		if i > 0 && canonicalAllowed[i-1] == name {
			return fmt.Errorf("allowed axiom %q is duplicated", name)
		}
	}
	allowedSet := make(map[string]struct{}, len(canonicalAllowed))
	for _, name := range canonicalAllowed {
		allowedSet[name] = struct{}{}
	}
	for _, name := range observed {
		if _, ok := allowedSet[name]; !ok {
			return fmt.Errorf("observed axiom %q is outside the recorded standard policy", name)
		}
	}
	return nil
}

func sameAxiomNames(first, second []string) bool {
	if len(first) != len(second) {
		return false
	}
	for i := range first {
		if first[i] != second[i] {
			return false
		}
	}
	return true
}

// ValidateMathlibProofPairEvidence checks the raw Mathlib item and receipt
// bytes in addition to the pair's metadata, preventing a valid-looking hash
// string from standing in for local source or simplifier evidence.
func ValidateMathlibProofPairEvidence(
	snapshot catalog.Snapshot,
	pairs []MathlibProofPair,
	sourceFiles map[string][]byte,
	evidenceFiles map[string][]byte,
) error {
	if err := ValidateMathlibProofPairs(snapshot, pairs); err != nil {
		return err
	}
	sources := make(map[string]catalog.SourceVersion, len(snapshot.Sources))
	for _, source := range snapshot.Sources {
		sources[source.ID] = source
	}
	for _, pair := range pairs {
		source := sources[pair.SourceID]
		sourceBytes, ok := sourceFiles[pair.SourceID]
		if !ok || len(sourceBytes) == 0 {
			return fmt.Errorf("taste: source bytes are missing for proof pair %q", pair.PairID)
		}
		if digestBytes(sourceBytes) != source.ContentSHA256 {
			return fmt.Errorf("taste: local source bytes do not match catalog source %q", source.ID)
		}
		if !bytes.Contains(sourceBytes, []byte(pair.BeforeProof)) {
			return fmt.Errorf("taste: before proof for pair %q is not present in the recorded Mathlib item", pair.PairID)
		}
		receiptBytes, ok := evidenceFiles[pair.SimplificationEvidenceID+".json"]
		if !ok || len(receiptBytes) == 0 {
			return fmt.Errorf("taste: simplification receipt %q is missing", pair.SimplificationEvidenceID)
		}
		if digestBytes(receiptBytes) != pair.SimplificationEvidenceSHA256 {
			return fmt.Errorf("taste: simplification receipt %q does not match its recorded SHA-256", pair.SimplificationEvidenceID)
		}
		receipt, err := decodeSimplificationEvidence(receiptBytes)
		if err != nil {
			return fmt.Errorf("taste: decode simplification receipt %q: %w", pair.SimplificationEvidenceID, err)
		}
		if receipt.EvidenceID != pair.SimplificationEvidenceID {
			return fmt.Errorf("taste: simplification receipt ID does not match pair %q", pair.PairID)
		}
		if err := receipt.ValidateAgainst(pair, source); err != nil {
			return fmt.Errorf("taste: simplification receipt for pair %q: %w", pair.PairID, err)
		}
		replayBytes, ok := evidenceFiles[receipt.ReplaySourcePath]
		if !ok || len(replayBytes) == 0 {
			return fmt.Errorf("taste: replay source artifact %q is missing", receipt.ReplaySourcePath)
		}
		if digestBytes(replayBytes) != receipt.ReplaySourceSHA256 {
			return fmt.Errorf("taste: replay source artifact %q does not match its recorded SHA-256", receipt.ReplaySourcePath)
		}
		if !bytes.Contains(replayBytes, []byte(pair.BeforeProof)) || !bytes.Contains(replayBytes, []byte(pair.AfterProof)) {
			return fmt.Errorf("taste: replay source artifact %q does not contain the exact recorded proof pair", receipt.ReplaySourcePath)
		}
		leanOutput, ok := evidenceFiles[receipt.LeanOutputPath]
		if !ok || len(leanOutput) == 0 {
			return fmt.Errorf("taste: Lean output artifact %q is missing", receipt.LeanOutputPath)
		}
		if digestBytes(leanOutput) != receipt.LeanOutputSHA256 {
			return fmt.Errorf("taste: Lean output artifact %q does not match its recorded SHA-256", receipt.LeanOutputPath)
		}
		if !bytes.Contains(leanOutput, []byte(receipt.BeforeAxiomOutput)) || !bytes.Contains(leanOutput, []byte(receipt.AfterAxiomOutput)) {
			return fmt.Errorf("taste: Lean output artifact %q does not contain the recorded axiom output", receipt.LeanOutputPath)
		}
	}
	return nil
}

func decodeSimplificationEvidence(data []byte) (MathlibSimplificationEvidence, error) {
	var receipt MathlibSimplificationEvidence
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(&receipt); err != nil {
		return MathlibSimplificationEvidence{}, err
	}
	var trailing any
	if err := decoder.Decode(&trailing); !errors.Is(err, io.EOF) {
		if err == nil {
			return MathlibSimplificationEvidence{}, errors.New("multiple JSON values are not permitted")
		}
		return MathlibSimplificationEvidence{}, err
	}
	return receipt, nil
}

func digestBytes(value []byte) string {
	sum := sha256.Sum256(value)
	return hex.EncodeToString(sum[:])
}
