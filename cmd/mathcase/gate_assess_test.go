package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"reflect"
	"runtime"
	"strconv"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/gateaudit"
)

func TestGateAssessDerivesV4OutcomeAndWritesNewDossier(t *testing.T) {
	t.Parallel()

	tests := []struct {
		name   string
		audit  domain.V4FalsificationAudit
		status domain.VerificationStatus
	}{
		{
			name:   "completed typed searches remain blocked pending execution receipts",
			audit:  passingV4Audit(),
			status: domain.VerificationBlocked,
		},
		{
			name: "verified counterexample fails the gate",
			audit: func() domain.V4FalsificationAudit {
				audit := passingV4Audit()
				audit.RandomizedCounterexampleObserved = true
				audit.RandomizedCounterexampleVerified = true
				return audit
			}(),
			status: domain.VerificationFailed,
		},
		{
			name: "incomplete randomized check blocks the gate",
			audit: func() domain.V4FalsificationAudit {
				audit := passingV4Audit()
				audit.RandomizedCheckStatus = "INCOMPLETE"
				return audit
			}(),
			status: domain.VerificationBlocked,
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			baseDir := t.TempDir()
			dossier := dossierWithPendingGate(t, domain.GateFalsification)
			input := gateAssessmentInputForTest(t, dossier, domain.GateFalsification)
			input.Falsification = &test.audit
			result := runGateAssessmentForTest(t, baseDir, dossier, input)
			if result.GateStatus != test.status {
				t.Errorf("gate-assess V4 audit %q status = %s, want %s", test.name, result.GateStatus, test.status)
			}
			if result.DossierSHA256 == "" {
				t.Errorf("gate-assess V4 audit %q dossier digest = empty, want canonical digest", test.name)
			}
		})
	}
}

