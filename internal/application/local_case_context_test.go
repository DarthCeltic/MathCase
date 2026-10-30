package application

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func writeLocalContextFixture(t *testing.T, root string, rights string) string {
	t.Helper()
	sourcePath := filepath.Join(root, "source.lean")
	source := []byte("namespace Demo\ntheorem replay : True := by trivial\nend Demo\n")
	if err := os.WriteFile(sourcePath, source, 0o600); err != nil {
		t.Fatal(err)
	}
	sourceHash := sha256.Sum256(source)
	preflightPath := filepath.Join(root, "preflight.json")
	preflight := []byte(`{"schema_version":"mathcase-lean-import-cache-preflight-v1","status":"PRECHECK_OK_TEST","requested_imports":["Demo"],"cache_identity_sha256":"` + string(makeHash('a')) + `","transitive_module_count":1}`)
	if err := os.WriteFile(preflightPath, preflight, 0o600); err != nil {
		t.Fatal(err)
	}
	preflightHash := sha256.Sum256(preflight)
	context := map[string]any{
		"schema_version": "mathcase-provider-prompt-context-v2",
		"case_identity":  map[string]any{"problem_id": "test-problem"},
		"problem":        map[string]any{"lean_statement": "theorem target : True"},
		"source_binding": map[string]any{
			"exact_campaign_question":         "A trivial truth.",
			"source_declaration":              "Demo.replay",
			"source_path":                     "source.lean",
			"source_sha256":                   hex.EncodeToString(sourceHash[:]),
			"source_line":                     2,
			"source_module":                   "Demo",
			"import_cache_identity_sha256":    string(makeHash('a')),
			"allowed_uses":                    []string{"LOCAL_PROOF_ATTEMPT", "LOCAL_STORAGE"},
			"rights_status":                   rights,
			"known_proof_available":           true,
			"saved_proof_supplied_to_search":  false,
			"theorem_body_supplied_to_solver": false,
			"proof_body_supplied_to_solver":   false,
		},
		"source_declarations": []any{map[string]any{
			"kind": "THEOREM_SIGNATURE", "name": "Demo.replay", "signature": "theorem replay : True", "proof_body_included": false,
		}},
		"lean_environment": map[string]any{
			"imports": []string{"Demo"},
			"source_binding_import_cache_identity_sha256": string(makeHash('a')),
			"case_local_import_preflight": map[string]any{
				"status": "PRECHECK_OK_TEST", "requested_imports": []string{"Demo"},
				"cache_identity_sha256": string(makeHash('a')), "evidence_path": "preflight.json",
				"evidence_sha256": hex.EncodeToString(preflightHash[:]),
			},
		},
		"source_artifacts": []any{
			map[string]any{"role": "pinned_source_declarations", "path": "source.lean", "sha256": hex.EncodeToString(sourceHash[:])},
			map[string]any{"role": "case_import_preflight", "path": "preflight.json", "sha256": hex.EncodeToString(preflightHash[:])},
		},
	}
	encoded, err := json.Marshal(context)
	if err != nil {
		t.Fatal(err)
	}
	contextPath := filepath.Join(root, "case-context.json")
	if err := os.WriteFile(contextPath, encoded, 0o600); err != nil {
		t.Fatal(err)
	}
	return contextPath
}

func makeHash(value byte) []byte {
	return []byte(strings.Repeat(string(value), 64))
}

func TestLoadValidatedLocalCaseContextHintsBindsExactSourceAndCache(t *testing.T) {
	root := t.TempDir()
	contextPath := writeLocalContextFixture(t, root, "LOCAL_ONLY; NO_PROVIDER_INPUT, TRAINING, OR PUBLIC_EXPORT")
	problem := domain.MathProblem{ID: "test-problem", Statement: "A trivial truth.", LeanStatement: "theorem target : True"}
	hints, digest, err := LoadValidatedLocalCaseContextHints(root, contextPath, problem)
	if err != nil {
		t.Fatalf("LoadValidatedLocalCaseContextHints() error = %v", err)
	}
	if len(hints) != 1 || hints[0] != "Demo.replay" || len(digest) != 64 {
		t.Fatalf("validated context hints = %v, digest = %q", hints, digest)
	}
}

func TestLoadValidatedLocalCaseContextHintsRefusesExternalRights(t *testing.T) {
	root := t.TempDir()
	contextPath := writeLocalContextFixture(t, root, "LOCAL_ONLY; PROVIDER_INPUT_ALLOWED")
	problem := domain.MathProblem{ID: "test-problem", Statement: "A trivial truth.", LeanStatement: "theorem target : True"}
	if _, _, err := LoadValidatedLocalCaseContextHints(root, contextPath, problem); err == nil {
		t.Fatal("LoadValidatedLocalCaseContextHints() accepted a context without external-use holds")
	}
}

func TestLoadValidatedLocalCaseContextHintsRefusesStatementMismatch(t *testing.T) {
	root := t.TempDir()
	contextPath := writeLocalContextFixture(t, root, "LOCAL_ONLY; NO_PROVIDER_INPUT, TRAINING, OR PUBLIC_EXPORT")
	problem := domain.MathProblem{ID: "test-problem", Statement: "A different question.", LeanStatement: "theorem target : True"}
	if _, _, err := LoadValidatedLocalCaseContextHints(root, contextPath, problem); err == nil {
		t.Fatal("LoadValidatedLocalCaseContextHints() accepted a different informal target")
	}
}
