package persistence

import (
	"context"
	"os"
	"path/filepath"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func minimalDossier() domain.Dossier {
	now := time.Date(2026, time.October, 19, 12, 0, 0, 0, time.UTC)
	return domain.Dossier{
		SchemaVersion: domain.DossierSchemaVersion,
		Case:          domain.Case{ID: "case-local", Question: "A local test case", CreatedAt: now, UpdatedAt: now},
		Problem:       domain.MathProblem{ID: "problem-local", Statement: "A test statement."},
	}
}

func TestDossierStoreRoundTripsImmutableContent(t *testing.T) {
	store, err := NewDossierStore(filepath.Join(t.TempDir(), "store"))
	if err != nil {
		t.Fatal(err)
	}
	ctx := context.Background()
	dossier := minimalDossier()
	first, err := store.Put(ctx, dossier)
	if err != nil {
		t.Fatal(err)
	}
	second, err := store.Put(ctx, dossier)
	if err != nil {
		t.Fatal(err)
	}
	if first.ContentSHA256 != second.ContentSHA256 || first.RelativePath != second.RelativePath {
		t.Fatalf("identical dossier writes did not deduplicate: %#v != %#v", first, second)
	}
	loaded, err := store.Get(ctx, first.CaseID, first.ContentSHA256)
	if err != nil {
		t.Fatal(err)
	}
	if loaded.Case.ID != dossier.Case.ID || loaded.Problem.Statement != dossier.Problem.Statement {
		t.Fatalf("round trip changed dossier: %#v", loaded)
	}
	dossier.Problem.Title = "A later correction"
	third, err := store.Put(ctx, dossier)
	if err != nil {
		t.Fatal(err)
	}
	if third.ContentSHA256 == first.ContentSHA256 {
		t.Fatal("changed dossier content reused an old content address")
	}
}

func TestDossierStoreRejectsTamperedSnapshotAndUntrustedPathIDs(t *testing.T) {
	root := filepath.Join(t.TempDir(), "store")
	store, err := NewDossierStore(root)
	if err != nil {
		t.Fatal(err)
	}
	receipt, err := store.Put(context.Background(), minimalDossier())
	if err != nil {
		t.Fatal(err)
	}
	path := filepath.Join(root, filepath.FromSlash(receipt.RelativePath))
	if err := os.WriteFile(path, []byte("tampered"), 0o600); err != nil {
		t.Fatal(err)
	}
	if _, err := store.Get(context.Background(), receipt.CaseID, receipt.ContentSHA256); err == nil {
		t.Fatal("tampered dossier snapshot was accepted")
	}
	if _, err := store.Get(context.Background(), "../outside", receipt.ContentSHA256); err == nil {
		t.Fatal("path-like case ID was accepted")
	}
}

func TestDossierStoreHonorsCancelledContext(t *testing.T) {
	store, err := NewDossierStore(filepath.Join(t.TempDir(), "store"))
	if err != nil {
		t.Fatal(err)
	}
	ctx, cancel := context.WithCancel(context.Background())
	cancel()
	if _, err := store.Put(ctx, minimalDossier()); err == nil {
		t.Fatal("cancelled write was accepted")
	}
}
