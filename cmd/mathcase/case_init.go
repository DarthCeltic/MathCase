package main

import (
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"path"
	"sort"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const caseInitOutputSchemaVersion = "mathcase-case-init-output-v1"

type caseInitOutput struct {
	SchemaVersion       string `json:"schema_version"`
	Status              string `json:"status"`
	CaseID              string `json:"case_id"`
	ProblemID           string `json:"problem_id"`
	M0Status            string `json:"m0_status"`
	CatalogSnapshotSHA  string `json:"catalog_snapshot_sha256"`
	CatalogSnapshotPath string `json:"catalog_snapshot_path,omitempty"`
	ProblemStatementSHA string `json:"problem_statement_sha256"`
	SourceCount         int    `json:"source_count"`
	LeanStatementLoaded bool   `json:"lean_statement_loaded"`
}

func runCaseInit(args []string, stdout, stderr io.Writer) int {
	flags := flag.NewFlagSet("case-init", flag.ContinueOnError)
	flags.SetOutput(stderr)
	snapshotPath := flags.String("snapshot", "", "strict JSON file containing the exact M0 catalog snapshot")
	snapshotReference := flags.String("snapshot-reference", "", "safe project-relative path to persist for M8 reopen")
	problemID := flags.String("problem-id", "", "exact problem ID from the M0 snapshot")
	caseID := flags.String("case-id", "", "new case identity")
	createdAtText := flags.String("created-at", "", "case creation time in RFC3339 format")
	outputPath := flags.String("output", "", "new unsigned M8 intake dossier; existing files are never overwritten")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return 0
		}
		return 2
	}
	if flags.NArg() != 0 || strings.TrimSpace(*snapshotPath) == "" || strings.TrimSpace(*problemID) == "" ||
		strings.TrimSpace(*caseID) == "" || strings.TrimSpace(*createdAtText) == "" || strings.TrimSpace(*outputPath) == "" {
		fmt.Fprintln(stderr, "case-init requires --snapshot FILE, --problem-id ID, --case-id ID, --created-at RFC3339, and --output NEW_FILE and accepts no positional arguments")
		return 2
	}
	if err := state.ValidateIdentifier("case ID", *caseID); err != nil {
		fmt.Fprintf(stderr, "mathcase: invalid case ID: %v\n", err)
		return 2
	}
	createdAt, err := time.Parse(time.RFC3339Nano, strings.TrimSpace(*createdAtText))
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: parse --created-at: %v\n", err)
		return 2
	}
	createdAt = createdAt.UTC()

	snapshot, err := loadCatalogSnapshot(*snapshotPath)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: load M0 snapshot: %v\n", err)
		return 2
	}
	var selected *catalog.Problem
	for index := range snapshot.Problems {
		if snapshot.Problems[index].ID == *problemID {
			selected = &snapshot.Problems[index]
			break
		}
	}
	if selected == nil {
		fmt.Fprintf(stderr, "mathcase: problem %q is not in the validated M0 snapshot\n", *problemID)
		return 2
	}
	if selected.Kind == catalog.ProblemKindLocalArithmeticTask && !safeCaseInitSnapshotReference(*snapshotReference) {
		fmt.Fprintln(stderr, "mathcase: local arithmetic case-init requires --snapshot-reference with a safe project-relative M0 path")
		return 2
	}
	if err := state.ValidateIdentifier("problem ID", selected.ID); err != nil {
		fmt.Fprintf(stderr, "mathcase: invalid catalog problem ID: %v\n", err)
		return 2
	}
	sourceByID := make(map[string]catalog.SourceVersion, len(snapshot.Sources))
	for _, source := range snapshot.Sources {
		sourceByID[source.ID] = source
	}
	sources := make([]domain.Source, 0, len(selected.SourceIDs))
	for _, sourceID := range selected.SourceIDs {
		source, exists := sourceByID[sourceID]
		if !exists {
			fmt.Fprintf(stderr, "mathcase: problem %q references missing source %q\n", selected.ID, sourceID)
			return 2
		}
		if !source.EligibleFor(catalog.UseLocalStorage) {
			fmt.Fprintf(stderr, "mathcase: source %q is not cleared for LOCAL_STORAGE\n", sourceID)
			return 2
		}
		uses := make([]string, 0, len(source.AllowedUses))
		for _, use := range source.AllowedUses {
			uses = append(uses, string(use))
		}
		sort.Strings(uses)
		rightsReviewedAt := ""
		if !source.RightsReviewedAt.IsZero() {
			rightsReviewedAt = source.RightsReviewedAt.UTC().Format(time.RFC3339Nano)
		}
		metadata := map[string]string{
			"m0_catalog_snapshot_sha256": snapshot.ContentSHA256,
			"m0_source_revision":         source.Revision,
			"m0_item_locator":            source.ItemLocator,
			"m0_content_sha256":          source.ContentSHA256,
			"m0_source_lane":             string(source.Lane),
			"m0_retrieved_at":            source.RetrievedAt.UTC().Format(time.RFC3339Nano),
			"m0_author_or_holder":        source.AuthorOrHolder,
			"m0_rights_status":           string(source.Rights),
			"m0_allowed_uses":            strings.Join(uses, ","),
			"m0_rights_evidence_id":      source.RightsEvidenceID,
			"m0_rights_reviewer_id":      source.RightsReviewerID,
			"m0_rights_reviewed_at":      rightsReviewedAt,
			"m0_license":                 source.License,
			"m0_license_terms_url":       source.LicenseTermsURL,
			"m0_terms_note":              source.TermsNote,
			"m0_attribution":             source.Attribution,
			"m0_intake_note":             "Loaded from the validated M0 snapshot only; no live fetch or source audit is asserted.",
		}
		sources = append(sources, domain.Source{
			ID: source.ID, CaseID: *caseID, URL: source.URL, Title: source.ID,
			SourceType: domain.SourceTypeOther, Primary: false,
			FetchStatus: domain.FetchStatusPending, AuditStatus: domain.AuditStatusUnaudited,
			Metadata: metadata,
		})
	}
	statementDigest, err := domain.ProblemStatementDigest(selected.ID, selected.InformalStatement, selected.LeanStatement)
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: digest catalog problem statement: %v\n", err)
		return 2
	}

	var bounty *int64
	if selected.HistoricalBounty != nil {
		value := selected.HistoricalBounty.AmountUSD
		bounty = &value
	}
	dossier := domain.Dossier{
		SchemaVersion:         domain.DossierSchemaVersion,
		CatalogSnapshotSHA256: snapshot.ContentSHA256,
		CatalogSnapshotPath:   *snapshotReference,
		Case: domain.Case{
			ID: *caseID, Question: selected.InformalStatement, Status: domain.CaseStatusActive,
			Phase: domain.PhaseDraft, CreatedAt: createdAt, UpdatedAt: createdAt, Version: 1,
		},
		Problem: domain.MathProblem{
			ID: selected.ID, Kind: string(selected.Kind), Title: selected.Title, Statement: selected.InformalStatement,
			LocalComputationSpec: selected.LocalComputationSpec,
			LeanStatement:        selected.LeanStatement, M0Status: string(selected.Status),
			SourceIDs: append([]string(nil), selected.SourceIDs...), HistoricalBounty: bounty,
		},
		Sources:       sources,
		Verifications: pendingCaseInitVerifications(createdAt),
		Verdict: domain.Verdict{
			Status:     domain.VerdictUnresolved,
			Summary:    "M0 intake only; catalog status has not been re-audited, and no proof, falsification, novelty, or discovery conclusion has been assessed.",
			RecordedAt: createdAt,
		},
	}
	if err := dossier.Validate(); err != nil {
		fmt.Fprintf(stderr, "mathcase: validate initialized dossier: %v\n", err)
		return 2
	}
	dossierBytes, err := json.MarshalIndent(dossier, "", "  ")
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode initialized dossier: %v\n", err)
		return 2
	}
	dossierBytes = append(dossierBytes, '\n')
	if err := writeNewRegularOutput(*outputPath, dossierBytes); err != nil {
		fmt.Fprintf(stderr, "mathcase: write initialized dossier: %v\n", err)
		return 2
	}
	encoded, err := json.Marshal(caseInitOutput{
		SchemaVersion: caseInitOutputSchemaVersion, Status: "CREATED_UNASSESSED",
		CaseID: dossier.Case.ID, ProblemID: selected.ID, M0Status: string(selected.Status),
		CatalogSnapshotSHA: snapshot.ContentSHA256, ProblemStatementSHA: statementDigest,
		CatalogSnapshotPath: dossier.CatalogSnapshotPath,
		SourceCount:         len(sources), LeanStatementLoaded: strings.TrimSpace(selected.LeanStatement) != "",
	})
	if err != nil {
		fmt.Fprintf(stderr, "mathcase: encode case-init summary: %v\n", err)
		return 2
	}
	if _, err := stdout.Write(append(encoded, '\n')); err != nil {
		fmt.Fprintf(stderr, "mathcase: write case-init summary: %v\n", err)
		return 2
	}
	return 0
}

func safeCaseInitSnapshotReference(value string) bool {
	return value != "" && !strings.Contains(value, "\\") && !strings.Contains(value, ":") &&
		!strings.ContainsRune(value, 0) && !strings.HasPrefix(value, "/") && value != "." && value != ".." &&
		!strings.HasPrefix(value, "../") && path.Clean(value) == value
}

func pendingCaseInitVerifications(recordedAt time.Time) []domain.VerificationRecord {
	gates := []domain.VerificationGate{
		domain.GateKernelBuild,
		domain.GateAxiomAudit,
		domain.GateStatementFidelity,
		domain.GateFalsification,
		domain.GateEssentiality,
		domain.GateProvenanceLeakage,
		domain.GateLiteratureAndStatus,
	}
	records := make([]domain.VerificationRecord, 0, len(gates))
	for _, gate := range gates {
		records = append(records, domain.VerificationRecord{
			Gate: gate, Status: domain.VerificationPending,
			Summary:    "No assessment has been recorded by M0 case initialization.",
			RecordedAt: recordedAt,
		})
	}
	return records
}
