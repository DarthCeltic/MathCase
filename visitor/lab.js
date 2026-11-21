"use strict";

const filesInput = document.getElementById("run-files");
const statusNode = document.getElementById("status");
const summaryNode = document.getElementById("summary");
const runsNode = document.getElementById("runs");
const downloadButton = document.getElementById("download-report");
const maxFileBytes = 16 * 1024 * 1024;
const maxFiles = 50;
const maxAggregateBytes = 32 * 1024 * 1024;
let records = [];

function text(parent, tag, value) {
  const node = document.createElement(tag);
  node.textContent = value;
  parent.append(node);
  return node;
}

function validSHA(value) { return typeof value === "string" && /^[0-9a-f]{64}$/i.test(value); }
function bounded(value, limit = 12000) { return typeof value === "string" ? value.slice(0, limit) : ""; }
function fullText(value) { return typeof value === "string" ? value : ""; }
function fenced(value) {
  const longest = Math.max(0, ...Array.from(value.matchAll(/`+/g), (match) => match[0].length));
  const marker = "`".repeat(Math.max(3, longest + 1));
  return `${marker}\n${value}\n${marker}`;
}
function duration(attempt) {
  const start = Date.parse(attempt?.started_at);
  const end = Date.parse(attempt?.finished_at);
  return Number.isFinite(start) && Number.isFinite(end) && end >= start ? (end - start) / 1000 : null;
}
function cost(attempt) {
  return attempt?.cost_known === true && Number.isSafeInteger(attempt?.cost_micros) && attempt.cost_micros >= 0
    ? attempt.cost_micros : null;
}
function money(micros) { return "$" + (micros / 1000000).toFixed(6); }

async function digest(textValue) {
  const bytes = new Uint8Array(await crypto.subtle.digest("SHA-256", new TextEncoder().encode(textValue)));
  return Array.from(bytes, (value) => value.toString(16).padStart(2, "0")).join("");
}

function draw() {
  summaryNode.replaceChildren();
  runsNode.replaceChildren();
  if (!records.length) { downloadButton.disabled = true; return; }
  const attempts = records.flatMap((record) => record.run.attempts);
  const passes = attempts.filter((attempt) => attempt.outcome === "PASS" && validSHA(attempt.verified_proof_sha256)).length;
  const providerSolved = records.filter((record) => record.run.solved === true).length;
  const elapsedValues = attempts.map(duration).filter((value) => value !== null);
  const costValues = attempts.map(cost);
  const knownCost = costValues.reduce((sum, value) => sum + (value ?? 0), 0);
  const unknownCost = costValues.filter((value) => value === null).length;
  text(summaryNode, "p", `Run packets: ${records.length} · attempts: ${attempts.length} · records reporting PASS plus a proof hash: ${passes} · provider summary solved=true: ${providerSolved}`);
  text(summaryNode, "p", `Recorded attempt time: ${elapsedValues.reduce((sum, value) => sum + value, 0).toFixed(2)} seconds across ${elapsedValues.length}/${attempts.length} attempts · known recorded cost: ${money(knownCost)}${unknownCost ? ` plus ${unknownCost} attempt(s) with unknown cost` : ""}`);
  const table = document.createElement("table");
  table.className = "report-table";
  const head = document.createElement("thead");
  const header = document.createElement("tr");
  for (const label of ["Run / attempt", "Problem / candidate hash", "Recorded UTC / elapsed", "Attempts / cost", "Provider / failure", "Exact target binding"]) text(header, "th", label);
  head.append(header);
  const body = document.createElement("tbody");
  for (const record of records) {
    const row = document.createElement("tr");
    for (const value of [record.run.run_id, record.run.problem_id, record.run.recorded_at_utc, String(record.run.attempts.length), record.run.solved === true ? "solved=true" : "solved=false", record.targetBinding]) text(row, "td", bounded(value, 240));
    body.append(row);
    for (const [index, attempt] of record.run.attempts.entries()) {
      const detail = document.createElement("tr");
      const failure = [bounded(attempt.failure_class, 200), bounded(attempt.failure_summary, 12000)].filter(Boolean).join(": ");
      const costValue = cost(attempt);
      for (const value of [
        `  attempt ${index + 1}: ${bounded(attempt.stage, 100)} / ${bounded(attempt.outcome, 100)}`,
        validSHA(attempt.candidate_sha256) ? attempt.candidate_sha256 : "candidate hash missing",
        duration(attempt) === null ? "time missing" : `${duration(attempt).toFixed(2)} s`,
        costValue === null ? "cost unknown" : money(costValue),
        failure || "No failure recorded",
        ""
      ]) text(detail, "td", value);
      body.append(detail);
    }
  }
  table.append(head, body);
  summaryNode.append(table);
  records.forEach((record) => {
    const card = document.createElement("article");
    card.className = "attempt-card";
    text(card, "h3", `${bounded(record.run.run_id, 160)} · ${record.targetBinding}`);
    if (record.targetStatement) {
      const target = document.createElement("pre");
      target.textContent = record.targetStatement;
      card.append(target);
    }
    for (const attempt of record.run.attempts) {
      if (attempt.outcome === "PASS") continue;
      const failureText = [bounded(attempt.failure_class, 200), bounded(attempt.failure_summary, 12000)].filter(Boolean).join(": ");
      if (failureText) text(card, "p", `${bounded(attempt.stage, 100)} ${bounded(attempt.outcome, 100)} — ${failureText}`);
    }
    runsNode.append(card);
  });
  downloadButton.disabled = false;
}

filesInput.addEventListener("change", async () => {
  records = [];
  draw();
  const files = Array.from(filesInput.files || []);
  filesInput.value = "";
  if (!files.length) return;
  if (files.length > maxFiles || files.some((file) => file.size > maxFileBytes) || files.reduce((sum, file) => sum + file.size, 0) > maxAggregateBytes) {
    statusNode.textContent = `Select no more than ${maxFiles} files; each must be 16 MiB or smaller and total input must be 32 MiB or smaller.`;
    statusNode.classList.add("warning");
    return;
  }
  statusNode.classList.remove("warning");
  for (const file of files) {
    try {
      const run = JSON.parse(await file.text());
      const validAttempts = Array.isArray(run?.attempts) && run.attempts.length <= 20 &&
        run.attempts.every((attempt) => attempt && typeof attempt === "object" && !Array.isArray(attempt));
      if (run?.schema_version !== "mathcase-provider-solve-v1" || !validAttempts ||
          typeof run.run_id !== "string" || typeof run.problem_id !== "string" || typeof run.solved !== "boolean") {
        throw new Error("invalid shape");
      }
      const knownTarget = typeof run.lean_statement === "string" && validSHA(run.lean_statement_sha256) &&
        await digest(run.lean_statement) === run.lean_statement_sha256.toLowerCase();
      records.push({
        filename: file.name,
        run,
        targetStatement: knownTarget ? run.lean_statement : "",
        targetBinding: knownTarget ? "statement hash verified; no case-packet match claimed" : "target hash missing or invalid"
      });
    } catch {
      statusNode.textContent = `One or more files were not valid provider-solve records. Rejected: ${file.name}. No report was produced.`;
      statusNode.classList.add("warning");
      records = [];
      draw();
      return;
    }
  }
  statusNode.textContent = `Loaded ${records.length} run packet(s) locally. Denominator includes every selected packet.`;
  draw();
});

downloadButton.addEventListener("click", () => {
  if (!records.length) return;
  const attempts = records.flatMap((record) => record.run.attempts);
  const knownCost = attempts.reduce((sum, attempt) => sum + (cost(attempt) ?? 0), 0);
  const unknownCost = attempts.filter((attempt) => cost(attempt) === null).length;
  const elapsedValues = attempts.map(duration).filter((value) => value !== null);
  const passCount = attempts.filter((attempt) => attempt.outcome === "PASS" && validSHA(attempt.verified_proof_sha256)).length;
  const lines = [
    "# MathCase run summary",
    "",
    "**Evidence class:** local descriptive report generated from user-selected provider-solve v1 JSON. This is not a benchmark, signature, independent verifier, or efficacy claim.",
    "",
    `- Run-packet denominator: ${records.length}`,
    `- Attempt denominator: ${attempts.length}`,
    `- Attempt records reporting PASS and a verified-proof hash field: ${passCount}`,
    `- Run summaries with solved=true: ${records.filter((record) => record.run.solved === true).length}`,
    `- Recorded attempt time: ${elapsedValues.reduce((sum, value) => sum + value, 0).toFixed(2)} seconds across ${elapsedValues.length}/${attempts.length} attempts`,
    `- Recorded cost: ${money(knownCost)} known; ${unknownCost} attempt(s) have unknown cost`,
    "",
    "## Per-run details",
    ""
  ];
  for (const record of records) {
    lines.push(`### ${bounded(record.run.run_id, 160)}`, "", `- Problem: ${bounded(record.run.problem_id, 160)}`, `- Recorded UTC: ${bounded(record.run.recorded_at_utc, 100)}`, `- Provider/model: ${bounded(record.run.provider_id, 100)} / ${bounded(record.run.model_id, 200)}`, `- Exact target binding: ${record.targetBinding}`);
    if (record.targetStatement) lines.push("- Exact Lean proposition:", "", "```lean", record.targetStatement, "``` ");
    lines.push(`- Provider summary solved: ${record.run.solved === true}`, "", "| # | Stage | Outcome | Candidate SHA-256 | Time | Cost | Failure class |", "|---:|---|---|---|---:|---:|---|");
    record.run.attempts.forEach((attempt, index) => {
      const failureClass = bounded(attempt.failure_class, 200).replaceAll("|", "\\|") || "(none recorded)";
      lines.push(`| ${index + 1} | ${bounded(attempt.stage, 100)} | ${bounded(attempt.outcome, 100)} | ${validSHA(attempt.candidate_sha256) ? attempt.candidate_sha256 : "missing"} | ${duration(attempt) === null ? "unknown" : duration(attempt).toFixed(2) + " s"} | ${cost(attempt) === null ? "unknown" : money(cost(attempt))} | ${failureClass} |`);
      const failure = fullText(attempt.failure_summary);
      if (failure) lines.push("", `**Attempt ${index + 1} original failure summary:**`, "", fenced(failure), "");
    });
    lines.push("");
  }
  lines.push("## Limits", "", "This report summarizes fields in selected files. It does not verify the Lean Docker receipt, check source-to-target bindings beyond the recorded proposition hash, audit the provider-call evidence, normalize different targets into a benchmark, or show that a library improved results. Preserve the original input files alongside this report.", "");
  const blob = new Blob([lines.join("\n")], { type: "text/markdown;charset=utf-8" });
  const url = URL.createObjectURL(blob);
  const link = document.createElement("a");
  link.href = url;
  link.download = "mathcase-lab-report.md";
  link.click();
  setTimeout(() => URL.revokeObjectURL(url), 60000);
  statusNode.textContent = "Local report prepared. All imported run packets and attempt failures remain in the exported report within the selected file-size limits.";
});

document.getElementById("clear-report").addEventListener("click", () => {
  records = [];
  statusNode.textContent = "No files selected.";
  statusNode.classList.remove("warning");
  draw();
});
