"use strict";

const assert = require("node:assert/strict");
const { readFileSync } = require("node:fs");
const { webcrypto } = require("node:crypto");
const vm = require("node:vm");

class FakeNode {
  constructor() {
    this.children = [];
    this.listeners = new Map();
    this.classes = new Set();
    this.classList = {
      add: (value) => this.classes.add(value),
      remove: (value) => this.classes.delete(value)
    };
    this.disabled = false;
    this.files = [];
    this.value = "";
    this._text = "";
  }
  addEventListener(name, listener) { this.listeners.set(name, listener); }
  append(...nodes) { this.children.push(...nodes); }
  replaceChildren(...nodes) { this._text = ""; this.children = [...nodes]; }
  click() {}
  set textContent(value) { this._text = String(value); this.children = []; }
  get textContent() { return this._text + this.children.map((child) => child.textContent).join(""); }
}

function makeFile(value) {
  const content = typeof value === "string" ? value : JSON.stringify(value);
  return { name: "synthetic-lab-qa.json", size: Buffer.byteLength(content), text: async () => content };
}

async function trigger(nodes, id, eventName) {
  const listener = nodes[id].listeners.get(eventName);
  assert.ok(listener, `missing ${eventName} handler for ${id}`);
  await listener();
}

async function main() {
  const ids = ["run-files", "status", "summary", "runs", "download-report", "clear-report"];
  const nodes = Object.fromEntries(ids.map((id) => [id, new FakeNode()]));
  const context = {
    document: {
      getElementById: (id) => nodes[id],
      createElement: () => new FakeNode()
    },
    crypto: webcrypto,
    TextEncoder,
    Uint8Array,
    Date,
    Math,
    Blob,
    URL: { createObjectURL: (blob) => { context.lastBlob = blob; return "blob:test"; }, revokeObjectURL() {} },
    setTimeout() {}
  };
  vm.runInNewContext(readFileSync("visitor/lab.js", "utf8"), context, { filename: "lab.js" });

  const statement = "True";
  const targetHash = Buffer.from(await webcrypto.subtle.digest("SHA-256", new TextEncoder().encode(statement))).toString("hex");
  const run = {
    schema_version: "mathcase-provider-solve-v1",
    evidence_class: "synthetic-fixture",
    recorded_at_utc: "2026-11-21T00:00:00Z",
    run_id: "synthetic-lab-qa",
    problem_id: "synthetic-fixture-only",
    lean_statement: statement,
    lean_statement_sha256: targetHash,
    provider_id: "synthetic-fixture",
    model_id: "none",
    solved: true,
    attempts: [
      {
        stage: "S0",
        outcome: "REJECTED",
        candidate_sha256: "0".repeat(64),
        started_at: "2026-11-21T00:00:00Z",
        finished_at: "2026-11-21T00:00:08Z",
        cost_known: true,
        cost_micros: 400,
        failure_class: "synthetic_rejection",
        failure_summary: "Synthetic failure with embedded fence ``` kept verbatim."
      },
      {
        stage: "S1",
        outcome: "PASS",
        candidate_sha256: "1".repeat(64),
        verified_proof_sha256: "2".repeat(64),
        started_at: "2026-11-21T00:00:08Z",
        finished_at: "2026-11-21T00:00:18Z",
        cost_known: false
      }
    ]
  };

  nodes["run-files"].files = [makeFile(run)];
  await trigger(nodes, "run-files", "change");
  assert.equal(nodes.status.textContent, "Loaded 1 run packet(s) locally. Denominator includes every selected packet.");
  assert.equal(nodes["download-report"].disabled, false);
  assert.ok(nodes.summary.textContent.includes("attempts: 2"));
  assert.ok(nodes.summary.textContent.includes("cost unknown"));

  await trigger(nodes, "download-report", "click");
  const report = await context.lastBlob.text();
  assert.ok(report.includes("not a benchmark"));
  assert.ok(report.includes("Run-packet denominator: 1"));
  assert.ok(report.includes("Attempt denominator: 2"));
  assert.ok(report.includes("Synthetic failure with embedded fence ``` kept verbatim."));
  assert.ok(report.includes("````\nSynthetic failure with embedded fence ``` kept verbatim."));
  assert.ok(report.includes("0 attempt(s) have unknown cost") === false);
  assert.ok(report.includes("1 attempt(s) have unknown cost"));

  nodes["run-files"].files = [makeFile("{")];
  await trigger(nodes, "run-files", "change");
  assert.ok(nodes.status.textContent.includes("not valid provider-solve records"));
  assert.equal(nodes["download-report"].disabled, true, "invalid replacement must not leave the previous report enabled");

  process.stdout.write("lab visitor tests passed: denominators, binding, cost unknowns, retained failure text, and invalid replacement\n");
}

main().catch((error) => {
  process.stderr.write(String(error.stack || error) + "\n");
  process.exitCode = 1;
});
