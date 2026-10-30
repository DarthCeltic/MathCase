package application

import (
	"fmt"
	"path/filepath"
	"strings"
)

// resolveLocalStoragePath resolves relative runtime storage paths from the
// MathCase repository root and refuses network locations for local evidence.
func resolveLocalStoragePath(repositoryRoot, configuredPath, purpose string) (string, error) {
	path := strings.TrimSpace(configuredPath)
	if path == "" {
		return "", fmt.Errorf("application: %s path is required", purpose)
	}
	if !filepath.IsAbs(path) {
		path = filepath.Join(repositoryRoot, path)
	}
	absolute, err := filepath.Abs(path)
	if err != nil {
		return "", fmt.Errorf("application: resolve %s path: %w", purpose, err)
	}
	volume := filepath.VolumeName(absolute)
	if strings.HasPrefix(absolute, `\\`) || strings.HasPrefix(absolute, "//") || strings.HasPrefix(volume, `\\`) {
		return "", fmt.Errorf("application: %s path must use a local filesystem", purpose)
	}
	return absolute, nil
}
