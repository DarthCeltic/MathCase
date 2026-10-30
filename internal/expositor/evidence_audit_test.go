package expositor

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"strings"
	"testing"
	"testing/fstest"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

func TestAuditM7EvidenceReopensOutputsRecomputesStudentLiftAndRemainsBlocked(t *testing.T) {
	bundle := testBundle()
	output := bundle.Tiers[0]
	policy := testPolicy()
	review := testEvaluation(bundle, output, policy)
	files, manifestPath := syntheticM7Evidence(t, bundle, output, review, policy, true, "")

	wordLimits := testWordLimits()
	report, err := AuditM7Evidence(files, manifestPath, bundle, output, review, policy, wordLimits)
	if err != nil {
		t.Fatalf("AuditM7Evidence() error = %v", err)
	}
	if !report.IntegrityVerified || report.Disposition != M7AuditBlocked || report.ExternalIdentityAuthenticated {
		t.Fatalf("audit integrity/authentication status = %#v; want integrity-only BLOCKED", report)
	}
	if report.StudentTrialCount != 2 || report.StudentAttemptCount != 4 ||
		report.RecomputedTargetBaseline != review.Student.TargetBaseline ||
		report.RecomputedTargetExposition != review.Student.TargetWithExposition ||
		report.RecomputedTransferBaseline != review.Student.TransferBaseline ||
		report.RecomputedTransferExposition != review.Student.TransferWithExposition ||
		report.RecomputedProgressLift != review.Student.ProgressLift {
		t.Fatalf("recomputed student evidence = %#v", report)
	}
	if report.ExternalAttestationsPresent == 0 {
		t.Fatal("synthetic attestation envelopes were not found; the test must prove they remain unauthenticated")
	}
	evaluated, boundReport, err := EvaluateWithEvidence(bundle, output, review, policy, wordLimits, files, manifestPath)
	if err != nil {
		t.Fatalf("EvaluateWithEvidence() error = %v", err)
	}
	if evaluated.Accepted || evaluated.Score != 0 || evaluated.EvidenceManifestSHA256 != boundReport.ManifestSHA256 ||
		evaluated.EvidenceManifestPath != manifestPath || !strings.Contains(evaluated.Refusal, "external issuer identity") {
		t.Fatalf("integrity-checked evidence escaped the external-auth hold: %#v", evaluated)
	}
	receipt, persistedReport, err := PersistEvaluationWithEvidence(bundle, output, review, policy, wordLimits,
		testEvidenceTime(), files, manifestPath)
	if err != nil {
		t.Fatalf("PersistEvaluationWithEvidence() error = %v", err)
	}
	if receipt.Accepted || receipt.Score != 0 || receipt.EvidenceManifestSHA256 != persistedReport.ManifestSHA256 ||
		receipt.EvidenceManifestPath != manifestPath {
		t.Fatalf("persisted M7 result is not blocked and manifest-bound: %#v", receipt)
	}
}

func TestM7IdentityTrustDoesNotAcceptOrPersistOneTierOutsideBundle(t *testing.T) {
	bundle := testBundle()
	output := bundle.Tiers[0]
	policy := testPolicy()
	review := testEvaluation(bundle, output, policy)
	files, manifestPath := syntheticM7Evidence(t, bundle, output, review, policy, false, "")
	trust := loadSyntheticM7IdentityTrustRegistry(t, files, manifestPath)

	audit, err := AuditM7Evidence(files, manifestPath, bundle, output, review, policy, testWordLimits(), trust)
	if err != nil {
		t.Fatalf("AuditM7Evidence(with host identity registry) = %v", err)
	}
	if !audit.IntegrityVerified || !audit.ExternalIdentityAuthenticated || audit.Disposition != M7AuditAuthenticated ||
		audit.IdentityTrustRegistrySHA256 != trust.SHA256() || len(audit.AuthenticatedPrincipals) != 5 {
		t.Fatalf("authenticated M7 audit = %#v; want exact registry binding and five independent principals", audit)
	}

	evaluated, evaluatedAudit, err := EvaluateWithEvidence(bundle, output, review, policy, testWordLimits(), files, manifestPath, trust)
	if err != nil {
		t.Fatalf("EvaluateWithEvidence(with trusted identity) = %v", err)
	}
	if evaluated.Accepted || evaluated.Score != 0 || !strings.Contains(evaluated.Refusal, "all five tiers must be evaluated atomically") || evaluatedAudit.Disposition != M7AuditAuthenticated {
		t.Fatalf("authenticated single-tier decision = %#v, audit=%#v; want a blocked individual tier", evaluated, evaluatedAudit)
	}

	persisted, persistedAudit, err := PersistEvaluationWithEvidence(bundle, output, review, policy, testWordLimits(),
		testEvidenceTime(), files, manifestPath, trust)
	if err != nil {
		t.Fatalf("PersistEvaluationWithEvidence(with trusted identity) = %v", err)
	}
	if persisted.Accepted || persisted.Score != 0 || persisted.EvidenceManifestSHA256 != persistedAudit.ManifestSHA256 || !strings.Contains(persisted.Refusal, "all five tiers must be evaluated atomically") {
		t.Fatalf("persisted single-tier M7 evaluation = %#v; want blocked receipt bound to the reopened manifest", persisted)
	}
}

