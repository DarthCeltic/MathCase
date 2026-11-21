package main

import (
	"bytes"
	"os"
	"path/filepath"
	"testing"
)

func TestClassroomServeRequiresTLSOutsideLoopback(t *testing.T) {
	var stdout, stderr bytes.Buffer
	code := runClassroomServe([]string{"--listen", "0.0.0.0:55136"}, &stdout, &stderr)
	if code != 2 {
		t.Fatalf("runClassroomServe() = %d, want argument refusal; stdout=%q stderr=%q", code, stdout.String(), stderr.String())
	}
	if got := stderr.String(); got == "" || !containsText(got, "requires HTTPS") {
		t.Fatalf("refusal output = %q, want TLS explanation", got)
	}
}

func TestClassroomBootstrapTokenIsCreatedOnceAndValidated(t *testing.T) {
	path := filepath.Join(t.TempDir(), "private", "bootstrap.token")
	first, err := readOrCreateBootstrapToken(path)
	if err != nil {
		t.Fatal(err)
	}
	if len(first) != 64 {
		t.Fatalf("generated token length = %d, want 64 hex characters", len(first))
	}
	info, err := os.Stat(path)
	if err != nil {
		t.Fatal(err)
	}
	if info.Size() != 65 {
		t.Fatalf("token file size = %d, want 64 characters plus newline", info.Size())
	}
	second, err := readOrCreateBootstrapToken(path)
	if err != nil {
		t.Fatal(err)
	}
	if second != first {
		t.Fatal("existing token file was replaced")
	}
	read, err := readBootstrapToken(path)
	if err != nil || read != first {
		t.Fatalf("readBootstrapToken() = %q, %v", read, err)
	}
}

func TestLoopbackAddress(t *testing.T) {
	for _, test := range []struct {
		address string
		want    bool
	}{
		{"127.0.0.1:55136", true},
		{"[::1]:55136", true},
		{"localhost:55136", true},
		{"0.0.0.0:55136", false},
		{":55136", false},
		{"not-an-address", false},
	} {
		if got := loopbackAddress(test.address); got != test.want {
			t.Errorf("loopbackAddress(%q) = %v, want %v", test.address, got, test.want)
		}
	}
}

func containsText(value, want string) bool {
	for i := 0; i+len(want) <= len(value); i++ {
		if value[i:i+len(want)] == want {
			return true
		}
	}
	return false
}
