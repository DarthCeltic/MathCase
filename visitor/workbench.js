"use strict";

const elements = Object.fromEntries(
  Array.from(document.querySelectorAll("[id]"), (element) => [element.id, element])
);
const prefix = "mathcase.visitor.v1.case.";
const selectionKey = "mathcase.visitor.v1.selection";
const guideLevelKey = "mathcase.visitor.v1.guide-level";
const maxCaseBytes = 4 * 1024 * 1024;
const cases = new Map();
const unsaved = new Set();
const outcomes = {
  compiler_accepted: "Lean accepted the source",
  compiler_rejected: "Lean rejected the source",
  target_accepted: "Lean proved the exact formal target from the named theorem",
  target_rejected: "Lean rejected the exact formal target check",
  toolchain_error: "the toolchain encountered an error",
  timeout: "the check timed out"
};
const starters = {
  counterexample: {
    title: "A composite divisor counterexample",
    statement: "A composite number can divide a square without dividing its root: 4 divides 2², but 4 does not divide 2.",
    formalTarget: "(4 : Nat) ∣ 2 ^ 2 ∧ ¬ (4 : Nat) ∣ 2",
    theoremName: "composite_divisor_counterexample",
    source: "theorem composite_divisor_counterexample : (4 : Nat) ∣ 2 ^ 2 ∧ ¬ (4 : Nat) ∣ 2 := by\n  decide\n",
    filename: "CompositeCounterexample.lean"
  },
  prime: {
    title: "A prime divisor of a square",
    statement: "If a prime divides the square of a natural number, it divides the number itself.",
    formalTarget: "∀ (p n : Nat), p.Prime → p ∣ n ^ 2 → p ∣ n",
    theoremName: "prime_dvd_square_implies_prime_dvd",
    source: "import Mathlib.Data.Nat.Prime.Basic\n\ntheorem prime_dvd_square_implies_prime_dvd (p n : Nat) (hp : p.Prime) (h : p ∣ n ^ 2) : p ∣ n := by\n  exact hp.dvd_of_dvd_pow h\n",
    filename: "PrimeDivisorOfSquare.lean"
  },
  transfer: {
    title: "Transfer challenge: prime divides a product square",
    statement: "Use the prime-divides-square result to show that if prime p divides (a*b)², then p divides a or p divides b.",
    formalTarget: "∀ (p a b : Nat), p.Prime → p ∣ (a * b) ^ 2 → p ∣ a ∨ p ∣ b",
    theoremName: "prime_dvd_factor_of_product_square",
    source: "import Mathlib.Data.Nat.Prime.Basic\n\ntheorem prime_dvd_factor_of_product_square (p a b : Nat) (hp : p.Prime) (h : p ∣ (a * b) ^ 2) : p ∣ a ∨ p ∣ b := by\n  -- First use primality on the square, then on the product.\n  ",
    filename: "PrimeProductSquareTransfer.lean"
  }
};
let activeId = "";
let comparison = 0;
let targetComparison = 0;

function readCase(value) {
  if (!value) return null;
  const item = JSON.parse(value);
  if (typeof item?.id !== "string" || typeof item.title !== "string" ||
      typeof item.statement !== "string" || typeof item.source !== "string") return null;
  item.formalTarget = typeof item.formalTarget === "string" ? item.formalTarget : "";
  item.theoremName = typeof item.theoremName === "string" ? item.theoremName : "";
  item.receipt = normalizeStoredReceipt(item.receipt);
  return item;
}

function newCase(title = "", statement = "", source = "", filename = "", formalTarget = "", theoremName = "") {
  const id = crypto.randomUUID?.() || Date.now() + "-" + Math.random().toString(36).slice(2);
  return { id, title, statement, formalTarget, theoremName, source, filename, receipt: null };
}

function save(item) {
  cases.set(item.id, item);
  try {
    localStorage.setItem(prefix + item.id, JSON.stringify(item));
    unsaved.delete(item.id);
  } catch {
    // Preserve the working copy in memory if browser storage is full or disabled.
    unsaved.add(item.id);
  }
  showSaveState();
}

function showSaveState() {
  const failed = unsaved.has(activeId);
  elements["save-state"].textContent = failed ? "Browser save failed · copy your statement and download the source" : "Saved in this browser";
  elements["save-state"].classList.toggle("error", failed);
}