func TestAuditM7EvidenceRejectsTamperedRawOutputAndSummaryMismatch(t *testing.T) {
	bundle := testBundle()
	output := bundle.Tiers[0]
	policy := testPolicy()
	review := testEvaluation(bundle, output, policy)

	t.Run("raw output tamper", func(t *testing.T) {
		files, manifestPath := syntheticM7Evidence(t, bundle, output, review, policy, false, "")
		files["outputs/roundtrip-evidence.json"] = &fstest.MapFile{Data: []byte(fmt.Sprintf("{%q:%t}", "tampered", true))}
		if _, err := AuditM7Evidence(files, manifestPath, bundle, output, review, policy, testWordLimits()); err == nil ||
			!strings.Contains(err.Error(), "digest mismatch") {
			t.Fatalf("AuditM7Evidence() with tampered output error = %v, want digest mismatch", err)
		}
	})
	t.Run("duplicate author tier", func(t *testing.T) {
		files, manifestPath := syntheticM7Evidence(t, bundle, output, review, policy, false, "")
		var manifest domain.M7EvidenceManifestV1
		if err := json.Unmarshal(files[manifestPath].Data, &manifest); err != nil {
			t.Fatalf("decode M7 manifest: %v", err)
		}
		var authorOutput domain.M7AuthorOutputV1
		if err := json.Unmarshal(files[manifest.Author.OutputPath].Data, &authorOutput); err != nil {
			t.Fatalf("decode M7 author output: %v", err)
		}
		authorOutput.Tiers[1].Tier = authorOutput.Tiers[0].Tier
		authorBytes, err := json.Marshal(authorOutput)
		if err != nil {
			t.Fatalf("encode duplicate-tier author output: %v", err)
		}
		files[manifest.Author.OutputPath] = &fstest.MapFile{Data: authorBytes}
		manifest.Author.OutputSHA256 = digestHex(authorBytes)

		var authorReceipt domain.M7RunReceiptV2
		if err := json.Unmarshal(files[manifest.Author.RunReceiptPath].Data, &authorReceipt); err != nil {
			t.Fatalf("decode M7 author receipt: %v", err)
		}
		authorReceipt.OutputSHA256 = digestHex(authorBytes)
		receiptBytes, err := json.Marshal(authorReceipt)
		if err != nil {
			t.Fatalf("encode updated M7 author receipt: %v", err)
		}
		files[manifest.Author.RunReceiptPath] = &fstest.MapFile{Data: receiptBytes}
		manifest.Author.RunReceiptSHA256 = digestHex(receiptBytes)
		manifestBytes, err := json.Marshal(manifest)
		if err != nil {
			t.Fatalf("encode updated M7 manifest: %v", err)
		}
		files[manifestPath] = &fstest.MapFile{Data: manifestBytes}

		if _, err := AuditM7Evidence(files, manifestPath, bundle, output, review, policy, testWordLimits()); err == nil ||
			!strings.Contains(err.Error(), "duplicate author output tier") {
			t.Fatalf("AuditM7Evidence() with duplicate author tier error = %v, want duplicate-tier refusal", err)
		}
	})
	t.Run("missing run receipt", func(t *testing.T) {
		files, manifestPath := syntheticM7Evidence(t, bundle, output, review, policy, false, "")
		delete(files, "receipts/roundtrip-evidence.json")
		if _, err := AuditM7Evidence(files, manifestPath, bundle, output, review, policy, testWordLimits()); err == nil ||
			!strings.Contains(err.Error(), "read run receipt") {
			t.Fatalf("AuditM7Evidence() without a run receipt error = %v, want missing-receipt refusal", err)
		}
	})

	t.Run("caller summary mismatch", func(t *testing.T) {
		files, manifestPath := syntheticM7Evidence(t, bundle, output, review, policy, false, "")
		review.Student.TargetWithExposition = 0.51
		if _, err := AuditM7Evidence(files, manifestPath, bundle, output, review, policy, testWordLimits()); err == nil ||
			!strings.Contains(err.Error(), "recomputed student lift") {
			t.Fatalf("AuditM7Evidence() with substituted lift error = %v, want recomputation refusal", err)
		}
	})
}

