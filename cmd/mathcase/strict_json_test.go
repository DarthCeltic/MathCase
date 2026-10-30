package main

import (
	"encoding/json"
	"strings"
	"testing"
)

func TestDecodeStrictJSONRejectsDuplicateKeys(t *testing.T) {
	tests := []struct {
		name string
		data string
	}{
		{
			name: "top-level keys",
			data: `{"id":"first","id":"second"}`,
		},
		{
			name: "nested object",
			data: `{"outer":{"value":1,"value":2}}`,
		},
		{
			name: "object inside array",
			data: `{"items":[{"value":1,"value":2}]}`,
		},
		{
			name: "equivalent escaped key",
			data: `{"key":1,"\u006bey":2}`,
		},
	}

	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			var target map[string]any
			err := decodeStrictJSON([]byte(test.data), &target, "test")
			if err == nil || !strings.Contains(err.Error(), "duplicate object key") {
				t.Fatalf("decodeStrictJSON() error = %v, want duplicate-key refusal", err)
			}
		})
	}
}

func TestDecodeStrictJSONKeepsUnknownFieldAndTrailingDocumentRefusal(t *testing.T) {
	target := struct {
		ID string `json:"id"`
	}{}
	for _, input := range []string{
		`{"id":"one","unexpected":true}`,
		`{"id":"one"}{}`,
	} {
		if err := decodeStrictJSON([]byte(input), &target, "test"); err == nil {
			t.Errorf("decodeStrictJSON(%q) = nil, want strict refusal", input)
		}
	}
}

func TestDecodeStrictJSONRejectsExcessiveNesting(t *testing.T) {
	data := strings.Repeat("[", maxStrictJSONNesting+2) + "0" + strings.Repeat("]", maxStrictJSONNesting+2)
	var target json.RawMessage
	err := decodeStrictJSON([]byte(data), &target, "test")
	if err == nil || !strings.Contains(err.Error(), "nesting exceeds maximum depth") {
		t.Fatalf("decodeStrictJSON() error = %v, want bounded nesting refusal", err)
	}
}