function active() { return cases.get(activeId); }

function updateCase(id, changes) {
  let item = cases.get(id);
  if (!unsaved.has(id)) {
    try {
      const latest = readCase(localStorage.getItem(prefix + id));
      if (latest) item = latest;
    } catch { /* Keep the in-memory draft available. */ }
  }
  save({ ...item, ...changes });
}

function report(message = "", error = false) {
  elements.feedback.textContent = message;
  elements.feedback.classList.toggle("error", error);
}

function visibleName(item) { return item.title.trim() || "Untitled case"; }

function renderCases() {
  const fragment = document.createDocumentFragment();
  for (const item of cases.values()) {
    const button = document.createElement("button");
    button.type = "button";
    button.className = "case-link";
    button.dataset.caseId = item.id;
    if (item.id === activeId) button.setAttribute("aria-current", "true");
    const name = document.createElement("span");
    name.className = "case-name";
    name.textContent = visibleName(item);
    const excerpt = document.createElement("span");
    excerpt.className = "case-excerpt";
    excerpt.textContent = item.statement.trim() || "No statement yet";
    button.append(name, excerpt);
    fragment.append(button);
  }
  elements.cases.replaceChildren(fragment);
}

function filename(item) {
  const text = (item.filename || visibleName(item)).replace(/\.lean$/i, "");
  const clean = text.replace(/[^A-Za-z0-9_-]+/g, "_").replace(/^[-_]+|[-_]+$/g, "").slice(0, 96);
  const base = /^(con|prn|aux|nul|com[1-9]|lpt[1-9])$/i.test(clean) ? "Case_" + clean : clean;
  return (base || "MyCase") + ".lean";
}

function casePacketFilename(item) {
  return filename(item).replace(/\.lean$/i, ".mathcase.json");
}

function validLeanName(value) {
  return /^(?:_root_\.)?[A-Za-z_][A-Za-z0-9_']*(?:\.[A-Za-z_][A-Za-z0-9_']*)*$/.test(value.trim());
}

function targetBindingReady(item) {
  return Boolean(item.formalTarget.trim() && validLeanName(item.theoremName || ""));
}

function updateActions() {
  const item = active();
  const packet = casePacketFilename(item);
  const receipt = packet.replace(/\.mathcase\.json$/i, ".receipt.json");
  elements["check-command"].textContent = "python scripts/check_visitor_case.py --case-packet " + packet + " --receipt " + receipt;
  elements["check-scope"].textContent = targetBindingReady(item)
    ? "The generated check asks Lean to prove the exact proposition above from “" + item.theoremName.trim() + "” and prints that theorem’s axioms. It does not decide whether the plain-language sentence means the same thing."
    : "For an exact-target check, open the technical section above, fill the exact proposition and its Lean declaration name. Without both, Lean checks only the source code.";
  elements["web-editor"].disabled = !item.source.trim();
  elements["run-lean"].disabled = !item.source.trim();
  elements["copy-ai"].disabled = !item.source.trim() && !item.statement.trim();
  elements["ai-panel"].hidden = true;
  elements["ai-panel"].open = false;
  elements["copy-status"].textContent = "";
}

function openCase(id) {
  activeId = id;
  closeEditor();
  const item = active();
  elements["case-title"].value = item.title;
  elements.statement.value = item.statement;
  elements["formal-target"].value = item.formalTarget || "";
  elements["theorem-name"].value = item.theoremName || "";
  elements.lean.value = item.source;
  try { localStorage.setItem(selectionKey, id); } catch { /* The case still opens. */ }
  showSaveState();
  renderCases();
  updateActions();
  compareReceipt();
  compareTarget();
  report();
}

async function compareTarget() {
  const revision = ++targetComparison;
  const target = active()?.formalTarget || "";
  if (!target.trim()) {
    elements["target-hash"].textContent = "Not set";
    return;
  }
  try {
    const digest = await sourceDigest(target);
    if (revision === targetComparison) elements["target-hash"].textContent = digest;
  } catch {
    if (revision === targetComparison) elements["target-hash"].textContent = "Unavailable outside HTTPS or localhost";
  }
}

function addCase(item) {
  save(item);
  openCase(item.id);
  elements["case-title"].focus();
}

