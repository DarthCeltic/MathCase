package persistence

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/catalog"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/expositor"
)

func TestExpositionPairEvidenceStorePersistsAndReopensCandidateOnlyEvidence(t *testing.T) {
	artifact := validExpositionPairEvidenceArtifact(t)
	store, err := NewExpositionPairEvidenceStore(filepath.Join(t.TempDir(), "pairs"))
	if err != nil {
		t.Fatalf("NewExpositionPairEvidenceStore() error = %v", err)
	}

	created, err := store.Put(context.Background(), artifact)
	if err != nil {
		t.Fatalf("Put() error = %v", err)
	}
	if created.RecordID != artifact.Record.RecordID || created.ContentSHA256 == "" || created.Size == 0 ||
		created.Disposition != "INTEGRITY_VERIFIED_IDENTITY_BLOCKED_CANDIDATE_ONLY" || !created.IntegrityVerified ||
		created.ExternalIdentityAuthenticated || created.ProviderInputClearanceVerified || created.TrainingEligible {
		t.Fatalf("Put() receipt = %#v; want integrity-only candidate receipt", created)
	}
	if got, want := created.RelativePath, filepath.ToSlash(filepath.Join(expositionPairEvidenceDir, created.ContentSHA256+".json")); got != want {
		t.Fatalf("content-addressed relative path = %q, want %q", got, want)
	}

	repeated, err := store.Put(context.Background(), artifact)
	if err != nil || repeated.ContentSHA256 != created.ContentSHA256 {
		t.Fatalf("idempotent Put() = %#v, %v; want existing content address %q", repeated, err, created.ContentSHA256)
	}

	reopened, receipt, err := store.Get(context.Background(), created.ContentSHA256)
	if err != nil {
		t.Fatalf("Get() error = %v", err)
	}
	if receipt != created || reopened.Record.RecordID != artifact.Record.RecordID {
		t.Fatalf("Get() = receipt %#v, record %q; want receipt %#v and original record", receipt, reopened.Record.RecordID, created)
	}
	report, err := reopened.Audit(context.Background())
	if err != nil {
		t.Fatalf("Audit() error = %v", err)
	}
	if !report.IntegrityVerified || report.ExternalIdentityAuthenticated || report.ProviderInputClearanceVerified || report.TrainingEligible ||
		report.Disposition != "INTEGRITY_VERIFIED_IDENTITY_BLOCKED_CANDIDATE_ONLY" || len(report.Candidates) != 2 {
		t.Fatalf("Audit() report = %#v; want two integrity-checked but blocked candidates", report)
	}
	for _, candidate := range report.Candidates {
		if candidate.M7Disposition != expositor.M7AuditBlocked || !candidate.IntegrityVerified || candidate.ManifestSHA256 == "" {
			t.Fatalf("candidate audit = %#v; want M7 integrity with identity hold", candidate)
		}
	}
}

func TestExpositionPairEvidenceRejectsUnboundOrIncompleteEvidence(t *testing.T) {
	tests := []struct {
		name   string
		mutate func(*ExpositionPairEvidenceArtifact)
		want   string
	}{
		{
			name: "pair score differs from typed observation",
			mutate: func(artifact *ExpositionPairEvidenceArtifact) {
				artifact.Record.CandidateX.RoundTrip.Score -= 0.1
			},
			want: "round-trip fields do not match",
		},
		{
			name: "author run is misbound",
			mutate: func(artifact *ExpositionPairEvidenceArtifact) {
				artifact.Record.CandidateY.AuthorRunReceiptID = "provider-run-not-the-author"
			},
			want: "author receipt ID does not match",
		},
		{
			name: "raw output bytes tampered",
			mutate: func(artifact *ExpositionPairEvidenceArtifact) {
				artifact.CandidateX.EvidenceFiles["x/outputs/roundtrip-author-call-x.json"] = []byte(`{"tampered":true}`)
			},
			want: "digest mismatch",
		},
		{
			name: "hash-only substitute has no manifest",
			mutate: func(artifact *ExpositionPairEvidenceArtifact) {
				artifact.CandidateX.EvidenceFiles = map[string][]byte{"manifest.sha256": []byte(strings.Repeat("a", 64))}
			},
			want: "read M7 evidence manifest",
		},
		{
			name: "M0 digest is misbound",
			mutate: func(artifact *ExpositionPairEvidenceArtifact) {
				artifact.Record.CatalogSnapshotSHA256 = strings.Repeat("9", 64)
			},
			want: "not bound to the embedded M0 snapshot",
		},
		{
			name: "unreferenced bytes refused",
			mutate: func(artifact *ExpositionPairEvidenceArtifact) {
				artifact.CandidateY.EvidenceFiles["extra/ignored.json"] = []byte(`{"ignored":true}`)
			},
			want: "missing or unreferenced bytes",
		},
	}

	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			artifact := validExpositionPairEvidenceArtifact(t)
			test.mutate(&artifact)
			if _, err := artifact.Audit(context.Background()); err == nil || !strings.Contains(err.Error(), test.want) {
				t.Fatalf("Audit() error = %v; want refusal containing %q", err, test.want)
			}
		})
	}
}

