package main

import (
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestQueueSolveProblemMustMatchTheIntakeDossierExactly(t *testing.T) {
	dossier := domain.MathProblem{
		ID: "queue-problem", Title: "A test problem", Statement: "n equals n",
		LeanStatement: "n = n", SourceIDs: []string{"source-a", "source-b"}, M0Status: "PROVEN",
	}
	if !queueSolveProblemMatchesDossier(dossier, dossier) {
		t.Fatal("identical frozen solver problem and intake dossier did not match")
	}
	changed := dossier
	changed.Statement = "n is not n"
	if queueSolveProblemMatchesDossier(changed, dossier) {
		t.Fatal("changed statement matched the intake dossier")
	}
	changed = dossier
	changed.SourceIDs = []string{"source-b", "source-a"}
	if queueSolveProblemMatchesDossier(changed, dossier) {
		t.Fatal("reordered source bindings matched the intake dossier")
	}
}

func TestQueueFirstProofPermissionRequiresReviewedStatementAndExactM0Uses(t *testing.T) {
	now := time.Date(2026, time.October, 25, 12, 0, 0, 0, time.UTC)
	snapshot := catalog.Snapshot{
		Problems: []catalog.Problem{{ID: "queue-problem", SourceIDs: []string{"source-a"}, StatementAudit: catalog.StatementAuditRecord{Passed: true}}},
		Sources: []catalog.SourceVersion{{
			ID: "source-a", URL: "https://example.invalid/source-a", ItemLocator: "Mathlib/Test.lean",
			Lane: catalog.LaneMathlibProofPairs, Revision: "test-revision", RetrievedAt: now,
			ContentSHA256: strings.Repeat("a", 64), AuthorOrHolder: "Synthetic test rights holder",
			License: "Apache-2.0", LicenseTermsURL: "https://www.apache.org/licenses/LICENSE-2.0",
			TermsNote: "Synthetic test fixture only.", Attribution: "Synthetic test fixture.",
			RightsReviewerID: "synthetic-reviewer", RightsReviewedAt: now, RightsEvidenceID: "synthetic-rights",
			Rights: catalog.RightsCleared, AllowedUses: []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseLocalProofAttempt},
		}},
	}
	if err := validateQueueFirstProofPermission(snapshot, "queue-problem"); err != nil {
		t.Fatalf("valid exact local permission rejected: %v", err)
	}
	withoutProofUse := snapshot
	withoutProofUse.Sources = []catalog.SourceVersion{{ID: "source-a", Rights: catalog.RightsCleared, AllowedUses: []catalog.SourceUse{catalog.UseLocalStorage}}}
	if err := validateQueueFirstProofPermission(withoutProofUse, "queue-problem"); err == nil || !strings.Contains(err.Error(), "not cleared") {
		t.Fatalf("missing local proof permission error = %v", err)
	}
	withoutReview := snapshot
	withoutReview.Problems = []catalog.Problem{{ID: "queue-problem", SourceIDs: []string{"source-a"}}}
	if err := validateQueueFirstProofPermission(withoutReview, "queue-problem"); err == nil || !strings.Contains(err.Error(), "statement review") {
		t.Fatalf("missing statement review error = %v", err)
	}
}

func TestQueueDossierReceiptDirectoryMustBeRealAndCreationIsExplicit(t *testing.T) {
	root := t.TempDir()
	missing := filepath.Join(root, "receipts")
	if err := ensureQueueDossierReceiptDirectory(missing, false); err == nil {
		t.Fatal("missing receipt directory was accepted during idempotent recovery")
	}
	if err := ensureQueueDossierReceiptDirectory(missing, true); err != nil {
		t.Fatalf("explicit receipt-directory creation failed: %v", err)
	}
	info, err := os.Lstat(missing)
	if err != nil || !info.IsDir() || info.Mode()&os.ModeSymlink != 0 {
		t.Fatalf("created receipt path is not a real directory: info=%v err=%v", info, err)
	}
	filePath := filepath.Join(root, "not-a-directory")
	if err := os.WriteFile(filePath, []byte("fixture"), 0o600); err != nil {
		t.Fatal(err)
	}
	if err := ensureQueueDossierReceiptDirectory(filePath, true); err == nil || !strings.Contains(err.Error(), "real directory") {
		t.Fatalf("regular file was accepted as receipt directory: %v", err)
	}
}
