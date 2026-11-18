(function () {
  "use strict";

  const SUMMARY_URL = "/api/knowledge-graph";
  const FILE_URL = "/api/knowledge-graph-file";
  const panel = document.getElementById("knowledge-graph");
  if (!panel) return;
  const search = document.getElementById("graph-search");
  const status = document.getElementById("graph-status");
  const resultsNode = document.getElementById("graph-results");
  const detail = document.getElementById("graph-detail");
  let records = [];
  let selected = null;

  async function fetchSummary() {
    const response = await fetch(SUMMARY_URL, { cache: "no-store", credentials: "same-origin" });
    if (!response.ok) throw new Error("The graph summary could not be verified.");
    return response.json();
  }

  async function fetchBoundFile(name, sha256) {
    const query = new URLSearchParams({ name, sha256 });
    const response = await fetch(FILE_URL + "?" + query.toString(), { cache: "no-store", credentials: "same-origin" });
    if (!response.ok) throw new Error("The pinned graph file " + name + " could not be opened.");
    return new Uint8Array(await response.arrayBuffer());
  }

  async function sha256(bytes) {
    const hash = await crypto.subtle.digest("SHA-256", bytes);
    return Array.from(new Uint8Array(hash), (value) => value.toString(16).padStart(2, "0")).join("");
  }

  function parseLines(bytes) {
    const source = new TextDecoder("utf-8", { fatal: true }).decode(bytes);
    return source.split(/\r?\n/).filter(Boolean).map((line) => JSON.parse(line));
  }

  function addDetailRow(dl, label, value) {
    const term = document.createElement("dt");
    term.textContent = label;
    const definition = document.createElement("dd");
    definition.textContent = Array.isArray(value) ? value.join(", ") : String(value ?? "not recorded");
    dl.append(term, definition);
  }

  function showRecord(record) {
    selected = record.case_id;
    for (const node of resultsNode.querySelectorAll("button")) {
      node.setAttribute("aria-pressed", node.dataset.caseId === selected ? "true" : "false");
    }
    detail.replaceChildren();
    const heading = document.createElement("h3");
    heading.textContent = record.case_id;
    const prose = document.createElement("p");
    prose.textContent = "This is a finite theorem statement from the pinned shard replay record.";
    const statement = document.createElement("pre");
    statement.textContent = record.lean_statement_exact;
    const dl = document.createElement("dl");
    addDetailRow(dl, "Recorded Lean status", record.lean_status);
    addDetailRow(dl, "M0", record.m0_status);
    addDetailRow(dl, "M4", record.m4_status);
    addDetailRow(dl, "Axioms", record.axioms);
    addDetailRow(dl, "sorryAx", record.sorryAx);
    addDetailRow(dl, "Imports", record.dependencies && record.dependencies.imports);
    addDetailRow(dl, "Module-local references", record.dependencies && record.dependencies.module_local_declarations_referenced);
    addDetailRow(dl, "Source file", record.source && record.source.package_path);
    addDetailRow(dl, "Source SHA-256", record.source && record.source.sha256);
    addDetailRow(dl, "Receipt row", record.receipt && (record.receipt.package_path + " · line " + record.receipt.line));
    addDetailRow(dl, "Receipt row SHA-256", record.receipt && record.receipt.row_sha256);
    addDetailRow(dl, "Claim scope", record.claim_limit);
    detail.append(heading, prose, statement, dl);
    detail.hidden = false;
  }

  function render() {
    const query = search.value.trim().toLocaleLowerCase();
    const matches = records.filter((record) => {
      const text = (record.case_id + "\n" + record.lean_statement_exact).toLocaleLowerCase();
      return !query || text.includes(query);
    });
    const visible = matches.slice(0, 30);
    resultsNode.replaceChildren();
    for (const record of visible) {
      const button = document.createElement("button");
      button.type = "button";
      button.className = "graph-result";
      button.dataset.caseId = record.case_id;
      button.setAttribute("role", "listitem");
      button.setAttribute("aria-pressed", record.case_id === selected ? "true" : "false");
      button.textContent = record.case_id + " — " + record.lean_statement_exact.replace(/\s+/g, " ").slice(0, 220);
      button.addEventListener("click", () => showRecord(record));
      resultsNode.appendChild(button);
    }
    status.textContent = matches.length
      ? "Verified graph files. Showing " + visible.length + " of " + matches.length + " matching records; refine the search to narrow the list."
      : "No exact text match. Try a theorem name or another phrase.";
  }

  async function load() {
    try {
      const summary = await fetchSummary();
      if (summary.schema_version !== "mathcase-public-knowledge-graph-view-v1"
        || summary.status !== "HASH_VERIFIED_READ_ONLY" || summary.gate_effect !== "NONE"
        || summary.record_count !== 4262 || summary.m4_promotions !== 0
        || summary.external_calls !== 0 || summary.external_spend_usd !== 0
        || !/^[0-9a-f]{64}$/.test(summary.index_sha256 || "")
        || !/^[0-9a-f]{64}$/.test(summary.records_sha256 || "")) {
        throw new Error("The graph summary did not match its read-only contract.");
      }
      const [indexBytes, recordsBytes] = await Promise.all([
        fetchBoundFile("index.jsonl", summary.index_sha256),
        fetchBoundFile("records.jsonl", summary.records_sha256),
      ]);
      if (await sha256(indexBytes) !== summary.index_sha256 || await sha256(recordsBytes) !== summary.records_sha256) {
        throw new Error("The graph file hashes did not match the verified summary.");
      }
      const index = parseLines(indexBytes);
      records = parseLines(recordsBytes);
      if (records.length !== summary.record_count || index.length !== records.length) {
        throw new Error("The graph row counts did not match the verified summary.");
      }
      for (let i = 0; i < records.length; i += 1) {
        const record = records[i];
        if (index[i].case_id !== record.case_id || index[i].statement_sha256 !== record.statement_sha256
          || !/^[0-9a-f]{64}$/.test(record.statement_sha256 || "")
          || record.m0_status !== "NOT_REVIEWED_AS_INDIVIDUAL_SHARD_STATEMENT"
          || record.m4_status !== "NOT_PROMOTED_PER_SHARD_REPLAY_ONLY") {
          throw new Error("A graph row did not match its exact index or review status.");
        }
      }
      panel.dataset.state = "ready";
      search.disabled = false;
      render();
    } catch (error) {
      panel.dataset.state = "unavailable";
      status.className = "tag blocked";
      status.textContent = String(error && error.message ? error.message : error);
      resultsNode.replaceChildren();
      detail.hidden = true;
    }
  }

  search.disabled = true;
  search.addEventListener("input", render);
  load();
}());
