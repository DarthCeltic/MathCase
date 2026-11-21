"use strict";

const studyInput = document.getElementById("study-file");
const runInput = document.getElementById("run-files");
const studyStatus = document.getElementById("study-status");
const runStatus = document.getElementById("run-status");
const infoNode = document.getElementById("study-info");
const summaryNode = document.getElementById("summary");
const slotsNode = document.getElementById("slots");
const reportButton = document.getElementById("download-report");
const bindingButton = document.getElementById("download-binding");
const maxManifestBytes = 1024 * 1024;
const maxFileBytes = 16 * 1024 * 1024;
const maxFiles = 100;
const maxAggregateBytes = 32 * 1024 * 1024;
let study = null;
let manifestSHA256 = "";
let inputs = [];
let unbound = [];
let duplicates = [];
let rejected = [];
let slotResults = [];

function addText(parent, tag, value) {
  const node = document.createElement(tag);
  node.textContent = String(value);
  parent.append(node);
  return node;
}

function validSHA(value) { return typeof value === "string" && /^[0-9a-f]{64}$/i.test(value); }
function validID(value) { return typeof value === "string" && /^[A-Za-z0-9][A-Za-z0-9._-]{0,63}$/.test(value); }
function safeName(value) { return typeof value === "string" ? value.slice(0, 200).replaceAll("|", "\\|") : ""; }
function bytesToHex(bytes) { return Array.from(new Uint8Array(bytes), (value) => value.toString(16).padStart(2, "0")).join(""); }

async function hashBytes(value) {
  return bytesToHex(await crypto.subtle.digest("SHA-256", value));
}

async function hashText(value) {
  return hashBytes(new TextEncoder().encode(value));
}

async function readJSONFile(file, limit) {
  if (file.size > limit) throw new Error("file exceeds the size limit");
  const bytes = await file.arrayBuffer();
  const digest = await hashBytes(bytes);
  let parsed;
  try {
    parsed = JSON.parse(new TextDecoder("utf-8", { fatal: true }).decode(bytes));
  } catch (error) {
    error.fileSHA256 = digest;
    throw error;
  }
  return { parsed, digest };
}

function positiveInteger(value, name, allowZero = false) {
  if (!Number.isSafeInteger(value) || value < (allowZero ? 0 : 1)) throw new Error("invalid " + name);
}

async function validateManifest(value) {
  if (!value || value.schema_version !== "mathcase-frozen-study-v1") throw new Error("unsupported study schema");
  if (!validID(value.study_id)) throw new Error("invalid study_id");
  if (!["preregistered", "synthetic-demo-template"].includes(value.evidence_class)) throw new Error("invalid evidence_class");
  if (!Number.isFinite(Date.parse(value.frozen_at_utc)) || !/Z$/.test(value.frozen_at_utc)) throw new Error("frozen_at_utc must be an ISO UTC timestamp");
  if (typeof value.protocol_text !== "string" || !value.protocol_text.trim() || !validSHA(value.protocol_sha256) ||
      await hashText(value.protocol_text) !== value.protocol_sha256.toLowerCase()) throw new Error("protocol text/hash mismatch");
  const conditions = value.conditions;
  if (!conditions || typeof conditions !== "object") throw new Error("missing shared run conditions");
  positiveInteger(conditions.seconds_per_target, "seconds_per_target");
  positiveInteger(conditions.calls_per_target, "calls_per_target");
  positiveInteger(conditions.output_tokens_per_target, "output_tokens_per_target");
  positiveInteger(conditions.cost_ceiling_micros_per_target, "cost_ceiling_micros_per_target", true);
  if (!validSHA(conditions.lean_snapshot_sha256) || !validSHA(conditions.worker_snapshot_sha256)) throw new Error("run snapshot hashes are missing");
  if (!Array.isArray(value.arms) || value.arms.length !== 2) throw new Error("exactly two arms are required");
  const arms = new Map();
  for (const arm of value.arms) {
    if (!arm || !["library", "baseline"].includes(arm.arm_id) || arms.has(arm.arm_id) ||
        typeof arm.description !== "string" || !arm.description.trim()) throw new Error("invalid or duplicate arm");
    if (arm.arm_id === "library" && !validSHA(arm.library_snapshot_sha256)) throw new Error("library arm needs a pinned library hash");
    if (arm.arm_id === "baseline" && arm.library_snapshot_sha256 !== null) throw new Error("baseline arm must have library_snapshot_sha256 null");
    arms.set(arm.arm_id, arm);
  }
  if (!arms.has("library") || !arms.has("baseline")) throw new Error("library and baseline arms are required");
  if (!Array.isArray(value.cases) || value.cases.length < 1 || value.cases.length > 100) throw new Error("study needs 1 to 100 frozen cases");
  const ids = new Set();
  const problemIDs = new Set();
  for (const item of value.cases) {
    if (!item || !validID(item.case_id) || !validID(item.problem_id) || ids.has(item.case_id) ||
        problemIDs.has(item.problem_id) || item.role !== "held-out" || typeof item.statement !== "string" ||
        !item.statement.trim() || !validSHA(item.packet_sha256) || !validSHA(item.statement_sha256) ||
        await hashText(item.statement) !== item.statement_sha256.toLowerCase()) {
      throw new Error("invalid, duplicate, or unbound frozen case");
    }
    ids.add(item.case_id);
    problemIDs.add(item.problem_id);
  }
  return { arms, cases: new Map(value.cases.map((item) => [item.case_id, item])) };
}