func TestAuditM7EvidenceUnequalModelAliasesNeverProveIndependence(t *testing.T) {
	bundle := testBundle()
	output := bundle.Tiers[0]
	policy := testPolicy()
	review := testEvaluation(bundle, output, policy)
	files, manifestPath := syntheticM7Evidence(t, bundle, output, review, policy, true, "")

	report, err := AuditM7Evidence(files, manifestPath, bundle, output, review, policy, testWordLimits())
	if err != nil {
		t.Fatal(err)
	}
	if review.RoundTrip.ModelID == review.Canon.ModelID || review.Canon.ModelID == review.Student.ModelID ||
		report.ExternalIdentityAuthenticated || report.Disposition != M7AuditBlocked {
		t.Fatalf("distinct string aliases incorrectly became authenticated: %#v", report)
	}
}

func TestAuditM7BundleEvidenceBindsAllTiersToCallerLimitsAndSharedAuthor(t *testing.T) {
	bundle := testBundle()
	policy := testPolicy()
	wordLimits := testWordLimits()
	files := fstest.MapFS{}
	manifestPaths := make(map[domain.AudienceTier]string, 5)
	reviews := make(map[domain.AudienceTier]TierEvaluation, 5)
	for _, tier := range m7AudienceTiers {
		output, ok := bundleOutputForTier(bundle, tier)
		if !ok {
			t.Fatalf("testBundle() is missing %s", tier)
		}
		review := testEvaluation(bundle, output, policy)
		review.Tier = tier
		review.RoundTrip.EvidenceID = "roundtrip-" + strings.ToLower(string(tier))
		review.Canon.EvidenceID = "canon-" + strings.ToLower(string(tier))
		review.Leakage.EvidenceID = "leakage-" + strings.ToLower(string(tier))
		review.Student.EvidenceID = "student-" + strings.ToLower(string(tier))
		prefix := "tiers/" + strings.ToLower(string(tier)) + "/"
		tierFiles, manifestPath := syntheticM7Evidence(t, bundle, output, review, policy, false, prefix)
		for name, file := range tierFiles {
			files[name] = file
		}
		manifestPaths[tier] = manifestPath
		reviews[tier] = review
	}

	report, err := AuditM7BundleEvidence(M7BundleEvidenceAuditRequest{
		EvidenceFS: files, ManifestPaths: manifestPaths, Bundle: bundle,
		Reviews: reviews, Policy: policy, WordLimits: wordLimits,
	})
	if err != nil {
		t.Fatalf("AuditM7BundleEvidence() error = %v", err)
	}
	if !report.IntegrityVerified || report.Disposition != M7AuditBlocked || report.ExternalIdentityAuthenticated ||
		len(report.Tiers) != len(m7AudienceTiers) || report.AuthorCallID != bundle.AuthorCallID || report.AuthorRunID == bundle.AuthorCallID {
		t.Fatalf("five-tier M7 audit = %#v; want separate exact author call and provider run IDs, integrity, and blocked identity state", report)
	}
	for index, tier := range m7AudienceTiers {
		if report.Tiers[index].Tier != tier || report.Tiers[index].Audit.AuthorOutputSHA256 != report.AuthorOutputSHA256 ||
			report.Tiers[index].Audit.AuthorModelIdentitySHA256 != report.AuthorModelIdentitySHA256 {
			t.Fatalf("tier %s does not share the bundle author execution: %#v", tier, report.Tiers[index])
		}
	}

	manifestList := make([]string, 0, len(m7AudienceTiers))
	for _, tier := range m7AudienceTiers {
		manifestList = append(manifestList, manifestPaths[tier])
	}
	trust := loadSyntheticM7IdentityTrustRegistry(t, files, manifestList...)
	trustedRequest := M7BundleEvidenceAuditRequest{
		EvidenceFS: files, ManifestPaths: manifestPaths, Bundle: bundle,
		Reviews: reviews, Policy: policy, WordLimits: wordLimits, IdentityTrustRegistry: trust,
	}
	receipts, trustedAudit, err := EvaluateBundleWithEvidence(trustedRequest,
		time.Date(2026, time.October, 23, 13, 0, 0, 0, time.UTC))
	if err != nil {
		t.Fatalf("EvaluateBundleWithEvidence(trusted five-tier fixture) = %v", err)
	}
	if len(receipts) != 5 || trustedAudit.Disposition != M7AuditAuthenticated || !trustedAudit.ExternalIdentityAuthenticated {
		t.Fatalf("trusted five-tier result has %d receipts and audit %#v; want five authenticated tier receipts", len(receipts), trustedAudit)
	}
	for index, receipt := range receipts {
		if !receipt.Accepted || receipt.Score <= 0 || receipt.EvidenceManifestPath != manifestPaths[m7AudienceTiers[index]] ||
			receipt.EvidenceManifestSHA256 != trustedAudit.Tiers[index].Audit.ManifestSHA256 {
			t.Fatalf("tier %s receipt = %#v; want accepted and manifest-bound", m7AudienceTiers[index], receipt)
		}
	}
	blockedReceipts, blockedAudit, err := EvaluateBundleWithEvidence(M7BundleEvidenceAuditRequest{
		EvidenceFS: files, ManifestPaths: manifestPaths, Bundle: bundle,
		Reviews: reviews, Policy: policy, WordLimits: wordLimits,
	}, time.Date(2026, time.October, 23, 13, 0, 0, 0, time.UTC))
	if err == nil || blockedReceipts != nil || blockedAudit.Disposition != M7AuditBlocked {
		t.Fatalf("EvaluateBundleWithEvidence(without identity root) = receipts %#v, audit %#v, err %v; want atomic block", blockedReceipts, blockedAudit, err)
	}

	wrongLimits := testWordLimits()
	wrongLimits[domain.TierHighSchool]++
	if _, err := AuditM7BundleEvidence(M7BundleEvidenceAuditRequest{
		EvidenceFS: files, ManifestPaths: manifestPaths, Bundle: bundle,
		Reviews: reviews, Policy: policy, WordLimits: wrongLimits,
	}); err == nil || !strings.Contains(err.Error(), "not bound to the exact evaluated context") {
		t.Fatalf("AuditM7BundleEvidence() with different caller word limits error = %v, want context binding refusal", err)
	}

	manifestPath := manifestPaths[domain.TierDoctorate]
	var manifest domain.M7EvidenceManifestV1
	if err := json.Unmarshal(files[manifestPath].Data, &manifest); err != nil {
		t.Fatalf("decode doctorate manifest for shared-author mutation: %v", err)
	}
	var authorReceipt domain.M7RunReceiptV2
	if err := json.Unmarshal(files[manifest.Author.RunReceiptPath].Data, &authorReceipt); err != nil {
		t.Fatalf("decode doctorate author receipt for shared-author mutation: %v", err)
	}
	authorInput := files[authorReceipt.InputPath].Data
	authorReceipt.InputPath = "shared/author-input-alternate.json"
	files[authorReceipt.InputPath] = &fstest.MapFile{Data: append([]byte(nil), authorInput...)}
	receiptBytes, err := json.Marshal(authorReceipt)
	if err != nil {
		t.Fatalf("encode doctorate author receipt: %v", err)
	}
	files[manifest.Author.RunReceiptPath] = &fstest.MapFile{Data: receiptBytes}
	manifest.Author.RunReceiptSHA256 = digestHex(receiptBytes)
	manifestBytes, err := json.Marshal(manifest)
	if err != nil {
		t.Fatalf("encode doctorate manifest: %v", err)
	}
	files[manifestPath] = &fstest.MapFile{Data: manifestBytes}
	if _, err := AuditM7BundleEvidence(M7BundleEvidenceAuditRequest{
		EvidenceFS: files, ManifestPaths: manifestPaths, Bundle: bundle,
		Reviews: reviews, Policy: policy, WordLimits: wordLimits,
	}); err == nil || !strings.Contains(err.Error(), "do not bind the same author run") {
		t.Fatalf("AuditM7BundleEvidence() with a different author input path error = %v, want shared-author refusal", err)
	}
}