function receiptFields(data) {
  if (!data || typeof data.status !== "string" || !Object.hasOwn(outcomes, data.status) ||
      typeof data.source_sha256 !== "string" || !/^[0-9a-f]{64}$/i.test(data.source_sha256)) {
    throw new Error("Choose a receipt generated by scripts/check_visitor_case.py.");
  }
  if (data.schema_version === "mathcase-visitor-lean-check-v2" && data.scope === "target_and_axioms") {
    for (const field of ["statement_sha256", "formal_target_sha256", "generated_input_sha256"]) {
      if (typeof data[field] !== "string" || !/^[0-9a-f]{64}$/i.test(data[field])) {
        throw new Error("The target-bound receipt is missing a required input digest.");
      }
    }
    if (typeof data.theorem_name !== "string" || typeof data.generated_target_name !== "string" ||
        !Array.isArray(data.axiom_names) ||
        !data.axiom_names.every((name) => typeof name === "string")) {
      throw new Error("The target-bound receipt is missing its theorem names or axiom list.");
    }
    for (const field of ["stdout_sha256", "stderr_sha256"]) {
      if (typeof data[field] !== "string" || !/^[0-9a-f]{64}$/i.test(data[field])) {
        throw new Error("The target-bound receipt is missing an output digest.");
      }
    }
    if ((data.status === "target_accepted" && data.exit_code !== 0) ||
        (data.status === "target_rejected" && (!Number.isInteger(data.exit_code) || data.exit_code === 0))) {
      throw new Error("The target status does not agree with the recorded Lean exit code.");
    }
    return {
      schema_version: data.schema_version,
      scope: data.scope,
      status: data.status,
      exit_code: Number.isInteger(data.exit_code) ? data.exit_code : null,
      source_sha256: data.source_sha256.toLowerCase(),
      statement_sha256: data.statement_sha256.toLowerCase(),
      formal_target_sha256: data.formal_target_sha256.toLowerCase(),
      theorem_name: data.theorem_name,
      generated_target_name: data.generated_target_name,
      generated_input_sha256: data.generated_input_sha256.toLowerCase(),
      stdout_sha256: data.stdout_sha256.toLowerCase(),
      stderr_sha256: data.stderr_sha256.toLowerCase(),
      axiom_names: data.axiom_names.slice(0, 200),
      axiom_audit_status: data.axiom_audit_status === "reported" ? "reported" : "unavailable",
      receipt_file_sha256: typeof data.receipt_file_sha256 === "string" && /^[0-9a-f]{64}$/i.test(data.receipt_file_sha256)
        ? data.receipt_file_sha256.toLowerCase() : "",
      diagnostics: receiptDiagnostics(data)
    };
  }
  if (data.schema_version !== "mathcase-visitor-lean-check-v1" || data.scope !== "compiler_only") {
    throw new Error("Choose a MathCase visitor receipt, not an unrelated JSON file.");
  }
  return {
    schema_version: data.schema_version,
    scope: data.scope,
    status: data.status,
    source_sha256: data.source_sha256.toLowerCase(),
    receipt_file_sha256: typeof data.receipt_file_sha256 === "string" && /^[0-9a-f]{64}$/i.test(data.receipt_file_sha256)
      ? data.receipt_file_sha256.toLowerCase() : "",
    diagnostics: receiptDiagnostics(data)
  };
}

function receiptDiagnostics(data) {
  const output = [];
  for (const field of ["stdout", "stderr", "error"]) {
    const value = data[field];
    if (typeof value === "string" && value) {
      const limit = 8192;
      output.push(field + "\n" + value.slice(0, limit) + (value.length > limit ? "\n[output truncated]" : ""));
    }
  }
  return output.join("\n\n");
}

function normalizeStoredReceipt(data) {
  if (!data || typeof data !== "object") return null;
  if (data.schema_version) {
    try { return receiptFields(data); } catch { return null; }
  }
  // Older case exports stored only a status, source digest, and short diagnostics.
  if (typeof data.status === "string" && Object.hasOwn(outcomes, data.status) &&
      typeof data.digest === "string" && /^[0-9a-f]{64}$/i.test(data.digest)) {
    return {
      schema_version: "mathcase-visitor-imported-receipt-v0",
      scope: "source_only",
      status: data.status,
      source_sha256: data.digest.toLowerCase(),
      diagnostics: typeof data.diagnostics === "string" ? data.diagnostics.slice(0, 8192) : ""
    };
  }
  return null;
}