function reportedPass(run) {
  return run.solved === true && run.attempts.some((attempt) =>
    attempt && attempt.outcome === "PASS" && validSHA(attempt.verified_proof_sha256));
}

function renderStudy() {
  infoNode.replaceChildren();
  summaryNode.replaceChildren();
  slotsNode.replaceChildren();
  reportButton.disabled = !study;
  bindingButton.disabled = !study;
  runInput.disabled = !study;
  if (!study) return;
  addText(infoNode, "p", "Study " + study.value.study_id + " · " + study.value.evidence_class +
    " · frozen manifest bytes SHA-256 " + manifestSHA256);
  addText(infoNode, "p", "Every scored run envelope must include this exact digest as study_manifest_sha256.");
  addText(infoNode, "p", study.value.cases.length + " frozen target(s) × 2 arms = " +
    (study.value.cases.length * 2) + " planned case-arm slots.");
  const rows = document.createElement("ul");
  for (const item of study.value.cases) addText(rows, "li", item.case_id + " / " + item.problem_id +
    " · statement SHA-256 " + item.statement_sha256);
  infoNode.append(rows);
  if (!slotResults.length && !rejected.length && !unbound.length) return;
  const byArm = new Map();
  for (const arm of ["library", "baseline"]) {
    const planned = study.value.cases.length;
    const armSlots = slotResults.filter((slot) => slot.arm_id === arm);
    const present = armSlots.filter((slot) => slot.status === "present");
    const pass = present.filter((slot) => reportedPass(slot.entry.envelope.run_record)).length;
    const conflict = armSlots.filter((slot) => slot.status === "conflict").length;
    const missing = armSlots.filter((slot) => slot.status === "missing").length;
    byArm.set(arm, { planned, pass, conflict, missing, present: present.length });
  }
  const lib = byArm.get("library");
  const base = byArm.get("baseline");
  addText(summaryNode, "p", "Inputs: " + inputs.length + " unique v2 envelope(s) bound to these exact manifest bytes; " +
    unbound.length + " unbound or stale envelope(s) kept for description only; " + duplicates.length +
    " exact duplicate file(s) ignored; " + rejected.length + " rejected input(s).");
  addText(summaryNode, "p", "Library arm: " + lib.pass + "/" + lib.planned +
    " reported pass; " + lib.present + " present, " + lib.missing + " missing, " + lib.conflict + " conflicting.");
  addText(summaryNode, "p", "Baseline arm: " + base.pass + "/" + base.planned +
    " reported pass; " + base.present + " present, " + base.missing + " missing, " + base.conflict + " conflicting.");
  addText(summaryNode, "p", "A pass means supplied run fields say solved=true and include a PASS attempt with a proof-hash field. This is not independent Lean verification.");
  const list = document.createElement("ul");
  for (const slot of slotResults) {
    const detail = slot.status === "present" ? slot.entry.filename + " · run " + slot.entry.envelope.run_record.run_id :
      slot.status === "conflict" ? slot.entries.length + " different inputs occupy this planned slot" : "no accepted input for this planned slot";
    addText(list, "li", slot.case_id + " / " + slot.arm_id + " · " + slot.status + " · " + detail);
  }
  slotsNode.append(list);
  if (rejected.length) {
    const rejectedList = document.createElement("ul");
    for (const item of rejected) addText(rejectedList, "li", item.filename + " · rejected: " + item.reason);
    slotsNode.append(addText(slotsNode, "h3", "Rejected inputs"), rejectedList);
  }
  if (unbound.length) {
    const unboundList = document.createElement("ul");
    for (const item of unbound) {
      const digest = item.envelope.study_manifest_sha256 || "no manifest digest";
      addText(unboundList, "li", item.filename + " · run " + item.envelope.run_record.run_id +
        " · " + item.reason + " · envelope manifest SHA-256 " + digest);
    }
    slotsNode.append(addText(slotsNode, "h3", "Descriptive only · not scored"), unboundList);
  }
}