func TestGateAssessConsumesTypedV4ReceiptIntoM8Dossier(t *testing.T) {
	baseDir := t.TempDir()
	dossier := dossierWithPendingGate(t, domain.GateFalsification)
	input := gateAssessmentInputForTest(t, dossier, domain.GateFalsification)
	audit := passingV4Audit()
	input.Falsification = &audit
	input.GateReceiptEvidenceID = "v4-typed-reader-e2e"
	evidenceRoot := filepath.Join(baseDir, "evidence")
	if err := os.Mkdir(evidenceRoot, 0o700); err != nil {
		t.Fatal(err)
	}
	for _, evidenceID := range audit.EvidenceIDs() {
		if err := os.WriteFile(filepath.Join(evidenceRoot, evidenceID+".artifact"), []byte("pinned synthetic audit artifact: "+evidenceID), 0o600); err != nil {
			t.Fatal(err)
		}
	}
	statementSHA := input.ProblemStatementSHA256
	var executions []gateaudit.ProcessReceipt
	for _, item := range []struct{ id, kind string }{{"synthetic-v4-random", "RANDOMIZED"}, {"synthetic-v4-smt", "SMT"}, {"synthetic-v4-negation", "NEGATION"}} {
		inputBytes, outputBytes := []byte("request:"+item.id), []byte("result:"+item.id)
		inputPath, outputPath := item.id+".input", item.id+".output"
		if err := os.WriteFile(filepath.Join(evidenceRoot, inputPath), inputBytes, 0o600); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(filepath.Join(evidenceRoot, outputPath), outputBytes, 0o600); err != nil {
			t.Fatal(err)
		}
		executions = append(executions, gateaudit.ProcessReceipt{
			EvidenceID: item.id, Kind: item.kind, ProblemID: dossier.Problem.ID,
			ProblemStatementSHA256: statementSHA, RunID: "run-" + item.id,
			StartedAt: input.RecordedAt.Add(-time.Minute), FinishedAt: input.RecordedAt, ExitCode: 0,
			InputSHA256: sha256TextForTest(string(inputBytes)), InputPath: inputPath,
			OutputPath: outputPath, OutputSHA256: sha256TextForTest(string(outputBytes)), Outcome: "COMPLETED",
		})
	}
	receipt := gateaudit.V4Receipt{Header: gateaudit.Header{SchemaVersion: gateaudit.V4ReceiptSchema,
		EvidenceID: input.GateReceiptEvidenceID, Gate: domain.GateFalsification, ProblemID: dossier.Problem.ID,
		ProblemStatementSHA256: statementSHA, RecordedAt: input.RecordedAt}, Audit: audit, Executions: executions}
	receiptBytes, err := json.Marshal(receipt)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(evidenceRoot, input.GateReceiptEvidenceID+".gate.json"), receiptBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	dossierBytes, err := json.Marshal(dossier)
	if err != nil {
		t.Fatal(err)
	}
	bundleDir := filepath.Join(baseDir, "bundle")
	if err := os.Mkdir(bundleDir, 0o700); err != nil {
		t.Fatal(err)
	}
	dossierPath, assessmentPath := filepath.Join(bundleDir, "dossier.json"), filepath.Join(baseDir, "assessment.json")
	if err := os.WriteFile(dossierPath, dossierBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	assessmentBytes, err := json.Marshal(input)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(assessmentPath, assessmentBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	outputPath := gateAssessmentRevisionOutputPath(bundleDir, dossier)
	var stdout, stderr bytes.Buffer
	args := []string{"gate-assess", "--dossier", dossierPath, "--assessment", assessmentPath,
		"--evidence-root", evidenceRoot, "--output", outputPath}
	binaryPath := filepath.Join(baseDir, "mathcase")
	if runtime.GOOS == "windows" {
		binaryPath += ".exe"
	}
	build := exec.Command("go", "build", "-o", binaryPath, ".")
	if buildOutput, err := build.CombinedOutput(); err != nil {
		t.Fatalf("build mathcase CLI: %v\n%s", err, buildOutput)
	}
	process := exec.Command(binaryPath, args...)
	process.Dir = baseDir
	process.Stdout = &stdout
	process.Stderr = &stderr
	if err := process.Run(); err != nil {
		t.Fatalf("mathcase gate-assess process exit = %v; stdout=%q stderr=%q", err, stdout.String(), stderr.String())
	}
	var result gateAssessmentOutput
	if err := json.Unmarshal(stdout.Bytes(), &result); err != nil {
		t.Fatal(err)
	}
	if result.GateStatus != domain.VerificationPassed || result.GateReceipt == nil || result.GateReceipt.EvidenceID != input.GateReceiptEvidenceID || result.GateReceipt.ReceiptSHA256 != sha256TextForTest(string(receiptBytes)) {
		t.Fatalf("gate-assess output = %#v; want typed V4 PASS bound to exact receipt", result)
	}
	data, err := os.ReadFile(outputPath)
	if err != nil {
		t.Fatal(err)
	}
	var revision domain.Dossier
	if err := json.Unmarshal(data, &revision); err != nil {
		t.Fatal(err)
	}
	if err := revision.Validate(); err != nil {
		t.Fatalf("typed V4 revision failed Dossier.Validate(): %v", err)
	}
	for _, record := range revision.Verifications {
		if record.Gate != domain.GateFalsification {
			continue
		}
		if record.GateReceipt == nil {
			t.Fatal("M8 revision has no typed V4 receipt reference")
		}
		readResult, err := gateaudit.Read(evidenceRoot, record.GateReceipt.EvidenceID, record.GateReceipt.ReceiptSHA256, revision, record, nil)
		if err != nil || readResult.Status != record.Status {
			t.Fatalf("M8 gate reader result = %#v, %v; want recorded V4 %s", readResult, err, record.Status)
		}
	}
	if receiptRoot := os.Getenv("MATHCASE_GATE_ASSESS_RECEIPT_DIR"); receiptRoot != "" {
		if err := persistGateAssessProcessReceipt(receiptRoot, baseDir, binaryPath, dossierPath, assessmentPath, evidenceRoot, outputPath, stdout.Bytes(), stderr.Bytes(), result); err != nil {
			t.Fatalf("persist gate-assess process receipt: %v", err)
		}
	}
}

func persistGateAssessProcessReceipt(receiptRoot, baseDir, binaryPath, dossierPath, assessmentPath, evidenceRoot, outputPath string, stdout, stderr []byte, result gateAssessmentOutput) error {
	if err := os.Mkdir(receiptRoot, 0o700); err != nil {
		return fmt.Errorf("create new receipt directory: %w", err)
	}
	for _, item := range []struct{ source, target string }{
		{dossierPath, filepath.Join(receiptRoot, "inputs", "dossier.json")},
		{assessmentPath, filepath.Join(receiptRoot, "inputs", "assessment.json")},
		{outputPath, filepath.Join(receiptRoot, "outputs", "dossier-revision.json")},
	} {
		if err := copyReceiptFile(item.source, item.target); err != nil {
			return err
		}
	}
	if err := copyReceiptTree(evidenceRoot, filepath.Join(receiptRoot, "inputs", "evidence")); err != nil {
		return err
	}
	for _, item := range []struct {
		name     string
		contents []byte
	}{{"stdout.json", stdout}, {"stderr.txt", stderr}} {
		path := filepath.Join(receiptRoot, "process", item.name)
		if err := os.MkdirAll(filepath.Dir(path), 0o700); err != nil {
			return err
		}
		if err := os.WriteFile(path, item.contents, 0o600); err != nil {
			return err
		}
	}
	binaryBytes, err := os.ReadFile(binaryPath)
	if err != nil {
		return fmt.Errorf("read built CLI: %w", err)
	}
	gitHead := "unavailable"
	if output, err := exec.Command("git", "rev-parse", "HEAD").Output(); err == nil {
		gitHead = strings.TrimSpace(string(output))
	}
	goVersion := "unavailable"
	if output, err := exec.Command("go", "version").Output(); err == nil {
		goVersion = strings.TrimSpace(string(output))
	}
	digests, err := receiptTreeDigests(receiptRoot)
	if err != nil {
		return err
	}
	receipt := map[string]any{
		"schema_version":    "mathcase-gate-assess-process-receipt-v1",
		"captured_at":       time.Now().UTC().Format(time.RFC3339Nano),
		"classification":    "SYNTHETIC_TEST_ONLY",
		"git_head_at_build": gitHead,
		"go_version":        goVersion,
		"binary_sha256":     sha256TextForTest(string(binaryBytes)),
		"command":           []string{"mathcase", "gate-assess", "--dossier", "inputs/dossier.json", "--assessment", "inputs/assessment.json", "--evidence-root", "inputs/evidence", "--output", "outputs/dossier-revision.json"},
		"exit_code":         0,
		"gate":              result.Gate,
		"gate_status":       result.GateStatus,
		"dossier_sha256":    result.DossierSHA256,
		"files":             digests,
		"scope_note":        "A synthetic process-level CLI and M8-reader integration check. It does not assess Bootstrap, establish real V4 evidence, or change any canonical dossier.",
	}
	data, err := json.MarshalIndent(receipt, "", "  ")
	if err != nil {
		return err
	}
	return os.WriteFile(filepath.Join(receiptRoot, "run-receipt.json"), append(data, '\n'), 0o600)
}

func copyReceiptFile(source, target string) error {
	data, err := os.ReadFile(source)
	if err != nil {
		return fmt.Errorf("read %s: %w", source, err)
	}
	if err := os.MkdirAll(filepath.Dir(target), 0o700); err != nil {
		return err
	}
	if err := os.WriteFile(target, data, 0o600); err != nil {
		return fmt.Errorf("write %s: %w", target, err)
	}
	return nil
}

func copyReceiptTree(sourceRoot, targetRoot string) error {
	return filepath.Walk(sourceRoot, func(source string, info os.FileInfo, walkErr error) error {
		if walkErr != nil {
			return walkErr
		}
		rel, err := filepath.Rel(sourceRoot, source)
		if err != nil {
			return err
		}
		target := filepath.Join(targetRoot, rel)
		if info.IsDir() {
			return os.MkdirAll(target, 0o700)
		}
		return copyReceiptFile(source, target)
	})
}

func receiptTreeDigests(root string) (map[string]string, error) {
	files := make(map[string]string)
	err := filepath.Walk(root, func(path string, info os.FileInfo, walkErr error) error {
		if walkErr != nil {
			return walkErr
		}
		if info.IsDir() {
			return nil
		}
		data, err := os.ReadFile(path)
		if err != nil {
			return err
		}
		rel, err := filepath.Rel(root, path)
		if err != nil {
			return err
		}
		files[filepath.ToSlash(rel)] = sha256TextForTest(string(data))
		return nil
	})
	return files, err
}

func TestGateAssessDerivesV3OutcomeFromDualCheck(t *testing.T) {
	tests := []struct {
		name   string
		status domain.VerificationStatus
		edit   func(*domain.V3StatementFidelity)
	}{
		{
			name:   "caller-authored reviewer and all not-applicable probes stay blocked",
			status: domain.VerificationBlocked,
			edit: func(review *domain.V3StatementFidelity) {
				review.NaturalParameterApplicability = domain.V3NaturalParametersNone
				review.MeaningfulNaturalParameters = []string{}
				review.EmptyObjectApplicability = domain.V3EmptyObjectNotApplicable
				probeEvidenceID := "synthetic-v3-all-na"
				if len(review.BoundaryProbes) > 0 {
					probeEvidenceID = review.BoundaryProbes[0].EvidenceID
				}
				review.BoundaryProbes = []domain.V3BoundaryProbe{{
					Kind: domain.V3BoundaryEmptyObject, ParameterID: "empty-object", Value: "empty",
					Outcome: domain.V3BoundaryNotApplicable, Rationale: "Synthetic test: this statement has no empty-object boundary.", EvidenceID: probeEvidenceID,
				}}
			},
		},
		{
			name:   "semantic mismatch fails",
			status: domain.VerificationFailed,
			edit: func(review *domain.V3StatementFidelity) {
				review.SemanticComparison.Status = domain.V3SemanticMismatch
			},
		},
		{
			name:   "independent review remains incomplete",
			status: domain.VerificationBlocked,
			edit: func(review *domain.V3StatementFidelity) {
				review.SemanticComparison.Status = domain.V3SemanticNeedsReview
				review.SemanticComparison.ReviewerAccepted = false
			},
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			baseDir := t.TempDir()
			readyDossier := syntheticReadyDossierForCLI()
			var review *domain.V3StatementFidelity
			for _, record := range readyDossier.Verifications {
				if record.Gate == domain.GateStatementFidelity {
					review = record.StatementFidelity
					break
				}
			}
			if review == nil {
				t.Fatal("synthetic dossier has no V3 review")
			}
			reviewCopy := *review
			reviewCopy.BoundaryProbes = append([]domain.V3BoundaryProbe(nil), review.BoundaryProbes...)
			if test.edit != nil {
				test.edit(&reviewCopy)
			}
			pendingDossier := dossierWithPendingGate(t, domain.GateStatementFidelity)
			input := gateAssessmentInputForTest(t, pendingDossier, domain.GateStatementFidelity)
			input.StatementFidelity = &reviewCopy
			result := runGateAssessmentForTest(t, baseDir, pendingDossier, input)
			if result.GateStatus != test.status {
				t.Errorf("gate-assess V3 review %q status = %s, want %s", test.name, result.GateStatus, test.status)
			}
			if strings.HasPrefix(test.name, "caller-authored reviewer") {
				assessedBytes, err := os.ReadFile(gateAssessmentRevisionOutputPath(filepath.Join(baseDir, "bundle"), pendingDossier))
				if err != nil {
					t.Fatalf("read blocked synthetic V3 dossier: %v", err)
				}
				var assessed domain.Dossier
				if err := json.Unmarshal(assessedBytes, &assessed); err != nil {
					t.Fatalf("decode blocked synthetic V3 dossier: %v", err)
				}
				foundBlockedV3 := false
				for _, record := range assessed.Verifications {
					if record.Gate == domain.GateStatementFidelity && record.Status == domain.VerificationBlocked && !strings.Contains(record.Summary, "unauthenticated") {
						t.Fatalf("synthetic V3 block summary = %q; want explicit unauthenticated-review hold", record.Summary)
					}
					if record.Gate == domain.GateStatementFidelity && record.Status == domain.VerificationBlocked {
						foundBlockedV3 = true
					}
				}
				if !foundBlockedV3 {
					t.Fatal("synthetic V3 evidence did not produce a blocked V3 record")
				}
			}
		})
	}
}

func TestGateAssessRoutesV3ThroughV7ToTheirTypedReceiptReaders(t *testing.T) {
	now := time.Date(2026, time.October, 21, 5, 0, 0, 0, time.UTC)
	tests := []struct {
		gate domain.VerificationGate
		fill func(*testing.T, *domain.Dossier, *gateAssessmentInput)
	}{
		{gate: domain.GateStatementFidelity, fill: func(t *testing.T, _ *domain.Dossier, input *gateAssessmentInput) {
			ready := syntheticReadyDossierForCLI()
			for _, record := range ready.Verifications {
				if record.Gate == domain.GateStatementFidelity {
					input.StatementFidelity = record.StatementFidelity
					return
				}
			}
			t.Fatal("ready synthetic dossier has no V3 typed review")
		}},
		{gate: domain.GateFalsification, fill: func(_ *testing.T, _ *domain.Dossier, input *gateAssessmentInput) {
			input.Falsification = ptrV4Audit(passingV4Audit())
		}},
		{gate: domain.GateEssentiality, fill: func(t *testing.T, dossier *domain.Dossier, input *gateAssessmentInput) {
			input.ProofSHA256 = verifiedProofSHA256ForTest(t, *dossier)
			input.Essentiality = &domain.V5EssentialityAudit{Ablations: []domain.V5LemmaAblation{{
				LemmaID: "synthetic-lemma", Attempted: true, SearchCompleted: true, AblatedProofClosed: false,
				AblatedSourceSHA256: strings.Repeat("e", 64), EvidenceID: "synthetic-v5-ablation",
			}}}
		}},
		{gate: domain.GateProvenanceLeakage, fill: func(_ *testing.T, dossier *domain.Dossier, input *gateAssessmentInput) {
			input.Provenance = passingV6Evidence(*dossier)
		}},
		{gate: domain.GateLiteratureAndStatus, fill: func(_ *testing.T, _ *domain.Dossier, input *gateAssessmentInput) {
			input.Literature = &gateV7LiteratureEvidence{
				Searches: []domain.LiteratureSearchRecord{{Database: "synthetic-index", Query: "synthetic query", SearchedAt: now.Add(-time.Hour), EvidenceID: "synthetic-v7-search"}},
				Findings: []string{"Synthetic no-result note."}, Novelty: domain.NoveltyOpen,
				ReviewerID: "synthetic-reviewer-v7", EvidenceIDs: []string{"synthetic-v7-search"},
			}
		}},
	}
	for _, test := range tests {
		t.Run(string(test.gate), func(t *testing.T) {
			dossier := dossierWithPendingGate(t, test.gate)
			input := gateAssessmentInputForTest(t, dossier, test.gate)
			test.fill(t, &dossier, &input)
			input.GateReceiptEvidenceID = "missing-" + strings.ToLower(string(test.gate))
			_, code, stdout, stderr := runGateAssessmentCommandForTest(t, t.TempDir(), dossier, input)
			if code != 2 || stdout != "" || !strings.Contains(stderr, "gate receipt \""+input.GateReceiptEvidenceID+"\"") {
				t.Fatalf("gate-assess(%s) typed receipt route = (%d, %q, %q), want a fail-closed typed-reader receipt lookup", test.gate, code, stdout, stderr)
			}
		})
	}
}

func TestGateAssessV3RejectsMismatchedBackTranslationArtifact(t *testing.T) {
	baseDir := t.TempDir()
	dossier := dossierWithPendingGate(t, domain.GateStatementFidelity)
	evidenceRoot := filepath.Join(baseDir, "evidence")
	if err := os.Mkdir(evidenceRoot, 0o700); err != nil {
		t.Fatalf("create evidence directory: %v", err)
	}
	ready := syntheticReadyDossierForCLI()
	var review *domain.V3StatementFidelity
	for _, record := range ready.Verifications {
		if record.Gate == domain.GateStatementFidelity {
			review = record.StatementFidelity
			break
		}
	}
	if review == nil {
		t.Fatal("synthetic dossier has no V3 review")
	}
	reviewCopy := *review
	input := gateAssessmentInputForTest(t, dossier, domain.GateStatementFidelity)
	input.StatementFidelity = &reviewCopy
	snapshotPath, leanSourceRoot := writeV3GateAssessmentFixture(t, baseDir, evidenceRoot, &dossier, &input)
	if err := os.WriteFile(filepath.Join(evidenceRoot, reviewCopy.BackTranslation.EvidenceID+".artifact"), []byte("different synthetic witness"), 0o600); err != nil {
		t.Fatalf("tamper back-translation artifact: %v", err)
	}
	if _, err := validateGateAssessV3Evidence(snapshotPath, leanSourceRoot, evidenceRoot, dossier, reviewCopy); err == nil || !strings.Contains(err.Error(), "back-translation evidence bytes") {
		t.Fatalf("validateGateAssessV3Evidence() error = %v, want mismatched back-translation artifact refusal", err)
	}
}

func TestGateAssessV3RequiresReopenedCatalogAndLeanSource(t *testing.T) {
	dossier := dossierWithPendingGate(t, domain.GateStatementFidelity)
	input := gateAssessmentInputForTest(t, dossier, domain.GateStatementFidelity)
	ready := syntheticReadyDossierForCLI()
	for _, record := range ready.Verifications {
		if record.Gate == domain.GateStatementFidelity {
			review := *record.StatementFidelity
			input.StatementFidelity = &review
			break
		}
	}
	assertGateAssessmentRefused(t, dossier, input, "requires --catalog-snapshot and --lean-source-root")
}

func TestGateAssessDerivesV5OutcomeFromAblationEvidence(t *testing.T) {
	t.Parallel()

	tests := []struct {
		name   string
		ablate domain.V5LemmaAblation
		status domain.VerificationStatus
	}{
		{
			name: "completed typed ablation remains blocked pending execution receipts",
			ablate: domain.V5LemmaAblation{
				LemmaID: "synthetic-lemma", Attempted: true, SearchCompleted: true,
				AblatedSourceSHA256: strings.Repeat("e", 64), EvidenceID: "synthetic-v5-ablation",
			},
			status: domain.VerificationBlocked,
		},
		{
			name: "closed ablated proof fails essentiality",
			ablate: domain.V5LemmaAblation{
				LemmaID: "synthetic-lemma", Attempted: true, SearchCompleted: true,
				AblatedProofClosed: true, AblatedSourceSHA256: strings.Repeat("e", 64), EvidenceID: "synthetic-v5-ablation",
			},
			status: domain.VerificationFailed,
		},
		{
			name: "incomplete ablation search blocks essentiality",
			ablate: domain.V5LemmaAblation{
				LemmaID: "synthetic-lemma", Attempted: true, SearchCompleted: false,
				AblatedSourceSHA256: strings.Repeat("e", 64), EvidenceID: "synthetic-v5-ablation",
			},
			status: domain.VerificationBlocked,
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			baseDir := t.TempDir()
			dossier := dossierWithPendingGate(t, domain.GateEssentiality)
			input := gateAssessmentInputForTest(t, dossier, domain.GateEssentiality)
			input.ProofSHA256 = verifiedProofSHA256ForTest(t, dossier)
			input.Essentiality = &domain.V5EssentialityAudit{Ablations: []domain.V5LemmaAblation{test.ablate}}
			result := runGateAssessmentForTest(t, baseDir, dossier, input)
			if result.GateStatus != test.status {
				t.Errorf("gate-assess V5 ablation %q status = %s, want %s", test.name, result.GateStatus, test.status)
			}
			if result.ProofSHA256 != input.ProofSHA256 {
				t.Errorf("gate-assess V5 proof digest = %q, want %q", result.ProofSHA256, input.ProofSHA256)
			}
		})
	}
}

