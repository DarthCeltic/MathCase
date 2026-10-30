package main

import (
	"context"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"reflect"
	"regexp"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/book"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/persistence"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

const m6DossierAttachmentScope = "Structural counts from a separately pinned Lean execution of the exact M4 generated source. These counts do not measure proof quality, novelty, necessity, V5, or delivery readiness."
const maxDossierM6SnapshotFileBytes = 4 << 20
const maxDossierM6SnapshotFiles = 32
const maxDossierM6SnapshotTotalBytes = 16 << 20

type dossierM6ReceiptSummary struct {
	SnapshotID               string `json:"snapshot_id"`
	SourceSHA256             string `json:"source_sha256"`
	InstrumentedSourceSHA256 string `json:"instrumented_source_sha256"`
	Declaration              string `json:"declaration"`
	MetricsHelperSHA256      string `json:"metrics_helper_sha256"`
	ProjectLakefileSHA256    string `json:"project_lakefile_sha256"`
	LakeManifestSHA256       string `json:"lake_manifest_sha256"`
	LeanToolchainSHA256      string `json:"lean_toolchain_sha256"`
	ScopeNote                string `json:"scope_note"`
}

type dossierM6SnapshotManifest struct {
	SchemaVersion string                  `json:"schema_version"`
	SnapshotID    string                  `json:"snapshot_id"`
	SourcePath    string                  `json:"source_path"`
	Declaration   string                  `json:"declaration"`
	Files         []dossierM6SnapshotFile `json:"files"`
}

type dossierM6SnapshotFile struct {
	Path   string `json:"path"`
	Bytes  int    `json:"bytes"`
	SHA256 string `json:"sha256"`
}

type dossierM6Output struct {
	SchemaVersion            string `json:"schema_version"`
	Status                   string `json:"status"`
	CaseID                   string `json:"case_id"`
	ProblemID                string `json:"problem_id"`
	CaseVersion              int64  `json:"case_version"`
	ParentDossierSHA256      string `json:"parent_dossier_sha256,omitempty"`
	DossierSHA256            string `json:"dossier_sha256,omitempty"`
	DossierPath              string `json:"dossier_path,omitempty"`
	M4ReceiptSHA256          string `json:"m4_receipt_sha256"`
	M6MetricsReceiptSHA256   string `json:"m6_metrics_receipt_sha256"`
	GeneratedSourceSHA256    string `json:"generated_source_sha256"`
	InstrumentedSourceSHA256 string `json:"instrumented_source_sha256"`
	Declaration              string `json:"declaration"`
	LeanToolchain            string `json:"lean_toolchain"`
	LeanVersion              string `json:"lean_version"`
	CoreExprNodes            int    `json:"core_expr_nodes"`
	CoreExprDepth            int    `json:"core_expr_depth"`
	BinderNodes              int    `json:"binder_nodes"`
	ConstantReferenceNodes   int    `json:"constant_reference_nodes"`
	Scope                    string `json:"scope"`
}

type openedDossierM6Chain struct {
	reference domain.M6StructuralMetricsReference
}

func runDossierAttachM6(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("dossier-attach-m6", flag.ContinueOnError)
	flags.SetOutput(stderr)
	projectRoot := flags.String("project-root", "", "MathCase project root used to resolve and constrain evidence paths")
	storeRoot := flags.String("store-root", "", "private local content-addressed dossier store")
	dossierPath := flags.String("dossier", "", "exact unsigned parent dossier JSON")
	parentSHA256 := flags.String("parent-sha256", "", "expected SHA-256 of the exact parent dossier bytes")
	m4Path := flags.String("m4-receipt", "", "exact execution-bound M4 receipt JSON")
	m6Directory := flags.String("metrics-dir", "", "directory containing the exact M6 execution artifacts")
	dryRun := flags.Bool("dry-run", false, "validate the exact M4/M6 chain without writing a dossier revision")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*projectRoot) == "" || strings.TrimSpace(*dossierPath) == "" ||
		strings.TrimSpace(*parentSHA256) == "" || strings.TrimSpace(*m4Path) == "" || strings.TrimSpace(*m6Directory) == "" ||
		(!*dryRun && strings.TrimSpace(*storeRoot) == "") {
		fmt.Fprintln(stderr, "dossier-attach-m6 requires --project-root, --dossier, --parent-sha256, --m4-receipt, and --metrics-dir; --store-root is required unless --dry-run is set")
		return 2
	}
	parentBytes, err := readRegularInput(*dossierPath, "M6 parent dossier", maxDossierInputBytes)
	if err != nil {
		return reportM6Error(stderr, "read parent dossier", err)
	}
	if digestBytes(parentBytes) != *parentSHA256 {
		return reportM6Error(stderr, "verify parent dossier", errors.New("parent dossier bytes do not match --parent-sha256"))
	}
	var dossier domain.Dossier
	if err := decodeStrictJSON(parentBytes, &dossier, "M6 parent dossier"); err != nil {
		return reportM6Error(stderr, "decode parent dossier", err)
	}
	if err := dossier.Validate(); err != nil {
		return reportM6Error(stderr, "validate parent dossier", err)
	}
	if dossier.M6StructuralMetrics != nil {
		return reportM6Error(stderr, "attach M6 metrics", errors.New("parent dossier already has M6 structural metrics; a different measurement cannot replace it"))
	}
	chain, err := openDossierM6Chain(*projectRoot, dossier, *m4Path, *m6Directory)
	if err != nil {
		return reportM6Error(stderr, "reopen exact M4/M6 chain", err)
	}
	if *dryRun {
		output := dossierM6OutputFromChain(dossier.Case.ID, dossier.Problem.ID, dossier.Case.Version, *parentSHA256, chain)
		output.Status = "VALIDATED_NO_WRITE"
		return writeDossierM6Output(stdout, stderr, output)
	}
	chain.reference.ParentDossierSHA256 = *parentSHA256
	dossier.M6StructuralMetrics = &chain.reference
	dossier.Case.Version++
	dossier.Case.UpdatedAt = time.Now().UTC()
	if err := dossier.Validate(); err != nil {
		return reportM6Error(stderr, "validate M6 dossier successor", err)
	}
	store, err := persistence.NewDossierStore(*storeRoot)
	if err != nil {
		return reportM6Error(stderr, "open dossier store", err)
	}
	if _, err := store.Get(context.Background(), dossier.Case.ID, *parentSHA256); err != nil {
		return reportM6Error(stderr, "reopen exact parent dossier from store", err)
	}
	receipt, err := store.Put(context.Background(), dossier)
	if err != nil {
		return reportM6Error(stderr, "persist immutable M6 dossier successor", err)
	}
	output := dossierM6OutputFromChain(receipt.CaseID, dossier.Problem.ID, dossier.Case.Version, *parentSHA256, chain)
	output.Status = "ATTACHED_IMMUTABLY"
	output.DossierSHA256 = receipt.ContentSHA256
	output.DossierPath = filepath.ToSlash(receipt.RelativePath)
	return writeDossierM6Output(stdout, stderr, output)
}

