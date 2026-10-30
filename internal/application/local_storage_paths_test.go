package application

import (
	"path/filepath"
	"testing"
)

func TestResolveLocalStoragePathAnchorsRelativePathAtRepositoryRoot(t *testing.T) {
	repositoryRoot := t.TempDir()
	configuredPath := filepath.Join("data", "local", "receipts")

	got, err := resolveLocalStoragePath(repositoryRoot, configuredPath, "receipt")
	if err != nil {
		t.Fatal(err)
	}
	want, err := filepath.Abs(filepath.Join(repositoryRoot, configuredPath))
	if err != nil {
		t.Fatal(err)
	}
	if got != want {
		t.Fatalf("resolveLocalStoragePath() = %q, want %q", got, want)
	}
}

func TestResolveLocalStoragePathRejectsUNCRoots(t *testing.T) {
	for _, configuredPath := range []string{`\\server\share\receipts`, "//server/share/receipts"} {
		t.Run(configuredPath, func(t *testing.T) {
			if got, err := resolveLocalStoragePath(t.TempDir(), configuredPath, "receipt"); err == nil {
				t.Fatalf("resolveLocalStoragePath() = %q, want a local-filesystem error", got)
			}
		})
	}
}

func TestResolveLocalStoragePathRequiresConfiguredPath(t *testing.T) {
	if got, err := resolveLocalStoragePath(t.TempDir(), "  ", "receipt"); err == nil {
		t.Fatalf("resolveLocalStoragePath() = %q, want a required-path error", got)
	}
}