func TestGateAssessDerivesV6OutcomeFromRightsAndLeakageEvidence(t *testing.T) {
	t.Parallel()

	tests := []struct {
		name   string
		status domain.VerificationStatus
		edit   func(*gateV6ProvenanceEvidence)
	}{
		{name: "typed cleared sources and clean split remain blocked pending reopened computations", status: domain.VerificationBlocked},
		{
			name:   "detected leakage fails",
			status: domain.VerificationFailed,
			edit: func(evidence *gateV6ProvenanceEvidence) {
				evidence.LeakageDetected = true
			},
		},
		{
			name:   "pending source rights block",
			status: domain.VerificationBlocked,
			edit: func(evidence *gateV6ProvenanceEvidence) {
				evidence.SourceRights[0].Source.Rights = catalog.RightsPending
				evidence.SourceRights[0].Source.AllowedUses = nil
			},
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			baseDir := t.TempDir()
			dossier := dossierWithPendingGate(t, domain.GateProvenanceLeakage)
			input := gateAssessmentInputForTest(t, dossier, domain.GateProvenanceLeakage)
			input.Provenance = passingV6Evidence(dossier)
			if test.edit != nil {
				test.edit(input.Provenance)
			}
			result := runGateAssessmentForTest(t, baseDir, dossier, input)
			if result.GateStatus != test.status {
				t.Errorf("gate-assess V6 evidence %q status = %s, want %s", test.name, result.GateStatus, test.status)
			}
		})
	}
}

