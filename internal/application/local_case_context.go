package application

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"path/filepath"
	"regexp"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

const maxLocalCaseContextBytes = 32 << 10

var localContextSHA256 = regexp.MustCompile(`^[0-9a-f]{64}$`)

type localCaseContext struct {
	SchemaVersion string `json:"schema_version"`
	CaseIdentity  struct {
		ProblemID string `json:"problem_id"`
	} `json:"case_identity"`
	Problem struct {
		LeanStatement string `json:"lean_statement"`
	} `json:"problem"`
	SourceBinding struct {
		ExactCampaignQuestion string   `json:"exact_campaign_question"`
		SourceDeclaration     string   `json:"source_declaration"`
		SourcePath            string   `json:"source_path"`
		SourceSHA256          string   `json:"source_sha256"`
		SourceLine            int      `json:"source_line"`
		SourceModule          string   `json:"source_module"`
		ImportCacheSHA256     string   `json:"import_cache_identity_sha256"`
		AllowedUses           []string `json:"allowed_uses"`
		RightsStatus          string   `json:"rights_status"`
		KnownProofAvailable   bool     `json:"known_proof_available"`
		SavedProofSupplied    bool     `json:"saved_proof_supplied_to_search"`
		TheoremBodySupplied   bool     `json:"theorem_body_supplied_to_solver"`
		ProofBodySupplied     bool     `json:"proof_body_supplied_to_solver"`
	} `json:"source_binding"`
	SourceDeclarations []struct {
		Kind              string `json:"kind"`
		Name              string `json:"name"`
		Signature         string `json:"signature"`
		ProofBodyIncluded bool   `json:"proof_body_included"`
	} `json:"source_declarations"`
	LeanEnvironment struct {
		Imports             []string `json:"imports"`
		CacheIdentitySHA256 string   `json:"source_binding_import_cache_identity_sha256"`
		CasePreflight       *struct {
			Status              string   `json:"status"`
			RequestedImports    []string `json:"requested_imports"`
			CacheIdentitySHA256 string   `json:"cache_identity_sha256"`
			EvidencePath        string   `json:"evidence_path"`
			EvidenceSHA256      string   `json:"evidence_sha256"`
		} `json:"case_local_import_preflight"`
	} `json:"lean_environment"`
	SourceArtifacts []struct {
		Role   string `json:"role"`
		Path   string `json:"path"`
		SHA256 string `json:"sha256"`
	} `json:"source_artifacts"`
}

