(function (root, factory) {
  const api = factory();
  if (typeof module === "object" && module.exports) module.exports = api;
  else root.MathCaseNatLawExplorer = api;
})(typeof globalThis !== "undefined" ? globalThis : this, function () {
  "use strict";

  const CASE_ID = "nat-add-assoc";
  const RUN_ID = "r0b-solve-local-control-20261023-r3";
  const STATEMENT = "forall (n m k : Nat), (n + m) + k = n + (m + k)";
  const PROOF = "by\n  intro\n  omega";
  const FIXED_BINDINGS = {
    statement_sha256: "8816c65f45064123345aea7ca20f21156c001e8fdb1c5897b88e5123f32cd7b6",
    proof_sha256: "25a4376e9cf1f423de2ae27137035614b2019cc7f3b0066e8cf0a1ecaf9155b1",
    m4_receipt_sha256: "e4abfaac779a1508eda8534c3f20128c109c4e76575dd04ae63164170dbb4092",
    m6_metrics_receipt_sha256: "b8d9ff4222c1a4f024ea18b40412f3cfafbd829a1f860a862c7d57c88164d350",
    m6_run_receipt_sha256: "1327209ab7f64f004c87eacfbb855ae16f30bae82f37a535c58ac3365827bdab",
    source_sha256: "92edcd298633bc57f70cf6c9cea73a3b6f984b91b3c8cc8fcc72f57bada0ee36",
    source_revision: "819816b2e0a3bf405af45ae5c7af2491d8f5bee6",
    candidate_artifact_path: "ui/prototype/data/nat-add-assoc-explanation-drafts-r4.json",
    candidate_artifact_sha256: "c79fd6bf96be7696e66edbb94e5663081919122d38bab2a1463b38c7c7065680",
    dossier_path: "data/local/dossier-store/cases/nat-add-assoc/909e198954c8060dd431e262d0499308714f243ff9deda40d04a0960be7de409.json",
    dossier_sha256: "909e198954c8060dd431e262d0499308714f243ff9deda40d04a0960be7de409"
  };
  const DIGEST = /^[0-9a-f]{64}$/;
  const MAX_DIGITS = 100;
  const BOUNDARY = {
    example_class: "LOCAL_ARITHMETIC_EXAMPLE_ONLY",
    proof_execution: "NOT_RUN",
    review_status: "DRAFT_ONLY",
    gate_effect: "NONE",
    training_use: "NOT_AUTHORIZED"
  };

  function stableJson(value) {
    if (Array.isArray(value)) return "[" + value.map(stableJson).join(",") + "]";
    if (value && typeof value === "object") {
      return "{" + Object.keys(value).sort().map(key => JSON.stringify(key) + ":" + stableJson(value[key])).join(",") + "}";
    }
    return JSON.stringify(value);
  }

  function portableBinding(binding) {
    const identity = { ...(binding || {}) };
    delete identity.m4;
    return identity;
  }

  function exactKeys(value, keys) {
    return Boolean(value && typeof value === "object" && !Array.isArray(value)
      && Object.keys(value).length === keys.length && keys.every(key => Object.hasOwn(value, key)));
  }

  async function sha256(bytes) {
    if (!globalThis.crypto?.subtle) throw new Error("Web Crypto SHA-256 is unavailable in this browser.");
    const digest = await globalThis.crypto.subtle.digest("SHA-256", bytes);
    return Array.from(new Uint8Array(digest), value => value.toString(16).padStart(2, "0")).join("");
  }

  async function sha256Json(value, digest = sha256) {
    return digest(new TextEncoder().encode(stableJson(value)));
  }

  function parseNatural(value, label) {
    const text = String(value ?? "");
    if (!new RegExp("^[0-9]{1," + MAX_DIGITS + "}$").test(text)) {
      throw new Error(label + " must be a whole natural number written with 1–" + MAX_DIGITS + " decimal digits.");
    }
    return BigInt(text).toString();
  }

  function calculate(values) {
    if (!values || typeof values !== "object") throw new Error("Enter three natural numbers first.");
    const n = BigInt(parseNatural(values.n, "n"));
    const m = BigInt(parseNatural(values.m, "m"));
    const k = BigInt(parseNatural(values.k, "k"));
    const nPlusM = n + m;
    const mPlusK = m + k;
    const left = nPlusM + k;
    const right = n + mPlusK;
    if (left !== right) throw new Error("The two exact local calculations disagree; no result was recorded.");
    return {
      inputs: { n: n.toString(), m: m.toString(), k: k.toString() },
      left_grouping: { intermediate: nPlusM.toString(), result: left.toString() },
      right_grouping: { intermediate: mPlusK.toString(), result: right.toString() },
      equal: true
    };
  }

  async function validateContext(context, digest = sha256) {
    const run = context?.selected_run;
    const metrics = context?.metrics;
    const values = metrics?.metrics;
    const exposition = context?.expositor;
    const dossier = context?.dossier;
    const checks = {
      case_identity: context?.schema_version === "mathcase-case-context-v1"
        && context.case_id === CASE_ID && context.problem_id === CASE_ID
        && context.claim_class === "BOOTSTRAP/CALIBRATION" && context.lean_statement === STATEMENT
        && context.statement_sha256 === FIXED_BINDINGS.statement_sha256,
      source_binding: context.source_statement_comparison?.status === "TEXT_MATCH"
        && context.source_statement_comparison?.semantic_review === "NOT_PERFORMED"
        && context.original_source?.declaration_name === "Nat.add_assoc"
        && context.original_source?.revision === FIXED_BINDINGS.source_revision
        && context.original_source?.source_sha256 === FIXED_BINDINGS.source_sha256,
      selected_proof: run?.run_id === RUN_ID && run.status === "PASSED"
        && run.kernel_passed === true && run.axioms_passed === true
        && run.proof === PROOF && run.statement_sha256 === FIXED_BINDINGS.statement_sha256
        && run.proof_sha256 === FIXED_BINDINGS.proof_sha256
        && run.receipt_sha256 === FIXED_BINDINGS.m4_receipt_sha256
        && Array.isArray(run.observed_axioms)
        && stableJson(run.observed_axioms) === stableJson(["propext", "Quot.sound"])
        && typeof run.lean_version === "string" && run.lean_version.includes(FIXED_BINDINGS.source_revision),
      m6_metrics: metrics?.state === "EXECUTED_PASS" && metrics.linked_to_m4_generated_source === true
        && metrics.run_status === "EXECUTED_PASS"
        && metrics.receipt_sha256 === FIXED_BINDINGS.m6_metrics_receipt_sha256
        && metrics.run_receipt_sha256 === FIXED_BINDINGS.m6_run_receipt_sha256
        && values?.schema === "mathcase-lean-expr-metrics-v2"
        && values.core_expr_nodes === 233 && values.core_expr_depth === 17 && values.binder_nodes === 4,
      candidate_explanation: exposition?.state === "CANDIDATE_ONLY_NOT_ACCEPTED_M7"
        && exposition.parent_run_id === RUN_ID && exposition.parent_proof_sha256 === run?.proof_sha256
        && DIGEST.test(exposition.exposition_sha256 || "")
        && exposition.exposition_sha256 === FIXED_BINDINGS.candidate_artifact_sha256
        && exposition.candidate_artifact_path === FIXED_BINDINGS.candidate_artifact_path
        && exposition.candidate_artifact_sha256 === FIXED_BINDINGS.candidate_artifact_sha256
        && Array.isArray(exposition.tiers) && exposition.tiers.length === 5
        && typeof exposition.text === "string" && Boolean(exposition.text),
      unsigned_dossier: dossier?.schema_version === "mathcase-dossier-v2"
        && dossier.path === FIXED_BINDINGS.dossier_path
        && dossier.sha256 === FIXED_BINDINGS.dossier_sha256
        && dossier.readiness === "NOT_READY" && dossier.signed === false,
      digest_shapes: DIGEST.test(run?.statement_sha256 || "") && DIGEST.test(run?.proof_sha256 || "")
        && DIGEST.test(run?.receipt_sha256 || "") && DIGEST.test(metrics?.receipt_sha256 || "")
        && DIGEST.test(metrics?.run_receipt_sha256 || "")
    };
    const mismatches = Object.entries(checks).filter(([, passed]) => !passed).map(([name]) => name);
    if (mismatches.length) {
      throw new Error("This selected case no longer matches the pinned Nat.add_assoc evidence. Mismatched bindings: " + mismatches.join(", ") + ". The explorer is closed.");
    }
    if (await digest(new TextEncoder().encode(run.proof)) !== run.proof_sha256) {
      throw new Error("The reopened proof failed its content hash check.");
    }
    return {
      case_id: CASE_ID,
      problem_id: CASE_ID,
      theorem: "Nat.add_assoc",
      run_id: RUN_ID,
      statement_sha256: run.statement_sha256,
      proof_sha256: run.proof_sha256,
      m4_receipt_sha256: run.receipt_sha256,
      m6_metrics_receipt_sha256: metrics.receipt_sha256,
      m6_run_receipt_sha256: metrics.run_receipt_sha256,
      m4: {
        status: run.status,
        kernel_passed: run.kernel_passed,
        axioms_passed: run.axioms_passed,
        observed_axioms: [...run.observed_axioms],
        lean_version: run.lean_version
      },
      source: {
        declaration: context.original_source.declaration_name,
        revision: context.original_source.revision,
        path: context.original_source.local_artifact_path,
        sha256: context.original_source.source_sha256,
        license: context.original_source.license
      },
      m6_metrics: {
        core_expr_nodes: values.core_expr_nodes,
        core_expr_depth: values.core_expr_depth,
        binder_nodes: values.binder_nodes,
        scope_note: metrics.scope_note
      },
      proof: run.proof,
      explanation: {
        state: exposition.state,
        text: exposition.text,
        path: exposition.candidate_artifact_path,
        sha256: exposition.candidate_artifact_sha256,
        parent_run_id: exposition.parent_run_id,
        parent_proof_sha256: exposition.parent_proof_sha256
      },
      dossier: {
        path: dossier.path,
        sha256: dossier.sha256,
        readiness: dossier.readiness,
        signed: dossier.signed
      },
      boundary: { ...BOUNDARY }
    };
  }

  async function validateCandidateArtifactBytes(bytes, binding, tiersFromContext, digest = sha256) {
    const expected = FIXED_BINDINGS.candidate_artifact_sha256;
    if (!binding || binding.case_id !== CASE_ID || binding.explanation?.path !== FIXED_BINDINGS.candidate_artifact_path
      || binding.explanation?.sha256 !== expected) {
      throw new Error("The candidate explanation binding is not the pinned Nat.add_assoc draft bundle.");
    }
    if (await digest(bytes) !== expected) throw new Error("The five-tier candidate explanation file does not match its pinned content hash.");
    let candidate;
    try { candidate = JSON.parse(new TextDecoder().decode(bytes)); }
    catch { throw new Error("The five-tier candidate explanation is not valid JSON."); }
    const tiers = candidate?.tiers;
    if (candidate?.schema_version !== "mathcase-tiered-exposition-draft-v1"
      || candidate.status !== "CANDIDATE_ONLY_NOT_ACCEPTED_M7"
      || candidate.case_id !== CASE_ID || candidate.problem_id !== CASE_ID
      || candidate.run_id !== RUN_ID || candidate.proof_sha256 !== FIXED_BINDINGS.proof_sha256
      || candidate.problem_statement_sha256 !== FIXED_BINDINGS.statement_sha256
      || candidate.m4_receipt_sha256 !== FIXED_BINDINGS.m4_receipt_sha256
      || candidate.m6_metrics_receipt_sha256 !== FIXED_BINDINGS.m6_metrics_receipt_sha256
      || candidate.m6_run_receipt_sha256 !== FIXED_BINDINGS.m6_run_receipt_sha256
      || !Array.isArray(tiers) || tiers.length !== 5
      || stableJson(tiers) !== stableJson(tiersFromContext)
      || candidate.review?.status !== "NOT_REVIEWED"
      || candidate.review?.identity_status !== "UNVERIFIED"
      || candidate.gate_effect !== "NONE" || candidate.training_use !== "NOT_AUTHORIZED"
      || candidate.public_export !== "NOT_CLEARED") {
      throw new Error("The reopened five-tier candidate does not bind the exact proof and review boundary.");
    }
    return { path: FIXED_BINDINGS.candidate_artifact_path, sha256: expected, tiers };
  }

  async function validateDossierBytes(bytes, binding, digest = sha256) {
    if (!binding || binding.case_id !== CASE_ID || binding.dossier?.path !== FIXED_BINDINGS.dossier_path
      || binding.dossier?.sha256 !== FIXED_BINDINGS.dossier_sha256) {
      throw new Error("The current dossier binding is not the pinned Nat.add_assoc dossier.");
    }
    if (await digest(bytes) !== binding.dossier.sha256) throw new Error("The reopened dossier bytes do not match the pinned dossier hash.");
    let dossier;
    try { dossier = JSON.parse(new TextDecoder().decode(bytes)); }
    catch { throw new Error("The reopened dossier is not valid JSON."); }
    if (dossier.schema_version !== "mathcase-dossier-v2"
      || dossier.case?.id !== CASE_ID || dossier.problem?.id !== CASE_ID
      || dossier.m4_receipt?.receipt_sha256 !== binding.m4_receipt_sha256
      || dossier.verdict?.status !== "UNRESOLVED") {
      throw new Error("The reopened dossier does not preserve the exact case, proof receipt, and unresolved review state.");
    }
    return { path: binding.dossier.path, sha256: binding.dossier.sha256, readiness: "NOT_READY", signed: false };
  }

  function valuesFromInputs(panel) {
    return {
      n: panel.querySelector("#nat-explorer-n").value,
      m: panel.querySelector("#nat-explorer-m").value,
      k: panel.querySelector("#nat-explorer-k").value
    };
  }

  async function createEnvelope(binding, values, digest = sha256, exportedAt = new Date().toISOString()) {
    const example = calculate(values);
    const payload = {
      schema_version: "mathcase-nat-add-assoc-example-payload-v1",
      exported_at_utc: exportedAt,
      case_binding: portableBinding(binding),
      example,
      boundary: { ...BOUNDARY }
    };
    return {
      schema_version: "mathcase-nat-add-assoc-example-v1",
      payload_sha256: await sha256Json(payload, digest),
      payload
    };
  }

  async function validateEnvelope(envelope, expectedBinding, digest = sha256) {
    if (!exactKeys(envelope, ["schema_version", "payload_sha256", "payload"])
      || envelope.schema_version !== "mathcase-nat-add-assoc-example-v1"
      || !DIGEST.test(envelope.payload_sha256 || "")) {
      throw new Error("This file is not a supported Nat.add_assoc local example record.");
    }
    const payload = envelope.payload;
    if (!exactKeys(payload, ["schema_version", "exported_at_utc", "case_binding", "example", "boundary"])
      || payload.schema_version !== "mathcase-nat-add-assoc-example-payload-v1"
      || await sha256Json(payload, digest) !== envelope.payload_sha256) {
      throw new Error("The saved example record has an invalid payload digest or shape.");
    }
    if (stableJson(payload.case_binding) !== stableJson(portableBinding(expectedBinding))
      || stableJson(payload.boundary) !== stableJson(BOUNDARY)) {
      throw new Error("This example record belongs to a different case, proof, metrics, or dossier binding.");
    }
    const example = payload.example;
    if (!exactKeys(example, ["inputs", "left_grouping", "right_grouping", "equal"])
      || !exactKeys(example.inputs, ["n", "m", "k"])
      || !exactKeys(example.left_grouping, ["intermediate", "result"])
      || !exactKeys(example.right_grouping, ["intermediate", "result"])) {
      throw new Error("The saved example record has an invalid calculation shape.");
    }
    const computed = calculate(example.inputs);
    if (stableJson(computed) !== stableJson(example)) throw new Error("The saved arithmetic values do not match exact recomputation.");
    return computed;
  }

  let renderSequence = 0;
  let currentBinding = null;

  function renderOutput(panel, result) {
    panel.querySelector("#nat-explorer-left").textContent = result.left_grouping.result;
    panel.querySelector("#nat-explorer-right").textContent = result.right_grouping.result;
    panel.querySelector("#nat-explorer-left-intermediate").textContent = result.left_grouping.intermediate;
    panel.querySelector("#nat-explorer-right-intermediate").textContent = result.right_grouping.intermediate;
    panel.querySelector("#nat-explorer-result").textContent = "The local calculations match exactly.";
    panel.querySelector("#nat-explorer-output").hidden = false;
  }

  function bindControls(panel) {
    if (panel.dataset.bound === "true") return;
    panel.dataset.bound = "true";
    const runButton = panel.querySelector("#nat-explorer-run");
    const status = panel.querySelector("#nat-explorer-status");
    const inputs = ["#nat-explorer-n", "#nat-explorer-m", "#nat-explorer-k"].map(selector => panel.querySelector(selector));
    inputs.forEach(input => input.addEventListener("input", () => {
      input.removeAttribute("aria-invalid");
      panel.querySelector("#nat-explorer-output").hidden = true;
      status.textContent = "Input changed · the previous comparison is cleared; compare again.";
    }));
    runButton.addEventListener("click", () => {
      panel.querySelector("#nat-explorer-output").hidden = true;
      inputs.forEach(input => input.removeAttribute("aria-invalid"));
      try {
        const result = calculate(valuesFromInputs(panel));
        renderOutput(panel, result);
        status.textContent = "Exact local comparison complete · no Lean or solver run was started.";
      } catch (error) {
        inputs.forEach(input => { if (!new RegExp("^[0-9]{1," + MAX_DIGITS + "}$").test(input.value)) input.setAttribute("aria-invalid", "true"); });
        status.textContent = String(error?.message || error);
      }
    });
    panel.querySelectorAll("[data-nat-preset]").forEach(button => button.addEventListener("click", () => {
      const presets = {
        zero: ["0", "0", "0"],
        repeated: ["7", "7", "7"],
        large: ["9007199254740993", "123456789012345678901234567890", "999999999999999999999999999999"]
      };
      const values = presets[button.dataset.natPreset];
      if (!values) return;
      inputs.forEach((input, index) => { input.value = values[index]; input.removeAttribute("aria-invalid"); });
      runButton.click();
    }));
    panel.querySelector("#nat-explorer-download").addEventListener("click", async () => {
      panel.querySelector("#nat-explorer-output").hidden = true;
      inputs.forEach(input => input.removeAttribute("aria-invalid"));
      status.textContent = "Preparing a local example record…";
      try {
        if (!currentBinding) throw new Error("The exact case evidence has not reopened yet.");
        const result = calculate(valuesFromInputs(panel));
        renderOutput(panel, result);
        const envelope = await createEnvelope(currentBinding, result.inputs);
        const blob = new Blob([JSON.stringify(envelope, null, 2) + "\n"], { type: "application/json" });
        const objectURL = URL.createObjectURL(blob);
        const link = document.createElement("a");
        const stamp = envelope.payload.exported_at_utc.replace(/[-:T]/g, "").replace(/\.\d+Z$/, "Z");
        link.href = objectURL;
        link.download = "mathcase-nat-add-assoc-example-" + stamp + ".json";
        document.body.appendChild(link); link.click(); link.remove();
        setTimeout(() => URL.revokeObjectURL(objectURL), 1500);
        status.textContent = "Local example record downloaded · case, proof, metrics, and dossier hashes are bound · no gate effect.";
      } catch (error) { status.textContent = String(error?.message || error); }
    });
    const fileInput = panel.querySelector("#nat-explorer-file");
    panel.querySelector("#nat-explorer-open").addEventListener("click", () => fileInput.click());
    fileInput.addEventListener("change", async () => {
      const file = fileInput.files?.[0];
      fileInput.value = "";
      panel.querySelector("#nat-explorer-output").hidden = true;
      status.textContent = "Checking the saved example against this exact case and its receipts…";
      try {
        if (!file || file.size > 32768) throw new Error("Choose a local JSON example record under 32 KiB.");
        if (!currentBinding) throw new Error("The exact case evidence has not reopened yet.");
        const envelope = JSON.parse(await file.text());
        const result = await validateEnvelope(envelope, currentBinding);
        inputs[0].value = result.inputs.n; inputs[1].value = result.inputs.m; inputs[2].value = result.inputs.k;
        inputs.forEach(input => input.removeAttribute("aria-invalid"));
        renderOutput(panel, result);
        status.textContent = "Local example reopened and recomputed · the saved case and receipt identities match this view.";
      } catch (error) { status.textContent = String(error?.message || error); }
    });
  }

  async function render(context) {
    const panel = typeof document === "undefined" ? null : document.getElementById("nat-add-assoc-explorer");
    if (!panel) return;
    const sequence = ++renderSequence;
    if (context?.case_id !== CASE_ID) { panel.hidden = true; currentBinding = null; return; }
    panel.hidden = false;
    panel.dataset.state = "loading";
    currentBinding = null;
    bindControls(panel);
    const status = panel.querySelector("#nat-explorer-status");
    const controls = panel.querySelectorAll("input,button");
    controls.forEach(control => { control.disabled = true; });
    status.textContent = "Reopening the exact proof, metrics, and dossier receipts…";
    try {
      const binding = await validateContext(context);
      const candidateResponse = await fetch(new URL("../../" + binding.explanation.path, window.location.href), { cache: "no-store", credentials: "same-origin" });
      if (!candidateResponse.ok) throw new Error("The pinned five-tier candidate could not be reopened (HTTP " + candidateResponse.status + ").");
      await validateCandidateArtifactBytes(await candidateResponse.arrayBuffer(), binding, context.expositor.tiers);
      const response = await fetch(new URL("../../" + binding.dossier.path, window.location.href), { cache: "no-store", credentials: "same-origin" });
      if (!response.ok) throw new Error("The pinned dossier could not be reopened (HTTP " + response.status + ").");
      const dossierBytes = await response.arrayBuffer();
      await validateDossierBytes(dossierBytes, binding);
      if (sequence !== renderSequence) return;
      currentBinding = binding;
      panel.dataset.state = "ready";
      panel.querySelector("#nat-explorer-run-id").textContent = binding.run_id;
      panel.querySelector("#nat-explorer-proof-status").textContent = "M4 PASSED · kernel check passed · axiom audit passed · observed axioms: " + binding.m4.observed_axioms.join(", ") + ".";
      panel.querySelector("#nat-explorer-proof").textContent = binding.proof;
      panel.querySelector("#nat-explorer-statement-hash").textContent = binding.statement_sha256;
      panel.querySelector("#nat-explorer-source-hash").textContent = binding.source.sha256;
      panel.querySelector("#nat-explorer-proof-hash").textContent = binding.proof_sha256;
      panel.querySelector("#nat-explorer-m4-hash").textContent = binding.m4_receipt_sha256;
      panel.querySelector("#nat-explorer-m6-hash").textContent = binding.m6_metrics_receipt_sha256;
      panel.querySelector("#nat-explorer-m6-run-hash").textContent = binding.m6_run_receipt_sha256;
      panel.querySelector("#nat-explorer-dossier-hash").textContent = binding.dossier.sha256;
      const dossierLink = panel.querySelector("#nat-explorer-dossier-link");
      dossierLink.href = new URL("../../" + binding.dossier.path, window.location.href).href;
      dossierLink.hidden = false;
      panel.querySelector("#nat-explorer-metrics").textContent = binding.m6_metrics.core_expr_nodes + " expression nodes · depth " + binding.m6_metrics.core_expr_depth + " · " + binding.m6_metrics.binder_nodes + " binders. " + binding.m6_metrics.scope_note;
      panel.querySelector("#nat-explorer-explanation").textContent = binding.explanation.text;
      panel.querySelector("#nat-explorer-explanation-status").textContent = "Candidate explanation · author identity/run unlinked for independent review · M7 not accepted.";
      panel.querySelector("#nat-explorer-dossier-status").textContent = "Dossier reopened and hash matched · NOT_READY · unsigned · verdict UNRESOLVED.";
      controls.forEach(control => { control.disabled = false; });
      status.textContent = "Exact selected proof, M6 receipts, candidate explanation, and unsigned dossier reopened.";
      panel.querySelector("#nat-explorer-run").click();
    } catch (error) {
      if (sequence !== renderSequence) return;
      panel.dataset.state = "blocked";
      status.textContent = String(error?.message || error);
    }
  }

  return {
    calculate,
    stableJson,
    sha256Json,
    validateContext,
    validateCandidateArtifactBytes,
    validateDossierBytes,
    createEnvelope,
    validateEnvelope,
    render,
    constants: { CASE_ID, RUN_ID, STATEMENT, PROOF, FIXED_BINDINGS, BOUNDARY, MAX_DIGITS }
  };
});
