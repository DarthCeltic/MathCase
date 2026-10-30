package book

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/solver"
)

const proofDependencyMarker = "MATHCASE_PROOF_DEPENDENCIES_V1 "

type proofDependencyObservation struct {
	SchemaVersion               string          `json:"schema_version"`
	Status                      string          `json:"status"`
	EvidenceClass               string          `json:"evidence_class"`
	RecordedAtUTC               time.Time       `json:"recorded_at_utc"`
	Declaration                 string          `json:"declaration"`
	SourceSHA256                string          `json:"source_sha256"`
	GeneratedSourceSHA256       string          `json:"generated_source_sha256"`
	MetricsReceiptSHA256        string          `json:"metrics_receipt_sha256"`
	RunReceiptSHA256            string          `json:"run_receipt_sha256"`
	RunRequestSHA256            string          `json:"run_request_sha256"`
	SnapshotID                  string          `json:"snapshot_id"`
	SnapshotManifestSHA256      string          `json:"snapshot_manifest_sha256"`
	InstrumentedSourceSHA256    string          `json:"instrumented_source_sha256"`
	MetricsHelperSHA256         string          `json:"metrics_helper_sha256"`
	OrchestratorScriptSHA256    string          `json:"orchestrator_script_sha256"`
	RuntimeScriptSHA256         string          `json:"runtime_script_sha256"`
	StdoutSHA256                string          `json:"stdout_sha256"`
	StderrSHA256                string          `json:"stderr_sha256"`
	DependencyPayloadSHA256     string          `json:"dependency_payload_sha256"`
	DependencyPayload           json.RawMessage `json:"dependency_payload"`
	FreshElaboration            bool            `json:"fresh_elaboration"`
	HistoricalProofTermIdentity bool            `json:"historical_proof_term_identity_claimed"`
	NecessityClaim              bool            `json:"necessity_claim"`
	ScopeNote                   string          `json:"scope_note"`
}

type proofDependencyPayload struct {
	Schema                         string                     `json:"schema"`
	Declaration                    string                     `json:"declaration"`
	TraversalScope                 string                     `json:"traversal_scope"`
	DeclarationTypeOccurrenceCount int                        `json:"declaration_type_occurrence_count"`
	ProofValueOccurrenceCount      int                        `json:"proof_value_occurrence_count"`
	TotalOccurrenceCount           int                        `json:"total_occurrence_count"`
	UniqueReferenceCount           int                        `json:"unique_reference_count"`
	References                     []proofDependencyReference `json:"references"`
	UnresolvedEntries              []proofDependencyReference `json:"unresolved_entries"`
	TransitiveBodiesExpanded       bool                       `json:"transitive_bodies_expanded"`
	NecessityClaim                 bool                       `json:"necessity_claim"`
	Interpretation                 string                     `json:"interpretation"`
}

type proofDependencyReference struct {
	Name                       string `json:"name"`
	DeclarationTypeOccurrences int    `json:"declaration_type_occurrences"`
	ProofValueOccurrences      int    `json:"proof_value_occurrences"`
	TotalOccurrences           int    `json:"total_occurrences"`
	Resolution                 string `json:"resolution"`
	DeclarationKind            string `json:"declaration_kind"`
}

type proofDependencyM4Binding struct {
	EvidenceID             string `json:"evidence_id"`
	ReceiptSHA256          string `json:"receipt_sha256"`
	ProblemID              string `json:"problem_id"`
	ProblemStatementSHA256 string `json:"problem_statement_sha256"`
	ProofInputSHA256       string `json:"proof_input_sha256"`
	GeneratedSourceSHA256  string `json:"generated_source_sha256"`
}

type proofDependencyM6Binding struct {
	MetricsReceiptSHA256     string `json:"metrics_receipt_sha256"`
	RunReceiptSHA256         string `json:"run_receipt_sha256"`
	RunRequestSHA256         string `json:"run_request_sha256"`
	SnapshotID               string `json:"snapshot_id"`
	SnapshotManifestSHA256   string `json:"snapshot_manifest_sha256"`
	InstrumentedSourceSHA256 string `json:"instrumented_source_sha256"`
	MetricsHelperSHA256      string `json:"metrics_helper_sha256"`
	OrchestratorScriptSHA256 string `json:"orchestrator_script_sha256"`
	RuntimeScriptSHA256      string `json:"runtime_script_sha256"`
	StdoutSHA256             string `json:"stdout_sha256"`
	StderrSHA256             string `json:"stderr_sha256"`
}

