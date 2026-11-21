"use strict";

const statusNode = document.getElementById("status");
const authPanel = document.getElementById("auth-panel");
const accountPanel = document.getElementById("account-panel");
const bootstrapDetails = document.getElementById("bootstrap-details");
const teacherPanel = document.getElementById("teacher-panel");
const learnerPanel = document.getElementById("learner-panel");
let csrfToken = "";
let currentUser = null;

function element(tag, value) {
  const node = document.createElement(tag);
  if (value !== undefined) node.textContent = String(value);
  return node;
}

async function request(path, options = {}) {
  const headers = new Headers(options.headers || {});
  if (options.body !== undefined) headers.set("Content-Type", "application/json");
  if (options.method && options.method !== "GET" && csrfToken) headers.set("X-MathCase-CSRF", csrfToken);
  const response = await fetch(path, { ...options, headers, credentials: "same-origin" });
  const value = await response.json().catch(() => ({}));
  if (!response.ok) throw new Error(value.error || "Request failed with status " + response.status);
  return value;
}

function report(error) {
  statusNode.textContent = String(error.message || error);
}

function renderAssignments(parent, assignments, learnerMode) {
  parent.replaceChildren();
  if (!assignments.length) {
    parent.append(element("p", "No assignments yet."));
    return;
  }
  for (const assignment of assignments) {
    const card = element("article");
    card.className = "card";
    card.append(element("h4", assignment.title));
    card.append(element("p", assignment.plain_statement));
    card.append(element("p", "Exact Lean target:"));
    const target = element("pre", assignment.lean_target);
    card.append(target);
    if (assignment.prompt) card.append(element("p", "Teacher prompt: " + assignment.prompt));
    if (learnerMode) {
      const form = element("form");
      const answerLabel = element("label", "Your work");
      const answer = element("textarea");
      answer.name = "answer";
      answer.required = true;
      answerLabel.append(answer);
      const submit = element("button", "Submit work");
      submit.type = "submit";
      form.append(answerLabel, submit);
      form.addEventListener("submit", async (event) => {
        event.preventDefault();
        try {
          await request("/api/submissions", {
            method: "POST",
            body: JSON.stringify({ assignment_id: assignment.id, answer: answer.value })
          });
          answer.value = "";
          statusNode.textContent = "Submission saved for your teacher.";
        } catch (error) { report(error); }
      });
      card.append(form);
    }
    parent.append(card);
  }
}

async function loadTeacher() {
  const [learners, assignments, submissions] = await Promise.all([
    request("/api/learners"),
    request("/api/assignments"),
    request("/api/submissions")
  ]);
  const learnerList = document.getElementById("learners");
  learnerList.replaceChildren();
  if (!learners.learners.length) learnerList.append(element("p", "No learner accounts yet."));
  for (const learner of learners.learners) {
    const item = element("p", learner.username + " — account ID " + learner.id);
    learnerList.append(item);
  }
  renderAssignments(document.getElementById("teacher-assignments"), assignments.assignments, false);
  const submissionList = document.getElementById("teacher-submissions");
  submissionList.replaceChildren();
  if (!submissions.submissions.length) submissionList.append(element("p", "No submissions yet."));
  for (const submission of submissions.submissions) {
    const item = element("article");
    item.className = "card";
    item.append(element("p", "Assignment " + submission.assignment_id + " · learner " + submission.learner_id));
    item.append(element("pre", submission.answer));
    submissionList.append(item);
  }
}

async function loadLearner() {
  const result = await request("/api/assignments");
  renderAssignments(document.getElementById("learner-assignments"), result.assignments, true);
}

async function refresh() {
  try {
    const response = await request("/api/me");
    currentUser = response.user;
    csrfToken = response.csrf_token;
    authPanel.hidden = true;
    accountPanel.hidden = false;
    document.getElementById("account-label").textContent = currentUser.username + " · " + currentUser.role;
    teacherPanel.hidden = currentUser.role !== "teacher";
    learnerPanel.hidden = currentUser.role !== "learner";
    bootstrapDetails.hidden = true;
    if (currentUser.role === "teacher") await loadTeacher();
    else await loadLearner();
    statusNode.textContent = "Signed in. Saved classroom data stays in the local server store.";
  } catch {
    currentUser = null;
    csrfToken = "";
    authPanel.hidden = false;
    accountPanel.hidden = true;
    bootstrapDetails.hidden = false;
    statusNode.textContent = "Sign in or create the first teacher account.";
  }
}

document.getElementById("login-form").addEventListener("submit", async (event) => {
  event.preventDefault();
  const form = new FormData(event.currentTarget);
  try {
    const result = await request("/api/login", {
      method: "POST",
      body: JSON.stringify({ username: form.get("username"), password: form.get("password") })
    });
    csrfToken = result.csrf_token;
    await refresh();
  } catch (error) { report(error); }
});

document.getElementById("bootstrap-form").addEventListener("submit", async (event) => {
  event.preventDefault();
  const form = new FormData(event.currentTarget);
  try {
    const result = await request("/api/bootstrap", {
      method: "POST",
      body: JSON.stringify({
        token: form.get("token"),
        username: form.get("username"),
        password: form.get("password")
      })
    });
    csrfToken = result.csrf_token;
    await refresh();
  } catch (error) { report(error); }
});

document.getElementById("learner-form").addEventListener("submit", async (event) => {
  event.preventDefault();
  const form = new FormData(event.currentTarget);
  try {
    const result = await request("/api/learners", {
      method: "POST",
      body: JSON.stringify({ username: form.get("username"), password: form.get("password") })
    });
    statusNode.textContent = "Created learner " + result.learner.username + ". Copy the account ID and share the initial password with that learner using a separate private channel.";
    event.currentTarget.reset();
    await loadTeacher();
  } catch (error) { report(error); }
});

document.getElementById("assignment-form").addEventListener("submit", async (event) => {
  event.preventDefault();
  const form = new FormData(event.currentTarget);
  try {
    await request("/api/assignments", {
      method: "POST",
      body: JSON.stringify({
        learner_id: form.get("learner_id"),
        title: form.get("title"),
        plain_statement: form.get("plain_statement"),
        lean_target: form.get("lean_target"),
        prompt: form.get("prompt")
      })
    });
    statusNode.textContent = "Assignment saved for the selected learner.";
    event.currentTarget.reset();
    await loadTeacher();
  } catch (error) { report(error); }
});

document.getElementById("logout-button").addEventListener("click", async () => {
  try { await request("/api/logout", { method: "POST", body: "{}" }); }
  catch (error) { report(error); }
  csrfToken = "";
  await refresh();
});

refresh();
