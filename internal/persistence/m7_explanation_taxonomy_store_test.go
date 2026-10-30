package persistence

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/expositor"
	"github.com/DarthCeltic/MathCase/internal/formalizer"
)

func TestM7ExplanationTaxonomyStorePersistsAndReopensCandidateEvidence(t *testing.T) {
	artifact := validM7ExplanationTaxonomyArtifact(t)
	report, err := artifact.Audit(context.Background())
	if err != nil {
		t.Fatalf("Audit() error = %v", err)
	}
	if !report.IntegrityVerified || !report.ProviderInputScopeConsistent || report.ExternalIdentityAuthenticated ||
		report.IndependentReviewAuthenticated || report.LiftMeasured || report.TrainingEligible || report.TierCount != 5 || report.MoveCandidateCount != 5 {
		t.Fatalf("Audit() report = %#v; want five-tier candidate integrity with all external claims blocked", report)
	}

	store, err := NewM7ExplanationTaxonomyStore(filepath.Join(t.TempDir(), "m7-taxonomy"))
	if err != nil {
		t.Fatalf("NewM7ExplanationTaxonomyStore() error = %v", err)
	}
	created, err := store.Put(context.Background(), artifact)
	if err != nil {
		t.Fatalf("Put() error = %v", err)
	}
	if created.RecordID != artifact.Record.RecordID || created.ContentSHA256 == "" || !created.IntegrityVerified ||
		!created.ProviderInputScopeConsistent || created.ExternalIdentityAuthenticated || created.TrainingEligible {
		t.Fatalf("Put() receipt = %#v; want integrity-only candidate receipt", created)
	}
	reopened, receipt, err := store.Get(context.Background(), created.ContentSHA256)
	if err != nil {
		t.Fatalf("Get() error = %v", err)
	}
	if receipt != created || reopened.Record.RecordID != artifact.Record.RecordID || len(reopened.Record.Moves) != 5 {
		t.Fatalf("Get() = receipt %#v with %d moves; want receipt %#v and five candidates", receipt, len(reopened.Record.Moves), created)
	}
}

func TestM7ExplanationTaxonomyRefusesUnlinkedAndOverstatedEvidence(t *testing.T) {
	tests := []struct {
		name   string
		mutate func(*M7ExplanationTaxonomyArtifact)
		want   string
	}{
		{
			name:   "statement digest misbound",
			mutate: func(a *M7ExplanationTaxonomyArtifact) { a.Record.Problem.StatementSHA256 = strings.Repeat("f", 64) },
			want:   "does not match exact M0 statement",
		},
		{
			name:   "missing author input bytes",
			mutate: func(a *M7ExplanationTaxonomyArtifact) { delete(a.EvidenceFiles, "shared/author-input.json") },
			want:   "read run input",
		},
		{
			name: "excerpt absent from exact tier",
			mutate: func(a *M7ExplanationTaxonomyArtifact) {
				a.Record.Moves[0].EvidenceExcerpt = "not in the tier output"
				a.Record.Moves[0].EvidenceExcerptSHA256 = digestTaxonomyBytes([]byte(a.Record.Moves[0].EvidenceExcerpt))
			},
			want: "not a verified span",
		},
		{
			name:   "review status promoted without reader",
			mutate: func(a *M7ExplanationTaxonomyArtifact) { a.Record.Moves[0].ReviewStatus = "REVIEWED" },
			want:   "cannot claim review",
		},
		{
			name: "unlinked source bytes",
			mutate: func(a *M7ExplanationTaxonomyArtifact) {
				a.SourceItemBytes["unlinked-source"] = []byte("unlinked")
			},
			want: "exactly the one M0 source item",
		},
		{
			name: "lift promoted without attempt-linked study reader",
			mutate: func(a *M7ExplanationTaxonomyArtifact) {
				a.Record.LiftObservation = M7ExplanationLiftObservation{Status: "MEASURED", AttributionScope: "WHOLE_EXPOSITION_ASSOCIATION"}
			},
			want: "requires five tier records",
		},
		{
			name: "hash-only substitute has no M7 manifests",
			mutate: func(a *M7ExplanationTaxonomyArtifact) {
				a.EvidenceFiles = map[string][]byte{"manifest.sha256": []byte(strings.Repeat("a", 64))}
			},
			want: "read M7 evidence manifest",
		},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			artifact := validM7ExplanationTaxonomyArtifact(t)
			test.mutate(&artifact)
			if _, err := artifact.Audit(context.Background()); err == nil || !strings.Contains(err.Error(), test.want) {
				t.Fatalf("Audit() error = %v; want refusal containing %q", err, test.want)
			}
		})
	}
}

