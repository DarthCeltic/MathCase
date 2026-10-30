package gateaudit

import (
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

type gateFixture struct {
	root    string
	dossier domain.Dossier
	record  domain.VerificationRecord
	receipt any
	id      string
}

type gateReaderFixtureReceipt struct {
	SchemaVersion   string                    `json:"schema_version"`
	Gate            domain.VerificationGate   `json:"gate"`
	Scenario        string                    `json:"scenario"`
	EvidenceID      string                    `json:"evidence_id"`
	Outcome         string                    `json:"outcome"`
	ReaderStatus    domain.VerificationStatus `json:"reader_status,omitempty"`
	ExpectedPath    string                    `json:"expected_receipt_path"`
	PresentPath     string                    `json:"present_path,omitempty"`
	PresentSHA256   string                    `json:"present_sha256,omitempty"`
	StatementSHA256 string                    `json:"problem_statement_sha256"`
	Refusal         string                    `json:"refusal,omitempty"`
}

func TestTypedV3ThroughV7ReadersAcceptAndRefuse(t *testing.T) {
	tests := []struct {
		gate   domain.VerificationGate
		status domain.VerificationStatus
	}{
		{domain.GateStatementFidelity, domain.VerificationPassed},
		{domain.GateFalsification, domain.VerificationPassed},
		{domain.GateEssentiality, domain.VerificationPassed},
		{domain.GateProvenanceLeakage, domain.VerificationPassed},
		{domain.GateLiteratureAndStatus, domain.VerificationPassed},
	}
	for _, test := range tests {
		t.Run(string(test.gate), func(t *testing.T) {
			t.Run("well-formed typed receipt is accepted", func(t *testing.T) {
				fixture := makeGateFixture(t, test.gate)
				result := readFixture(t, fixture, trustedSyntheticReviewer)
				if result.Status != test.status {
					t.Fatalf("Read() status = %s, want %s (%s)", result.Status, test.status, result.Summary)
				}
				record := fixture.record
				record.Status = result.Status
				record.GateReceipt = &domain.GateReceiptReference{EvidenceID: result.EvidenceID, ReceiptSHA256: result.SHA256}
				dossier := fixture.dossier
				dossier.Verifications = []domain.VerificationRecord{record}
				if err := VerifyDossierGateReceipts(fixture.root, dossier, trustedSyntheticReviewer); err != nil {
					t.Fatalf("shared M8 typed-receipt boundary rejected accepted %s receipt: %v", test.gate, err)
				}
				persisted, err := os.ReadFile(filepath.Join(fixture.root, fixture.id+".gate.json"))
				if err != nil {
					t.Fatal(err)
				}
				if _, err := PersistReceipt(fixture.root, fixture.receipt, fixture.dossier, fixture.record, trustedSyntheticReviewer); err == nil {
					t.Fatal("PersistReceipt() replaced an existing typed gate receipt")
				}
				current, err := os.ReadFile(filepath.Join(fixture.root, fixture.id+".gate.json"))
				if err != nil {
					t.Fatal(err)
				}
				if digestBytes(current) != digestBytes(persisted) {
					t.Fatal("PersistReceipt() changed bytes after refusing an existing receipt ID")
				}
			})

			t.Run("misbound receipt is refused", func(t *testing.T) {
				fixture := makeGateFixture(t, test.gate)
				fixture.receipt = setReceiptProblemID(fixture.receipt, "other-problem")
				writeGateReceipt(t, fixture.root, fixture.id, fixture.receipt)
				requireReaderRefusal(t, fixture, fixture.id, "misbound_problem", fixture.id+".gate.json", fixture.id+".gate.json", trustedSyntheticReviewer)
			})
			if test.gate == domain.GateStatementFidelity {
				t.Run("child execution statement misbinding is refused", func(t *testing.T) {
					fixture := makeGateFixture(t, test.gate)
					receipt := fixture.receipt.(V3Receipt)
					receipt.ProbeReceipts[0].Execution.ProblemStatementSHA256 = strings.Repeat("f", 64)
					fixture.receipt = receipt
					writeGateReceipt(t, fixture.root, fixture.id, fixture.receipt)
					requireReaderRefusal(t, fixture, fixture.id, "v3_child_statement_misbound", fixture.id+".gate.json", fixture.id+".gate.json", trustedSyntheticReviewer)
				})
				t.Run("generated probe source substitution is refused", func(t *testing.T) {
					fixture := makeGateFixture(t, test.gate)
					receipt := fixture.receipt.(V3Receipt)
					runPath := filepath.Join(fixture.root, filepath.FromSlash(receipt.ProbeReceipts[0].Execution.OutputPath))
					var local solver.LeanRandomizedCheckReceipt
					data, err := os.ReadFile(runPath)
					if err != nil {
						t.Fatal(err)
					}
					if err := json.Unmarshal(data, &local); err != nil {
						t.Fatal(err)
					}
					local.ClaimBody = "True"
					tampered, err := json.Marshal(local)
					if err != nil {
						t.Fatal(err)
					}
					if err := os.WriteFile(runPath, tampered, 0o600); err != nil {
						t.Fatal(err)
					}
					receipt.ProbeReceipts[0].Execution.OutputSHA256 = digestBytes(tampered)
					fixture.receipt = receipt
					writeGateReceipt(t, fixture.root, fixture.id, fixture.receipt)
					requireReaderRefusal(t, fixture, fixture.id, "v3_probe_source_substitution", fixture.id+".gate.json", fixture.id+".gate.json", trustedSyntheticReviewer)
				})
			}

			t.Run("malformed typed receipt is refused", func(t *testing.T) {
				fixture := makeGateFixture(t, test.gate)
				if err := os.WriteFile(filepath.Join(fixture.root, fixture.id+".gate.json"), []byte("{"), 0o600); err != nil {
					t.Fatal(err)
				}
				requireReaderRefusal(t, fixture, fixture.id, "malformed_typed_receipt", fixture.id+".gate.json", fixture.id+".gate.json", trustedSyntheticReviewer)
			})

			t.Run("hash-only artifact is refused", func(t *testing.T) {
				fixture := makeGateFixture(t, test.gate)
				hashOnlyID := "hash-only-" + fixture.id
				if err := os.WriteFile(filepath.Join(fixture.root, hashOnlyID+".artifact"), []byte(`{"claim":"passed"}`), 0o600); err != nil {
					t.Fatal(err)
				}
				requireReaderRefusal(t, fixture, hashOnlyID, "hash_only_substitute", hashOnlyID+".gate.json", hashOnlyID+".artifact", trustedSyntheticReviewer)
			})

			if test.gate == domain.GateStatementFidelity || test.gate == domain.GateLiteratureAndStatus {
				t.Run("unconfigured identity trust source remains blocked", func(t *testing.T) {
					fixture := makeGateFixture(t, test.gate)
					result := readFixture(t, fixture, nil)
					if result.Status != domain.VerificationBlocked {
						t.Fatalf("Read() without an identity trust source = %s, want BLOCKED", result.Status)
					}
				})
				t.Run("reviewer identity mismatch is refused", func(t *testing.T) {
					fixture := makeGateFixture(t, test.gate)
					switch receipt := fixture.receipt.(type) {
					case V3Receipt:
						receipt.ReviewerIdentity.Subject = "different-reviewer"
						fixture.receipt = receipt
					case V7Receipt:
						receipt.ReviewerIdentity.Subject = "different-reviewer"
						fixture.receipt = receipt
					}
					writeGateReceipt(t, fixture.root, fixture.id, fixture.receipt)
					requireReaderRefusal(t, fixture, fixture.id, "reviewer_identity_mismatch", fixture.id+".gate.json", fixture.id+".gate.json", trustedSyntheticReviewer)
				})
			}
		})
	}
}

func TestPersistReceiptRetainsReaderRefusedDraft(t *testing.T) {
	t.Parallel()
	fixture := makeGateFixture(t, domain.GateFalsification)
	fixture.receipt = setReceiptProblemID(fixture.receipt, "other-problem")
	result, err := PersistReceipt(fixture.root, fixture.receipt, fixture.dossier, fixture.record, trustedSyntheticReviewer)
	if err == nil {
		t.Fatal("PersistReceipt(misbound V4 receipt) error = nil, want reader refusal")
	}
	path := filepath.Join(fixture.root, fixture.id+".gate.json")
	data, readErr := os.ReadFile(path)
	if readErr != nil {
		t.Fatalf("PersistReceipt() refused draft readback = %v, want preserved bytes", readErr)
	}
	if result.EvidenceID != fixture.id || result.SHA256 != digestBytes(data) {
		t.Fatalf("PersistReceipt() refusal identity = (%q, %q), want preserved (%q, %q)", result.EvidenceID, result.SHA256, fixture.id, digestBytes(data))
	}
	_, readErr = Read(fixture.root, fixture.id, result.SHA256, fixture.dossier, fixture.record, trustedSyntheticReviewer)
	if readErr == nil {
		t.Fatal("Read(misbound V4 draft) error = nil, want refusal after persistence")
	}
	logReaderFixtureReceipt(t, fixture, "producer_persisted_misbound_draft", "REFUSED", fixture.id+".gate.json", fixture.id+".gate.json", result, readErr)
}

func TestLeanDeclarationMatchesExactFormalTypeAndRejectsChangedBody(t *testing.T) {
	t.Parallel()
	statement := "∀ {α : Type u} {a b c : α}, a ∈ [b, c] ↔ a = b ∨ a = c"
	source := []byte("lemma mem_pair {a b c : α} : a ∈ [b, c] ↔ a = b ∨ a = c := by\n  simp\n")
	if !LeanDeclarationMatches(source, "mem_pair", statement) {
		t.Fatal("LeanDeclarationMatches(exact implicit source binders) = false, want true")
	}
	changed := []byte("lemma mem_pair {a b c : α} : a ∈ [b, c] ↔ a = b := by\n  simp\n")
	if LeanDeclarationMatches(changed, "mem_pair", statement) {
		t.Fatal("LeanDeclarationMatches(changed proposition body) = true, want false")
	}
	explicitStatement := "forall (n : Nat), n = n"
	explicitSource := []byte("theorem self_eq (n : Nat) : n = n := by rfl\n")
	if !LeanDeclarationMatches(explicitSource, "self_eq", explicitStatement) {
		t.Fatal("LeanDeclarationMatches(explicit ASCII forall binders) = false, want true")
	}
	wrongBinder := []byte("theorem self_eq (n : Int) : n = n := by rfl\n")
	if LeanDeclarationMatches(wrongBinder, "self_eq", explicitStatement) {
		t.Fatal("LeanDeclarationMatches(wrong binder type) = true, want false")
	}
	if containsLeanTokenSequence("mn : Nat", "n : Nat") {
		t.Fatal("containsLeanTokenSequence() matched a binder name inside a longer identifier")
	}
	if !containsLeanTokenSequence("{α : Type u} {a b c : α}", "{a b c : α}") {
		t.Fatal("containsLeanTokenSequence() missed an exact grouped binder list")
	}
}

func TestLeanDeclarationMatchesExactSourceBindsNameUniversesAndAllBinders(t *testing.T) {
	t.Parallel()
	source := []byte(`universe u
namespace Algebra.Group
section
-- A comment that resembles the target declaration must not provide evidence.
theorem mul_assoc.{u} {α : Type u} [Inhabited α] (x : α) : x = x := rfl
end
end Algebra.Group
`)
	statement := "forall {α : Type u} [Inhabited α] (x : α), x = x"
	if !LeanDeclarationMatchesExactSource(source, "Algebra.Group.mul_assoc", statement) {
		t.Fatal("exact namespaced declaration with matching universe and binders was rejected")
	}
	cases := []struct {
		name      string
		decl      string
		statement string
		source    []byte
	}{
		{name: "omitted implicit binder", decl: "Algebra.Group.mul_assoc", statement: "forall (x : α), x = x", source: source},
		{name: "changed universe", decl: "Algebra.Group.mul_assoc", statement: "forall {α : Type v} [Inhabited α] (x : α), x = x", source: source},
		{name: "different namespace", decl: "Algebra.Other.mul_assoc", statement: statement, source: source},
		{name: "similar name only", decl: "Algebra.Group.mul", statement: statement, source: source},
		{name: "comment only", decl: "Algebra.Group.mul_assoc", statement: statement, source: []byte("-- theorem mul_assoc.{u} {α : Type u} [Inhabited α] (x : α) : x = x := rfl\n")},
		{name: "unreopened section variables", decl: "Algebra.Group.mul_assoc", statement: statement, source: []byte("namespace Algebra.Group\nsection\nvariable {α : Type u}\ntheorem mul_assoc (x : α) : x = x := rfl\nend\nend Algebra.Group\n")},
	}
	for _, test := range cases {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			if LeanDeclarationMatchesExactSource(test.source, test.decl, test.statement) {
				t.Fatalf("accepted an unbound declaration case %q", test.name)
			}
		})
	}
}