func runDossierReadM6(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("dossier-read-m6", flag.ContinueOnError)
	flags.SetOutput(stderr)
	projectRoot := flags.String("project-root", "", "MathCase project root used to resolve and constrain evidence paths")
	storeRoot := flags.String("store-root", "", "existing content-addressed dossier store")
	caseID := flags.String("case-id", "", "case identity in the dossier store")
	dossierSHA256 := flags.String("dossier-sha256", "", "exact dossier content SHA-256")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*projectRoot) == "" || strings.TrimSpace(*storeRoot) == "" ||
		strings.TrimSpace(*caseID) == "" || strings.TrimSpace(*dossierSHA256) == "" {
		fmt.Fprintln(stderr, "dossier-read-m6 requires --project-root, --store-root, --case-id, and --dossier-sha256")
		return 2
	}
	store, err := persistence.NewDossierStore(*storeRoot)
	if err != nil {
		return reportM6Error(stderr, "open dossier store", err)
	}
	dossier, err := store.Get(context.Background(), *caseID, *dossierSHA256)
	if err != nil {
		return reportM6Error(stderr, "reopen exact dossier", err)
	}
	if dossier.M6StructuralMetrics == nil {
		return reportM6Error(stderr, "reopen M6 metrics", errors.New("exact dossier revision has no M6 structural metrics reference"))
	}
	parent, err := store.Get(context.Background(), *caseID, dossier.M6StructuralMetrics.ParentDossierSHA256)
	if err != nil {
		return reportM6Error(stderr, "reopen exact M6 parent dossier", err)
	}
	if err := validateM6DossierSuccessor(parent, dossier); err != nil {
		return reportM6Error(stderr, "validate immutable M6 dossier successor", err)
	}
	root, err := filepath.Abs(*projectRoot)
	if err != nil {
		return reportM6Error(stderr, "resolve project root", err)
	}
	ref := dossier.M6StructuralMetrics
	m4Path := filepath.Join(root, filepath.FromSlash(ref.M4ReceiptRelativePath))
	m6Directory := filepath.Join(root, filepath.FromSlash(ref.MetricsDirectoryPath))
	chain, err := openDossierM6Chain(root, dossier, m4Path, m6Directory)
	if err != nil {
		return reportM6Error(stderr, "reopen dossier M4/M6 evidence", err)
	}
	chain.reference.ParentDossierSHA256 = dossier.M6StructuralMetrics.ParentDossierSHA256
	if chain.reference != *ref {
		return reportM6Error(stderr, "reconcile dossier M6 reference", errors.New("reopened M4/M6 evidence does not match the dossier reference"))
	}
	output := dossierM6OutputFromChain(dossier.Case.ID, dossier.Problem.ID, dossier.Case.Version, ref.ParentDossierSHA256, chain)
	output.Status = "REOPENED_EXACT_DOSSIER_AND_EXECUTION_CHAIN"
	output.DossierSHA256 = *dossierSHA256
	return writeDossierM6Output(stdout, stderr, output)
}

