(function (root, factory) {
  const api = factory();
  if (typeof module === "object" && module.exports) module.exports = api;
  else root.MathCaseReviewHandoff = api;
})(typeof globalThis !== "undefined" ? globalThis : this, function () {
  "use strict";

  const DIGEST = /^[0-9a-f]{64}$/;
  const ANSWERS = new Set(["YES", "NO", "UNSURE", "NOT_REVIEWED"]);
  const GUIDE = [
    {
      id: "meaning",
      prompt: "Can a reader say what membership in this two-entry list means without changing the theorem's inclusive ‘or’?"
    },
    {
      id: "both_directions",
      prompt: "Does the explanation make clear why membership gives one of the two equalities, and why either equality gives membership?"
    },
    {
      id: "assumptions",
      prompt: "Are the element and type assumptions visible, with no extra distinctness or decidable-equality requirement added?"
    },
    {
      id: "example",
      prompt: "Would a small example help a reader follow the claim, while staying separate from proof for arbitrary elements?"
    },
    {
      id: "proof_compression",
      prompt: "Is the checked `by simp` proof distinguished from the fuller mathematical explanation of both directions?"
    }
  ];

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

  function html(value) {
    return String(value ?? "").replace(/[&<>\"']/g, character => ({
      "&": "&amp;", "<": "&lt;", ">": "&gt;", "\"": "&quot;", "'": "&#39;"
    })[character]);
  }

  function objectWithExactKeys(value, keys) {
    return Boolean(value && typeof value === "object" && !Array.isArray(value)
      && Object.keys(value).length === keys.length && keys.every(key => Object.hasOwn(value, key)));
  }

  function validateDraft(draft, packet) {
    if (draft === null) return;
    const keys = ["schema_version", "id", "created_at", "status", "case_id", "selected_run_id", "packet_sha256", "content_bindings", "reviewer_label", "identity_status", "findings", "supersedes_draft_id", "gate_effect", "training_use"];
    if (!objectWithExactKeys(draft, keys)
      || draft.schema_version !== "mathcase-review-packet-draft-v1"
      || draft.status !== "DRAFT"
      || draft.case_id !== packet.case_id
      || draft.selected_run_id !== packet.selected_run_id
      || draft.packet_sha256 !== packet.packet_sha256
      || stableJson(draft.content_bindings) !== stableJson(packet.content_bindings)
      || draft.identity_status !== "UNVERIFIED_SELF_DESCRIPTION"
      || draft.gate_effect !== "NONE"
      || draft.training_use !== "NOT_AUTHORIZED"
      || typeof draft.reviewer_label !== "string"
      || !Array.isArray(draft.findings)) {
      throw new Error("The saved DRAFT does not match this exact review packet.");
    }
    const questions = Array.isArray(packet.review_questions) ? packet.review_questions : [];
    if (draft.findings.length !== questions.length || draft.findings.some((finding, index) => {
      return !objectWithExactKeys(finding, ["question_id", "answer", "source_location", "note"])
        || finding.question_id !== questions[index]?.id
        || !ANSWERS.has(finding.answer)
        || typeof finding.source_location !== "string"
        || typeof finding.note !== "string";
    })) throw new Error("The saved DRAFT findings do not match the packet's exact ordered questions.");
  }

  function readingGuideForPacket(packet) {
    if (packet?.case_id !== "bootstrap-dossier-0000" || packet?.problem_id !== "mathlib_list_mem_pair_v4331") return null;
    return {
      schema_version: "mathcase-unscored-reading-guide-v1",
      status: "UNSCORED_REFERENCE",
      case_id: packet.case_id,
      problem_id: packet.problem_id,
      packet_sha256: packet.packet_sha256,
      source_note: "Unscored prompts based on the user-supplied MathCase taste and style playbook. They are not review answers, canonical labels, training data, or evidence of reader understanding.",
      prompts: GUIDE
    };
  }

  async function buildEnvelope(view, expectedPacket, sha256, exportedAt = new Date().toISOString()) {
    if (typeof sha256 !== "function") throw new Error("A SHA-256 function is required to build the handoff.");
    if (!view || view.schema_version !== "mathcase-review-packet-view-v1" || !view.packet) {
      throw new Error("The fresh review-packet view is missing or unsupported.");
    }
    const packet = view.packet;
    if (packet.schema_version !== "mathcase-review-packet-v1" || packet.status !== "DRAFT"
      || packet.case_id !== expectedPacket?.case_id
      || packet.problem_id !== expectedPacket?.problem_id
      || packet.selected_run_id !== expectedPacket?.selected_run_id
      || packet.packet_sha256 !== expectedPacket?.packet_sha256) {
      throw new Error("The freshly reopened packet no longer matches the selected case and run.");
    }
    if (!DIGEST.test(packet.packet_sha256 || "") || !Array.isArray(packet.expositions) || packet.expositions.length !== 5
      || !Array.isArray(packet.sources) || !Array.isArray(packet.review_questions)) {
      throw new Error("The packet is missing required bindings, evidence references, or all five explanation tiers.");
    }
    const packetBody = { ...packet };
    delete packetBody.packet_sha256;
    if (await sha256(utf8(stableJson(packetBody))) !== packet.packet_sha256) {
      throw new Error("The freshly reopened review packet failed its content hash check.");
    }
    const proof = packet.proof || {}, m4Run = proof.m4_run || {}, bindings = packet.content_bindings || {};
    if (typeof proof.text !== "string" || !DIGEST.test(proof.sha256 || "")
      || await sha256(utf8(proof.text)) !== proof.sha256
      || proof.sha256 !== bindings.proof_sha256
      || m4Run.status !== "PASSED" || m4Run.kernel_passed !== true || m4Run.axioms_passed !== true
      || m4Run.proof_sha256 !== proof.sha256
      || m4Run.statement_sha256 !== bindings.m4_statement_sha256
      || m4Run.receipt_sha256 !== bindings.m4_receipt_sha256) {
      throw new Error("The selected Lean proof or its M4 pass receipt does not match the packet bindings.");
    }
    if (proof.structure_metrics?.state !== "EXECUTED_PASS"
      || packet.proof_lineage?.m6_metrics?.linked_to_selected_run !== true
      || packet.proof_lineage?.m6_metrics?.source_matches_selected_m4_generated_source !== true
      || proof.structure_metrics.receipt_sha256 !== bindings.m6_metrics_receipt_sha256
      || proof.structure_metrics.run_receipt_sha256 !== bindings.m6_run_receipt_sha256) {
      throw new Error("Exact-source M6 metrics are not linked to the selected M4 run.");
    }
    for (const tier of packet.expositions) {
      if (!tier || typeof tier.tier !== "string" || typeof tier.text !== "string"
        || !tier.structured_output || !DIGEST.test(tier.text_sha256 || "")
        || !DIGEST.test(tier.structured_output_sha256 || "")
        || await sha256(utf8(tier.text)) !== tier.text_sha256
        || await sha256(utf8(stableJson(tier.structured_output))) !== tier.structured_output_sha256) {
        throw new Error("An explanation tier failed its exact text or structured-output hash check.");
      }
    }
    const savedDraft = view.saved_draft ?? null;
    validateDraft(savedDraft, packet);
    if (!Number.isSafeInteger(view.stale_saved_draft_count) || view.stale_saved_draft_count < 0
      || !DIGEST.test(view.store_head_sha256 || "")
      || view.store_path !== "data/local/staging/case-feedback/review-packet-drafts.jsonl") {
      throw new Error("The fresh draft-journal readback is incomplete or malformed.");
    }
    const readingGuide = readingGuideForPacket(packet);
    const payload = {
      packet,
      saved_draft: savedDraft,
      draft_journal: {
        store_path: view.store_path,
        store_head_sha256: view.store_head_sha256,
        stale_saved_draft_count: view.stale_saved_draft_count,
        stale_draft_answers_exported: false
      },
      evidence_references_not_embedded: packet.sources.map(reference => ({
        reference,
        status: "REFERENCED_NOT_EMBEDDED"
      })),
      reading_guide: readingGuide,
      boundary: {
        review_status: "DRAFT_ONLY",
        gate_effect: "NONE",
        training_use: "NOT_AUTHORIZED",
        statement_fidelity: packet.source_statement?.statement_audit?.status || "NOT_REVIEWED",
        independent_review: "NOT_ESTABLISHED",
        note: "This handoff packages current evidence and optional unscored reading prompts. It does not accept a review, change a gate, or grant rights. Referenced source and receipt files are not embedded.",
        exported_at_utc: exportedAt
      }
    };
    const payloadSha256 = await sha256(utf8(stableJson(payload)));
    if (!DIGEST.test(payloadSha256)) throw new Error("The handoff payload digest could not be computed.");
    return {
      schema_version: "mathcase-review-handoff-v1",
      exported_at_utc: exportedAt,
      payload_sha256: payloadSha256,
      payload
    };
  }

  function pre(title, value) {
    return "<section><h2>" + html(title) + "</h2><pre>" + html(typeof value === "string" ? value : JSON.stringify(value, null, 2)) + "</pre></section>";
  }

  function renderStandaloneHtml(envelope) {
    if (!envelope || envelope.schema_version !== "mathcase-review-handoff-v1" || !envelope.payload?.packet) {
      throw new Error("Cannot render an unsupported review handoff.");
    }
    const payload = envelope.payload;
    const packet = payload.packet;
    const draft = payload.saved_draft;
    const answers = new Map((draft?.findings || []).map(item => [item.question_id, item]));
    const locator = packet.source_statement?.locator || {};
    const proof = packet.proof || {};
    const proofRun = proof.m4_run || {};
    const metrics = proof.structure_metrics || {};
    const tiers = (packet.expositions || []).map(tier => {
      const text = "<section class=\"tier\"><h3>" + html(tier.tier) + " explanation draft</h3><pre>" + html(tier.text) + "</pre><details><summary>Structured output</summary><pre>" + html(JSON.stringify(tier.structured_output, null, 2)) + "</pre></details><p>Tier text SHA-256: <code>" + html(tier.text_sha256) + "</code><br>Structured-output SHA-256: <code>" + html(tier.structured_output_sha256) + "</code></p></section>";
      return text;
    }).join("");
    const questions = (packet.review_questions || []).map(question => {
      const finding = answers.get(question.id);
      return "<li><strong>" + html(question.id) + ":</strong> " + html(question.prompt)
        + "<p>Answer: " + html(finding?.answer || "NOT_REVIEWED") + "</p>"
        + "<p>Location: " + html(finding?.source_location || "Not provided") + "</p>"
        + "<pre>" + html(finding?.note || "No saved finding.") + "</pre></li>";
    }).join("");
    const references = (payload.evidence_references_not_embedded || []).map(item => "<li><pre>" + html(JSON.stringify(item.reference, null, 2)) + "</pre><strong>REFERENCED_NOT_EMBEDDED</strong></li>").join("");
    const guide = payload.reading_guide
      ? "<section><h2>Unscored reading guide</h2><p>" + html(payload.reading_guide.source_note) + "</p><ul>" + payload.reading_guide.prompts.map(item => "<li><strong>" + html(item.id.replace(/_/g, " ")) + ":</strong> " + html(item.prompt) + "</li>").join("") + "</ul><p>These prompts have no score and do not enter the saved review-question schema.</p></section>"
      : "";
    const sourceText = packet.source_statement?.text || "";
    const formalText = packet.formal_statement?.text || "";
    const statusText = packet.review_state || {};
    const m6Lineage = packet.proof_lineage?.m6_metrics || {};
    const sourceAudit = packet.source_statement?.statement_audit || {};
    const sections = [
      "<section><h2>Source statement</h2><p>" + html(sourceText) + "</p><p>Statement audit: " + html(sourceAudit.status || "NOT_REVIEWED") + "</p><p>Source locator: " + html(locator.title || locator.url || "Not recorded") + " · revision " + html(locator.revision || "Not recorded") + " · license " + html(locator.license || "Not recorded") + "</p><p>" + html(packet.source_statement?.assumptions_note || "") + "</p></section>",
      pre("Formal statement", formalText),
      "<section><h2>Checked proof</h2><p>Run status: " + html(proofRun.status || "Not recorded") + " · kernel passed: " + html(proofRun.kernel_passed) + " · axiom audit passed: " + html(proofRun.axioms_passed) + "</p><p>Lean version: " + html(proofRun.lean_version || "Not recorded") + " · observed axioms: " + html((proof.observed_axioms || []).join(", ") || "none recorded") + "</p><pre>" + html(proof.text || "") + "</pre><p>Proof text SHA-256: <code>" + html(proof.sha256 || "Not recorded") + "</code></p></section>",
      "<section><h2>Proof lineage and M6 observations</h2><p>" + html(packet.proof_lineage?.note || "") + "</p><p>M6 state: " + html(metrics.state || "Not linked") + " · linked to selected run: " + html(m6Lineage.linked_to_selected_run) + "</p>" + pre("M6 structure metrics", metrics) + pre("Proof lineage", packet.proof_lineage || {}) + "</section>",
      "<section><h2>Five explanation drafts</h2><p>Every tier below is candidate text, not independently reviewed.</p>" + tiers + "</section>",
      "<section><h2>Review questions and saved answers</h2><p>Saved answers are included only when they match this exact packet hash. This export excludes stale drafts.</p><ol>" + questions + "</ol></section>",
      "<section><h2>Current review holds</h2>" + pre("Review state", statusText) + "<p>Packet status: " + html(packet.status) + " · gate effect: NONE · training use: NOT_AUTHORIZED.</p></section>",
      guide,
      "<section><h2>Evidence references not embedded</h2><p>These paths and hashes identify referenced files, but this handoff does not contain their bytes.</p><ul>" + references + "</ul></section>",
      pre("Exact content bindings", packet.content_bindings || {}),
      "<section><h2>Handoff integrity</h2><p>Envelope schema: " + html(envelope.schema_version) + "</p><p>Exported at: " + html(envelope.exported_at_utc) + "</p><p>Packet SHA-256: <code>" + html(packet.packet_sha256) + "</code></p><p>Payload SHA-256: <code>" + html(envelope.payload_sha256) + "</code></p><p>Draft journal head: <code>" + html(payload.draft_journal.store_head_sha256) + "</code></p><p>" + html(payload.boundary.note) + "</p></section>"
    ].join("");
    return "<!doctype html><html lang=\"en\"><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"><title>MathCase review handoff · " + html(packet.problem_id) + "</title><style>body{max-width:980px;margin:36px auto;padding:0 20px;color:#172535;background:#f6f4ef;font:16px/1.6 system-ui,sans-serif}h1,h2,h3{font-family:Georgia,serif}h1{font-size:2rem}section{margin:20px 0;padding:18px;background:white;border:1px solid #d8d4ca;border-radius:8px}pre{white-space:pre-wrap;overflow-wrap:anywhere;background:#f1f3f5;padding:12px;border-radius:5px;font:13px/1.55 ui-monospace,Consolas,monospace}code{overflow-wrap:anywhere}.tier{margin:12px 0;padding:14px;border:1px solid #ddd;border-radius:6px}.notice{padding:14px;background:#fff4d6;border-left:4px solid #bd8644}li{margin:12px 0}summary{cursor:pointer}</style></head><body><h1>MathCase review handoff</h1><p class=\"notice\">Preparation only · known-result setup case · no review or gate is accepted by this export.</p><p>Case <code>" + html(packet.case_id) + "</code> · problem <code>" + html(packet.problem_id) + "</code> · run <code>" + html(packet.selected_run_id) + "</code></p>" + sections + "</body></html>";
  }

  function crc32(bytes) {
    let value = 0xffffffff;
    for (const byte of bytes) {
      value ^= byte;
      for (let bit = 0; bit < 8; bit++) value = (value >>> 1) ^ ((value & 1) ? 0xedb88320 : 0);
    }
    return (value ^ 0xffffffff) >>> 0;
  }

  function buildZip(files) {
    if (!Array.isArray(files) || files.length < 1 || files.length > 16) throw new Error("ZIP requires between one and sixteen files.");
    const encoder = new TextEncoder();
    const entries = files.map(file => {
      if (!file || typeof file.name !== "string" || !/^[A-Za-z0-9._-]{1,120}$/.test(file.name)
        || typeof file.content !== "string") throw new Error("ZIP contains an unsafe file name or content value.");
      const name = encoder.encode(file.name);
      const data = encoder.encode(file.content);
      return { name, data, crc: crc32(data), offset: 0 };
    });
    const localSize = entry => 30 + entry.name.length + entry.data.length;
    const centralSize = entry => 46 + entry.name.length;
    const totalLocal = entries.reduce((sum, entry) => sum + localSize(entry), 0);
    const totalCentral = entries.reduce((sum, entry) => sum + centralSize(entry), 0);
    const output = new Uint8Array(totalLocal + totalCentral + 22);
    const view = new DataView(output.buffer);
    let cursor = 0;
    for (const entry of entries) {
      entry.offset = cursor;
      view.setUint32(cursor, 0x04034b50, true);
      view.setUint16(cursor + 4, 20, true);
      view.setUint16(cursor + 6, 0x0800, true);
      view.setUint16(cursor + 8, 0, true);
      view.setUint16(cursor + 10, 0, true);
      view.setUint16(cursor + 12, 0x0021, true);
      view.setUint32(cursor + 14, entry.crc, true);
      view.setUint32(cursor + 18, entry.data.length, true);
      view.setUint32(cursor + 22, entry.data.length, true);
      view.setUint16(cursor + 26, entry.name.length, true);
      view.setUint16(cursor + 28, 0, true);
      output.set(entry.name, cursor + 30);
      output.set(entry.data, cursor + 30 + entry.name.length);
      cursor += localSize(entry);
    }
    const centralStart = cursor;
    for (const entry of entries) {
      view.setUint32(cursor, 0x02014b50, true);
      view.setUint16(cursor + 4, 20, true);
      view.setUint16(cursor + 6, 20, true);
      view.setUint16(cursor + 8, 0x0800, true);
      view.setUint16(cursor + 10, 0, true);
      view.setUint16(cursor + 12, 0, true);
      view.setUint16(cursor + 14, 0x0021, true);
      view.setUint32(cursor + 16, entry.crc, true);
      view.setUint32(cursor + 20, entry.data.length, true);
      view.setUint32(cursor + 24, entry.data.length, true);
      view.setUint16(cursor + 28, entry.name.length, true);
      view.setUint16(cursor + 30, 0, true);
      view.setUint16(cursor + 32, 0, true);
      view.setUint16(cursor + 34, 0, true);
      view.setUint16(cursor + 36, 0, true);
      view.setUint32(cursor + 38, 0, true);
      view.setUint32(cursor + 42, entry.offset, true);
      output.set(entry.name, cursor + 46);
      cursor += centralSize(entry);
    }
    const centralLength = cursor - centralStart;
    view.setUint32(cursor, 0x06054b50, true);
    view.setUint16(cursor + 4, 0, true);
    view.setUint16(cursor + 6, 0, true);
    view.setUint16(cursor + 8, entries.length, true);
    view.setUint16(cursor + 10, entries.length, true);
    view.setUint32(cursor + 12, centralLength, true);
    view.setUint32(cursor + 16, centralStart, true);
    view.setUint16(cursor + 20, 0, true);
    return output;
  }

  function createZip(envelope) {
    const json = JSON.stringify(envelope, null, 2) + "\n";
    const standaloneHtml = renderStandaloneHtml(envelope);
    const readme = "Open review-handoff.html for the offline readable packet. review-handoff.json is the machine-readable envelope. Referenced source and receipt files are not embedded. Status remains DRAFT; gate_effect is NONE; training_use is NOT_AUTHORIZED.\n";
    return buildZip([
      { name: "review-handoff.html", content: standaloneHtml },
      { name: "review-handoff.json", content: json },
      { name: "README.txt", content: readme }
    ]);
  }

  return { buildEnvelope, readingGuideForPacket, renderStandaloneHtml, buildZip, createZip, stableJson };
});