func TestLeanDeclarationMatchesExactSourceHonorsRootQualifiedName(t *testing.T) {
	t.Parallel()

	source := []byte("namespace Outer\ntheorem _root_.RootProof : True := True.intro\nend Outer\n")
	tests := []struct {
		name            string
		declarationName string
		want            bool
	}{
		{name: "root declaration", declarationName: "RootProof", want: true},
		{name: "must not inherit ambient namespace", declarationName: "Outer.RootProof", want: false},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			got := LeanDeclarationMatchesExactSource(source, test.declarationName, "True")
			if got != test.want {
				t.Errorf("LeanDeclarationMatchesExactSource(source, %q, %q) = %t, want %t", test.declarationName, "True", got, test.want)
			}
		})
	}
}

func makeGateFixture(t *testing.T, gate domain.VerificationGate) gateFixture {
	t.Helper()
	now := time.Date(2026, 10, 21, 4, 0, 0, 0, time.UTC)
	const problemID = "synthetic-problem"
	const statement = "For elements a, b, and c of a type α, a belongs to the list [b, c] exactly when a equals b or c."
	const leanStatement = "∀ {α : Type u} {a b c : α}, a ∈ [b, c] ↔ a = b ∨ a = c"
	rawSource := []byte("lemma synthetic_identity {a b c : α} : a ∈ [b, c] ↔ a = b ∨ a = c := by\n  aesop\n")
	root := t.TempDir()
	if err := os.Mkdir(filepath.Join(root, "raw"), 0o700); err != nil {
		t.Fatal(err)
	}
	if err := os.Mkdir(filepath.Join(root, "inputs"), 0o700); err != nil {
		t.Fatal(err)
	}
	if err := os.Mkdir(filepath.Join(root, "catalog"), 0o700); err != nil {
		t.Fatal(err)
	}
	cleared := gate == domain.GateProvenanceLeakage
	source := syntheticCatalogSource(now, cleared)
	if gate == domain.GateStatementFidelity {
		source.ContentSHA256 = digestBytes(rawSource)
	}
	problem := catalog.Problem{
		ID: problemID, Title: "Synthetic identity", InformalStatement: statement,
		LeanStatement: leanStatement, Status: catalog.StatusProven, SourceIDs: []string{source.ID},
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, []catalog.Problem{problem})
	if err != nil {
		t.Fatal(err)
	}
	source = snapshot.Sources[0]
	snapshotBytes, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatal(err)
	}
	writeRaw(t, root, "catalog/m0.json", snapshotBytes)
	statementSHA, err := domain.ProblemStatementDigest(problemID, statement, leanStatement)
	if err != nil {
		t.Fatal(err)
	}
	dossier := domain.Dossier{
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		Case:                  domain.Case{ID: "synthetic-case", CreatedAt: now.Add(-time.Hour)},
		Problem:               domain.MathProblem{ID: problemID, Title: problem.Title, Statement: statement, LeanStatement: leanStatement, M0Status: string(problem.Status), SourceIDs: []string{source.ID}},
	}
	record := domain.VerificationRecord{
		Gate: gate, Status: domain.VerificationBlocked, Summary: "synthetic typed-receipt fixture",
		ProblemID: problemID, ProblemStatementSHA256: statementSHA, RecordedAt: now,
	}
	fixture := gateFixture{root: root, dossier: dossier, record: record, id: "receipt-" + strings.ToLower(string(gate))}
	header := func(schema string, proofSHA string) Header {
		return Header{SchemaVersion: schema, EvidenceID: fixture.id, Gate: gate, ProblemID: problemID,
			ProblemStatementSHA256: statementSHA, ProofSHA256: proofSHA, RecordedAt: now}
	}
	newProcess := func(id, kind, proofSHA, outcome string) ProcessReceipt {
		input := []byte("synthetic input for " + id)
		output := []byte("synthetic output for " + id)
		inputPath, outputPath := "inputs/"+id+".json", "raw/"+id+".json"
		writeRaw(t, root, inputPath, input)
		writeRaw(t, root, outputPath, output)
		return ProcessReceipt{EvidenceID: id, Kind: kind, ProblemID: problemID, ProblemStatementSHA256: statementSHA,
			ProofSHA256: proofSHA, RunID: "run-" + id, StartedAt: now.Add(-time.Minute), FinishedAt: now,
			ExitCode: 0, InputSHA256: digestBytes(input), InputPath: inputPath, OutputPath: outputPath,
			OutputSHA256: digestBytes(output), Outcome: outcome}
	}
	switch gate {
	case domain.GateStatementFidelity:
		review := syntheticV3Review(now, statement, leanStatement, snapshot.ContentSHA256, digestBytes(rawSource))
		writeRaw(t, root, "raw/m0-source.lean", rawSource)
		writeRaw(t, root, "raw/lean-source.lean", rawSource)
		probes := make([]V3ProbeReceipt, 0, len(review.BoundaryProbes))
		for _, probe := range review.BoundaryProbes {
			probeStatement := domain.MathProblem{ID: problemID, Statement: statement, LeanStatement: probe.LeanInstance}
			localReceipt, runID, startedAt, finishedAt := syntheticV3LocalReceipt(t, probeStatement, probe, now)
			input, err := json.Marshal(V3ProbeRunInput{SchemaVersion: "mathcase-v3-probe-run-input-v1", Probe: probe,
				ProblemID: problemID, ParentStatement: statement, InstanceLeanStatement: probe.LeanInstance,
				Seed: localReceipt.Seed, Imports: localReceipt.Imports, Binders: localReceipt.Binders, ClaimBody: localReceipt.ClaimBody,
				HypothesesBody: localReceipt.HypothesesBody, Cases: [][]string{{}}})
			if err != nil {
				t.Fatal(err)
			}
			inputPath := "inputs/" + probe.EvidenceID + ".json"
			writeRaw(t, root, inputPath, input)
			output, err := json.MarshalIndent(localReceipt, "", "  ")
			if err != nil {
				t.Fatal(err)
			}
			output = append(output, '\n')
			outputPath := "raw/" + probe.EvidenceID + ".randomized.json"
			writeRaw(t, root, outputPath, output)
			instanceSHA, err := domain.ProblemStatementDigest(problemID, statement, probe.LeanInstance)
			if err != nil {
				t.Fatal(err)
			}
			probes = append(probes, V3ProbeReceipt{Probe: probe, SampleIndex: 0, Execution: ProcessReceipt{
				EvidenceID: probe.EvidenceID, Kind: "V3_BOUNDARY_PROBE", ProblemID: problemID,
				ProblemStatementSHA256: instanceSHA, RunID: runID,
				StartedAt: startedAt, FinishedAt: finishedAt, ExitCode: 0, InputPath: inputPath,
				InputSHA256: digestBytes(input), OutputPath: outputPath, OutputSHA256: digestBytes(output), Outcome: string(probe.Outcome),
			}})
		}
		fixture.record.StatementFidelity = &review
		fixture.record.ReviewerID = review.SemanticComparison.ReviewerID
		fixture.record.EvidenceIDs = append(review.EvidenceIDs(), "v3-reviewer-attestation")
		fixture.receipt = V3Receipt{Header: header(V3ReceiptSchema, ""), CatalogSnapshotPath: "catalog/m0.json", Review: review,
			SourceItemPath: "raw/m0-source.lean", LeanSourcePath: "raw/lean-source.lean",
			ReviewerIdentity: ReviewerIdentity{ReviewerID: "reviewer-v3", Issuer: "synthetic-test-issuer", Subject: "reviewer-v3", AttestationEvidenceID: "v3-reviewer-attestation"}, ProbeReceipts: probes}
	case domain.GateFalsification:
		audit := domain.V4FalsificationAudit{
			HypothesisEvidenceID: "v4-random", HypothesesSatisfiable: true,
			RandomizedCheckStatus: domain.V4RandomizedSamplesPass, RandomizedTestsRun: 3, RandomizedEvidenceID: "v4-random",
			SMTSearchStatus: domain.V4SMTUnsat, SMTEvidenceID: "v4-smt",
			NegationSearchStatus: domain.V4NegationNoCounterexample, NegationSearchEvidenceIDs: []string{"v4-negation"},
		}
		recordIDs := audit.EvidenceIDs()
		var runs []ProcessReceipt
		for _, item := range []struct{ id, kind string }{{"v4-random", "RANDOMIZED"}, {"v4-smt", "SMT"}, {"v4-negation", "NEGATION"}} {
			runs = append(runs, newProcess(item.id, item.kind, "", "COMPLETED"))
		}
		fixture.record.EvidenceIDs, fixture.record.Falsification = recordIDs, &audit
		fixture.receipt = V4Receipt{Header: header(V4ReceiptSchema, ""), Audit: audit, Executions: runs}
	case domain.GateEssentiality:
		proofSHA := strings.Repeat("f", 64)
		fixture.record.ProofSHA256 = proofSHA
		sourceBytes := []byte("theorem synthetic : True := by trivial\n")
		sourcePath := "raw/ablated.lean"
		writeRaw(t, root, sourcePath, sourceBytes)
		input, output := []byte("ablation request"), []byte("bounded search exhausted")
		writeRaw(t, root, "inputs/v5.json", input)
		writeRaw(t, root, "raw/v5-output.txt", output)
		audit := domain.V5EssentialityAudit{Ablations: []domain.V5LemmaAblation{{
			LemmaID: "lemma-main", Attempted: true, SearchCompleted: true, AblatedProofClosed: false,
			AblatedSourceSHA256: digestBytes(sourceBytes), EvidenceID: "v5-ablation",
		}}}
		fixture.record.EvidenceIDs, fixture.record.Essentiality = audit.EvidenceIDs(), &audit
		fixture.receipt = V5Receipt{Header: header(V5ReceiptSchema, proofSHA), Audit: audit, Ablations: []V5AblationReceipt{{
			LemmaID: "lemma-main", EvidenceID: "v5-ablation", ProblemID: problemID, ProblemStatementSHA256: statementSHA,
			ProofSHA256: proofSHA, RunID: "run-v5", StartedAt: now.Add(-time.Minute), FinishedAt: now, ExitCode: 0,
			InputSHA256: digestBytes(input), InputPath: "inputs/v5.json", AblatedSourceSHA256: digestBytes(sourceBytes),
			AblatedSourcePath: sourcePath, OutputPath: "raw/v5-output.txt", OutputSHA256: digestBytes(output), SearchCompleted: true,
			AblatedProofClosed: false,
		}}}
	case domain.GateProvenanceLeakage:
		provenance := []byte("synthetic provenance artifact")
		fixture.dossier.ProvenanceArtifactSHA256 = digestBytes(provenance)
		artifactSHA, splitSHA := fixture.dossier.ProvenanceArtifactSHA256, digestBytes([]byte("split"))
		record := &fixture.record
		record.ArtifactSHA256, record.DatasetSplitSHA256, record.DatasetSplitEvidenceID = artifactSHA, splitSHA, "v6-split"
		record.LeakageAuditEvidenceID, record.SourceIDs, record.ReviewerID = "v6-leakage", []string{source.ID}, "reviewer-v6"
		record.SourceRightsAudits = []domain.SourceRightsAudit{{SourceID: source.ID, RightsEvidenceID: source.RightsEvidenceID,
			RightsStatus: string(source.Rights), License: source.License, RequiredUses: []string{string(catalog.UseReference)},
			AllowedUses: sourceUsesToStrings(source.AllowedUses)}}
		record.EvidenceIDs = []string{source.RightsEvidenceID, "v6-split", "v6-leakage"}
		split := newProcess("v6-split", "DATASET_SPLIT", "", "COMPLETED")
		leakage := newProcess("v6-leakage", "LEAKAGE_AUDIT", "", "NO_LEAKAGE")
		fixture.receipt = V6Receipt{Header: header(V6ReceiptSchema, ""), CatalogSnapshotSHA256: snapshot.ContentSHA256,
			CatalogSnapshotPath: "catalog/m0.json", ArtifactSHA256: artifactSHA, DatasetSplitSHA256: splitSHA,
			DatasetSplitEvidenceID: "v6-split", LeakageAuditEvidenceID: "v6-leakage", SourceIDs: []string{source.ID},
			SourceRights:   []V6SourceRights{{Source: source, RequiredUses: []catalog.SourceUse{catalog.UseReference}}},
			SplitExecution: split, LeakageExecution: leakage, LeakageDetected: false, ReviewerID: "reviewer-v6"}
	case domain.GateLiteratureAndStatus:
		search := domain.LiteratureSearchRecord{Database: "synthetic-index", Query: "n + 0", SearchedAt: now.Add(-time.Hour), EvidenceID: "v7-search"}
		statusEvidence := V7CatalogStatusEvidence{SchemaVersion: "mathcase-v7-catalog-status-evidence-v1", EvidenceID: "v7-status",
			ProblemID: problemID, ProblemStatementSHA256: statementSHA, CatalogSnapshotSHA256: snapshot.ContentSHA256, Status: problem.Status}
		statusBytes, err := json.Marshal(statusEvidence)
		if err != nil {
			t.Fatal(err)
		}
		writeRaw(t, root, "raw/v7-status.json", statusBytes)
		input := V7SearchInput{SchemaVersion: "mathcase-v7-search-input-v1", ProblemID: problemID,
			ProblemStatementSHA256: statementSHA, CatalogSnapshotSHA256: snapshot.ContentSHA256,
			Database: search.Database, Query: search.Query, SearchedAt: search.SearchedAt}
		inputBytes, err := json.Marshal(input)
		if err != nil {
			t.Fatal(err)
		}
		output := []byte(`{"results":0}`)
		writeRaw(t, root, "inputs/v7-search.json", inputBytes)
		writeRaw(t, root, "raw/v7-search.json", output)
		fixture.record.EvidenceIDs = []string{search.EvidenceID, statusEvidence.EvidenceID, "v7-reviewer-attestation"}
		fixture.record.Searches, fixture.record.Findings = []domain.LiteratureSearchRecord{search}, []string{"No contrary statement found in synthetic fixture."}
		fixture.record.Novelty, fixture.record.ReviewerID = domain.NoveltyOpen, "reviewer-v7"
		fixture.receipt = V7Receipt{Header: header(V7ReceiptSchema, ""), Searches: []domain.LiteratureSearchRecord{search},
			SearchResults: []V7SearchReceipt{{EvidenceID: search.EvidenceID, ProblemID: problemID, ProblemStatementSHA256: statementSHA,
				Database: search.Database, Query: search.Query, SearchedAt: search.SearchedAt, RunID: "run-v7-search",
				StartedAt: now.Add(-time.Minute), FinishedAt: now, ExitCode: 0, InputSHA256: digestBytes(inputBytes),
				InputPath: "inputs/v7-search.json", OutputPath: "raw/v7-search.json", OutputSHA256: digestBytes(output), ResultCount: 0}},
			Findings: append([]string(nil), fixture.record.Findings...), Novelty: fixture.record.Novelty, ReviewerID: fixture.record.ReviewerID,
			ReviewerIdentity:      ReviewerIdentity{ReviewerID: "reviewer-v7", Issuer: "synthetic-test-issuer", Subject: "reviewer-v7", AttestationEvidenceID: "v7-reviewer-attestation"},
			CatalogSnapshotSHA256: snapshot.ContentSHA256, CatalogSnapshotPath: "catalog/m0.json", CatalogStatus: problem.Status,
			StatusEvidenceID: statusEvidence.EvidenceID, StatusEvidencePath: "raw/v7-status.json", StatusEvidenceSHA256: digestBytes(statusBytes)}
	default:
		t.Fatalf("unsupported gate fixture %q", gate)
	}
	return fixture
}