func validateM6DossierSuccessor(parent, successor domain.Dossier) error {
	if parent.Case.ID != successor.Case.ID || parent.Case.Version+1 != successor.Case.Version ||
		parent.M6StructuralMetrics != nil || successor.M6StructuralMetrics == nil {
		return errors.New("M6 dossier revision is not the exact next unsigned successor")
	}
	expected := parent
	expected.Case.Version = successor.Case.Version
	expected.Case.UpdatedAt = successor.Case.UpdatedAt
	expected.M6StructuralMetrics = successor.M6StructuralMetrics
	if !reflect.DeepEqual(expected, successor) {
		return errors.New("M6 dossier successor changed fields outside its version, update time, and structural metrics reference")
	}
	return nil
}

func openDossierM6Chain(projectRoot string, dossier domain.Dossier, m4Path, metricsDirectory string) (openedDossierM6Chain, error) {
	if dossier.M4Receipt == nil {
		return openedDossierM6Chain{}, errors.New("dossier has no exact typed M4 receipt reference")
	}
	statementSHA256, err := domain.ProblemStatementDigest(dossier.Problem.ID, dossier.Problem.Statement, dossier.Problem.LeanStatement)
	if err != nil {
		return openedDossierM6Chain{}, fmt.Errorf("digest dossier problem statement: %w", err)
	}
	m4Relative, err := projectRelativeEvidencePath(projectRoot, m4Path, false)
	if err != nil {
		return openedDossierM6Chain{}, fmt.Errorf("M4 receipt path: %w", err)
	}
	metricsRelative, err := projectRelativeEvidencePath(projectRoot, metricsDirectory, true)
	if err != nil {
		return openedDossierM6Chain{}, fmt.Errorf("M6 metrics directory path: %w", err)
	}
	snapshotDirectory := filepath.Join(metricsDirectory, "snapshot")
	if _, err := projectRelativeEvidencePath(projectRoot, snapshotDirectory, true); err != nil {
		return openedDossierM6Chain{}, fmt.Errorf("M6 snapshot directory path: %w", err)
	}
	m4Bytes, err := readRegularInput(m4Path, "exact M4 receipt", 1<<20)
	if err != nil {
		return openedDossierM6Chain{}, err
	}
	openedM4, err := solver.OpenLeanVerificationReceipt(m4Bytes, dossier.Problem)
	if err != nil {
		return openedDossierM6Chain{}, err
	}
	if openedM4.EvidenceID() != dossier.M4Receipt.EvidenceID || openedM4.ReceiptSHA256() != dossier.M4Receipt.ReceiptSHA256 {
		return openedDossierM6Chain{}, errors.New("reopened M4 receipt does not match the exact dossier receipt identity and digest")
	}
	var m4 solver.LeanVerificationReceipt
	if err := decodeStrictJSON(m4Bytes, &m4, "exact M4 receipt"); err != nil {
		return openedDossierM6Chain{}, err
	}
	if err := solver.ValidateExecutionBoundReceipt(m4, dossier.Problem); err != nil {
		return openedDossierM6Chain{}, err
	}
	metricsPath := filepath.Join(metricsDirectory, "metrics-receipt.json")
	metricsBytes, err := readRegularInput(metricsPath, "M6 metrics receipt", maxProblemFileBytes)
	if err != nil {
		return openedDossierM6Chain{}, err
	}
	runReceiptBytes, err := readRegularInput(filepath.Join(metricsDirectory, "run-receipt.json"), "M6 run receipt", maxProblemFileBytes)
	if err != nil {
		return openedDossierM6Chain{}, err
	}
	runRequestBytes, err := readM6RawOutput(filepath.Join(metricsDirectory, "run-request.json"), "M6 run request", maxProblemFileBytes)
	if err != nil {
		return openedDossierM6Chain{}, err
	}
	snapshotBytes, err := readRegularInput(filepath.Join(metricsDirectory, "snapshot", "snapshot-manifest.json"), "M6 snapshot manifest", 4<<20)
	if err != nil {
		return openedDossierM6Chain{}, err
	}
	stdoutBytes, err := readM6RawOutput(filepath.Join(metricsDirectory, "stdout.bin"), "M6 stdout", maxProblemFileBytes)
	if err != nil {
		return openedDossierM6Chain{}, err
	}
	stderrBytes, err := readM6RawOutput(filepath.Join(metricsDirectory, "stderr.bin"), "M6 stderr", maxProblemFileBytes)
	if err != nil {
		return openedDossierM6Chain{}, err
	}
	proof := book.ProofMetrics{
		ProblemID: dossier.Problem.ID, ProblemStatementSHA256: statementSHA256,
		ProofID: "dossier-m6-attachment", ProofSHA256: m4.GeneratedSourceSHA256,
		LeanVerificationReceiptSHA256: openedM4.ReceiptSHA256(), LeanProofInputSHA256: openedM4.ProofInputSHA256(),
	}
	proof, err = book.AttachLeanMetricsArtifacts(proof, metricsBytes, runReceiptBytes, runRequestBytes, snapshotBytes, stdoutBytes, stderrBytes)
	if err != nil {
		return openedDossierM6Chain{}, err
	}
	if proof.LeanMetricsSourceSHA256 != m4.GeneratedSourceSHA256 || proof.LeanDeclaration == "" ||
		!m4DeclaresSourceName(m4.GeneratedSource, proof.LeanDeclaration) ||
		proof.LeanMetricsToolchain != m4.Toolchain || proof.LeanMetricsLeanVersion != m4.LeanVersion ||
		proof.LeanVerificationReceiptSHA256 != openedM4.ReceiptSHA256() || proof.LeanProofInputSHA256 != openedM4.ProofInputSHA256() {
		return openedDossierM6Chain{}, errors.New("M6 declaration, source, proof, or Lean identity does not match the exact M4 execution")
	}
	var m6Summary dossierM6ReceiptSummary
	if err := json.Unmarshal(metricsBytes, &m6Summary); err != nil {
		return openedDossierM6Chain{}, fmt.Errorf("decode validated M6 receipt summary: %w", err)
	}
	if err := reopenDossierM6Snapshot(projectRoot, snapshotDirectory, snapshotBytes, m4.GeneratedSourceSHA256, m6Summary); err != nil {
		return openedDossierM6Chain{}, err
	}
	ref := domain.M6StructuralMetricsReference{
		SchemaVersion:       domain.M6StructuralMetricsReferenceSchemaVersion,
		Status:              domain.M6StructuralMetricsAttachedStatus,
		EvidenceClass:       domain.M6StructuralMetricsPinnedExecutionClass,
		M4ReceiptEvidenceID: openedM4.EvidenceID(), M4ReceiptRelativePath: m4Relative,
		M4ReceiptSHA256: openedM4.ReceiptSHA256(), ProblemStatementSHA256: statementSHA256,
		GeneratedSourceSHA256: m4.GeneratedSourceSHA256, InstrumentedSourceSHA256: m6Summary.InstrumentedSourceSHA256,
		MetricsDirectoryPath: metricsRelative,
		MetricsReceiptSHA256: digestBytes(metricsBytes), RunReceiptSHA256: digestBytes(runReceiptBytes),
		RunRequestSHA256: digestBytes(runRequestBytes), SnapshotID: m6Summary.SnapshotID,
		SnapshotManifestSHA256: digestBytes(snapshotBytes), StdoutSHA256: digestBytes(stdoutBytes), StderrSHA256: digestBytes(stderrBytes),
		Declaration: proof.LeanDeclaration, LeanToolchain: proof.LeanMetricsToolchain,
		LeanVersion: proof.LeanMetricsLeanVersion, CoreExprNodes: proof.ElaboratedExprNodes,
		CoreExprDepth: proof.ElaboratedExprDepth, BinderNodes: proof.BinderNodes,
		ConstantReferenceNodes: proof.ConstantReferenceNodes, ScopeNote: m6Summary.ScopeNote,
	}
	return openedDossierM6Chain{reference: ref}, nil
}