func TestExpositionPairEvidenceStoreRejectsTamperedContentAddress(t *testing.T) {
	artifact := validExpositionPairEvidenceArtifact(t)
	store, err := NewExpositionPairEvidenceStore(filepath.Join(t.TempDir(), "pairs"))
	if err != nil {
		t.Fatalf("NewExpositionPairEvidenceStore() error = %v", err)
	}
	receipt, err := store.Put(context.Background(), artifact)
	if err != nil {
		t.Fatalf("Put() error = %v", err)
	}
	path := filepath.Join(store.root, filepath.FromSlash(receipt.RelativePath))
	if err := os.WriteFile(path, []byte(`{"tampered":true}`), 0o600); err != nil {
		t.Fatalf("tamper stored evidence: %v", err)
	}
	if _, _, err := store.Get(context.Background(), receipt.ContentSHA256); err == nil || !strings.Contains(err.Error(), "content hash or size is invalid") {
		t.Fatalf("Get() after stored-byte tamper error = %v; want content-address refusal", err)
	}
}

func validExpositionPairEvidenceArtifact(t *testing.T) ExpositionPairEvidenceArtifact {
	t.Helper()
	policy := expositor.EvaluationPolicy{
		Version: "m7-policy-test-v1", MinimumRoundTripScore: 0.5, MinimumCanonScore: 0.5,
		MaximumNgramOverlap: 0.8, MaximumStructureOverlap: 0.8, TransferWeight: 0.5,
		ProgressWeight: 0.5, LengthExponent: 1,
	}
	wordLimits := expositor.WordLimits{
		domain.TierHighSchool: 200, domain.TierAssociate: 200, domain.TierBachelor: 200,
		domain.TierMaster: 200, domain.TierDoctorate: 200,
	}
	policyDigest, err := policy.Digest()
	if err != nil {
		t.Fatalf("policy.Digest() error = %v", err)
	}
	snapshot := testExpositionPairCatalog(t)
	snapshotBytes, err := json.Marshal(snapshot)
	if err != nil {
		t.Fatalf("encode M0 snapshot: %v", err)
	}
	proofSHA := strings.Repeat("b", 64)
	canonSHA := strings.Repeat("c", 64)
	common := ExpositionPairEvidenceArtifact{
		SchemaVersion: expositionPairEvidenceSchema, CatalogSnapshotBytes: snapshotBytes,
		Policy: policy, WordLimits: wordLimits,
	}
	x, candidateX := syntheticExpositionPairCandidate(t, "x", "first version", proofSHA, canonSHA, policy, wordLimits)
	y, candidateY := syntheticExpositionPairCandidate(t, "y", "second version", proofSHA, canonSHA, policy, wordLimits)
	common.CandidateX, common.CandidateY = x, y
	common.Record = domain.ExpositionPairRecord{
		SchemaVersion: domain.ExpositionPairRecordSchemaVersion,
		RecordID:      "pair-record-test-01", ProblemID: "problem-pair-test", Tier: domain.TierBachelor,
		CatalogSnapshotSHA256: snapshot.ContentSHA256, ProofSHA256: proofSHA, CanonSnapshotSHA256: canonSHA,
		EvaluationPolicySHA256: policyDigest, CandidateX: candidateX, CandidateY: candidateY,
		PreferredCandidate: "UNRATED", RecordedAtUTC: time.Date(2026, 10, 21, 4, 0, 0, 0, time.UTC),
	}
	return common
}