func syntheticCatalogSource(now time.Time, cleared bool) catalog.SourceVersion {
	source := catalog.SourceVersion{ID: "source-pinned", URL: "https://example.org/source", ItemLocator: "item-1",
		Revision: "source-revision-1", RetrievedAt: now, ContentSHA256: strings.Repeat("a", 64), Rights: catalog.RightsUnknown}
	if cleared {
		source.Lane, source.Rights, source.AuthorOrHolder = catalog.LaneMathlibProofPairs, catalog.RightsCleared, "Synthetic Holder"
		source.License, source.LicenseTermsURL = "Apache-2.0", "https://example.org/license"
		source.TermsNote, source.Attribution = "Fixture-only grant", "Synthetic Holder, item-1"
		source.AllowedUses = []catalog.SourceUse{catalog.UseReference, catalog.UseLocalStorage}
		source.RightsReviewerID, source.RightsReviewedAt, source.RightsEvidenceID = "rights-reviewer", now, "v6-rights"
	}
	return source
}

func syntheticV3Review(now time.Time, statement, leanStatement, snapshotSHA, sourceSHA string) domain.V3StatementFidelity {
	probeStatement := "∀ a b c : Fin 0, a ∈ [b, c] ↔ a = b ∨ a = c"
	review := domain.V3StatementFidelity{
		Source: domain.V3SourceStatementPin{URL: "https://example.org/source", ItemLocator: "item-1", Revision: "source-revision-1",
			RawItemSHA256: sourceSHA, CatalogSnapshotSHA256: snapshotSHA, Statement: statement, EvidenceID: "v3-source"},
		Lean: domain.V3LeanStatementPin{AuthorID: "formalizer", Revision: "lean-revision-1", FileLocator: "Main.lean",
			DeclarationName: "synthetic_identity", SourceFileSHA256: sourceSHA, NormalizedStatement: leanStatement,
			NormalizedStatementSHA256: digestBytes([]byte(leanStatement)), EvidenceID: "v3-lean"},
		BackTranslation: domain.V3BackTranslation{Text: "An element is in the two-entry list exactly when it equals one of the entries.", ProducedByID: "translator",
			Role: domain.V3BackTranslationWitnessRole, RecordedAt: now, EvidenceID: "v3-backtranslation"},
		SemanticComparison: domain.V3SemanticComparison{Status: domain.V3SemanticPass, Differences: []domain.V3SemanticDifference{},
			Rationale: "The quantified membership biconditional matches both equality alternatives.", UnresolvedAssumptions: []string{}, ReviewerID: "reviewer-v3",
			HumanSpotReview: true, ReviewerAccepted: true, RecordedAt: now, EvidenceID: "v3-semantic"},
		NaturalParameterApplicability: domain.V3NaturalParametersNone, MeaningfulNaturalParameters: []string{},
		EmptyObjectApplicability: domain.V3EmptyObjectRelevant, IndependentRoute: "separate-source-review", BoundaryProbes: []domain.V3BoundaryProbe{},
	}
	review.BoundaryProbes = append(review.BoundaryProbes, domain.V3BoundaryProbe{Kind: domain.V3BoundaryEmptyObject, ParameterID: "carrier", Value: "empty",
		SourceInstance: "Interpret α as the empty type Fin 0.", LeanInstance: probeStatement, Outcome: domain.V3BoundaryConsistent,
		Rationale: "The universal instance has no inhabitants of Fin 0, so the statement remains vacuously true.", EvidenceID: "v3-empty-type"})
	return review
}