func reopenDossierM6Snapshot(projectRoot, snapshotDirectory string, snapshotManifestBytes []byte, generatedSourceSHA256 string, receipt dossierM6ReceiptSummary) error {
	var manifest dossierM6SnapshotManifest
	if err := json.Unmarshal(snapshotManifestBytes, &manifest); err != nil {
		return fmt.Errorf("decode M6 snapshot manifest: %w", err)
	}
	if manifest.SchemaVersion != "mathcase-m6-source-snapshot-v1" || manifest.SnapshotID == "" ||
		manifest.SnapshotID != receipt.SnapshotID || manifest.Declaration != receipt.Declaration ||
		len(manifest.Files) == 0 || len(manifest.Files) > maxDossierM6SnapshotFiles {
		return errors.New("M6 snapshot manifest schema, identity, declaration, or file count is invalid")
	}
	seen := make(map[string]string, len(manifest.Files))
	totalBytes := 0
	for _, entry := range manifest.Files {
		if entry.Path == "" || strings.Contains(entry.Path, "\\") || strings.Contains(entry.Path, ":") ||
			strings.ContainsRune(entry.Path, 0) || filepath.IsAbs(entry.Path) || filepath.ToSlash(filepath.Clean(filepath.FromSlash(entry.Path))) != entry.Path ||
			entry.Path == "." || entry.Path == ".." || strings.HasPrefix(entry.Path, "../") || entry.Bytes < 0 || entry.Bytes > maxDossierM6SnapshotFileBytes ||
			!isCanonicalM6SHA256(entry.SHA256) {
			return errors.New("M6 snapshot manifest contains an invalid path, size, or digest")
		}
		if _, exists := seen[entry.Path]; exists {
			return errors.New("M6 snapshot manifest contains a duplicate file path")
		}
		filePath := filepath.Join(snapshotDirectory, filepath.FromSlash(entry.Path))
		if _, err := projectRelativeEvidencePath(projectRoot, filePath, false); err != nil {
			return fmt.Errorf("M6 snapshot file path %q: %w", entry.Path, err)
		}
		data, err := readRegularInput(filePath, "M6 snapshot file", maxDossierM6SnapshotFileBytes)
		if err != nil {
			return err
		}
		totalBytes += len(data)
		if totalBytes > maxDossierM6SnapshotTotalBytes {
			return errors.New("M6 snapshot files exceed the total reopen size limit")
		}
		actual := digestBytes(data)
		if len(data) != entry.Bytes || actual != entry.SHA256 {
			return fmt.Errorf("M6 snapshot file %q differs from its exact manifest entry", entry.Path)
		}
		seen[entry.Path] = actual
	}
	expected := map[string]string{
		"source.lean":         generatedSourceSHA256,
		"instrumented.lean":   receipt.InstrumentedSourceSHA256,
		"metrics-helper.lean": receipt.MetricsHelperSHA256,
		"lakefile.toml":       receipt.ProjectLakefileSHA256,
		"lake-manifest.json":  receipt.LakeManifestSHA256,
		"lean-toolchain":      receipt.LeanToolchainSHA256,
	}
	for path, digest := range expected {
		if !isCanonicalM6SHA256(digest) || seen[path] != digest {
			return fmt.Errorf("M6 snapshot is missing or misbound to the exact %s file", path)
		}
	}
	if receipt.SourceSHA256 != generatedSourceSHA256 {
		return errors.New("M6 metrics source digest does not match the exact generated M4 source")
	}
	return nil
}