func TestGateAssessDerivesV7OutcomeFromLiteratureEvidence(t *testing.T) {
	t.Parallel()

	tests := []struct {
		name    string
		novelty domain.NoveltyStatus
		status  domain.VerificationStatus
	}{
		{name: "typed no-solution claim remains blocked pending search reader", novelty: domain.NoveltyOpen, status: domain.VerificationBlocked},
		{name: "typed known-solution claim remains blocked pending search reader", novelty: domain.NoveltyKnownSolution, status: domain.VerificationBlocked},
		{name: "uncertain priority blocks", novelty: domain.NoveltyUncertain, status: domain.VerificationBlocked},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			baseDir := t.TempDir()
			dossier := dossierWithPendingGate(t, domain.GateLiteratureAndStatus)
			input := gateAssessmentInputForTest(t, dossier, domain.GateLiteratureAndStatus)
			input.Literature = &gateV7LiteratureEvidence{
				Searches: []domain.LiteratureSearchRecord{{
					Database: "Synthetic review source", Query: "synthetic fixture statement",
					SearchedAt: input.RecordedAt, EvidenceID: "synthetic-literature",
				}},
				Findings: []string{"Synthetic fixture finding; not a real priority claim."},
				Novelty:  test.novelty, ReviewerID: "synthetic-reviewer-v7", EvidenceIDs: []string{"synthetic-literature"},
			}
			result := runGateAssessmentForTest(t, baseDir, dossier, input)
			if result.GateStatus != test.status {
				t.Errorf("gate-assess V7 evidence %q status = %s, want %s", test.name, result.GateStatus, test.status)
			}
		})
	}
}

func TestGateAssessRejectsWrongProblemAndProofBindings(t *testing.T) {
	t.Parallel()

	t.Run("wrong statement digest", func(t *testing.T) {
		t.Parallel()
		dossier := dossierWithPendingGate(t, domain.GateFalsification)
		input := gateAssessmentInputForTest(t, dossier, domain.GateFalsification)
		input.ProblemStatementSHA256 = strings.Repeat("f", 64)
		input.Falsification = ptrV4Audit(passingV4Audit())
		assertGateAssessmentRefused(t, dossier, input, "statement digest does not match")
	})

	t.Run("wrong verified proof digest", func(t *testing.T) {
		t.Parallel()
		dossier := dossierWithPendingGate(t, domain.GateEssentiality)
		input := gateAssessmentInputForTest(t, dossier, domain.GateEssentiality)
		input.ProofSHA256 = strings.Repeat("f", 64)
		input.Essentiality = &domain.V5EssentialityAudit{Ablations: []domain.V5LemmaAblation{{
			LemmaID: "synthetic-lemma", Attempted: true, SearchCompleted: true,
			AblatedSourceSHA256: strings.Repeat("e", 64), EvidenceID: "synthetic-v5-ablation",
		}}}
		assertGateAssessmentRefused(t, dossier, input, "does not match the dossier's kernel-verified")
	})

	t.Run("evidence ID missing from dossier", func(t *testing.T) {
		t.Parallel()
		dossier := dossierWithPendingGate(t, domain.GateFalsification)
		input := gateAssessmentInputForTest(t, dossier, domain.GateFalsification)
		audit := passingV4Audit()
		audit.SMTEvidenceID = "unlinked-smt-evidence"
		input.Falsification = &audit
		assertGateAssessmentRefused(t, dossier, input, "references missing evidence")
	})
}

func TestGateAssessRefusesToReplacePendingEvidence(t *testing.T) {
	t.Parallel()

	dossier := dossierWithPendingGate(t, domain.GateFalsification)
	for index := range dossier.Verifications {
		if dossier.Verifications[index].Gate == domain.GateFalsification {
			dossier.Verifications[index].EvidenceIDs = []string{"synthetic-proof"}
			dossier.Verifications[index].EvidenceArtifacts = []domain.EvidenceArtifactRef{{
				EvidenceID: "synthetic-proof", ArtifactSHA256: strings.Repeat("a", 64),
			}}
		}
	}
	input := gateAssessmentInputForTest(t, dossier, domain.GateFalsification)
	input.Falsification = ptrV4Audit(passingV4Audit())
	assertGateAssessmentRefused(t, dossier, input, "pending row already contains assessment evidence")
}

func TestGateAssessRequiresNewEvidenceWhenReassessing(t *testing.T) {
	t.Parallel()

	dossier := syntheticReadyDossierForCLI()
	input := gateAssessmentInputForTest(t, dossier, domain.GateFalsification)
	input.Falsification = ptrV4Audit(passingV4Audit())
	assertGateAssessmentRefused(t, dossier, input, "reassessment must name at least one new evidence ID")
}

func TestGateAssessReassessesBlockedAndFailedWithAppendOnlyLineage(t *testing.T) {
	t.Parallel()

	for _, priorStatus := range []domain.VerificationStatus{domain.VerificationBlocked, domain.VerificationFailed} {
		t.Run(string(priorStatus), func(t *testing.T) {
			t.Parallel()
			baseDir := t.TempDir()
			dossier := syntheticReadyDossierForCLI()
			var priorEvidence []string
			for index := range dossier.Verifications {
				if dossier.Verifications[index].Gate == domain.GateFalsification {
					dossier.Verifications[index].Status = priorStatus
					dossier.Verifications[index].Summary = "Synthetic prior judgment retained for reassessment testing."
					priorEvidence = append([]string(nil), dossier.Verifications[index].EvidenceIDs...)
					if priorStatus == domain.VerificationFailed {
						dossier.Verifications[index].Falsification.RandomizedCounterexampleObserved = true
						dossier.Verifications[index].Falsification.RandomizedCounterexampleVerified = true
					}
				}
			}
			if err := dossier.Validate(); err != nil {
				t.Fatalf("prior %s dossier Validate() error = %v", priorStatus, err)
			}

			input := gateAssessmentInputForTest(t, dossier, domain.GateFalsification)
			audit := passingV4Audit()
			audit.HypothesisEvidenceID = "reassessment-v4-hypothesis"
			audit.RandomizedEvidenceID = "reassessment-v4-random"
			audit.SMTEvidenceID = "reassessment-v4-smt"
			audit.NegationSearchEvidenceIDs = []string{"reassessment-v4-negation"}
			for _, evidenceID := range []string{
				"reassessment-v4-hypothesis", "reassessment-v4-random", "reassessment-v4-smt", "reassessment-v4-negation",
			} {
				dossier.Evidence = append(dossier.Evidence, domain.Evidence{
					ID: evidenceID, CaseID: dossier.Case.ID, ClaimID: dossier.Claims[0].ID, SourceID: dossier.Sources[0].ID,
					Summary: "Synthetic reassessment evidence for the gate revision test.", Stance: domain.StanceNeutral,
					Strength: 1, Independence: 1, AuditStatus: domain.AuditStatusAudited,
					AddedByRunID: "synthetic-reassessment-run", CreatedAt: dossier.Case.UpdatedAt,
				})
			}
			input.Falsification = &audit
			result := runGateAssessmentForTest(t, baseDir, dossier, input)
			if result.AssessmentRevision != 2 || result.Supersedes == nil {
				t.Fatalf("reassessment metadata = revision %d, supersedes %#v; want revision 2 and prior judgment", result.AssessmentRevision, result.Supersedes)
			}
			if result.Supersedes.Status != priorStatus || result.Supersedes.Summary == "" || !reflect.DeepEqual(result.Supersedes.EvidenceIDs, priorEvidence) {
				t.Errorf("superseded judgment = %#v; want status %s, prior summary, and evidence IDs %v", result.Supersedes, priorStatus, priorEvidence)
			}
			if result.GateStatus != domain.VerificationBlocked {
				t.Fatalf("reassessment gate status = %s, want BLOCKED until typed readers exist", result.GateStatus)
			}

			bundleDir := filepath.Join(baseDir, "bundle")
			predecessorBytes, err := os.ReadFile(filepath.Join(bundleDir, "dossier.json"))
			if err != nil {
				t.Fatalf("read preserved predecessor dossier: %v", err)
			}
			predecessorDigest := sha256.Sum256(predecessorBytes)
			if got := result.Supersedes.DossierSHA256; got != hex.EncodeToString(predecessorDigest[:]) {
				t.Errorf("superseded dossier digest = %s, want %x", got, predecessorDigest)
			}
			var reassessed domain.Dossier
			revisionBytes, err := os.ReadFile(gateAssessmentRevisionOutputPath(bundleDir, dossier))
			if err != nil {
				t.Fatalf("read reassessed dossier: %v", err)
			}
			if err := json.Unmarshal(revisionBytes, &reassessed); err != nil {
				t.Fatalf("decode reassessed dossier: %v", err)
			}
			for _, record := range reassessed.Verifications {
				if record.Gate != domain.GateFalsification {
					continue
				}
				if record.AssessmentRevision != 2 || record.Supersedes == nil || !containsStringValue(record.EvidenceIDs, "reassessment-v4-smt") {
					t.Errorf("persisted reassessment record = %#v; want revision 2, supersession, and new evidence", record)
				}
				return
			}
			t.Fatal("reassessed dossier lost its V4 record")
		})
	}
}