func TestM7ExplanationTaxonomyAcceptsOnlyRecomputedWholeExpositionLift(t *testing.T) {
	artifact := validM7ExplanationTaxonomyArtifact(t)
	artifact.Record.LiftObservation = measuredM7ExplanationLiftFixture(artifact)
	report, err := artifact.Audit(context.Background())
	if err != nil {
		t.Fatalf("Audit() with exact student attempts error = %v", err)
	}
	if !report.LiftMeasured || report.TrainingEligible || report.ExternalIdentityAuthenticated || report.IndependentReviewAuthenticated {
		t.Fatalf("Audit() measured-lift status = %#v; want local lift with review, identity, and training still blocked", report)
	}
	artifact.Record.LiftObservation.TierObservations[0].BaselineAttemptRunIDs[0] = "substituted-run"
	if _, err := artifact.Audit(context.Background()); err == nil || !strings.Contains(err.Error(), "does not match recomputed attempt evidence") {
		t.Fatalf("Audit() after attempt-run substitution error = %v; want attempt-evidence refusal", err)
	}
}

func TestM7ExplanationTaxonomyStoreRejectsContentTampering(t *testing.T) {
	store, err := NewM7ExplanationTaxonomyStore(filepath.Join(t.TempDir(), "m7-taxonomy"))
	if err != nil {
		t.Fatalf("NewM7ExplanationTaxonomyStore() error = %v", err)
	}
	receipt, err := store.Put(context.Background(), validM7ExplanationTaxonomyArtifact(t))
	if err != nil {
		t.Fatalf("Put() error = %v", err)
	}
	path := filepath.Join(store.root, filepath.FromSlash(receipt.RelativePath))
	if err := os.WriteFile(path, []byte(`{"tampered":true}`), 0o600); err != nil {
		t.Fatalf("tamper stored artifact: %v", err)
	}
	if _, _, err := store.Get(context.Background(), receipt.ContentSHA256); err == nil || !strings.Contains(err.Error(), "content hash or size is invalid") {
		t.Fatalf("Get() after tampering error = %v; want content-address refusal", err)
	}
}

