(() => {
  "use strict";
  if (window.MathCasePublicReadOnly) return;

  const DRAFTS_API = "/api/user-problem-drafts";
  const CASES_API = "/api/user-problem-cases";
  const DRAFT_RESEARCH_API = "/api/draft-research";
  const CONTRACT = "mathcase-local-preview-contract-r38";
  const CAPABILITIES = ["user_authored_problem_drafts_v1", "user_authored_case_prepare_v1", "user_authored_case_provider_context_v1"];
  const byId = (id) => document.getElementById(id);
  const isLoopbackPreview = () => window.location.protocol === "http:" && window.location.hostname === "127.0.0.1";
  let selectedDraftId = "";
  try { selectedDraftId = window.localStorage?.getItem("mathcase-selected-draft-v1") || ""; } catch (_) { /* Private browsing still works. */ }

  function selectDraft(id) {
    selectedDraftId = id;
    try { window.localStorage?.setItem("mathcase-selected-draft-v1", id); } catch (_) { /* Reading state is optional. */ }
  }

  function idempotencyKey() {
    if (typeof crypto.randomUUID === "function") return crypto.randomUUID().replaceAll("-", "").toLowerCase();
    return Array.from(crypto.getRandomValues(new Uint8Array(16)), (value) => value.toString(16).padStart(2, "0")).join("");
  }

  async function readJSON(path) {
    const response = await fetch(new URL(path, window.location.href), {
      method: "GET", cache: "no-store", credentials: "same-origin",
      headers: { Accept: "application/json" },
    });
    const value = await response.json().catch(() => ({}));
    if (!response.ok) throw new Error(value.error || "Local case service returned HTTP " + response.status + ".");
    return value;
  }

  function hex(bytes) {
    return Array.from(new Uint8Array(bytes), (value) => value.toString(16).padStart(2, "0")).join("");
  }

  async function validateDraft(record) {
    if (!record || record.schema_version !== "mathcase-user-problem-drafts-v1"
      || typeof record.draft_id !== "string" || !record.draft_id.startsWith("draft-")
      || typeof record.title !== "string" || typeof record.informal_statement !== "string"
      || !(record.lean_statement === null || typeof record.lean_statement === "string")
      || !/^[a-f0-9]{64}$/.test(record.statement_sha256)) {
      throw new Error("A saved local draft has an unsupported shape and was not displayed.");
    }
    const expectedStatus = record.lean_statement && record.lean_statement.trim()
      ? "UNSIGNED_WAITING_FOR_REVIEW" : "NEEDS_FORMALIZATION";
    if (record.status !== expectedStatus) throw new Error("A saved draft has an inconsistent review status.");
    const statementBytes = new TextEncoder().encode(JSON.stringify({
      informal_statement: record.informal_statement,
      lean_statement: record.lean_statement,
    }));
    if (crypto.subtle && hex(await crypto.subtle.digest("SHA-256", statementBytes)) !== record.statement_sha256) {
      throw new Error("A saved draft's text does not match its recorded digest.");
    }
    if (record.provenance?.kind !== "USER_ENTERED_UNVERIFIED"
      || record.provenance?.identity !== "UNAUTHENTICATED"
      || record.provenance?.source_review !== "NOT_PERFORMED"
      || record.use_scope?.local_solver !== "NOT_AUTHORIZED"
      || record.use_scope?.provider_input !== "NOT_AUTHORIZED"
      || record.use_scope?.training !== "NOT_AUTHORIZED"
      || record.use_scope?.public_export !== "NOT_AUTHORIZED") {
      throw new Error("A saved draft's unsigned and no-solver boundary is missing.");
    }
    return record;
  }

  function appendText(parent, tag, text, className) {
    const node = document.createElement(tag);
    node.textContent = text;
    if (className) node.className = className;
    parent.appendChild(node);
    return node;
  }

  function consentRow(card, id, text) {
    const label = document.createElement("label");
    label.className = "user-problem-consent";
    const input = document.createElement("input");
    input.type = "checkbox";
    input.id = id;
    input.required = true;
    label.append(input, document.createTextNode(" " + text));
    card.appendChild(label);
    return input;
  }

  function priceLabel(route) {
    const input = Number(route.input_price_micros_per_million_tokens) / 1_000_000;
    const output = Number(route.output_price_micros_per_million_tokens) / 1_000_000;
    if (!Number.isFinite(input) || !Number.isFinite(output)) return "price snapshot unavailable";
    return "$" + input.toFixed(2) + "/M input · $" + output.toFixed(2) + "/M output";
  }

  function isEmpiricalTimescaleQuestion(record) {
    const text = (record.title + " " + record.informal_statement).toLowerCase();
    const asksWhen = /\bhow long\b|\btimescale\b|\btime frame\b|\bwhen will\b/.test(text);
    const describesAPlaceOrChange = /\blocation\b|\bplace\b|\bcurrent\b|\bprocess(?:es)?\b|\breabsor\w*\b|\blost\b|\bdisappear\w*\b|\bchange\w*\b|\bdecay\w*\b|\berod\w*\b|\bmove\w*\b|\bgrow\w*\b/.test(text);
    return asksWhen && describesAPlaceOrChange;
  }

  function isGeoscienceQuestion(record) {
    return /\b(crust|mantle|rock|geolog\w*|tectonic\w*|subduct\w*|erosion|reabsor\w*)\b/i.test(record.informal_statement);
  }

  function researchPlanKey(draftId) {
    return "mathcase-research-plan-v1:" + draftId;
  }

  function loadResearchPlan(draftId) {
    try {
      const value = JSON.parse(window.localStorage?.getItem(researchPlanKey(draftId)) || "null");
      if (value?.schema_version === "mathcase-local-research-plan-v1" && value.draft_id === draftId
        && ["outcome", "process", "evidence"].every((key) => typeof value[key] === "string")) return value;
    } catch (_) { /* Local worksheet state is optional. */ }
    return { outcome: "", process: "", evidence: "" };
  }

  function makeResearchPlanWorksheet(record, card) {
    const worksheet = document.createElement("section");
    worksheet.className = "user-problem-research-plan";
    worksheet.setAttribute("aria-label", "Local research plan worksheet");
    appendText(worksheet, "h5", "Research plan");
    appendText(worksheet, "p", "Work out what evidence would answer the question. This worksheet is saved only in this browser; it does not fetch sources or estimate a result.", "library-note");
    const saved = loadResearchPlan(record.draft_id);
    const geoscience = isGeoscienceQuestion(record);
    const fields = [
      ["outcome", "1. Define the outcome", geoscience ? "What observable event should count as “reabsorbed” or “lost”? These may describe different outcomes." : "What observation or event would count as the outcome in this question?"],
      ["process", "2. Identify the process and scope", geoscience ? "Which material and geological process are in scope? What rock unit and tectonic setting apply at the named place?" : "Which process, material, site, or time horizon must be pinned down?"],
      ["evidence", "3. Find the needed evidence", geoscience ? "Which geological sources document this unit and give measured rates or models with uncertainty?" : "Which published observations, measured rates, or models would support an estimate? Include uncertainty."],
    ];
    const controls = {};
    for (const [key, labelText, placeholder] of fields) {
      const label = document.createElement("label");
      label.appendChild(document.createTextNode(labelText));
      const field = document.createElement("textarea");
      field.id = "research-plan-" + key + "-" + record.draft_id;
      field.rows = 2;
      field.placeholder = placeholder;
      field.value = saved[key];
      controls[key] = field;
      label.appendChild(field);
      worksheet.appendChild(label);
    }
    const model = document.createElement("details");
    appendText(model, "summary", "Conditional math model");
    appendText(model, "p", "If a source supports a constant rate and the quantity is defined, time = amount of change ÷ rate. Use compatible units and report the assumptions and uncertainty; no rate, amount, or estimate is supplied here.", "library-note");
    worksheet.appendChild(model);
    const save = document.createElement("button");
    save.type = "button";
    save.textContent = "Save research plan locally";
    worksheet.appendChild(save);
    const status = appendText(worksheet, "p", "This worksheet is separate from the saved draft.", "library-note");
    save.addEventListener("click", () => {
      const plan = {
        schema_version: "mathcase-local-research-plan-v1",
        draft_id: record.draft_id,
        saved_at_utc: new Date().toISOString(),
        outcome: controls.outcome.value.trim(),
        process: controls.process.value.trim(),
        evidence: controls.evidence.value.trim(),
      };
      try {
        const storage = window.localStorage;
        if (!storage || typeof storage.setItem !== "function") throw new Error("browser storage is unavailable");
        storage.setItem(researchPlanKey(record.draft_id), JSON.stringify(plan));
        status.textContent = "Research plan saved in this browser. The original draft is unchanged; no research, solver, or provider request was sent.";
      } catch (_) {
        status.textContent = "Browser storage is unavailable. Keep this worksheet open and copy your notes; the original draft is unchanged.";
      }
    });
    card.appendChild(worksheet);
    return worksheet;
  }

  function makeDraftResearchPanel(record, card) {
    const panel = document.createElement("details");
    panel.className = "user-problem-source-search";
    panel.setAttribute("aria-label", "Opt-in source search for this saved question");
    const panelSummary = appendText(panel, "summary", "Find cited sources with Tavily · 1 free credit");
    const body = document.createElement("div");
    body.className = "user-problem-research-plan";
    appendText(body, "p", "MathCase can run one Tavily basic search for this exact saved draft. It costs one free-plan credit only after a fresh usage check. Nothing is sent when this page opens.", "library-note");
    const queryLabel = document.createElement("label");
    queryLabel.textContent = "Exact search text to send";
    const query = document.createElement("textarea");
    query.rows = 2;
    query.maxLength = 280;
    query.disabled = true;
    queryLabel.appendChild(query);
    body.appendChild(queryLabel);
    const consent = consentRow(body, "draft-research-consent-" + record.draft_id,
      "I authorize sending only the displayed search text to Tavily for this saved draft and spending at most one free-plan credit after the account check.");
    consent.checked = false;
    consent.disabled = true;
    const search = document.createElement("button");
    search.type = "button";
    search.textContent = "Search sources · 1 free-plan credit";
    search.disabled = true;
    body.appendChild(search);
    const status = appendText(body, "p", "Checking saved source evidence locally…", "library-note");
    status.setAttribute("role", "status");
    const results = document.createElement("div");
    results.className = "user-problem-research-results";
    body.appendChild(results);
    panel.appendChild(body);
    card.appendChild(panel);
    let pending = false;
    let requestId = "";
    let canSearch = false;

    function showRecords(records) {
      results.replaceChildren();
      if (!Array.isArray(records)) return;
      for (const run of records) {
        appendText(results, "p", "Saved Tavily search · " + (run.source_urls?.length || 0) + " candidate sources · " + (run.provider_credits_used === 1 ? "1 recorded credit" : "metering unverified"), "library-note");
        if (run.research_summary) appendText(results, "p", run.research_summary, "library-note");
        for (const source of Array.isArray(run.results) ? run.results : []) {
          if (!source || typeof source.url !== "string" || !/^https?:\/\//.test(source.url)) continue;
          const item = document.createElement("div");
          item.className = "user-problem-source-result";
          const link = document.createElement("a");
          link.className = "link";
          link.href = source.url;
          link.target = "_blank";
          link.rel = "noopener noreferrer";
          link.textContent = String(source.title || source.url);
          item.appendChild(link);
          if (typeof source.snippet === "string" && source.snippet.trim()) {
            const excerpt = document.createElement("details");
            appendText(excerpt, "summary", "Show retrieved excerpt");
            appendText(excerpt, "p", source.snippet, "library-note");
            item.appendChild(excerpt);
          }
          results.appendChild(item);
        }
      }
    }

    async function refresh() {
      const view = await readJSON(DRAFT_RESEARCH_API + "?draft_id=" + encodeURIComponent(record.draft_id));
      if (!card.isConnected || selectedDraftId !== record.draft_id) return;
      if (view.schema_version !== "mathcase-draft-research-v1" || view.draft_id !== record.draft_id
        || view.statement_sha256 !== record.statement_sha256 || !Array.isArray(view.records)) {
        throw new Error("Source research returned evidence for a different draft.");
      }
      if (!query.value) query.value = view.suggested_query || "";
      showRecords(view.records);
      if (view.records.length) panelSummary.textContent = "Saved Tavily sources · " + view.records.reduce((count, run) => count + (run.source_urls?.length || 0), 0);
      else if (view.draft_attempt_already_reserved) panelSummary.textContent = "Source search attempted · no saved result";
      const attemptUsed = view.draft_attempt_already_reserved === true;
      queryLabel.hidden = attemptUsed;
      consent.parentElement.hidden = attemptUsed;
      search.hidden = attemptUsed;
      canSearch = view.can_request_fresh_preflight === true;
      query.disabled = !canSearch;
      consent.disabled = !canSearch;
      search.disabled = !canSearch || !consent.checked || pending;
      status.textContent = view.records.length
        ? "Saved source results reopened for this exact draft. They are research leads; no timescale or Lean result was checked."
        : view.draft_attempt_already_reserved
          ? "This draft used its one search attempt. Any failed or uncertain request still counts; the original question is saved."
          : canSearch
            ? "Ready to check free-plan usage on click. Review or edit the exact query, then opt in."
            : "Source search is unavailable until the local Tavily key, free-plan configuration, and shared allowance are ready. The research plan and curated sources above still work.";
    }
    consent.addEventListener("change", () => { search.disabled = !canSearch || !consent.checked || pending; });
    search.addEventListener("click", async () => {
      if (!canSearch || !consent.checked || pending || selectedDraftId !== record.draft_id) return;
      const exactQuery = query.value.trim();
      if (new TextEncoder().encode(exactQuery).length < 5 || new TextEncoder().encode(exactQuery).length > 280) {
        status.textContent = "Enter 5 to 280 bytes of search text before sending.";
        return;
      }
      pending = true;
      search.disabled = true;
      status.textContent = "Checking the free-plan account and the exact draft before sending one search…";
      if (!requestId) requestId = idempotencyKey();
      try {
        const response = await fetch(new URL(DRAFT_RESEARCH_API, window.location.href), {
          method: "POST", cache: "no-store", credentials: "same-origin",
          headers: { "Content-Type": "application/json", Accept: "application/json" },
          body: JSON.stringify({
            schema_version: "mathcase-draft-research-request-v1",
            draft_id: record.draft_id, statement_sha256: record.statement_sha256,
            query: exactQuery, request_id: requestId,
            confirmed_external_search: true, confirmed_one_credit: true,
          }),
        });
        const value = await response.json().catch(() => ({}));
        if (!response.ok) throw new Error(value.message || value.error || "Source search returned HTTP " + response.status);
        if (value.draft_id !== record.draft_id || value.statement_sha256 !== record.statement_sha256
          || value.status !== "COMPLETE" || value.provider_credits_used !== 1) {
          throw new Error("Search returned evidence without a matching draft and one-credit receipt.");
        }
        status.textContent = "Source search saved for this draft. Open the links and check the local geology and uncertainty; no timescale has been verified.";
      } catch (error) {
        status.textContent = String(error?.message || error) + " The saved draft is unchanged.";
      } finally {
        pending = false;
        try { await refresh(); } catch (error) { status.textContent = String(error?.message || error); }
      }
    });
    void refresh().catch((error) => { status.textContent = String(error?.message || error); });
    return panel;
  }

  function renderRouteOptions(select, templates) {
    select.replaceChildren();
    const prompt = document.createElement("option");
    prompt.value = "";
    prompt.textContent = "Choose a current Nebius model route";
    select.appendChild(prompt);
    for (const route of templates) {
      const option = document.createElement("option");
      option.value = route.profile_id;
      option.disabled = route.user_case_template_ready !== true;
      option.textContent = route.display_name + " · " + route.model_id + " · " + priceLabel(route)
        + (route.user_case_template_ready === true ? " · ready" : " · unavailable");
      option.dataset.ready = route.user_case_template_ready === true ? "true" : "false";
      select.appendChild(option);
    }
  }

  function render(records, preparedCases, templates) {
    const list = byId("user-problem-draft-list");
    if (!list) return;
    list.replaceChildren();
    let detail = byId("user-problem-selected-detail");
    if (!detail) {
      detail = document.createElement("section");
      detail.id = "user-problem-selected-detail";
      detail.className = "user-problem-selected-detail";
      // The integrated layout supplies this panel. Keep older hosts usable too.
      if (list.parentNode) list.parentNode.insertBefore(detail, list);
      else list.appendChild(detail);
    }
    detail.replaceChildren();
    const preparedByDraft = new Map(preparedCases.map((item) => [item.draft_id, item]));
    const technicalCount = records.filter((record) => preparedByDraft.get(record.draft_id)?.source_kind === "AGENT_AUTHORED_INTEGRATION_CONTROL").length;
    const technicalList = technicalCount ? document.createElement("details") : null;
    if (technicalList) {
      technicalList.className = "user-problem-technical-list";
      appendText(technicalList, "summary", "Technical examples (" + technicalCount + ")");
      if (preparedByDraft.get(selectedDraftId)?.source_kind === "AGENT_AUTHORED_INTEGRATION_CONTROL") technicalList.open = true;
    }
    if (!records.length) {
      appendText(list, "p", "No local problem drafts are saved on this machine yet.", "library-note");
      appendText(detail, "p", "Save a question to begin. Your draft stays private and does not start a proof request.", "library-note");
      return;
    }
    if (!records.some((record) => record.draft_id === selectedDraftId)) selectDraft(records[records.length - 1].draft_id);
    for (const record of [...records].reverse()) {
      const prepared = preparedByDraft.get(record.draft_id);
      const row = document.createElement("button");
      row.type = "button";
      row.className = "user-problem-draft-choice" + (record.draft_id === selectedDraftId ? " active" : "");
      row.setAttribute?.("aria-pressed", record.draft_id === selectedDraftId ? "true" : "false");
      appendText(row, "strong", record.title);
      appendText(row, "span", prepared ? "Ready to open" : record.lean_statement?.trim() ? "Ready to prepare" : isEmpiricalTimescaleQuestion(record) ? "Research plan available" : "Informal question", "library-note");
      row.addEventListener("click", () => {
        selectDraft(record.draft_id);
        render(records, preparedCases, templates);
        byId("user-problem-selected-title")?.focus?.();
      });
      if (prepared?.source_kind === "AGENT_AUTHORED_INTEGRATION_CONTROL") technicalList.appendChild(row);
      else list.appendChild(row);
    }
    if (technicalList) list.appendChild(technicalList);
    const record = records.find((item) => item.draft_id === selectedDraftId);
    const prepared = preparedByDraft.get(record.draft_id);
      const card = document.createElement("article");
      card.className = "workspace-card user-problem-draft";
      const heading = appendText(card, "h4", record.title);
      heading.id = "user-problem-selected-title";
      heading.tabIndex = -1;
      appendText(card, "p", record.informal_statement);
      const exact = document.createElement("details");
      appendText(exact, "summary", "Exact saved draft");
      if (record.lean_statement) {
        appendText(exact, "p", "Exact Lean statement · local draft; author identity is unverified and meaning review is pending", "library-note");
        appendText(exact, "pre", record.lean_statement, "workspace-code");
      }
      appendText(exact, "small", record.draft_id + " · SHA-256 " + record.statement_sha256, "library-note");
      card.appendChild(exact);

      if (prepared) {
        const sourceLabel = prepared.source_kind === "AGENT_AUTHORED_INTEGRATION_CONTROL"
          ? "agent-authored integration control under task scope; no human review or signature"
          : prepared.source_kind === "OWNER_AUTHORED"
            ? "owner self-attestation recorded; identity unauthenticated and unsigned"
            : "source review status unavailable; do not rely on unverified authorship";
        appendText(card, "p", sourceLabel + " · meaning review pending. No provider request was sent by preparation.", "library-note");
        const link = document.createElement("a");
        link.className = "link";
        link.href = "#case/" + encodeURIComponent(prepared.case_id) + "/understand";
        link.textContent = "Open case";
        card.appendChild(link);
        const route = templates.find((item) => item.profile_id === prepared.profile_id);
        if (route) appendText(card, "p", "Prepared route: " + route.model_id + " · " + priceLabel(route) + " · request requires a separate exact review and Send confirmation.", "library-note");
        detail.appendChild(card);
        return;
      }
      if (!record.lean_statement || !record.lean_statement.trim()) {
        const empiricalTimescale = isEmpiricalTimescaleQuestion(record);
        const geoscience = isGeoscienceQuestion(record);
        appendText(card, "p", "MathCase can help shape this question", "user-problem-guidance-title");
        appendText(card, "p", empiricalTimescale ? "Empirical timescale estimate · needs source-backed definitions and rates" : "Informal question · scope it before checking", "user-problem-guidance-type");
        appendText(card, "p", "Lean checks precise mathematical claims; it does not establish an empirical history or timescale.", "library-note");
        const steps = document.createElement("ol");
        steps.className = "user-problem-research-steps";
        const nextSteps = geoscience
          ? ["Define what observable event “reabsorbed” or “lost” means.", "Identify the rock unit, tectonic setting, and process at the named place.", "Find source-backed geological rates or models, with uncertainty."]
          : empiricalTimescale
            ? ["Define what observation counts as the outcome.", "Identify the process, material, and site or scope.", "Find source-backed rates or models, with uncertainty."]
            : ["Define the terms and conditions in the question.", "Separate the claim you want checked from its examples.", "Identify the source or mathematical facts needed to assess it."];
        for (const step of nextSteps) appendText(steps, "li", step);
        let worksheet = null;
        const makePlan = document.createElement("button");
        makePlan.type = "button";
        makePlan.className = "user-problem-guidance-action";
        makePlan.textContent = "Make a research plan";
        const planArea = document.createElement("div");
        makePlan.addEventListener("click", () => {
          if (!worksheet) worksheet = makeResearchPlanWorksheet(record, planArea);
        });
        card.append(makePlan, planArea);
        makeDraftResearchPanel(record, card);
        const stepsFold = document.createElement("details");
        stepsFold.className = "user-problem-steps-fold";
        appendText(stepsFold, "summary", "How MathCase would investigate");
        stepsFold.appendChild(steps);
        card.appendChild(stepsFold);
        if (geoscience) {
          appendText(card, "p", "A useful starting fact: the mantle is mostly solid rock, and continental lithosphere resists subduction. Those general facts do not give a countdown for a particular place.", "library-note");
          const sources = document.createElement("details");
          appendText(sources, "summary", "Public geology starting sources · curated, not searched for this draft");
          for (const [label, url] of [
            ["USGS · the mantle is mostly solid", "https://www.usgs.gov/faqs/are-tectonic-plates-floating-magma"],
            ["USGS · continental lithosphere and subduction", "https://pubs.usgs.gov/pdf/planet.pdf"],
            ["NC Geological Survey · state geology", "https://www.deq.nc.gov/about/divisions/energy-mineral-and-land-resources/nc-geological-survey/nc-geology-frequently-asked-questions"],
          ]) {
            const link = document.createElement("a");
            link.href = url;
            link.target = "_blank";
            link.rel = "noopener noreferrer";
            link.className = "link";
            link.textContent = label;
            sources.appendChild(link);
          }
          card.appendChild(sources);
        }
        appendText(card, "p", "The plan stays in this browser. The saved question remains unchanged.", "library-note");
        detail.appendChild(card);
        return;
      }

      const review = document.createElement("details");
      review.className = "workspace-card user-problem-review";
      appendText(review, "summary", "Prepare case");
      appendText(review, "p", "Review the exact saved text, source and uses. Preparation saves an unsigned local self-attestation and a bounded request context; it does not run Lean or contact a model. Mathematical meaning review remains pending.", "library-note");
      appendText(review, "pre", record.lean_statement, "workspace-code");
      const select = document.createElement("select");
      select.setAttribute("aria-label", "Nebius model route for this case");
      renderRouteOptions(select, templates);
      review.appendChild(select);
      const consentId = "user-case-review-" + record.draft_id;
      const owner = consentRow(review, consentId + "-owner", "I wrote this exact text or have rights to use it.");
      const local = consentRow(review, consentId + "-local", "I authorize local Lean verification of this exact formal statement.");
      const provider = consentRow(review, consentId + "-provider", "I authorize the exact informal and Lean statements, the automatically assembled pinned Lean context shown in Proof Desk, and proof attempts to the selected Nebius model after a separate Send confirmation.");
      const locked = consentRow(review, consentId + "-locked", "This is not locked evaluation material.");
      appendText(review, "p", "Training and public export are not authorized by this flow.", "library-note");
      const feedback = appendText(review, "p", "Choose a ready model route and confirm all four uses. Review the exact assembled context in the Case Desk before the separate Send action.", "callout");
      const requestDetails = document.createElement("details");
      appendText(requestDetails, "summary", "What enters the request");
      appendText(requestDetails, "p", "The model receives the exact problem description, Lean target, pinned imports and toolchain, plus bounded verifier feedback during retries. No unrelated case text, external research, training data, or locked material is included.", "library-note");
      review.appendChild(requestDetails);
      const button = document.createElement("button");
      button.type = "button";
      button.textContent = "Prepare case";
      button.disabled = true;
      review.appendChild(button);
      const update = () => {
        const selected = select.selectedOptions[0];
        button.disabled = !selected || selected.dataset.ready !== "true" || !owner.checked || !local.checked || !provider.checked || !locked.checked;
        if (!templates.some((item) => item.user_case_template_ready === true)) {
          const reasons = [...new Set(templates.map((item) => item.readiness_reason).filter((reason) => typeof reason === "string" && reason.trim()))];
          const freshnessBlocked = reasons.some((reason) => /older than 24 hours|price snapshot is stale/i.test(reason));
          feedback.textContent = (reasons.length ? reasons.join(" ") : "No Nebius case route is currently configured.")
            + (freshnessBlocked ? " This is a stale-evidence block, not a finding that funds are low." : "")
            + " No case was prepared or provider call made.";
        }
      };
      [select, owner, local, provider, locked].forEach((control) => control.addEventListener("change", update));
      update();
      button.addEventListener("click", async () => {
        const route = templates.find((item) => item.profile_id === select.value && item.user_case_template_ready === true);
        if (!route || button.disabled) return;
        button.disabled = true;
        feedback.textContent = "Saving the exact source review and preparing the bounded route. No solver or provider call is running.";
        const payload = {
          schema_version: "mathcase-user-problem-case-prepare-v1",
          action: "prepare",
          draft_id: record.draft_id,
          statement_sha256: record.statement_sha256,
          profile_id: route.profile_id,
          source_review: {
            source_kind: "OWNER_AUTHORED",
            exact_text_authored_or_rights_cleared: owner.checked,
            local_verification_authorized: local.checked,
            provider_input_authorized: provider.checked,
            locked_evaluation_material_absent: locked.checked,
            training_authorized: false,
            public_export_authorized: false,
          },
          idempotency_key: idempotencyKey(),
        };
        try {
          const response = await fetch(new URL(CASES_API, window.location.href), {
            method: "POST", cache: "no-store", credentials: "same-origin",
            headers: { Accept: "application/json", "Content-Type": "application/json" },
            body: JSON.stringify(payload),
          });
          const value = await response.json().catch(() => ({}));
          if (!response.ok) throw new Error(value.error || "Case preparation returned HTTP " + response.status + ".");
          if (value.schema_version !== "mathcase-user-problem-case-prepare-v1" || !value.case || !value.route
            || value.provider_calls !== 0 || value.proof_attempts !== 0 || value.signature_status !== "NONE") {
            throw new Error("The prepared case receipt did not match its unsigned no-call boundary.");
          }
          window.dispatchEvent(new CustomEvent("mathcase:user-case-prepared", {
            detail: { case_id: value.case.case_id },
          }));
          await loadDrafts("Prepared " + value.case.case_id + ". Preparing this case did not send a provider request. Open it in the Proof Desk to review the exact request.");
        } catch (error) {
          feedback.textContent = String(error && error.message || error) + " The saved draft remains available; no proof attempt was started.";
          button.disabled = false;
        }
      });
      review.appendChild(document.createElement("div"));
      card.appendChild(review);
      detail.appendChild(card);
  }

  async function loadDrafts(successMessage) {
    const status = byId("user-problem-draft-status");
    const save = byId("user-problem-save");
    if (!status || !save) return;
    if (!isLoopbackPreview()) {
      status.textContent = "Open this page through the current local MathCase preview to prepare and reopen a case. No text was sent.";
      save.disabled = true;
      return;
    }
    try {
      const [capabilities, draftStore, caseStore] = await Promise.all([
        readJSON("/api/capabilities"), readJSON(DRAFTS_API), readJSON(CASES_API),
      ]);
      if (capabilities.contract_id !== CONTRACT || !Array.isArray(capabilities.capabilities)
        || CAPABILITIES.some((item) => !capabilities.capabilities.includes(item))) {
        throw new Error("The running preview does not advertise the current user-case prepare route. Restart the Case Desk from this checkout.");
      }
      if (draftStore.schema_version !== "mathcase-user-problem-drafts-v1" || !Array.isArray(draftStore.records)
        || draftStore.record_count !== draftStore.records.length || draftStore.execution_scope?.provider_calls !== 0
        || draftStore.execution_scope?.proof_attempts !== 0) {
        throw new Error("The local draft store returned an unsupported or executable projection.");
      }
      if (caseStore.schema_version !== "mathcase-user-problem-cases-v1" || !Array.isArray(caseStore.records)
        || !Array.isArray(caseStore.templates)) {
        throw new Error("The prepared case store returned an unsupported projection.");
      }
      const records = [];
      for (const record of draftStore.records) records.push(await validateDraft(record));
      render(records, caseStore.records, caseStore.templates);
      status.textContent = successMessage || "Private drafts and prepared cases are reopened locally. Preparation records your explicit review and route; only the separate Proof Desk Send confirmation starts a provider call.";
      save.disabled = false;
    } catch (error) {
      status.textContent = String(error && error.message || error);
      save.disabled = true;
    }
  }

  function init() {
    const form = byId("user-problem-form");
    const status = byId("user-problem-draft-status");
    const save = byId("user-problem-save");
    if (!form || !status || !save) return;
    form.addEventListener("submit", async (event) => {
      event.preventDefault();
      if (save.disabled || !isLoopbackPreview()) return;
      save.disabled = true;
      status.textContent = "Saving the exact text as a local unsigned draft…";
      const payload = {
        schema_version: "mathcase-user-problem-draft-create-v1",
        action: "create",
        title: byId("user-problem-title").value,
        informal_statement: byId("user-problem-informal").value,
        lean_statement: byId("user-problem-lean").value,
        idempotency_key: idempotencyKey(),
      };
      try {
        const response = await fetch(new URL(DRAFTS_API, window.location.href), {
          method: "POST", cache: "no-store", credentials: "same-origin",
          headers: { Accept: "application/json", "Content-Type": "application/json" },
          body: JSON.stringify(payload),
        });
        const value = await response.json().catch(() => ({}));
        if (!response.ok) throw new Error(value.error || "Local draft service returned HTTP " + response.status + ".");
        if (value.schema_version !== "mathcase-user-problem-drafts-v1" || !value.record) {
          throw new Error("The local draft service returned an unsupported save receipt.");
        }
        await validateDraft(value.record);
        selectDraft(value.record.draft_id);
        form.reset();
        await loadDrafts("Saved " + value.record.draft_id + " locally. It is still unsigned and has no solver or provider authorization; review it below to prepare a case.");
      } catch (error) {
        status.textContent = String(error && error.message || error) + " The entered text remains in the form.";
        save.disabled = false;
      }
    });
    void loadDrafts();
  }

  if (document.readyState === "loading") document.addEventListener("DOMContentLoaded", init, { once: true });
  else init();
})();