func syntheticV3LocalReceipt(t *testing.T, problem domain.MathProblem, probe domain.V3BoundaryProbe, now time.Time) (solver.LeanRandomizedCheckReceipt, string, time.Time, time.Time) {
	t.Helper()
	snapshot := newGateTestSnapshot(t)
	started, finished := now.Add(-time.Minute), now.Add(-30*time.Second)
	container := "mathcase-v3-synthetic-container"
	versionStarted, versionFinished := now.Add(-3*time.Minute), now.Add(-2*time.Minute)
	versionText := "Lean (version 4.33.1, synthetic fixture)"
	versionExecution := syntheticSnapshotExecution(snapshot.Manifest, "mathcase-v3-version-container", versionStarted, versionFinished, false)
	versionStdout := versionText + "\n"
	versionCheck := solver.LeanVersionCheck{
		Version: versionText, StdoutSHA256: digestBytes([]byte(versionStdout)), StderrSHA256: digestBytes(nil), StdoutExcerpt: versionStdout,
		Execution: versionExecution,
	}
	processExecution := syntheticSnapshotExecution(snapshot.Manifest, container, started, finished, true)
	request := solver.LeanRandomizedCheckRequest{Problem: problem, Seed: "4d43563230323631", ClaimBody: probe.LeanInstance,
		HypothesesBody: "True", Cases: [][]string{{}}}
	generatedSource, err := solver.ExpectedRandomizedCheckSource(request, []string{"Init"})
	if err != nil {
		t.Fatalf("ExpectedRandomizedCheckSource() error = %v", err)
	}
	generatedHash := digestBytes([]byte(generatedSource))
	compiled := []byte("synthetic compiled artifact bytes")
	trueValue := true
	zero := 0
	stdout := "MATHCASE_CLAIM_000=true\nMATHCASE_HYP_000=true\n"
	return solver.LeanRandomizedCheckReceipt{
		SchemaVersion: "mathcase-lean-randomized-check-v5", EvidenceID: "lean-v3-synthetic-run", RecordedAtUTC: finished,
		ProblemID: problem.ID, ProblemStatementSHA256: mustProblemDigest(t, problem), PropositionSHA256: digestBytes([]byte(problem.LeanStatement)),
		GeneratedSourceSHA256: generatedHash, ProjectSnapshotSHA256: snapshot.Manifest.ProjectSnapshot.SHA256,
		ProjectSnapshot: snapshot.Manifest.ProjectSnapshot, SnapshotID: snapshot.Manifest.SnapshotID, SnapshotManifestPath: snapshot.Path,
		SnapshotManifestSHA256: snapshot.SHA256, SnapshotImageCheck: syntheticSnapshotImageCheck(snapshot.Manifest, now),
		ArtifactSnapshotSchema: solver.LeanArtifactSnapshotSchemaVersion, GeneratedSource: generatedSource,
		CompiledArtifactStatus: "CAPTURED", CompiledArtifact: compiled, CompiledArtifactSHA256: digestBytes(compiled), CompiledArtifactSize: int64(len(compiled)),
		Toolchain: snapshot.Manifest.Toolchain, LeanVersion: versionText, LeanVersionCheck: versionCheck, Imports: []string{"Init"},
		Seed: request.Seed, Binders: []solver.LeanSampleBinder{}, ClaimBody: probe.LeanInstance, HypothesesBody: "True", HasHypotheses: false,
		SampleCount: 1, TestsRun: 1, Cases: []solver.LeanRandomizedCaseResult{{Index: 0, Values: []string{}, ClaimHolds: &trueValue, HypothesesHold: &trueValue}},
		CounterexampleCaseIndices: []int{}, HypothesisWitnessCaseIndex: &zero, Status: "SAMPLES_PASS", Summary: "Synthetic receipt fixture.",
		StdoutSHA256: digestBytes([]byte(stdout)), StderrSHA256: digestBytes(nil), StdoutExcerpt: stdout, StderrExcerpt: "", OutputTruncated: false,
		ExitCode: 0, ElapsedMilliseconds: 25000, ExecutionIsolation: "Docker: qualified content-addressed Lean snapshot; image " + snapshot.Manifest.ImageDigest + "; network disabled; read-only image root; read-only candidate input; per-run writable tmpfs and output mount; uid 65532; capabilities dropped; no-new-privileges; 2 CPU, 4 GiB memory, 128 processes; wall-clock timeout",
		ExecutionImage: snapshot.Manifest.ImageDigest, SandboxExecution: processExecution,
	}, container, started, finished
}

