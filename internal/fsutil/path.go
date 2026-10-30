// Package fsutil provides filesystem path identity helpers shared by the
// evidence stores and replay readers.
package fsutil

import (
	"errors"
	"fmt"
	"os"
	"path/filepath"
	"strings"
)

// CanonicalPath resolves existing symlinks, expands platform-specific aliases,
// and preserves any not-yet-created suffix below the nearest existing parent.
func CanonicalPath(path string) (string, error) {
	if strings.TrimSpace(path) == "" {
		return "", errors.New("filesystem path is required")
	}
	abs, err := filepath.Abs(filepath.Clean(path))
	if err != nil {
		return "", fmt.Errorf("resolve absolute path: %w", err)
	}
	current := abs
	missing := make([]string, 0, 4)
	for {
		resolved, resolveErr := filepath.EvalSymlinks(current)
		if resolveErr == nil {
			canonical, canonicalErr := canonicalPlatformPath(resolved)
			if canonicalErr != nil {
				return "", fmt.Errorf("canonicalize filesystem path: %w", canonicalErr)
			}
			for index := len(missing) - 1; index >= 0; index-- {
				canonical = filepath.Join(canonical, missing[index])
			}
			return filepath.Clean(canonical), nil
		}
		if !errors.Is(resolveErr, os.ErrNotExist) {
			return "", fmt.Errorf("resolve filesystem path: %w", resolveErr)
		}
		parent := filepath.Dir(current)
		if parent == current {
			return "", fmt.Errorf("resolve filesystem path: %w", resolveErr)
		}
		missing = append(missing, filepath.Base(current))
		current = parent
	}
}

// PathHasLinkComponent reports whether any existing path component is a
// symlink or reparse-point name surrogate. A not-yet-created suffix is allowed
// after all existing components have been checked.
func PathHasLinkComponent(path string) (bool, error) {
	abs, err := filepath.Abs(filepath.Clean(path))
	if err != nil {
		return false, fmt.Errorf("resolve absolute path: %w", err)
	}
	volume := filepath.VolumeName(abs)
	current := volume + string(filepath.Separator)
	remainder := strings.TrimLeft(strings.TrimPrefix(abs, volume), `/\\`)
	if volume == "" {
		current = string(filepath.Separator)
	}
	check := func(path string) (bool, error) {
		info, statErr := os.Lstat(path)
		if errors.Is(statErr, os.ErrNotExist) {
			return false, nil
		}
		if statErr != nil {
			return false, statErr
		}
		return info.Mode()&os.ModeSymlink != 0, nil
	}
	if hasLink, statErr := check(current); statErr != nil || hasLink {
		return hasLink, statErr
	}
	for _, component := range strings.FieldsFunc(remainder, func(r rune) bool { return r == '/' || r == '\\' }) {
		current = filepath.Join(current, component)
		hasLink, statErr := check(current)
		if statErr != nil {
			return false, statErr
		}
		if hasLink {
			return true, nil
		}
	}
	return false, nil
}

// IsWithin reports whether candidate resolves to root or a descendant of it.
func IsWithin(root, candidate string) bool {
	canonicalRoot, err := CanonicalPath(root)
	if err != nil {
		return false
	}
	canonicalCandidate, err := CanonicalPath(candidate)
	if err != nil {
		return false
	}
	hasLink, err := PathHasLinkComponent(canonicalCandidate)
	if err != nil || hasLink {
		return false
	}
	relative, err := filepath.Rel(canonicalRoot, canonicalCandidate)
	if err != nil || filepath.IsAbs(relative) || relative == ".." {
		return false
	}
	return !strings.HasPrefix(relative, ".."+string(filepath.Separator))
}
