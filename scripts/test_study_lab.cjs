"use strict";

const assert = require("node:assert/strict");
const { readFileSync } = require("node:fs");
const { webcrypto } = require("node:crypto");
const vm = require("node:vm");

class FakeNode {
  constructor() {
    this.children = [];
    this.listeners = new Map();
    this.disabled = false;
    this.files = [];
    this.value = "";
    this._text = "";
    this.clicked = false;
    this.classList = { add() {}, remove() {} };
  }
  addEventListener(name, callback) { this.listeners.set(name, callback); }
  append(...nodes) { this.children.push(...nodes); }
  replaceChildren(...nodes) { this._text = ""; this.children = [...nodes]; }
  click() { this.clicked = true; }
  set textContent(value) { this._text = String(value); this.children = []; }
  get textContent() { return this._text + this.children.map((child) => child.textContent).join(""); }
}

function makeFile(name, content) {
  const bytes = new TextEncoder().encode(typeof content === "string" ? content : JSON.stringify(content));
  return {
    name,
    size: bytes.length,
    arrayBuffer: async () => bytes.slice().buffer,
    text: async () => new TextDecoder().decode(bytes)
  };
}

async function hash(value) {
  const bytes = typeof value === "string" ? new TextEncoder().encode(value) : value;
  return Buffer.from(await webcrypto.subtle.digest("SHA-256", bytes)).toString("hex");
}

async function trigger(nodes, id, eventName) {
  const listener = nodes[id].listeners.get(eventName);
  assert.ok(listener, "missing " + eventName + " handler for " + id);
  await listener({ target: nodes[id] });
}

