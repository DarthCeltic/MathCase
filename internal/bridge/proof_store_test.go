package bridge

import (
	"bytes"
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestLocalProofStoreReadsProofByRelativePath(t *testing.T) {
	root := t.TempDir()
	proofDir := filepath.Join(root, "proofs")
	if err := os.Mkdir(proofDir, 0o700); err != nil {
		t.Fatal(err)
	}
	want := []byte("theorem example : True := by trivial\n")
	if err := os.WriteFile(filepath.Join(proofDir, "example.lean"), want, 0o600); err != nil {
		t.Fatal(err)
	}
	store, err := NewLocalProofStore(root)
	if err != nil {
		t.Fatalf("NewLocalProofStore() error = %v", err)
	}
	got, err := store.ReadProof("proofs/example.lean")
	if err != nil {
		t.Fatalf("ReadProof() error = %v", err)
	}
	if !bytes.Equal(got, want) {
		t.Fatalf("ReadProof() = %q, want %q", got, want)
	}
}

func TestLocalProofStoreRejectsInvalidReferences(t *testing.T) {
	store, err := NewLocalProofStore(t.TempDir())
	if err != nil {
		t.Fatal(err)
	}
	for _, reference := range []string{"", "../outside.lean", "proofs/../outside.lean", "/outside.lean", `C:\outside.lean`, "proofs\\outside.lean", "proofs//empty.lean", "proofs/./same.lean"} {
		t.Run(reference, func(t *testing.T) {
			if _, err := store.ReadProof(reference); err == nil {
				t.Fatalf("ReadProof(%q) unexpectedly succeeded", reference)
			}
		})
	}
}

func TestLocalProofStoreRejectsSymlinkAndNonRegularObjects(t *testing.T) {
	root := t.TempDir()
	proofDir := filepath.Join(root, "proofs")
	if err := os.Mkdir(proofDir, 0o700); err != nil {
		t.Fatal(err)
	}
	outside := filepath.Join(t.TempDir(), "outside.lean")
	if err := os.WriteFile(outside, []byte("outside"), 0o600); err != nil {
		t.Fatal(err)
	}
	link := filepath.Join(proofDir, "link.lean")
	if err := os.Symlink(outside, link); err != nil {
		t.Skipf("symbolic links are unavailable: %v", err)
	}
	store, err := NewLocalProofStore(root)
	if err != nil {
		t.Fatal(err)
	}
	if _, err := store.ReadProof("proofs/link.lean"); err == nil || !strings.Contains(err.Error(), "symbolic link") {
		t.Fatalf("symlinked proof error = %v, want a symbolic-link refusal", err)
	}
	if _, err := store.ReadProof("proofs"); err == nil || !strings.Contains(err.Error(), "regular file") {
		t.Fatalf("directory proof error = %v, want a non-regular-file refusal", err)
	}
}

func TestLocalProofStoreRejectsOversizedProof(t *testing.T) {
	root := t.TempDir()
	content := bytes.Repeat([]byte("x"), MaxProofBytes+1)
	if err := os.WriteFile(filepath.Join(root, "large.lean"), content, 0o600); err != nil {
		t.Fatal(err)
	}
	store, err := NewLocalProofStore(root)
	if err != nil {
		t.Fatal(err)
	}
	if _, err := store.ReadProof("large.lean"); err == nil || !strings.Contains(err.Error(), "regular file") {
		t.Fatalf("oversized proof error = %v, want a size refusal", err)
	}
}
