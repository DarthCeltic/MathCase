"use strict";

const assert = require("node:assert/strict");
const { readFileSync } = require("node:fs");
const { webcrypto } = require("node:crypto");
const vm = require("node:vm");

class FakeNode {
  constructor() {
    this.children = [];
    this.listeners = new Map();
    this.classNames = new Set();
    this.classList = {
      toggle: (name, enabled) => enabled ? this.classNames.add(name) : this.classNames.delete(name)
    };
    this.value = "";
    this.files = [];
    this.disabled = false;
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
  const bytes = Buffer.from(typeof value === "string" ? value : JSON.stringify(value), "utf8");
  return {
    size: bytes.byteLength,
    arrayBuffer: async () => bytes.buffer.slice(bytes.byteOffset, bytes.byteOffset + bytes.byteLength)
  };
}

async function trigger(nodes, id, eventName) {
  const listener = nodes[id].listeners.get(eventName);
  assert.ok(listener, `missing ${eventName} handler for ${id}`);
  await listener();
}

async function main() {
  const ids = [
    "teacher-case", "make-assignment", "teacher-case-status", "assignment-prompt",
    "assignment-file", "assignment-status", "learner-assignment", "learner-notes",
    "learner-source", "make-submission", "review-assignment", "submission-file",
    "review-status", "review-content", "review-decision", "review-notes", "make-review"
  ];
  const nodes = Object.fromEntries(ids.map((id) => [id, new FakeNode()]));
  nodes["review-decision"].value = "needs_revision";
  const context = {
    document: {
      getElementById: (id) => nodes[id],
      createElement: () => new FakeNode()
    },
    crypto: webcrypto,
    TextEncoder,
    TextDecoder,
    Uint8Array,
    Date,
    Math,
    Blob,
    URL: { createObjectURL: (blob) => { context.lastBlob = blob; return "blob:test"; }, revokeObjectURL() {} },
    setTimeout() {}
  };
  vm.runInNewContext(readFileSync("visitor/classroom.js", "utf8"), context, { filename: "classroom.js" });

  const target = "∀ n : Nat, n + 0 = n";
  const digest = Buffer.from(await webcrypto.subtle.digest("SHA-256", new TextEncoder().encode(target))).toString("hex");
  const casePacket = {
    schema_version: "mathcase-visitor-case-v1",
    title: "Zero on the right",
    statement: "For every natural number, adding zero on the right leaves it unchanged.",
    formal_target: target,
    source: "theorem nat_add_zero : ∀ n : Nat, n + 0 = n := by simp"
  };
  nodes["teacher-case"].files = [makeFile(casePacket)];
  await trigger(nodes, "teacher-case", "change");
  assert.equal(nodes["make-assignment"].disabled, false, "valid teacher case should enable assignment creation");
  nodes["assignment-prompt"].value = "Explain why the identity holds.";
  await trigger(nodes, "make-assignment", "click");
  const assignment = JSON.parse(await context.lastBlob.text());
  assert.equal(assignment.statement, casePacket.statement);
  assert.equal(assignment.lean_statement, target);
  assert.equal(assignment.learner_prompt, "Explain why the identity holds.");
  assert.equal(Object.hasOwn(assignment, "source"), false, "teacher proof source must not leak into assignment");

  nodes["assignment-file"].files = [makeFile(assignment)];
  await trigger(nodes, "assignment-file", "change");
  const learnerView = nodes["learner-assignment"].textContent;
  assert.ok(learnerView.includes(casePacket.statement), "learner sees the plain problem");
  assert.ok(learnerView.includes(target), "learner sees the exact Lean target");
  assert.ok(learnerView.includes(assignment.learner_prompt), "learner sees the teacher's prompt");
  assert.equal(nodes["make-submission"].disabled, false, "valid assignment should enable submission");

  const submission = {
    schema_version: "mathcase-class-submission-v1",
    submission_id: "submission-1",
    assignment_id: assignment.assignment_id,
    lean_statement_sha256: assignment.lean_statement_sha256,
    learner_notes: "Use the additive identity.",
    proof_source: "theorem nat_add_zero : ∀ n : Nat, n + 0 = n := by simp"
  };
  nodes["review-assignment"].files = [makeFile(assignment)];
  await trigger(nodes, "review-assignment", "change");
  nodes["submission-file"].files = [makeFile(submission)];
  await trigger(nodes, "submission-file", "change");
  assert.equal(nodes["make-review"].disabled, false, "matching assignment and submission should enable review");
  assert.ok(nodes["review-content"].textContent.includes(submission.proof_source), "review shows the matching submission");
  nodes["review-notes"].value = "Old feedback";

  nodes["submission-file"].files = [makeFile("{")];
  await trigger(nodes, "submission-file", "change");
  assert.equal(nodes["make-review"].disabled, true, "invalid replacement must disable review export");
  assert.equal(nodes["review-content"].textContent, "", "invalid replacement must clear the prior learner's work");
  assert.equal(nodes["review-notes"].value, "", "invalid replacement must clear feedback for the previous submission");

  let releaseSlowRead;
  const delayedValid = {
    size: 1,
    arrayBuffer: () => new Promise((resolve) => { releaseSlowRead = resolve; })
  };
  nodes["submission-file"].files = [delayedValid];
  const staleRead = trigger(nodes, "submission-file", "change");
  nodes["submission-file"].files = [makeFile("{")];
  await trigger(nodes, "submission-file", "change");
  const delayedBytes = Buffer.from(JSON.stringify(submission));
  releaseSlowRead(delayedBytes.buffer.slice(delayedBytes.byteOffset, delayedBytes.byteOffset + delayedBytes.byteLength));
  await staleRead;
  assert.equal(nodes["make-review"].disabled, true, "a delayed older read must not re-enable a newer invalid selection");
  assert.equal(nodes["review-content"].textContent, "", "a delayed older read must not restore stale review content");

  process.stdout.write("classroom visitor handoff tests passed: learner brief, proof omission, bound review, invalid replacement, and stale-read race\n");
}

main().catch((error) => {
  process.stderr.write(String(error.stack || error) + "\n");
  process.exitCode = 1;
});