async function sourceDigest(source) {
  const bytes = new TextEncoder().encode(source);
  return byteDigest(bytes);
}

async function byteDigest(bytes) {
  const hash = new Uint8Array(await crypto.subtle.digest("SHA-256", bytes));
  return Array.from(hash, (byte) => byte.toString(16).padStart(2, "0")).join("");
}

async function compareReceipt() {
  const revision = ++comparison;
  const item = active();
  const receipt = item.receipt;
  elements["receipt-panel"].hidden = !receipt;
  if (!receipt) return;
  elements.diagnostics.textContent = receipt.diagnostics || "";
  elements["diagnostics-panel"].hidden = !receipt.diagnostics;
  elements["receipt-hash"].textContent = receipt.receipt_file_sha256 || "Raw receipt-file hash was not retained in this saved case.";
  elements["receipt-exit-code"].textContent = Number.isInteger(receipt.exit_code) ? String(receipt.exit_code) : "Not available";
  elements["receipt-axioms"].textContent = receipt.axiom_audit_status === "reported"
    ? "[" + receipt.axiom_names.join(", ") + "]"
    : "Not reported by this receipt";
  elements["receipt-theorem"].textContent = receipt.theorem_name || "Source only";
  elements["generated-input-hash"].textContent = receipt.generated_input_sha256 || "Not bound by this receipt";
  elements["stdout-hash"].textContent = receipt.stdout_sha256 || "Not bound by this receipt";
  elements["stderr-hash"].textContent = receipt.stderr_sha256 || "Not bound by this receipt";
  elements["source-hash"].textContent = "Computing…";
  elements["target-hash-current"].textContent = "Computing…";
  elements["statement-hash-current"].textContent = "Computing…";
  elements["receipt-status"].textContent = "Comparing the current source…";
  try {
    const [sourceHash, targetHash, statementHash] = await Promise.all([
      sourceDigest(item.source), sourceDigest(item.formalTarget || ""), sourceDigest(item.statement || "")
    ]);
    if (revision !== comparison) return;
    elements["source-hash"].textContent = sourceHash;
    elements["target-hash-current"].textContent = targetHash;
    elements["statement-hash-current"].textContent = statementHash;
    const sourceMatches = sourceHash === receipt.source_sha256;
    const targetMatches = receipt.scope !== "target_and_axioms" || targetHash === receipt.formal_target_sha256;
    const statementMatches = receipt.scope !== "target_and_axioms" || statementHash === receipt.statement_sha256;
    const nameMatches = receipt.scope !== "target_and_axioms" || (item.theoremName || "") === receipt.theorem_name;
    if (!sourceMatches || !targetMatches || !statementMatches || !nameMatches) {
      const changed = [];
      if (!sourceMatches) changed.push("proof source");
      if (!targetMatches) changed.push("Lean proposition");
      if (!statementMatches) changed.push("plain-language claim");
      if (!nameMatches) changed.push("theorem name");
      elements["receipt-status"].textContent = "Receipt does not match the current " + changed.join(", ") + ". Check the saved bytes again.";
      return;
    }
    if (receipt.scope === "target_and_axioms") {
      const accepted = receipt.status === "target_accepted";
      const sorryWarning = receipt.axiom_names.includes("sorryAx")
        ? " The receipt lists sorryAx, so treat this as unfinished rather than a completed proof."
        : "";
      const auditWarning = receipt.axiom_audit_status !== "reported"
        ? " The axiom audit is unavailable; do not treat this as an axiom-clean result."
        : "";
      elements["receipt-status"].textContent = accepted
        ? "Lean accepted the exact formal target for these source bytes. A person still checks that the plain statement means this proposition. Reported axioms: " + elements["receipt-axioms"].textContent + "." + sorryWarning + auditWarning
        : "The receipt matches these exact bytes; it reports " + outcomes[receipt.status] + ". Read the preserved diagnostics before changing the proof.";
    } else {
      elements["receipt-status"].textContent = "This older receipt matches the source only and reports " + outcomes[receipt.status] + ". It does not bind the claim, target, or axiom list.";
    }
  } catch {
    if (revision !== comparison) return;
    elements["source-hash"].textContent = "Unavailable";
    elements["receipt-status"].textContent = "Digest comparison is unavailable. Open MathCase on HTTPS or localhost to compare the file.";
  }
}