// LoadValidatedLocalCaseContextHints derives local tactic-order hints from the
// automatically assembled case context only after reopening its exact target,
// rights scope, source file, and import/cache preflight evidence.
func LoadValidatedLocalCaseContextHints(repositoryRoot, contextPath string, problem domain.MathProblem) ([]string, string, error) {
	if strings.TrimSpace(repositoryRoot) == "" || strings.TrimSpace(contextPath) == "" {
		return nil, "", errors.New("application: local case context and repository root are required")
	}
	root, err := filepath.Abs(repositoryRoot)
	if err != nil {
		return nil, "", fmt.Errorf("application: resolve local case context repository: %w", err)
	}
	root, err = filepath.EvalSymlinks(root)
	if err != nil {
		return nil, "", fmt.Errorf("application: resolve local case context repository: %w", err)
	}
	path := contextPath
	if !filepath.IsAbs(path) {
		path = filepath.Join(root, path)
	}
	path, err = filepath.Abs(path)
	if err != nil {
		return nil, "", fmt.Errorf("application: resolve local case context path: %w", err)
	}
	resolved, err := filepath.EvalSymlinks(path)
	if err != nil {
		return nil, "", fmt.Errorf("application: resolve local case context path: %w", err)
	}
	relative, err := filepath.Rel(root, resolved)
	if err != nil || relative == "." || relative == ".." || strings.HasPrefix(relative, ".."+string(filepath.Separator)) || filepath.IsAbs(relative) {
		return nil, "", errors.New("application: local case context must be a file inside the repository")
	}
	info, err := os.Lstat(resolved)
	if err != nil {
		return nil, "", fmt.Errorf("application: inspect local case context: %w", err)
	}
	if !info.Mode().IsRegular() || info.Size() <= 0 || info.Size() > maxLocalCaseContextBytes {
		return nil, "", errors.New("application: local case context must be a non-empty regular file within the byte limit")
	}
	data, err := os.ReadFile(resolved)
	if err != nil {
		return nil, "", fmt.Errorf("application: read local case context: %w", err)
	}
	if len(data) > maxLocalCaseContextBytes {
		return nil, "", errors.New("application: local case context exceeds the byte limit")
	}
	var context localCaseContext
	if err := json.Unmarshal(data, &context); err != nil {
		return nil, "", fmt.Errorf("application: decode local case context: %w", err)
	}
	if context.SchemaVersion != "mathcase-provider-prompt-context-v2" ||
		context.CaseIdentity.ProblemID != problem.ID ||
		context.Problem.LeanStatement == "" || context.Problem.LeanStatement != problem.LeanStatement ||
		context.SourceBinding.ExactCampaignQuestion != problem.Statement {
		return nil, "", errors.New("application: local case context is not bound to the exact solver problem")
	}
	binding := context.SourceBinding
	if binding.SourceDeclaration == "" || binding.SourceModule == "" || binding.SourceLine < 1 ||
		!localContextSHA256.MatchString(binding.SourceSHA256) || !localContextSHA256.MatchString(binding.ImportCacheSHA256) ||
		!binding.KnownProofAvailable || binding.SavedProofSupplied || binding.TheoremBodySupplied || binding.ProofBodySupplied {
		return nil, "", errors.New("application: local source context lacks a bounded, proof-body-free source binding")
	}
	allowed := false
	for _, use := range binding.AllowedUses {
		if use == "LOCAL_PROOF_ATTEMPT" {
			allowed = true
			break
		}
	}
	if !allowed || !strings.Contains(binding.RightsStatus, "NO_PROVIDER_INPUT") ||
		!strings.Contains(binding.RightsStatus, "TRAINING") || !strings.Contains(binding.RightsStatus, "PUBLIC_EXPORT") {
		return nil, "", errors.New("application: local source context does not grant a local proof attempt with external-use holds")
	}
	moduleImported := false
	for _, module := range context.LeanEnvironment.Imports {
		if module == binding.SourceModule {
			moduleImported = true
			break
		}
	}
	if !moduleImported || context.LeanEnvironment.CacheIdentitySHA256 != binding.ImportCacheSHA256 || context.LeanEnvironment.CasePreflight == nil {
		return nil, "", errors.New("application: local source context lacks its pinned import/cache preflight")
	}
	preflight := context.LeanEnvironment.CasePreflight
	if !strings.HasPrefix(preflight.Status, "PRECHECK_OK") || preflight.CacheIdentitySHA256 != binding.ImportCacheSHA256 ||
		!localContextSHA256.MatchString(preflight.EvidenceSHA256) || !localContextSHA256.MatchString(preflight.CacheIdentitySHA256) {
		return nil, "", errors.New("application: local source context import/cache preflight is not verified")
	}
	requestedImport := false
	for _, module := range preflight.RequestedImports {
		if module == binding.SourceModule {
			requestedImport = true
			break
		}
	}
	if !requestedImport {
		return nil, "", errors.New("application: local source context preflight does not cover the pinned source module")
	}
	sourceArtifactFound, preflightArtifactFound := false, false
	for _, artifact := range context.SourceArtifacts {
		switch artifact.Role {
		case "pinned_source_declarations":
			sourceArtifactFound = artifact.Path == binding.SourcePath && artifact.SHA256 == binding.SourceSHA256
		case "case_import_preflight":
			preflightArtifactFound = artifact.Path == preflight.EvidencePath && artifact.SHA256 == preflight.EvidenceSHA256
		}
	}
	if !sourceArtifactFound || !preflightArtifactFound {
		return nil, "", errors.New("application: local case context artifacts do not bind its source and cache preflight")
	}
	declarationFound := false
	for _, declaration := range context.SourceDeclarations {
		if declaration.Kind == "THEOREM_SIGNATURE" && declaration.Name == binding.SourceDeclaration &&
			strings.TrimSpace(declaration.Signature) != "" && !declaration.ProofBodyIncluded {
			declarationFound = true
			break
		}
	}
	if !declarationFound {
		return nil, "", errors.New("application: local source context does not carry the pinned theorem signature without its proof body")
	}
	sourceBytes, err := readPinnedRepositoryFile(root, binding.SourcePath, 16<<20)
	if err != nil {
		return nil, "", fmt.Errorf("application: reopen pinned source declaration: %w", err)
	}
	sourceDigest := sha256.Sum256(sourceBytes)
	if hex.EncodeToString(sourceDigest[:]) != binding.SourceSHA256 {
		return nil, "", errors.New("application: pinned source declaration no longer matches its recorded digest")
	}
	shortName := binding.SourceDeclaration
	if index := strings.LastIndexByte(shortName, '.'); index >= 0 {
		shortName = shortName[index+1:]
	}
	declarationPattern := regexp.MustCompile(`(?m)^\s*(?:(?:private|protected|noncomputable|unsafe|partial)\s+)*(?:theorem|lemma)\s+` + regexp.QuoteMeta(shortName) + `\b`)
	if len(declarationPattern.FindAllIndex(sourceBytes, 2)) != 1 {
		return nil, "", errors.New("application: pinned source theorem name does not resolve uniquely in its hashed source file")
	}
	preflightBytes, err := readPinnedRepositoryFile(root, preflight.EvidencePath, 8<<20)
	if err != nil {
		return nil, "", fmt.Errorf("application: reopen pinned import/cache preflight: %w", err)
	}
	preflightDigest := sha256.Sum256(preflightBytes)
	if hex.EncodeToString(preflightDigest[:]) != preflight.EvidenceSHA256 {
		return nil, "", errors.New("application: pinned import/cache preflight no longer matches its recorded digest")
	}
	contextDigest := sha256.Sum256(data)
	return []string{binding.SourceDeclaration}, hex.EncodeToString(contextDigest[:]), nil
}

