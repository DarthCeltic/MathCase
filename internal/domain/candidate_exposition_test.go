package domain

import (
	"crypto/sha256"
	"encoding/hex"
	"strings"
	"testing"
)

func validCandidateExpositionArtifact() CandidateExpositionArtifact {
	text := "An untiered local draft."
	digest := sha256.Sum256([]byte(text))
	return CandidateExpositionArtifact{
		SchemaVersion:        CandidateExpositionArtifactSchemaVersion,
		Status:               CandidateExpositionCandidateOnlyStatus,
		Origin:               CandidateExpositionOriginExistingPreview,
		AuthorRunStatus:      CandidateExpositionRunNotLinked,
		AuthorIdentityStatus: CandidateExpositionIdentityUnverified,
		SourceArtifactPath:   "ui/prototype/index.html",
		SourceArtifactSHA256: strings.Repeat("a", 64),
		CaseID:               "case-r0b", ProblemID: "nat-add-assoc",
		ProblemStatementSHA256: strings.Repeat("b", 64), RunID: "r0b-run-1",
		ProofSHA256: strings.Repeat("c", 64), GeneratedSourceSHA256: strings.Repeat("d", 64),
		M4ReceiptPath: "data/local/receipts/m4.json", M4ReceiptSHA256: strings.Repeat("e", 64),
		M6MetricsReceiptPath: "data/local/receipts/m6.json", M6MetricsReceiptSHA256: strings.Repeat("f", 64),
		M6RunReceiptPath: "data/local/receipts/m6-run.json", M6RunReceiptSHA256: strings.Repeat("1", 64),
		Text: text, TextSHA256: hex.EncodeToString(digest[:]),
	}
}

func TestCandidateExpositionArtifactRequiresExactCandidateOnlyBindings(t *testing.T) {
	valid := validCandidateExpositionArtifact()
	if err := valid.Validate(); err != nil {
		t.Fatalf("valid local candidate draft rejected: %v", err)
	}

	tests := []struct {
		name   string
		mutate func(*CandidateExpositionArtifact)
	}{
		{name: "M7 acceptance", mutate: func(a *CandidateExpositionArtifact) { a.Status = "ACCEPTED_M7" }},
		{name: "author identity", mutate: func(a *CandidateExpositionArtifact) { a.AuthorIdentityStatus = "AUTHENTICATED" }},
		{name: "author run", mutate: func(a *CandidateExpositionArtifact) { a.AuthorRunStatus = "LINKED" }},
		{name: "text mutation", mutate: func(a *CandidateExpositionArtifact) { a.Text += " changed" }},
		{name: "unsafe receipt path", mutate: func(a *CandidateExpositionArtifact) { a.M4ReceiptPath = "../receipt.json" }},
		{name: "missing receipt hash", mutate: func(a *CandidateExpositionArtifact) { a.M6RunReceiptSHA256 = "" }},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			artifact := valid
			test.mutate(&artifact)
			if err := artifact.Validate(); err == nil {
				t.Fatal("invalid candidate exposition accepted")
			}
		})
	}
}

func TestDossierCandidateExpositionReferenceIsSeparateAndBound(t *testing.T) {
	dossier := validDossier()
	statementSHA, err := ProblemStatementDigest(dossier.Problem.ID, dossier.Problem.Statement, dossier.Problem.LeanStatement)
	if err != nil {
		t.Fatal(err)
	}
	dossier.CandidateExposition = &CandidateExpositionReference{
		SchemaVersion:  CandidateExpositionReferenceSchemaVersion,
		Status:         CandidateExpositionCandidateOnlyStatus,
		RelativePath:   "data/local/candidate-expositions/case-r0b/" + strings.Repeat("a", 64) + ".json",
		ArtifactSHA256: strings.Repeat("a", 64), CaseID: dossier.Case.ID, ProblemID: dossier.Problem.ID,
		ProblemStatementSHA256: statementSHA, RunID: "r0b-run-1",
		ProofSHA256: strings.Repeat("b", 64), GeneratedSourceSHA256: strings.Repeat("c", 64),
		M4ReceiptSHA256:        dossier.M4Receipt.ReceiptSHA256,
		M6MetricsReceiptSHA256: strings.Repeat("d", 64), M6RunReceiptSHA256: strings.Repeat("e", 64),
	}
	if err := dossier.Validate(); err != nil {
		t.Fatalf("bound candidate-only reference rejected: %v", err)
	}
	if len(dossier.Expositions) != 5 {
		t.Fatal("candidate draft must remain separate from the five-tier exposition bundle")
	}

	mutated := dossier
	wrong := *dossier.CandidateExposition
	wrong.M4ReceiptSHA256 = strings.Repeat("f", 64)
	mutated.CandidateExposition = &wrong
	if err := mutated.Validate(); err == nil || !strings.Contains(err.Error(), "exact M4 receipt") {
		t.Fatalf("misbound candidate reference accepted: %v", err)
	}

	wrong = *dossier.CandidateExposition
	wrong.RelativePath = "C:/outside/candidate.json"
	mutated = dossier
	mutated.CandidateExposition = &wrong
	if err := mutated.Validate(); err == nil || !strings.Contains(err.Error(), "unsafe") {
		t.Fatalf("absolute Windows candidate reference accepted: %v", err)
	}
}
