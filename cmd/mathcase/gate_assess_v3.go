package main

import (
	"bytes"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"reflect"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/gateaudit"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const v3ProbeEvidenceSchemaVersion = "mathcase-v3-boundary-probe-evidence-v1"

type v3BoundaryProbeEvidenceArtifact struct {
	SchemaVersion string                 `json:"schema_version"`
	Probe         domain.V3BoundaryProbe `json:"probe"`
}

// validateGateAssessV3Evidence reopens catalog, source, Lean, and review
// artifacts for legacy assessments without a typed gate receipt. Such checks
// preserve useful diagnostics but deliberately cannot pass V3: only the
// integrated gateaudit reader can reopen execution-bound probe and reviewer
// receipts. When a typed receipt is supplied, gate-assess delegates directly
// to that reader instead of requiring this parallel legacy evidence route.
func validateGateAssessV3Evidence(snapshotPath, leanSourceRoot, evidenceRoot string, dossier domain.Dossier, review domain.V3StatementFidelity) ([]string, error) {
	if strings.TrimSpace(snapshotPath) == "" || strings.TrimSpace(leanSourceRoot) == "" {
		return nil, errors.New("V3 requires --catalog-snapshot and --lean-source-root so the pinned M0 and Lean bytes can be reopened")
	}
	snapshot, err := loadCatalogSnapshot(snapshotPath)
	if err != nil {
		return nil, fmt.Errorf("reopen M0 catalog snapshot: %w", err)
	}
	if snapshot.ContentSHA256 != dossier.CatalogSnapshotSHA256 || snapshot.ContentSHA256 != review.Source.CatalogSnapshotSHA256 {
		return nil, errors.New("reopened M0 snapshot digest does not match the dossier and V3 source pin")
	}
	problem, ok := v3CatalogProblem(snapshot, dossier.Problem.ID)
	if !ok {
		return nil, fmt.Errorf("problem %q is absent from the reopened M0 snapshot", dossier.Problem.ID)
	}
	if problem.InformalStatement != dossier.Problem.Statement || problem.LeanStatement != dossier.Problem.LeanStatement ||
		problem.InformalStatement != review.Source.Statement || problem.LeanStatement != review.Lean.NormalizedStatement {
		return nil, errors.New("reopened M0 source statements do not exactly match the dossier and V3 typed record")
	}
	if len(dossier.Problem.SourceIDs) == 0 || !sameStringMembership(problem.SourceIDs, dossier.Problem.SourceIDs) {
		return nil, errors.New("dossier source identities do not match the reopened M0 problem")
	}

	var pinnedSource *catalog.SourceVersion
	for index := range snapshot.Sources {
		source := &snapshot.Sources[index]
		if !containsV3String(problem.SourceIDs, source.ID) || source.URL != review.Source.URL || source.ItemLocator != review.Source.ItemLocator || source.Revision != review.Source.Revision {
			continue
		}
		if pinnedSource != nil {
			return nil, errors.New("V3 source metadata matches more than one source in the pinned catalog")
		}
		pinnedSource = source
	}
	if pinnedSource == nil || pinnedSource.ContentSHA256 != review.Source.RawItemSHA256 {
		return nil, errors.New("V3 source URL, item locator, revision, or raw-item digest does not match a source linked by the pinned M0 problem")
	}

	evidenceDirectory, err := inspectV3EvidenceRoot(evidenceRoot)
	if err != nil {
		return nil, err
	}
	readEvidence := func(id string) ([]byte, error) {
		if err := validateEvidenceID(id); err != nil {
			return nil, err
		}
		return readRegularInput(filepath.Join(evidenceDirectory, id+".artifact"), "V3 evidence artifact "+id, maxGateEvidenceArtifactBytes)
	}

	rawItem, err := readEvidence(review.Source.EvidenceID)
	if err != nil {
		return nil, fmt.Errorf("reopen pinned source item: %w", err)
	}
	if digestBytes(rawItem) != review.Source.RawItemSHA256 {
		return nil, errors.New("reopened source-item bytes do not match the V3 raw-item SHA-256")
	}

	leanSource, err := reopenPinnedLeanSource(leanSourceRoot, review.Lean.FileLocator, review.Lean.Revision)
	if err != nil {
		return nil, err
	}
	if digestBytes(leanSource) != review.Lean.SourceFileSHA256 {
		return nil, errors.New("reopened Lean source file does not match the V3 source-file SHA-256")
	}
	leanEvidence, err := readEvidence(review.Lean.EvidenceID)
	if err != nil {
		return nil, fmt.Errorf("reopen Lean source evidence: %w", err)
	}
	if !bytes.Equal(leanEvidence, leanSource) {
		return nil, errors.New("linked Lean evidence artifact is not the exact reopened Lean source file")
	}
	if !leanDeclarationMatches(leanSource, review.Lean.DeclarationName, review.Lean.NormalizedStatement) {
		return nil, errors.New("pinned Lean declaration name and normalized statement were not found together in active source text")
	}
	backTranslation, err := readEvidence(review.BackTranslation.EvidenceID)
	if err != nil {
		return nil, fmt.Errorf("reopen back-translation witness: %w", err)
	}
	if !bytes.Equal(backTranslation, []byte(review.BackTranslation.Text)) {
		return nil, errors.New("back-translation evidence bytes do not exactly match the typed comparison witness")
	}

	comparisonBytes, err := readEvidence(review.SemanticComparison.EvidenceID)
	if err != nil {
		return nil, fmt.Errorf("reopen semantic comparison: %w", err)
	}
	var comparison domain.V3SemanticComparison
	if err := decodeStrictJSON(comparisonBytes, &comparison, "V3 semantic comparison artifact"); err != nil {
		return nil, err
	}
	if !sameV3JSONValue(comparison, review.SemanticComparison) {
		return nil, errors.New("semantic-comparison artifact contents do not match the typed assessment record")
	}

	// Reviewer IDs and the human-review booleans in the current typed V3
	// payload are assertions, not authenticated identities or signed review
	// receipts. Keep every would-be V3 pass blocked until that receipt type is
	// implemented and consumed here.
	probeExecutionHolds := []string{"semantic reviewer identity is unauthenticated; no authenticated human-review receipt exists"}
	for _, probe := range review.BoundaryProbes {
		probeBytes, err := readEvidence(probe.EvidenceID)
		if err != nil {
			return nil, fmt.Errorf("reopen boundary probe %q: %w", probe.EvidenceID, err)
		}
		var artifact v3BoundaryProbeEvidenceArtifact
		if err := decodeStrictJSON(probeBytes, &artifact, "V3 boundary probe artifact"); err != nil {
			return nil, err
		}
		if artifact.SchemaVersion != v3ProbeEvidenceSchemaVersion || !sameV3JSONValue(artifact.Probe, probe) {
			return nil, fmt.Errorf("boundary-probe artifact %q does not match its typed V3 record", probe.EvidenceID)
		}
		if probe.Outcome == domain.V3BoundaryConsistent {
			probeExecutionHolds = append(probeExecutionHolds, fmt.Sprintf("%s lacks an execution-bound Lean receipt for the exact source/Lean instances", probe.EvidenceID))
		}
	}
	return probeExecutionHolds, nil
}

func v3CatalogProblem(snapshot catalog.Snapshot, problemID string) (catalog.Problem, bool) {
	for _, problem := range snapshot.Problems {
		if problem.ID == problemID {
			return problem, true
		}
	}
	return catalog.Problem{}, false
}

func inspectV3EvidenceRoot(root string) (string, error) {
	if strings.TrimSpace(root) == "" {
		return "", errors.New("V3 evidence root is required")
	}
	absolute, err := filepath.Abs(root)
	if err != nil {
		return "", fmt.Errorf("resolve V3 evidence root: %w", err)
	}
	info, err := os.Lstat(absolute)
	if err != nil {
		return "", fmt.Errorf("inspect V3 evidence root: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.IsDir() {
		return "", errors.New("V3 evidence root must be a regular non-symlink directory")
	}
	return absolute, nil
}

func validateEvidenceID(id string) error {
	return state.ValidateIdentifier("V3 evidence ID", id)
}

func reopenPinnedLeanSource(root, locator, revision string) ([]byte, error) {
	absoluteRoot, err := filepath.Abs(root)
	if err != nil {
		return nil, fmt.Errorf("resolve Lean source root: %w", err)
	}
	rootInfo, err := os.Lstat(absoluteRoot)
	if err != nil {
		return nil, fmt.Errorf("inspect Lean source root: %w", err)
	}
	if rootInfo.Mode()&os.ModeSymlink != 0 || !rootInfo.IsDir() {
		return nil, errors.New("Lean source root must be a regular non-symlink directory")
	}
	if filepath.IsAbs(locator) || filepath.VolumeName(locator) != "" || strings.ContainsAny(locator, "\x00\r\n") {
		return nil, errors.New("V3 Lean file locator must be a safe relative path")
	}
	for _, part := range strings.FieldsFunc(locator, func(value rune) bool { return value == '/' || value == '\\' }) {
		if part == ".." || part == "." {
			return nil, errors.New("V3 Lean file locator must use a canonical in-root path")
		}
	}
	clean := filepath.Clean(locator)
	if clean == "." || clean == ".." || strings.HasPrefix(clean, ".."+string(filepath.Separator)) {
		return nil, errors.New("V3 Lean file locator escapes the source root")
	}
	path := filepath.Join(absoluteRoot, clean)
	relative, err := filepath.Rel(absoluteRoot, path)
	if err != nil || relative == ".." || strings.HasPrefix(relative, ".."+string(filepath.Separator)) {
		return nil, errors.New("V3 Lean file locator escapes the source root")
	}
	current := absoluteRoot
	parts := strings.Split(clean, string(filepath.Separator))
	for index, part := range parts {
		current = filepath.Join(current, part)
		info, err := os.Lstat(current)
		if err != nil {
			return nil, fmt.Errorf("inspect pinned Lean path: %w", err)
		}
		if info.Mode()&os.ModeSymlink != 0 {
			return nil, errors.New("pinned Lean path contains a symbolic link")
		}
		if index < len(parts)-1 && !info.IsDir() {
			return nil, errors.New("pinned Lean path has a non-directory parent")
		}
	}
	data, err := readRegularInput(path, "pinned Lean source", 32<<20)
	if err != nil {
		return nil, err
	}
	head, err := exec.Command("git", "-C", absoluteRoot, "rev-parse", "--verify", "HEAD").Output()
	if err != nil || strings.TrimSpace(string(head)) != revision {
		return nil, errors.New("Lean source checkout HEAD does not match the pinned V3 revision")
	}
	tracked, err := exec.Command("git", "-C", absoluteRoot, "ls-files", "--error-unmatch", "--", filepath.ToSlash(clean)).Output()
	if err != nil || strings.TrimSpace(string(tracked)) == "" {
		return nil, errors.New("pinned Lean source file is not tracked by the pinned Git checkout")
	}
	status, err := exec.Command("git", "-C", absoluteRoot, "status", "--porcelain=v1", "--untracked-files=no", "--", filepath.ToSlash(clean)).Output()
	if err != nil || strings.TrimSpace(string(status)) != "" {
		return nil, errors.New("pinned Lean source file differs from its recorded Git revision")
	}
	return data, nil
}

func sameStringMembership(left, right []string) bool {
	if len(left) != len(right) {
		return false
	}
	seen := make(map[string]struct{}, len(left))
	for _, value := range left {
		if _, duplicate := seen[value]; duplicate {
			return false
		}
		seen[value] = struct{}{}
	}
	for _, value := range right {
		if _, exists := seen[value]; !exists {
			return false
		}
	}
	return true
}

func containsV3String(values []string, target string) bool {
	for _, value := range values {
		if value == target {
			return true
		}
	}
	return false
}

func leanDeclarationMatches(source []byte, declarationName, normalizedStatement string) bool {
	return gateaudit.LeanDeclarationMatches(source, declarationName, normalizedStatement)
}

func sameV3JSONValue(left, right any) bool {
	leftBytes, leftErr := json.Marshal(left)
	rightBytes, rightErr := json.Marshal(right)
	return leftErr == nil && rightErr == nil && reflect.DeepEqual(leftBytes, rightBytes)
}
