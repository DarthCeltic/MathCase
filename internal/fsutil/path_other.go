//go:build !windows

package fsutil

func canonicalPlatformPath(path string) (string, error) {
	return path, nil
}