func testExpositionPairCatalog(t *testing.T) catalog.Snapshot {
	t.Helper()
	now := time.Date(2026, 10, 21, 4, 0, 0, 0, time.UTC)
	source := catalog.SourceVersion{
		ID: "source-pair-test", URL: "https://example.test/source", Revision: "revision-pair-test",
		RetrievedAt: now, ContentSHA256: strings.Repeat("a", 64), Rights: catalog.RightsUnknown,
	}
	snapshot, err := catalog.NewSnapshot(now, []catalog.SourceVersion{source}, []catalog.Problem{{
		ID: "problem-pair-test", Title: "Test theorem", InformalStatement: "A fixed test statement.",
		Status: catalog.StatusProven, SourceIDs: []string{source.ID},
	}})
	if err != nil {
		t.Fatalf("catalog.NewSnapshot() error = %v", err)
	}
	return snapshot
}

func syntheticExpositionPairCandidate(
	t *testing.T,
	shortID string,
	variant string,
	proofSHA string,
	canonSHA string,
	policy expositor.EvaluationPolicy,
	wordLimits expositor.WordLimits,
) (ExpositionPairCandidateEvidence, domain.ExpositionPairCandidate) {
	t.Helper()
	bundle := syntheticExpositionBundle(shortID, variant, proofSHA, canonSHA)
	output, found := expositionTierOutput(bundle, domain.TierBachelor)
	if !found {
		t.Fatal("synthetic M7 bundle has no bachelor tier")
	}
	expositionSHA, err := domain.ExpositionDigest(domain.Exposition{
		Tier: output.Tier, Text: output.Render(), CoreInsightID: output.CoreInsightID,
		CoreInsight: output.CoreInsightSentence, ProofRef: proofSHA,
	})
	if err != nil {
		t.Fatalf("domain.ExpositionDigest() error = %v", err)
	}
	policySHA, err := policy.Digest()
	if err != nil {
		t.Fatalf("policy.Digest() error = %v", err)
	}
	wordLimitsSHA, err := wordLimits.Digest()
	if err != nil {
		t.Fatalf("wordLimits.Digest() error = %v", err)
	}
	context := domain.M7OutputContext{
		ProblemID: bundle.ProblemID, Tier: output.Tier, ProofSHA256: proofSHA,
		ExpositionSHA256: expositionSHA, CanonSnapshotSHA256: canonSHA,
		PolicySHA256: policySHA, WordLimit: wordLimits[output.Tier], WordLimitsSHA256: wordLimitsSHA,
	}
	review := syntheticExpositionTierReview(bundle, output, context, policySHA)
	files := make(map[string][]byte)
	manifest := domain.M7EvidenceManifestV1{SchemaVersion: domain.M7EvidenceManifestSchemaV1, Context: context}
	addRun := func(id string, role domain.M7RunRole, modelID, version string, result any) domain.M7ArtifactBinding {
		t.Helper()
		outputBytes, err := json.Marshal(result)
		if err != nil {
			t.Fatalf("marshal synthetic M7 %s output: %v", role, err)
		}
		prefix := shortID + "/"
		inputPath := prefix + "inputs/" + id + ".json"
		outputPath := prefix + "outputs/" + id + ".json"
		receiptPath := prefix + "receipts/" + id + ".json"
		inputBytes, err := json.Marshal(map[string]string{"request_id": id})
		if err != nil {
			t.Fatalf("marshal synthetic M7 input: %v", err)
		}
		files[inputPath] = inputBytes
		files[outputPath] = outputBytes
		receipt := domain.M7RunReceiptV2{
			SchemaVersion: domain.M7RunReceiptSchemaV2, CallID: id, RunID: "provider-run-" + id,
			Role: role, Context: context, InputPath: inputPath,
			InputSHA256: digestPairBytes(inputBytes), OutputSHA256: digestPairBytes(outputBytes),
			Model: domain.M7ModelIdentity{Provider: "synthetic", Surface: "test", ModelID: modelID, ModelVersion: version},
		}
		receiptBytes, err := json.Marshal(receipt)
		if err != nil {
			t.Fatalf("marshal synthetic M7 receipt: %v", err)
		}
		files[receiptPath] = receiptBytes
		return domain.M7ArtifactBinding{
			ID: id, Role: role, RunReceiptPath: receiptPath, RunReceiptSHA256: digestPairBytes(receiptBytes),
			OutputPath: outputPath, OutputSHA256: digestPairBytes(outputBytes),
		}
	}

	authorTiers := make([]domain.M7AuthorTierOutputV1, 0, len(bundle.Tiers))
	for _, tier := range bundle.Tiers {
		authorTiers = append(authorTiers, domain.M7AuthorTierOutputV1{
			Tier: tier.Tier, Text: tier.Render(), CoreInsightID: tier.CoreInsightID, CoreInsight: tier.CoreInsightSentence,
		})
	}
	authorOutput := domain.M7AuthorOutputV1{
		SchemaVersion: domain.M7ObservationOutputSchemaV1,
		Context: domain.M7BundleOutputContext{
			ProblemID: bundle.ProblemID, ProofSHA256: bundle.ProofSHA256,
			CanonSnapshotSHA256: bundle.CanonSnapshotSHA256, PolicySHA256: policySHA,
			WordLimitsSHA256: wordLimitsSHA,
		},
		Tiers: authorTiers,
	}
	manifest.Author = addRun(bundle.AuthorCallID, domain.M7RunAuthor, bundle.ExpositorModelID, bundle.ExpositorVersion, authorOutput)
	manifest.RoundTrip = addRun(review.RoundTrip.EvidenceID, domain.M7RunRoundTrip, review.RoundTrip.ModelID, review.RoundTrip.ModelVersion,
		domain.M7RoundTripOutputV1{
			SchemaVersion: domain.M7ObservationOutputSchemaV1, Context: context, Score: review.RoundTrip.Score,
			RequiredFacts: review.RoundTrip.RequiredFacts, RecoveredFacts: review.RoundTrip.RecoveredFacts,
		})
	canonScores := make([]domain.ExpositionMoveScore, 0, len(review.Canon.Scores))
	for _, score := range review.Canon.Scores {
		canonScores = append(canonScores, domain.ExpositionMoveScore{Move: score.Move, Score: score.Score})
	}
	manifest.Canon = addRun(review.Canon.EvidenceID, domain.M7RunCanon, review.Canon.ModelID, review.Canon.ModelVersion,
		domain.M7CanonOutputV1{SchemaVersion: domain.M7ObservationOutputSchemaV1, Context: context, Scores: canonScores})
	manifest.Leakage = addRun(review.Leakage.EvidenceID, domain.M7RunLeakage, "leakage-reviewer", "v1",
		domain.M7LeakageOutputV1{
			SchemaVersion: domain.M7ObservationOutputSchemaV1, Context: context, Method: review.Leakage.Method,
			NgramOverlap: review.Leakage.NgramOverlap, StructureOverlap: review.Leakage.StructureOverlap, Passed: review.Leakage.Passed,
		})
	manifest.StudentEvidenceID = review.Student.EvidenceID
	studentRows := []domain.M7StudentAttemptOutputV1{
		{TrialID: "target-" + shortID, TaskClass: domain.M7StudentTarget, Arm: domain.M7ArmBaseline, OutcomeScore: review.Student.TargetBaseline, ProgressScore: 0.1, AttemptCount: 1},
		{TrialID: "target-" + shortID, TaskClass: domain.M7StudentTarget, Arm: domain.M7ArmExposition, OutcomeScore: review.Student.TargetWithExposition, ProgressScore: 0.3, AttemptCount: 1},
		{TrialID: "transfer-" + shortID, TaskClass: domain.M7StudentTransfer, Arm: domain.M7ArmBaseline, OutcomeScore: review.Student.TransferBaseline, ProgressScore: 0.2, AttemptCount: 1},
		{TrialID: "transfer-" + shortID, TaskClass: domain.M7StudentTransfer, Arm: domain.M7ArmExposition, OutcomeScore: review.Student.TransferWithExposition, ProgressScore: 0.4, AttemptCount: 1},
	}
	for _, row := range studentRows {
		row.SchemaVersion = domain.M7ObservationOutputSchemaV1
		row.Context = context
		bindingID := row.TrialID + "-" + string(row.Arm)
		manifest.StudentTrials = append(manifest.StudentTrials, addRun(bindingID, domain.M7RunStudentAttempt,
			review.Student.ModelID, review.Student.ModelVersion, row))
	}
	manifestPath := shortID + "/manifest.json"
	manifestBytes, err := json.Marshal(manifest)
	if err != nil {
		t.Fatalf("marshal synthetic M7 manifest: %v", err)
	}
	files[manifestPath] = manifestBytes
	review.EvidenceManifestPath = manifestPath
	review.EvidenceManifestSHA256 = digestPairBytes(manifestBytes)

	var authorReceipt, rtReceipt, canonReceipt domain.M7RunReceiptV2
	if err := json.Unmarshal(files[manifest.Author.RunReceiptPath], &authorReceipt); err != nil {
		t.Fatal(err)
	}
	if err := json.Unmarshal(files[manifest.RoundTrip.RunReceiptPath], &rtReceipt); err != nil {
		t.Fatal(err)
	}
	if err := json.Unmarshal(files[manifest.Canon.RunReceiptPath], &canonReceipt); err != nil {
		t.Fatal(err)
	}
	pairCandidate := domain.ExpositionPairCandidate{
		CandidateID: shortID, ExpositionSHA256: expositionSHA, AuthorRunReceiptID: authorReceipt.RunID,
		AuthorModelID: bundle.ExpositorModelID, AuthorModelVersion: bundle.ExpositorVersion,
		RoundTrip: domain.ExpositionPairRoundTrip{
			Score: review.RoundTrip.Score, RequiredFacts: append([]string(nil), review.RoundTrip.RequiredFacts...),
			RecoveredFacts: append([]string(nil), review.RoundTrip.RecoveredFacts...), ModelID: review.RoundTrip.ModelID,
			ModelVersion: review.RoundTrip.ModelVersion, Frozen: review.RoundTrip.Frozen,
			EvidenceID: review.RoundTrip.EvidenceID, EvidenceSHA256: manifest.RoundTrip.OutputSHA256, RunReceiptID: rtReceipt.RunID,
		},
		Canon: domain.ExpositionPairCanon{
			ModelID: review.Canon.ModelID, ModelVersion: review.Canon.ModelVersion, Frozen: review.Canon.Frozen,
			EvidenceID: review.Canon.EvidenceID, EvidenceSHA256: manifest.Canon.OutputSHA256, RunReceiptID: canonReceipt.RunID,
		},
	}
	for _, score := range review.Canon.Scores {
		pairCandidate.Canon.Scores = append(pairCandidate.Canon.Scores, domain.ExpositionMoveScore{Move: score.Move, Score: score.Score})
	}
	return ExpositionPairCandidateEvidence{Bundle: bundle, Review: review, ManifestPath: manifestPath, EvidenceFiles: files}, pairCandidate
}