func TestGateAssessHelpIsReadOnly(t *testing.T) {
	t.Parallel()

	var stdout, stderr bytes.Buffer
	if code := run([]string{"gate-assess", "--help"}, &stdout, &stderr); code != 0 {
		t.Fatalf("gate-assess --help exit = %d, want 0; stderr=%q", code, stderr.String())
	}
	if stdout.Len() != 0 || !strings.Contains(stderr.String(), "-assessment") || !strings.Contains(stderr.String(), "-evidence-root") || !strings.Contains(stderr.String(), "-reviewer-trust") || !strings.Contains(stderr.String(), "-output") {
		t.Errorf("gate-assess --help stdout=%q stderr=%q, want option help and no output", stdout.String(), stderr.String())
	}
}

func TestGateAssessRequiresCompleteOptions(t *testing.T) {
	t.Parallel()

	var stdout, stderr bytes.Buffer
	if code := run([]string{"gate-assess", "--dossier", "dossier.json"}, &stdout, &stderr); code != 2 {
		t.Errorf("gate-assess with a partial option set exit = %d, want 2", code)
	}
	if stdout.Len() != 0 || !strings.Contains(stderr.String(), "requires --dossier FILE, --assessment FILE, --evidence-root DIR, and --output NEW_FILE") {
		t.Errorf("gate-assess partial options stdout=%q stderr=%q, want usage refusal", stdout.String(), stderr.String())
	}
}

func TestGateAssessRequiresCanonicalCurrentTipRevision(t *testing.T) {
	t.Parallel()

	tests := []struct {
		name          string
		inputName     string
		outputName    string
		prepareBundle func(t *testing.T, bundleDir string, dossier domain.Dossier) (string, string)
		wantError     string
	}{
		{
			name:       "alternate output name",
			inputName:  "dossier.json",
			outputName: "alternate-v2.json",
			wantError:  "canonical next revision",
		},
		{
			name:       "stale predecessor",
			inputName:  "dossier.json",
			outputName: "dossier-revision-v2.json",
			prepareBundle: func(t *testing.T, bundleDir string, dossier domain.Dossier) (string, string) {
				t.Helper()
				tip := dossier
				tip.Case.Version++
				tipPath := filepath.Join(bundleDir, "dossier-revision-v2.json")
				tipBytes, err := json.Marshal(tip)
				if err != nil {
					t.Fatalf("marshal current tip: %v", err)
				}
				if err := os.WriteFile(tipPath, tipBytes, 0o600); err != nil {
					t.Fatalf("write current tip: %v", err)
				}
				predecessorPath := filepath.Join(bundleDir, "dossier.json")
				predecessorBytes, err := json.Marshal(dossier)
				if err != nil {
					t.Fatalf("marshal stale predecessor: %v", err)
				}
				if err := os.WriteFile(predecessorPath, predecessorBytes, 0o600); err != nil {
					t.Fatalf("write stale predecessor: %v", err)
				}
				return predecessorPath, filepath.Join(bundleDir, "dossier-revision-v2.json")
			},
			wantError: "stale",
		},
		{
			name:       "same-version different-byte branch",
			inputName:  "branch-dossier.json",
			outputName: "dossier-revision-v3.json",
			prepareBundle: func(t *testing.T, bundleDir string, dossier domain.Dossier) (string, string) {
				t.Helper()
				tip := dossier
				tip.Case.Version++
				tip.Case.Question = "Current bundle tip fixture."
				tipPath := filepath.Join(bundleDir, "dossier-revision-v2.json")
				tipBytes, err := json.Marshal(tip)
				if err != nil {
					t.Fatalf("marshal current tip: %v", err)
				}
				if err := os.WriteFile(tipPath, tipBytes, 0o600); err != nil {
					t.Fatalf("write current tip: %v", err)
				}
				branch := dossier
				branch.Case.Version++
				branchBytes, err := json.Marshal(branch)
				if err != nil {
					t.Fatalf("marshal branch predecessor: %v", err)
				}
				branchPath := filepath.Join(bundleDir, "branch-dossier.json")
				if err := os.WriteFile(branchPath, branchBytes, 0o600); err != nil {
					t.Fatalf("write branch predecessor: %v", err)
				}
				return branchPath, filepath.Join(bundleDir, "dossier-revision-v3.json")
			},
			wantError: "not the current bundle tip",
		},
		{
			name:       "revision filename and case version disagree",
			inputName:  "dossier.json",
			outputName: "dossier-revision-v2.json",
			prepareBundle: func(t *testing.T, bundleDir string, dossier domain.Dossier) (string, string) {
				t.Helper()
				dossierBytes, err := json.Marshal(dossier)
				if err != nil {
					t.Fatalf("marshal predecessor: %v", err)
				}
				predecessorPath := filepath.Join(bundleDir, "dossier.json")
				if err := os.WriteFile(predecessorPath, dossierBytes, 0o600); err != nil {
					t.Fatalf("write predecessor: %v", err)
				}
				mismatchedTip := dossier
				mismatchedTip.Case.Version += 2
				tipBytes, err := json.Marshal(mismatchedTip)
				if err != nil {
					t.Fatalf("marshal mismatched tip: %v", err)
				}
				if err := os.WriteFile(filepath.Join(bundleDir, "dossier-revision-v2.json"), tipBytes, 0o600); err != nil {
					t.Fatalf("write mismatched tip: %v", err)
				}
				return predecessorPath, filepath.Join(bundleDir, "dossier-revision-v2.json")
			},
			wantError: "names version 2 but contains case version 3",
		},
		{
			name:       "output outside bundle",
			inputName:  "dossier.json",
			outputName: "dossier-revision-v2.json",
			prepareBundle: func(t *testing.T, bundleDir string, dossier domain.Dossier) (string, string) {
				t.Helper()
				outsideDir := filepath.Join(filepath.Dir(bundleDir), "outside")
				if err := os.Mkdir(outsideDir, 0o700); err != nil {
					t.Fatalf("create outside directory: %v", err)
				}
				return filepath.Join(bundleDir, "dossier.json"), filepath.Join(outsideDir, "dossier-revision-v2.json")
			},
			wantError: "same bundle directory",
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			baseDir := t.TempDir()
			bundleDir := filepath.Join(baseDir, "bundle")
			if err := os.Mkdir(bundleDir, 0o700); err != nil {
				t.Fatalf("create dossier bundle: %v", err)
			}
			dossier := dossierWithPendingGate(t, domain.GateFalsification)
			dossierPath := filepath.Join(bundleDir, test.inputName)
			outputPath := filepath.Join(bundleDir, test.outputName)
			if test.prepareBundle != nil {
				dossierPath, outputPath = test.prepareBundle(t, bundleDir, dossier)
			} else {
				dossierBytes, err := json.Marshal(dossier)
				if err != nil {
					t.Fatalf("marshal predecessor: %v", err)
				}
				if err := os.WriteFile(dossierPath, dossierBytes, 0o600); err != nil {
					t.Fatalf("write predecessor: %v", err)
				}
			}
			if _, err := os.Stat(dossierPath); os.IsNotExist(err) {
				dossierBytes, marshalErr := json.Marshal(dossier)
				if marshalErr != nil {
					t.Fatalf("marshal predecessor for %s: %v", test.name, marshalErr)
				}
				if writeErr := os.WriteFile(dossierPath, dossierBytes, 0o600); writeErr != nil {
					t.Fatalf("write predecessor for %s: %v", test.name, writeErr)
				}
			}
			outputBefore, outputBeforeErr := os.ReadFile(outputPath)
			outputExistedBefore := outputBeforeErr == nil
			assessmentPath := filepath.Join(baseDir, "assessment-not-read.json")
			evidenceRoot := filepath.Join(baseDir, "evidence")
			if err := os.Mkdir(evidenceRoot, 0o700); err != nil {
				t.Fatalf("create evidence directory: %v", err)
			}
			var stdout, stderr bytes.Buffer
			code := run([]string{
				"gate-assess", "--dossier", dossierPath, "--assessment", assessmentPath,
				"--evidence-root", evidenceRoot, "--output", outputPath,
			}, &stdout, &stderr)
			if code != 2 || stdout.Len() != 0 || !strings.Contains(stderr.String(), test.wantError) {
				t.Fatalf("gate-assess revision guard = (%d, %q, %q), want exit 2 and %q refusal", code, stdout.String(), stderr.String(), test.wantError)
			}
			outputAfter, outputAfterErr := os.ReadFile(outputPath)
			if !outputExistedBefore {
				if !os.IsNotExist(outputAfterErr) {
					t.Errorf("gate-assess revision refusal created output; read error = %v", outputAfterErr)
				}
			} else if outputAfterErr != nil || !bytes.Equal(outputAfter, outputBefore) {
				t.Errorf("gate-assess revision refusal changed pre-existing output; before SHA=%x, after error=%v", sha256.Sum256(outputBefore), outputAfterErr)
			}
		})
	}
}