function rebuildSlots() {
  if (!study) return;
  const runIDs = new Map();
  for (const entry of inputs) {
    const id = entry.envelope.run_record.run_id;
    if (!runIDs.has(id)) runIDs.set(id, []);
    runIDs.get(id).push(entry);
  }
  const conflictingRunEntries = new Set();
  for (const entries of runIDs.values()) {
    if (entries.length > 1) entries.forEach((entry) => conflictingRunEntries.add(entry));
  }
  slotResults = [];
  for (const item of study.value.cases) {
    for (const arm of ["library", "baseline"]) {
      const entries = inputs.filter((entry) => entry.envelope.case_id === item.case_id &&
        entry.envelope.arm_id === arm && entry.runMatches && !conflictingRunEntries.has(entry));
      const invalidIdentity = inputs.filter((entry) => entry.envelope.case_id === item.case_id &&
        entry.envelope.arm_id === arm && entry.runMatches && conflictingRunEntries.has(entry));
      const all = entries.concat(invalidIdentity);
      if (all.length > 1 || invalidIdentity.length) {
        slotResults.push({ case_id: item.case_id, arm_id: arm, status: "conflict", entries: all });
      } else if (entries.length === 1) {
        slotResults.push({ case_id: item.case_id, arm_id: arm, status: "present", entry: entries[0] });
      } else {
        slotResults.push({ case_id: item.case_id, arm_id: arm, status: "missing", entries: [] });
      }
    }
  }
  renderStudy();
}

studyInput.addEventListener("change", async () => {
  study = null;
  manifestSHA256 = "";
  inputs = [];
  unbound = [];
  duplicates = [];
  rejected = [];
  slotResults = [];
  renderStudy();
  studyStatus.textContent = "Checking manifest…";
  runStatus.textContent = "Load a valid study manifest first.";
  const file = studyInput.files?.[0];
  studyInput.value = "";
  if (!file) { studyStatus.textContent = "No study manifest selected."; return; }
  try {
    const loaded = await readJSONFile(file, maxManifestBytes);
    const validated = await validateManifest(loaded.parsed);
    study = { value: loaded.parsed, validated };
    manifestSHA256 = loaded.digest;
    studyStatus.textContent = "Study manifest accepted and hash-bound locally. This does not prove it was frozen before a run.";
    runStatus.textContent = "Select run envelopes bound to this study.";
    rebuildSlots();
  } catch (error) {
    studyStatus.textContent = "Study manifest rejected: " + String(error.message || error);
  }
});

