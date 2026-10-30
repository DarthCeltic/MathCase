(function (root, factory) {
  const api = factory();
  if (typeof module === "object" && module.exports) module.exports = api;
  else root.MathCaseProofStructureInspector = api;
})(typeof globalThis !== "undefined" ? globalThis : this, function () {
  "use strict";

  const CASE_ID = "nat-add-assoc";
  const INVENTORY_PATH = "data/local/verification/nat-proof-dependencies-2026-10-24-r1/assembled-r2/dependency-inventory.json";
  const INVENTORY_SHA256 = "4a27e088e44f4f8c5b7b17b8c009ad8caeb445e4c205abbfc865a2c13b783e03";
  const EXPECTED_STATEMENT_SHA256 = "8816c65f45064123345aea7ca20f21156c001e8fdb1c5897b88e5123f32cd7b6";
  const EXPECTED_PROOF_INPUT_SHA256 = "25a4376e9cf1f423de2ae27137035614b2019cc7f3b0066e8cf0a1ecaf9155b1";
  const EXPECTED_M4_RECEIPT_SHA256 = "e4abfaac779a1508eda8534c3f20128c109c4e76575dd04ae63164170dbb4092";
  const EXPECTED_CASE_M6_METRICS_SHA256 = "b8d9ff4222c1a4f024ea18b40412f3cfafbd829a1f860a862c7d57c88164d350";
  const EXPECTED_CASE_M6_RUN_SHA256 = "1327209ab7f64f004c87eacfbb855ae16f30bae82f37a535c58ac3365827bdab";
  const DIGEST = /^[0-9a-f]{64}$/;
  const SCOPES = ["statement", "proof", "combined"];
  const DECLARATION_KINDS = new Set(["axiom", "definition", "theorem", "opaque", "quotient", "inductive", "constructor", "recursor", "UNKNOWN"]);
  const controllers = new WeakMap();

  function stableJson(value) {
    if (Array.isArray(value)) return "[" + value.map(stableJson).join(",") + "]";
    if (value && typeof value === "object") {
      return "{" + Object.keys(value).sort().map(key => JSON.stringify(key) + ":" + stableJson(value[key])).join(",") + "}";
    }
    return JSON.stringify(value);
  }

  async function sha256Bytes(bytes) {
    if (!globalThis.crypto?.subtle) throw new Error("Web Crypto SHA-256 is unavailable in this preview.");
    const digest = await globalThis.crypto.subtle.digest("SHA-256", bytes);
    return Array.from(new Uint8Array(digest), value => value.toString(16).padStart(2, "0")).join("");
  }

  async function validateInventory(inventory, context) {
    const run = context?.selected_run;
    const payload = inventory?.dependency_payload;
    const m4 = inventory?.m4_binding;
    const m6 = inventory?.m6_binding;
    const caseMetrics = context?.metrics;
    if (!inventory || inventory.schema_version !== "mathcase-proof-dependency-inventory-v1"
      || inventory.status !== "DIRECT_REFERENCES_RECORDED" || inventory.evidence_class !== "FRESH_REELABORATION"
      || inventory.problem_id !== CASE_ID || inventory.declaration !== "mathcase_candidate"
      || inventory.fresh_elaboration !== true || inventory.historical_proof_term_identity_claimed !== false
      || inventory.necessity_claim !== false || typeof inventory.scope_note !== "string" || !inventory.scope_note) {
      throw new Error("The pinned record is not the supported fresh direct-reference inventory.");
    }
    if (context?.schema_version !== "mathcase-case-context-v1" || context.case_id !== CASE_ID || context.problem_id !== CASE_ID
      || context.claim_class !== "BOOTSTRAP/CALIBRATION" || context.statement_sha256 !== EXPECTED_STATEMENT_SHA256
      || context.original_source?.declaration_name !== "Nat.add_assoc" || run?.status !== "PASSED"
      || run.kernel_passed !== true || run.axioms_passed !== true || run.statement_sha256 !== EXPECTED_STATEMENT_SHA256
      || run.proof_sha256 !== EXPECTED_PROOF_INPUT_SHA256 || run.receipt_sha256 !== EXPECTED_M4_RECEIPT_SHA256
      || !/^r0b-solve-local-control-20261023-r3$/.test(run.run_id || "")
      || !Array.isArray(run.observed_axioms) || stableJson(run.observed_axioms) !== stableJson(["propext", "Quot.sound"])) {
      throw new Error("The selected Nat.add_assoc case or passed M4 receipt no longer matches the pinned inventory.");
    }
    const receiptName = String(run.receipt_path || "").replaceAll("\\", "/").split("/").pop()?.replace(/\.json$/i, "");
    if (receiptName !== m4?.evidence_id || m4?.problem_id !== CASE_ID
      || m4?.receipt_sha256 !== run.receipt_sha256 || m4?.problem_statement_sha256 !== run.statement_sha256
      || m4?.proof_input_sha256 !== run.proof_sha256 || !DIGEST.test(m4?.generated_source_sha256 || "")) {
      throw new Error("The dependency inventory does not bind to the selected case's exact M4 receipt, statement, and proof input.");
    }
    if (!m6 || !DIGEST.test(m6.metrics_receipt_sha256 || "") || !DIGEST.test(m6.run_receipt_sha256 || "")
      || !DIGEST.test(m6.snapshot_manifest_sha256 || "") || !DIGEST.test(m6.instrumented_source_sha256 || "")
      || m6.metrics_receipt_sha256 === caseMetrics?.receipt_sha256 || m6.run_receipt_sha256 === caseMetrics?.run_receipt_sha256
      || caseMetrics?.receipt_sha256 !== EXPECTED_CASE_M6_METRICS_SHA256 || caseMetrics?.run_receipt_sha256 !== EXPECTED_CASE_M6_RUN_SHA256
      || caseMetrics?.metrics?.constant_reference_nodes !== 95) {
      throw new Error("The fresh M6 re-elaboration must stay bound separately from the selected case's earlier M6 metrics run.");
    }
    if (payload?.schema !== "mathcase-proof-dependencies-v1" || payload.declaration !== inventory.declaration
      || payload.transitive_bodies_expanded !== false || payload.necessity_claim !== false
      || !Array.isArray(payload.references) || payload.references.length !== 9
      || !Array.isArray(payload.unresolved_entries) || payload.unique_reference_count !== payload.references.length) {
      throw new Error("The direct-reference payload scope or supported nine-reference inventory has changed.");
    }
    const names = new Set();
    let statementOccurrences = 0, proofOccurrences = 0, totalOccurrences = 0;
    for (const reference of payload.references) {
      if (!reference || typeof reference.name !== "string" || !reference.name || names.has(reference.name)
        || !DECLARATION_KINDS.has(reference.declaration_kind)
        || ![reference.declaration_type_occurrences, reference.proof_value_occurrences, reference.total_occurrences].every(Number.isSafeInteger)
        || reference.declaration_type_occurrences < 0 || reference.proof_value_occurrences < 0 || reference.total_occurrences < 1
        || reference.declaration_type_occurrences + reference.proof_value_occurrences !== reference.total_occurrences
        || !["RESOLVED", "UNRESOLVED"].includes(reference.resolution)) {
        throw new Error("A direct-reference row is malformed or duplicated.");
      }
      names.add(reference.name);
      statementOccurrences += reference.declaration_type_occurrences;
      proofOccurrences += reference.proof_value_occurrences;
      totalOccurrences += reference.total_occurrences;
    }
    const unresolved = payload.references.filter(reference => reference.resolution === "UNRESOLVED");
    if (statementOccurrences !== payload.declaration_type_occurrence_count || proofOccurrences !== payload.proof_value_occurrence_count
      || totalOccurrences !== payload.total_occurrence_count || proofOccurrences !== caseMetrics.metrics.constant_reference_nodes
      || unresolved.length !== payload.unresolved_entries.length || stableJson(unresolved) !== stableJson(payload.unresolved_entries)) {
      throw new Error("Reference counts do not reconcile to the inventory totals, unresolved rows, and recorded M6 constant count.");
    }
    return { statementOccurrences, proofOccurrences, totalOccurrences, uniqueReferences: names.size, unresolvedCount: unresolved.length };
  }

  function scopedCount(reference, scope) {
    if (scope === "statement") return reference.declaration_type_occurrences;
    if (scope === "proof") return reference.proof_value_occurrences;
    if (scope === "combined") return reference.total_occurrences;
    throw new Error("Choose a supported occurrence count scope.");
  }

  function filterReferences(references, query) {
    const search = String(query || "").trim().toLocaleLowerCase();
    return (references || []).filter(reference => !search || reference.name.toLocaleLowerCase().includes(search));
  }

  async function buildView(bytes, context, presentation = {}, options = {}) {
    const hashBytes = options.sha256Bytes || sha256Bytes;
    if (!(bytes instanceof Uint8Array)) bytes = new Uint8Array(bytes);
    if (await hashBytes(bytes) !== INVENTORY_SHA256) throw new Error("The local dependency inventory bytes do not match the pinned SHA-256.");
    let inventory;
    try { inventory = JSON.parse(new TextDecoder().decode(bytes)); }
    catch { throw new Error("The pinned dependency inventory is not valid UTF-8 JSON."); }
    const totals = await validateInventory(inventory, context);
    const scope = SCOPES.includes(presentation.scope) ? presentation.scope : "combined";
    const query = String(presentation.query || "").trim().slice(0, 120);
    const base = {
      schema_version: "mathcase-proof-structure-view-v1",
      status: "SAVED_EVIDENCE_PRESENTATION_ONLY",
      case_binding: {
        case_id: context.case_id,
        problem_id: context.problem_id,
        selected_case_run_id: context.selected_run.run_id,
        statement_sha256: context.selected_run.statement_sha256,
        proof_input_sha256: context.selected_run.proof_sha256,
        m4_receipt_sha256: context.selected_run.receipt_sha256,
        source_declaration: context.original_source.declaration_name,
        source_revision: context.original_source.revision
      },
      case_metrics_binding: {
        metrics_receipt_sha256: context.metrics.receipt_sha256,
        run_receipt_sha256: context.metrics.run_receipt_sha256,
        constant_reference_nodes: context.metrics.metrics.constant_reference_nodes
      },
      inventory_binding: {
        path: INVENTORY_PATH,
        sha256: INVENTORY_SHA256,
        status: inventory.status,
        evidence_class: inventory.evidence_class,
        declaration: inventory.declaration,
        m4_binding: { ...inventory.m4_binding },
        fresh_m6_reelaboration_binding: { ...inventory.m6_binding }
      },
      totals,
      presentation: { scope, query },
      references: inventory.dependency_payload.references.map(reference => ({
        name: reference.name,
        declaration_kind: reference.declaration_kind,
        declaration_type_occurrences: reference.declaration_type_occurrences,
        proof_value_occurrences: reference.proof_value_occurrences,
        total_occurrences: reference.total_occurrences,
        resolution: reference.resolution
      })).sort((left, right) => left.name.localeCompare(right.name)),
      unresolved_entries: inventory.dependency_payload.unresolved_entries.map(reference => ({ ...reference })),
      interpretation: inventory.dependency_payload.interpretation,
      scope_note: inventory.scope_note,
      evidence_boundaries: {
        reference_meaning: "Direct constants observed in a fresh pinned re-elaboration of the exact M4 generated source.",
        m6_identity: "This inventory's M6 receipts are a separate fresh re-elaboration, not the earlier M6 metrics receipts selected in the case context. Matching count totals do not make the runs identical.",
        non_claims: ["Does not establish necessity or causal contribution.", "Does not expand transitive declaration bodies.", "Does not claim historical proof-term identity.", "Does not establish V5 passage, proof quality, or mathematical discovery."]
      }
    };
    return { ...base, view_sha256: await hashBytes(new TextEncoder().encode(stableJson(base))) };
  }

  async function validateView(view, bytes, context, options = {}) {
    if (!view || view.schema_version !== "mathcase-proof-structure-view-v1" || !DIGEST.test(view.view_sha256 || "")) {
      throw new Error("The serialized proof-structure view is missing or malformed.");
    }
    const { view_sha256: suppliedHash, ...body } = view;
    const hashBytes = options.sha256Bytes || sha256Bytes;
    if (await hashBytes(new TextEncoder().encode(stableJson(body))) !== suppliedHash) throw new Error("The serialized proof-structure view digest is invalid.");
    const expected = await buildView(bytes, context, view.presentation, options);
    if (stableJson(expected) !== stableJson(view)) throw new Error("The serialized view is bound to different case, run, M4/M6, or inventory bytes.");
    return expected;
  }

  function addText(documentObject, parent, tag, text, className) {
    const node = documentObject.createElement(tag);
    node.textContent = String(text ?? "");
    if (className) node.className = className;
    parent.appendChild(node);
    return node;
  }

  function renderPanel(host, controller) {
    const documentObject = host.ownerDocument;
    const view = controller.view;
    host.replaceChildren();
    const heading = addText(documentObject, host, "h3", "Inspect the saved proof’s direct references");
    heading.id = "proof-structure-title";
    host.setAttribute("aria-labelledby", heading.id);
    addText(documentObject, host, "p", "Nine direct references were recorded in a fresh pinned re-elaboration of the checked MathCase candidate. This viewer reads saved evidence; it does not run Lean, expand referenced declarations, or judge proof quality.");
    const summary = documentObject.createElement("div"); summary.className = "proof-structure-summary";
    for (const [label, value] of [
      ["Declaration type", view.totals.statementOccurrences],
      ["Stored proof value", view.totals.proofOccurrences],
      ["Combined occurrences", view.totals.totalOccurrences],
      ["Unique direct references", view.totals.uniqueReferences],
      ["Unresolved", view.totals.unresolvedCount]
    ]) {
      const card = documentObject.createElement("section");
      addText(documentObject, card, "strong", label);
      addText(documentObject, card, "span", String(value));
      summary.appendChild(card);
    }
    host.appendChild(summary);

    const controls = documentObject.createElement("div"); controls.className = "proof-structure-controls";
    const searchLabel = documentObject.createElement("label"); searchLabel.htmlFor = "proof-structure-search";
    searchLabel.textContent = "Search direct reference names";
    const search = documentObject.createElement("input"); search.id = "proof-structure-search"; search.type = "search";
    search.maxLength = 120; search.autocomplete = "off"; search.placeholder = "For example, Nat or HAdd.hAdd"; search.value = view.presentation.query;
    searchLabel.appendChild(search); controls.appendChild(searchLabel);
    const scopeGroup = documentObject.createElement("div"); scopeGroup.className = "proof-structure-scopes"; scopeGroup.setAttribute("role", "group"); scopeGroup.setAttribute("aria-label", "Occurrence count scope");
    for (const [scope, label] of [["statement", "Statement type"], ["proof", "Proof value"], ["combined", "Combined"]]) {
      const button = documentObject.createElement("button"); button.type = "button"; button.dataset.scope = scope;
      button.textContent = label; button.setAttribute("aria-pressed", String(view.presentation.scope === scope));
      button.addEventListener("click", () => void updatePresentation({ scope, query: search.value }));
      scopeGroup.appendChild(button);
    }
    controls.appendChild(scopeGroup); host.appendChild(controls);

    const countStatus = addText(documentObject, host, "p", "", "proof-structure-count-status"); countStatus.setAttribute("role", "status"); countStatus.setAttribute("aria-live", "polite");
    const tableWrap = documentObject.createElement("div"); tableWrap.className = "proof-structure-table-wrap";
    const table = documentObject.createElement("table"); table.className = "proof-structure-table";
    const thead = documentObject.createElement("thead"), header = documentObject.createElement("tr");
    for (const label of ["Direct reference", "Declaration kind", "Resolution", "Occurrences in selected scope"]) {
      const cell = addText(documentObject, header, "th", label); cell.scope = "col";
    }
    thead.appendChild(header); table.appendChild(thead);
    const tbody = documentObject.createElement("tbody"); table.appendChild(tbody); tableWrap.appendChild(table); host.appendChild(tableWrap);

    const detail = documentObject.createElement("section"); detail.className = "proof-structure-detail"; detail.setAttribute("aria-live", "polite"); host.appendChild(detail);
    const boundary = documentObject.createElement("details"); boundary.className = "proof-structure-boundary";
    addText(documentObject, boundary, "summary", "How to read these counts");
    addText(documentObject, boundary, "p", view.interpretation);
    addText(documentObject, boundary, "p", view.scope_note);
    addText(documentObject, boundary, "p", view.evidence_boundaries.m6_identity, "workspace-boundary");
    addText(documentObject, boundary, "ul", "");
    const list = boundary.querySelector("ul");
    for (const item of view.evidence_boundaries.non_claims) addText(documentObject, list, "li", item);
    host.appendChild(boundary);

    const bindings = documentObject.createElement("details"); bindings.className = "proof-structure-bindings";
    addText(documentObject, bindings, "summary", "Exact case, run, inventory, and receipt bindings");
    const bindingPre = documentObject.createElement("pre"); bindingPre.textContent = JSON.stringify({
      case_binding: view.case_binding,
      case_metrics_binding: view.case_metrics_binding,
      inventory_binding: view.inventory_binding,
      view_sha256: view.view_sha256
    }, null, 2); bindings.appendChild(bindingPre); host.appendChild(bindings);

    const actions = documentObject.createElement("div"); actions.className = "proof-structure-actions";
    const reopen = documentObject.createElement("button"); reopen.type = "button"; reopen.textContent = "Reopen exact inventory";
    reopen.addEventListener("click", () => void reopenEvidence()); actions.appendChild(reopen);
    const download = documentObject.createElement("button"); download.type = "button"; download.textContent = "Download bound evidence JSON";
    download.addEventListener("click", () => downloadEvidence()); actions.appendChild(download); host.appendChild(actions);
    const status = addText(documentObject, host, "p", "", "proof-structure-status"); status.setAttribute("role", "status"); status.setAttribute("aria-live", "polite");
    const integrity = addText(documentObject, host, "p", "", "proof-structure-integrity");

    function renderRows() {
      const currentView = controller.view;
      const filtered = filterReferences(currentView.references, search.value);
      if (!filtered.some(reference => reference.name === controller.selectedName)) controller.selectedName = filtered[0]?.name || "";
      tbody.replaceChildren();
      countStatus.textContent = "Showing " + filtered.length + " of " + currentView.references.length + " direct references · " + currentView.presentation.scope.replace(/_/g, " ") + " count.";
      for (const reference of filtered) {
        const row = documentObject.createElement("tr");
        if (reference.name === controller.selectedName) row.className = "selected";
        const nameCell = documentObject.createElement("td"), select = documentObject.createElement("button");
        select.type = "button"; select.className = "proof-structure-name"; select.textContent = reference.name;
        select.setAttribute("aria-pressed", String(reference.name === controller.selectedName));
        select.addEventListener("click", () => { controller.selectedName = reference.name; renderRows(); });
        nameCell.appendChild(select); row.appendChild(nameCell);
        addText(documentObject, row, "td", reference.declaration_kind);
        addText(documentObject, row, "td", reference.resolution);
        addText(documentObject, row, "td", String(scopedCount(reference, currentView.presentation.scope)));
        tbody.appendChild(row);
      }
      if (!filtered.length) {
        const row = documentObject.createElement("tr"), cell = addText(documentObject, row, "td", "No direct reference names match this search.");
        cell.colSpan = 4; tbody.appendChild(row);
      }
      const selected = filtered.find(reference => reference.name === controller.selectedName);
      if (selected) renderDetail(selected);
      else {
        detail.replaceChildren();
        addText(documentObject, detail, "h4", "No matching reference selected");
        addText(documentObject, detail, "p", "Clear the search to inspect one of the nine saved direct references.");
      }
    }

    function renderDetail(reference) {
      detail.replaceChildren();
      addText(documentObject, detail, "h4", reference.name);
      addText(documentObject, detail, "p", reference.declaration_kind + " · " + reference.resolution);
      addText(documentObject, detail, "p", "Declaration type occurrences: " + reference.declaration_type_occurrences);
      addText(documentObject, detail, "p", "Stored proof value occurrences: " + reference.proof_value_occurrences);
      addText(documentObject, detail, "p", "Combined occurrences: " + reference.total_occurrences);
      addText(documentObject, detail, "p", "An occurrence is a direct constant reference counted in the saved fresh elaboration. It does not show that the declaration is necessary or caused the proof result.", "workspace-boundary");
    }

    async function updatePresentation(presentation) {
      const request = ++controller.presentationRequestID;
      try {
        const updated = await buildView(controller.bytes, controller.context, presentation, controller.options);
        if (request !== controller.presentationRequestID || host.hidden) return;
        controller.view = updated;
        for (const button of scopeGroup.querySelectorAll("button")) {
          button.setAttribute("aria-pressed", String(controller.view.presentation.scope === button.dataset.scope));
        }
        renderRows();
        bindingPre.textContent = JSON.stringify({
          case_binding: controller.view.case_binding,
          case_metrics_binding: controller.view.case_metrics_binding,
          inventory_binding: controller.view.inventory_binding,
          view_sha256: controller.view.view_sha256
        }, null, 2);
        status.textContent = "Count scope and search updated for this pinned inventory. The export stays bound to the full reference set and selected case/run.";
      } catch (error) {
        if (request === controller.presentationRequestID) status.textContent = "Update refused: " + String(error?.message || error);
      }
    }

    async function reopenEvidence() {
      const request = ++controller.requestID;
      status.textContent = "Reopening and rechecking the exact pinned inventory bytes and selected case/run bindings…";
      reopen.disabled = true; download.disabled = true;
      try {
        const response = await window.fetch(new URL("../../" + INVENTORY_PATH, window.location.href).href, { cache: "no-store", credentials: "same-origin" });
        if (!response.ok) throw new Error("The local dependency inventory could not be reopened.");
        const bytes = new Uint8Array(await response.arrayBuffer());
        const presentation = { scope: controller.view.presentation.scope, query: search.value };
        const reopened = await buildView(bytes, controller.context, presentation, controller.options);
        if (request !== controller.requestID || host.hidden) return;
        controller.bytes = bytes; controller.view = reopened; renderPanel(host, controller);
      } catch (error) {
        if (request === controller.requestID) status.textContent = "Reopen refused: " + String(error?.message || error);
      } finally {
        if (request === controller.requestID) { reopen.disabled = false; download.disabled = false; }
      }
    }

    function downloadEvidence() {
      if (!controller.view) return;
      const file = new Blob([JSON.stringify(controller.view, null, 2) + "\n"], { type: "application/json;charset=utf-8" });
      const url = URL.createObjectURL(file), anchor = documentObject.createElement("a");
      anchor.href = url;
      anchor.download = "proof-structure-" + controller.view.case_binding.case_id + "-" + controller.view.case_binding.selected_case_run_id + ".json";
      documentObject.body.appendChild(anchor); anchor.click(); anchor.remove(); URL.revokeObjectURL(url);
      status.textContent = "Downloaded the SHA-256-bound read-only evidence view for case " + controller.view.case_binding.case_id + " and run " + controller.view.case_binding.selected_case_run_id + ".";
    }

    search.addEventListener("input", () => void updatePresentation({ scope: view.presentation.scope, query: search.value }));
    renderRows();
    integrity.textContent = "Inventory SHA-256 " + INVENTORY_SHA256 + " · selected case run " + view.case_binding.selected_case_run_id + " · fresh M6 run-receipt SHA-256 " + view.inventory_binding.fresh_m6_reelaboration_binding.run_receipt_sha256;
    status.textContent = "Pinned direct-reference evidence reopened and bound to the selected passed M4 receipt. No Lean run or proof-quality judgment was made.";
  }

  async function mount(host, context, options = {}) {
    if (!host) return;
    let controller = controllers.get(host);
    if (!controller) {
      controller = { requestID: 0, presentationRequestID: 0, view: null, bytes: null, context: null, selectedName: "Nat", options: {} };
      controllers.set(host, controller);
    }
    const request = ++controller.requestID;
    controller.presentationRequestID += 1;
    controller.context = context;
    controller.options = options;
    host.hidden = context?.case_id !== CASE_ID;
    if (host.hidden) { host.replaceChildren(); controller.view = null; controller.bytes = null; return; }
    host.setAttribute("aria-label", "Proof Structure Inspector");
    host.replaceChildren();
    addText(host.ownerDocument, host, "h3", "Proof Structure Inspector · reopening saved evidence");
    addText(host.ownerDocument, host, "p", "The viewer never runs a proof or changes review, rating, gate, or training state.", "workspace-boundary");
    try {
      const response = await window.fetch(new URL("../../" + INVENTORY_PATH, window.location.href).href, { cache: "no-store", credentials: "same-origin" });
      if (!response.ok) throw new Error("The local dependency inventory is not available in this checkout.");
      const bytes = new Uint8Array(await response.arrayBuffer());
      const view = await buildView(bytes, context, { scope: "combined", query: "" }, options);
      if (request !== controller.requestID || host.hidden) return;
      controller.bytes = bytes; controller.view = view;
      renderPanel(host, controller);
    } catch (error) {
      if (request !== controller.requestID || host.hidden) return;
      host.replaceChildren();
      addText(host.ownerDocument, host, "h3", "Proof Structure Inspector · unavailable");
      addText(host.ownerDocument, host, "p", String(error?.message || error), "proof-structure-status");
      addText(host.ownerDocument, host, "p", "The saved case, run, or proof-dependency inventory did not reopen with its pinned identity. No prior view is reused.", "workspace-boundary");
    }
  }

  return {
    CASE_ID, INVENTORY_PATH, INVENTORY_SHA256,
    stableJson, validateInventory, scopedCount, filterReferences, buildView, validateView, mount
  };
});