func validM7ExplanationTaxonomyArtifact(t *testing.T) M7ExplanationTaxonomyArtifact {
	t.Helper()
	now := time.Date(2026, 10, 21, 8, 0, 0, 0, time.UTC)
	statement := "For every natural number n, n equals n."
	sourceBytes := []byte("source item containing the exact identity statement")
	sourceSHA := digestTaxonomyBytes(sourceBytes)
	source := catalog.SourceVersion{
		ID: "source-m7-test", URL: "https://example.test/m7-source", ItemLocator: "item-1", Revision: "revision-1",
		Lane: catalog.LaneM7PedagogicalAnchor, RetrievedAt: now, ContentSHA256: sourceSHA,
		AuthorOrHolder: "Test holder", License: "Apache-2.0", LicenseTermsURL: "https://example.test/license",
		TermsNote: "Synthetic test fixture.", Attribution: "Test source.",
		AllowedUses:      []catalog.SourceUse{catalog.UseLocalStorage, catalog.UseProviderInput},
		RightsReviewerID: "owner-test", RightsReviewedAt: now, RightsEvidenceID: "rights-evidence-test", Rights: catalog.RightsCleared,
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, []catalog.Problem{{
		ID: "problem-m7-test", Title: "Identity", InformalStatement: statement, Status: catalog.StatusProven,
		DomainTags: []string{"logic"}, SourceIDs: []string{source.ID},
	}})
	if err != nil {
		t.Fatalf("catalog.NewSnapshot() error = %v", err)
	}
	snapshotBytes, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatalf("marshal M0 snapshot: %v", err)
	}
	clearance := formalizer.ProviderInputClearanceRecord{
		SchemaVersion: "mathcase-provider-input-clearance-v1", ClearanceID: "clearance-m7-test",
		ProblemID: "problem-m7-test", StatementID: "statement-m7-test", SourceID: source.ID,
		SourceRevision: source.Revision, SourceLocator: source.ItemLocator, SourceFileSHA256: sourceSHA,
		SourceGitBlob: strings.Repeat("1", 40), StatementSHA256: digestTaxonomyBytes([]byte(statement)),
		SubmittedFragmentPath: "fragments/problem.txt", SubmittedFragmentSHA256: sourceSHA,
		RightsEvidenceID: source.RightsEvidenceID, CatalogSnapshotSHA256: snapshot.ContentSHA256,
		AllowedUse: string(catalog.UseProviderInput), Scope: "One exact statement for the synthetic M7 author run.",
		Status: "CLEARED", CatalogSnapshotPath: "catalog.json", CatalogProblemID: "problem-m7-test",
	}
	clearanceBytes, err := json.Marshal(formalizer.ProviderInputClearanceRegister{
		SchemaVersion: "mathcase-provider-input-clearance-register-v1", CatalogSnapshotSHA256: snapshot.ContentSHA256,
		Clearances: []formalizer.ProviderInputClearanceRecord{clearance},
	})
	if err != nil {
		t.Fatalf("marshal provider-input clearance register: %v", err)
	}
	clearanceSHA := digestTaxonomyBytes(clearanceBytes)
	proof := "theorem identity : True := by trivial"
	proofSHA := digestTaxonomyBytes([]byte(proof))
	canonSHA := strings.Repeat("c", 64)
	wordLimits := expositor.WordLimits{
		domain.TierHighSchool: 300, domain.TierAssociate: 300, domain.TierBachelor: 300,
		domain.TierMaster: 300, domain.TierDoctorate: 300,
	}
	policy := expositor.EvaluationPolicy{
		Version: "m7-policy-taxonomy-test-v1", MinimumRoundTripScore: 0.5, MinimumCanonScore: 0.5,
		MaximumNgramOverlap: 0.8, MaximumStructureOverlap: 0.8, TransferWeight: 0.5,
		ProgressWeight: 0.5, LengthExponent: 1,
	}
	policySHA, err := policy.Digest()
	if err != nil {
		t.Fatalf("policy.Digest() error = %v", err)
	}
	wordLimitsSHA, err := wordLimits.Digest()
	if err != nil {
		t.Fatalf("wordLimits.Digest() error = %v", err)
	}
	bundle := syntheticExpositionBundle("m7-taxonomy", "candidate", proofSHA, canonSHA)
	bundle.ProblemID = "problem-m7-test"
	input := expositor.BundleGenerationInput{
		AuthorCallID: bundle.AuthorCallID, ProblemID: bundle.ProblemID, Statement: statement,
		Source: domain.V3SourceStatementPin{
			URL: source.URL, ItemLocator: source.ItemLocator, Revision: source.Revision, RawItemSHA256: sourceSHA,
			CatalogSnapshotSHA256: snapshot.ContentSHA256, Statement: statement, EvidenceID: "m0-source-pin-test",
		},
		InputClearance: domain.AgentRunInputClearance{StatementID: clearance.StatementID, EvidenceID: clearance.ClearanceID, EvidenceSHA256: clearanceSHA},
		Proof:          proof, ProofSHA256: proofSHA, CoreInsightID: bundle.Tiers[0].CoreInsightID,
		CoreInsight: bundle.Tiers[0].CoreInsightSentence, CanonSnapshotSHA256: canonSHA, WordLimits: wordLimits,
	}
	inputBytes, err := json.Marshal(input)
	if err != nil {
		t.Fatalf("marshal exact M7 author input: %v", err)
	}
	authorTiers := make([]domain.M7AuthorTierOutputV1, 0, len(bundle.Tiers))
	for _, output := range bundle.Tiers {
		authorTiers = append(authorTiers, domain.M7AuthorTierOutputV1{
			Tier: output.Tier, Text: output.Render(), CoreInsightID: output.CoreInsightID, CoreInsight: output.CoreInsightSentence,
		})
	}
	authorOutput := domain.M7AuthorOutputV1{
		SchemaVersion: domain.M7ObservationOutputSchemaV1,
		Context: domain.M7BundleOutputContext{ProblemID: bundle.ProblemID, ProofSHA256: proofSHA, CanonSnapshotSHA256: canonSHA,
			PolicySHA256: policySHA, WordLimitsSHA256: wordLimitsSHA},
		Tiers: authorTiers,
	}
	authorOutputBytes, err := json.Marshal(authorOutput)
	if err != nil {
		t.Fatalf("marshal complete M7 author output: %v", err)
	}
	evidenceFiles := map[string][]byte{"shared/author-input.json": inputBytes, "shared/author-output.json": authorOutputBytes}
	reviews := make(map[domain.AudienceTier]expositor.TierEvaluation, len(bundle.Tiers))
	manifestPaths := make(map[domain.AudienceTier]string, len(bundle.Tiers))
	for _, output := range bundle.Tiers {
		context := domain.M7OutputContext{
			ProblemID: bundle.ProblemID, Tier: output.Tier, ProofSHA256: proofSHA,
			ExpositionSHA256: expositionSHAForTaxonomy(t, bundle, output), CanonSnapshotSHA256: canonSHA,
			PolicySHA256: policySHA, WordLimit: wordLimits[output.Tier], WordLimitsSHA256: wordLimitsSHA,
		}
		review := syntheticExpositionTierReview(bundle, output, context, policySHA)
		review.RoundTrip.EvidenceID = "roundtrip-" + string(output.Tier)
		review.Canon.EvidenceID = "canon-" + string(output.Tier)
		review.Leakage.EvidenceID = "leakage-" + string(output.Tier)
		review.Student.EvidenceID = "student-" + string(output.Tier)
		manifest := domain.M7EvidenceManifestV1{SchemaVersion: domain.M7EvidenceManifestSchemaV1, Context: context}
		addRun := func(id string, role domain.M7RunRole, modelID, version string, runContext domain.M7OutputContext, value any, inputData []byte) domain.M7ArtifactBinding {
			t.Helper()
			resultBytes, err := json.Marshal(value)
			if err != nil {
				t.Fatalf("marshal M7 %s output: %v", role, err)
			}
			prefix := "m7/" + string(output.Tier) + "/"
			inputPath, outputPath := prefix+"inputs/"+id+".json", prefix+"outputs/"+id+".json"
			receiptPath := prefix + "receipts/" + id + ".json"
			if role == domain.M7RunAuthor {
				inputPath, outputPath = "shared/author-input.json", "shared/author-output.json"
			}
			if inputData == nil {
				inputData, err = json.Marshal(map[string]string{"request_id": id})
				if err != nil {
					t.Fatalf("marshal synthetic M7 input: %v", err)
				}
			}
			evidenceFiles[inputPath], evidenceFiles[outputPath] = inputData, resultBytes
			runID := "provider-run-" + id
			if role == domain.M7RunAuthor {
				runID = "provider-run-" + bundle.AuthorCallID
			}
			receipt := domain.M7RunReceiptV2{
				SchemaVersion: domain.M7RunReceiptSchemaV2, CallID: id, RunID: runID, Role: role,
				Context: runContext, InputPath: inputPath, InputSHA256: digestTaxonomyBytes(inputData),
				OutputSHA256: digestTaxonomyBytes(resultBytes),
				Model:        domain.M7ModelIdentity{Provider: "synthetic", Surface: "test", ModelID: modelID, ModelVersion: version},
			}
			receiptBytes, err := json.Marshal(receipt)
			if err != nil {
				t.Fatalf("marshal synthetic M7 receipt: %v", err)
			}
			evidenceFiles[receiptPath] = receiptBytes
			return domain.M7ArtifactBinding{
				ID: id, Role: role, RunReceiptPath: receiptPath, RunReceiptSHA256: digestTaxonomyBytes(receiptBytes),
				OutputPath: outputPath, OutputSHA256: digestTaxonomyBytes(resultBytes),
			}
		}
		manifest.Author = addRun(bundle.AuthorCallID, domain.M7RunAuthor, bundle.ExpositorModelID, bundle.ExpositorVersion, context, authorOutput, inputBytes)
		manifest.RoundTrip = addRun(review.RoundTrip.EvidenceID, domain.M7RunRoundTrip, review.RoundTrip.ModelID, review.RoundTrip.ModelVersion, context,
			domain.M7RoundTripOutputV1{SchemaVersion: domain.M7ObservationOutputSchemaV1, Context: context, Score: review.RoundTrip.Score,
				RequiredFacts: review.RoundTrip.RequiredFacts, RecoveredFacts: review.RoundTrip.RecoveredFacts}, nil)
		canonScores := make([]domain.ExpositionMoveScore, 0, len(review.Canon.Scores))
		for _, score := range review.Canon.Scores {
			canonScores = append(canonScores, domain.ExpositionMoveScore{Move: score.Move, Score: score.Score})
		}
		manifest.Canon = addRun(review.Canon.EvidenceID, domain.M7RunCanon, review.Canon.ModelID, review.Canon.ModelVersion, context,
			domain.M7CanonOutputV1{SchemaVersion: domain.M7ObservationOutputSchemaV1, Context: context, Scores: canonScores}, nil)
		manifest.Leakage = addRun(review.Leakage.EvidenceID, domain.M7RunLeakage, "leakage-reviewer", "v1", context,
			domain.M7LeakageOutputV1{SchemaVersion: domain.M7ObservationOutputSchemaV1, Context: context, Method: review.Leakage.Method,
				NgramOverlap: review.Leakage.NgramOverlap, StructureOverlap: review.Leakage.StructureOverlap, Passed: review.Leakage.Passed}, nil)
		manifest.StudentEvidenceID = review.Student.EvidenceID
		for _, student := range []struct {
			id, trialID string
			class       domain.M7StudentTaskClass
			arm         domain.M7StudentArm
			outcome     float64
			progress    float64
		}{{"target-base", string(output.Tier) + "-target-1", domain.M7StudentTarget, domain.M7ArmBaseline, review.Student.TargetBaseline, 0.1},
			{"target-exp", string(output.Tier) + "-target-1", domain.M7StudentTarget, domain.M7ArmExposition, review.Student.TargetWithExposition, 0.3},
			{"transfer-base", string(output.Tier) + "-transfer-1", domain.M7StudentTransfer, domain.M7ArmBaseline, review.Student.TransferBaseline, 0.1},
			{"transfer-exp", string(output.Tier) + "-transfer-1", domain.M7StudentTransfer, domain.M7ArmExposition, review.Student.TransferWithExposition, 0.3}} {
			bindingID := student.trialID + "-" + string(student.arm)
			binding := addRun(bindingID, domain.M7RunStudentAttempt, review.Student.ModelID, review.Student.ModelVersion, context,
				domain.M7StudentAttemptOutputV1{SchemaVersion: domain.M7ObservationOutputSchemaV1, Context: context,
					TrialID: student.trialID, TaskClass: student.class, Arm: student.arm, OutcomeScore: student.outcome, ProgressScore: student.progress, AttemptCount: 1}, nil)
			manifest.StudentTrials = append(manifest.StudentTrials, binding)
		}
		manifestPath := "m7/" + string(output.Tier) + "/manifest.json"
		manifestBytes, err := json.Marshal(manifest)
		if err != nil {
			t.Fatalf("marshal M7 %s manifest: %v", output.Tier, err)
		}
		evidenceFiles[manifestPath] = manifestBytes
		review.EvidenceManifestPath = manifestPath
		review.EvidenceManifestSHA256 = digestTaxonomyBytes(manifestBytes)
		reviews[output.Tier] = review
		manifestPaths[output.Tier] = manifestPath
	}
	statementSHA, err := domain.ProblemStatementDigest("problem-m7-test", statement, "")
	if err != nil {
		t.Fatalf("domain.ProblemStatementDigest() error = %v", err)
	}
	tierReceiptBindings := make([]M7ExplanationTierReceiptBinding, 0, len(m7ExplanationTiers))
	var authorOutputSHA string
	var authorRunID string
	for _, tier := range m7ExplanationTiers {
		manifestPath := manifestPaths[tier]
		manifestBytes := evidenceFiles[manifestPath]
		var manifest domain.M7EvidenceManifestV1
		if err := json.Unmarshal(manifestBytes, &manifest); err != nil {
			t.Fatalf("decode %s M7 manifest: %v", tier, err)
		}
		tierReceiptBindings = append(tierReceiptBindings, M7ExplanationTierReceiptBinding{
			Tier: tier, ManifestSHA256: digestTaxonomyBytes(manifestBytes), RunReceiptSHA256: manifest.Author.RunReceiptSHA256,
		})
		authorOutputSHA = manifest.Author.OutputSHA256
		authorRunID = "provider-run-" + bundle.AuthorCallID
	}
	moves := make([]M7ExplanationMoveCandidate, 0, 5)
	for index, output := range bundle.Tiers {
		excerpt := output.CoreInsightSentence
		family := []string{"MOTIVATION", "DEFINITION", "INFERENCE_BRIDGE", "BOUNDARY_CASE", "SUMMARY"}[index]
		moves = append(moves, M7ExplanationMoveCandidate{
			MoveID: "move-" + string(output.Tier), MoveFamily: family, Tier: output.Tier,
			ProblemTypeTags: []string{"identity"}, EvidenceRunID: "provider-run-" + bundle.AuthorCallID,
			EvidenceOutputSHA256: authorOutputSHA, EvidenceExcerpt: excerpt,
			EvidenceExcerptSHA256: digestTaxonomyBytes([]byte(excerpt)), ReviewStatus: "UNREVIEWED_CANDIDATE",
		})
	}
	return M7ExplanationTaxonomyArtifact{
		Record: M7ExplanationTaxonomyRecord{
			SchemaVersion: m7ExplanationTaxonomySchemaV2, RecordID: "m7-taxonomy-record-test", TaxonomyVersion: "mathcase-taxonomy-v1",
			Problem: M7ExplanationProblem{ProblemID: "problem-m7-test", StatementSHA256: statementSHA,
				ProblemTypeTags: []M7ExplanationProblemTag{{Tag: "identity", EvidenceSourceIDs: []string{source.ID}}}},
			AuthorOutput: M7ExplanationAuthorOutput{
				OutputSHA256: authorOutputSHA, RunID: authorRunID, TierReceiptBindings: tierReceiptBindings,
			},
			Moves: moves, LiftObservation: M7ExplanationLiftObservation{Status: "NOT_MEASURED", AttributionScope: "NONE"},
		},
		CatalogSnapshotBytes: snapshotBytes, ClearanceRegisterBytes: clearanceBytes,
		SourceItemBytes: map[string][]byte{source.ID: sourceBytes}, Bundle: bundle,
		Reviews: reviews, ManifestPaths: manifestPaths, EvidenceFiles: evidenceFiles, Policy: policy, WordLimits: wordLimits,
	}
}