func TestGateAssessPersistenceDemotesCallerAuthoredV4V7Pass(t *testing.T) {
	tests := []struct {
		gate domain.VerificationGate
		want string
	}{
		{gate: domain.GateFalsification, want: "randomized, SMT, and negation-search"},
		{gate: domain.GateEssentiality, want: "lemma-ablation execution receipts"},
		{gate: domain.GateProvenanceLeakage, want: "pinned M0 source-rights"},
		{gate: domain.GateLiteratureAndStatus, want: "literature-search results"},
	}
	for _, test := range tests {
		t.Run(string(test.gate), func(t *testing.T) {
			record := refuseUnreopenedV4V7Pass(domain.VerificationRecord{
				Gate: test.gate, Status: domain.VerificationPassed, Summary: "Caller-authored synthetic pass.",
			})
			if record.Status != domain.VerificationBlocked || !strings.Contains(record.Summary, test.want) {
				t.Fatalf("refuseUnreopenedV4V7Pass(%s) = %#v, want BLOCKED with %q", test.gate, record, test.want)
			}
		})
	}
}

func dossierWithPendingGate(t *testing.T, gate domain.VerificationGate) domain.Dossier {
	t.Helper()

	dossier := syntheticReadyDossierForCLI()
	for index := range dossier.Verifications {
		record := &dossier.Verifications[index]
		if record.Gate != gate {
			continue
		}
		record.Status = domain.VerificationPending
		record.Summary = "Awaiting typed gate-assessment input."
		record.EvidenceIDs = nil
		record.EvidenceArtifacts = nil
		record.StatementFidelity = nil
		record.Falsification = nil
		record.Essentiality = nil
		record.DatasetSplitSHA256 = ""
		record.DatasetSplitEvidenceID = ""
		record.LeakageAuditEvidenceID = ""
		record.SourceIDs = nil
		record.SourceRightsAudits = nil
		record.ReviewerID = ""
		record.Novelty = ""
		record.Searches = nil
		record.Findings = nil
		if gate == domain.GateEssentiality {
			record.ProofSHA256 = verifiedProofSHA256ForTest(t, dossier)
		}
		if err := dossier.Validate(); err != nil {
			t.Fatalf("dossier with pending %s gate: Validate() error = %v", gate, err)
		}
		return dossier
	}
	t.Fatalf("dossier fixture has no %s gate", gate)
	return domain.Dossier{}
}

func gateAssessmentInputForTest(t *testing.T, dossier domain.Dossier, gate domain.VerificationGate) gateAssessmentInput {
	t.Helper()

	statementDigest, err := domain.ProblemStatementDigest(dossier.Problem.ID, dossier.Problem.Statement, dossier.Problem.LeanStatement)
	if err != nil {
		t.Fatalf("ProblemStatementDigest(%q) error = %v", dossier.Problem.ID, err)
	}
	return gateAssessmentInput{
		SchemaVersion:          gateAssessmentSchemaVersion,
		Gate:                   gate,
		ProblemID:              dossier.Problem.ID,
		ProblemStatementSHA256: statementDigest,
		RecordedAt:             time.Date(2026, time.October, 20, 18, 30, 0, 0, time.UTC),
	}
}

func verifiedProofSHA256ForTest(t *testing.T, dossier domain.Dossier) string {
	t.Helper()

	for _, record := range dossier.Verifications {
		if record.Gate == domain.GateAxiomAudit && record.Status == domain.VerificationPassed {
			return record.ProofSHA256
		}
	}
	t.Fatal("dossier fixture has no passed V2 proof")
	return ""
}

func passingV4Audit() domain.V4FalsificationAudit {
	return domain.V4FalsificationAudit{
		HypothesesPresent:         true,
		HypothesesSatisfiable:     true,
		HypothesisEvidenceID:      "synthetic-v4-random",
		RandomizedCheckStatus:     domain.V4RandomizedSamplesPass,
		RandomizedTestsRun:        8,
		RandomizedEvidenceID:      "synthetic-v4-random",
		SMTSearchStatus:           domain.V4SMTUnsat,
		SMTEvidenceID:             "synthetic-v4-smt",
		NegationSearchStatus:      domain.V4NegationNoCounterexample,
		NegationSearchEvidenceIDs: []string{"synthetic-v4-negation"},
	}
}

func passingV6Evidence(dossier domain.Dossier) *gateV6ProvenanceEvidence {
	now := time.Date(2026, time.October, 20, 18, 30, 0, 0, time.UTC)
	sourceID := dossier.Problem.SourceIDs[0]
	return &gateV6ProvenanceEvidence{
		ArtifactSHA256:         dossier.ProvenanceArtifactSHA256,
		DatasetSplitSHA256:     strings.Repeat("d", 64),
		DatasetSplitEvidenceID: "synthetic-split",
		LeakageAuditEvidenceID: "synthetic-leakage",
		SourceIDs:              []string{sourceID},
		SourceRights: []gateV6SourceRightsInput{{
			Source: catalog.SourceVersion{
				ID: sourceID, URL: "https://example.invalid/synthetic-rights-source", ItemLocator: "Synthetic.lean",
				Lane: catalog.LaneFormalConjectures, Revision: "synthetic-source-revision", RetrievedAt: now,
				ContentSHA256: strings.Repeat("a", 64), AuthorOrHolder: "Synthetic rights holder",
				License: "Apache-2.0", LicenseTermsURL: "https://www.apache.org/licenses/LICENSE-2.0",
				TermsNote: "Synthetic fixture only.", Attribution: "Synthetic fixture only.",
				AllowedUses: []catalog.SourceUse{catalog.UseLocalStorage}, RightsReviewerID: "synthetic-rights-reviewer",
				RightsReviewedAt: now, RightsEvidenceID: "synthetic-rights", Rights: catalog.RightsCleared,
			},
			RequiredUses: []catalog.SourceUse{catalog.UseLocalStorage},
		}},
		ReviewerID:  "synthetic-reviewer-v6",
		EvidenceIDs: []string{"synthetic-rights", "synthetic-split", "synthetic-leakage"},
	}
}