// ProofDependencyInventory records direct names in a freshly elaborated
// declaration type and proof value. It is deliberately not a V5 necessity
// judgment: transitive bodies, counterfactual ablation, and causal contribution
// are outside its scope.
type ProofDependencyInventory struct {
	SchemaVersion                      string                   `json:"schema_version"`
	Status                             string                   `json:"status"`
	EvidenceClass                      string                   `json:"evidence_class"`
	RecordedAtUTC                      time.Time                `json:"recorded_at_utc"`
	ProblemID                          string                   `json:"problem_id"`
	Declaration                        string                   `json:"declaration"`
	M4                                 proofDependencyM4Binding `json:"m4_binding"`
	M6                                 proofDependencyM6Binding `json:"m6_binding"`
	DependencyPayload                  json.RawMessage          `json:"dependency_payload"`
	FreshElaboration                   bool                     `json:"fresh_elaboration"`
	HistoricalProofTermIdentityClaimed bool                     `json:"historical_proof_term_identity_claimed"`
	NecessityClaim                     bool                     `json:"necessity_claim"`
	ScopeNote                          string                   `json:"scope_note"`
}

// AttachProofDependencyInventory accepts only an opaque M4 capability created
// by solver.OpenLeanVerificationReceipt against the exact M0 problem. It then
// reopens the full typed M6 execution chain and dependency marker before
// producing a case-bound inventory.
func AttachProofDependencyInventory(
	observationBytes []byte,
	m4Receipt solver.OpenedLeanVerificationReceipt,
	proof ProofMetrics,
	metricsReceiptBytes []byte,
	runReceiptBytes []byte,
	runRequestBytes []byte,
	snapshotManifestBytes []byte,
	stdout []byte,
	stderr []byte,
) (ProofDependencyInventory, error) {
	var observation proofDependencyObservation
	if err := decodeStrictMetricsJSON(observationBytes, &observation, "proof-dependency observation"); err != nil {
		return ProofDependencyInventory{}, err
	}
	if !m4Receipt.IsValid() {
		return ProofDependencyInventory{}, errors.New("book: proof-dependency inventory requires a canonically opened execution-bound M4 receipt")
	}
	if observation.SchemaVersion != "mathcase-m6-proof-dependency-observation-v1" || observation.Status != "DIRECT_REFERENCES_RECORDED" || observation.EvidenceClass != "PINNED_ISOLATED_EXECUTION" || observation.RecordedAtUTC.IsZero() ||
		observation.Declaration == "" || observation.ScopeNote == "" || !observation.FreshElaboration || observation.HistoricalProofTermIdentity || observation.NecessityClaim {
		return ProofDependencyInventory{}, errors.New("book: proof-dependency observation schema, status, scope, or claim boundary is invalid")
	}
	for _, digest := range []string{
		observation.SourceSHA256, observation.GeneratedSourceSHA256, observation.MetricsReceiptSHA256,
		observation.RunReceiptSHA256, observation.RunRequestSHA256, observation.SnapshotID,
		observation.SnapshotManifestSHA256, observation.InstrumentedSourceSHA256,
		observation.MetricsHelperSHA256, observation.OrchestratorScriptSHA256,
		observation.RuntimeScriptSHA256, observation.StdoutSHA256, observation.StderrSHA256,
		observation.DependencyPayloadSHA256,
	} {
		if !validSHA256(digest) {
			return ProofDependencyInventory{}, errors.New("book: proof-dependency observation contains an invalid SHA-256")
		}
	}
	m4Digest := m4Receipt.ReceiptSHA256()
	imports := m4Receipt.Imports()
	if len(imports) != 1 || imports[0] != "Init" || m4Receipt.Toolchain() != "leanprover/lean4:v4.33.1" || !strings.Contains(m4Receipt.LeanVersion(), "(version 4.33.1,") {
		return ProofDependencyInventory{}, errors.New("book: M4 receipt is not an eligible passed Init-only Lean 4.33.1 receipt")
	}
	if observation.SourceSHA256 != m4Receipt.GeneratedSourceSHA256() || observation.GeneratedSourceSHA256 != m4Receipt.GeneratedSourceSHA256() ||
		proof.ProblemID != m4Receipt.ProblemID() || proof.ProblemStatementSHA256 != m4Receipt.ProblemStatementSHA256() || proof.ProofSHA256 != m4Receipt.GeneratedSourceSHA256() ||
		proof.LeanVerificationReceiptSHA256 != m4Digest || proof.LeanProofInputSHA256 != m4Receipt.ProofInputSHA256() {
		return ProofDependencyInventory{}, errors.New("book: proof-dependency observation does not match the exact M0/M4 statement, case, and generated source")
	}
	attached, err := AttachLeanMetricsArtifacts(proof, metricsReceiptBytes, runReceiptBytes, runRequestBytes, snapshotManifestBytes, stdout, stderr)
	if err != nil {
		return ProofDependencyInventory{}, fmt.Errorf("book: reopen M6 execution chain for proof dependencies: %w", err)
	}
	var m6Receipt leanMetricsReceipt
	if err := decodeStrictMetricsJSON(metricsReceiptBytes, &m6Receipt, "Lean metrics receipt"); err != nil {
		return ProofDependencyInventory{}, err
	}
	if attached.LeanMetricsSourceSHA256 != m4Receipt.GeneratedSourceSHA256() || attached.LeanDeclaration != observation.Declaration ||
		attached.LeanMetricsToolchain != m4Receipt.Toolchain() || attached.LeanMetricsLeanVersion != m4Receipt.LeanVersion() ||
		m6Receipt.Declaration != "mathcase_candidate" {
		return ProofDependencyInventory{}, errors.New("book: M6 dependency execution does not join to the exact M4 generated source and toolchain")
	}
	if observation.MetricsReceiptSHA256 != digestHex(metricsReceiptBytes) || observation.RunReceiptSHA256 != digestHex(runReceiptBytes) ||
		observation.RunRequestSHA256 != digestHex(runRequestBytes) || observation.SnapshotManifestSHA256 != digestHex(snapshotManifestBytes) ||
		observation.SnapshotID != m6Receipt.SnapshotID || observation.InstrumentedSourceSHA256 != m6Receipt.InstrumentedSourceSHA ||
		observation.MetricsHelperSHA256 != m6Receipt.MetricsHelperSHA256 || observation.OrchestratorScriptSHA256 != m6Receipt.OrchestratorScriptSHA256 ||
		observation.RuntimeScriptSHA256 != m6Receipt.RuntimeScriptSHA256 || observation.StdoutSHA256 != digestHex(stdout) || observation.StderrSHA256 != digestHex(stderr) {
		return ProofDependencyInventory{}, errors.New("book: proof-dependency observation is misbound to the M6 run, snapshot, helper, or raw outputs")
	}
	markerPayload, err := proofDependencyPayloadFromOutput(stdout)
	if err != nil {
		return ProofDependencyInventory{}, err
	}
	if digestHex(markerPayload) != observation.DependencyPayloadSHA256 || !equalCompactJSON(markerPayload, observation.DependencyPayload) {
		return ProofDependencyInventory{}, errors.New("book: proof-dependency payload does not match the execution-bound M6 stdout marker")
	}
	var payload proofDependencyPayload
	if err := decodeStrictMetricsJSON(observation.DependencyPayload, &payload, "proof-dependency payload"); err != nil {
		return ProofDependencyInventory{}, err
	}
	if err := validateProofDependencyPayload(payload, observation.Declaration, attached.ConstantReferenceNodes); err != nil {
		return ProofDependencyInventory{}, err
	}
	return ProofDependencyInventory{
		SchemaVersion: "mathcase-proof-dependency-inventory-v1",
		Status:        "DIRECT_REFERENCES_RECORDED",
		EvidenceClass: "FRESH_REELABORATION",
		RecordedAtUTC: observation.RecordedAtUTC,
		ProblemID:     m4Receipt.ProblemID(),
		Declaration:   observation.Declaration,
		M4: proofDependencyM4Binding{
			EvidenceID: m4Receipt.EvidenceID(), ReceiptSHA256: m4Digest, ProblemID: m4Receipt.ProblemID(),
			ProblemStatementSHA256: m4Receipt.ProblemStatementSHA256(), ProofInputSHA256: m4Receipt.ProofInputSHA256(),
			GeneratedSourceSHA256: m4Receipt.GeneratedSourceSHA256(),
		},
		M6: proofDependencyM6Binding{
			MetricsReceiptSHA256: digestHex(metricsReceiptBytes), RunReceiptSHA256: digestHex(runReceiptBytes),
			RunRequestSHA256: digestHex(runRequestBytes), SnapshotID: m6Receipt.SnapshotID,
			SnapshotManifestSHA256: digestHex(snapshotManifestBytes), InstrumentedSourceSHA256: m6Receipt.InstrumentedSourceSHA,
			MetricsHelperSHA256: m6Receipt.MetricsHelperSHA256, OrchestratorScriptSHA256: m6Receipt.OrchestratorScriptSHA256,
			RuntimeScriptSHA256: m6Receipt.RuntimeScriptSHA256, StdoutSHA256: digestHex(stdout), StderrSHA256: digestHex(stderr),
		},
		DependencyPayload:                  append(json.RawMessage(nil), observation.DependencyPayload...),
		FreshElaboration:                   true,
		HistoricalProofTermIdentityClaimed: false,
		NecessityClaim:                     false,
		ScopeNote:                          "Direct constants observed in a fresh pinned re-elaboration of the exact M4 generated source. This does not establish historical proof-term identity, necessity, causal contribution, transitive dependencies, or V5 passage.",
	}, nil
}

