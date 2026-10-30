(() => {
  "use strict";
  if (window.MathCasePublicReadOnly) return;

  const optionsPath = "/api/proofdesk-dispatch-options";
  const submitPath = "/api/proofdesk-runs";
  const runPath = "/api/proofdesk-run";
  const requestPath = "/api/proofdesk-request";
  const capabilitiesPath = "/api/capabilities";
  const lastRunKey = "mathcase.proofdesk.last-run.v1";
  const pendingRequestKey = "mathcase.proofdesk.pending-request.v2";
  let options = null;
  let modelChoices = [];
  let routeProfileByChoiceAndItem = new Map();
  let activeRun = "";
  let pendingRequest = null;
  let pendingRequestReconcileID = "";
  let savedRunContextRefreshSequence = 0;
  let explicitReadOnlyRunId = "";
  let explicitReadOnlyRun = null;

  const byId = (id) => document.getElementById(id);
  const formatCost = (micros) => "$" + (Number(micros || 0) / 1_000_000).toFixed(6);
  const sameOriginLoopback = () => window.location.protocol === "http:" && window.location.hostname === "127.0.0.1";
  const proofDeskModelLabel = (modelId) => modelId === "nvidia/Nemotron-3_5-Lightning"
    ? "Nemotron 3.5 Lightning"
    : String(modelId || "Model name unavailable").replace(/^nvidia\//, "");
  const proofDeskProviderLabel = (providerId) => providerId === "nebius-token-factory" ? "Nebius Token Factory" : String(providerId || "Provider unavailable");
  function localRunTime(value) {
    if (typeof value !== "string") return "Time not recorded";
    const time = new Date(value);
    return Number.isNaN(time.getTime()) ? "Time not recorded" : time.toLocaleString(undefined, { dateStyle: "medium", timeStyle: "short" });
  }
  const friendlyProtocol = (value) => value === "anthropic-messages-v1" || value === "anthropic-messages"
    ? "Anthropic Messages API"
    : value === "google-gemini-generate-content-v1"
      ? "Google Gemini API"
    : value === "openai-chat-completions-v1" || value === "openai-chat-completions"
      ? "Chat Completions-compatible API"
      : "Protocol not recorded";

  function add(parent, tag, text, className) {
    const node = document.createElement(tag);
    if (text !== undefined && text !== null) node.textContent = String(text);
    if (className) node.className = className;
    parent.appendChild(node);
    return node;
  }

  /* PROOFDESK_BYOK_HELP_TEST_BEGIN */
  function buildProofDeskByokHelp(documentRef, pageURL) {
    const details = documentRef.createElement("details");
    details.id = "proofdesk-byok-help";
    details.className = "workspace-evidence proofdesk-byok-help";
    const summary = documentRef.createElement("summary");
    summary.textContent = "Use your own provider key (BYOK)";
    details.appendChild(summary);
    const body = documentRef.createElement("p");
    body.textContent = "Never paste a key into this page or save one in the repository. MathCase builds the request context from the selected case and its eligible, hash-pinned records; you do not assemble a prompt by hand. No context is sent unless the exact statement, context digest, route grant, item clearance, account reconciliation, and prepaid budget all pass.";
    details.appendChild(body);
    const steps = documentRef.createElement("ol");
    steps.className = "proofdesk-byok-steps";
    for (const text of [
      "Create a non-secret local profile that matches the linked schema. Keep it and its exact owner grant and item clearance under the ignored data/local/config/proofdesk-providers/ folder.",
      "Set only the profile's api_key_env variable in your operating-system user environment, then restart the local preview. Do not put the key in a file, browser field, screenshot, or command argument.",
      "Check that the selected case and route are ready. Review the exact statement, automatically assembled context digest, data scope, and cost ceiling before the separate Send action.",
    ]) {
      const step = documentRef.createElement("li");
      step.textContent = text;
      steps.appendChild(step);
    }
    details.appendChild(steps);
    const link = documentRef.createElement("a");
    link.className = "link";
    link.href = new URL("README.md#optional-owner-byok-route", pageURL).href;
    link.textContent = "Read the step-by-step BYOK setup";
    details.appendChild(link);
    return details;
  }
  /* PROOFDESK_BYOK_HELP_TEST_END */

  function attachProofDeskByokHelp() {
    const hint = byId("proofdesk-route-hint");
    if (!hint || byId("proofdesk-byok-help")) return;
    hint.insertAdjacentElement("afterend", buildProofDeskByokHelp(document, window.location.href));
  }

  /* PROOFDESK_EVIDENCE_LINK_TEST_BEGIN */
  function evidenceActionLabel(path) {
    const name = String(path || "").split(/[\\/]/).pop() || "";
    if (/completion-receipt/i.test(name)) return "Read completion record";
    if (/\.request\.json$/i.test(name)) return "Read exact model request and context";
    if (/provider-call|call-receipt/i.test(name)) return "Read model-call record";
    if (/lean-|proof-check/i.test(name)) return "Read proof-check record";
    if (/linkage/i.test(name)) return "Read replay-link record";
    if (/audit/i.test(name)) return "Read audit record";
    if (/run-receipt/i.test(name)) return "Read run record";
    return "Read saved run evidence";
  }

  function addEvidenceAction(parent, href, sourcePath, expectedSha256) {
    let url;
    try { url = new URL(href, window.location.href); } catch { return; }
    const readable = url.origin === window.location.origin && url.pathname.includes("/data/local/")
      && /\.(?:json|md|txt)$/i.test(url.pathname);
    const label = evidenceActionLabel(sourcePath);
    if (readable) {
      const button = add(parent, "button", label, "link");
      button.type = "button";
      button.dataset.evidenceHref = url.href;
      button.dataset.evidenceTitle = label.replace(/^Read\s+/i, "");
      if (typeof expectedSha256 === "string" && /^[a-f0-9]{64}$/i.test(expectedSha256)) {
        button.dataset.evidenceSha256 = expectedSha256.toLowerCase();
      }
      return;
    }
    const link = add(parent, "a", "Open source file", "link");
    link.href = url.href;
    link.target = "_blank";
    link.rel = "noreferrer";
  }
  /* PROOFDESK_EVIDENCE_LINK_TEST_END */

  /* PROOFDESK_SAVED_RUN_LINK_TEST_BEGIN */
  function savedRunIdFromSearch(search) {
    let parameters;
    try { parameters = new URLSearchParams(String(search || "")); } catch { return ""; }
    const values = parameters.getAll("proofdesk_run");
    if (values.length !== 1 || !/^[A-Za-z0-9][A-Za-z0-9._-]{0,127}$/.test(values[0])) return "";
    return values[0];
  }
  /* PROOFDESK_SAVED_RUN_LINK_TEST_END */

  function resultMessage(state, title, detail) {
    const panel = byId("proofdesk-run-result");
    if (!panel) return;
    panel.dataset.state = state;
    panel.replaceChildren();
    add(panel, "strong", title, "status-chip " + (state === "verified" ? "verified" : "candidate"));
    if (detail) add(panel, "p", detail);
  }

  async function getJson(url, init) {
    const response = await fetch(url, { cache: "no-store", credentials: "same-origin", ...init });
    const value = await response.json();
    if (!response.ok && response.status !== 202) throw new Error(value.error || value.reason || "The local Proof Desk request failed.");
    return { response, value };
  }

  async function reopenedProofAssessment(run) {
    const reader = window.MathCaseEvidenceReader;
    if (!reader || typeof run?.completion_receipt !== "string" || typeof run?.completion_receipt_sha256 !== "string") return null;
    const completion = await reader.readLocalJSON(run.completion_receipt, run.completion_receipt_sha256);
    if (!completion.hash_matched || completion.record?.run_id !== run.run_id) return null;
    const linked = await reader.reopenProofDeskCompletion(completion.record);
    return reader.assessProofDeskCompletion(completion.record, linked);
  }

  /* PROOFDESK_CAPABILITY_CONTRACT_TEST_BEGIN */
  function proofDeskCapabilitiesAreSupported(value) {
    const contract = /^mathcase-local-preview-contract-r([0-9]+)$/.exec(value?.contract_id || "");
    return value?.schema_version === "mathcase-local-preview-capabilities-v1"
      && contract !== null
      && Number(contract[1]) >= 31
      && Array.isArray(value.capabilities)
      && value.capabilities.includes("case_bound_local_computation_subcheck_v1")
      && value.capabilities.includes("proofdesk_known_theorem_run_dispatch")
      && value.capabilities.includes("proofdesk_dispatch_idempotency_v2")
      && value.capabilities.includes("proofdesk_case_bound_dispatch_v1")
      && value.capabilities.includes("proofdesk_case_revision_dispatch_v2")
      && value.capabilities.includes("proofdesk_request_status_read")
      && value.capabilities.includes("proofdesk_aggregate_campaign_budget_gate")
      && value.capabilities.includes("proofdesk_chat_completion_reserved_fields_gate_v1")
      && value.capabilities.includes("proofdesk_pinned_provider_context_disclosure_v1")
      && value.capabilities.includes("governed_case_intake_v1")
      && value.capabilities.includes("resumable_problem_queue_v1")
      && value.capabilities.includes("bounded_problem_batch_plans_v1")
      && value.capabilities.includes("bounded_local_solver_dispatch_v1")
      && value.capabilities.includes("queue_successful_result_dossier_attachment_v1")
      && value.capabilities.includes("preview_single_instance_per_checkout")
      && value.capabilities.includes("integer_equation_solver_v1")
      && value.capabilities.includes("governed_statement_review_handoff_v1")
      && value.capabilities.includes("queue_item_scoped_statement_review_history_v1");
  }
  /* PROOFDESK_CAPABILITY_CONTRACT_TEST_END */

  async function loadedCapabilities() {
    const { value } = await getJson(capabilitiesPath);
    if (!proofDeskCapabilitiesAreSupported(value)) {
      throw new Error("This preview server reports " + String(value?.contract_id || "an unversioned contract") + "; first-dispatch case binding requires contract r31 or later with immutable case-revision, optional run-lineage, and exact provider-context checks. No provider call was sent. Open the canonical Case Desk at port 55135, then reload.");
    }
  }

  function selectedProfile() {
    const choice = selectedModelChoice();
    if (!choice) return null;
    const caseContext = window.MathCaseProofDeskCase || null;
    const selectedProblemId = byId("proofdesk-item-select")?.value || "";
    const candidates = choice.routes.filter((profile) => {
      if (caseContext?.problem_id) {
        return (profile.items || []).some((item) => (item.case_problem_id || item.problem_id) === caseContext.problem_id);
      }
      return !selectedProblemId || (profile.items || []).some((item) => item.problem_id === selectedProblemId);
    });
    if (pendingRequest?.profile_id) {
      const pending = candidates.find((profile) => profile.profile_id === pendingRequest.profile_id);
      if (pending) return pending;
    }
    const itemRouteProfileId = !caseContext && selectedProblemId && routeProfileByChoiceAndItem.get(choice.key + "|" + selectedProblemId);
    if (itemRouteProfileId) {
      const exactItemRoute = candidates.find((profile) => profile.profile_id === itemRouteProfileId
        && profile.readiness === "READY"
        && (profile.items || []).some((item) => item.problem_id === selectedProblemId && item.ready === true));
      if (exactItemRoute) return exactItemRoute;
    }
    const requestedProblem = caseContext?.problem_id || selectedProblemId;
    candidates.sort((left, right) => {
      const readiness = (profile) => {
        const item = (profile.items || []).find((candidate) => caseContext
          ? (candidate.case_problem_id || candidate.problem_id) === requestedProblem
          : candidate.problem_id === requestedProblem);
        return Number(profile.readiness === "READY" && item?.ready === true);
      };
      const readyDifference = readiness(right) - readiness(left);
      if (readyDifference) return readyDifference;
      const priceDifference = String(right.pricing_checked_at_utc || "").localeCompare(String(left.pricing_checked_at_utc || ""));
      if (priceDifference) return priceDifference;
      return String(left.profile_id || "").localeCompare(String(right.profile_id || ""));
    });
    return candidates[0] || choice.routes[0] || null;
  }

  function selectedModelChoice() {
    const value = byId("proofdesk-provider-select")?.value;
    return modelChoices.find((choice) => choice.key === value) || null;
  }

  function updateReviewDispatchStatus() {
    const status = byId("proofdesk-review-status");
    if (!status) return;
    const budget = options?.campaign_budget;
    if (budget?.ready === true) {
      status.textContent = "Provider requests require separate review and confirmation. Saved attempts remain available in Attempts.";
      return;
    }
    const reason = String(budget?.reason || "Aggregate OpenAI/Nebius account headroom is unknown.")
      .replace(/^Paid proof dispatch is paused because\s*/i, "")
      .replace(/\.\s+The local ledgers[\s\S]*$/i, "")
      .replace(/[.!?\s]+$/, "");
    status.textContent = "Provider requests paused: " + reason + ". Saved attempts remain available in Attempts.";
  }

  /* PROOFDESK_CASE_BINDING_TEST_BEGIN */
  function proofDeskModelChoiceKey(profile) {
    return "model:" + encodeURIComponent(String(profile?.provider_id || "")) + ":" + encodeURIComponent(String(profile?.model_id || ""));
  }
  function proofDeskModelChoiceLabel(profile) {
    const modelId = String(profile?.model_id || "Model unavailable");
    const modelName = modelId === "nvidia/Nemotron-3_5-Lightning" ? "Nemotron 3.5 Lightning"
      : modelId === "Qwen/Qwen3-30B-A3B-Instruct-2507" ? "Qwen3 30B"
        : modelId === "deepseek-ai/DeepSeek-V4.1-Flash" ? "DeepSeek V4.1 Flash"
          : modelId.replace(/^nvidia\//, "");
    const providerName = profile?.provider_id === "nebius-token-factory" ? "Nebius" : String(profile?.provider_id || "Provider unavailable");
    return providerName + " · " + modelName;
  }
  function proofDeskBuildModelChoices(profiles, caseContext) {
    const exactCaseProfiles = caseContext?.problem_id
      ? (profiles || []).filter((profile) => (profile.items || []).some((item) => (item.case_problem_id || item.problem_id) === caseContext.problem_id))
      : (profiles || []);
    const groups = new Map();
    for (const profile of exactCaseProfiles) {
      const key = proofDeskModelChoiceKey(profile);
      if (!groups.has(key)) groups.set(key, []);
      groups.get(key).push(profile);
    }
    return Array.from(groups, ([key, routes]) => ({
      key,
      routes,
      provider_id: routes[0]?.provider_id || "",
      model_id: routes[0]?.model_id || "",
      protocol_id: routes[0]?.protocol_id || "",
      display_name: proofDeskModelChoiceLabel(routes[0]),
    })).sort((left, right) => left.display_name.localeCompare(right.display_name));
  }
  function proofDeskModelChoiceItems(choice, caseContext) {
    const byProblem = new Map();
    for (const profile of choice?.routes || []) {
      for (const item of profile.items || []) {
        if (caseContext?.problem_id && (item.case_problem_id || item.problem_id) !== caseContext.problem_id) continue;
        if (!caseContext && item.ready !== true) continue;
        const prior = byProblem.get(item.problem_id);
        const routeScore = (candidate) => Number(candidate.profile.readiness === "READY" && candidate.item.ready === true);
        const newerPricing = !prior || String(profile.pricing_checked_at_utc || "") > String(prior.profile.pricing_checked_at_utc || "");
        if (!prior || routeScore({ profile, item }) > routeScore(prior) || (routeScore({ profile, item }) === routeScore(prior) && newerPricing)) {
          byProblem.set(item.problem_id, { item, profile });
        }
      }
    }
    return Array.from(byProblem.values(), ({ item, profile }) => ({ ...item, route_profile_id: profile.profile_id }))
      .sort((left, right) => String(left.title || left.problem_id).localeCompare(String(right.title || right.problem_id)));
  }
  function proofDeskSavedRunIdForContext(caseContext, fallbackRunId) {
    if (caseContext) return proofDeskSelectedCaseRunId(caseContext);
    return typeof fallbackRunId === "string" ? fallbackRunId : "";
  }
  function proofDeskSelectedCaseRunId(caseContext) {
    return typeof caseContext?.selected_run?.run_id === "string" ? caseContext.selected_run.run_id : "";
  }
  function proofDeskContextPacketMatches(item, selectedCase) {
    const digest = typeof item?.context_sha256 === "string" && /^[0-9a-f]{64}$/.test(item.context_sha256) ? item.context_sha256 : "";
    if (!digest) return true;
    const routeSnapshot = item?.provider_context_snapshot;
    if (routeSnapshot?.sha256 === digest && typeof routeSnapshot?.content === "string" && routeSnapshot.content.length > 0) return true;
    const casePrepared = selectedCase?.prepared_provider_context;
    return selectedCase?.provider_context_sha256 === digest
      && casePrepared?.context_sha256 === digest
      && typeof casePrepared?.content === "string"
      && casePrepared.content.length > 0;
  }
  function proofDeskContextDisclosure(item) {
    const digest = typeof item?.context_sha256 === "string" && /^[0-9a-f]{64}$/.test(item.context_sha256) ? item.context_sha256 : "";
    const selectedCase = typeof window !== "undefined" && window ? window.MathCaseProofDeskCase || null : null;
    if (digest) {
      const routeSnapshot = item?.provider_context_snapshot;
      const routeSnapshotMatches = routeSnapshot?.sha256 === digest && typeof routeSnapshot?.content === "string" && routeSnapshot.content.length > 0;
      const casePrepared = selectedCase?.prepared_provider_context;
      const preparedMatches = proofDeskContextPacketMatches(item, selectedCase);
      const separateCasePacket = routeSnapshotMatches && typeof casePrepared?.context_sha256 === "string" && casePrepared.context_sha256 !== digest;
      const sourceKind = selectedCase?.source_kind || "";
      const authorization = sourceKind === "AGENT_AUTHORED_INTEGRATION_CONTROL"
        ? "This case is an agent-authored local integration control under its exact bounded task authorization; no human authorship or meaning review is asserted."
        : sourceKind === "OWNER_AUTHORED"
          ? "This case uses the exact owner-entered source/use review; author identity and mathematical meaning are not independently verified."
          : "This case uses its exact source-specific permission and provider route.";
      return "The provider request includes the exact selected theorem statement, proof instructions, and automatically assembled case context. "
        + authorization + " Context SHA-256: " + digest + ". "
        + (preparedMatches ? "The prepared packet shown in this confirmation matches the selected route's context digest; it is the hash-pinned provider context." : "The selected route's context packet is not available with a matching digest; sending is blocked.")
        + (separateCasePacket ? " A separately prepared case packet with a different digest is not sent." : "")
        + " Verifier feedback is added after a proposal when available. No corpus or locked evaluation material is sent; training is not authorized.";
    }
    return "The provider request includes the exact cleared theorem statement and proof request, plus verifier diagnostics from this run when available. No separately cleared case context is included. No corpus or locked evaluation material is sent; MathCase has no authorization to use this request or result for training.";
  }
  function resolveProofDeskCaseBinding(caseContext, profile) {
    if (!caseContext) return { state: "UNBOUND", problem_id: "" };
    if (caseContext.state !== "READY") return { state: "BLOCKED", reason: caseContext.state === "LOADING" ? "The selected case is still being checked. Provider requests are paused until its exact record is verified." : "The selected record is unavailable for a provider request. Open a verified executable case or clear the workbench selection." };
    if (typeof caseContext.case_id !== "string" || !caseContext.case_id || typeof caseContext.problem_id !== "string" || !caseContext.problem_id) {
      return { state: "BLOCKED", reason: "The selected case does not expose an exact problem identity. No theorem alias will be guessed." };
    }
    const selectedRunID = proofDeskSelectedCaseRunId(caseContext);
    const statementHash = typeof caseContext.statement_sha256 === "string" ? caseContext.statement_sha256 : "";
    const caseRevision = typeof caseContext.case_revision_sha256 === "string" ? caseContext.case_revision_sha256 : "";
    if (!/^[0-9a-f]{64}$/.test(statementHash) || !/^[0-9a-f]{64}$/.test(caseRevision)) {
      return { state: "BLOCKED", reason: "The selected case lacks its exact statement or immutable revision digest. No provider request was sent." };
    }
    const caseItems = (profile?.items || []).filter((item) => item?.case_problem_id === caseContext.problem_id);
    if (caseItems.length !== 1) {
      return { state: "BLOCKED", reason: "The selected case has no unique provider clearance for its exact problem and statement. No theorem alias or neighboring case will be substituted." };
    }
    const item = caseItems[0];
    if (item.ready !== true) {
      const itemReason = typeof item.readiness_reason === "string" ? item.readiness_reason.trim() : "";
      const routeReason = typeof profile?.readiness_reason === "string" ? profile.readiness_reason.trim() : "";
      const detail = itemReason || routeReason || "the current item preflight is blocked";
      return { state: "BLOCKED", reason: "The selected case is not cleared for dispatch: " + detail + ". No provider request was sent." };
    }
    if (typeof item.statement_sha256 !== "string" || item.statement_sha256 !== statementHash) {
      return { state: "BLOCKED", reason: "The selected case does not match the exact statement digest cleared for this provider route. No theorem alias or neighboring case will be substituted." };
    }
    const providerContext = typeof item.context_sha256 === "string" && item.context_sha256 ? item.context_sha256 : null;
    if (providerContext !== null && !/^[0-9a-f]{64}$/.test(providerContext)) {
      return { state: "BLOCKED", reason: "The provider profile exposes a malformed context digest. No provider request was sent." };
    }
    if (caseContext.source_kind && providerContext !== null
        && (typeof caseContext.provider_context_sha256 !== "string" || caseContext.provider_context_sha256 !== providerContext)) {
      return { state: "BLOCKED", reason: "The provider route context digest does not match the automatically prepared context for this exact case. No provider request was sent." };
    }
    return {
      state: "BOUND",
      case_id: caseContext.case_id,
      problem_id: caseContext.problem_id,
      provider_problem_id: item.problem_id,
      case_title: typeof caseContext.case_title === "string" && caseContext.case_title ? caseContext.case_title : caseContext.case_id,
      run_id: selectedRunID || null,
      case_revision_sha256: caseRevision,
      provider_context_sha256: providerContext,
      item,
    };
  }
  function summarizeProofDeskCaseRoutes(caseContext, profiles) {
    if (caseContext?.state !== "READY" || typeof caseContext.problem_id !== "string" || !caseContext.problem_id) {
      return { state: "CASE_UNAVAILABLE", match_count: 0, ready_count: 0, reasons: [] };
    }
    const matching = (Array.isArray(profiles) ? profiles : []).filter((profile) =>
      (Array.isArray(profile?.items) ? profile.items : []).some((item) => item?.case_problem_id === caseContext.problem_id));
    if (!matching.length) {
      return { state: "NO_MATCHING_PROFILE", match_count: 0, ready_count: 0, reasons: [] };
    }
    const bindings = matching.map((profile) => resolveProofDeskCaseBinding(caseContext, profile));
    const readyCount = bindings.filter((binding) => binding.state === "BOUND").length;
    const reasons = [...new Set(bindings
      .filter((binding) => binding.state !== "BOUND")
      .map((binding) => String(binding.reason || "This exact-case route is not ready.")
        .replace(/\s*No provider request was sent\.?$/i, "")
        .replace(/[.!?\s]+$/, "")))];
    return {
      state: readyCount ? "READY_ROUTE_AVAILABLE" : "MATCHED_ROUTES_BLOCKED",
      match_count: matching.length,
      ready_count: readyCount,
      reasons,
    };
  }
  function proofDeskCaseRouteMessage(caseContext, profiles) {
    if (caseContext?.source_provider_input_status === "PROHIBITED_BY_PINNED_SOURCE"
        || caseContext?.source_allows_provider_input === false) {
      return "This case's hash-pinned source prohibits provider input. MathCase can assemble the exact context locally for inspection, but will not send it to a provider. No provider request was sent.";
    }
    if (caseContext?.source_provider_input_status === "PINNED_SOURCE_REOPEN_FAILED"
        || caseContext?.source_provider_input_status === "PINNED_SOURCE_IDENTITY_MISMATCH"
        || caseContext?.source_provider_input_status === "CONFLICTING_PINNED_SOURCE_PERMISSIONS"
        || caseContext?.source_provider_input_status === "NOT_ESTABLISHED") {
      return "This case's source-use permission has not been verified from its pinned source record. Provider input stays blocked. No provider request was sent.";
    }
    const summary = summarizeProofDeskCaseRoutes(caseContext, profiles);
    if (summary.state === "NO_MATCHING_PROFILE") {
      return "No configured provider profile is bound to this exact case problem ID. No theorem alias or neighboring case will be substituted, and no provider request was sent.";
    }
    if (summary.state === "CASE_UNAVAILABLE") {
      return "The exact selected case identity is still being verified. Provider requests remain paused, and no provider request was sent.";
    }
    if (summary.state === "READY_ROUTE_AVAILABLE") {
      return summary.ready_count + " exact-case provider route(s) are ready. Select a matching route and review its exact statement, context digest, and cost ceiling before sending.";
    }
    return summary.match_count + " configured provider route(s) match this exact case, but none is ready: "
      + (summary.reasons.slice(0, 3).join("; ") || "its exact-case clearance is blocked")
      + ". No provider request was sent.";
  }
  function proofDeskRequestMatchesCaseContext(request, caseContext, profile) {
    const binding = resolveProofDeskCaseBinding(caseContext, profile);
    const caseID = binding.state === "BOUND" ? binding.case_id : "";
    const problemID = binding.state === "BOUND" ? binding.problem_id : "";
    const runID = binding.state === "BOUND" ? (binding.run_id || "") : "";
    const revision = binding.state === "BOUND" ? binding.case_revision_sha256 : "";
    const providerContext = binding.state === "BOUND" ? (binding.provider_context_sha256 || "") : "";
    return (!caseContext || binding.state === "BOUND")
      && (request.case_id || "") === caseID
      && (request.case_problem_id || "") === problemID
      && (request.case_run_id || "") === runID
      && (request.case_statement_sha256 || "") === (binding.state === "BOUND" ? String(caseContext.statement_sha256 || "") : "")
      && (request.case_revision_sha256 || "") === revision
      && (request.provider_context_sha256 || "") === providerContext;
  }
  function proofDeskProblemTitle(problemId) {
    return ({
      "nat-add-assoc": "Natural-number addition is associative",
      "list-mem-pair": "Membership in a two-item list",
      "mathlib_list_mem_pair_v4331": "Membership in a two-item list",
      "forall-n-n-eq-n": "Every natural number equals itself",
      "hero-prime-divisibility-r1": "Prime divisibility: a prime dividing a square divides the base",
    })[problemId] || "A theorem without a saved reader title";
  }
  function proofDeskSavedRunTitle(run, caseContext) {
    if (typeof run?.problem_id === "string" && run.problem_id
      && caseContext?.state === "READY"
      && caseContext.problem_id === run.problem_id
      && typeof caseContext.case_title === "string" && caseContext.case_title.trim()) return caseContext.case_title;
    return proofDeskProblemTitle(run?.problem_id);
  }
  function proofDeskPendingRequestContextState(request, caseContext, profile) {
    if (!request) return "NONE";
    return proofDeskRequestMatchesCaseContext(request, caseContext, profile) ? "CURRENT" : "STALE";
  }
  function proofDeskSavedRunRelationship(run, caseContext, selectedProblemId, profile) {
    if (!run || typeof run.problem_id !== "string" || !run.problem_id) return { state: "NO_RUN_TARGET", message: "The saved run has no theorem identity, so it cannot be attributed to a case." };
    const savedTitle = proofDeskSavedRunTitle(run, caseContext);
    const dispatchBinding = run.case_binding;
    const selectedRunID = proofDeskSelectedCaseRunId(caseContext);
    const dispatchParentIsWellFormed = dispatchBinding?.case_run_id === null
      || (typeof dispatchBinding?.case_run_id === "string" && !!dispatchBinding.case_run_id);
    const dispatchParentRunID = typeof dispatchBinding?.case_run_id === "string" ? dispatchBinding.case_run_id : "";
    const selectedRunIsThisDispatch = !!selectedRunID && selectedRunID === run.run_id;
    const selectedRunMatchesDispatchParent = !!dispatchParentRunID && dispatchParentRunID === selectedRunID;
    const dispatchParentIsVerified = !dispatchParentRunID
      || selectedRunMatchesDispatchParent
      || (Array.isArray(caseContext?.runs) && caseContext.runs.some((candidate) => candidate?.run_id === dispatchParentRunID));
    const selectedCaseIsVerified = caseContext?.state === "READY"
      && typeof caseContext.case_id === "string" && !!caseContext.case_id
      && typeof caseContext.problem_id === "string" && !!caseContext.problem_id
      && /^[0-9a-f]{64}$/.test(String(caseContext.statement_sha256 || ""))
      && /^[0-9a-f]{64}$/.test(String(caseContext.case_revision_sha256 || ""));
    const dispatchContextDigest = dispatchBinding?.provider_context_sha256;
    if (dispatchBinding?.schema_version === "mathcase-proofdesk-case-binding-v2"
      && selectedCaseIsVerified
      && dispatchParentIsWellFormed
      && dispatchBinding.case_id === caseContext.case_id
      && dispatchBinding.case_problem_id === caseContext.problem_id
      && dispatchParentIsVerified
      && (selectedRunMatchesDispatchParent || selectedRunIsThisDispatch)
      && dispatchBinding.case_revision_sha256 === caseContext.case_revision_sha256
      && dispatchBinding.lean_statement_sha256 === caseContext.statement_sha256
      && (dispatchContextDigest === null || /^[0-9a-f]{64}$/.test(String(dispatchContextDigest || "")))) {
      return {
        state: "CASE_BOUND_AT_DISPATCH",
        message: "This saved run belongs to the selected case revision. Opening it sends no request; mathematical meaning review remains pending.",
      };
    }
    if (caseContext?.saved_run_linkage_status === "VERIFIED_AFTER_DISPATCH"
      && caseContext.saved_run_linkage_read_only === true
      && caseContext.linked_run_id === run.run_id
      && caseContext.linked_problem_id === run.problem_id
      && caseContext.case_id === caseContext.saved_run_linkage_case_id) {
      return {
        state: "POST_DISPATCH_EXACT_LINK",
        message: "This saved result for " + savedTitle + " was linked to the selected case after the provider call by the server's exact statement, source-binding, context, and Lean-receipt checks. It was not case-bound at dispatch; the result is read-only and did not advance a review gate.",
      };
    }
    let currentProblemId = "", currentTitle = "";
    if (caseContext) {
      const binding = resolveProofDeskCaseBinding(caseContext, profile);
      if (binding.state !== "BOUND") return { state: "CASE_NOT_BOUND", message: "Saved result for " + savedTitle + ". The selected case is not verified and cleared for this provider route; this result stays separate and does not answer that case." };
      currentProblemId = binding.provider_problem_id;
      currentTitle = proofDeskProblemTitle(currentProblemId);
    } else if (typeof selectedProblemId === "string" && selectedProblemId) {
      currentProblemId = selectedProblemId;
      currentTitle = proofDeskProblemTitle(selectedProblemId);
    } else {
      return { state: "NO_CURRENT_SELECTION", message: "Saved result for " + savedTitle + ". This is a previous run; no current theorem is selected to receive it." };
    }
    if (currentProblemId !== run.problem_id) return { state: "DIFFERENT_THEOREM", message: "Saved result for " + savedTitle + ". Current selected theorem: " + currentTitle + ". This result does not answer or update the current selection." };
    return { state: "SAME_THEOREM_UNLINKED", message: "Saved result for " + savedTitle + ". The same theorem is selected, but this saved run is not attached to the current case or dossier." };
  }
  function proofDeskRunMatchesCaseContext(run, caseContext) {
    if (!run || typeof run.run_id !== "string" || !run.run_id || caseContext?.state !== "READY"
        || typeof caseContext.case_id !== "string" || !caseContext.case_id) return false;
    const relationship = proofDeskSavedRunRelationship(run, caseContext, "", null);
    if (run.case_binding?.schema_version === "mathcase-proofdesk-case-binding-v2") {
      return relationship.state === "CASE_BOUND_AT_DISPATCH";
    }
    return proofDeskSelectedCaseRunId(caseContext) === run.run_id;
  }

  /* PROOFDESK_TERMINAL_CASE_BINDING_TEST_BEGIN */
  function proofDeskTerminalCaseBinding(run) {
    const binding = run?.case_binding;
    if (!run || !["COMPLETED", "FAILED", "INTERRUPTED"].includes(run.status)
      || typeof run.run_id !== "string" || !run.run_id.trim()
      || binding?.schema_version !== "mathcase-proofdesk-case-binding-v2"
      || typeof binding.case_id !== "string" || !binding.case_id.trim()
      || typeof binding.case_problem_id !== "string" || binding.case_problem_id !== binding.case_id || binding.case_problem_id !== run.problem_id
      || !/^[0-9a-f]{64}$/.test(String(binding.case_revision_sha256 || ""))
      || !/^[0-9a-f]{64}$/.test(String(binding.lean_statement_sha256 || ""))
      || (binding.provider_context_sha256 !== null && binding.provider_context_sha256 !== undefined
        && !/^[0-9a-f]{64}$/.test(String(binding.provider_context_sha256)))) return null;
    return {
      case_id: binding.case_id,
      case_problem_id: binding.case_problem_id,
      run_id: run.run_id,
      status: run.status,
      case_revision_sha256: binding.case_revision_sha256,
      lean_statement_sha256: binding.lean_statement_sha256,
      provider_context_sha256: binding.provider_context_sha256 || null,
    };
  }
  /* PROOFDESK_TERMINAL_CASE_BINDING_TEST_END */

  function publishTerminalCaseBinding(run) {
    const binding = proofDeskTerminalCaseBinding(run);
    if (!binding) return false;
    window.dispatchEvent(new CustomEvent("mathcase-proofdesk-run-terminal", { detail: binding }));
    return true;
  }
  /* PROOFDESK_CASE_BINDING_TEST_END */

  function updateRouteHint() {
    const hint = byId("proofdesk-route-hint");
    if (!hint || !options) return;
    const profiles = Array.isArray(options.providers) ? options.providers : [];
    const caseContext = window.MathCaseProofDeskCase || null;
    const choices = modelChoices.length ? modelChoices : proofDeskBuildModelChoices(profiles, caseContext);
    if (choices.length === 0) {
      hint.textContent = options.reason || "No provider/model profile is configured. No request can be sent.";
      return;
    }
    const readyCount = choices.filter((choice) => choice.routes.some((profile) => {
      if (caseContext) return resolveProofDeskCaseBinding(caseContext, profile).state === "BOUND";
      return profile.readiness === "READY" && (profile.items || []).some((item) => item.ready === true);
    })).length;
    const protocolNames = [...new Set(choices.map((choice) => friendlyProtocol(choice.protocol_id)))];
    let routeMessage;
    if (choices.length === 1) {
      const choice = choices[0];
      const profile = selectedProfile() || choice.routes[0];
      const readiness = readyCount === 1 ? "Its exact grant, theorem clearance, credential, and pinned checker are ready." : String(profile?.readiness_reason || "This model route is not ready.");
      routeMessage = "One provider/model choice: " + choice.display_name + ". MathCase resolves its exact cleared route for the selected theorem. " + readiness;
    } else {
      routeMessage = String(readyCount) + " of " + String(choices.length) + " provider/model choices are ready" + (protocolNames.length ? " · adapters: " + protocolNames.join(", ") : "") + ". MathCase resolves each choice to a currently eligible route for the exact selected case.";
    }
    if (caseContext) {
      const binding = resolveProofDeskCaseBinding(caseContext, selectedProfile());
      routeMessage += binding.state === "BOUND"
        ? " Request locked to “" + binding.case_title + "”; only its exact cleared theorem can be sent."
        : " Provider request paused: " + proofDeskCaseRouteMessage(caseContext, profiles);
    }
    if (pendingRequest && proofDeskPendingRequestContextState(pendingRequest, caseContext, selectedProfile()) === "STALE") {
      routeMessage += " A saved confirmation belongs to the previous selection. Its confirmation is hidden; no result is attributed to the new selection. Reopen the original selection to reconcile the same request ID safely.";
    }
    hint.textContent = routeMessage;
  }

  function refreshControls() {
    const caseContext = window.MathCaseProofDeskCase || null;
    const providerSelect = byId("proofdesk-provider-select");
    const choices = options ? proofDeskBuildModelChoices(options.providers || [], caseContext) : [];
    const priorChoiceKey = providerSelect?.value || "";
    modelChoices = choices;
    if (providerSelect && options) {
      providerSelect.replaceChildren();
      for (const choice of choices) {
        const option = document.createElement("option");
        option.value = choice.key;
        option.textContent = choice.display_name;
        providerSelect.appendChild(option);
      }
      if (!choices.length) {
        add(providerSelect, "option", caseContext ? "No cleared model for this case" : "No provider/model choices", "");
      } else if (choices.some((choice) => choice.key === priorChoiceKey)) {
        providerSelect.value = priorChoiceKey;
      } else {
        const readyChoice = choices.find((choice) => choice.routes.some((profile) => caseContext
          ? resolveProofDeskCaseBinding(caseContext, profile).state === "BOUND"
          : profile.readiness === "READY" && (profile.items || []).some((item) => item.ready === true)));
        providerSelect.value = (readyChoice || choices[0]).key;
      }
    }
    updateRouteHint();
    updateReviewDispatchStatus();
    let profile = selectedProfile();
    const choice = selectedModelChoice();
    const items = byId("proofdesk-item-select");
    const button = byId("proofdesk-run-button");
    const costLine = byId("proofdesk-cost-line");
    if (!items || !button || !costLine) return;
    if (providerSelect && options) {
      providerSelect.disabled = Boolean(pendingRequest?.confirmed)
        || choices.length < 2;
    }
    const priorItemId = items.value;
    items.replaceChildren();
    if (!profile) {
      add(items, "option", "No cleared theorem is available", "");
      items.disabled = true;
      button.disabled = true;
      byId("proofdesk-confirmation").hidden = true;
      costLine.textContent = options?.reason || "No provider profile is configured.";
      return;
    }
    const caseBinding = resolveProofDeskCaseBinding(caseContext, profile);
    if (caseContext && caseBinding.state !== "BOUND") {
      add(items, "option", "Selected case is not cleared for this route", "");
      items.disabled = true;
      button.disabled = true;
      byId("proofdesk-confirmation").hidden = true;
      costLine.textContent = proofDeskCaseRouteMessage(caseContext, options?.providers);
      return;
    }
    const choiceItems = proofDeskModelChoiceItems(choice, caseContext);
    routeProfileByChoiceAndItem.clear();
    for (const item of choiceItems.filter((candidate) => candidate.ready !== false)) {
      if (!caseContext && item.route_profile_id) routeProfileByChoiceAndItem.set(choice.key + "|" + item.problem_id, item.route_profile_id);
      const option = document.createElement("option");
      option.value = item.problem_id;
      option.textContent = item.title;
      option.title = item.description;
      items.appendChild(option);
    }
    if (caseContext && caseBinding.state === "BOUND") items.value = caseBinding.provider_problem_id;
    else if (choiceItems.some((item) => item.problem_id === priorItemId && item.ready !== false)) items.value = priorItemId;
    profile = selectedProfile();
    if (!profile) {
      items.disabled = true;
      button.disabled = true;
      costLine.textContent = "No authorized route matches this provider/model and theorem selection.";
      return;
    }
    const selectedItem = (profile.items || []).find((item) => item.problem_id === items.value);
    const ready = profile.readiness === "READY" && selectedItem?.ready === true && !activeRun;
    items.disabled = !ready || !choiceItems.length || Boolean(pendingRequest?.confirmed) || Boolean(caseContext);
    button.disabled = !ready || !items.value || Boolean(pendingRequest);
    const campaignBudget = options?.campaign_budget;
    costLine.textContent = campaignBudget?.ready !== true
      ? String(campaignBudget?.reason || "Paid proof dispatch is paused because aggregate campaign headroom is unknown.")
        + " The per-call and per-run caps are additional limits; they do not establish remaining headroom under the $10 campaign ceiling."
      : ready
      ? "Per-call ceiling " + formatCost(profile.per_call_ceiling_micros)
        + " · per-run ceiling " + formatCost(profile.run_ceiling_micros)
        + " · UI dispatch total stops at " + formatCost(options?.cumulative_ui_cost_ceiling_micros ?? 100_000) + ". Training is off."
      : String(profile.readiness_reason || "This provider profile is not ready.");
  }

  function clearPendingRequest() {
    pendingRequest = null;
    window.localStorage.removeItem(pendingRequestKey);
    const confirmation = byId("proofdesk-confirmation");
    if (confirmation) confirmation.hidden = true;
    const cancel = byId("proofdesk-cancel-run-button");
    if (cancel) cancel.hidden = false;
    const confirm = byId("proofdesk-confirm-run-button");
    if (confirm) confirm.textContent = "Send this theorem request";
  }

  async function reconcileStalePendingRequest() {
    const requested = pendingRequest;
    if (!requested || requested.confirmed !== true || !requested.request_id || pendingRequestReconcileID === requested.request_id) return;
    pendingRequestReconcileID = requested.request_id;
    try {
      const { value: saved } = await getJson(requestPath + "?request_id=" + encodeURIComponent(requested.request_id));
      if (pendingRequest?.request_id !== requested.request_id) return;
      if (saved.status === "NOT_FOUND") {
        clearPendingRequest();
        resultMessage("candidate", "OLD REQUEST NOT FOUND", "The previous request ID has no saved dispatch record, so it did not reach the provider. Review the current case and its exact context before starting a new request.");
        refreshControls();
        return;
      }
      if (!["RUNNING", "COMPLETED", "FAILED", "INTERRUPTED"].includes(saved.status) || typeof saved.run_id !== "string") {
        throw new Error(saved.error || "The saved request has no verified run identity.");
      }
      window.localStorage.setItem(lastRunKey, saved.run_id);
      clearPendingRequest();
      if (saved.status === "RUNNING") activeRun = saved.run_id;
      await renderRun(saved);
      refreshControls();
      if (activeRun) void poll(activeRun);
    } catch (error) {
      if (pendingRequest?.request_id === requested.request_id) {
        resultMessage("blocked", "OLD REQUEST NEEDS RECONCILIATION", String(error && error.message || error) + " A new provider request remains paused until the exact earlier request status is known.");
        refreshControls();
      }
    } finally {
      if (pendingRequestReconcileID === requested.request_id) pendingRequestReconcileID = "";
    }
  }

  function showConfirmation(profile, item, request) {
    const details = byId("proofdesk-confirmation-details");
    details.replaceChildren();
    add(details, "strong", proofDeskModelChoiceLabel(profile) + " · " + item.title);
    add(details, "p", "Request ID " + String(request.request_id || "unavailable") + " · use this same ID to reconcile this exact request.");
    if (request.case_id) add(details, "p", "Bound to selected case: " + String(request.case_title || request.case_id) + ". Case revision SHA-256 " + String(request.case_revision_sha256 || "unavailable") + "; selected prior run " + String(request.case_run_id || "none") + ". The server rechecks this revision and statement before sending.");
    const exactStatement = window.MathCaseProofDeskCase?.lean_statement;
    if (request.case_id && typeof exactStatement === "string" && exactStatement.trim()) {
      add(details, "p", "Exact Lean statement proposed to this model:");
      add(details, "pre", exactStatement, "workspace-code");
    }
    const selectedCase = window.MathCaseProofDeskCase || null;
    const routeSnapshot = item?.provider_context_snapshot;
    const routeSnapshotMatches = routeSnapshot?.sha256 === item?.context_sha256 && typeof routeSnapshot?.content === "string" && routeSnapshot.content.length > 0;
    const casePrepared = selectedCase?.prepared_provider_context;
    const casePreparedMatches = selectedCase?.provider_context_sha256 === item?.context_sha256
      && casePrepared?.context_sha256 === item?.context_sha256 && typeof casePrepared?.content === "string" && casePrepared.content.length > 0;
    if (routeSnapshotMatches) {
      add(details, "p", "Hash-pinned provider context included · SHA-256 " + String(routeSnapshot.sha256) + ":");
      const contextDetails = add(details, "details", undefined, "proofdesk-technical-details");
      add(contextDetails, "summary", "Inspect the exact pinned context sent");
      add(contextDetails, "pre", routeSnapshot.content, "workspace-code");
      if (casePrepared?.context_sha256 && casePrepared.context_sha256 !== routeSnapshot.sha256) {
        add(details, "p", "The separately prepared case context has a different digest and is not included in this request.");
      }
    } else if (request.case_id && casePreparedMatches) {
      add(details, "p", "Automatically assembled provider context · SHA-256 " + String(casePrepared.context_sha256) + ":");
      const contextDetails = add(details, "details", undefined, "proofdesk-technical-details");
      add(contextDetails, "summary", "Inspect the exact prepared context");
      add(contextDetails, "pre", casePrepared.content, "workspace-code");
    }
    add(details, "p", "One theorem only; per-call ceiling "
      + formatCost(profile.per_call_ceiling_micros) + "; run ceiling " + formatCost(profile.run_ceiling_micros) + ".");
    const routeDetails = add(details, "details", undefined, "proofdesk-technical-details");
    add(routeDetails, "summary", "Technical route and pricing details");
    add(routeDetails, "p", "Profile ID: " + String(profile.profile_id || "unavailable"));
    add(routeDetails, "p", "Model ID: " + String(profile.model_id || "unavailable") + " · protocol: " + friendlyProtocol(profile.protocol_id));
    add(routeDetails, "p", "Destination host: " + String(profile.destination_host || "unavailable") + " · pricing checked " + String(profile.pricing_checked_at_utc || "time not recorded"));
    add(details, "p", proofDeskContextDisclosure(item));
    add(details, "p", "This is a model proposal. The pinned Lean checker and axiom audit decide whether the proof is accepted.");
    const campaignBudget = options?.campaign_budget;
    if (request.confirmed !== true && campaignBudget?.ready !== true) {
      add(details, "p", String(campaignBudget?.reason || "Paid dispatch is paused because aggregate campaign headroom is unknown.") + " This is a review-only confirmation; sending is disabled.", "proofdesk-budget-block");
    }
    const contextPacketReady = proofDeskContextPacketMatches(item, selectedCase);
    if (request.confirmed !== true && !contextPacketReady) {
      add(details, "p", "The exact hash-pinned provider context packet is unavailable. No request can be sent.", "proofdesk-budget-block");
    }
    const confirmButton = byId("proofdesk-confirm-run-button");
    confirmButton.disabled = request.confirmed !== true && (campaignBudget?.ready !== true || !contextPacketReady);
    confirmButton.textContent = request.confirmed ? "Reopen the same request safely" : !contextPacketReady ? "Context packet unavailable" : campaignBudget?.ready === true ? "Send this theorem request" : "Paid request paused";
    byId("proofdesk-cancel-run-button").hidden = request.confirmed === true;
    byId("proofdesk-confirmation").hidden = false;
    byId("proofdesk-confirm-run-button").focus();
  }

  function prepareRun() {
    if (!sameOriginLoopback() || activeRun || pendingRequest) return;
    const profile = selectedProfile();
    const problemId = byId("proofdesk-item-select")?.value;
    const item = profile?.items?.find((candidate) => candidate.problem_id === problemId && candidate.ready !== false);
    if (!profile || profile.readiness !== "READY" || !item) return;
    const caseContext = window.MathCaseProofDeskCase || null;
    const caseBinding = resolveProofDeskCaseBinding(caseContext, profile);
    if (caseContext && (caseBinding.state !== "BOUND" || caseBinding.provider_problem_id !== problemId)) {
      resultMessage("blocked", "REQUEST NOT SENT", caseBinding.reason || "The selected case and theorem choice do not match. No provider call was sent.");
      return;
    }
    if (!proofDeskContextPacketMatches(item, caseContext)) {
      resultMessage("blocked", "REQUEST NOT SENT", "The exact hash-pinned provider context packet is unavailable for this route. No provider request or reservation was created.");
      return;
    }
    if (typeof profile.destination_host !== "string" || !profile.destination_host) {
      resultMessage("blocked", "REQUEST NOT SENT", "The configured provider destination could not be verified for review.");
      return;
    }

    pendingRequest = { request_id: window.crypto.randomUUID().replaceAll("-", "").toLowerCase(), profile_id: profile.profile_id, problem_id: problemId, case_id: caseBinding.state === "BOUND" ? caseBinding.case_id : "", case_problem_id: caseBinding.state === "BOUND" ? caseBinding.problem_id : "", case_run_id: caseBinding.state === "BOUND" ? caseBinding.run_id : "", case_statement_sha256: caseBinding.state === "BOUND" ? String(caseContext.statement_sha256 || "") : "", case_revision_sha256: caseBinding.state === "BOUND" ? caseBinding.case_revision_sha256 : "", provider_context_sha256: caseBinding.state === "BOUND" ? caseBinding.provider_context_sha256 : "", case_title: caseBinding.state === "BOUND" ? caseBinding.case_title : "", confirmed: false };
    showConfirmation(profile, item, pendingRequest);
    resultMessage("candidate", "Review before sending", "No provider call has been sent yet.");
    refreshControls();
  }

  async function renderRun(run) {
    const panel = byId("proofdesk-run-result");
    if (!panel) return;
    const sequence = String((Number(panel.dataset.renderSequence) || 0) + 1);
    panel.dataset.renderSequence = sequence;
    panel.dataset.renderRunId = String(run.run_id || "");
    panel.replaceChildren();
    const isRunning = run.status === "RUNNING";
    const hasReportedPass = run.status === "COMPLETED" && run.solved === true && Array.isArray(run.attempts) && run.attempts.some((attempt) => attempt?.outcome === "PASS");
    let proofAssessment = null;
    if (hasReportedPass) {
      add(panel, "span", "CHECKING LINKED PROOF RECORD", "status-chip candidate");
      add(panel, "p", "Reopening the exact saved completion, provider result, and Lean proof-check record before showing an accepted result.");
      try { proofAssessment = await reopenedProofAssessment(run); } catch { proofAssessment = null; }
      if (panel.dataset.renderSequence !== sequence || panel.dataset.renderRunId !== String(run.run_id || "")) return;
      panel.replaceChildren();
    }
    const acceptedEvidenceIds = new Set(proofAssessment?.accepted_evidence_ids || []);
    const passed = proofAssessment?.state === "MATCHED" && proofAssessment.accepted_count > 0;
    const state = passed ? "verified" : run.status === "FAILED" || run.status === "INTERRUPTED" ? "failed" : isRunning ? "running" : "candidate";
    panel.dataset.state = state;
    const title = isRunning ? "MODEL RUN IN PROGRESS"
      : passed ? "PINNED LEAN ACCEPTED THE PROOF"
        : hasReportedPass ? "MODEL RESPONSE SAVED · PROOF RECEIPT NOT CONFIRMED"
        : run.status === "COMPLETED" ? "MODEL RESPONSE SAVED · NO VERIFIED PROOF"
          : run.status === "INTERRUPTED" ? "PREVIEW RESTARTED · RUN NOT RESUMED"
            : run.status === "FAILED" ? "RUN FAILED · EVIDENCE PRESERVED"
              : "RUN RECEIPT UNAVAILABLE";
    add(panel, "span", title, "status-chip " + (passed ? "verified" : "candidate"));
    if (isRunning) {
      add(panel, "p", "The provider and pinned Lean checker are working. MathCase will not retry or start another run while this one is active.");
      return;
    }
    if (run.status === "NO_SOURCE") {
      add(panel, "p", String(run.error || "The run could not be reopened.") + " No theorem result is attributed to the current selection.");
      return;
    }
    const caseContext = window.MathCaseProofDeskCase || null;
    const relationship = explicitReadOnlyRunId === run.run_id && !caseContext
      ? { message: "Saved run for this exact theorem identity. This read-only view has no selected case or new theorem request; reopening it does not update another case." }
      : proofDeskSavedRunRelationship(run, caseContext, byId("proofdesk-item-select")?.value || "", selectedProfile());
    add(panel, "p", "Saved theorem: " + proofDeskSavedRunTitle(run, caseContext), "proofdesk-run-target");
    add(panel, "p", "Saved run time: " + localRunTime(run.completed_at_utc || run.started_at_utc), "proofdesk-run-time");
    add(panel, "p", relationship.message, "proofdesk-run-context");
    add(panel, "p", [proofDeskProviderLabel(run.provider_id), friendlyProtocol(run.protocol_id), proofDeskModelLabel(run.model_id), String(run.provider_call_count || 0) + " provider call(s)"].filter(Boolean).join(" · "));
    if (run.failure) add(panel, "p", String(run.failure));
    if (run.error) add(panel, "p", String(run.error));
    for (const [index, attempt] of (run.attempts || []).entries()) {
      const linkedPass = attempt.outcome === "PASS" && Array.isArray(attempt.evidence_ids) && attempt.evidence_ids.some((id) => acceptedEvidenceIds.has(id));
      const outcome = attempt.outcome === "PASS" && linkedPass ? "proof check passed"
        : attempt.outcome === "PASS" ? "provider recorded a pass, but the exact Lean receipt did not reopen and match"
        : attempt.outcome === "ERROR" && attempt.failure_class === "verification" ? "proof check did not finish"
          : attempt.outcome === "ERROR" ? "attempt ended with an error"
            : String(attempt.outcome || "outcome unavailable");
      add(panel, "p", "Attempt " + String(index + 1) + " · " + outcome + " · " + formatCost(attempt.cost_micros));
      if (typeof attempt.failure_summary === "string" && attempt.failure_summary) {
        const reason = attempt.failure_class === "verification" && /deadline exceeded|timed out/i.test(attempt.failure_summary)
          ? "The pinned Lean check timed out. The model response is saved, but this run does not count as a proof."
          : attempt.failure_summary;
        add(panel, "p", reason);
      }
    }
    if (typeof run.proof === "string" && run.proof) {
      add(panel, "p", passed ? "Proof accepted by the pinned Lean checker and axiom audit:" : hasReportedPass ? "The provider-run record reports a pass, but this view could not reopen and match its exact Lean receipt. Treat the text as an unconfirmed proposal:" : "Model proposal only; it did not pass the proof check:");
      add(panel, "pre", run.proof);
    }
    const artifacts = Array.isArray(run.artifacts) ? run.artifacts : [];
    if (artifacts.length || run.run_id) {
      const details = add(panel, "details");
      add(details, "summary", "Technical run identity and receipt trail");
      if (run.run_id) add(details, "p", "Run ID: " + run.run_id);
      if (run.started_at_utc) add(details, "p", "Started at (UTC): " + run.started_at_utc);
      if (run.completed_at_utc) add(details, "p", "Completed at (UTC): " + run.completed_at_utc);
      const links = add(details, "div", undefined, "proofdesk-evidence-links");
      for (const artifact of artifacts) {
        if (typeof artifact.url !== "string") continue;
        addEvidenceAction(links, artifact.url, artifact.path, artifact.sha256);
      }
    }
    if (typeof run.completion_receipt === "string") {
      addEvidenceAction(panel, "/" + run.completion_receipt, run.completion_receipt, run.completion_receipt_sha256);
    }
  }

  function renderNoSelectedCaseRun(caseContext) {
    const panel = byId("proofdesk-run-result");
    if (!panel) return;
    panel.dataset.state = "candidate";
    panel.replaceChildren();
    const loading = caseContext?.state === "LOADING";
    const ready = caseContext?.state === "READY";
    add(panel, "span", loading ? "CHECKING THIS CASE" : ready ? "NO RUN SELECTED FOR THIS CASE" : "CASE RESULT UNAVAILABLE", "status-chip candidate");
    add(panel, "p", loading
      ? "MathCase is checking the selected case record. No result from another case is shown while it loads."
      : ready
        ? "This case has no selected run to show. Choose a saved attempt in Attempts or prepare a request in Model settings. Results from other cases stay separate."
        : "The selected case could not be verified. No previous result is attributed to it.");
  }

  async function refreshSavedRunForCurrentContext() {
    if (!options) return;
    const caseContext = window.MathCaseProofDeskCase || null;
    if (explicitReadOnlyRunId) {
      if (!explicitReadOnlyRun) return;
      if (caseContext?.state === "LOADING") return;
      if (!caseContext || proofDeskRunMatchesCaseContext(explicitReadOnlyRun, caseContext)) {
        void renderRun(explicitReadOnlyRun);
        return;
      }
      explicitReadOnlyRunId = "";
      explicitReadOnlyRun = null;
    }
    const runId = proofDeskSavedRunIdForContext(caseContext, window.localStorage.getItem(lastRunKey));
    if (!runId) {
      if (caseContext) renderNoSelectedCaseRun(caseContext);
      return;
    }
    const contextKey = caseContext
      ? [caseContext.case_id || "", caseContext.case_revision_sha256 || "", runId].join("|")
      : "unbound|" + runId;
    const sequence = ++savedRunContextRefreshSequence;
    try {
      const { value: run } = await getJson(runPath + "?run_id=" + encodeURIComponent(runId));
      const currentCase = window.MathCaseProofDeskCase || null;
      const currentRunId = proofDeskSavedRunIdForContext(currentCase, window.localStorage.getItem(lastRunKey));
      const currentKey = currentCase
        ? [currentCase.case_id || "", currentCase.case_revision_sha256 || "", currentRunId].join("|")
        : "unbound|" + currentRunId;
      if (sequence !== savedRunContextRefreshSequence || currentKey !== contextKey) return;
      if (run.run_id !== runId) throw new Error("The saved run identity changed while refreshing the selected case.");
      await renderRun(run);
      publishTerminalCaseBinding(run);
    } catch {
      if (sequence !== savedRunContextRefreshSequence) return;
      const panel = byId("proofdesk-run-result");
      if (!panel) return;
      panel.dataset.state = "candidate";
      panel.replaceChildren();
      add(panel, "span", "SAVED RESULT CONTEXT UNAVAILABLE", "status-chip candidate");
      add(panel, "p", "MathCase could not reopen the run selected for this case and verify its theorem relationship. No result from another case is attributed here.");
    }
  }

  async function poll(runId) {
    const started = Date.now();
    while (Date.now() - started < 15 * 60 * 1000) {
      const { value } = await getJson(runPath + "?run_id=" + encodeURIComponent(runId));
      renderRun(value);
      if (value.status !== "RUNNING") {
        activeRun = "";
        refreshControls();
        publishTerminalCaseBinding(value);
        return;
      }
      await new Promise((resolve) => window.setTimeout(resolve, 1500));
    }
    activeRun = "";
    refreshControls();
    throw new Error("The page stopped waiting after 15 minutes. The run was not retried.");
  }

  async function startConfirmedRun() {
    if (!sameOriginLoopback() || activeRun || !pendingRequest) return;
    const requested = pendingRequest;
    if (requested.confirmed === true) {
      try {
        const { value: saved } = await getJson(requestPath + "?request_id=" + encodeURIComponent(requested.request_id));
        if (saved.status === "NOT_FOUND") {
          pendingRequest.confirmed = false;
          window.localStorage.setItem(pendingRequestKey, JSON.stringify(pendingRequest));
          const profile = selectedProfile();
          const item = profile?.items?.find((candidate) => candidate.problem_id === requested.problem_id);
          if (profile && item) showConfirmation(profile, item, pendingRequest);
          resultMessage("candidate", "REQUEST NOT YET SAVED", "The saved run lookup found no dispatch record. Review the exact theorem and budget again before using the same request ID; no provider call was replayed.");
          return;
        }
        if (!["RUNNING", "COMPLETED", "FAILED", "INTERRUPTED"].includes(saved.status) || typeof saved.run_id !== "string") {
          throw new Error(saved.error || "The saved request has no verified run identity.");
        }
        window.localStorage.setItem(lastRunKey, saved.run_id);
        window.localStorage.removeItem(pendingRequestKey);
        pendingRequest = null;
        byId("proofdesk-confirmation").hidden = true;
        if (saved.status === "RUNNING") activeRun = saved.run_id;
        renderRun(saved);
        if (activeRun) await poll(activeRun);
        else publishTerminalCaseBinding(saved);
        refreshControls();
      } catch (error) {
        resultMessage("blocked", "REQUEST STATUS NEEDS RECONCILIATION", String(error && error.message || error) + " No second provider dispatch was started.");
      }
      return;
    }
    if (requested.confirmed !== true) {
      try {
        const { value: freshOptions } = await getJson(optionsPath);
        if (freshOptions.schema_version !== "mathcase-proofdesk-dispatch-options-v1") throw new Error("Campaign budget status uses an unsupported schema.");
        options = freshOptions;
        refreshControls();
        if (options.campaign_budget?.ready !== true) {
          const freshProfile = selectedProfile();
          const freshItem = freshProfile?.items?.find((candidate) => candidate.problem_id === requested.problem_id);
          if (freshProfile && freshItem) showConfirmation(freshProfile, freshItem, requested);
          resultMessage("blocked", "PAID REQUEST BLOCKED", String(options.campaign_budget?.reason || "Aggregate campaign headroom is unknown. No provider call was sent."));
          return;
        }
      } catch (error) {
        resultMessage("blocked", "BUDGET STATUS NEEDS REVIEW", String(error && error.message || error) + " No provider call was sent.");
        return;
      }
    }
    const profile = selectedProfile();
    const problemId = byId("proofdesk-item-select")?.value;
    const item = profile?.items?.find((candidate) => candidate.problem_id === problemId);
    const currentCase = window.MathCaseProofDeskCase || null;
    const currentBinding = resolveProofDeskCaseBinding(currentCase, profile);
    const requestCaseMatches = proofDeskRequestMatchesCaseContext(requested, currentCase, profile);
    if (!profile || !item || profile.profile_id !== requested.profile_id || problemId !== requested.problem_id
      || !requestCaseMatches || (currentCase && currentBinding.state !== "BOUND")
      || (currentBinding.state === "BOUND" && problemId !== currentBinding.provider_problem_id)
      || (requested.confirmed !== true && (profile.readiness !== "READY" || item.ready === false || options?.campaign_budget?.ready !== true))) {
      if (requested.confirmed !== true) clearPendingRequest();
      resultMessage("blocked", requested.confirmed === true ? "SAVED REQUEST NEEDS REVIEW" : "REQUEST NOT SENT", currentCase && currentBinding.state !== "BOUND" ? currentBinding.reason : "The provider, selected case, or theorem choice changed after confirmation. No new provider request was started.");
      refreshControls();
      return;
    }
    pendingRequest.confirmed = true;
    window.localStorage.setItem(pendingRequestKey, JSON.stringify(pendingRequest));
    refreshControls();
    const button = byId("proofdesk-run-button");
    button.disabled = true;
    resultMessage("running", "CHECKING THE LOCAL BOUNDARIES", "The UI checks the owner grant, exact item clearance, cost limits, and pinned Lean image before a model request can start.");
    try {
      await loadedCapabilities();
      if (!proofDeskRequestMatchesCaseContext(requested, window.MathCaseProofDeskCase || null, profile)) {
        activeRun = "";
        clearPendingRequest();
        byId("proofdesk-confirmation").hidden = true;
        resultMessage("blocked", "REQUEST NOT SENT", "The workbench case changed while the local checks were running. The provider request was stopped before dispatch.");
        refreshControls();
        return;
      }
      const dispatchPayload = { schema_version: "mathcase-proofdesk-dispatch-request-v2", request_id: requested.request_id, profile_id: profile.profile_id, problem_id: problemId };
      if (requested.case_id) {
        dispatchPayload.schema_version = "mathcase-proofdesk-dispatch-request-v4";
        dispatchPayload.case_binding = {
          schema_version: "mathcase-proofdesk-case-binding-v2",
          case_id: requested.case_id,
          case_problem_id: requested.case_problem_id,
          case_run_id: requested.case_run_id || null,
          case_revision_sha256: requested.case_revision_sha256,
          provider_context_sha256: requested.provider_context_sha256 || null,
          lean_statement_sha256: requested.case_statement_sha256,
        };
      }
      const { value } = await getJson(submitPath, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(dispatchPayload),
      });
      if (!["RUNNING", "COMPLETED", "FAILED", "INTERRUPTED"].includes(value.status) || typeof value.run_id !== "string") throw new Error(value.error || "The provider run was refused before dispatch.");
      activeRun = value.run_id;
      window.localStorage.setItem(lastRunKey, activeRun);
      window.localStorage.removeItem(pendingRequestKey);
      pendingRequest = null;
      if (value.status !== "RUNNING") renderRun(value);
      byId("proofdesk-confirmation").hidden = true;
      byId("proofdesk-cancel-run-button").hidden = false;
      byId("proofdesk-confirm-run-button").textContent = "Send this theorem request";
      await poll(activeRun);
    } catch (error) {
      activeRun = "";
      resultMessage("blocked", "REQUEST STATUS NEEDS RECONCILIATION", String(error && error.message || error) + " The same request ID is saved; confirming again will reopen that request instead of creating another provider run.");
      const cancel = byId("proofdesk-cancel-run-button");
      if (cancel) cancel.hidden = true;
      byId("proofdesk-confirm-run-button").textContent = "Reopen the same request safely";
      byId("proofdesk-confirmation").hidden = false;
      refreshControls();
    }
  }

  async function init() {
    const panel = byId("proofdesk-dispatch");
    if (!panel) return;
    attachProofDeskByokHelp();
    panel.dataset.dispatchUiVersion = "review-step-r8-bound-child-run-reopen";
    const providerSelect = byId("proofdesk-provider-select");
    const itemSelect = byId("proofdesk-item-select");
    const button = byId("proofdesk-run-button");
    providerSelect.addEventListener("change", () => {
      if (pendingRequest?.confirmed) return;
      clearPendingRequest();
      refreshControls();
      void refreshSavedRunForCurrentContext();
    });
    itemSelect.addEventListener("change", () => {
      if (pendingRequest?.confirmed) return;
      explicitReadOnlyRunId = "";
      explicitReadOnlyRun = null;
      clearPendingRequest();
      refreshControls();
      void refreshSavedRunForCurrentContext();
    });
    window.addEventListener("mathcase-proofdesk-case-context", () => {
      const caseContext = window.MathCaseProofDeskCase || null;
      const contextState = proofDeskPendingRequestContextState(pendingRequest, caseContext, selectedProfile());
      if (contextState === "STALE") {
        if (pendingRequest.confirmed !== true) clearPendingRequest();
        else {
          pendingRequest.context_changed = true;
          window.localStorage.setItem(pendingRequestKey, JSON.stringify(pendingRequest));
          byId("proofdesk-confirmation").hidden = true;
          void reconcileStalePendingRequest();
        }
      } else if (contextState === "CURRENT" && pendingRequest?.context_changed === true) {
        pendingRequest.context_changed = false;
        window.localStorage.setItem(pendingRequestKey, JSON.stringify(pendingRequest));
        const profile = selectedProfile(), item = profile?.items?.find((candidate) => candidate.problem_id === pendingRequest.problem_id);
        if (profile && item) showConfirmation(profile, item, pendingRequest);
      }
      refreshControls();
      void refreshSavedRunForCurrentContext();
    });
    button.addEventListener("click", prepareRun);
    byId("proofdesk-confirm-run-button").addEventListener("click", startConfirmedRun);
    byId("proofdesk-cancel-run-button").addEventListener("click", () => {
      clearPendingRequest();
      resultMessage("candidate", "REQUEST CANCELED", "No provider call was sent.");
      refreshControls();
    });
    if (!sameOriginLoopback()) {
      panel.dataset.state = "blocked";
      byId("proofdesk-dispatch-copy").textContent = "Open this page through the local MathCase preview to run the authorized Proof Desk path.";
      byId("proofdesk-cost-line").textContent = "No provider call was sent.";
      return;
    }
    const deepLinkedRunId = savedRunIdFromSearch(window.location.search);
    if (deepLinkedRunId) {
      explicitReadOnlyRunId = deepLinkedRunId;
      const drawer = byId("run-settings-drawer");
      if (drawer) drawer.open = true;
      try { window.localStorage.setItem(lastRunKey, deepLinkedRunId); } catch { /* The URL still carries the read-only run identity. */ }
      resultMessage("candidate", "REOPENING SAVED RUN", "Reading the saved request and proof receipts. This link does not send a provider call.");
      try {
        const { value: run } = await getJson(runPath + "?run_id=" + encodeURIComponent(deepLinkedRunId));
        if (run.run_id !== deepLinkedRunId) throw new Error("The returned run identity does not match the saved link.");
        const linkedCase = window.MathCaseProofDeskCase || null;
        if (linkedCase?.state === "READY" && !proofDeskRunMatchesCaseContext(run, linkedCase)) {
          explicitReadOnlyRunId = "";
          explicitReadOnlyRun = null;
          resultMessage("candidate", "RUN NOT SELECTED FOR THIS CASE", "This saved run is not bound to the selected case revision or its verified run history. No result from another case is shown here, and reopening sends no provider call.");
        } else {
          explicitReadOnlyRun = run;
          await renderRun(run);
          if (run.status === "RUNNING") {
            activeRun = run.run_id;
            refreshControls();
            void poll(activeRun);
          }
        }
      } catch (error) {
        explicitReadOnlyRunId = "";
        explicitReadOnlyRun = null;
        resultMessage("blocked", "SAVED RUN COULD NOT BE REOPENED", String(error && error.message || error) + " No provider call was sent.");
      }
    }
    try {
      await loadedCapabilities();
      try {
        const saved = JSON.parse(window.localStorage.getItem(pendingRequestKey) || "null");
        if (saved && typeof saved.request_id === "string" && /^[0-9a-f]{32}$/.test(saved.request_id)
          && typeof saved.profile_id === "string" && typeof saved.problem_id === "string") {
          pendingRequest = saved;
          if (saved.confirmed === true) {
            const notice = byId("proofdesk-route-hint");
            if (notice) notice.textContent = "A previously confirmed request has no response recorded in this tab. Reopen it with the same request ID to recover its saved status; the server will not dispatch the same request twice.";
            try {
              const { value: recovered } = await getJson(requestPath + "?request_id=" + encodeURIComponent(saved.request_id));
              if (recovered.status === "NOT_FOUND") {
                clearPendingRequest();
                resultMessage("candidate", "OLD REQUEST NOT FOUND", "The previous request ID has no saved dispatch record, so it did not reach the provider. Review the current case and its exact context before starting a new request.");
              } else if (["RUNNING", "COMPLETED", "FAILED", "INTERRUPTED"].includes(recovered.status) && typeof recovered.run_id === "string") {
                window.localStorage.setItem(lastRunKey, recovered.run_id);
                clearPendingRequest();
                if (recovered.status === "RUNNING") activeRun = recovered.run_id;
                renderRun(recovered);
              } else {
                throw new Error(recovered.error || "The saved request has no verified status.");
              }
            } catch {
              // Keep the same request ID available for a deliberate idempotent retry.
            }
          }
        }
      } catch {
        window.localStorage.removeItem(pendingRequestKey);
      }
      const { value } = await getJson(optionsPath);
      if (value.schema_version !== "mathcase-proofdesk-dispatch-options-v1") throw new Error("Provider settings use an unsupported schema.");
      options = value;
      if (!(value.providers || []).length) {
        add(providerSelect, "option", "No authorized provider profile", "");
        byId("proofdesk-dispatch-copy").textContent = value.reason || "No provider profile is configured.";
        byId("proofdesk-cost-line").textContent = "No provider call was sent.";
        panel.dataset.state = "blocked";
        refreshControls();
        return;
      }
      refreshControls();
      if (pendingRequest) {
        const savedProfile = (value.providers || []).find(profile => profile.profile_id === pendingRequest.profile_id);
        const savedItem = savedProfile?.items?.find(candidate => candidate.problem_id === pendingRequest.problem_id);
        if (savedProfile && savedItem) {
          const selectedCase = window.MathCaseProofDeskCase || null;
          const savedCaseMatches = proofDeskRequestMatchesCaseContext(pendingRequest, selectedCase, savedProfile);
          if (!savedCaseMatches && pendingRequest.confirmed !== true) {
            clearPendingRequest();
            resultMessage("blocked", "REQUEST CANCELED", "The workbench case changed before the saved request was confirmed. No provider call was sent.");
          } else {
            providerSelect.value = proofDeskModelChoiceKey(savedProfile);
            refreshControls();
            itemSelect.value = savedItem.problem_id;
            refreshControls();
            showConfirmation(savedProfile, savedItem, pendingRequest);
          }
        } else if (pendingRequest.confirmed) {
          resultMessage("blocked", "SAVED REQUEST NEEDS REVIEW", "The previously confirmed request is preserved locally, but its provider profile or theorem is no longer available. No new request was sent.");
        } else {
          clearPendingRequest();
        }
      }
      panel.dataset.state = value.state === "READY" ? "ready" : "blocked";
      if (value.state !== "READY") {
        const anyReadyProfile = (value.providers || []).some(profile => profile.readiness === "READY");
        byId("proofdesk-dispatch-copy").textContent = anyReadyProfile && value.campaign_budget?.ready === true
          ? "Some configured provider profiles are blocked. Individually ready profiles remain available after exact-theorem review; blocked profiles cannot send."
          : "No provider route is available for a new request. Saved attempts remain available in Attempts.";
      }
      const initialCaseContext = window.MathCaseProofDeskCase || null;
      const lastRun = deepLinkedRunId ? "" : proofDeskSavedRunIdForContext(initialCaseContext, window.localStorage.getItem(lastRunKey));
      if (lastRun) {
        try {
          const { value: run } = await getJson(runPath + "?run_id=" + encodeURIComponent(lastRun));
          renderRun(run);
          if (run.status === "RUNNING") {
            activeRun = run.run_id;
            refreshControls();
            void poll(activeRun);
          }
        } catch {
          window.localStorage.removeItem(lastRunKey);
        }
      } else if (!deepLinkedRunId && initialCaseContext) {
        renderNoSelectedCaseRun(initialCaseContext);
      }
    } catch (error) {
      panel.dataset.state = "blocked";
      const routeHint = byId("proofdesk-route-hint");
      if (routeHint) routeHint.textContent = "Provider routing is unavailable: " + String(error && error.message || error);
      providerSelect.replaceChildren();
      add(providerSelect, "option", "Provider route unavailable", "");
      providerSelect.disabled = true;
      itemSelect.replaceChildren();
      add(itemSelect, "option", "No cleared theorem available", "");
      itemSelect.disabled = true;
      button.disabled = true;
      byId("proofdesk-dispatch-copy").textContent = String(error && error.message || error);
      byId("proofdesk-cost-line").textContent = "No provider call was sent.";
    }
  }

  if (document.readyState === "loading") document.addEventListener("DOMContentLoaded", init, { once: true });
  else void init();
})();