func syntheticExpositionBundle(shortID, variant, proofSHA, canonSHA string) expositor.Bundle {
	makeTier := func(tier domain.AudienceTier) expositor.TierOutput {
		output := expositor.TierOutput{
			Tier: tier, AssumedBackground: []string{"basic definitions"}, CoreInsightID: "shared-core-insight",
			Motivation: "Motivation " + variant, WhyNotObvious: "A direct guess hides the invariant.",
			CoreInsightSentence: "The invariant makes the move visible.", ProofNarrative: "Track the same invariant through the proof.",
			Example: "Example " + variant + " for " + string(tier), StoppingPoint: "This argument stops at the stated result.",
		}
		switch tier {
		case domain.TierHighSchool:
			output.AssertedSteps = []string{"The algebraic step is asserted."}
		case domain.TierAssociate:
			output.WorkedVariant = "Try the same move on a nearby input."
		case domain.TierBachelor:
			output.BoundaryCase = "At the boundary, the invariant still holds."
			output.MissingHypothesis = "The hypothesis keeps the operation defined."
		case domain.TierMaster:
			output.PreciseLemmas = []string{"List.mem_cons", "List.mem_singleton"}
			output.TextbookComparison = "This proof makes the invariant explicit."
		case domain.TierDoctorate:
			output.AlternativesRejected = []string{"A direct induction obscures the structure."}
			output.TransferTargets = []string{"The invariant applies to a nearby family."}
		}
		return output
	}
	return expositor.Bundle{
		AuthorCallID: "author-call-" + shortID, ProblemID: "problem-pair-test", ProofSHA256: proofSHA,
		CanonSnapshotSHA256: canonSHA, ExpositorModelID: "author-model-" + shortID, ExpositorVersion: "v1",
		Tiers: []expositor.TierOutput{
			makeTier(domain.TierHighSchool), makeTier(domain.TierAssociate), makeTier(domain.TierBachelor),
			makeTier(domain.TierMaster), makeTier(domain.TierDoctorate),
		},
	}
}

