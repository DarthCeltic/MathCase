(function (root, factory) {
  const api = factory();
  if (typeof module === "object" && module.exports) module.exports = api;
  else root.MathCaseStatementReviewHandoff = api;
})(typeof globalThis !== "undefined" ? globalThis : this, function () {
  "use strict";

  const DIGEST = /^[0-9a-f]{64}$/;
  const EVIDENCE_ID = /^[a-z0-9][a-z0-9_-]{2,95}$/;
  const DISPOSITIONS = new Set(["PASS", "MISMATCH", "OUT_OF_SCOPE", "NEEDS_REVIEW"]);

  function stableJson(value) {
    if (Array.isArray(value)) return "[" + value.map(stableJson).join(",") + "]";
    if (value && typeof value === "object") {
      return "{" + Object.keys(value).sort().map(key => JSON.stringify(key) + ":" + stableJson(value[key])).join(",") + "}";
    }
    return JSON.stringify(value);
  }

  function utf8(value) {
    return new TextEncoder().encode(String(value));
  }

  function exactKeys(value, keys) {
    return Boolean(value && typeof value === "object" && !Array.isArray(value)
      && Object.keys(value).length === keys.length && keys.every(key => Object.hasOwn(value, key)));
  }

  function validDate(value) {
    return typeof value === "string" && value.length <= 80 && Number.isFinite(Date.parse(value));
  }

  async function verifySourceContext(request, sha256) {
    const context = request?.source_context;
    const contextKeys = ["schema_version", "status", "source_id", "item_locator", "source_revision", "source_file_sha256", "declaration_name", "declaration_line", "declaration_signature", "context_lines", "inherited_assumptions", "context_sha256", "availability_note"];
    const lineKinds = new Set(["SECTION", "NAMESPACE", "INHERITED_TYPE_VARIABLE", "INHERITED_TYPE_CLASS_ASSUMPTION", "DECLARATION_SIGNATURE"]);
    const validLines = (values, maximum = 128) => Array.isArray(values) && values.length <= maximum && values.every(item => exactKeys(item, ["line", "kind", "text"])
      && Number.isSafeInteger(item.line) && item.line > 0 && lineKinds.has(item.kind)
      && typeof item.text === "string" && item.text.trim() && item.text.length <= 2000);
    if (!exactKeys(context, contextKeys)
      || context.schema_version !== "mathcase-source-bound-declaration-context-v1"
      || !["SOURCE_BYTES_REOPENED", "SOURCE_CONTEXT_UNAVAILABLE", "SOURCE_HASH_MISMATCH", "SOURCE_DECLARATION_NOT_UNIQUE", "SOURCE_DECLARATION_MISMATCH"].includes(context.status)
      || typeof context.source_id !== "string"
      || typeof context.item_locator !== "string"
      || typeof context.source_revision !== "string"
      || !DIGEST.test(context.source_file_sha256 || "")
      || typeof context.declaration_name !== "string" || !context.declaration_name.trim() || context.declaration_name.length > 256
      || !validLines(context.context_lines)
      || !validLines(context.inherited_assumptions, 64)
      || typeof context.availability_note !== "string" || !context.availability_note.trim()) {
      throw new Error("The pinned declaration source context has an unsupported or incomplete shape.");
    }
    const source = request.source_references.find(value => value?.source_id === context.source_id);
    if (!source || source.item_locator !== context.item_locator || source.revision !== context.source_revision || source.content_sha256 !== context.source_file_sha256) {
      throw new Error("The declaration source context does not match an exact pinned M0 source.");
    }
    if (context.status === "SOURCE_BYTES_REOPENED") {
      const declaration = /\b(?:theorem|lemma)\s+([A-Za-z][A-Za-z0-9_'.]*)\b/.exec(request.lean_statement);
      const contextBody = { ...context };
      delete contextBody.context_sha256;
      if (!Number.isSafeInteger(context.declaration_line) || context.declaration_line < 1
        || !context.declaration_signature || context.declaration_signature !== request.lean_statement
        || !declaration || context.declaration_name !== declaration[1]
        || !DIGEST.test(context.context_sha256 || "")
        || await sha256(utf8(stableJson(contextBody))) !== context.context_sha256
        || !context.inherited_assumptions.every(item => item.kind === "INHERITED_TYPE_CLASS_ASSUMPTION")
        || context.inherited_assumptions.some(item => !context.context_lines.some(line => stableJson(line) === stableJson(item)))
        || context.context_lines.filter(item => item.kind === "DECLARATION_SIGNATURE").length !== 1
        || !context.context_lines.some(item => item.kind === "DECLARATION_SIGNATURE" && item.line === context.declaration_line && item.text === context.declaration_signature)) {
        throw new Error("The source context digest or declaration signature does not reopen against this request.");
      }
    } else if (context.declaration_line !== null || context.declaration_signature !== ""
      || context.context_sha256 !== null || context.context_lines.length || context.inherited_assumptions.length) {
      throw new Error("Unavailable source context cannot supply inherited assumptions.");
    }
    return context;
  }

  async function verifyRequest(request, sha256) {
    if (typeof sha256 !== "function") throw new Error("A SHA-256 function is required to verify the request.");
    const requestKeys = ["schema_version", "request_schema", "status", "problem_id", "problem_title", "problem_statement_sha256", "informal_statement", "lean_statement", "m0_binding", "source_references", "source_context", "review_questions", "review_scope", "reviewer_trust", "boundary", "request_sha256"];
    if (!exactKeys(request, requestKeys)
      || request.schema_version !== "mathcase-statement-review-request-v1"
      || request.request_schema !== "schemas/statement-review-request-v1.schema.json"
      || request.status !== "PREPARATION_ONLY"
      || typeof request.problem_id !== "string"
      || !DIGEST.test(request.problem_statement_sha256 || "")
      || !DIGEST.test(request.request_sha256 || "")
      || typeof request.informal_statement !== "string"
      || typeof request.lean_statement !== "string"
      || !request.informal_statement.trim() || !request.lean_statement.trim()
      || !request.m0_binding || !DIGEST.test(request.m0_binding.snapshot_file_sha256 || "")
      || !DIGEST.test(request.m0_binding.snapshot_content_sha256 || "")
      || !Array.isArray(request.source_references) || !request.source_references.length
      || !Array.isArray(request.review_questions) || request.review_questions.length < 4 || request.review_questions.length > 8
      || request.review_questions.some(question => typeof question !== "string" || !question.trim() || question.length > 1000)
      || !Array.isArray(request.review_scope) || !request.review_scope.length
      || request.reviewer_trust?.identity_status !== "NOT_VERIFIED"
      || request.reviewer_trust?.response_schema !== "schemas/statement-review-response-v1.schema.json"
      || request.boundary?.gate_effect !== "NONE"
      || request.boundary?.queue_effect !== "NONE"
      || request.boundary?.solver_dispatch !== "NOT_AUTHORIZED_BY_THIS_PACKET") {
      throw new Error("The pinned statement-review request has an unsupported or incomplete shape.");
    }
    const m0Binding = request.m0_binding;
    const requiredM0Keys = ["snapshot_path", "snapshot_file_sha256", "snapshot_content_sha256", "current_intake_source_uses"];
    const expectedM0Keys = m0Binding?.queue_item_binding === undefined ? requiredM0Keys : [...requiredM0Keys, "queue_item_binding"];
    if (!exactKeys(m0Binding, expectedM0Keys)
      || typeof m0Binding.snapshot_path !== "string" || !m0Binding.snapshot_path.trim()
      || !DIGEST.test(m0Binding.snapshot_content_sha256 || "")
      || !Array.isArray(m0Binding.current_intake_source_uses) || !m0Binding.current_intake_source_uses.length
      || m0Binding.current_intake_source_uses.some(use => typeof use !== "string" || !use.trim())) {
      throw new Error("The pinned M0 binding has an unsupported or incomplete shape.");
    }
    const queueBinding = m0Binding.queue_item_binding;
    if (queueBinding !== undefined && (!exactKeys(queueBinding, ["item_id", "case_id", "intake_dossier_sha256"])
      || typeof queueBinding.item_id !== "string" || !/^[a-zA-Z0-9][a-zA-Z0-9._-]{0,95}$/.test(queueBinding.item_id)
      || typeof queueBinding.case_id !== "string" || !/^[a-zA-Z0-9][a-zA-Z0-9._-]{0,95}$/.test(queueBinding.case_id)
      || !DIGEST.test(queueBinding.intake_dossier_sha256 || ""))) {
      throw new Error("The queue item binding does not match one exact saved intake dossier.");
    }
    await verifySourceContext(request, sha256);
    const body = { ...request };
    delete body.request_sha256;
    if (await sha256(utf8(stableJson(body))) !== request.request_sha256) {
      throw new Error("The statement-review request hash does not match its contents.");
    }
    return request;
  }

  function createResponseTemplate(request) {
    if (!request || request.schema_version !== "mathcase-statement-review-request-v1"
      || !DIGEST.test(request.request_sha256 || "") || !DIGEST.test(request.problem_statement_sha256 || "")) {
      throw new Error("Cannot make a response template without a bound review request.");
    }
    return {
      schema_version: "mathcase-statement-review-response-v1",
      status: "UNVERIFIED_RESPONSE_DRAFT",
      problem_id: request.problem_id,
      problem_statement_sha256: request.problem_statement_sha256,
      request_sha256: request.request_sha256,
      reviewer: { reviewer_id: "", issuer: "", subject: "" },
      recorded_at: "",
      disposition: "",
      back_translation: "",
      rationale: "",
      differences: [],
      unresolved_assumptions: [],
      reviewer_attestation: {
        schema_version: "mathcase-reviewer-attestation-v1",
        evidence_id: "",
        reviewer_id: "",
        issuer: "",
        subject: "",
        problem_statement_sha256: request.problem_statement_sha256,
        recorded_at: ""
      },
      response_schema: "schemas/statement-review-response-v1.schema.json",
      trust_registry_schema: "schemas/reviewer-trust-registry-v1.schema.json",
      boundary: {
        identity_status: "NOT_VERIFIED",
        gate_effect: "NONE",
        queue_effect: "NONE",
        training_use: "NOT_AUTHORIZED"
      }
    };
  }

  function ownerExplanation(request) {
    if (!request || typeof request.problem_id !== "string") {
      throw new Error("Cannot explain an unbound statement-review request.");
    }
    const familiarExamples = {
      mathlib_mul_one_div: {
        problem_statement_sha256: "22c462c37589ae2d83868591c2f6afde2439cd54b669af127f06b0c2411a4fa8",
        lean_statement: "theorem mul_one_div (x y : G) : x * (1 / y) = x / y",
        source_id: "mathlib_group_basic_v4331",
        source_revision: "0df444a360eaa60ab8c11dca51a86af692955474",
        source_sha256: "1ba194c84c72d56d485334bb05b2a943627c3a73de91a0b939ab6fd5ea17d1b1",
        declaration_name: "mul_one_div",
        goal: "Explore when multiplying by a reciprocal can be rewritten as division.",
        example: "12 × (1 ÷ 3) = 12 ÷ 3 = 4",
        another_example: "8 × (1 ÷ 2) = 8 ÷ 2 = 4",
        example_scope: "An ordinary nonzero-number illustration only. It is not a proof and does not show the full general scope.",
        why_it_matters: "This rewrite lets a solver connect multiplication and division in later algebra steps.",
        expert_scope: "The full statement ranges over x and y in G with the exact DivInvMonoid G assumptions inherited from the pinned source. Do not add a y ≠ 0 premise or infer ordinary division by zero from the example."
      },
      "nat-add-assoc": {
        problem_statement_sha256: "8816c65f45064123345aea7ca20f21156c001e8fdb1c5897b88e5123f32cd7b6",
        lean_statement: "forall (n m k : Nat), (n + m) + k = n + (m + k)",
        source_id: "lean4-init-nat-basic",
        source_revision: "819816b2e0a3bf405af45ae5c7af2491d8f5bee6",
        source_sha256: "92edcd298633bc57f70cf6c9cea73a3b6f984b91b3c8cc8fcc72f57bada0ee36",
        declaration_name: "Nat.add_assoc",
        goal: "Explore why regrouping three whole numbers does not change their sum.",
        example: "(2 + 3) + 4 = 2 + (3 + 4) = 9",
        another_example: "(1 + 6) + 2 = 1 + (6 + 2) = 9",
        example_scope: "A small whole-number illustration only. It is not a proof of the general rule.",
        why_it_matters: "Regrouping can make later arithmetic and algebra steps easier.",
        expert_scope: "The full statement, binders, and source assumptions remain available in the expert details below."
      },
      mathlib_list_mem_pair_v4331: {
        problem_statement_sha256: "8032f5b051948e2a71df53f5f73305e1ef6a652a333209cb3117133297a5938c",
        lean_statement: "∀ {α : Type u} {a b c : α}, a ∈ [b, c] ↔ a = b ∨ a = c",
        source_id: "mathlib_list_basic_v4331",
        source_revision: "0df444a360eaa60ab8c11dca51a86af692955474",
        source_sha256: "a5490adaf9886c84cf0ffad009267ea9324bfa6c9b81b529454158c19eedd501",
        declaration_name: "List.mem_pair",
        source_declaration_signature: "lemma List.mem_pair {α : Type*} {a b c : α} : a ∈ [b, c] ↔ a = b ∨ a = c",
        goal: "Explore what it means for a value to appear in a two-item list.",
        example: "In [3, 5], the value 5 appears because it matches one of the two entries.",
        another_example: "In [3, 5], the value 4 does not appear because it matches neither entry.",
        example_scope: "A tiny list illustration only. It is not a proof of both directions of the rule.",
        why_it_matters: "Breaking list membership into the two possible entries helps explain case-based proofs.",
        expert_scope: "The full statement, binders, and source assumptions remain available in the expert details below."
      }
    };
    const prepared = familiarExamples[request.problem_id];
    if (prepared && matchesPreparedExample(request, prepared)) return prepared;
    return {
      goal: typeof request.problem_title === "string" && request.problem_title.trim()
        ? request.problem_title.trim()
        : "Understand the exact rule in this saved case.",
      example: "A safe worked example has not been prepared for this case yet.",
      another_example: "",
      example_scope: "No example is shown so the explanation cannot silently change the statement's scope.",
      why_it_matters: "A plain-language explanation helps clarify the intended question before any technical review or proof attempt.",
      expert_scope: "Open the pinned statement and source context below for the exact assumptions."
    };
  }

  function matchesPreparedExample(request, prepared) {
    const source = Array.isArray(request.source_references)
      ? request.source_references.find(reference => reference && reference.source_id === prepared.source_id)
      : null;
    const context = request.source_context;
    const declarationSignature = prepared.source_declaration_signature || prepared.lean_statement;
    return request.problem_statement_sha256 === prepared.problem_statement_sha256
      && request.lean_statement === prepared.lean_statement
      && source?.revision === prepared.source_revision
      && source?.content_sha256 === prepared.source_sha256
      && context?.source_revision === prepared.source_revision
      && context?.source_file_sha256 === prepared.source_sha256
      && context?.declaration_name === prepared.declaration_name
      && context?.declaration_signature === declarationSignature;
  }

  function buildQueueReviewRoute(itemId) {
    if (typeof itemId !== "string" || !/^[a-z0-9][a-z0-9_-]{2,95}$/.test(itemId)) {
      throw new Error("Cannot route to an invalid queue item ID.");
    }
    return "#intake/review/" + encodeURIComponent(itemId);
  }

  function parseQueueReviewRoute(hash) {
    const value = String(hash || "").replace(/^#/, "");
    if (value === "intake/review") throw new Error("The intake review URL must identify one exact queue item.");
    if (!value.startsWith("intake/review/")) return null;
    const parts = value.split("/");
    if (parts.length !== 3 || parts[0] !== "intake" || parts[1] !== "review") {
      throw new Error("The intake review URL must identify one exact queue item.");
    }
    let itemId;
    try {
      itemId = decodeURIComponent(parts[2]);
    } catch {
      throw new Error("The intake review URL contains an invalid queue item ID.");
    }
    if (!/^[a-z0-9][a-z0-9_-]{2,95}$/.test(itemId)) {
      throw new Error("The intake review URL contains an invalid queue item ID.");
    }
    return itemId;
  }

  function createOwnerFeedbackRecord(request, ownerIntent, understandingChoice, recordedAt = new Date().toISOString()) {
    const intents = new Set(["EXPLORE_AS_WRITTEN", "CHANGE_QUESTION", "UNSURE"]);
    const choices = new Set(["EXPLAIN_ANOTHER_EXAMPLE", "UNDERSTAND_EXAMPLE", "REQUEST_QUALIFIED_REVIEW"]);
    if (!request || typeof request.problem_id !== "string"
      || !DIGEST.test(request.problem_statement_sha256 || "")
      || !DIGEST.test(request.request_sha256 || "")
      || !DIGEST.test(request.m0_binding?.snapshot_file_sha256 || "")
      || !intents.has(ownerIntent) || !choices.has(understandingChoice)
      || !validDate(recordedAt)) {
      throw new Error("Owner feedback must use the exact open request and one of the supported choices.");
    }
    const queue = request.m0_binding.queue_item_binding;
    return {
      schema_version: "mathcase-owner-intent-feedback-v1",
      status: "OWNER_FEEDBACK_ONLY",
      source: "OWNER_UI_RESPONSE",
      problem_id: request.problem_id,
      problem_statement_sha256: request.problem_statement_sha256,
      request_sha256: request.request_sha256,
      m0_snapshot_file_sha256: request.m0_binding.snapshot_file_sha256,
      queue_item_binding: queue ? {
        item_id: queue.item_id,
        case_id: queue.case_id,
        intake_dossier_sha256: queue.intake_dossier_sha256
      } : null,
      owner_intent: ownerIntent,
      understanding_choice: understandingChoice,
      recorded_at_utc: recordedAt,
      assistance_provenance: "NOT_ASSESSED; this is not a reviewer attestation",
      boundary: {
        qualified_statement_review: "STILL_REQUIRED",
        proof_checking: "SEPARATE_STEP",
        trusted_mathematical_acceptance: false,
        statement_gate_effect: "NONE",
        queue_effect: "NONE",
        permission_or_budget_effect: "NONE",
        proof_execution_effect: "NONE",
        training_use: "NOT_AUTHORIZED"
      }
    };
  }

  async function createHandoffEnvelope(request, sha256, exportedAt = new Date().toISOString()) {
    await verifyRequest(request, sha256);
    const body = {
      schema_version: "mathcase-statement-review-handoff-v1",
      exported_at_utc: exportedAt,
      request,
      response_template: createResponseTemplate(request),
      boundary: {
        status: "PREPARATION_ONLY",
        note: "This package contains no reviewer finding. A returned draft is not trusted until its exact attestation bytes are independently pinned by the host-controlled trust registry.",
        gate_effect: "NONE",
        queue_effect: "NONE",
        solver_dispatch: "NOT_AUTHORIZED_BY_THIS_PACKET"
      }
    };
    const envelope = { ...body, envelope_sha256: await sha256(utf8(stableJson(body))) };
    if (!DIGEST.test(envelope.envelope_sha256)) throw new Error("The handoff envelope digest is invalid.");
    return envelope;
  }

  async function validateResponseDraft(response, request, sha256) {
    await verifyRequest(request, sha256);
    const expectedKeys = ["schema_version", "status", "problem_id", "problem_statement_sha256", "request_sha256", "reviewer", "recorded_at", "disposition", "back_translation", "rationale", "differences", "unresolved_assumptions", "reviewer_attestation", "response_schema", "trust_registry_schema", "boundary"];
    if (!exactKeys(response, expectedKeys)
      || response.schema_version !== "mathcase-statement-review-response-v1"
      || response.status !== "UNVERIFIED_RESPONSE_DRAFT"
      || response.problem_id !== request.problem_id
      || response.problem_statement_sha256 !== request.problem_statement_sha256
      || response.request_sha256 !== request.request_sha256
      || response.response_schema !== "schemas/statement-review-response-v1.schema.json"
      || response.trust_registry_schema !== "schemas/reviewer-trust-registry-v1.schema.json"
      || !exactKeys(response.reviewer, ["reviewer_id", "issuer", "subject"])
      || !exactKeys(response.reviewer_attestation, ["schema_version", "evidence_id", "reviewer_id", "issuer", "subject", "problem_statement_sha256", "recorded_at"])
      || response.reviewer_attestation.schema_version !== "mathcase-reviewer-attestation-v1"
      || response.reviewer_attestation.problem_statement_sha256 !== request.problem_statement_sha256
      || !exactKeys(response.boundary, ["identity_status", "gate_effect", "queue_effect", "training_use"])
      || response.boundary?.identity_status !== "NOT_VERIFIED"
      || response.boundary?.gate_effect !== "NONE"
      || response.boundary?.queue_effect !== "NONE"
      || response.boundary?.training_use !== "NOT_AUTHORIZED") {
      throw new Error("The returned response does not match this exact review request or response schema.");
    }
    for (const key of ["reviewer_id", "issuer", "subject"]) {
      if (typeof response.reviewer[key] !== "string" || !response.reviewer[key].trim() || response.reviewer[key].length > 160) {
        throw new Error("The reviewer response is incomplete: reviewer identity fields are required.");
      }
      if (response.reviewer_attestation[key] !== response.reviewer[key]) {
        throw new Error("The reviewer attestation identity fields do not match the response.");
      }
    }
    if (!EVIDENCE_ID.test(response.reviewer_attestation.evidence_id || "")
      || !validDate(response.recorded_at)
      || response.reviewer_attestation.recorded_at !== response.recorded_at
      || !DISPOSITIONS.has(response.disposition)
      || typeof response.back_translation !== "string" || !response.back_translation.trim()
      || typeof response.rationale !== "string" || !response.rationale.trim()
      || !Array.isArray(response.differences) || response.differences.some(value => typeof value !== "string" || !value.trim())
      || !Array.isArray(response.unresolved_assumptions) || response.unresolved_assumptions.some(value => typeof value !== "string" || !value.trim())) {
      throw new Error("The reviewer response is incomplete or contains unsupported findings.");
    }
    const attestationText = JSON.stringify(response.reviewer_attestation, null, 2) + "\n";
    const attestationSha256 = await sha256(utf8(attestationText));
    if (!DIGEST.test(attestationSha256)) throw new Error("The attestation digest could not be calculated.");
    return {
      problem_id: response.problem_id,
      problem_statement_sha256: response.problem_statement_sha256,
      request_sha256: response.request_sha256,
      disposition: response.disposition,
      reviewer_id: response.reviewer.reviewer_id,
      attestation_evidence_id: response.reviewer_attestation.evidence_id,
      attestation_sha256: attestationSha256,
      attestation_text: attestationText,
      identity_status: "NOT_VERIFIED",
      gate_effect: "NONE",
      queue_effect: "NONE"
    };
  }

  return { stableJson, verifySourceContext, verifyRequest, createResponseTemplate, ownerExplanation, buildQueueReviewRoute, parseQueueReviewRoute, createOwnerFeedbackRecord, createHandoffEnvelope, validateResponseDraft };
});
