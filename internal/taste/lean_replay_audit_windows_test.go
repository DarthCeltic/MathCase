//go:build windows

package taste

import (
	"os"
	"path/filepath"
	"strings"
	"syscall"
	"testing"
)

func TestReadRunnerFileAcceptsWindowsShortPathAlias(t *testing.T) {
	root := t.TempDir()
	filePath := filepath.Join(root, "runner.py")
	if err := os.WriteFile(filePath, []byte("runner\n"), 0o600); err != nil {
		t.Fatal(err)
	}
	filePointer, err := syscall.UTF16PtrFromString(filePath)
	if err != nil {
		t.Fatal(err)
	}
	buffer := make([]uint16, 32768)
	length, err := syscall.GetShortPathName(filePointer, &buffer[0], uint32(len(buffer)))
	if err != nil || length == 0 || length >= uint32(len(buffer)) {
		t.Skipf("Windows short-path alias is unavailable: length=%d err=%v", length, err)
	}
	shortPath := syscall.UTF16ToString(buffer[:length])
	if strings.EqualFold(filepath.Clean(filePath), filepath.Clean(shortPath)) {
		t.Skip("the filesystem did not produce a short-path alias")
	}
	canonicalRoot, err := canonicalRunnerRoot(root)
	if err != nil {
		t.Fatalf("canonicalRunnerRoot() error = %v", err)
	}
	data, resolved, err := readRunnerFile(canonicalRoot, shortPath, true, 1024)
	if err != nil || string(data) != "runner\n" || !pathWithin(canonicalRoot, resolved) {
		t.Fatalf("readRunnerFile(short alias) = %q, %q, %v; want the in-root runner bytes", data, resolved, err)
	}
}
