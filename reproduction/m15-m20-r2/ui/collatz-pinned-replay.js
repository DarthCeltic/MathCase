(function () {
  "use strict";

  const API_PATH = "/api/collatz-pinned-replay";
  const FILE_API_PATH = "/api/collatz-pinned-replay-file";
  const FILE_LABELS = {
    "README.md": "Replay summary and reproduction steps",
    "manifest.tsv": "Pinned source-module manifest",
    "run-results.tsv": "Per-module replay results",
    "shard-receipts.jsonl": "Per-shard receipts and hashes",
    "axiom-group-receipts.jsonl": "Grouped axiom-audit receipts",
    "m20-aggregate-m0-packet.md": "M20 aggregate statement reviewed (M0)",
    "m20-composition-v1/README.md": "M20 aggregate: what was checked",
    "m20-composition-v1/attempt-history.md": "M20 failed attempts and resource-limit history",
    "m20-composition-v1/source-index.md": "M20 Lean source list and hashes",
    "m20-composition-v1/compile-receipts.tsv": "M20 per-module compile receipts",
    "m20-composition-v1/outputs/final-stdout.txt": "M20 final theorem axiom report",
    "m20-composition-v1/sources/M20AllFamilies.lean": "Original M20 aggregate target source",
    "m20-composition-v1/sources/M20CompositionAllFamiliesV1.lean": "M20 final composition theorem source",
  };

  const panel = document.getElementById("collatz-pinned-replay");
  if (!panel) return;

  const status = document.getElementById("collatz-replay-status");
  const summaryNode = document.getElementById("collatz-replay-summary");
  const scopeNode = document.getElementById("collatz-replay-scope");
  const filesNode = document.getElementById("collatz-replay-files");
  const manifestNode = document.getElementById("collatz-replay-manifest");
  const refreshButton = document.getElementById("collatz-replay-refresh");

  function formatCount(value) {
    return Number.isSafeInteger(value) ? value.toLocaleString("en-US") : "unavailable";
  }

  function setUnavailable(error) {
    panel.dataset.state = "unavailable";
    status.textContent = "Evidence unavailable";
    status.className = "tag blocked";
    summaryNode.textContent = String(error && error.message ? error.message : error);
    scopeNode.textContent = "No replay claim is displayed until the manifest and its inventory can be reopened.";
    filesNode.replaceChildren();
    manifestNode.textContent = "Manifest could not be verified.";
  }

  function render(payload) {
    if (!payload || payload.schema_version !== "mathcase-collatz-pinned-replay-view-v1"
      || payload.status !== "HASH_VERIFIED_READ_ONLY" || payload.gate_effect !== "NONE"
      || !/^[0-9a-f]{64}$/.test(payload.manifest_sha256 || "")) {
      throw new Error("The replay summary did not match its read-only schema or pinned manifest.");
    }

    const counts = payload.summary && payload.summary.module_counts;
    const summary = payload.summary || {};
    const total = counts && counts.total;
    const axiomCounts = summary.axiom_counts || {};
    const axiomEntries = Object.entries(axiomCounts);
    const numericTotals = [
      total, counts && counts.m15, counts && counts.m16, counts && counts.m18, counts && counts.m20,
      summary.modules_passed, summary.modules_failed, summary.axiom_groups,
      summary.axiom_queries_expected, summary.axiom_queries_reported, summary.sorry_ax_reports,
    ];
    if (!numericTotals.every(Number.isSafeInteger) || summary.modules_passed + summary.modules_failed !== total
      || summary.axiom_queries_expected !== summary.axiom_queries_reported
      || !axiomEntries.length || !axiomEntries.every(([, count]) => Number.isSafeInteger(count))) {
      throw new Error("The displayed replay totals did not pass consistency checks.");
    }

    const axiomNames = Object.keys(axiomCounts);
    const m15 = formatCount(counts.m15);
    const m16 = formatCount(counts.m16);
    const m18 = formatCount(counts.m18);
    const m20 = formatCount(counts.m20);
    const axiomText = axiomNames.length
      ? axiomNames.map((name) => name + " " + formatCount(axiomCounts[name])).join(", ")
      : "not recorded";
    summaryNode.textContent = formatCount(summary.modules_passed) + "/" + formatCount(total)
      + " shard modules compiled (M15 " + m15 + ", M16 " + m16 + ", M18 " + m18 + ", M20 " + m20 + "). "
      + formatCount(summary.axiom_queries_reported) + " theorem declarations were audited in "
      + formatCount(summary.axiom_groups) + " groups; axiom reports list " + axiomText + " and "
      + formatCount(summary.sorry_ax_reports) + " sorryAx occurrences.";

    scopeNode.textContent = String(payload.claim_boundary || "Claim boundary unavailable.")
      + " M20 aggregate composition: " + String(payload.composition && payload.composition.status || "status unavailable")
      + ". No M4 or later gate is changed.";
    status.textContent = "Manifest pinned · files checked on open";
    status.className = "tag";
    panel.dataset.state = "ready";
    manifestNode.textContent = "Manifest SHA-256: " + payload.manifest_sha256
      + " · source commit: " + String(payload.source_commit || "not recorded")
      + " · Lean " + String(payload.toolchain && payload.toolchain.lean_version || "not recorded")
      + " · Mathlib " + String(payload.toolchain && payload.toolchain.mathlib_tag || "not recorded")
      + " · recorded " + String(payload.finished_at_eastern || "time unavailable")
      + ". Opening a receipt is read-only and does not recompile its theorem.";

    filesNode.replaceChildren();
    for (const file of Array.isArray(payload.files) ? payload.files : []) {
      if (!file || typeof file.path !== "string" || !/^[0-9a-f]{64}$/.test(file.sha256 || "")) continue;
      const row = document.createElement("p");
      const link = document.createElement("a");
      const query = new URLSearchParams({ path: file.path, sha256: file.sha256 });
      link.href = FILE_API_PATH + "?" + query.toString();
      link.target = "_blank";
      link.rel = "noopener noreferrer";
      link.className = "link";
      link.textContent = FILE_LABELS[file.path] || file.path;
      row.appendChild(link);
      row.appendChild(document.createTextNode(" · " + file.path + " · " + formatCount(file.bytes) + " bytes · SHA-256 " + file.sha256));
      filesNode.appendChild(row);
    }
    if (!filesNode.childElementCount) {
      filesNode.textContent = "No inventoried replay files are linked.";
    }
  }

  async function load() {
    refreshButton.disabled = true;
    status.textContent = "Checking the pinned inventory…";
    status.className = "tag proposed";
    panel.dataset.state = "loading";
    try {
      const response = await fetch(API_PATH, { cache: "no-store", credentials: "same-origin" });
      let payload = {};
      try {
        payload = await response.json();
      } catch {
        throw new Error("The local replay endpoint returned invalid JSON.");
      }
      if (!response.ok) throw new Error(payload.error || "Replay evidence is unavailable (HTTP " + response.status + ").");
      render(payload);
    } catch (error) {
      setUnavailable(error);
    } finally {
      refreshButton.disabled = false;
    }
  }

  refreshButton.addEventListener("click", () => void load());
  void load();
})();