func ptrV4Audit(audit domain.V4FalsificationAudit) *domain.V4FalsificationAudit {
	return &audit
}

func runGateAssessmentForTest(t *testing.T, baseDir string, dossier domain.Dossier, input gateAssessmentInput) gateAssessmentOutput {
	t.Helper()
	result, code, stdout, stderr := runGateAssessmentCommandForTest(t, baseDir, dossier, input)
	if code != 0 {
		t.Fatalf("gate-assess(%s) exit = %d, stdout=%q stderr=%q, want 0", input.Gate, code, stdout, stderr)
	}
	return result
}

func runGateAssessmentCommandForTest(t *testing.T, baseDir string, dossier domain.Dossier, input gateAssessmentInput) (gateAssessmentOutput, int, string, string) {
	t.Helper()

	evidenceRoot := filepath.Join(baseDir, "evidence")
	if err := os.Mkdir(evidenceRoot, 0o700); err != nil {
		t.Fatalf("create gate evidence directory: %v", err)
	}
	catalogSnapshotPath, leanSourceRoot := "", ""
	if input.Gate == domain.GateStatementFidelity {
		catalogSnapshotPath, leanSourceRoot = writeV3GateAssessmentFixture(t, baseDir, evidenceRoot, &dossier, &input)
	} else {
		for _, evidenceID := range gateAssessmentEvidenceIDs(input) {
			artifactPath := filepath.Join(evidenceRoot, evidenceID+".artifact")
			if err := os.WriteFile(artifactPath, []byte("synthetic test artifact: "+evidenceID), 0o600); err != nil {
				t.Fatalf("write gate evidence artifact %q: %v", evidenceID, err)
			}
		}
	}

	dossierBytes, err := json.Marshal(dossier)
	if err != nil {
		t.Fatalf("json.Marshal(dossier) error = %v", err)
	}
	bundleDir := filepath.Join(baseDir, "bundle")
	if err := os.Mkdir(bundleDir, 0o700); err != nil {
		t.Fatalf("create dossier bundle: %v", err)
	}
	dossierPath := filepath.Join(bundleDir, "dossier.json")
	if err := os.WriteFile(dossierPath, dossierBytes, 0o600); err != nil {
		t.Fatalf("write dossier fixture: %v", err)
	}
	assessmentBytes, err := json.Marshal(input)
	if err != nil {
		t.Fatalf("json.Marshal(gate assessment) error = %v", err)
	}
	assessmentPath := filepath.Join(baseDir, "assessment.json")
	if err := os.WriteFile(assessmentPath, assessmentBytes, 0o600); err != nil {
		t.Fatalf("write gate-assessment fixture: %v", err)
	}
	outputPath := gateAssessmentRevisionOutputPath(bundleDir, dossier)
	var stdout, stderr bytes.Buffer
	args := []string{
		"gate-assess", "--dossier", dossierPath, "--assessment", assessmentPath, "--evidence-root", evidenceRoot, "--output", outputPath,
	}
	if input.Gate == domain.GateStatementFidelity {
		args = append(args, "--catalog-snapshot", catalogSnapshotPath, "--lean-source-root", leanSourceRoot)
	}
	if code := run(args, &stdout, &stderr); code != 0 {
		return gateAssessmentOutput{}, code, stdout.String(), stderr.String()
	}
	var result gateAssessmentOutput
	if err := json.Unmarshal(stdout.Bytes(), &result); err != nil {
		t.Fatalf("json.Unmarshal(gate-assess output) error = %v; output=%q", err, stdout.String())
	}
	if result.Status != "RECORDED" || result.Gate != input.Gate {
		t.Fatalf("gate-assess output = (%q, %q), want (RECORDED, %s)", result.Status, result.Gate, input.Gate)
	}
	if len(result.EvidenceArtifacts) != len(result.EvidenceIDs) {
		t.Fatalf("gate-assess artifact refs = %d, evidence IDs = %d; want one hash pin per evidence artifact", len(result.EvidenceArtifacts), len(result.EvidenceIDs))
	}
	assessedBytes, err := os.ReadFile(outputPath)
	if err != nil {
		t.Fatalf("read assessed dossier: %v", err)
	}
	digest := sha256.Sum256(assessedBytes)
	if got := hex.EncodeToString(digest[:]); got != result.DossierSHA256 {
		t.Errorf("gate-assess output dossier digest = %q, want %q", result.DossierSHA256, got)
	}
	var assessedDossier domain.Dossier
	if err := json.Unmarshal(assessedBytes, &assessedDossier); err != nil {
		t.Fatalf("json.Unmarshal(assessed dossier) error = %v", err)
	}
	if err := assessedDossier.Validate(); err != nil {
		t.Fatalf("assessed dossier Validate() error = %v", err)
	}
	if got, want := assessedDossier.Case.Version, dossier.Case.Version+1; got != want {
		t.Errorf("persisted case version = %d, want predecessor version + 1 = %d", got, want)
	}
	if !assessedDossier.Case.UpdatedAt.Equal(input.RecordedAt.UTC()) {
		t.Errorf("persisted case updated_at = %s, want assessment recorded_at %s", assessedDossier.Case.UpdatedAt, input.RecordedAt.UTC())
	}
	for _, record := range assessedDossier.Verifications {
		if record.Gate == result.Gate && record.Status != result.GateStatus {
			t.Fatalf("persisted %s status = %s, summary status = %s", result.Gate, record.Status, result.GateStatus)
		}
	}
	return result, 0, stdout.String(), stderr.String()
}