func TestAuditM7BundleEvidenceRejectsMissingTierManifest(t *testing.T) {
	if _, err := AuditM7BundleEvidence(M7BundleEvidenceAuditRequest{
		EvidenceFS: fstest.MapFS{}, ManifestPaths: map[domain.AudienceTier]string{},
		Bundle: testBundle(), Reviews: map[domain.AudienceTier]TierEvaluation{},
		Policy: testPolicy(), WordLimits: testWordLimits(),
	}); err == nil || !strings.Contains(err.Error(), "exactly five manifest paths") {
		t.Fatalf("AuditM7BundleEvidence() with missing tier manifests error = %v, want exact-five refusal", err)
	}
}

func syntheticM7Evidence(
	t *testing.T,
	bundle Bundle,
	output TierOutput,
	review TierEvaluation,
	policy EvaluationPolicy,
	withFakeAttestation bool,
	pathPrefix string,
) (fstest.MapFS, string) {
	t.Helper()
	context, err := expectedM7Context(bundle, output, review, policy, testWordLimits())
	if err != nil {
		t.Fatal(err)
	}
	files := fstest.MapFS{}
	addRun := func(id string, role domain.M7RunRole, ctx domain.M7OutputContext, model domain.M7ModelIdentity, value any) domain.M7ArtifactBinding {
		t.Helper()
		outputBytes, err := json.Marshal(value)
		if err != nil {
			t.Fatal(err)
		}
		inputPath := pathPrefix + "inputs/" + id + ".json"
		if role == domain.M7RunAuthor {
			inputPath = "shared/author-input.json"
		}
		inputBytes := []byte(fmt.Sprintf("{%q:%q}", "request_id", id))
		outputPath := pathPrefix + "outputs/" + id + ".json"
		if role == domain.M7RunAuthor {
			outputPath = "shared/author-output.json"
		}
		files[inputPath] = &fstest.MapFile{Data: inputBytes}
		files[outputPath] = &fstest.MapFile{Data: outputBytes}
		runID := "provider-run-" + id
		receipt := domain.M7RunReceiptV2{
			SchemaVersion: domain.M7RunReceiptSchemaV2,
			CallID:        id,
			RunID:         runID,
			Role:          role,
			Context:       ctx,
			InputPath:     inputPath,
			InputSHA256:   digestHex(inputBytes),
			OutputSHA256:  digestHex(outputBytes),
			Model:         model,
		}
		receiptBytes, err := json.Marshal(receipt)
		if err != nil {
			t.Fatal(err)
		}
		receiptPath := pathPrefix + "receipts/" + id + ".json"
		files[receiptPath] = &fstest.MapFile{Data: receiptBytes}
		return domain.M7ArtifactBinding{
			ID: id, Role: role, RunReceiptPath: receiptPath, RunReceiptSHA256: digestHex(receiptBytes),
			OutputPath: outputPath, OutputSHA256: digestHex(outputBytes),
		}
	}
	identity := func(modelID, version string) domain.M7ModelIdentity {
		model := domain.M7ModelIdentity{
			Provider: "synthetic-provider", Surface: "synthetic-agent-surface", ModelID: modelID,
			ModelVersion: version, PrincipalID: "principal-" + modelID,
		}
		if withFakeAttestation {
			model.Attestation = &domain.M7IdentityAttestation{
				Issuer: "untrusted-test-issuer", KeyID: "not-a-trust-root", Algorithm: "test-only",
				PayloadSHA256: fmt.Sprintf("%064x", 1), Signature: "synthetic-unsigned-placeholder",
			}
		}
		return model
	}

	manifest := domain.M7EvidenceManifestV1{SchemaVersion: domain.M7EvidenceManifestSchemaV1, Context: context}
	authorTiers := make([]domain.M7AuthorTierOutputV1, 0, len(bundle.Tiers))
	for _, tierOutput := range bundle.Tiers {
		authorTiers = append(authorTiers, domain.M7AuthorTierOutputV1{
			Tier: tierOutput.Tier, Text: tierOutput.Render(), CoreInsightID: tierOutput.CoreInsightID, CoreInsight: tierOutput.CoreInsightSentence,
		})
	}
	author := domain.M7AuthorOutputV1{SchemaVersion: domain.M7ObservationOutputSchemaV1, Context: expectedM7BundleContext(context), Tiers: authorTiers}
	manifest.Author = addRun(bundle.AuthorCallID, domain.M7RunAuthor, context,
		identity(bundle.ExpositorModelID, bundle.ExpositorVersion), author)
	roundTripOutput := domain.M7RoundTripOutputV1{
		SchemaVersion: domain.M7ObservationOutputSchemaV1, Context: context, Score: review.RoundTrip.Score,
		RequiredFacts: review.RoundTrip.RequiredFacts, RecoveredFacts: review.RoundTrip.RecoveredFacts,
	}
	manifest.RoundTrip = addRun(review.RoundTrip.EvidenceID, domain.M7RunRoundTrip, context,
		identity(review.RoundTrip.ModelID, review.RoundTrip.ModelVersion), roundTripOutput)
	canonScores := make([]domain.ExpositionMoveScore, len(review.Canon.Scores))
	for index, score := range review.Canon.Scores {
		canonScores[index] = domain.ExpositionMoveScore{Move: score.Move, Score: score.Score}
	}
	canonOutput := domain.M7CanonOutputV1{SchemaVersion: domain.M7ObservationOutputSchemaV1, Context: context, Scores: canonScores}
	manifest.Canon = addRun(review.Canon.EvidenceID, domain.M7RunCanon, context,
		identity(review.Canon.ModelID, review.Canon.ModelVersion), canonOutput)
	leakageOutput := domain.M7LeakageOutputV1{
		SchemaVersion: domain.M7ObservationOutputSchemaV1, Context: context, Method: review.Leakage.Method,
		NgramOverlap: review.Leakage.NgramOverlap, StructureOverlap: review.Leakage.StructureOverlap, Passed: review.Leakage.Passed,
	}
	manifest.Leakage = addRun(review.Leakage.EvidenceID, domain.M7RunLeakage, context,
		identity("leakage-auditor-v1", "v1"), leakageOutput)
	manifest.StudentEvidenceID = review.Student.EvidenceID
	studentRows := []domain.M7StudentAttemptOutputV1{
		{TrialID: "target-1", TaskClass: domain.M7StudentTarget, Arm: domain.M7ArmBaseline, OutcomeScore: review.Student.TargetBaseline, ProgressScore: 0.1, AttemptCount: 2},
		{TrialID: "target-1", TaskClass: domain.M7StudentTarget, Arm: domain.M7ArmExposition, OutcomeScore: review.Student.TargetWithExposition, ProgressScore: 0.2, AttemptCount: 2},
		{TrialID: "transfer-1", TaskClass: domain.M7StudentTransfer, Arm: domain.M7ArmBaseline, OutcomeScore: review.Student.TransferBaseline, ProgressScore: 0.05, AttemptCount: 3},
		{TrialID: "transfer-1", TaskClass: domain.M7StudentTransfer, Arm: domain.M7ArmExposition, OutcomeScore: review.Student.TransferWithExposition, ProgressScore: 0.15, AttemptCount: 3},
	}
	for _, row := range studentRows {
		row.SchemaVersion = domain.M7ObservationOutputSchemaV1
		row.Context = context
		bindingID := row.TrialID + "-" + string(row.Arm)
		manifest.StudentTrials = append(manifest.StudentTrials, addRun(bindingID, domain.M7RunStudentAttempt, context,
			identity(review.Student.ModelID, review.Student.ModelVersion), row))
	}
	manifestBytes, err := json.Marshal(manifest)
	if err != nil {
		t.Fatal(err)
	}
	manifestPath := pathPrefix + "manifest.json"
	files[manifestPath] = &fstest.MapFile{Data: manifestBytes}
	return files, manifestPath
}

func TestAuditM7EvidenceRejectsCallerLimitsThatDifferFromTypedContext(t *testing.T) {
	bundle := testBundle()
	output := bundle.Tiers[0]
	policy := testPolicy()
	review := testEvaluation(bundle, output, policy)
	files, manifestPath := syntheticM7Evidence(t, bundle, output, review, policy, false, "")
	wrongLimits := testWordLimits()
	wrongLimits[output.Tier]++
	if _, err := AuditM7Evidence(files, manifestPath, bundle, output, review, policy, wrongLimits); err == nil ||
		!strings.Contains(err.Error(), "not bound to the exact evaluated context") {
		t.Fatalf("AuditM7Evidence() with different caller word limits error = %v, want context binding refusal", err)
	}
}

func digestHex(data []byte) string {
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:])
}

func testEvidenceTime() time.Time {
	return time.Date(2026, time.October, 20, 12, 0, 0, 0, time.UTC)
}