bindingButton.addEventListener("click", () => {
  if (!study) return;
  const binding = {
    schema_version: "mathcase-frozen-study-binding-v1",
    study_id: study.value.study_id,
    evidence_class: study.value.evidence_class,
    frozen_at_utc: study.value.frozen_at_utc,
    study_manifest_sha256: manifestSHA256,
    notice: "This records the selected manifest bytes; it is not a signature and does not prove the manifest predates any run."
  };
  const blob = new Blob([JSON.stringify(binding, null, 2) + "\n"], { type: "application/json;charset=utf-8" });
  const url = URL.createObjectURL(blob);
  const link = document.createElement("a");
  link.href = url;
  link.download = "mathcase-study-binding-" + study.value.study_id + ".json";
  link.click();
  setTimeout(() => URL.revokeObjectURL(url), 60000);
  studyStatus.textContent = "Downloaded the binding record for these exact manifest bytes. Copy its digest into every v2 run envelope.";
});

runInput.addEventListener("change", async () => {
  inputs = [];
  unbound = [];
  duplicates = [];
  rejected = [];
  const files = Array.from(runInput.files || []);
  runInput.value = "";
  if (!study) { runStatus.textContent = "Load a valid study manifest first."; renderStudy(); return; }
  if (!files.length) { runStatus.textContent = "No run envelopes selected."; rebuildSlots(); return; }
  if (files.length > maxFiles || files.some((file) => file.size > maxFileBytes) ||
      files.reduce((sum, file) => sum + file.size, 0) > maxAggregateBytes) {
    rejected.push({ filename: "(selection)", reason: "file-count or byte limit exceeded", sha256: "(unavailable)" });
    runStatus.textContent = "Selection rejected: at most 100 files, 16 MiB each, and 32 MiB total.";
    rebuildSlots();
    return;
  }
  const seenFileHashes = new Set();
  for (const file of files) {
    let loaded;
    try {
      loaded = await readJSONFile(file, maxFileBytes);
      if (seenFileHashes.has(loaded.digest)) {
        duplicates.push({ filename: file.name, sha256: loaded.digest });
        continue;
      }
      seenFileHashes.add(loaded.digest);
      const envelope = loaded.parsed;
      if (!envelope || !["mathcase-lab-run-envelope-v1", "mathcase-lab-run-envelope-v2"].includes(envelope.schema_version) ||
          envelope.study_id !== study.value.study_id || !validID(envelope.case_id) ||
          !["library", "baseline"].includes(envelope.arm_id)) throw new Error("invalid envelope identity");
      if (envelope.schema_version === "mathcase-lab-run-envelope-v2" && !validSHA(envelope.study_manifest_sha256)) {
        throw new Error("v2 envelope is missing a valid study_manifest_sha256");
      }
      const caseData = study.validated.cases.get(envelope.case_id);
      if (!caseData) throw new Error("case_id is not in the frozen manifest");
      if (!envelope.run_record || envelope.run_record.schema_version !== "mathcase-provider-solve-v1" ||
          !validID(envelope.run_record.run_id) || envelope.run_record.problem_id !== caseData.problem_id ||
          envelope.run_record.lean_statement !== caseData.statement ||
          String(envelope.run_record.lean_statement_sha256 || "").toLowerCase() !== caseData.statement_sha256.toLowerCase() ||
          await hashText(envelope.run_record.lean_statement) !== caseData.statement_sha256.toLowerCase() ||
          typeof envelope.run_record.solved !== "boolean" || !Array.isArray(envelope.run_record.attempts) ||
          envelope.run_record.attempts.length > 20) throw new Error("run record does not bind the frozen problem and target");
      const entry = { filename: file.name, fileSHA256: loaded.digest, envelope, runMatches: true };
      if (envelope.schema_version === "mathcase-lab-run-envelope-v1") {
        entry.reason = "legacy v1 envelope has no required exact-manifest binding";
        unbound.push(entry);
      } else if (envelope.study_manifest_sha256.toLowerCase() !== manifestSHA256.toLowerCase()) {
        entry.reason = "manifest digest differs from the selected frozen study";
        unbound.push(entry);
      } else {
        inputs.push(entry);
      }
    } catch (error) {
      rejected.push({
        filename: file.name,
        sha256: loaded?.digest || error.fileSHA256 || "(unavailable)",
        reason: String(error.message || error).slice(0, 300)
      });
    }
  }
  runStatus.textContent = "Imported selected files locally. The denominator remains the frozen manifest, including missing and conflicting slots.";
  rebuildSlots();
});