function restore() {
  let selection;
  try {
    for (let i = 0; i < localStorage.length; i++) {
      const key = localStorage.key(i);
      if (!key?.startsWith(prefix)) continue;
      try {
        const item = readCase(localStorage.getItem(key));
        if (item && key === prefix + item.id) cases.set(item.id, item);
      } catch { /* Other saved cases remain usable. */ }
    }
    selection = localStorage.getItem(selectionKey);
  } catch { /* Save reports when the browser restricts storage. */ }
  const starterID = new URLSearchParams(location.search).get("starter");
  if (Object.hasOwn(starters, starterID)) {
    const starter = starters[starterID];
    const existing = [...cases.values()].find((candidate) =>
      candidate.filename === starter.filename && candidate.statement === starter.statement &&
      candidate.formalTarget === starter.formalTarget && candidate.theoremName === starter.theoremName &&
      candidate.source === starter.source);
    const item = existing || newCase(starter.title, starter.statement, starter.source,
      starter.filename, starter.formalTarget, starter.theoremName);
    if (!existing) save(item);
    history.replaceState(null, "", location.pathname + "#case-title");
    openCase(item.id);
    elements["case-title"].scrollIntoView({ block: "start" });
    return;
  }
  if (!cases.size) {
    const starter = newCase(starters.counterexample.title, starters.counterexample.statement,
      starters.counterexample.source, starters.counterexample.filename,
      starters.counterexample.formalTarget, starters.counterexample.theoremName);
    save(starter);
  }
  openCase(cases.has(selection) ? selection : cases.keys().next().value);
}

elements["new-case"].addEventListener("click", () => addCase(newCase()));
elements.cases.addEventListener("click", (event) => {
  const button = event.target.closest("button[data-case-id]");
  if (!button) return;
  openCase(button.dataset.caseId);
  elements["case-title"].focus();
});

elements["case-title"].addEventListener("input", () => {
  updateCase(activeId, { title: elements["case-title"].value, filename: "" });
  renderCases();
  updateActions();
});
elements.statement.addEventListener("input", () => {
  updateCase(activeId, { statement: elements.statement.value });
  renderCases();
  updateActions();
});
elements["formal-target"].addEventListener("input", () => {
  updateCase(activeId, { formalTarget: elements["formal-target"].value });
  compareTarget();
  updateActions();
});
elements["theorem-name"].addEventListener("input", () => {
  updateCase(activeId, { theoremName: elements["theorem-name"].value });
  updateActions();
  compareReceipt();
});
elements.lean.addEventListener("input", () => {
  closeEditor();
  const previous = active().source;
  const edited = elements.lean.value;
  // Textareas normalize newlines. Retain CRLF for files imported from Windows.
  const source = previous.includes("\r\n") && !/(^|[^\r])\n/.test(previous)
    ? edited.replace(/\n/g, "\r\n")
    : edited;
  updateCase(activeId, { source });
  updateActions();
  compareReceipt();
});

elements["import-source"].addEventListener("click", () => elements["source-file"].click());
elements["source-file"].addEventListener("change", async () => {
  const file = elements["source-file"].files[0];
  elements["source-file"].value = "";
  if (!file) return;
  try {
    // Keep a UTF-8 BOM in the file contents for byte-exact export and checking.
    const source = new TextDecoder("utf-8", { fatal: true, ignoreBOM: true }).decode(await file.arrayBuffer());
    addCase(newCase(file.name.replace(/\.lean$/i, ""), "", source, file.name));
  } catch {
    report("Could not read this file as UTF-8 Lean source.", true);
  }
});

elements.download.addEventListener("click", () => {
  const item = active();
  const url = URL.createObjectURL(new Blob([item.source], { type: "text/plain;charset=utf-8" }));
  const link = document.createElement("a");
  link.href = url;
  link.download = filename(item);
  document.body.append(link);
  link.click();
  link.remove();
  setTimeout(() => URL.revokeObjectURL(url), 60000);
  elements["case-export-status"].textContent = "Lean source download prepared.";
});