func proofDependencyPayloadFromOutput(stdout []byte) ([]byte, error) {
	var found []byte
	count := 0
	for _, line := range bytes.Split(stdout, []byte("\n")) {
		index := bytes.Index(line, []byte(proofDependencyMarker))
		if index < 0 {
			continue
		}
		count++
		found = bytes.TrimSpace(line[index+len(proofDependencyMarker):])
	}
	if count != 1 || !json.Valid(found) {
		return nil, fmt.Errorf("book: expected one valid %s record in pinned Lean stdout, found %d", strings.TrimSpace(proofDependencyMarker), count)
	}
	return append([]byte(nil), found...), nil
}

func equalCompactJSON(left, right []byte) bool {
	var compactLeft, compactRight bytes.Buffer
	if json.Compact(&compactLeft, left) != nil || json.Compact(&compactRight, right) != nil {
		return false
	}
	return bytes.Equal(compactLeft.Bytes(), compactRight.Bytes())
}

func validateProofDependencyPayload(payload proofDependencyPayload, declaration string, expectedProofValueOccurrences int) error {
	const expectedScope = "declaration_type_and_stored_proof_value; recursive_core_expr_edges_including_binder_and_let_type_annotations; no_transitive_declaration_bodies"
	const expectedInterpretation = "Direct constants appearing in this freshly elaborated declaration type and proof value; occurrence is not necessity or causal contribution."
	if payload.Schema != "mathcase-proof-dependencies-v1" || payload.Declaration != declaration || payload.TraversalScope != expectedScope ||
		payload.TransitiveBodiesExpanded || payload.NecessityClaim || payload.Interpretation != expectedInterpretation {
		return errors.New("book: proof-dependency payload schema, declaration, scope, or claim boundary is invalid")
	}
	if payload.DeclarationTypeOccurrenceCount < 0 || payload.ProofValueOccurrenceCount < 0 || payload.TotalOccurrenceCount < 0 || payload.UniqueReferenceCount < 0 ||
		payload.UniqueReferenceCount != len(payload.References) {
		return errors.New("book: proof-dependency payload counts are invalid")
	}
	seen := make(map[string]bool, len(payload.References))
	typeTotal, valueTotal, total := 0, 0, 0
	var unresolved []proofDependencyReference
	for _, reference := range payload.References {
		if reference.Name == "" || seen[reference.Name] || reference.DeclarationTypeOccurrences < 0 || reference.ProofValueOccurrences < 0 ||
			reference.TotalOccurrences < 1 || reference.DeclarationTypeOccurrences+reference.ProofValueOccurrences != reference.TotalOccurrences {
			return errors.New("book: proof-dependency reference names or occurrence counts are invalid")
		}
		seen[reference.Name] = true
		if !supportedProofDependencyKind(reference.DeclarationKind) || (reference.Resolution != "RESOLVED" && reference.Resolution != "UNRESOLVED") ||
			(reference.Resolution == "UNRESOLVED") != (reference.DeclarationKind == "UNKNOWN") {
			return errors.New("book: proof-dependency declaration resolution or kind is invalid")
		}
		if reference.Resolution == "UNRESOLVED" {
			unresolved = append(unresolved, reference)
		}
		typeTotal += reference.DeclarationTypeOccurrences
		valueTotal += reference.ProofValueOccurrences
		total += reference.TotalOccurrences
	}
	if typeTotal != payload.DeclarationTypeOccurrenceCount || valueTotal != payload.ProofValueOccurrenceCount || total != payload.TotalOccurrenceCount ||
		len(unresolved) != len(payload.UnresolvedEntries) {
		return errors.New("book: proof-dependency aggregate counts do not match the reference rows")
	}
	if payload.ProofValueOccurrenceCount != expectedProofValueOccurrences {
		return fmt.Errorf("book: proof-value reference count %d does not match M6 expression constant count %d", payload.ProofValueOccurrenceCount, expectedProofValueOccurrences)
	}
	for index := range unresolved {
		if unresolved[index] != payload.UnresolvedEntries[index] {
			return errors.New("book: proof-dependency unresolved entries do not match the references")
		}
	}
	return nil
}

func supportedProofDependencyKind(kind string) bool {
	switch kind {
	case "axiom", "definition", "theorem", "opaque", "quotient", "inductive", "constructor", "recursor", "UNKNOWN":
		return true
	default:
		return false
	}
}

func digestHex(value []byte) string {
	digest := sha256.Sum256(value)
	return hex.EncodeToString(digest[:])
}
