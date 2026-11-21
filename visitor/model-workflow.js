"use strict";

const byId = (id) => document.getElementById(id);
const maxBytes = 16 * 1024 * 1024;
let currentCase = null;
let currentRun = null;
let targetBinding = "not loaded";
let currentResponses = [];

function message(id, text, error = false) {
  const node = byId(id);
  node.textContent = text;
  node.classList.toggle("warning", error);
}

function addText(parent, tag, text) {
  const node = document.createElement(tag);
  node.textContent = text;
  parent.append(node);
  return node;
}

function clearRunView() {
  byId("run-summary").replaceChildren();
  byId("attempts").replaceChildren();
  byId("responses").replaceChildren();
  message("run-status", "No run loaded.");
  message("response-status", "No provider response files loaded.");
}

async function sha256(text) {
  return sha256Bytes(new TextEncoder().encode(text));
}

async function sha256Bytes(bytes) {
  const digest = new Uint8Array(await crypto.subtle.digest("SHA-256", bytes));
  return Array.from(digest, (value) => value.toString(16).padStart(2, "0")).join("");
}

async function readJSON(file) {
  if (!file || file.size > maxBytes) throw new Error("file-too-large");
  return JSON.parse(await file.text());
}

byId("case-file").addEventListener("change", async () => {
  currentCase = null;
  currentRun = null;
  currentResponses = [];
  targetBinding = "not loaded";
  clearRunView();
  byId("export-review").disabled = true;
  byId("case-target").textContent = "—";
  byId("case-hash").textContent = "—";
  try {
    const packet = await readJSON(byId("case-file").files[0]);
    if (packet?.schema_version !== "mathcase-visitor-case-v1" ||
        typeof packet.formal_target !== "string" || !packet.formal_target.trim() ||
        typeof packet.title !== "string" || typeof packet.source !== "string") throw new Error("case-shape");
    currentCase = packet;
    byId("case-target").textContent = packet.formal_target;
    byId("case-hash").textContent = await sha256(packet.formal_target);
    message("case-status", "Loaded locally: " + packet.title + ". The exact declaration is ready for comparison.");
  } catch {
    message("case-status", "Could not load this full case packet. Export it from the MathCase workbench; files over 16 MiB are refused.", true);
  } finally {
    byId("case-file").value = "";
  }
});

function validDigest(value) { return typeof value === "string" && /^[0-9a-f]{64}$/i.test(value); }
function safeField(value, limit = 4000) { return typeof value === "string" ? value.slice(0, limit) : ""; }
function formatCost(micros) {
  if (!Number.isSafeInteger(micros) || micros < 0) return "not recorded";
  return "$" + (micros / 1_000_000).toFixed(6);
}
function elapsed(attempt) {
  const start = Date.parse(attempt.started_at);
  const finish = Date.parse(attempt.finished_at);
  return Number.isFinite(start) && Number.isFinite(finish) && finish >= start
    ? ((finish - start) / 1000).toFixed(2) + " s"
    : "not recorded";
}

byId("run-file").addEventListener("change", async () => {
  currentRun = null;
  targetBinding = "not loaded";
  currentResponses = [];
  clearRunView();
  byId("export-review").disabled = true;
  try {
    const run = await readJSON(byId("run-file").files[0]);
    if (run?.schema_version !== "mathcase-provider-solve-v1" || !Array.isArray(run.attempts) || run.attempts.length > 20) {
      throw new Error("run-shape");
    }
    currentRun = run;
    const root = byId("run-summary");
    byId("responses").replaceChildren();
    message("response-status", "No provider response files loaded.");
    addText(root, "p", "Run " + safeField(run.run_id, 160) + " · problem " + safeField(run.problem_id, 160));
    addText(root, "p", "Provider: " + safeField(run.provider_id, 100) + " · model: " + safeField(run.model_id, 200));
    const totalMicros = run.attempts.reduce((sum, attempt) => {
      return Number.isSafeInteger(attempt?.cost_micros) && attempt.cost_micros >= 0 ? sum + attempt.cost_micros : sum;
    }, 0);
    addText(root, "p", "Recorded attempts: " + run.attempts.length + " · recorded cost total: " + formatCost(totalMicros));
    const targetMatches = currentCase && typeof run.lean_statement === "string" &&
      validDigest(run.lean_statement_sha256) &&
      run.lean_statement === currentCase.formal_target &&
      (await sha256(run.lean_statement)) === run.lean_statement_sha256.toLowerCase();
    if (targetMatches) {
      targetBinding = "exact statement and SHA-256 match the imported case";
      message("run-status", "Exact Lean statement and its SHA-256 match this case packet.");
    } else if (!currentCase) {
      targetBinding = "no case packet loaded for comparison";
      message("run-status", "Loaded for inspection. Import a case packet to compare the exact target; this is not yet bound to your selected case.", true);
    } else {
      targetBinding = "exact target mismatch or target digest missing";
      message("run-status", "Target binding failed: the exact Lean statement or its hash does not match this case. Legacy results may omit target binding.", true);
    }
    for (const attempt of run.attempts) {
      const card = document.createElement("article");
      card.className = "attempt-card";
      addText(card, "h3", safeField(attempt?.stage, 100) + " · " + safeField(attempt?.outcome, 100));
      addText(card, "p", "Attempt " + safeField(attempt?.id, 160) + " · elapsed " + elapsed(attempt) + " · cost " + formatCost(attempt?.cost_micros));
      if (validDigest(attempt?.candidate_sha256)) addText(card, "p", "Candidate SHA-256: " + attempt.candidate_sha256.toLowerCase());
      if (safeField(attempt?.failure_class, 200) || safeField(attempt?.failure_summary, 4000)) {
        addText(card, "p", "Recorded failure: " + safeField(attempt.failure_class, 200));
        if (typeof attempt.failure_summary === "string" && attempt.failure_summary) {
          const details = document.createElement("details");
          addText(details, "summary", "Original failure summary");
          const failure = document.createElement("pre");
          failure.textContent = attempt.failure_summary;
          details.append(failure);
          card.append(details);
        }
      }
      byId("attempts").append(card);
    }
    if (typeof run.proof === "string" && run.proof) {
      const card = document.createElement("article");
      card.className = "attempt-card";
      addText(card, "h3", "Final candidate recorded in result");
      const proof = document.createElement("pre");
      proof.textContent = safeField(run.proof, 200000);
      card.append(proof);
      byId("attempts").append(card);
    }
    byId("export-review").disabled = false;
  } catch {
    message("run-status", "Could not load this provider result. Expected a MathCase provider-solve v1 JSON file under 16 MiB.", true);
  } finally {
    byId("run-file").value = "";
  }
});