function downloadText(name, text, type) {
  const url = URL.createObjectURL(new Blob([text], { type }));
  const link = document.createElement("a");
  link.href = url;
  link.download = name;
  document.body.append(link);
  link.click();
  link.remove();
  setTimeout(() => URL.revokeObjectURL(url), 60000);
}

elements["export-case"].addEventListener("click", () => {
  const item = active();
  const packet = {
    schema_version: "mathcase-visitor-case-v2",
    id: item.id,
    title: item.title,
    statement: item.statement,
    formal_target: item.formalTarget || "",
    theorem_name: item.theoremName || "",
    source: item.source,
    filename: filename(item),
    receipt: item.receipt || null,
    exported_at_utc: new Date().toISOString()
  };
  downloadText(filename(item).replace(/\.lean$/i, "") + ".mathcase.json", JSON.stringify(packet, null, 2) + "\n", "application/json;charset=utf-8");
  elements["case-export-status"].textContent = "Full case exported with the plain claim, exact Lean proposition, theorem name, proof draft, and any visitor-supplied receipt.";
});

elements["import-case"].addEventListener("click", () => elements["case-file"].click());
elements["case-file"].addEventListener("change", async () => {
  const file = elements["case-file"].files[0];
  elements["case-file"].value = "";
  if (!file) return;
  if (file.size > maxCaseBytes) { report("Case import is limited to 4 MiB.", true); return; }
  try {
    const packet = JSON.parse(await file.text());
    if (!new Set(["mathcase-visitor-case-v1", "mathcase-visitor-case-v2"]).has(packet?.schema_version) ||
        typeof packet.title !== "string" || typeof packet.statement !== "string" ||
        typeof packet.formal_target !== "string" || typeof packet.source !== "string" ||
        packet.title.length > 400 || packet.statement.length > 40000 ||
        packet.formal_target.length > 40000 || packet.source.length > 2 * 1024 * 1024) {
      throw new Error("unsupported-shape");
    }
    const item = newCase(packet.title, packet.statement, packet.source,
      typeof packet.filename === "string" ? packet.filename : "ImportedCase.lean", packet.formal_target,
      typeof packet.theorem_name === "string" ? packet.theorem_name : "");
    item.receipt = normalizeStoredReceipt(packet.receipt);
    addCase(item);
    report("Imported as a new local case. Nothing in the file was executed.");
  } catch {
    report("Could not import this file as a MathCase case packet.", true);
  }
});

function editorUrl() {
  const item = active();
  let source = item.source;
  if (targetBindingReady(item)) {
    const binding = "MathCaseWorkbenchTarget_" + item.id.replace(/[^A-Za-z0-9_]/g, "_");
    source += "\n\n-- Generated by MathCase to check the exact proposition above.\n" +
      "theorem " + binding + " : (" + item.formalTarget + ") := by\n  exact " + item.theoremName.trim() +
      "\n#print axioms " + binding + "\n";
  }
  return "https://live.lean-lang.org/#code=" + encodeURIComponent(source);
}

function closeEditor() {
  elements["live-frame"].replaceChildren();
  elements["live-panel"].hidden = true;
  elements["run-lean"].setAttribute("aria-expanded", "false");
}

elements["run-lean"].addEventListener("click", () => {
  const frame = document.createElement("iframe");
  frame.title = "Lean web editor for " + visibleName(active());
  frame.referrerPolicy = "no-referrer";
  frame.src = editorUrl();
  elements["live-frame"].replaceChildren(frame);
  elements["live-panel"].hidden = false;
  elements["run-lean"].setAttribute("aria-expanded", "true");
  frame.scrollIntoView({ block: "nearest" });
});
elements["close-lean"].addEventListener("click", () => {
  closeEditor();
  elements["run-lean"].focus();
});
elements["web-editor"].addEventListener("click", () => window.open(editorUrl(), "_blank", "noopener,noreferrer"));

async function copyPrompt(text) {
  const field = elements["ai-prompt"];
  const panel = elements["ai-panel"];
  panel.hidden = false;
  try {
    await navigator.clipboard.writeText(text);
    elements["copy-status"].textContent = "Prompt copied. Paste it into your AI, then review its proposal and paste the Lean source above.";
  } catch {
    panel.open = true;
    field.focus();
    field.select();
    elements["copy-status"].textContent = "Copy the selected prompt, then paste it into your AI.";
  }
}