func readPinnedRepositoryFile(repositoryRoot, relativePath string, maximum int64) ([]byte, error) {
	if filepath.IsAbs(relativePath) || strings.TrimSpace(relativePath) == "" {
		return nil, errors.New("artifact path must be relative to the repository")
	}
	root, err := filepath.Abs(repositoryRoot)
	if err != nil {
		return nil, err
	}
	root, err = filepath.EvalSymlinks(root)
	if err != nil {
		return nil, err
	}
	path := filepath.Join(root, filepath.FromSlash(relativePath))
	path, err = filepath.Abs(path)
	if err != nil {
		return nil, err
	}
	resolved, err := filepath.EvalSymlinks(path)
	if err != nil {
		return nil, err
	}
	relative, err := filepath.Rel(root, resolved)
	if err != nil || relative == "." || relative == ".." || strings.HasPrefix(relative, ".."+string(filepath.Separator)) || filepath.IsAbs(relative) {
		return nil, errors.New("artifact resolves outside the repository")
	}
	info, err := os.Lstat(resolved)
	if err != nil {
		return nil, err
	}
	if !info.Mode().IsRegular() || info.Size() <= 0 || info.Size() > maximum {
		return nil, fmt.Errorf("artifact must be a regular file no larger than %d bytes", maximum)
	}
	data, err := os.ReadFile(resolved)
	if err != nil {
		return nil, err
	}
	if int64(len(data)) > maximum {
		return nil, fmt.Errorf("artifact exceeds %d bytes", maximum)
	}
	return data, nil
}