function responseText(data) {
  const chat = data?.choices?.[0]?.message?.content;
  if (typeof chat === "string") return chat;
  const anthropic = data?.content;
  if (Array.isArray(anthropic)) return anthropic.filter((part) => part?.type === "text" && typeof part.text === "string").map((part) => part.text).join("\n");
  const gemini = data?.candidates?.[0]?.content?.parts;
  if (Array.isArray(gemini)) return gemini.filter((part) => typeof part?.text === "string").map((part) => part.text).join("\n");
  return "";
}

byId("response-files").addEventListener("change", async () => {
  const files = Array.from(byId("response-files").files || []);
  byId("response-files").value = "";
  currentResponses = [];
  byId("responses").replaceChildren();
  if (!currentRun) {
    message("response-status", "Load the provider run summary first.", true);
    return;
  }
  if (files.length > 20 || files.some((file) => file.size > 4 * 1024 * 1024) || files.reduce((sum, file) => sum + file.size, 0) > 16 * 1024 * 1024) {
    message("response-status", "Select at most 20 response files, each 4 MiB or less and 16 MiB total.", true);
    return;
  }
  const byDigest = new Map(currentRun.attempts.filter((attempt) => validDigest(attempt?.provider_response_sha256))
    .map((attempt) => [attempt.provider_response_sha256.toLowerCase(), attempt]));
  let unmatched = 0;
  for (const file of files) {
    const bytes = await file.arrayBuffer();
    const fileDigest = await sha256Bytes(bytes);
    const attempt = byDigest.get(fileDigest);
    if (!attempt) { unmatched += 1; continue; }
    try {
      const data = JSON.parse(new TextDecoder("utf-8", { fatal: true }).decode(bytes));
      const content = responseText(data);
      const item = {
        sha256: fileDigest,
        attempt_id: safeField(attempt.id, 160),
        stage: safeField(attempt.stage, 100),
        outcome: safeField(attempt.outcome, 100),
        candidate_sha256: validDigest(attempt.candidate_sha256) ? attempt.candidate_sha256.toLowerCase() : "",
        content
      };
      currentResponses.push(item);
      const card = document.createElement("article");
      card.className = "attempt-card";
      addText(card, "h3", `${item.stage} · ${item.outcome} · recorded response hash matches`);
      addText(card, "p", `Attempt ${item.attempt_id} · response SHA-256 ${item.sha256}`);
      if (item.candidate_sha256) addText(card, "p", `Candidate SHA-256 ${item.candidate_sha256}`);
      const body = document.createElement("pre");
      body.textContent = item.content || "No recognized text field in this provider response.";
      card.append(body);
      byId("responses").append(card);
    } catch { unmatched += 1; }
  }
  message("response-status", `${currentResponses.length} response(s) matched the selected run's recorded hashes; ${unmatched} file(s) did not match and were not displayed. Matched output is still untrusted model text.`, unmatched ? true : false);
});

byId("export-review").addEventListener("click", () => {
  if (!currentRun) return;
  const attempts = currentRun.attempts.map((attempt, index) =>
    `${index + 1}. ${safeField(attempt?.stage, 100)} / ${safeField(attempt?.outcome, 100)}; elapsed ${elapsed(attempt)}; cost ${formatCost(attempt?.cost_micros)}; failure ${safeField(attempt?.failure_class, 200)}: ${safeField(attempt?.failure_summary, 1000)}`
  );
  const report = [
    "MathCase visitor model-run review (imported, untrusted artifact)",
    "Run: " + safeField(currentRun.run_id, 160),
    "Problem: " + safeField(currentRun.problem_id, 160),
    "Target binding: " + targetBinding,
    "Provider outcome solved: " + String(currentRun.solved),
    "Attempt count: " + currentRun.attempts.length,
    "Attempts:", ...attempts,
    "\nMatched provider responses:",
    ...currentResponses.map((response) => `\n[${response.stage} ${response.outcome} · attempt ${response.attempt_id} · SHA-256 ${response.sha256}]\n${response.content}`),
    "\nThis report is a viewer summary, not a Lean receipt or signature."
  ].join("\n");
  const url = URL.createObjectURL(new Blob([report], { type: "text/plain;charset=utf-8" }));
  const link = document.createElement("a");
  link.href = url;
  link.download = "mathcase-run-review.txt";
  link.click();
  setTimeout(() => URL.revokeObjectURL(url), 60000);
  message("run-status", "Local review notes prepared for download. The report contains no local file paths.");
});