elements["copy-ai"].addEventListener("click", async () => {
  const item = active();
  if (!item.formalTarget.trim()) {
    elements["copy-status"].textContent = "Add the exact Lean proposition first. MathCase needs a fixed target before it can ask for a proof of the intended claim.";
    return;
  }
  const parts = [
    "Please propose a Lean 4 proof for the case below. Return a complete source file with a theorem declaration whose elaborated type is this exact proposition (allowing only binder notation or definitional equality, not a different claim). Preserve every hypothesis. Do not weaken, strengthen, or replace the target. Avoid sorry, admit, and added axioms. If you cannot prove this exact target, say so instead of changing it.",
    "Case title\n" + visibleName(item),
    "Case statement\n" + item.statement,
    "Exact Lean proposition to prove\n" + item.formalTarget,
    "Declaration name to prove that exact proposition\n" + (item.theoremName || "[not set]"),
    "Current Lean source\n" + item.source
  ];
  if (item.receipt?.diagnostics) {
    try {
      if (await sourceDigest(item.source) === item.receipt.digest) {
        parts.push("Compiler output from a visitor-supplied receipt with a matching source digest\n" + item.receipt.diagnostics);
      }
    } catch { /* The source and statement still form a complete prompt. */ }
  }
  if (active() !== item) return;
  const text = parts.join("\n\n");
  elements["ai-prompt"].value = text;
  await copyPrompt(text);
});
elements["copy-edited"].addEventListener("click", () => copyPrompt(elements["ai-prompt"].value));

elements["import-receipt"].addEventListener("click", () => elements["receipt-file"].click());
elements["receipt-file"].addEventListener("change", async () => {
  const id = activeId;
  const file = elements["receipt-file"].files[0];
  elements["receipt-file"].value = "";
  if (!file) return;
  if (file.size > maxCaseBytes) { report("Receipt import is limited to 4 MiB.", true); return; }
  try {
    const raw = new Uint8Array(await file.arrayBuffer());
    const rawText = new TextDecoder("utf-8", { fatal: true }).decode(raw);
    const receipt = receiptFields(JSON.parse(rawText));
    receipt.receipt_file_sha256 = await byteDigest(raw);
    updateCase(id, { receipt });
    if (id === activeId) {
      report();
      updateActions();
      compareReceipt();
    }
  } catch {
    if (id === activeId) report("Choose a valid JSON receipt generated by scripts/check_visitor_case.py.", true);
  }
});

window.addEventListener("storage", (event) => {
  if (!event.key?.startsWith(prefix) || !event.newValue) return;
  let item;
  try { item = readCase(event.newValue); } catch { return; }
  if (!item || event.key !== prefix + item.id || unsaved.has(item.id)) return;
  if (item.id === activeId && active().source !== item.source) closeEditor();
  cases.set(item.id, item);
  if (item.id === activeId) {
    const fields = [[elements["case-title"], item.title], [elements.statement, item.statement], [elements["formal-target"], item.formalTarget || ""], [elements["theorem-name"], item.theoremName || ""], [elements.lean, item.source]];
    for (const [field, value] of fields) {
      if (field.value !== value.replace(/\r\n?/g, "\n")) field.value = value;
    }
    updateActions();
    compareReceipt();
    compareTarget();
  }
  renderCases();
});

elements["guide-level"].addEventListener("change", () => setGuideLevel(elements["guide-level"].value));
function setGuideLevel(value) {
  const level = new Set(["new", "math", "lean"]).has(value) ? value : "new";
  elements["guide-level"].value = level;
  for (const copy of document.querySelectorAll("[data-guide-level]")) {
    copy.hidden = copy.dataset.guideLevel !== level;
  }
  try { localStorage.setItem(guideLevelKey, level); } catch { /* Guidance still works for this visit. */ }
}
let savedGuideLevel = "new";
try { savedGuideLevel = localStorage.getItem(guideLevelKey) || "new"; } catch { /* Use beginner guidance. */ }
setGuideLevel(savedGuideLevel);
restore();
