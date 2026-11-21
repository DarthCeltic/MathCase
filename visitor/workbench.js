"use strict";

const elements = Object.fromEntries(
  Array.from(document.querySelectorAll("[id]"), (element) => [element.id, element])
);
const prefix = "mathcase.visitor.v1.case.";
const selectionKey = "mathcase.visitor.v1.selection";
const maxCaseBytes = 4 * 1024 * 1024;
const cases = new Map();
const unsaved = new Set();
const outcomes = {
  compiler_accepted: "Lean accepted the source",
  compiler_rejected: "Lean rejected the source",
  toolchain_error: "the toolchain encountered an error",
  timeout: "the check timed out"
};
const starters = {
  counterexample: {
    title: "A composite divisor counterexample",
    statement: "A composite number can divide a square without dividing its root: 4 divides 2², but 4 does not divide 2.",
    formalTarget: "(4 : Nat) ∣ 2 ^ 2 ∧ ¬ (4 : Nat) ∣ 2",
    source: "import Mathlib\n\ntheorem composite_divisor_counterexample : (4 : Nat) ∣ 2 ^ 2 ∧ ¬ (4 : Nat) ∣ 2 := by\n  norm_num\n",
    filename: "CompositeCounterexample.lean"
  },
  prime: {
    title: "A prime divisor of a square",
    statement: "If a prime divides the square of a natural number, it divides the number itself.",
    formalTarget: "∀ (p n : Nat), p.Prime → p ∣ n ^ 2 → p ∣ n",
    source: "import Mathlib.Data.Nat.Prime.Basic\n\ntheorem prime_dvd_square_implies_prime_dvd (p n : Nat) (hp : p.Prime) (h : p ∣ n ^ 2) : p ∣ n := by\n  exact hp.dvd_of_dvd_pow h\n",
    filename: "PrimeDivisorOfSquare.lean"
  },
  transfer: {
    title: "Transfer challenge: prime divides a product square",
    statement: "Use the prime-divides-square result to show that if prime p divides (a*b)², then p divides a or p divides b.",
    formalTarget: "∀ (p a b : Nat), p.Prime → p ∣ (a * b) ^ 2 → p ∣ a ∨ p ∣ b",
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
  return item;
}

function newCase(title = "", statement = "", source = "", filename = "", formalTarget = "") {
  const id = crypto.randomUUID?.() || Date.now() + "-" + Math.random().toString(36).slice(2);
  return { id, title, statement, formalTarget, source, filename, receipt: null };
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

function updateActions() {
  const item = active();
  elements["check-command"].textContent = "python3 scripts/check_visitor_case.py " + filename(item) + " --receipt visitor-receipt.json";
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
  if (data?.schema_version !== "mathcase-visitor-lean-check-v1" ||
      data.scope !== "compiler_only" || typeof data.status !== "string" || !Object.hasOwn(outcomes, data.status) ||
      typeof data.source_sha256 !== "string" || !/^[0-9a-f]{64}$/i.test(data.source_sha256)) {
    throw new Error("Choose a receipt generated by scripts/check_visitor_case.py.");
  }
  const output = [];
  for (const field of ["stdout", "stderr", "error"]) {
    const value = data[field];
    if (typeof value === "string" && value) {
      const limit = 8192;
      output.push(field + "\n" + value.slice(0, limit) + (value.length > limit ? "\n[output truncated]" : ""));
    }
  }
  return {
    status: data.status,
    digest: data.source_sha256.toLowerCase(),
    diagnostics: output.join("\n\n")
  };
}

async function sourceDigest(source) {
  const bytes = new TextEncoder().encode(source);
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
  elements["receipt-hash"].textContent = receipt.digest;
  elements["source-hash"].textContent = "Computing…";
  elements["receipt-status"].textContent = "Comparing the current source…";
  try {
    const hex = await sourceDigest(item.source);
    if (revision !== comparison) return;
    elements["source-hash"].textContent = hex;
    elements["receipt-status"].textContent = hex === receipt.digest
      ? "Source digest matches. The uploaded receipt reports " + outcomes[receipt.status] + "."
      : "Source digest differs. Run the checker on the current source for a matching receipt.";
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
    const item = newCase(starter.title, starter.statement, starter.source, starter.filename, starter.formalTarget);
    save(item);
    history.replaceState(null, "", location.pathname);
    openCase(item.id);
    return;
  }
  if (!cases.size) {
    const starter = newCase(
      "Doubling a natural number",
      "For every natural number n, the sum n + n is even. Find a natural number k such that n + n = 2k.",
      "theorem doubleEven (n : Nat) : ∃ k : Nat, n + n = 2 * k := by\n  exact ⟨n, (Nat.two_mul n).symm⟩\n",
      "MyCase.lean",
      "∀ n : Nat, ∃ k : Nat, n + n = 2 * k"
    );
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
    schema_version: "mathcase-visitor-case-v1",
    id: item.id,
    title: item.title,
    statement: item.statement,
    formal_target: item.formalTarget || "",
    source: item.source,
    filename: filename(item),
    receipt: item.receipt || null,
    exported_at_utc: new Date().toISOString()
  };
  downloadText(filename(item).replace(/\.lean$/i, "") + ".mathcase.json", JSON.stringify(packet, null, 2) + "\n", "application/json;charset=utf-8");
  elements["case-export-status"].textContent = "Full case export prepared, including the exact Lean proposition, proof draft, and any visitor-supplied receipt.";
});

elements["import-case"].addEventListener("click", () => elements["case-file"].click());
elements["case-file"].addEventListener("change", async () => {
  const file = elements["case-file"].files[0];
  elements["case-file"].value = "";
  if (!file) return;
  if (file.size > maxCaseBytes) { report("Case import is limited to 4 MiB.", true); return; }
  try {
    const packet = JSON.parse(await file.text());
    if (packet?.schema_version !== "mathcase-visitor-case-v1" ||
        typeof packet.title !== "string" || typeof packet.statement !== "string" ||
        typeof packet.formal_target !== "string" || typeof packet.source !== "string" ||
        packet.title.length > 400 || packet.statement.length > 40000 ||
        packet.formal_target.length > 40000 || packet.source.length > 2 * 1024 * 1024) {
      throw new Error("unsupported-shape");
    }
    const item = newCase(packet.title, packet.statement, packet.source,
      typeof packet.filename === "string" ? packet.filename : "ImportedCase.lean", packet.formal_target);
    if (packet.receipt && typeof packet.receipt === "object" &&
        typeof packet.receipt.digest === "string" && /^[0-9a-f]{64}$/.test(packet.receipt.digest) &&
        typeof packet.receipt.status === "string" && Object.hasOwn(outcomes, packet.receipt.status)) {
      item.receipt = {
        status: packet.receipt.status,
        digest: packet.receipt.digest,
        diagnostics: typeof packet.receipt.diagnostics === "string" ? packet.receipt.diagnostics.slice(0, 8192) : ""
      };
    }
    addCase(item);
    report("Imported as a new local case. Nothing in the file was executed.");
  } catch {
    report("Could not import this file as a MathCase case packet.", true);
  }
});

function editorUrl() {
  return "https://live.lean-lang.org/#code=" + encodeURIComponent(active().source);
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
  try {
    const receipt = receiptFields(JSON.parse(await file.text()));
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
    const fields = [[elements["case-title"], item.title], [elements.statement, item.statement], [elements["formal-target"], item.formalTarget || ""], [elements.lean, item.source]];
    for (const [field, value] of fields) {
      if (field.value !== value.replace(/\r\n?/g, "\n")) field.value = value;
    }
    updateActions();
    compareReceipt();
    compareTarget();
  }
  renderCases();
});

restore();
