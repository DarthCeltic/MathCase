package main

import (
	"bytes"
	"strings"
	"testing"
)

func TestFormalizerRunRequiresExplicitDispatchBeforeReadingInputs(t *testing.T) {
	var stdout, stderr bytes.Buffer
	code := runFormalizerRun([]string{"--request", "must-not-be-read.json"}, &stdout, &stderr)
	if code != 2 || stdout.Len() != 0 || !strings.Contains(stderr.String(), "explicit --dispatch") {
		t.Fatalf("runFormalizerRun() = (%d, %q, %q), want explicit-dispatch refusal before input access", code, stdout.String(), stderr.String())
	}
}
