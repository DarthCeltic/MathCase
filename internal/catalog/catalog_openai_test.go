package catalog

import (
	"strings"
	"testing"
	"time"
)

func openAIMathReferenceSource() SourceVersion {
	source := clearedSource("openai-math-source", "https://github.com/openai/math", "1581d4cbdd69a0faf34b2089614fe2a814316a6a", strings.Repeat("a", 64),
		UseLocalStorage, UseReference, UseIndex, UseProviderInput)
	source.Lane = LaneOpenAIMathReference
	return source
}

func TestOpenAIMathReferenceSourcesOnlySnapshot(t *testing.T) {
	source := openAIMathReferenceSource()
	now := time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
	snapshot, err := NewSnapshot(now, []SourceVersion{source}, nil)
	if err != nil {
		t.Fatalf("NewSnapshot() error = %v, want valid reference inventory", err)
	}
	if err := snapshot.Validate(); err != nil {
		t.Fatalf("Snapshot.Validate() error = %v", err)
	}
	if len(snapshot.Problems) != 0 {
		t.Fatalf("reference inventory contains %d problem records, want none", len(snapshot.Problems))
	}
	for _, use := range []SourceUse{UseLocalStorage, UseReference, UseIndex, UseProviderInput} {
		if !snapshot.Sources[0].EligibleFor(use) {
			t.Errorf("reference source not eligible for explicitly cleared use %q", use)
		}
	}
	for _, use := range []SourceUse{UseTraining, UseDerivative, UsePublicExport} {
		if snapshot.Sources[0].EligibleFor(use) {
			t.Errorf("reference source eligible for unapproved use %q", use)
		}
	}
	if snapshot.Sources[0].EligibleForModelUse() {
		t.Error("reference source is eligible for training")
	}
}

func TestOpenAIMathReferenceScopeIsEnforced(t *testing.T) {
	tests := []struct {
		name   string
		mutate func(*SourceVersion)
		want   string
	}{
		{
			name:   "different license",
			mutate: func(source *SourceVersion) { source.License = "MIT" },
			want:   "require the reviewed Apache-2.0 license",
		},
		{
			name: "training",
			mutate: func(source *SourceVersion) {
				source.AllowedUses = append(source.AllowedUses, UseTraining)
			},
			want: "training is outside the approved initial Taste lanes",
		},
		{
			name: "public export",
			mutate: func(source *SourceVersion) {
				source.AllowedUses = append(source.AllowedUses, UsePublicExport)
			},
			want: "OpenAI math reference corpus public export is not approved",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			source := openAIMathReferenceSource()
			tt.mutate(&source)
			if err := source.Validate(); err == nil || !strings.Contains(err.Error(), tt.want) {
				t.Fatalf("SourceVersion.Validate() error = %v, want %q", err, tt.want)
			}
			if source.EligibleFor(UseReference) {
				t.Error("invalid source scope remains eligible for reference use")
			}
		})
	}
}

func TestOpenAIMathReferenceProviderInputRequiresExplicitPermission(t *testing.T) {
	source := openAIMathReferenceSource()
	source.AllowedUses = []SourceUse{UseLocalStorage, UseReference, UseIndex}
	if err := source.Validate(); err != nil {
		t.Fatalf("SourceVersion.Validate() error = %v", err)
	}
	if source.EligibleFor(UseProviderInput) {
		t.Error("reference and index permission implicitly granted provider input")
	}
}
