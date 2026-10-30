//go:build windows

package fsutil

import (
	"path/filepath"
	"strings"
	"syscall"
	"testing"
)

func TestCanonicalPathExpandsWindowsShortPathAlias(t *testing.T) {
	longPath := t.TempDir()
	longPointer, err := syscall.UTF16PtrFromString(longPath)
	if err != nil {
		t.Fatal(err)
	}
	buffer := make([]uint16, 32768)
	length, err := syscall.GetShortPathName(longPointer, &buffer[0], uint32(len(buffer)))
	if err != nil || length == 0 || length >= uint32(len(buffer)) {
		t.Skipf("Windows short-path alias is unavailable: length=%d err=%v", length, err)
	}
	shortPath := syscall.UTF16ToString(buffer[:length])
	if strings.EqualFold(filepath.Clean(longPath), filepath.Clean(shortPath)) {
		t.Skip("the filesystem did not produce a short-path alias")
	}
	longCanonical, err := CanonicalPath(longPath)
	if err != nil {
		t.Fatalf("CanonicalPath(long) error = %v", err)
	}
	shortCanonical, err := CanonicalPath(shortPath)
	if err != nil {
		t.Fatalf("CanonicalPath(short) error = %v", err)
	}
	if !strings.EqualFold(longCanonical, shortCanonical) {
		t.Fatalf("canonical paths differ: long=%q short=%q", longCanonical, shortCanonical)
	}
	missingLong, err := CanonicalPath(filepath.Join(longPath, "not-created", "artifact.json"))
	if err != nil {
		t.Fatalf("CanonicalPath(long missing suffix) error = %v", err)
	}
	missingShort, err := CanonicalPath(filepath.Join(shortPath, "not-created", "artifact.json"))
	if err != nil {
		t.Fatalf("CanonicalPath(short missing suffix) error = %v", err)
	}
	if !strings.EqualFold(missingLong, missingShort) {
		t.Fatalf("canonical missing suffix paths differ: long=%q short=%q", missingLong, missingShort)
	}
}
