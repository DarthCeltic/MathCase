"use strict";

const maxBytes = 4 * 1024 * 1024;
let teacherCase = null;
let assignment = null;
let reviewAssignment = null;
let reviewSubmission = null;
let teacherLoadGeneration = 0;
let learnerLoadGeneration = 0;
let reviewAssignmentGeneration = 0;
let reviewSubmissionGeneration = 0;
let reviewCheckGeneration = 0;

function byId(id) { return document.getElementById(id); }
function setStatus(id, value, error = false) {
  const node = byId(id);
  node.textContent = value;
  node.classList.toggle("warning", error);
}
function newID() { return crypto.randomUUID?.() || `${Date.now()}-${Math.random().toString(36).slice(2)}`; }
function isText(value) { return typeof value === "string"; }
function isSHA(value) { return typeof value === "string" && /^[0-9a-f]{64}$/.test(value); }
function addText(parent, tag, value) {
  const node = document.createElement(tag);
  node.textContent = value;
  parent.append(node);
  return node;
}
async function digest(bytes) {
  const result = new Uint8Array(await crypto.subtle.digest("SHA-256", bytes));
  return Array.from(result, (value) => value.toString(16).padStart(2, "0")).join("");
}
async function loadObject(file) {
  if (!file || file.size > maxBytes) throw new Error("size");
  const bytes = await file.arrayBuffer();
  const raw = new TextDecoder("utf-8", { fatal: true }).decode(bytes);
  return { value: JSON.parse(raw), bytes };
}
function download(name, data) {
  const blob = new Blob([JSON.stringify(data, null, 2) + "\n"], { type: "application/json;charset=utf-8" });
  const url = URL.createObjectURL(blob);
  const link = document.createElement("a");
  link.href = url;
  link.download = name;
  link.click();
  setTimeout(() => URL.revokeObjectURL(url), 60000);
}

byId("teacher-case").addEventListener("change", async () => {
  const generation = ++teacherLoadGeneration;
  teacherCase = null;
  byId("make-assignment").disabled = true;
  setStatus("teacher-case-status", "Reading case packet…");
  try {
    const { value } = await loadObject(byId("teacher-case").files[0]);
    if (value?.schema_version !== "mathcase-visitor-case-v1" ||
        !isText(value.title) || !isText(value.statement) || !isText(value.formal_target) ||
        !value.formal_target.trim() || !isText(value.source)) throw new Error("shape");
    if (generation !== teacherLoadGeneration) return;
    teacherCase = value;
    byId("make-assignment").disabled = false;
    setStatus("teacher-case-status", `Loaded ${value.title}; exact target is available for a bound assignment.`);
  } catch {
    if (generation === teacherLoadGeneration) setStatus("teacher-case-status", "Could not load a MathCase full-case JSON packet under 4 MiB.", true);
  } finally { if (generation === teacherLoadGeneration) byId("teacher-case").value = ""; }
});

byId("make-assignment").addEventListener("click", async () => {
  if (!teacherCase) return;
  const selectedCase = teacherCase;
  const targetHash = await digest(new TextEncoder().encode(selectedCase.formal_target));
  if (selectedCase !== teacherCase) return;
  assignment = {
    schema_version: "mathcase-class-assignment-v1",
    assignment_id: newID(),
    created_at_utc: new Date().toISOString(),
    case_title: selectedCase.title,
    statement: selectedCase.statement,
    lean_statement: selectedCase.formal_target,
    lean_statement_sha256: targetHash,
    learner_prompt: byId("assignment-prompt").value.slice(0, 12000)
  };
  download("mathcase-assignment.json", assignment);
  setStatus("teacher-case-status", "Assignment file prepared. It contains the prompt and target hash but omits the proof source and receipt.");
});

byId("assignment-file").addEventListener("change", async () => {
  const generation = ++learnerLoadGeneration;
  assignment = null;
  byId("make-submission").disabled = true;
  byId("learner-assignment").replaceChildren();
  byId("learner-notes").value = "";
  byId("learner-source").value = "";
  setStatus("assignment-status", "Reading assignment…");
  try {
    const { value } = await loadObject(byId("assignment-file").files[0]);
    if (value?.schema_version !== "mathcase-class-assignment-v1" ||
        !isText(value.assignment_id) || !isText(value.case_title) || !isText(value.statement) ||
        !isText(value.lean_statement) || !isSHA(value.lean_statement_sha256) ||
        !isText(value.learner_prompt)) throw new Error("shape");
    if (await digest(new TextEncoder().encode(value.lean_statement)) !== value.lean_statement_sha256) throw new Error("hash");
    if (generation !== learnerLoadGeneration) return;
    assignment = value;
    const brief = byId("learner-assignment");
    addText(brief, "h3", "Problem");
    addText(brief, "p", value.statement);
    addText(brief, "h3", "Exact Lean proposition");
    addText(brief, "pre", value.lean_statement);
    addText(brief, "p", "Target SHA-256 verified: " + value.lean_statement_sha256);
    addText(brief, "h3", "Teacher prompt");
    addText(brief, "p", value.learner_prompt);
    byId("make-submission").disabled = false;
    setStatus("assignment-status", `Loaded ${value.case_title} · assignment ${value.assignment_id}. Target hash verified locally.`);
  } catch {
    if (generation === learnerLoadGeneration) setStatus("assignment-status", "Assignment packet is invalid or its exact-target hash does not match.", true);
  } finally { if (generation === learnerLoadGeneration) byId("assignment-file").value = ""; }
});