document.getElementById("download-template").addEventListener("click", async () => {
  const statements = [
    ["case-add-zero", "nat_zero_add", "theorem nat_zero_add (n : Nat) : 0 + n = n"],
    ["case-add-right-zero", "nat_add_zero", "theorem nat_add_zero (n : Nat) : n + 0 = n"]
  ];
  const casePackets = [];
  for (const [caseID, problemID, statement] of statements) {
    casePackets.push({
      case_id: caseID,
      problem_id: problemID,
      role: "held-out",
      statement,
      statement_sha256: await hashText(statement),
      packet_sha256: await hashText("synthetic packet for " + caseID)
    });
  }
  const protocol = "Synthetic template only. Replace targets with human-reviewed held-out items and freeze this manifest before any run.";
  const manifest = {
    schema_version: "mathcase-frozen-study-v1",
    study_id: "synthetic-study-template",
    evidence_class: "synthetic-demo-template",
    frozen_at_utc: new Date().toISOString(),
    protocol_text: protocol,
    protocol_sha256: await hashText(protocol),
    conditions: {
      seconds_per_target: 60,
      calls_per_target: 1,
      output_tokens_per_target: 1000,
      cost_ceiling_micros_per_target: 0,
      lean_snapshot_sha256: await hashText("synthetic-lean-snapshot"),
      worker_snapshot_sha256: await hashText("synthetic-worker-snapshot")
    },
    arms: [
      { arm_id: "library", description: "Synthetic library-enabled arm.", library_snapshot_sha256: await hashText("synthetic-library-snapshot") },
      { arm_id: "baseline", description: "Synthetic no-library arm.", library_snapshot_sha256: null }
    ],
    cases: casePackets
  };
  const blob = new Blob([JSON.stringify(manifest, null, 2) + "\n"], { type: "application/json;charset=utf-8" });
  const url = URL.createObjectURL(blob);
  const link = document.createElement("a");
  link.href = url;
  link.download = "mathcase-synthetic-study-template.json";
  link.click();
  setTimeout(() => URL.revokeObjectURL(url), 60000);
  studyStatus.textContent = "Downloaded a clearly labeled synthetic manifest template; no run was attempted.";
});