func mustProblemDigest(t *testing.T, problem domain.MathProblem) string {
	t.Helper()
	digest, err := domain.ProblemStatementDigest(problem.ID, problem.Statement, problem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	return digest
}

type gateTestSnapshot struct {
	Manifest solver.LeanSnapshotManifest
	Path     string
	SHA256   string
}

func newGateTestSnapshot(t *testing.T) gateTestSnapshot {
	t.Helper()
	root := t.TempDir()
	project := filepath.Join(root, "project")
	for name, content := range map[string]string{
		"lean-toolchain": "leanprover/lean4:v4.33.1\n", "lakefile.toml": "name = \"fixture\"\n",
		"lake-manifest.json": "{\"packagesDir\":\".lake/packages\",\"packages\":[]}\n", "Main.lean": "import Init\nexample : True := by trivial\n",
		filepath.Join(".lake", "build", "lib", "lean", "Init.olean"): "fixture compiled output",
	} {
		path := filepath.Join(project, name)
		if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(path, []byte(content), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	sourceSnapshot, sourceEntries, err := solver.BuildLeanSnapshotInventory(project, false)
	if err != nil {
		t.Fatalf("BuildLeanSnapshotInventory(source) error = %v", err)
	}
	projectSnapshot, projectEntries, err := solver.BuildLeanSnapshotInventory(project, true)
	if err != nil {
		t.Fatalf("BuildLeanSnapshotInventory(project) error = %v", err)
	}
	sourceManifestPath := filepath.Join(root, "source-inventory.jsonl")
	sourceSHA, err := solver.WriteLeanSnapshotInventory(sourceManifestPath, sourceSnapshot, sourceEntries)
	if err != nil {
		t.Fatal(err)
	}
	inventoryPath := filepath.Join(root, "compiled-inventory.jsonl")
	inventorySHA, err := solver.WriteLeanSnapshotInventory(inventoryPath, projectSnapshot, projectEntries)
	if err != nil {
		t.Fatal(err)
	}
	image := "sha256:" + strings.Repeat("a", 64)
	baseImage, gitImage := "sha256:"+strings.Repeat("b", 64), "sha256:"+strings.Repeat("c", 64)
	recipeSHA := digestBytes([]byte("synthetic recipe"))
	projectSnapshot.SourceManifestSHA256, projectSnapshot.InventorySHA256, projectSnapshot.ImageDigest = sourceSHA, inventorySHA, image
	buildStart := time.Date(2026, 10, 21, 1, 0, 0, 0, time.UTC)
	stdoutPath, stderrPath := filepath.Join(root, "build.stdout"), filepath.Join(root, "build.stderr")
	preBuildPath := filepath.Join(root, "pre-build.json")
	for _, path := range []string{stdoutPath, stderrPath} {
		if err := os.WriteFile(path, nil, 0o600); err != nil {
			t.Fatal(err)
		}
	}
	preBuild, err := json.Marshal(struct {
		SchemaVersion                    string                     `json:"schema_version"`
		ProjectBuildArtifactFileCount    int64                      `json:"project_build_artifact_file_count"`
		DependencyBuildArtifactFileCount int64                      `json:"dependency_build_artifact_file_count"`
		ProjectSnapshot                  solver.LeanProjectSnapshot `json:"project_snapshot"`
	}{SchemaVersion: solver.LeanSnapshotInventorySchemaVersion, ProjectSnapshot: sourceSnapshot})
	if err != nil {
		t.Fatal(err)
	}
	preBuild = append(preBuild, '\n')
	if err := os.WriteFile(preBuildPath, preBuild, 0o600); err != nil {
		t.Fatal(err)
	}
	build := solver.LeanSnapshotBuildReceipt{
		SchemaVersion: "mathcase-lean-snapshot-build-v1", RunID: "fixture-build", StartedAtUTC: buildStart, FinishedAtUTC: buildStart.Add(time.Minute),
		DockerExecutable: "docker", DockerVersion: "29.6.2", SourceManifestSHA256: sourceSHA, SourceSnapshot: sourceSnapshot,
		RecipeSHA256: recipeSHA, BaseImageDigest: baseImage, GitToolImageDigest: gitImage, ImageDigest: image,
		Toolchain: "leanprover/lean4:v4.33.1", BuildTarget: "fixture", BuildArguments: []string{"lake", "build", "fixture"},
		BuildStdoutPath: stdoutPath, BuildStderrPath: stderrPath, BuildStdoutSHA256: digestBytes(nil), BuildStderrSHA256: digestBytes(nil),
		BuildExitCode: 0, PreBuildSummaryPath: preBuildPath, PreBuildSummarySHA256: digestBytes(preBuild), NetworkDisabled: true,
		PostBuildProjectSnapshot: projectSnapshot,
	}
	buildBytes, err := json.Marshal(build)
	if err != nil {
		t.Fatal(err)
	}
	buildPath := filepath.Join(root, "build-receipt.json")
	buildBytes = append(buildBytes, '\n')
	if err := os.WriteFile(buildPath, buildBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	buildSHA := digestBytes(buildBytes)
	manifest := solver.LeanSnapshotManifest{
		SchemaVersion: solver.LeanSnapshotManifestSchemaVersion, SourceManifestPath: sourceManifestPath, SourceManifestSHA256: sourceSHA,
		SourceSnapshot: sourceSnapshot, InventoryPath: inventoryPath, InventorySHA256: inventorySHA, BuildReceiptPath: buildPath,
		BuildReceiptSHA256: buildSHA, RecipeSHA256: recipeSHA, BaseImageDigest: baseImage, GitToolImageDigest: gitImage,
		ImageDigest: image, Toolchain: "leanprover/lean4:v4.33.1", BuildTarget: "fixture", AllowedImports: []string{"Init"},
		ModuleSearchPath: []string{"/mathcase/project/.lake/build/lib/lean"}, ProjectSnapshot: projectSnapshot, CleanBuild: true, NetworkDisabled: true,
	}
	manifest.SnapshotID = solver.ComputeLeanSnapshotID(sourceSHA, buildSHA, image, projectSnapshot.SHA256)
	manifestBytes, err := json.MarshalIndent(manifest, "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	manifestBytes = append(manifestBytes, '\n')
	manifestPath := filepath.Join(root, "snapshot-manifest.json")
	if err := os.WriteFile(manifestPath, manifestBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	return gateTestSnapshot{Manifest: manifest, Path: manifestPath, SHA256: digestBytes(manifestBytes)}
}

func syntheticSnapshotImageCheck(manifest solver.LeanSnapshotManifest, now time.Time) solver.LeanSnapshotImageCheck {
	return solver.LeanSnapshotImageCheck{
		Image: manifest.ImageDigest, ImageID: manifest.ImageDigest, Labels: map[string]string{
			"org.mathcase.snapshot.source-manifest-sha256": manifest.SourceManifestSHA256,
			"org.mathcase.snapshot.source-root-sha256":     manifest.SourceSnapshot.SHA256,
			"org.mathcase.snapshot.recipe-sha256":          manifest.RecipeSHA256,
			"org.mathcase.snapshot.base-image-id":          manifest.BaseImageDigest,
			"org.mathcase.snapshot.git-tool-image-id":      manifest.GitToolImageDigest,
			"org.mathcase.snapshot.build-target":           manifest.BuildTarget,
		}, StdoutSHA256: digestBytes([]byte("[]")), StartedAtUTC: now.Add(-4 * time.Minute), FinishedAtUTC: now.Add(-3*time.Minute - time.Second), ExitCode: 0,
	}
}

func syntheticSnapshotExecution(manifest solver.LeanSnapshotManifest, container string, started, finished time.Time, candidate bool) solver.LeanSandboxExecution {
	searchPath := strings.Join(manifest.ModuleSearchPath, ":")
	argv := []string{"docker", "run", "--rm", "--name", container, "--pull=never", "--network=none", "--read-only", "--user=65532:65532",
		"--cap-drop=ALL", "--security-opt=no-new-privileges:true", "--cpus=2", "--memory=4g", "--pids-limit=128", "--ulimit", "fsize=16777216:16777216",
		"--tmpfs", "/tmp:rw,noexec,nosuid,nodev,size=128m,mode=1777", "--tmpfs", "/mathcase/work:rw,noexec,nosuid,nodev,size=128m,mode=1777",
		"--tmpfs", "/mathcase/cache:rw,noexec,nosuid,nodev,size=512m,mode=1777", "--workdir=/mathcase/work", "--env=HOME=/tmp", "--env=TMPDIR=/tmp",
		"--env=TMP=/tmp", "--env=LAKE_HOME=/mathcase/cache", "--env=LEAN_SYSROOT=/opt/lean", "--env=LEAN_PATH=" + searchPath}
	if candidate {
		argv = append(argv, "--mount", "type=bind,source=C:/synthetic/MathCaseRandomized.lean,target=/mathcase/input/MathCaseRandomized.lean,readonly",
			"--mount", "type=bind,source=C:/synthetic/output,target=/mathcase/output", "--entrypoint=lean", manifest.ImageDigest,
			"--root=/mathcase/input", "-o", "/mathcase/output/MathCaseRandomized.olean", "/mathcase/input/MathCaseRandomized.lean")
	} else {
		argv = append(argv, "--entrypoint=lean", manifest.ImageDigest, "--version")
	}
	code := 0
	return solver.LeanSandboxExecution{DockerExecutable: "docker", ContainerName: container, ExecutionMode: solver.LeanExecutionModeDirect,
		CommandArgv: argv, StartedAtUTC: started, FinishedAtUTC: finished, ExitCode: &code, CleanupSucceeded: false}
}

func trustedSyntheticReviewer(identity ReviewerIdentity, _ string) error {
	if identity.Issuer != "synthetic-test-issuer" || identity.Subject == "" || identity.ReviewerID != identity.Subject {
		return os.ErrPermission
	}
	return nil
}

func readFixture(t *testing.T, fixture gateFixture, verifier ReviewerIdentityVerifier) Result {
	t.Helper()
	result, err := PersistReceipt(fixture.root, fixture.receipt, fixture.dossier, fixture.record, verifier)
	if err != nil {
		t.Fatalf("PersistReceipt() did not produce a reader-qualified %s receipt: %v", fixture.record.Gate, err)
	}
	outcome := "ACCEPTED"
	if result.Status != domain.VerificationPassed {
		outcome = "STRUCTURALLY_ACCEPTED_" + string(result.Status)
	}
	logReaderFixtureReceipt(t, fixture, t.Name(), outcome, fixture.id+".gate.json", fixture.id+".gate.json", result, nil)
	return result
}

func requireReaderRefusal(t *testing.T, fixture gateFixture, evidenceID, scenario, expectedReceiptPath, presentPath string, verifier ReviewerIdentityVerifier) {
	t.Helper()
	_, err := Read(fixture.root, evidenceID, "", fixture.dossier, fixture.record, verifier)
	if err == nil {
		t.Fatalf("Read(%q) accepted a fixture that must be refused in scenario %q", evidenceID, scenario)
	}
	logReaderFixtureReceipt(t, fixture, scenario, "REFUSED", expectedReceiptPath, presentPath, Result{EvidenceID: evidenceID}, err)
}

func logReaderFixtureReceipt(t *testing.T, fixture gateFixture, scenario, outcome, expectedReceiptPath, presentPath string, result Result, refusal error) {
	t.Helper()
	receipt := gateReaderFixtureReceipt{
		SchemaVersion: "mathcase-gate-reader-fixture-receipt-v1", Gate: fixture.record.Gate,
		Scenario: scenario, EvidenceID: result.EvidenceID, Outcome: outcome,
		ReaderStatus: result.Status, ExpectedPath: expectedReceiptPath,
	}
	statementSHA, err := domain.ProblemStatementDigest(fixture.dossier.Problem.ID, fixture.dossier.Problem.Statement, fixture.dossier.Problem.LeanStatement)
	if err != nil {
		t.Fatalf("ProblemStatementDigest() for fixture receipt = %v, want valid dossier statement", err)
	}
	receipt.StatementSHA256 = statementSHA
	if presentPath != "" {
		if presentBytes, readErr := os.ReadFile(filepath.Join(fixture.root, filepath.FromSlash(presentPath))); readErr == nil {
			receipt.PresentPath = presentPath
			receipt.PresentSHA256 = digestBytes(presentBytes)
		}
	}
	if refusal != nil {
		receipt.Refusal = refusal.Error()
	}
	encoded, err := json.Marshal(receipt)
	if err != nil {
		t.Fatalf("marshal gate reader fixture receipt = %v, want valid JSON", err)
	}
	t.Logf("MATHCASE_GATE_READER_FIXTURE_RECEIPT %s", encoded)
}

func writeGateReceipt(t *testing.T, root, evidenceID string, receipt any) {
	t.Helper()
	data, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(root, evidenceID+".gate.json"), data, 0o600); err != nil {
		t.Fatal(err)
	}
}

func writeRaw(t *testing.T, root, relative string, data []byte) {
	t.Helper()
	if err := os.WriteFile(filepath.Join(root, filepath.FromSlash(relative)), data, 0o600); err != nil {
		t.Fatal(err)
	}
}

func setReceiptProblemID(receipt any, problemID string) any {
	switch value := receipt.(type) {
	case V3Receipt:
		value.Header.ProblemID = problemID
		return value
	case V4Receipt:
		value.Header.ProblemID = problemID
		return value
	case V5Receipt:
		value.Header.ProblemID = problemID
		return value
	case V6Receipt:
		value.Header.ProblemID = problemID
		return value
	case V7Receipt:
		value.Header.ProblemID = problemID
		return value
	default:
		panic("unknown gate receipt type")
	}
}
