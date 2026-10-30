package fsutil

import (
	"os"
	"path/filepath"
	"testing"
)

func TestCanonicalPathPreservesMissingSuffixAndContainment(t *testing.T) {
	root := filepath.Join(t.TempDir(), "root")
	if err := os.MkdirAll(filepath.Join(root, "present"), 0o700); err != nil {
		t.Fatal(err)
	}
	canonicalRoot, err := CanonicalPath(root)
	if err != nil {
		t.Fatalf("CanonicalPath(root) error = %v", err)
	}
	want := filepath.Join(canonicalRoot, "present", "future", "artifact.json")
	got, err := CanonicalPath(want)
	if err != nil {
		t.Fatalf("CanonicalPath(missing suffix) error = %v", err)
	}
	if got != want {
		t.Fatalf("CanonicalPath(missing suffix) = %q, want %q", got, want)
	}
	if !IsWithin(root, want) {
		t.Fatal("IsWithin rejected a not-yet-created path under the root")
	}
	if IsWithin(root, filepath.Join(root+"-sibling", "artifact.json")) {
		t.Fatal("IsWithin accepted a sibling path sharing the root prefix")
	}
}

func TestIsWithinResolvesSymlinkTarget(t *testing.T) {
	parent := t.TempDir()
	root := filepath.Join(parent, "root")
	outside := filepath.Join(parent, "outside")
	if err := os.MkdirAll(root, 0o700); err != nil {
		t.Fatal(err)
	}
	if err := os.MkdirAll(outside, 0o700); err != nil {
		t.Fatal(err)
	}
	link := filepath.Join(root, "outside-link")
	if err := os.Symlink(outside, link); err != nil {
		t.Skipf("symlink creation unavailable on this host: %v", err)
	}
	if IsWithin(root, link) {
		t.Fatal("IsWithin accepted a symlink whose target escapes the root")
	}
}