document.getElementById("download-report").addEventListener("click", () => {
  if (!study) return;
  const counts = Object.fromEntries(["library", "baseline"].map((arm) => {
    const rows = slotResults.filter((slot) => slot.arm_id === arm);
    const present = rows.filter((slot) => slot.status === "present");
    return [arm, {
      planned: rows.length,
      present: present.length,
      pass: present.filter((slot) => reportedPass(slot.entry.envelope.run_record)).length,
      missing: rows.filter((slot) => slot.status === "missing").length,
      conflict: rows.filter((slot) => slot.status === "conflict").length
    }];
  }));
  const lines = [
    "# MathCase frozen-study accounting report", "",
    "**Evidence class:** " + study.value.evidence_class,
    "**Interpretation:** user-supplied run fields only; not authenticated, not independently Lean-verified, and not a claim of efficacy.", "",
    "- Study: " + study.value.study_id,
    "- Frozen manifest timestamp: " + study.value.frozen_at_utc,
    "- Manifest SHA-256: " + manifestSHA256,
    "- Cases: " + study.value.cases.length,
    "- Planned slots: " + (study.value.cases.length * 2),
    "- Unique v2 envelopes bound to these exact manifest bytes: " + inputs.length,
    "- Unbound or stale envelopes kept for description only: " + unbound.length,
    "- Exact duplicate files ignored: " + duplicates.length,
    "- Rejected files: " + rejected.length,
    "- Protocol SHA-256: " + study.value.protocol_sha256,
    "- Shared Lean snapshot SHA-256: " + study.value.conditions.lean_snapshot_sha256,
    "- Shared worker snapshot SHA-256: " + study.value.conditions.worker_snapshot_sha256,
    "- Per-target limits: " + study.value.conditions.seconds_per_target + " seconds; " +
      study.value.conditions.calls_per_target + " calls; " +
      study.value.conditions.output_tokens_per_target + " output tokens; " +
      study.value.conditions.cost_ceiling_micros_per_target + " cost micros.", "",
    "| Arm | Planned | Present | Reported pass | Missing | Conflicts |",
    "|---|---:|---:|---:|---:|---:|",
    "| library | " + counts.library.planned + " | " + counts.library.present + " | " + counts.library.pass + " | " + counts.library.missing + " | " + counts.library.conflict + " |",
    "| baseline | " + counts.baseline.planned + " | " + counts.baseline.present + " | " + counts.baseline.pass + " | " + counts.baseline.missing + " | " + counts.baseline.conflict + " |", "",
    "## Planned case-arm slots", ""
  ];
  for (const slot of slotResults) {
    lines.push("- " + slot.case_id + " / " + slot.arm_id + ": " + slot.status);
    if (slot.status === "present") {
      lines.push("  - file: " + safeName(slot.entry.filename) + " (SHA-256 " + slot.entry.fileSHA256 + ")");
      lines.push("  - run ID: " + slot.entry.envelope.run_record.run_id);
      lines.push("  - reported solved: " + slot.entry.envelope.run_record.solved);
    } else if (slot.status === "conflict") {
      for (const entry of slot.entries) lines.push("  - conflicting file: " + safeName(entry.filename) + " (SHA-256 " + entry.fileSHA256 + ")");
    }
  }
  lines.push("", "## Duplicate files ignored", "");
  if (!duplicates.length) lines.push("- None.");
  for (const item of duplicates) lines.push("- " + safeName(item.filename) + " (same bytes; SHA-256 " + item.sha256 + ")");
  lines.push("", "## Rejected files", "");
  if (!rejected.length) lines.push("- None.");
  for (const item of rejected) lines.push("- " + safeName(item.filename) + ": " + item.reason + " (SHA-256 " + item.sha256 + ")");
  lines.push("", "## Descriptive unbound or stale envelopes", "");
  if (!unbound.length) lines.push("- None.");
  for (const item of unbound) {
    lines.push("- " + safeName(item.filename) + ": " + item.reason +
      "; run " + item.envelope.run_record.run_id +
      "; envelope manifest SHA-256 " + (item.envelope.study_manifest_sha256 || "not present") +
      "; file SHA-256 " + item.fileSHA256);
  }
  lines.push("", "## Limits", "",
    "A scored slot requires a v2 envelope whose study_manifest_sha256 exactly matches the selected manifest bytes. Legacy v1 and stale v2 envelopes are listed for description only and excluded from matched scoring. The manifest hash does not prove the manifest predates every run. File hashes identify selected bytes but do not authenticate their author. A reported pass requires a matching problem and proposition hash plus supplied solved/pass/proof-hash fields; this page does not inspect Lean receipts, verify a Docker image, audit provider usage, or establish statistical significance. Missing and conflicting slots remain in the planned denominator. Keep all original files with this report.", "");
  const blob = new Blob([lines.join("\n")], { type: "text/markdown;charset=utf-8" });
  const url = URL.createObjectURL(blob);
  const link = document.createElement("a");
  link.href = url;
  link.download = "mathcase-frozen-study-report.md";
  link.click();
  setTimeout(() => URL.revokeObjectURL(url), 60000);
  runStatus.textContent = "Report prepared locally. No experiment or external call was made.";
});

document.getElementById("clear-study").addEventListener("click", () => {
  study = null;
  manifestSHA256 = "";
  inputs = [];
  unbound = [];
  duplicates = [];
  rejected = [];
  slotResults = [];
  studyStatus.textContent = "No study manifest selected.";
  runStatus.textContent = "Load a valid study manifest first.";
  renderStudy();
});
