// Package verification records independent V1-V7 gate decisions. Missing
// evidence is BLOCKED; adverse evidence is FAILED; neither can be promoted.
package verification

import (
	"sort"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

type V1BuildEvidence struct {
	ProblemID              string
	ProblemStatementSHA256 string
	ProofSHA256            string
	Toolchain              string
	ExpectedToolchain      string
	BuildSucceeded         bool
	NoSorry                bool
	CleanCheckout          bool
	EvidenceID             string
}

func AssessV1(e V1BuildEvidence, at time.Time) (result domain.VerificationRecord) {
	defer func() {
		result.ProblemID = e.ProblemID
		result.ProblemStatementSHA256 = e.ProblemStatementSHA256
		result.ProofSHA256 = e.ProofSHA256
		result.LeanToolchain = e.Toolchain
		result.ExpectedLeanToolchain = e.ExpectedToolchain
	}()
	if !validID(e.ProblemID) || !validSHA256(e.ProblemStatementSHA256) || !validSHA256(e.ProofSHA256) || strings.TrimSpace(e.Toolchain) == "" || strings.TrimSpace(e.ExpectedToolchain) == "" || !validID(e.EvidenceID) || at.IsZero() {
		return record(domain.GateKernelBuild, domain.VerificationBlocked, "V1 evidence is incomplete.", at, e.EvidenceID)
	}
	if !e.BuildSucceeded || !e.NoSorry {
		return record(domain.GateKernelBuild, domain.VerificationFailed, "Lean build failed or the proof contains a hole.", at, e.EvidenceID)
	}
	if e.Toolchain != e.ExpectedToolchain {
		return record(domain.GateKernelBuild, domain.VerificationFailed, "Lean build used a toolchain different from the pinned project toolchain.", at, e.EvidenceID)
	}
	if !e.CleanCheckout {
		return record(domain.GateKernelBuild, domain.VerificationBlocked, "Local build passed, but a clean checkout rebuild is not recorded.", at, e.EvidenceID)
	}
	return record(domain.GateKernelBuild, domain.VerificationPassed, "Pinned Lean build passed from a clean checkout with no proof holes.", at, e.EvidenceID)
}

type V2AxiomEvidence struct {
	ProblemID              string
	ProblemStatementSHA256 string
	ProofSHA256            string
	Theorem                string
	PrintOutput            string
	ObservedAxioms         []string
	AllowedAxioms          []string
	EvidenceID             string
}

func AssessV2(e V2AxiomEvidence, at time.Time) (result domain.VerificationRecord) {
	defer func() {
		result.ProblemID = e.ProblemID
		result.ProblemStatementSHA256 = e.ProblemStatementSHA256
		result.ProofSHA256 = e.ProofSHA256
	}()
	if !validID(e.ProblemID) || !validSHA256(e.ProblemStatementSHA256) || !validSHA256(e.ProofSHA256) || !validID(e.Theorem) || strings.TrimSpace(e.PrintOutput) == "" || !validID(e.EvidenceID) || at.IsZero() {
		return record(domain.GateAxiomAudit, domain.VerificationBlocked, "V2 axiom evidence is incomplete.", at, e.EvidenceID)
	}
	observed, parsed := ParseAxiomOutput(e.Theorem, e.PrintOutput)
	if !parsed || !sameNames(observed, e.ObservedAxioms) {
		return record(domain.GateAxiomAudit, domain.VerificationBlocked, "V2 raw output and parsed axiom list are incomplete or inconsistent.", at, e.EvidenceID)
	}
	allowed := make(map[string]struct{}, len(e.AllowedAxioms))
	for _, name := range e.AllowedAxioms {
		if !validID(name) {
			return record(domain.GateAxiomAudit, domain.VerificationBlocked, "V2 allowed-axiom policy is invalid.", at, e.EvidenceID)
		}
		if _, exists := allowed[name]; exists {
			return record(domain.GateAxiomAudit, domain.VerificationBlocked, "V2 allowed-axiom policy contains a duplicate.", at, e.EvidenceID)
		}
		allowed[name] = struct{}{}
	}
	for _, name := range observed {
		if _, ok := allowed[name]; !ok {
			return record(domain.GateAxiomAudit, domain.VerificationFailed, "V2 found an axiom outside the approved standard set.", at, e.EvidenceID)
		}
	}
	return record(domain.GateAxiomAudit, domain.VerificationPassed, "Axiom output contains only approved standard axioms.", at, e.EvidenceID)
}

// ParseAxiomOutput parses Lean's raw #print axioms output for one theorem.
// It returns false unless exactly one well-formed declaration is present.
func ParseAxiomOutput(theorem, output string) ([]string, bool) {
	prefix := "'" + theorem + "' "
	var result []string
	found := false
	for _, line := range strings.Split(output, "\n") {
		line = strings.TrimSpace(line)
		if !strings.HasPrefix(line, prefix) {
			continue
		}
		if found {
			return nil, false
		}
		found = true
		remainder := strings.TrimSpace(strings.TrimPrefix(line, prefix))
		if remainder == "does not depend on any axioms" {
			result = []string{}
			continue
		}
		const marker = "depends on axioms: ["
		if !strings.HasPrefix(remainder, marker) || !strings.HasSuffix(remainder, "]") {
			return nil, false
		}
		body := strings.TrimSpace(strings.TrimSuffix(strings.TrimPrefix(remainder, marker), "]"))
		if body == "" {
			return nil, false
		}
		seen := make(map[string]struct{})
		result = make([]string, 0)
		for _, rawName := range strings.Split(body, ",") {
			name := strings.TrimSpace(rawName)
			if !validID(name) {
				return nil, false
			}
			if _, exists := seen[name]; exists {
				return nil, false
			}
			seen[name] = struct{}{}
			result = append(result, name)
		}
	}
	return result, found
}

func sameNames(first, second []string) bool {
	if len(first) != len(second) {
		return false
	}
	seen := make(map[string]struct{}, len(first))
	for _, name := range first {
		seen[name] = struct{}{}
	}
	for _, name := range second {
		if _, exists := seen[name]; !exists {
			return false
		}
		delete(seen, name)
	}
	return len(seen) == 0
}

type V3StatementEvidence struct {
	ProblemID             string
	CatalogStatement      string
	CatalogLeanStatement  string
	CatalogSnapshotSHA256 string
	Review                domain.V3StatementFidelity
}

func AssessV3(e V3StatementEvidence, at time.Time) (result domain.VerificationRecord) {
	result = record(domain.GateStatementFidelity, domain.VerificationBlocked, "V3 requires the complete pinned-source, Lean, independent back-translation, semantic-diff, and boundary-probe evidence.", at, e.Review.SemanticComparison.EvidenceID)
	result.ProblemID = e.ProblemID
	result.ReviewerID = e.Review.SemanticComparison.ReviewerID
	result.StatementFidelity = &e.Review
	result.EvidenceIDs = e.Review.EvidenceIDs()
	if strings.TrimSpace(e.ProblemID) != "" && strings.TrimSpace(e.CatalogStatement) != "" && strings.TrimSpace(e.CatalogLeanStatement) != "" {
		result.ProblemStatementSHA256, _ = domain.ProblemStatementDigest(e.ProblemID, e.CatalogStatement, e.CatalogLeanStatement)
	}
	if at.IsZero() || !validID(e.ProblemID) || !validSHA256(e.CatalogSnapshotSHA256) || e.Review.Source.CatalogSnapshotSHA256 != e.CatalogSnapshotSHA256 {
		return result
	}
	if err := e.Review.Validate(e.CatalogStatement, e.CatalogLeanStatement); err != nil {
		result.Summary = "V3 dual-check evidence is incomplete or malformed: " + err.Error()
		return result
	}
	status, summary := e.Review.Conclusion()
	if status == domain.VerificationPassed {
		result.Status = domain.VerificationBlocked
		result.Summary = "V3 typed review fields are builder-authored claims; an authenticated independent-review receipt and execution-bound receipts for exact applicable Lean boundary instances are required before passage."
		return result
	}
	result.Status = status
	result.Summary = summary
	return result
}

type V4FalsificationEvidence struct {
	ProblemID              string
	ProblemStatementSHA256 string
	Audit                  domain.V4FalsificationAudit
}

func AssessV4(e V4FalsificationEvidence, at time.Time) (result domain.VerificationRecord) {
	defer func() {
		result.ProblemID = e.ProblemID
		result.ProblemStatementSHA256 = e.ProblemStatementSHA256
		audit := e.Audit
		audit.NegationSearchEvidenceIDs = append([]string(nil), e.Audit.NegationSearchEvidenceIDs...)
		result.Falsification = &audit
		result.EvidenceIDs = e.Audit.EvidenceIDs()
	}()
	if !validID(e.ProblemID) || !validSHA256(e.ProblemStatementSHA256) || at.IsZero() {
		return record(domain.GateFalsification, domain.VerificationBlocked, "V4 problem identity, statement digest, or assessment time is incomplete.", at, e.Audit.EvidenceIDs()...)
	}
	if err := e.Audit.ValidateLinks(e.Audit.EvidenceIDs()); err != nil {
		return record(domain.GateFalsification, domain.VerificationBlocked, "V4 evidence is incomplete or malformed: "+err.Error(), at, e.Audit.EvidenceIDs()...)
	}
	status, summary := e.Audit.Conclusion()
	if status == domain.VerificationPassed {
		status = domain.VerificationBlocked
		summary = "V4 caller-authored check fields are not execution evidence; reopened randomized, SMT, and negation-search receipts bound to the exact statement are required before passage."
	}
	return domain.VerificationRecord{Gate: domain.GateFalsification, Status: status, Summary: summary, EvidenceIDs: e.Audit.EvidenceIDs(), RecordedAt: at}
}

type LemmaAblation = domain.V5LemmaAblation

type V5EssentialityEvidence struct {
	ProblemID              string
	ProblemStatementSHA256 string
	ProofSHA256            string
	Ablations              []LemmaAblation
}

func AssessV5(e V5EssentialityEvidence, at time.Time) (result domain.VerificationRecord) {
	defer func() {
		result.Gate = domain.GateEssentiality
		result.ProblemID = e.ProblemID
		result.ProblemStatementSHA256 = e.ProblemStatementSHA256
		result.ProofSHA256 = e.ProofSHA256
		result.RecordedAt = at
	}()
	audit := domain.V5EssentialityAudit{Ablations: append([]domain.V5LemmaAblation(nil), e.Ablations...)}
	result.Essentiality = &audit
	result.EvidenceIDs = audit.EvidenceIDs()
	if !validID(e.ProblemID) || !validSHA256(e.ProblemStatementSHA256) || !validSHA256(e.ProofSHA256) || at.IsZero() {
		result.Status = domain.VerificationBlocked
		result.Summary = "V5 problem, proof, or assessment identity is incomplete."
		return result
	}
	if err := audit.ValidateLinks(result.EvidenceIDs); err != nil {
		result.Status = domain.VerificationBlocked
		result.Summary = "V5 evidence is incomplete or malformed: " + err.Error()
		return result
	}
	result.Status, result.Summary = audit.Conclusion()
	if result.Status == domain.VerificationPassed {
		result.Status = domain.VerificationBlocked
		result.Summary = "V5 caller-authored ablation fields are not execution evidence; reopened ablation-runner receipts bound to the exact proof and source are required before passage."
	}
	return result
}

type V6ProvenanceEvidence struct {
	ProblemID              string
	ProblemStatementSHA256 string
	ArtifactSHA256         string
	DatasetSplitSHA256     string
	DatasetSplitEvidenceID string
	LeakageAuditEvidenceID string
	SourceIDs              []string
	SourceRights           []V6SourceRightsEvidence
	LeakageDetected        bool
	ReviewerID             string
	EvidenceIDs            []string
}

// V6SourceRightsEvidence records the exact catalog source version and the
// uses required by the provenance artifact under review.
type V6SourceRightsEvidence struct {
	Source       catalog.SourceVersion
	RequiredUses []catalog.SourceUse
}

func AssessV6(e V6ProvenanceEvidence, at time.Time) (result domain.VerificationRecord) {
	defer func() {
		result.ProblemID = e.ProblemID
		result.ProblemStatementSHA256 = e.ProblemStatementSHA256
		result.ArtifactSHA256 = e.ArtifactSHA256
		result.DatasetSplitSHA256 = e.DatasetSplitSHA256
		result.DatasetSplitEvidenceID = e.DatasetSplitEvidenceID
		result.LeakageAuditEvidenceID = e.LeakageAuditEvidenceID
		result.SourceIDs = append([]string(nil), e.SourceIDs...)
		result.SourceRightsAudits = sourceRightsAuditRecords(e.SourceRights)
		result.ReviewerID = e.ReviewerID
	}()
	if !validID(e.ProblemID) || !validSHA256(e.ProblemStatementSHA256) || !validSHA256(e.ArtifactSHA256) || !validSHA256(e.DatasetSplitSHA256) || !validID(e.DatasetSplitEvidenceID) || !validID(e.LeakageAuditEvidenceID) || len(e.SourceIDs) == 0 || len(e.SourceRights) == 0 || len(e.EvidenceIDs) == 0 || !validEvidenceIDs(e.SourceIDs) || !validEvidenceIDs(e.EvidenceIDs) || !validID(e.ReviewerID) || at.IsZero() {
		return record(domain.GateProvenanceLeakage, domain.VerificationBlocked, "V6 provenance or leakage evidence is incomplete.", at, e.EvidenceIDs...)
	}
	if !containsEvidenceID(e.EvidenceIDs, e.DatasetSplitEvidenceID) || !containsEvidenceID(e.EvidenceIDs, e.LeakageAuditEvidenceID) {
		return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationBlocked, Summary: "V6 dataset-split or leakage-audit evidence is not linked.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
	}
	sourceIDs := make(map[string]struct{}, len(e.SourceIDs))
	for _, sourceID := range e.SourceIDs {
		sourceIDs[sourceID] = struct{}{}
	}
	seenRights := make(map[string]struct{}, len(e.SourceRights))
	for _, rights := range e.SourceRights {
		source := rights.Source
		if !validID(source.ID) {
			return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationBlocked, Summary: "V6 contains an invalid source-rights identity.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
		}
		if _, exists := sourceIDs[source.ID]; !exists {
			return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationBlocked, Summary: "V6 source-rights evidence references a source outside the audited set.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
		}
		if _, exists := seenRights[source.ID]; exists {
			return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationBlocked, Summary: "V6 contains duplicate source-rights evidence.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
		}
		seenRights[source.ID] = struct{}{}
		if !validID(source.RightsEvidenceID) || !containsEvidenceID(e.EvidenceIDs, source.RightsEvidenceID) {
			return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationBlocked, Summary: "V6 source-rights evidence is not linked to a reviewed rights record.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
		}
		if source.Rights == catalog.RightsRestricted {
			return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationFailed, Summary: "V6 found a source whose rights restrict a required use.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
		}
		if source.Rights != catalog.RightsCleared {
			return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationBlocked, Summary: "V6 contains a source without completed rights review.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
		}
		if err := source.Validate(); err != nil {
			return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationBlocked, Summary: "V6 source-rights record is incomplete or invalid.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
		}
		if len(rights.RequiredUses) == 0 {
			return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationBlocked, Summary: "V6 source-rights record does not identify the artifact's required uses.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
		}
		seenUses := make(map[catalog.SourceUse]struct{}, len(rights.RequiredUses))
		for _, use := range rights.RequiredUses {
			switch use {
			case catalog.UseLocalStorage, catalog.UseReference, catalog.UseIndex, catalog.UseProviderInput, catalog.UseTraining, catalog.UseDerivative, catalog.UsePublicExport:
			default:
				return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationBlocked, Summary: "V6 contains an unsupported required source use.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
			}
			if _, exists := seenUses[use]; exists {
				return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationBlocked, Summary: "V6 contains a duplicate required source use.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
			}
			seenUses[use] = struct{}{}
			if !source.EligibleFor(use) {
				return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationFailed, Summary: "V6 found a required source use outside the cleared license scope.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
			}
		}
	}
	if len(seenRights) != len(sourceIDs) {
		return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationBlocked, Summary: "V6 does not contain source-rights evidence for every audited source.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
	}
	if e.LeakageDetected {
		return domain.VerificationRecord{Gate: domain.GateProvenanceLeakage, Status: domain.VerificationFailed, Summary: "V6 detected provenance leakage.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
	}
	return domain.VerificationRecord{
		Gate: domain.GateProvenanceLeakage, Status: domain.VerificationBlocked,
		Summary:     "V6 typed provenance claims are not independently reopened; pinned M0 source-rights, dataset-split, and leakage computations are required before passage.",
		EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at,
	}
}

func sourceRightsAuditRecords(records []V6SourceRightsEvidence) []domain.SourceRightsAudit {
	result := make([]domain.SourceRightsAudit, 0, len(records))
	for _, item := range records {
		allowedUses := make([]string, len(item.Source.AllowedUses))
		for index, use := range item.Source.AllowedUses {
			allowedUses[index] = string(use)
		}
		requiredUses := make([]string, len(item.RequiredUses))
		for index, use := range item.RequiredUses {
			requiredUses[index] = string(use)
		}
		result = append(result, domain.SourceRightsAudit{
			SourceID: item.Source.ID, RightsEvidenceID: item.Source.RightsEvidenceID,
			RightsStatus: string(item.Source.Rights), License: item.Source.License,
			RequiredUses: requiredUses, AllowedUses: allowedUses,
		})
	}
	return result
}

func containsEvidenceID(evidenceIDs []string, expected string) bool {
	for _, evidenceID := range evidenceIDs {
		if evidenceID == expected {
			return true
		}
	}
	return false
}

type NoveltyStatus = domain.NoveltyStatus

const (
	NoveltyOpen          = domain.NoveltyOpen
	NoveltyKnownSolution = domain.NoveltyKnownSolution
	NoveltyUncertain     = domain.NoveltyUncertain
)

type SearchRecord = domain.LiteratureSearchRecord

type V7LiteratureEvidence struct {
	ProblemID              string
	ProblemStatementSHA256 string
	Searches               []SearchRecord
	Findings               []string
	Novelty                NoveltyStatus
	ReviewerID             string
	EvidenceIDs            []string
}

func AssessV7(e V7LiteratureEvidence, at time.Time) (result domain.VerificationRecord) {
	defer func() {
		result.ProblemID = e.ProblemID
		result.ProblemStatementSHA256 = e.ProblemStatementSHA256
		result.ReviewerID = e.ReviewerID
		result.Novelty = e.Novelty
		result.Searches = append([]SearchRecord(nil), e.Searches...)
		result.Findings = append([]string(nil), e.Findings...)
	}()
	if !validID(e.ProblemID) || !validSHA256(e.ProblemStatementSHA256) || len(e.Searches) == 0 || len(e.EvidenceIDs) == 0 || !validID(e.ReviewerID) || !validEvidenceIDs(e.EvidenceIDs) || at.IsZero() {
		return record(domain.GateLiteratureAndStatus, domain.VerificationBlocked, "V7 literature searches and review evidence are incomplete.", at, e.EvidenceIDs...)
	}
	if len(e.Findings) == 0 {
		return record(domain.GateLiteratureAndStatus, domain.VerificationBlocked, "V7 has no literature finding summary.", at, e.EvidenceIDs...)
	}
	for _, finding := range e.Findings {
		if strings.TrimSpace(finding) == "" {
			return domain.VerificationRecord{Gate: domain.GateLiteratureAndStatus, Status: domain.VerificationBlocked, Summary: "V7 contains an empty literature finding.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
		}
	}
	for _, search := range e.Searches {
		if strings.TrimSpace(search.Database) == "" || strings.TrimSpace(search.Query) == "" || search.SearchedAt.IsZero() || !validID(search.EvidenceID) || !containsEvidenceID(e.EvidenceIDs, search.EvidenceID) {
			return domain.VerificationRecord{Gate: domain.GateLiteratureAndStatus, Status: domain.VerificationBlocked, Summary: "V7 contains an incomplete search record.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
		}
	}
	switch e.Novelty {
	case NoveltyOpen:
		return domain.VerificationRecord{Gate: domain.GateLiteratureAndStatus, Status: domain.VerificationBlocked, Summary: "V7 typed search claims are not independently reopened; a literature-search result reader and status cross-check are required before passage.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
	case NoveltyKnownSolution:
		return domain.VerificationRecord{Gate: domain.GateLiteratureAndStatus, Status: domain.VerificationBlocked, Summary: "V7 typed search claims are not independently reopened; a literature-search result reader and status cross-check are required before passage. The recorded prior-solution disposition must not be represented as a new discovery.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
	case NoveltyUncertain:
		return domain.VerificationRecord{Gate: domain.GateLiteratureAndStatus, Status: domain.VerificationBlocked, Summary: "Literature priority remains uncertain.", EvidenceIDs: append([]string(nil), e.EvidenceIDs...), RecordedAt: at}
	default:
		return record(domain.GateLiteratureAndStatus, domain.VerificationBlocked, "V7 novelty status is invalid.", at, e.EvidenceIDs...)
	}
}

func record(gate domain.VerificationGate, status domain.VerificationStatus, summary string, at time.Time, evidenceIDs ...string) domain.VerificationRecord {
	valid := make([]string, 0, len(evidenceIDs))
	for _, id := range evidenceIDs {
		if validID(id) {
			valid = append(valid, id)
		}
	}
	return domain.VerificationRecord{Gate: gate, Status: status, Summary: summary, EvidenceIDs: valid, RecordedAt: at}
}

func validID(value string) bool { return state.ValidateIdentifier("verification ID", value) == nil }

func validEvidenceIDs(values []string) bool {
	if len(values) == 0 {
		return false
	}
	seen := make(map[string]struct{}, len(values))
	for _, value := range values {
		if !validID(value) {
			return false
		}
		if _, exists := seen[value]; exists {
			return false
		}
		seen[value] = struct{}{}
	}
	return true
}

func validSHA256(value string) bool {
	if len(value) != 64 || strings.ToLower(value) != value {
		return false
	}
	for _, character := range value {
		if !(character >= '0' && character <= '9' || character >= 'a' && character <= 'f') {
			return false
		}
	}
	return true
}

func SortAxioms(names []string) []string {
	result := append([]string(nil), names...)
	sort.Strings(result)
	return result
}