func writeV3GateAssessmentFixture(t *testing.T, baseDir, evidenceRoot string, dossier *domain.Dossier, input *gateAssessmentInput) (string, string) {
	t.Helper()
	if input.StatementFidelity == nil {
		t.Fatal("V3 fixture has no statement-fidelity record")
	}
	review := input.StatementFidelity
	now := time.Date(2026, time.October, 20, 18, 30, 0, 0, time.UTC)
	rawItem := []byte("source item for synthetic V3 gate test\n")
	if len(dossier.Problem.SourceIDs) == 0 {
		t.Fatal("V3 fixture dossier has no source ID")
	}
	sourceID := dossier.Problem.SourceIDs[0]
	review.Source.URL = "https://example.invalid/v3-source"
	review.Source.ItemLocator = "problems/" + dossier.Problem.ID
	review.Source.Revision = "source-revision-v1"
	review.Source.RawItemSHA256 = sha256TextForTest(string(rawItem))
	review.Source.Statement = dossier.Problem.Statement
	review.Lean.FileLocator = "Synthetic.lean"
	review.Lean.DeclarationName = "synthetic_statement"
	leanSource := []byte("theorem synthetic_statement : " + review.Lean.NormalizedStatement + " := by rfl\n")
	leanRoot := filepath.Join(baseDir, "lean-source")
	if err := os.Mkdir(leanRoot, 0o700); err != nil {
		t.Fatalf("create Lean source root: %v", err)
	}
	leanPath := filepath.Join(leanRoot, review.Lean.FileLocator)
	if err := os.WriteFile(leanPath, leanSource, 0o600); err != nil {
		t.Fatalf("write pinned Lean source: %v", err)
	}
	for _, args := range [][]string{
		{"-C", leanRoot, "init", "-q"},
		{"-C", leanRoot, "add", "--", review.Lean.FileLocator},
		{"-C", leanRoot, "-c", "user.name=MathCase test", "-c", "user.email=test@example.invalid", "commit", "-qm", "synthetic V3 source pin"},
	} {
		command := exec.Command("git", args...)
		if output, err := command.CombinedOutput(); err != nil {
			t.Fatalf("git %v failed: %v: %s", args, err, output)
		}
	}
	revision, err := exec.Command("git", "-C", leanRoot, "rev-parse", "HEAD").Output()
	if err != nil {
		t.Fatalf("read synthetic Lean Git revision: %v", err)
	}
	review.Lean.Revision = strings.TrimSpace(string(revision))
	review.Lean.SourceFileSHA256 = sha256TextForTest(string(leanSource))

	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{{
		ID: sourceID, URL: review.Source.URL, ItemLocator: review.Source.ItemLocator, Revision: review.Source.Revision,
		RetrievedAt: now, ContentSHA256: review.Source.RawItemSHA256, Rights: catalog.RightsUnknown,
	}}, []catalog.Problem{{
		ID: dossier.Problem.ID, Title: dossier.Problem.Title, InformalStatement: dossier.Problem.Statement,
		LeanStatement: dossier.Problem.LeanStatement, Status: catalog.StatusProven, SourceIDs: append([]string(nil), dossier.Problem.SourceIDs...),
	}})
	if err != nil {
		t.Fatalf("build synthetic V3 catalog snapshot: %v", err)
	}
	dossier.CatalogSnapshotSHA256 = snapshot.ContentSHA256
	review.Source.CatalogSnapshotSHA256 = snapshot.ContentSHA256
	snapshotBytes, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatalf("marshal synthetic V3 catalog snapshot: %v", err)
	}
	snapshotPath := filepath.Join(baseDir, "catalog-snapshot.json")
	if err := os.WriteFile(snapshotPath, snapshotBytes, 0o600); err != nil {
		t.Fatalf("write synthetic V3 catalog snapshot: %v", err)
	}
	writeArtifact := func(id string, data []byte) {
		t.Helper()
		if err := os.WriteFile(filepath.Join(evidenceRoot, id+".artifact"), data, 0o600); err != nil {
			t.Fatalf("write synthetic V3 evidence %q: %v", id, err)
		}
	}
	writeArtifact(review.Source.EvidenceID, rawItem)
	writeArtifact(review.Lean.EvidenceID, leanSource)
	writeArtifact(review.BackTranslation.EvidenceID, []byte(review.BackTranslation.Text))
	comparisonBytes, err := json.Marshal(review.SemanticComparison)
	if err != nil {
		t.Fatalf("marshal synthetic V3 semantic comparison: %v", err)
	}
	writeArtifact(review.SemanticComparison.EvidenceID, comparisonBytes)
	for _, probe := range review.BoundaryProbes {
		probeBytes, err := json.Marshal(v3BoundaryProbeEvidenceArtifact{SchemaVersion: v3ProbeEvidenceSchemaVersion, Probe: probe})
		if err != nil {
			t.Fatalf("marshal synthetic V3 boundary probe: %v", err)
		}
		writeArtifact(probe.EvidenceID, probeBytes)
	}
	return snapshotPath, leanRoot
}

func assertGateAssessmentRefused(t *testing.T, dossier domain.Dossier, input gateAssessmentInput, wantError string) {
	t.Helper()

	baseDir := t.TempDir()
	dossierBytes, err := json.Marshal(dossier)
	if err != nil {
		t.Fatalf("json.Marshal(dossier) error = %v", err)
	}
	bundleDir := filepath.Join(baseDir, "bundle")
	if err := os.Mkdir(bundleDir, 0o700); err != nil {
		t.Fatalf("create dossier bundle: %v", err)
	}
	dossierPath := filepath.Join(bundleDir, "dossier.json")
	if err := os.WriteFile(dossierPath, dossierBytes, 0o600); err != nil {
		t.Fatalf("write dossier fixture: %v", err)
	}
	assessmentBytes, err := json.Marshal(input)
	if err != nil {
		t.Fatalf("json.Marshal(gate assessment) error = %v", err)
	}
	assessmentPath := filepath.Join(baseDir, "assessment.json")
	if err := os.WriteFile(assessmentPath, assessmentBytes, 0o600); err != nil {
		t.Fatalf("write gate-assessment fixture: %v", err)
	}
	evidenceRoot := filepath.Join(baseDir, "evidence")
	if err := os.Mkdir(evidenceRoot, 0o700); err != nil {
		t.Fatalf("create gate evidence directory: %v", err)
	}
	for _, evidenceID := range gateAssessmentEvidenceIDs(input) {
		if err := os.WriteFile(filepath.Join(evidenceRoot, evidenceID+".artifact"), []byte("synthetic test artifact: "+evidenceID), 0o600); err != nil {
			t.Fatalf("write gate evidence artifact %q: %v", evidenceID, err)
		}
	}
	outputPath := gateAssessmentRevisionOutputPath(bundleDir, dossier)
	var stdout, stderr bytes.Buffer
	if code := run([]string{
		"gate-assess", "--dossier", dossierPath, "--assessment", assessmentPath, "--evidence-root", evidenceRoot, "--output", outputPath,
	}, &stdout, &stderr); code != 2 {
		t.Fatalf("gate-assess(%s) exit = %d, want 2; stdout=%q stderr=%q", input.Gate, code, stdout.String(), stderr.String())
	}
	if stdout.Len() != 0 || !strings.Contains(stderr.String(), wantError) {
		t.Errorf("gate-assess(%s) refusal stdout=%q stderr=%q, want error containing %q", input.Gate, stdout.String(), stderr.String(), wantError)
	}
	if _, err := os.Stat(outputPath); !os.IsNotExist(err) {
		t.Errorf("gate-assess(%s) created output after refusal; os.Stat error = %v", input.Gate, err)
	}
}

func gateAssessmentRevisionOutputPath(bundleDir string, dossier domain.Dossier) string {
	return filepath.Join(bundleDir, "dossier-revision-v"+strconv.FormatInt(dossier.Case.Version+1, 10)+".json")
}

func gateAssessmentEvidenceIDs(input gateAssessmentInput) []string {
	switch input.Gate {
	case domain.GateStatementFidelity:
		if input.StatementFidelity != nil {
			return input.StatementFidelity.EvidenceIDs()
		}
	case domain.GateFalsification:
		if input.Falsification != nil {
			return input.Falsification.EvidenceIDs()
		}
	case domain.GateEssentiality:
		if input.Essentiality != nil {
			return input.Essentiality.EvidenceIDs()
		}
	case domain.GateProvenanceLeakage:
		if input.Provenance != nil {
			return input.Provenance.EvidenceIDs
		}
	case domain.GateLiteratureAndStatus:
		if input.Literature != nil {
			return input.Literature.EvidenceIDs
		}
	}
	return nil
}

func TestGateEvidenceArtifactsAreHashedAndRechecked(t *testing.T) {
	t.Parallel()

	root := t.TempDir()
	const evidenceID = "synthetic-artifact-one"
	artifactPath := filepath.Join(root, evidenceID+".artifact")
	artifactBytes := []byte("synthetic evidence bytes")
	if err := os.WriteFile(artifactPath, artifactBytes, 0o600); err != nil {
		t.Fatal(err)
	}
	refs, err := loadGateEvidenceArtifacts(root, []string{evidenceID})
	if err != nil {
		t.Fatalf("loadGateEvidenceArtifacts() error = %v", err)
	}
	wantDigest := sha256TextForTest(string(artifactBytes))
	if len(refs) != 1 || refs[0].EvidenceID != evidenceID || refs[0].ArtifactSHA256 != wantDigest {
		t.Fatalf("artifact refs = %#v, want %s bound to %s", refs, evidenceID, wantDigest)
	}
	dossier := domain.Dossier{Verifications: []domain.VerificationRecord{{
		EvidenceIDs: []string{evidenceID}, EvidenceArtifacts: refs,
	}}}
	audit, err := verifyDossierEvidenceArtifacts(root, dossier)
	if err != nil || audit == nil || audit.Status != "RECONCILED" || audit.RequiredCount != 1 || audit.VerifiedCount != 1 {
		t.Fatalf("verifyDossierEvidenceArtifacts() = %#v, %v; want one reconciled artifact", audit, err)
	}

	if err := os.WriteFile(artifactPath, []byte("changed evidence bytes"), 0o600); err != nil {
		t.Fatal(err)
	}
	audit, err = verifyDossierEvidenceArtifacts(root, dossier)
	if err == nil || audit == nil || audit.Status != "FAILED" || !strings.Contains(err.Error(), "do not match") {
		t.Fatalf("tampered artifact reconciliation = %#v, %v; want digest mismatch refusal", audit, err)
	}
}
