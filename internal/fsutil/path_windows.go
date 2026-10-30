//go:build windows

package fsutil

import (
	"fmt"
	"syscall"
)

func canonicalPlatformPath(path string) (string, error) {
	pathPointer, err := syscall.UTF16PtrFromString(path)
	if err != nil {
		return "", err
	}
	buffer := make([]uint16, 32768)
	length, err := syscall.GetLongPathName(pathPointer, &buffer[0], uint32(len(buffer)))
	if err != nil {
		return "", fmt.Errorf("expand Windows short path: %w", err)
	}
	if length == 0 || length >= uint32(len(buffer)) {
		return "", fmt.Errorf("expand Windows short path: invalid returned length %d", length)
	}
	return syscall.UTF16ToString(buffer[:length]), nil
}