async function main() {
  const ids = [
    "study-file", "run-files", "study-status", "run-status", "study-info",
    "summary", "slots", "download-report", "download-binding", "download-template", "clear-study"
  ];
  const nodes = Object.fromEntries(ids.map((id) => [id, new FakeNode()]));
  const context = {
    document: { getElementById: (id) => nodes[id], createElement: () => new FakeNode() },
    crypto: webcrypto,
    TextEncoder,
    TextDecoder,
    Uint8Array,
    Date,
    Blob,
    URL: {
      createObjectURL: (blob) => { context.lastBlob = blob; return "blob:study-test"; },
      revokeObjectURL() {}
    },
    setTimeout() {}
  };
  vm.runInNewContext(readFileSync("visitor/study-lab.js", "utf8"), context, { filename: "study-lab.js" });

  const statementA = "theorem nat_zero_add (n : Nat) : 0 + n = n";
  const statementB = "theorem nat_add_zero (n : Nat) : n + 0 = n";
  const protocol = "Synthetic preregistration for accounting tests; no experiment was run.";
  const manifest = {
    schema_version: "mathcase-frozen-study-v1",
    study_id: "study-qa",
    evidence_class: "preregistered",
    frozen_at_utc: "2026-11-21T00:00:00Z",
    protocol_text: protocol,
    protocol_sha256: await hash(protocol),
    conditions: {
      seconds_per_target: 30,
      calls_per_target: 1,
      output_tokens_per_target: 100,
      cost_ceiling_micros_per_target: 0,
      lean_snapshot_sha256: await hash("lean"),
      worker_snapshot_sha256: await hash("worker")
    },
    arms: [
      { arm_id: "library", description: "Library enabled", library_snapshot_sha256: await hash("library") },
      { arm_id: "baseline", description: "No library", library_snapshot_sha256: null }
    ],
    cases: [
      { case_id: "case-a", problem_id: "problem-a", role: "held-out", statement: statementA, statement_sha256: await hash(statementA), packet_sha256: await hash("packet-a") },
      { case_id: "case-b", problem_id: "problem-b", role: "held-out", statement: statementB, statement_sha256: await hash(statementB), packet_sha256: await hash("packet-b") }
    ]
  };
  const originalManifestDigest = await hash(JSON.stringify(manifest));
  nodes["study-file"].files = [makeFile("manifest.json", manifest)];
  await trigger(nodes, "study-file", "change");
  assert.match(nodes["study-status"].textContent, /accepted and hash-bound locally/);
  assert.equal(nodes["run-files"].disabled, false);
  assert.match(nodes["study-info"].textContent, /4 planned case-arm slots/);
  assert.match(nodes["study-info"].textContent, new RegExp(originalManifestDigest));
  assert.match(nodes["summary"].textContent, /Library arm: 0\/2 reported pass; 0 present, 2 missing, 0 conflicting/);
  await trigger(nodes, "download-report", "click");
  const noRunReport = await context.lastBlob.text();
  assert.match(noRunReport, /- Planned slots: 4/);
  assert.match(noRunReport, /\| library \| 2 \| 0 \| 0 \| 2 \| 0 \|/);
  await trigger(nodes, "download-binding", "click");
  const binding = JSON.parse(await context.lastBlob.text());
  assert.equal(binding.study_manifest_sha256, originalManifestDigest);
  assert.equal(binding.study_id, "study-qa");
  assert.match(binding.notice, /not a signature/);

  function runRecord(id, problem, statement, statementHash, solved, outcome) {
    return {
      schema_version: "mathcase-provider-solve-v1",
      run_id: id,
      problem_id: problem,
      lean_statement: statement,
      lean_statement_sha256: statementHash,
      solved,
      attempts: [{ outcome, verified_proof_sha256: outcome === "PASS" ? "a".repeat(64) : undefined }]
    };
  }
  function envelope(caseID, armID, record, digest = originalManifestDigest, version = "v2") {
    const value = {
      schema_version: "mathcase-lab-run-envelope-" + version,
      study_id: "study-qa",
      case_id: caseID,
      arm_id: armID,
      run_record: record
    };
    if (version === "v2") value.study_manifest_sha256 = digest;
    return value;
  }
  const lib = envelope("case-a", "library", runRecord("run-lib-a", "problem-a", statementA, await hash(statementA), true, "PASS"));
  const base = envelope("case-a", "baseline", runRecord("run-base-a", "problem-a", statementA, await hash(statementA), false, "REJECTED"));
  const conflictingLib = envelope("case-a", "library", runRecord("run-lib-a-second", "problem-a", statementA, await hash(statementA), true, "PASS"));
  nodes["run-files"].files = [
    makeFile("library.json", lib),
    makeFile("copy-of-library.json", lib),
    makeFile("baseline.json", base),
    makeFile("second-library.json", conflictingLib),
    makeFile("malformed.json", "{")
  ];
  await trigger(nodes, "run-files", "change");
  assert.match(nodes["summary"].textContent, /3 unique v2 envelope\(s\) bound to these exact manifest bytes/);
  assert.match(nodes["summary"].textContent, /0 unbound or stale envelope\(s\) kept for description only/);
  assert.match(nodes["summary"].textContent, /1 exact duplicate file\(s\) ignored/);
  assert.match(nodes["summary"].textContent, /Library arm: 0\/2 reported pass; 0 present, 1 missing, 1 conflicting/);
  assert.match(nodes["summary"].textContent, /Baseline arm: 0\/2 reported pass; 1 present, 1 missing, 0 conflicting/);
  assert.match(nodes["summary"].textContent, /1 rejected input\(s\)/);
  assert.equal(nodes["download-report"].disabled, false);

  await trigger(nodes, "download-report", "click");
  const report = await context.lastBlob.text();
  assert.match(report, /Manifest SHA-256/);
  assert.match(report, /case-a \/ library: conflict/);
  assert.match(report, /case-b \/ baseline: missing/);
  assert.match(report, /malformed\.json: Expected property name/);
  assert.match(report, /SHA-256 [0-9a-f]{64}/);
  assert.match(report, /not independently Lean-verified/);

  const revisedManifest = JSON.parse(JSON.stringify(manifest));
  revisedManifest.conditions.seconds_per_target = 60;
  const revisedManifestDigest = await hash(JSON.stringify(revisedManifest));
  assert.notEqual(revisedManifestDigest, originalManifestDigest);
  nodes["study-file"].files = [makeFile("same-id-new-budget.json", revisedManifest)];
  await trigger(nodes, "study-file", "change");
  const staleV2 = envelope("case-a", "library", runRecord("run-stale", "problem-a", statementA, await hash(statementA), true, "PASS"), originalManifestDigest);
  const legacyV1 = envelope("case-a", "baseline", runRecord("run-legacy", "problem-a", statementA, await hash(statementA), false, "REJECTED"), "", "v1");
  nodes["run-files"].files = [makeFile("stale-v2.json", staleV2), makeFile("legacy-v1.json", legacyV1)];
  await trigger(nodes, "run-files", "change");
  assert.match(nodes["summary"].textContent, /0 unique v2 envelope\(s\) bound to these exact manifest bytes/);
  assert.match(nodes["summary"].textContent, /2 unbound or stale envelope\(s\) kept for description only/);
  assert.match(nodes["summary"].textContent, /Library arm: 0\/2 reported pass; 0 present, 2 missing, 0 conflicting/);
  assert.match(nodes["slots"].textContent, /manifest digest differs from the selected frozen study/);
  assert.match(nodes["slots"].textContent, /legacy v1 envelope has no required exact-manifest binding/);
  await trigger(nodes, "download-report", "click");
  const staleReport = await context.lastBlob.text();
  assert.match(staleReport, /Descriptive unbound or stale envelopes/);
  assert.match(staleReport, /excluded from matched scoring/);

  await trigger(nodes, "download-template", "click");
  assert.equal(context.lastBlob.type, "application/json;charset=utf-8");
  assert.match(await context.lastBlob.text(), /synthetic-demo-template/);
  assert.match(nodes["study-status"].textContent, /no run was attempted/);

  const badManifest = { ...manifest, protocol_sha256: "0".repeat(64) };
  nodes["study-file"].files = [makeFile("bad-manifest.json", badManifest)];
  await trigger(nodes, "study-file", "change");
  assert.match(nodes["study-status"].textContent, /rejected: protocol text\/hash mismatch/);
  assert.equal(nodes["run-files"].disabled, true);
  assert.equal(nodes["download-report"].disabled, true);

  process.stdout.write("frozen-study tests passed: exact manifest binding, stale/legacy exclusion, denominator, duplicates, conflicts, rejected inputs, synthetic template, and no-run labeling\n");
}

main().catch((error) => {
  process.stderr.write(String(error.stack || error) + "\n");
  process.exitCode = 1;
});