func measuredM7ExplanationLiftFixture(artifact M7ExplanationTaxonomyArtifact) M7ExplanationLiftObservation {
	observation := M7ExplanationLiftObservation{Status: "MEASURED", AttributionScope: "WHOLE_EXPOSITION_ASSOCIATION"}
	for _, tier := range m7ExplanationTiers {
		baseline := []string{
			"provider-run-" + string(tier) + "-target-1-BASELINE",
			"provider-run-" + string(tier) + "-transfer-1-BASELINE",
		}
		exposition := []string{
			"provider-run-" + string(tier) + "-target-1-WITH_EXPOSITION",
			"provider-run-" + string(tier) + "-transfer-1-WITH_EXPOSITION",
		}
		study := append(append([]string(nil), baseline...), exposition...)
		sort.Strings(baseline)
		sort.Strings(exposition)
		sort.Strings(study)
		observation.TierObservations = append(observation.TierObservations, M7ExplanationTierLiftObservation{
			Tier: tier, MetricID: "M7_RECOMPUTED_PROGRESS_LIFT", Estimate: artifact.Reviews[tier].Student.ProgressLift,
			BaselineAttemptRunIDs: baseline, ExpositionAttemptRunIDs: exposition, StudyEvidenceRunIDs: study,
		})
	}
	return observation
}

func expositionSHAForTaxonomy(t *testing.T, bundle expositor.Bundle, output expositor.TierOutput) string {
	t.Helper()
	digest, err := domain.ExpositionDigest(domain.Exposition{
		Tier: output.Tier, Text: output.Render(), CoreInsightID: output.CoreInsightID,
		CoreInsight: output.CoreInsightSentence, ProofRef: bundle.ProofSHA256,
	})
	if err != nil {
		t.Fatalf("domain.ExpositionDigest() error = %v", err)
	}
	return digest
}

func digestTaxonomyBytes(data []byte) string {
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:])
}