func projectRelativeEvidencePath(projectRoot, evidencePath string, directory bool) (string, error) {
	root, err := filepath.EvalSymlinks(projectRoot)
	if err != nil {
		return "", err
	}
	resolved, err := filepath.EvalSymlinks(evidencePath)
	if err != nil {
		return "", err
	}
	if directory {
		info, err := os.Stat(resolved)
		if err != nil || !info.IsDir() {
			return "", errors.New("evidence path is not a directory")
		}
	}
	relative, err := filepath.Rel(root, resolved)
	if err != nil || relative == "." || relative == ".." || strings.HasPrefix(relative, ".."+string(filepath.Separator)) || filepath.IsAbs(relative) {
		return "", errors.New("evidence path must remain inside the project root")
	}
	return filepath.ToSlash(relative), nil
}

func m4DeclaresSourceName(source, declaration string) bool {
	if strings.TrimSpace(source) == "" || strings.TrimSpace(declaration) == "" {
		return false
	}
	name := regexp.QuoteMeta(declaration)
	return regexp.MustCompile(`(?m)^\s*(?:theorem|lemma)\s+` + name + `\s*:`).MatchString(source)
}

func dossierM6OutputFromChain(caseID, problemID string, caseVersion int64, parentSHA256 string, chain openedDossierM6Chain) dossierM6Output {
	return dossierM6Output{
		SchemaVersion: "mathcase-m6-dossier-attachment-v1", CaseID: caseID, ProblemID: problemID,
		CaseVersion: caseVersion, ParentDossierSHA256: parentSHA256, M4ReceiptSHA256: chain.reference.M4ReceiptSHA256,
		M6MetricsReceiptSHA256:   chain.reference.MetricsReceiptSHA256,
		GeneratedSourceSHA256:    chain.reference.GeneratedSourceSHA256,
		InstrumentedSourceSHA256: chain.reference.InstrumentedSourceSHA256,
		Declaration:              chain.reference.Declaration, LeanToolchain: chain.reference.LeanToolchain,
		LeanVersion: chain.reference.LeanVersion, CoreExprNodes: chain.reference.CoreExprNodes,
		CoreExprDepth: chain.reference.CoreExprDepth, BinderNodes: chain.reference.BinderNodes,
		ConstantReferenceNodes: chain.reference.ConstantReferenceNodes, Scope: m6DossierAttachmentScope,
	}
}

func writeDossierM6Output(stdout, stderr io.Writer, output dossierM6Output) int {
	encoded, err := json.Marshal(output)
	if err != nil {
		return reportM6Error(stderr, "encode result", err)
	}
	if _, err := stdout.Write(append(encoded, '\n')); err != nil {
		return reportM6Error(stderr, "write result", err)
	}
	return 0
}

func reportM6Error(stderr io.Writer, action string, err error) int {
	fmt.Fprintf(stderr, "mathcase: %s: %v\n", action, err)
	return 1
}
