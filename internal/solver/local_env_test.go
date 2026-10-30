package solver

import (
	"reflect"
	"testing"
)

func TestLocalToolEnvironmentKeepsOnlyRequiredOperatingSystemSettings(t *testing.T) {
	input := []string{
		"PATH=C:\\Windows\\System32",
		"SystemRoot=C:\\Windows",
		"TEMP=C:\\Temp",
		"OPENAI_API_KEY=dummy",
		"HF_TOKEN=dummy",
		"PYTHONPATH=C:\\untrusted\\imports",
		"MALFORMED_ENTRY",
	}
	want := []string{
		"PATH=C:\\Windows\\System32",
		"SystemRoot=C:\\Windows",
		"TEMP=C:\\Temp",
	}
	if got := localToolEnvironment(input); !reflect.DeepEqual(got, want) {
		t.Errorf("localToolEnvironment(%v) = %v, want %v", input, got, want)
	}
}