byId("make-submission").addEventListener("click", () => {
  if (!assignment) return;
  const submission = {
    schema_version: "mathcase-class-submission-v1",
    submission_id: newID(),
    assignment_id: assignment.assignment_id,
    submitted_at_utc: new Date().toISOString(),
    lean_statement_sha256: assignment.lean_statement_sha256,
    learner_notes: byId("learner-notes").value.slice(0, 12000),
    proof_source: byId("learner-source").value.slice(0, 2 * 1024 * 1024)
  };
  download("mathcase-submission.json", submission);
  setStatus("assignment-status", "Submission file prepared. It remains on this device until you hand it off.");
});

async function maybeEnableReview() {
  const generation = ++reviewCheckGeneration;
  byId("make-review").disabled = true;
  byId("review-content").replaceChildren();
  if (!reviewAssignment || !reviewSubmission) return;
  const selectedAssignment = reviewAssignment;
  const selectedSubmission = reviewSubmission;
  const targetDigest = await digest(new TextEncoder().encode(selectedAssignment.value.lean_statement));
  if (generation !== reviewCheckGeneration || selectedAssignment !== reviewAssignment || selectedSubmission !== reviewSubmission) return;
  const compatible = selectedSubmission.value.assignment_id === selectedAssignment.value.assignment_id &&
    selectedSubmission.value.lean_statement_sha256 === selectedAssignment.value.lean_statement_sha256 &&
    targetDigest === selectedAssignment.value.lean_statement_sha256;
  if (!compatible) {
    setStatus("review-status", "Binding mismatch: submission assignment ID or exact-target hash differs. Review export is disabled.", true);
    return;
  }
  const panel = byId("review-content");
  addText(panel, "h3", selectedAssignment.value.case_title);
  addText(panel, "p", "Exact-target binding verified: " + targetDigest);
  addText(panel, "h3", "Learner notes");
  addText(panel, "pre", selectedSubmission.value.learner_notes || "(none)");
  addText(panel, "h3", "Submitted Lean source · displayed as text only");
  addText(panel, "pre", selectedSubmission.value.proof_source || "(empty submission)");
  setStatus("review-status", "Assignment ID and target hash match. The submitted source remains unexecuted.");
  byId("make-review").disabled = false;
}

byId("review-assignment").addEventListener("change", async () => {
  const generation = ++reviewAssignmentGeneration;
  reviewAssignment = null;
  ++reviewCheckGeneration;
  byId("make-review").disabled = true;
  byId("review-content").replaceChildren();
  byId("review-notes").value = "";
  setStatus("review-status", "Reading original assignment…");
  try {
    const loaded = await loadObject(byId("review-assignment").files[0]);
    const value = loaded.value;
    if (value?.schema_version !== "mathcase-class-assignment-v1" || !isText(value.assignment_id) ||
        !isText(value.lean_statement) || !isSHA(value.lean_statement_sha256)) throw new Error("shape");
    if (generation !== reviewAssignmentGeneration) return;
    reviewAssignment = loaded;
    setStatus("review-status", "Assignment loaded. Load the matching submission.");
    await maybeEnableReview();
  } catch { if (generation === reviewAssignmentGeneration) setStatus("review-status", "Could not load a valid assignment file.", true); }
  finally { if (generation === reviewAssignmentGeneration) byId("review-assignment").value = ""; }
});

byId("submission-file").addEventListener("change", async () => {
  const generation = ++reviewSubmissionGeneration;
  reviewSubmission = null;
  ++reviewCheckGeneration;
  byId("make-review").disabled = true;
  byId("review-content").replaceChildren();
  byId("review-notes").value = "";
  setStatus("review-status", "Reading learner submission…");
  try {
    const loaded = await loadObject(byId("submission-file").files[0]);
    const value = loaded.value;
    if (value?.schema_version !== "mathcase-class-submission-v1" || !isText(value.submission_id) ||
        !isText(value.assignment_id) || !isSHA(value.lean_statement_sha256) ||
        !isText(value.learner_notes) || !isText(value.proof_source)) throw new Error("shape");
    if (generation !== reviewSubmissionGeneration) return;
    reviewSubmission = { ...loaded, sha256: await digest(loaded.bytes) };
    if (generation !== reviewSubmissionGeneration) return;
    await maybeEnableReview();
  } catch { if (generation === reviewSubmissionGeneration) setStatus("review-status", "Could not load a valid submission file.", true); }
  finally { if (generation === reviewSubmissionGeneration) byId("submission-file").value = ""; }
});

byId("make-review").addEventListener("click", async () => {
  if (byId("make-review").disabled || !reviewAssignment || !reviewSubmission) return;
  const review = {
    schema_version: "mathcase-class-review-v1",
    review_id: newID(),
    reviewed_at_utc: new Date().toISOString(),
    assignment_id: reviewAssignment.value.assignment_id,
    submission_id: reviewSubmission.value.submission_id,
    submission_file_sha256: reviewSubmission.sha256,
    lean_statement_sha256: reviewAssignment.value.lean_statement_sha256,
    decision: byId("review-decision").value,
    teacher_feedback: byId("review-notes").value.slice(0, 12000)
  };
  download("mathcase-review.json", review);
  setStatus("review-status", "Review file prepared and bound to the exact submission file digest.");
});