func syntheticExpositionTierReview(bundle expositor.Bundle, output expositor.TierOutput, context domain.M7OutputContext, policySHA string) expositor.TierEvaluation {
	scores := make([]expositor.MoveScore, 0, len(domain.RequiredExpositionCanonMoves()))
	for _, move := range domain.RequiredExpositionCanonMoves() {
		scores = append(scores, expositor.MoveScore{Move: move, Score: 0.8})
	}
	return expositor.TierEvaluation{
		Tier: output.Tier, ProblemID: bundle.ProblemID, ProofSHA256: bundle.ProofSHA256,
		ExpositionSHA256: context.ExpositionSHA256, CanonSnapshotSHA256: bundle.CanonSnapshotSHA256, PolicySHA256: policySHA,
		AuthorModelID: bundle.ExpositorModelID,
		RoundTrip: expositor.RoundTripReview{
			ModelID: "roundtrip-reviewer", ModelVersion: "v1", ExpositionSHA256: context.ExpositionSHA256,
			Frozen: true, Score: 0.9, RequiredFacts: []string{"statement", "central move"}, RecoveredFacts: []string{"statement", "central move"},
			EvidenceID: "roundtrip-" + bundle.AuthorCallID,
		},
		Canon: expositor.CanonReview{
			ModelID: "canon-reviewer", ModelVersion: "v1", Frozen: true, ExpositionSHA256: context.ExpositionSHA256,
			CanonSnapshotSHA256: bundle.CanonSnapshotSHA256, Scores: scores, EvidenceID: "canon-" + bundle.AuthorCallID,
		},
		Leakage: expositor.LeakageAudit{
			ProofSHA256: bundle.ProofSHA256, ExpositionSHA256: context.ExpositionSHA256, Method: "synthetic-test-v1",
			NgramOverlap: 0.1, StructureOverlap: 0.1, Passed: true, EvidenceID: "leakage-" + bundle.AuthorCallID,
		},
		Student: expositor.StudentLift{
			ModelID: "student-reviewer", ModelVersion: "v1", Frozen: true, ExpositionSHA256: context.ExpositionSHA256,
			AttemptBudget: 5, TargetBaseline: 0.2, TargetWithExposition: 0.6,
			TransferBaseline: 0.3, TransferWithExposition: 0.7, ProgressLift: 0.2,
			EvidenceID: "student-" + bundle.AuthorCallID,
		},
	}
}

func digestPairBytes(data []byte) string {
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:])
}
