/* Reading preferences are presentation only. This module never dispatches work. */
(() => {
  "use strict";
  const $ = id => document.getElementById(id);
  const storage = {
    get(key) { try { return JSON.parse(localStorage.getItem(key)); } catch { return null; } },
    set(key, value) { try { localStorage.setItem(key, JSON.stringify(value)); } catch {} }
  };
  const make = (tag, className, text) => {
    const element = document.createElement(tag);
    if (className) element.className = className;
    if (text !== undefined) element.textContent = text;
    return element;
  };
  const button = (label, action, className = "reading-button") => {
    const element = make("button", className, label);
    element.type = "button";
    element.addEventListener("click", action);
    return element;
  };
  const cleanClone = source => {
    const node = source.cloneNode(true);
    for (const element of [node, ...node.querySelectorAll("[id], [aria-labelledby], [aria-controls]")]) {
      element.removeAttribute("id");
      element.removeAttribute("aria-labelledby");
      element.removeAttribute("aria-controls");
    }
    return node;
  };
  const hash = text => {
    let value = 2166136261;
    for (const char of text) { value ^= char.charCodeAt(0); value = Math.imul(value, 16777619); }
    return (value >>> 0).toString(16);
  };
  /* CASE_READING_STATE_TEST_BEGIN */
  function readingProofPassed(run) {
    return (run?.proof_status ?? run?.status) === "PASSED" && run?.kernel_passed === true && run?.axioms_passed === true;
  }
  function needsAttemptReading(context) {
    return context?.historical_attempt === true || (context?.case_id === "hero-prime-divisibility-r1" && Boolean(context.selected_run) && !readingProofPassed(context.selected_run));
  }
  function readingAttemptOutcome(context) {
    const run = context?.selected_run || {};
    if (readingProofPassed(run)) return { label: "formal proof checked", text: "The selected proposal passed the saved Lean kernel check and configured axiom policy for this exact statement. Other parent proofs and child reuse records remain separate." };
    const recorded = [run.proof_status, run.status, run.execution_status, run.failure_class, run.failure].filter(value => typeof value === "string").join(" ").toUpperCase();
    if (/TIMED?[_ -]?OUT|TIMEOUT|CANCELLED|CANCELED|INTERRUPTED/.test(recorded)) return { label: "proof check unfinished", text: "The saved check did not finish. Any returned candidate remains unverified; this attempt supplies no completed mathematical verdict." };
    if (/REJECTED|INVALID_PROOF|KERNEL_REJECT/.test(recorded)) return { label: "proof rejected", text: "The selected proof candidate was rejected by the saved check. Its exact candidate and diagnostics remain in History; it does not establish the claim." };
    if (typeof run.proof === "string" && run.proof.trim()) return { label: "proof candidate · check not passed", text: "The selected attempt contains a proof candidate, but a passing kernel check and configured axiom audit are not both recorded. Inspect its saved diagnostics before relying on it." };
    if (/NO_PROOF_PROPOSED|NO_CANDIDATE|NO_PROOF_FOUND/.test(recorded)) return { label: "no proof proposed; no Lean verdict", text: "This selected attempt returned no proof candidate. Lean did not check a candidate, so the attempt supplies no mathematical verdict." };
    return { label: "check outcome unavailable", text: "No proof text or passing check is linked to this selected attempt. Open its exact History records for the recorded outcome." };
  }
  function resolveReadingPosition(saved, contentSignature, count, binding, ready) {
    if (!ready) return null;
    const valid = saved?.signature === contentSignature && (!saved.binding || saved.binding === binding);
    const limit = Math.max(0, count - 1);
    const position = valid && Number.isInteger(saved.position) ? Math.min(limit, Math.max(0, saved.position)) : 0;
    const furthest = valid && Number.isInteger(saved.furthest) ? Math.min(limit, Math.max(position, saved.furthest)) : position;
    return { signature: contentSignature, binding, position, furthest, showAll: valid && saved.showAll === true };
  }
  function readingFocusScrollDelta(rect, chromeBottom, viewportHeight) {
    const safeTop = Math.max(0, chromeBottom) + 16;
    if (rect.top >= safeTop && rect.bottom <= viewportHeight - 16) return 0;
    return rect.top - safeTop;
  }
  /* CASE_READING_STATE_TEST_END */
  let currentContext = null;
  let currentTab = "understand";
  let currentKey = "";
  let steps = [];
  let position = 0;
  let furthest = 0;
  let showAll = false;
  let signature = "";
  let currentBinding = "";
  let readingReady = false;
  let pendingReadingText = "";
  let reviewTopic = "statement";
  let reviewBinding = "";
  const savedSurface = storage.get("mathcase.reading.surface");
  let surface = ["paper", "whiteboard", "chalkboard"].includes(savedSurface) ? savedSurface : "whiteboard";
  const inkChoices = [
    { id: "white", label: "Black / white", darkColor: "#f8f8f2", lightColor: "#17232d" },
    { id: "yellow", label: "Yellow / ochre", darkColor: "#ffe16a", lightColor: "#735700" },
    { id: "blue", label: "Blue", markerLabel: "Blue Expo marker", chalkLabel: "Blue chalk", darkColor: "#72d7ff", lightColor: "#0056a8" },
    { id: "coral", label: "Red", markerLabel: "Red Expo marker", chalkLabel: "Red chalk", darkColor: "#ff8b75", lightColor: "#a62020" }
  ];
  let ink = inkChoices.some(choice => choice.id === storage.get("mathcase.reading.ink")) ? storage.get("mathcase.reading.ink") : "white";
  const systemMotion = matchMedia("(prefers-reduced-motion: reduce)");
  let explicitReducedMotion = storage.get("mathcase.reading.motion") === "reduce";
  const reduceMotion = () => explicitReducedMotion || systemMotion.matches;
  const hosts = new Map();

  function originalContainer(pane, label) {
    const details = make("details", "reading-original");
    details.appendChild(make("summary", "", label));
    const body = make("div", "reading-original-body");
    while (pane.firstChild) body.appendChild(pane.firstChild);
    details.appendChild(body);
    pane.appendChild(details);
    return details;
  }
  for (const [tab, label] of [["understand", "Case details & mathematical tools"], ["explain", "Full saved explanation & evidence"]]) {
    const pane = $("pane-" + tab);
    if (!pane) continue;
    const original = originalContainer(pane, label);
    const host = make("section", "case-reading");
    host.id = "case-reading-" + tab;
    host.setAttribute("aria-label", "Mathematical reading surface");
    pane.insertBefore(host, original);
    hosts.set(tab, host);
  }

  const toolbar = make("div", "reading-toolbar");
  const themes = make("div", "reading-surfaces");
  themes.setAttribute("role", "group");
  themes.setAttribute("aria-label", "Reading surface");
  for (const [mode, label] of [["whiteboard", "Whiteboard"], ["chalkboard", "Chalkboard"], ["paper", "Paper"]]) {
    const control = button(label, () => {
      surface = mode;
      storage.set("mathcase.reading.surface", surface);
      paint(false);
    });
    control.dataset.surface = mode;
    themes.appendChild(control);
  }
  const inkPicker = make("div", "reading-ink-picker");
  inkPicker.setAttribute("role", "group");
  inkPicker.setAttribute("aria-label", "Chalkboard chalk and Expo marker colors");
  for (const choice of inkChoices) {
    const control = button(choice.label, () => {
      ink = choice.id;
      storage.set("mathcase.reading.ink", ink);
      paint(false);
    }, "reading-ink-choice");
    control.dataset.ink = choice.id;
    control.title = choice.label + " ink";
    control.setAttribute("aria-label", choice.label + " ink");
    inkPicker.appendChild(control);
  }
  const contextLabel = make("span", "reading-save-label", "Saved work · read at your pace");
  const tools = button("Tools", () => {
    const drawer = $("run-settings-drawer");
    drawer.open = !drawer.open;
    tools.setAttribute("aria-expanded", String(drawer.open));
    if (drawer.open) drawer.querySelector("summary")?.focus();
  });
  tools.setAttribute("aria-controls", "run-settings-drawer");
  tools.setAttribute("aria-expanded", "false");
  toolbar.append(themes, inkPicker, contextLabel, tools);
  document.querySelector(".workspace-tabs")?.insertAdjacentElement("afterend", toolbar);
  const workbenchShell = make("div", "reading-workbench-shell");
  $("workspace-head").before(workbenchShell);
  workbenchShell.append($("workspace-head"), document.querySelector(".workspace-tabs"), toolbar);
  if (window.MathCaseSavedDemo) {
    const intakeCTA = $("workbench-intake-cta");
    if (intakeCTA) intakeCTA.hidden = true;
    const banner = make("section", "saved-demo-banner");
    banner.setAttribute("aria-label", "Saved Case Desk demo");
    const logo = make("img", "saved-demo-logo");
    logo.src = "/assets/mathcase-branding-kit/mathcase-lockup-960.png";
    logo.alt = "MathCase";
    logo.width = 240;
    banner.appendChild(logo);
    banner.appendChild(make("strong", "saved-demo-label", "SAVED EXECUTION"));
    banner.appendChild(make("p", "saved-demo-description", "Explore the Case Desk with preserved proof records. No model or proof checker runs when you open this demo."));
    const cases = make("nav", "saved-demo-cases");
    cases.setAttribute("aria-label", "Three saved mathematical cases");
    for (const [id, label] of [
      ["hero-composite-counterexample-r1", "1 · Counterexample"],
      ["hero-prime-divisibility-r1", "2 · Checked prime lemma"],
      ["hero-sqrt2-parent-reuse-r2", "3 · Build on it: √2"]
    ]) {
      const link = make("a", "saved-demo-case", label);
      link.href = "#case/" + id + "/understand";
      link.dataset.savedCaseId = id;
      cases.appendChild(link);
    }
    banner.appendChild(cases);
    workbenchShell.before(banner);
  }
  const drawer = $("run-settings-drawer");
  if (drawer) {
    $("view-desk").appendChild(drawer);
    drawer.querySelector("summary").textContent = "Model & request tools";
    drawer.addEventListener("toggle", () => tools.setAttribute("aria-expanded", String(drawer.open)));
    const preferences = make("section", "reading-preferences");
    preferences.setAttribute("aria-label", "Reading preferences");
    const motionLabel = make("label", "reading-motion-toggle");
    const motionToggle = make("input", "");
    motionToggle.type = "checkbox";
    motionToggle.checked = explicitReducedMotion;
    motionToggle.setAttribute("aria-describedby", "reading-motion-description");
    motionLabel.append(motionToggle, make("span", "", "Reduce motion"));
    const description = make("p", "", "");
    description.id = "reading-motion-description";
    const applyMotion = () => {
      document.body.dataset.readingMotion = reduceMotion() ? "reduce" : "system";
      description.textContent = systemMotion.matches
        ? "Your system requests reduced motion. Reading transitions are disabled."
        : explicitReducedMotion
          ? "Reading transitions are disabled. This preference changes presentation only."
          : "Uses your system preference unless selected. This changes presentation only.";
    };
    motionToggle.addEventListener("change", () => {
      explicitReducedMotion = motionToggle.checked;
      storage.set("mathcase.reading.motion", explicitReducedMotion ? "reduce" : "system");
      applyMotion();
    });
    systemMotion.addEventListener("change", applyMotion);
    applyMotion();
    preferences.append(motionLabel, description);
    drawer.querySelector("summary").insertAdjacentElement("afterend", preferences);
  }
  const caseSelect = $("case-select-controls");
  if (caseSelect) {
    const chooser = make("details", "reading-case-switcher");
    chooser.appendChild(make("summary", "", "Switch case"));
    $("workspace-head-actions").appendChild(chooser);
    chooser.appendChild(caseSelect);
    const attemptLabel = document.querySelector('label[for="run-select"]');
    if (attemptLabel) {
      const attemptPicker = make("div", "reading-attempt-picker");
      attemptPicker.appendChild(attemptLabel);
      $("pane-attempts").insertBefore(attemptPicker, $("pane-attempts").firstChild);
    }
  }
  const contextInspector = make("details", "workspace-evidence reading-context-inspector");
  contextInspector.appendChild(make("summary", "", "Exact model context & historical input"));
  $("pane-attempts")?.appendChild(contextInspector);
  const heroStory = $("saved-model-assisted-example");
  if (heroStory) contextInspector.appendChild(heroStory);
  const libraryHeader = document.querySelector("#view-library > .library-head");
  if (libraryHeader) {
    libraryHeader.querySelector("h1").textContent = "Your mathematical cases";
    const introduction = libraryHeader.querySelector(":scope > p");
    if (introduction) introduction.textContent = (window.MathCasePublicReadOnly ? "Open a saved question and follow its checked proof history." : "Open a saved question, follow its proof, or start a new problem.");
    const libraryDetails = make("details", "workspace-evidence library-details");
    libraryDetails.appendChild(make("summary", "", "Library details & saved example provenance"));
    for (const id of ["prime-divisibility-hero-entry", "library-counts", "library-updated", "library-source-note"]) {
      const item = $(id);
      if (item) libraryDetails.appendChild(item);
    }
    $("view-library").appendChild(libraryDetails);
    const filters = make("details", "reading-library-filters");
    filters.appendChild(make("summary", "", "Filters"));
    const controls = document.querySelector(".library-controls");
    for (const id of ["library-domain", "library-type", "library-state"]) filters.appendChild($(id).closest("label"));
    controls.appendChild(filters);
    const searchLabel = document.querySelector('label[for="library-search"]');
    if (searchLabel?.firstChild?.nodeType === Node.TEXT_NODE) searchLabel.firstChild.textContent = "Search library";
  }

  function step(title, source, equation) {
    return { title, source, equation: equation || "" };
  }
  function primeFormula() {
    const line = make("div", "reading-equation");
    // The displayed statement is the saved prime-qualified target, not a new claim.
    line.innerHTML = '<math xmlns="http://www.w3.org/1998/Math/MathML" display="block" aria-label="For p prime, if p divides n squared then p divides n"><mrow><mi>p</mi><mspace width="0.25em"/><mtext>prime</mtext><mo>,</mo><mspace width="1em"/><mi>p</mi><mo>∣</mo><msup><mi>n</mi><mn>2</mn></msup><mo>⇒</mo><mi>p</mi><mo>∣</mo><mi>n</mi></mrow></math>';
    return line;
  }
  function exactDivisibilityExample(divisorText, numberText) {
    if (window.MathCaseSavedDemo) return window.MathCaseSavedDemo.divisibilityExample(divisorText, numberText);
    if (!/^(0|[1-9]\d{0,12})$/.test(divisorText) || !/^(0|[1-9]\d{0,12})$/.test(numberText)) throw new Error("Use whole decimal numbers: divisor 1–1,000,000; n 0–1,000,000,000,000.");
    const divisor=BigInt(divisorText), number=BigInt(numberText);
    if(divisor<1n||divisor>1000000n||number>1000000000000n) throw new Error("Use divisor 1–1,000,000 and n 0–1,000,000,000,000.");
    const square=number*number;let prime=divisor>=2n;for(let factor=2n;prime&&factor*factor<=divisor;factor++)if(divisor%factor===0n)prime=false;
    const dividesSquare=square%divisor===0n,dividesNumber=number%divisor===0n;
    return {divisor:String(divisor),number:String(number),square:String(square),prime,divisorKind:prime?"prime":divisor===1n?"neither prime nor composite":"composite",dividesSquare,dividesNumber,counterexample:dividesSquare&&!dividesNumber};
  }
  function checkedCounterexample(record) {
    const body = make("div", "reading-counterexample");
    body.appendChild(make("p", "reading-result-label", "Exact arithmetic check passed"));
    const equation = make("div", "reading-equation");
    equation.innerHTML = '<math xmlns="http://www.w3.org/1998/Math/MathML" display="block" aria-label="At n equals 2, 4 divides 2 squared, but 4 does not divide 2"><mrow><mn>4</mn><mo>∣</mo><msup><mn>2</mn><mn>2</mn></msup><mspace width="1em"/><mtext>but</mtext><mspace width="1em"/><mn>4</mn><mo>∤</mo><mn>2</mn></mrow></math>';
    body.appendChild(equation);
    body.appendChild(make("p", "", "The unrestricted divisor claim fails at n = 2. The saved check divides 4 by 4 with remainder 0, and 2 by 4 with remainder 2."));
    if (record?.receipt_path && /^[a-f0-9]{64}$/.test(record.receipt_sha256 || "")) {
      const receipt = button("Inspect the exact counterexample check", () => {}, "link");
      receipt.dataset.evidenceHref = new URL("../../" + record.receipt_path.replace(/^\//, ""), location.href).href;
      receipt.dataset.evidenceTitle = "Checked n = 2 counterexample · exact arithmetic";
      receipt.dataset.evidenceSha256 = record.receipt_sha256;
      body.appendChild(receipt);
    }
    return body;
  }
  function contentSteps(context, tab) {
    const list = [];
    if (context?.claim_class === "CHECKED_LOCAL_COUNTEREXAMPLE" && context?.counterexample) {
      list.push(step("A condition is missing", checkedCounterexample(context.counterexample), "4 ∣ 2², but 4 ∤ 2"));
      const revised = make("div", "");
      revised.appendChild(make("p", "", "One sufficient repair is to require a prime divisor. The saved case checks that prime-divisibility statement; it does not show that primality is necessary for every valid theorem. Open the saved revision to inspect the rejected and corrected proof attempts."));
      const link = make("a", "link", "Open the prime-qualified case →");
      link.href = "#case/" + encodeURIComponent(context.revised_case_id || "hero-prime-divisibility-r1") + "/understand?entry=story";
      revised.appendChild(link);
      list.push(step("One sufficient repair", revised));
      return list;
    }
    if (context?.claim_class === "COMPILED_PARENT_REUSE") {
      const question = make("div", "reading-question");
      const equation = make("div", "reading-equation");
      equation.innerHTML = '<math xmlns="http://www.w3.org/1998/Math/MathML" display="block" aria-label="The square root of two is not rational"><mrow><msqrt><mn>2</mn></msqrt><mo>∉</mo><mi mathvariant="double-struck">Q</mi></mrow></math>';
      question.append(equation, make("p", "", context.informal_statement));
      list.push(step("The next question", question, "√2 ∉ ℚ"));
      for (const [title, text, equationText] of [
        ["Apply the saved parent at p = 2", "Start with positive integers x and y satisfying x² = 2y². The child imports the exact captured parent module; since 2 is prime and divides x², its checked lemma makes x even, so x = 2k for an integer k.", "x² = 2y² ⇒ x = 2k"],
        ["Both numbers are even", "Substitution and cancellation give y² = 2k², so the same parent lemma at p = 2 makes y even. Write y = 2ℓ; positivity of x and y gives positive k and ℓ.", "y² = 2k² ⇒ y = 2ℓ"],
        ["Descend to a smaller pair", "Substitution gives k² = 2ℓ². Since x = 2k with x positive, k is positive and k < x. So (k,ℓ) is a smaller positive integer pair satisfying the same equation, contradicting strong induction on x. No coprimality assumption is needed. The compiled child then connects this integer result to real irrationality.", "k² = 2ℓ²"]
      ]) {
        const body = make("div", "reading-explanation");
        body.appendChild(make("span", "reading-draft", "Explanation draft"));
        body.appendChild(make("p", "reading-large-equation", equationText));
        body.appendChild(make("p", "", text));
        list.push(step(title, body, equationText));
      }
      const saved = make("div", "reading-result");
      saved.appendChild(make("p", "reading-result-label", "Saved Lean compilation · parent reuse"));
      saved.appendChild(make("p", "", "The saved child compilation imports and applies the recorded parent declaration. Opening this case does not run Lean again."));
      saved.appendChild(make("p", "reading-boundary", "The child has a saved compilation record; a standard M4 child receipt and independent meaning review are not recorded."));
      list.push(step("What the saved check establishes", saved));
      return list;
    }
    const statement = $("workspace-statement");
    if (tab === "understand") {
      const question = make("div", "reading-question");
      if (context?.case_id === "hero-prime-divisibility-r1" && String(context.lean_statement).includes("p.Prime")) {
        question.appendChild(primeFormula());
        question.appendChild(make("p", "", statement.textContent));
      } else if (context?.problem_id === "tutte-perfect-matching" || context?.case_id === "tutte-perfect-matching") {
        const scope = context.formalization_scope || {};
        const fallbackQuestion = String(context.informal_statement || "");
        const pinned = String(scope.pinned_informal_statement || context.pinned_informal_statement ||
          (/^Replacement placeholder:/i.test(fallbackQuestion) ? "The pinned local question is unavailable." : fallbackQuestion) ||
          "The pinned local question is unavailable.");
        const pinnedCopy = make("p", "reading-board-ink", pinned);
        explainTutteViolator(pinnedCopy);
        question.append(make("span", "reading-kicker", "Pinned local question"), pinnedCopy);
        question.appendChild(make("h3", "reading-plain-language-title", "In everyday language"));
        const plainSteps = make("ol", "reading-plain-language-steps");
        for (const text of [
          "A perfect matching pairs every vertex with exactly one neighbor.",
          "Choose a set S of vertices, remove it, and count the odd-sized connected pieces that remain.",
          "A Tutte violator is a set S that leaves more odd-sized pieces than vertices in S. The theorem says a perfect matching exists exactly when no such set exists."
        ]) {
          const item = make("li", "");
          item.appendChild(make("p", "", text));
          plainSteps.appendChild(item);
        }
        question.appendChild(plainSteps);
        const formalScope = make("details", "reading-formal-scope");
        formalScope.appendChild(make("summary", "", "Show the exact Lean statement"));
        const scopeBody = make("div", "reading-formal-scope-body");
        scopeBody.appendChild(make("p", "", "The saved proof check applies only to this formal statement. Independent review of its meaning is still pending."));
        if (context.lean_statement) {
          scopeBody.appendChild(make("pre", "workspace-code", context.lean_statement));
        }
        formalScope.appendChild(scopeBody);
        question.appendChild(formalScope);
      } else {
        const copy = cleanClone(statement);
        question.appendChild(copy);
      }
      list.push(step("The question", question, context?.case_id === "hero-prime-divisibility-r1" ? "p ∣ n² ⇒ p ∣ n" : ""));
      const result = make("div", "reading-result");
      const run = context?.selected_run;
      const passed = (run?.proof_status ?? run?.status) === "PASSED" && run?.kernel_passed === true && run?.axioms_passed === true;
      const localCheck = run?.lean_status === "LOCAL_CHECK_PASSED_NOT_REOPENED" && run?.kernel_passed === true;
      const label = passed ? "Formal proof checked" : localCheck ? "One local kernel check passed · follow-up pending" : run ? "Selected attempt · inspect the saved result" : "Open question · no proof selected";
      result.appendChild(make("p", "reading-result-label", label));
      if (needsAttemptReading(context)) result.appendChild(make("p", "", readingAttemptOutcome(context).text));
      else if (localCheck) result.appendChild(make("p", "", "Lean accepted this proof candidate once for the exact statement above. It has not been reopened through the standard route, and the configured axiom audit has not run."));
      else if (passed && /^user-/.test(context.case_id || "")) result.appendChild(make("p", "", "The selected saved proof passed Lean's kernel check and configured axiom policy for this exact statement. Independent statement and explanation review remain separate."));
      else result.appendChild(cleanClone($("workspace-established")));
      list.push(step("The saved result", result));
    }
    if (needsAttemptReading(context)) {
      const attempt = make("div", "reading-result");
      attempt.appendChild(make("p", "reading-result-label", (context.historical_attempt ? "Historical attempt · " : "Selected attempt · ") + readingAttemptOutcome(context).label));
      if (context.selected_run?.proof?.trim()) {
        attempt.appendChild(make("p", "", "The exact selected proof candidate is available below. No explanation or child reuse is attached to this historical attempt."));
        const formal = make("details", "workspace-evidence");
        formal.appendChild(make("summary", "", "Formal proof · selected candidate"));
        formal.appendChild(make("pre", "workspace-code", context.selected_run.proof));
        attempt.appendChild(formal);
      } else attempt.appendChild(make("p", "", readingAttemptOutcome(context).text));
      list.push(step("The selected attempt", attempt));
      return list;
    }
    if (context?.case_id === "hero-prime-divisibility-r1" && String(context.lean_statement).includes("p.Prime")) {
      if (context.checked_counterexample?.status === "COUNTEREXAMPLE_CHECKED") list.push(step("The unrestricted claim fails", checkedCounterexample(context.checked_counterexample), "4 ∣ 2², but 4 ∤ 2"));
      for (const [title, text, equation] of [
        ["Write the square as a product", "The square n² is n multiplied by itself. Thus the hypothesis says the prime p divides n · n.", "n² = n · n"],
        ["Use prime divisibility", "A prime that divides a product divides one of its factors. Apply that property to n · n.", "p ∣ n · n ⇒ p ∣ n ∨ p ∣ n"],
        ["Both factors give the same result", "Whichever factor is selected, it is n. Therefore p divides n. The formal proof is checked separately; this reading explanation is a draft.", "p ∣ n"]
      ]) {
        const body = make("div", "reading-explanation");
        body.appendChild(make("span", "reading-draft", "Explanation draft"));
        body.appendChild(make("p", "reading-large-equation", equation));
        body.appendChild(make("p", "", text));
        list.push(step(title, body, equation));
      }
    }
    const proof = $("workspace-explain-content");
    const explanationSteps = [...proof.querySelectorAll(".explanation-reading-guide > ol > li")];
    if (context?.case_id === "hero-prime-divisibility-r1") {
      // The parent reading above is authored for this exact statement; child descent text stays with the child.
    } else if (explanationSteps.length) {
      explanationSteps.forEach((item, index) => {
        const body = make("div", "reading-explanation");
        body.appendChild(make("span", "reading-draft", "Explanation draft"));
        const paragraph = make("p", "");
        for (const child of [...item.childNodes]) paragraph.appendChild(child.cloneNode(true));
        body.appendChild(paragraph);
        list.push(step(index === 0 ? "The useful lemma" : index === 1 ? "Apply the lemma" : "The descent", body));
      });
    } else {
      const sections = [...proof.querySelectorAll(".m7-draft-guide > section, .m7-draft-guide > div")].slice(0, 8);
      if (sections.length) sections.forEach((section, index) => list.push(step(section.querySelector("h3,h4,h5")?.textContent || "Explanation " + (index + 1), cleanClone(section))));
      else {
        const article = proof.querySelector(".ai-card");
        if (article) {
          const paragraphs = [...article.querySelectorAll(":scope > p:not(.caveat):not(.library-note)")];
          for (const [index, paragraph] of paragraphs.entries()) {
            if (!paragraph.textContent.trim()) continue;
            const body = make("div", "reading-explanation");
            body.appendChild(make("span", "reading-draft", "Explanation draft"));
            body.appendChild(cleanClone(paragraph));
            list.push(step(paragraphs.length > 1 ? "Why · " + (index + 1) : "Why it works", body));
          }
        }
      }
    }
    if (tab === "explain" && context?.problem_id === "tutte-perfect-matching" && context.selected_run?.proof?.trim()) {
      const body = make("div", "reading-explanation");
      body.appendChild(make("p", "reading-boundary", "Exact saved proof candidate. Its local kernel check passed once; standard reopening and the configured axiom audit are still pending."));
      const formal = make("details", "workspace-evidence");
      formal.appendChild(make("summary", "", "Open the exact Lean proof candidate"));
      formal.appendChild(make("pre", "workspace-code", context.selected_run.proof));
      body.appendChild(formal);
      list.push(step("Exact proof candidate", body));
    }
    if (tab === "explain" && !list.length) {
      const body = make("div", "");
      const savedProof = typeof context?.selected_run?.proof === "string" ? context.selected_run.proof.trim() : "";
      if (savedProof) {
        body.appendChild(make("p", "", "The formal proof below is the exact proof input attached to this saved run. Its Lean check and axiom-audit result are recorded separately in History."));
        const formal = make("details", "workspace-evidence");
        formal.appendChild(make("summary", "", "Exact saved Lean proof"));
        formal.appendChild(make("pre", "workspace-code", savedProof));
        if (context.selected_run.proof_sha256) formal.appendChild(make("p", "", "Proof SHA-256 " + context.selected_run.proof_sha256));
        body.appendChild(formal);
        body.appendChild(make("p", "reading-boundary", "No separate plain-language explanation is linked to this record."));
        list.push(step("The formal proof", body));
      } else {
        body.appendChild(make("p", "", "No step-by-step explanation or saved formal proof is linked to this record. Open History and Sources to inspect the exact available evidence."));
        list.push(step("Explanation unavailable", body));
      }
    }
    // The reuse link comes from the existing case-specific source renderer.
    const reuse = [...document.querySelectorAll('#workspace-sources-content a[href*="#case/"], #workspace-explain-content a[href*="#case/"], #workspace-sources-content a[href*="case="]')].filter(link => !link.getAttribute("href").includes("/" + context?.case_id + "/"));
    if (context.child_reuse?.case_id && context.child_reuse?.run_id) {
      const child = make("a", "link", "Use the checked lemma in the √2 case →");
      child.href = "#case/" + encodeURIComponent(context.child_reuse.case_id) + "/" + encodeURIComponent(context.child_reuse.run_id) + "/understand?entry=story";
      reuse.unshift(child);
    }
    if (reuse.length) {
      const body = make("div", "reading-reuse");
      body.appendChild(make("p", "", "Carry this saved result into its linked case."));
      reuse.slice(0, 3).forEach(link => body.appendChild(cleanClone(link)));
      list.push(step("Use this result", body));
    }
    return list;
  }

  function explainTutteViolator(root) {
    const walker = document.createTreeWalker(root, NodeFilter.SHOW_TEXT);
    const textNodes = [];
    while (walker.nextNode()) textNodes.push(walker.currentNode);
    for (const textNode of textNodes) {
      const match = textNode.nodeValue.match(/Tutte violator/i);
      if (!match) continue;
      const fragment = document.createDocumentFragment();
      fragment.append(document.createTextNode(textNode.nodeValue.slice(0, match.index)));
      const detail = make("details", "reading-term-help");
      const summary = make("summary", "", match[0]);
      summary.setAttribute("aria-label", "Short explanation: Tutte violator");
      detail.appendChild(summary);
      const explanation = make("div", "reading-term-explanation");
      explanation.appendChild(make("strong", "", "Short explanation"));
      explanation.appendChild(make("p", "", "A set S is a Tutte violator when removing S leaves more odd-sized connected components than S has vertices. A perfect matching would need a different vertex of S to pair with each odd component, so there are too many odd components for S to cover."));
      explanation.appendChild(make("p", "reading-boundary", "This is a plain-language guide. The saved formal target and its proof-check records are unchanged."));
      detail.appendChild(explanation);
      fragment.append(detail, document.createTextNode(textNode.nodeValue.slice(match.index + match[0].length)));
      textNode.replaceWith(fragment);
    }
  }

  function compactHistory() {
    const runs = $("workspace-run-list");
    if (runs && !runs.closest(".reading-saved-runs")) {
      const details = make("details", "workspace-evidence reading-saved-runs");
      details.appendChild(make("summary", "", "All saved run records & exact formal proof"));
      runs.before(details);
      details.appendChild(runs);
    }
    const history = $("workspace-attempts-content");
    for (const row of history?.querySelectorAll(".attempt-event, .workspace-card") || []) {
      if (row.dataset.readingHistory === "true") continue;
      row.dataset.readingHistory = "true";
      const details = row.querySelector("details");
      const cause = details ? [...details.querySelectorAll("p")].find(item => /timeout|rejected|failure|failed|error|no.proof/i.test(item.textContent)) : null;
      const exactPrimeAttempt = row.dataset.runId === "proofdesk-ui-hero-prime-divisibility-r1-20261028T152753Z-8d06f9d0e04b"
        && row.dataset.attemptId === "lean-ddfc54f448b3f8237561ccad22c4496d"
        && row.querySelector("h3")?.textContent.trim() === "S0 · REJECTED"
        && row.textContent.includes("KERNEL_REJECTED");
      const causeText = exactPrimeAttempt
        ? "Lean expected a primality proof; this candidate supplied only the divisibility hypothesis."
        : cause?.textContent;
      if (causeText) {
        const summary = make("p", "reading-history-cause", causeText.length > 190 ? causeText.slice(0, 187) + "…" : causeText);
        row.insertBefore(summary, details);
      }
      const text = row.querySelector("h3")?.textContent || "";
      if (/rejected|timeout|failed|no proof|no candidate|unavailable/i.test(text)) row.classList.add("reading-history-failed");
      for (const small of row.querySelectorAll(":scope > small")) if (details) details.appendChild(small);
      if (details && !details.dataset.readingExclusive) {
        details.dataset.readingExclusive = "true";
        details.addEventListener("toggle", () => {
          if (details.open) for (const other of history.querySelectorAll(".attempt-event > details[open], .workspace-card > details[open]")) if (other !== details) other.open = false;
        });
      }
    }
  }

  function persist() {
    if (!currentKey || !readingReady) return;
    storage.set(currentKey, { signature, binding: currentBinding, position, furthest, showAll });
  }
  function go(index) {
    position = Math.max(0, Math.min(steps.length - 1, index));
    furthest = Math.max(furthest, position);
    showAll = false;
    persist();
    paint(true);
  }
  function inspectSelectedFormalProof() {
    $("tab-attempts").click();
    const runID = currentContext?.selected_run?.run_id;
    const cards = [...($("workspace-run-list")?.querySelectorAll(":scope > .workspace-card") || [])];
    const selected = runID ? cards.find(card => card.textContent.includes(runID)) : null;
    const exact = selected?.querySelector("pre.workspace-code, pre");
    if (!exact) {
      const host = $("workspace-attempts-content");
      let unavailable = $("reading-formal-proof-unavailable");
      if (!unavailable) { unavailable = make("p", "workspace-boundary"); unavailable.id = "reading-formal-proof-unavailable"; host.prepend(unavailable); }
      unavailable.textContent = "The selected run's exact proof did not reopen in this History view. Inspect its saved receipt; no other run's proof is substituted.";
      unavailable.setAttribute("tabindex", "-1");
      unavailable.focus({ preventScroll: true });
      unavailable.scrollIntoView({ block: "center" });
      return;
    }
    for (let ancestor = exact.parentElement; ancestor && ancestor.id !== "pane-attempts"; ancestor = ancestor.parentElement) if (ancestor.tagName === "DETAILS") ancestor.open = true;
    exact.setAttribute("tabindex", "-1");
    exact.setAttribute("aria-label", "Exact formal proof for the selected saved run");
    // Run after the shared tab's saved-scroll restoration so this deliberate jump wins.
    requestAnimationFrame(() => requestAnimationFrame(() => {
      if (currentContext?.selected_run?.run_id !== runID || $("pane-attempts").hidden) return;
      exact.focus({ preventScroll: true });
      exact.scrollIntoView({ block: "center" });
    }));
  }
  const savedExamples = new Map();
  function savedExample(caseID) {
    if (!["hero-prime-divisibility-r1", "hero-composite-counterexample-r1"].includes(caseID)) return null;
    const saved = savedExamples.get(caseID) || { divisor: caseID === "hero-composite-counterexample-r1" ? "4" : "2", number: "2", open: false };
    savedExamples.set(caseID, saved);
    const fold = make("details", "reading-example");
    fold.open = saved.open;
    fold.appendChild(make("summary", "", "Test a value"));
    const fields = make("div", "reading-example-fields saved-demo-example-fields");
    const inputs = {};
    for (const [name, label, maxLength] of [["divisor", "Divisor d", 7], ["number", "Number n", 13]]) {
      const field = make("label", "", label);
      const input = make("input", "");
      input.type = "text"; input.inputMode = "numeric"; input.maxLength = maxLength;
      input.value = saved[name]; input.dataset.localExample = name;
      input.addEventListener("input", () => { saved[name] = input.value; result.textContent = "Values changed — check this example."; });
      field.appendChild(input); fields.appendChild(field); inputs[name] = input;
    }
    const result = make("output", "saved-demo-example-result");
    result.setAttribute("aria-live", "polite");
    const calculate = () => {
      try {
        const value = exactDivisibilityExample(inputs.divisor.value.trim(), inputs.number.value.trim());
        const squareRelation = value.dividesSquare ? "divides" : "does not divide";
        const numberRelation = value.dividesNumber ? "divides" : "does not divide";
        result.textContent = `${value.divisor} is ${value.divisorKind}. ${value.number}² = ${value.square}. ${value.divisor} ${squareRelation} ${value.square}; ${value.divisor} ${numberRelation} ${value.number}. ` +
          (value.counterexample ? "This is a counterexample to the unrestricted divisor claim." : !value.dividesSquare ? "The premise is false for this value; it does not test the implication." : "This example satisfies the implication; it does not prove the universal claim.");
      } catch (error) { result.textContent = error.message; }
    };
    fields.appendChild(button("Check example", calculate));
    fields.addEventListener("keydown", event => { if (event.key === "Enter") { event.preventDefault(); calculate(); } });
    fold.addEventListener("toggle", () => { saved.open = fold.open; });
    fold.append(fields, result, make("p", "saved-demo-example-note", "Exact local arithmetic. A counterexample refutes a universal claim; a passing example does not prove it. Saved records stay unchanged."));
    calculate();
    return fold;
  }
  function paint(moveFocus) {
    document.body.dataset.readingSurface = surface;
    document.body.dataset.readingInk = ink;
    for (const control of themes.querySelectorAll("button")) control.setAttribute("aria-pressed", String(control.dataset.surface === surface));
    inkPicker.hidden = surface === "paper";
    inkPicker.setAttribute("aria-label", surface === "whiteboard" ? "Whiteboard marker color" : "Chalkboard chalk and Expo marker colors");
    for (const control of inkPicker.querySelectorAll("button")) {
      const choice = inkChoices.find(item => item.id === control.dataset.ink);
      control.setAttribute("aria-pressed", String(control.dataset.ink === ink));
      control.style.setProperty("--ink-swatch", surface === "whiteboard" ? choice.lightColor : choice.darkColor);
      const expoMarker = choice.id === "blue" || choice.id === "coral";
      const label = surface === "whiteboard" || expoMarker ? (choice.markerLabel || choice.label + " marker") : (choice.chalkLabel || choice.label + " chalk");
      control.title = label;
      control.setAttribute("aria-label", label);
    }
    for (const [tab, host] of hosts) host.hidden = tab !== currentTab || !currentContext;
    toolbar.hidden = !hosts.has(currentTab) || !currentContext;
    const host = hosts.get(currentTab);
    if (!host || !currentContext) return;
    if (!readingReady) {
      host.replaceChildren();
      const paper = make("section", "reading-paper");
      paper.appendChild(make("h2", "reading-focus-title", "Opening saved mathematics"));
      paper.appendChild(make("p", "", pendingReadingText));
      paper.appendChild(make("p", "reading-boundary", "Your saved reading position is preserved until the bound content reopens."));
      host.appendChild(paper);
      return;
    }
    if (!steps.length) return;
    host.replaceChildren();
    const layout = make("div", "reading-layout");
    const notes = make("aside", "reading-notes");
    notes.hidden = furthest === 0;
    layout.classList.toggle("reading-no-notes", furthest === 0);
    notes.setAttribute("aria-label", "Previous work");
    notes.appendChild(make("h2", "", "Previous work"));
    const ordered = make("ol", "reading-note-list");
    for (let index = 0; index < furthest; index++) {
      if (!steps[index]) continue;
      const item = make("li", "");
      const note = button("", () => go(index), "reading-note");
      note.setAttribute("aria-label", "Revisit step " + (index + 1) + ": " + steps[index].title);
      if (index === position) note.setAttribute("aria-current", "step");
      note.appendChild(make("span", "reading-note-number", String(index + 1).padStart(2, "0")));
      note.appendChild(make("strong", "", steps[index].title));
      if (steps[index].equation) note.appendChild(make("span", "reading-note-equation", steps[index].equation));
      item.appendChild(note);
      ordered.appendChild(item);
    }
    notes.appendChild(ordered);
    const paper = make("div", "reading-paper");
    const example = currentTab === "understand" ? savedExample(currentContext.case_id) : null;
    if (example) paper.appendChild(example);
    const heading = make("h2", "reading-focus-title", showAll ? "The complete reading" : steps[position].title);
    heading.tabIndex = -1;
    heading.id = "reading-active-heading";
    heading.setAttribute("aria-label", showAll ? "The complete reading" : steps[position].title + ", step " + (position + 1) + " of " + steps.length);
    paper.appendChild(make("span", "reading-kicker", showAll ? "All saved reading steps" : "Step " + (position + 1) + " / " + steps.length));
    const selectedRun = currentContext.selected_run;
    const checked = (selectedRun?.proof_status ?? selectedRun?.status) === "PASSED" && selectedRun?.kernel_passed === true && selectedRun?.axioms_passed === true;
    const hasExplanationDraft = currentTab === "explain" && steps.some(item => item.source.querySelector(".reading-draft"));
    if (currentContext.claim_class === "CHECKED_LOCAL_COUNTEREXAMPLE") paper.appendChild(make("span", "reading-check-label", "Checked counterexample · arithmetic"));
    else if (currentContext.claim_class === "COMPILED_PARENT_REUSE") paper.appendChild(make("span", "reading-check-label", "Saved Lean compilation · parent reuse"));
    else if (checked) paper.appendChild(make("span", "reading-check-label", "Lean check passed for the linked formal claim"));
    paper.appendChild(heading);
    if (hasExplanationDraft) {
      const explanationBoundary = currentContext.claim_class === "COMPILED_PARENT_REUSE"
        ? "Saved child integration compilation passed with exact parent reuse; no separate standard M4 child receipt or meaning review is linked."
        : checked
          ? (window.MathCasePublicReadOnly ? "Formal claim checked in Lean · authored reading guide; independent exposition review pending." : "Formal claim checked in Lean · explanation is a reviewable draft.")
          : "Explanation is a reviewable draft · no passing Lean check is linked to this selected run.";
      paper.appendChild(make("p", "reading-boundary", explanationBoundary));
    }
    if (showAll) {
      const all = make("ol", "reading-all");
      steps.forEach(item => {
        const li = make("li", "");
        li.appendChild(make("h3", "", item.title));
        li.appendChild(cleanClone(item.source));
        all.appendChild(li);
      });
      paper.appendChild(all);
    } else paper.appendChild(cleanClone(steps[position].source));
    const controls = make("nav", "reading-controls");
    controls.setAttribute("aria-label", "Reading progression");
    const previous = button("← Previous step", () => go(position - 1));
    previous.disabled = position === 0;
    const next = button("Next step →", () => go(position + 1), "reading-button reading-next");
    next.disabled = position === steps.length - 1;
    const all = button(showAll ? "Return to latest viewed step" : "Show all steps", () => { showAll = !showAll; persist(); paint(true); });
    controls.append(previous, next, all);
    paper.appendChild(controls);
    paper.appendChild(make("p", "reading-boundary", "Reading changes only. The saved proof and check status stay the same."));
    layout.append(notes, paper);
    host.appendChild(layout);
    const nextActions = make("div", "reading-next-actions");
    const isTutteCase = currentContext?.problem_id === "tutte-perfect-matching" || currentContext?.case_id === "tutte-perfect-matching";
    const hasSavedProof = Boolean(currentContext?.selected_run?.proof?.trim());
    const proofButtonLabel = isTutteCase
      ? currentTab === "understand" ? "Read the explanation draft" : currentTab === "explain" ? hasSavedProof ? "Inspect Lean proof" : "Open saved proof history" : "Inspect the saved proof candidate"
      : currentTab === "understand" ? "Read the explanation" : currentTab === "explain" ? hasSavedProof ? "Inspect Lean proof" : "Open History" : "Inspect formal proof";
    const proofButton = button(proofButtonLabel, () => {
      if (currentTab === "understand") $("tab-explain").click();
      else inspectSelectedFormalProof();
    });
    nextActions.appendChild(proofButton);
    if (isTutteCase && currentTab === "understand" && currentContext.selected_run?.proof?.trim()) {
      nextActions.appendChild(button("Inspect proof candidate", () => inspectSelectedFormalProof(), "reading-button"));
    }
    const linked = needsAttemptReading(currentContext) ? null : currentContext.child_reuse || currentContext.parent_reuse;
    if (linked?.case_id && linked?.run_id) {
      const link = make("a", "reading-button", currentContext.child_reuse ? "Use this lemma in √2 →" : "← Open the checked parent lemma");
      link.href = "#case/" + encodeURIComponent(linked.case_id) + "/" + encodeURIComponent(linked.run_id) + "/understand";
      nextActions.appendChild(link);
    }
    host.appendChild(nextActions);
    if (moveFocus) {
      heading.focus({ preventScroll: true });
      const revealHeading = () => {
        if (!heading.isConnected || document.activeElement !== heading) return;
        const chromeBottom = workbenchShell.getBoundingClientRect().bottom;
        heading.style.scrollMarginTop = Math.max(0, chromeBottom) + 16 + "px";
        const delta = readingFocusScrollDelta(heading.getBoundingClientRect(), chromeBottom, window.innerHeight);
        if (Math.abs(delta) > 1) window.scrollBy({ top: delta, behavior: "instant" });
      };
      // Layout can move when a long step folds away. Measure after that layout and
      // once more after the sticky shell settles, rather than relying on fixed offsets.
      requestAnimationFrame(() => { revealHeading(); requestAnimationFrame(revealHeading); });
      if (!reduceMotion()) paper.classList.add("reading-arrive");
    }
  }
  function boundReadingContentReady(context) {
    if (!context) return false;
    if (needsAttemptReading(context) || context.case_id === "hero-prime-divisibility-r1" || ["CHECKED_LOCAL_COUNTEREXAMPLE", "COMPILED_PARENT_REUSE"].includes(context.claim_class)) return true;
    const source = $("workspace-explain-content");
    const content = source.querySelector(".ai-card, .m7-draft-guide, .proof-chunk-card, .local-math-tier");
    const loading = source.querySelector('#two-congruence-proof-loading, [data-reading-content-state="loading"]') || /^(?:AUTHOR DRAFT.*)?\s*(?:Reopening|Loading|Checking saved)/i.test(source.textContent.trim());
    if (loading && !content) return false;
    // A promised bound explanation must finish reopening before a fallback can replace its saved position.
    if (context.expositor && !content) return false;
    return true;
  }
  function renderReviewComparison(context) {
    const pane = $("pane-review");
    let comparison = $("reading-review-comparison");
    if (!comparison) {
      comparison = make("section", "reading-review-comparison");
      comparison.id = "reading-review-comparison";
      pane.querySelector("h2").insertAdjacentElement("afterend", comparison);
    }
    comparison.hidden = !context;
    const existing = $("workspace-review-content");
    if (!context) { existing.hidden = false; return; }
    const binding = [context.case_id, context.case_revision_sha256, context.selected_run?.run_id].join(":");
    if (binding !== reviewBinding) { reviewTopic = "statement"; reviewBinding = binding; }
    comparison.replaceChildren();
    const topics = make("div", "reading-review-topics");
    topics.setAttribute("role", "group");
    topics.setAttribute("aria-label", "Review topic");
    for (const [key, label] of [["statement", "Statement"], ["explanation", "Explanation"], ["notes", "Notes"]]) {
      const topic = button(label, () => { reviewTopic = key; renderReviewComparison(context); });
      topic.setAttribute("aria-pressed", String(reviewTopic === key));
      topics.appendChild(topic);
    }
    comparison.appendChild(topics);
    if (reviewTopic === "statement") {
      const isTutte = context?.problem_id === "tutte-perfect-matching" || context?.case_id === "tutte-perfect-matching";
      comparison.appendChild(make("p", "reading-review-boundary", isTutte
        ? "This saved check covers the formal target, while its meaning is still waiting for independent review. Reading this comparison records no decision."
        : "Compare the saved wording and formal target. This read-only view records no review decision."));
      if (isTutte) {
        const pinnedWording = context.formalization_scope?.pinned_informal_statement || context.pinned_informal_statement || "A finite graph has a perfect matching exactly when it has no Tutte violator.";
        comparison.appendChild(make("h3", "", "The question in plain language"));
        comparison.appendChild(make("p", "", pinnedWording));
        const guide = make("p", "", "A perfect matching pairs each vertex once. Remove a set S of vertices and count the odd-sized connected components left behind.");
        const definition = make("p", "", "A Tutte violator is a set S whose removal leaves more odd components than vertices in S.");
        explainTutteViolator(definition);
        comparison.append(guide, definition);
        const formal = make("details", "reading-formal-scope");
        formal.appendChild(make("summary", "", "Show the exact Lean statement"));
        formal.appendChild(make("pre", "workspace-code", context.lean_statement || "No formal target is linked to this record."));
        comparison.appendChild(formal);
      } else {
        const columns = make("div", "reading-review-columns");
        const informal = make("section", "");
        const pinnedWording = context.formalization_scope?.pinned_informal_statement;
        informal.append(make("h3", "", pinnedWording ? "Pinned local question" : "In words"), make("p", "", pinnedWording || context.informal_statement || context.question || context.problem?.statement || "No informal wording is linked to this record."));
        const formal = make("section", "");
        formal.append(make("h3", "", "Formal target · Lean"), make("pre", "workspace-code", context.lean_statement || "No formal target is linked to this record."));
        columns.append(informal, formal);
        comparison.appendChild(columns);
      }
      const proof = make("details", "workspace-evidence");
      proof.appendChild(make("summary", "", isTutte ? "Exact saved proof candidate" : "Selected proof"));
      proof.appendChild(context.selected_run?.proof?.trim() ? make("pre", "workspace-code", context.selected_run.proof) : make("p", "", context.selected_run ? readingAttemptOutcome(context).text : "No proof attempt is selected."));
      comparison.appendChild(proof);
      comparison.appendChild(button("Open sources", () => $("tab-sources").click()));
    } else if (reviewTopic === "explanation") {
      comparison.appendChild(make("h3", "", "Explanation review"));
      comparison.appendChild(make("p", "", context.expositor ? "The attached explanation remains a draft unless a separate accepted review is linked. Compare it with this statement and selected proof before recording feedback." : "No explanation is attached to this selected attempt. No explanation review is recorded by this view."));
      comparison.appendChild(button("Read the explanation", () => $("tab-explain").click()));
    } else {
      comparison.appendChild(make("p", "reading-review-boundary", "Notes use the existing saved-review binding. If that target is unavailable, notes stay disabled; this comparison creates no signer or review acceptance."));
    }
    existing.hidden = reviewTopic !== "notes";
  }
  function render(context, tab) {
    {
      let tags = $("saved-demo-subject-tags");
      if (!tags) {
        tags = make("span", "subject-tags"); tags.id = "saved-demo-subject-tags";
        $("workspace-head-actions").appendChild(tags);
      }
      const subject = ({
        "hero-composite-counterexample-r1": "Number theory · Divisibility",
        "hero-prime-divisibility-r1": "Number theory · Prime divisibility",
        "hero-sqrt2-parent-reuse-r2": "Number theory · Infinite descent / Irrationality"
      })[context?.case_id] || (Array.isArray(context?.domain_tags) ? context.domain_tags.join(" · ") : "");
      tags.replaceChildren(...subject.split(" · ").filter(Boolean).map(label => make("span", "subject-tag", label)));
      for (const link of document.querySelectorAll("[data-saved-case-id]")) {
        if (link.dataset.savedCaseId === context?.case_id) link.setAttribute("aria-current", "page");
        else link.removeAttribute("aria-current");
      }
    }
    currentContext = context;
    currentTab = tab;
    compactHistory();
    if (context?.case_id === "hero-prime-divisibility-r1") {
      $("workspace-title").textContent = "Prime divisibility in a square";
      $("workspace-summary").textContent = "Explore the checked prime-divisibility proof, then test a value or follow the lemma into the √2 case.";
    }
    else if (context?.claim_class === "COMPILED_PARENT_REUSE") $("workspace-title").textContent = "Why √2 is irrational";
    else if (context?.claim_class === "CHECKED_LOCAL_COUNTEREXAMPLE") $("workspace-title").textContent = "An overbroad divisor claim";
    const isTutteCase = context?.problem_id === "tutte-perfect-matching" || context?.case_id === "tutte-perfect-matching";
    if (!isTutteCase && document.body.classList.contains("case-reading-tutte")) {
      const banner = $("workspace-answer");
      banner.replaceChildren();
      banner.hidden = true;
    }
    document.body.classList.toggle("case-reading-tutte", Boolean(isTutteCase));
    if (isTutteCase) {
      $("workspace-title").textContent = "Tutte’s perfect-matching theorem";
      $("workspace-summary").textContent = "A perfect matching pairs every vertex exactly once. Tutte’s condition characterizes exactly when a finite graph has one; the exact statement and saved check are available below.";
      const run = context.selected_run || {};
      const localCandidateCheck = run.lean_status === "LOCAL_CHECK_PASSED_NOT_REOPENED" && run.kernel_passed === true;
      const savedProofPassed = readingProofPassed(run);
      const banner = $("workspace-answer");
      const result = savedProofPassed
        ? "The selected saved proof passed its recorded kernel and axiom checks."
        : localCandidateCheck
          ? "The proof candidate passed a local Lean kernel check; it has not been reopened."
          : run.attempt_status === "PROOF_FOUND"
            ? "A proof candidate was returned; the saved record does not show a completed proof check."
            : "No passed proof check is linked to this case.";
      const detail = localCandidateCheck
        ? "Configured axiom policy: " + String(run.axiom_policy_status || "not recorded") + ". No case gate was promoted. Open Evidence for exact records."
        : "Open History and Evidence for the exact saved check and review records.";
      banner.replaceChildren(make("span", "workspace-answer-label", "Saved result"), make("strong", "workspace-answer-value", result), make("span", "workspace-answer-note", detail));
      banner.hidden = false;
      $("workspace-established").textContent = savedProofPassed
        ? "The selected saved proof passed its recorded Lean kernel and configured axiom checks for this exact formal statement."
        : localCandidateCheck
          ? "One local Lean kernel check accepted this saved proof candidate for the exact formal statement."
          : run.attempt_status === "PROOF_FOUND"
            ? "A proof candidate is saved, but the record does not show a completed proof check."
            : "No passed proof check is linked to this case.";
      $("workspace-unresolved").textContent = "The standard reopen and independent review of the statement’s meaning are still pending. The saved result does not claim mathematical novelty or broad theorem-solving ability.";
    }
    document.body.classList.toggle("case-reading-ready", Boolean(context));
    if (needsAttemptReading(context)) {
      const outcome = readingAttemptOutcome(context);
      $("workspace-status-row").replaceChildren(make("span", "", "Saved attempt"), make("span", "", (context.historical_attempt ? "Historical attempt · " : "Selected attempt · ") + outcome.label));
      $("workspace-established").textContent = outcome.text;
      $("workspace-unresolved").textContent = "Meaning review and explanation review are not recorded for this selected attempt. Its exact model, cost, input, response and check outcome remain in History.";
      if (heroStory) heroStory.hidden = true;
    }
    if (context?.claim_class === "CHECKED_LOCAL_COUNTEREXAMPLE" || context?.claim_class === "COMPILED_PARENT_REUSE") {
      const row = $("workspace-status-row");
      row.replaceChildren(make("span", "", "Saved case"), make("span", "", context.claim_class === "CHECKED_LOCAL_COUNTEREXAMPLE" ? "Saved counterexample" : "Saved Lean compilation · parent reuse"));
    }
    if (tab === "review") renderReviewComparison(context);
    if (context?.case_id) {
      const run = context.selected_run?.run_id;
      const recent = context.portable_library_item
        ? "#item/" + encodeURIComponent(context.case_id) + "/understand"
        : "#case/" + encodeURIComponent(context.case_id) + (run ? "/" + encodeURIComponent(run) : "") + "/understand";
      storage.set("mathcase.reading.recent", recent);
      const resume = $("welcome-resume-workbench");
      if (resume) { resume.href = recent; resume.hidden = false; }
    }
    if (!context || !hosts.has(tab)) { paint(false); return; }
    const contextPanel = $("automatic-provider-context");
    if (contextPanel && contextPanel.parentElement !== contextInspector) contextInspector.appendChild(contextPanel);
    const result = contentSteps(context, tab);
    const nextSignature = hash(result.map(item => item.title + item.source.textContent).join("\n"));
    const binding = [context.case_id || context.pair_id, context.case_revision_sha256 || context.lean_statement_sha256 || "", context.selected_run?.run_id || "", context.selected_artifact_sha256 || "", context.expositor?.candidate_artifact_sha256 || ""].join(":");
    const guidedStory = window.MathCaseGuidedStory?.caseID === context?.case_id && window.MathCaseGuidedStory?.tab === tab;
    const forceGuidedStart = guidedStory && window.MathCaseGuidedStory.started !== true;
    const nextKey = "mathcase.reading.v1:" + binding + ":" + tab + (guidedStory ? ":story" : "");
    const artifactBinding = binding + ":" + String(context.selected_run?.proof_sha256 || "");
    const savedPosition = forceGuidedStart ? null : storage.get(nextKey);
    const restored = resolveReadingPosition(savedPosition, nextSignature, result.length, artifactBinding, boundReadingContentReady(context));
    readingReady = restored !== null;
    if (!readingReady) {
      pendingReadingText = /reopening|loading/i.test($("workspace-explain-content").textContent) ? "The exact saved explanation is still reopening." : "The bound explanation could not be reopened. Its original availability details remain below.";
      paint(false);
      return;
    }
    if (forceGuidedStart) window.MathCaseGuidedStory.started = true;
    if (nextKey === currentKey && nextSignature === signature && artifactBinding === currentBinding && !forceGuidedStart) { paint(false); return; }
    currentKey = nextKey;
    signature = nextSignature;
    currentBinding = artifactBinding;
    steps = result;
    position = restored.position;
    furthest = restored.furthest;
    showAll = restored.showAll;
    persist();
    paint(false);
  }
  window.MathCaseReading = { render };
  // Exact content can arrive asynchronously, after a case has rendered its shell.
  let queued = false;
  const observer = new MutationObserver(() => {
    if (queued) return;
    queued = true;
    queueMicrotask(() => { queued = false; if (currentContext) render(currentContext, currentTab); });
  });
  observer.observe($("workspace-explain-content"), { subtree: true, childList: true, characterData: true });
  const recent = storage.get("mathcase.reading.recent");
  if (typeof recent === "string" && /^#(?:case\/[a-zA-Z0-9_%.-]+(?:\/[a-zA-Z0-9_%.-]+)?|item\/[a-zA-Z0-9_%.-]+)\/understand$/.test(recent)) { const resume = $("welcome-resume-workbench"); if (resume) { resume.href = recent; resume.hidden = false; } }
  if (window.MathCaseReadingState) render(window.MathCaseReadingState.context, window.MathCaseReadingState.tab);
})();

(() => {
  const pane = document.getElementById("pane-attempts");
  if (window.MathCaseSavedDemo || window.MathCasePublicReadOnly || !pane || pane.querySelector("#run-evidence-history")) return;

  const disclosure = document.createElement("details");
  disclosure.className = "workspace-drawer";
  disclosure.id = "run-evidence-history";
  const heading = document.createElement("summary");
  heading.textContent = "Optional archived run timeline";
  const body = document.createElement("div");
  body.className = "workspace-evidence-body";
  const status = document.createElement("p");
  status.setAttribute("role", "status");
  status.setAttribute("aria-live", "polite");
  status.textContent = "Open to check the optional read-only archive.";
  const records = document.createElement("div");
  disclosure.append(heading, body);
  body.append(status, records);
  pane.appendChild(disclosure);

  const artifactLabels = {
    launch: "Launch receipt",
    completion: "Completion receipt",
    result: "Provider result",
    lean_receipt: "Lean receipt",
  };
  const setState = (state, message) => {
    heading.textContent = `Optional archived run timeline · ${state}`;
    status.textContent = message;
  };
  const appendArtifactDetails = (parent, artifacts) => {
    if (!Array.isArray(artifacts) || artifacts.length === 0) return;
    const details = document.createElement("details");
    details.className = "workspace-evidence";
    const summary = document.createElement("summary");
    summary.textContent = "Verified receipt hashes";
    const list = document.createElement("ul");
    for (const artifact of artifacts) {
      const kind = artifactLabels[artifact?.kind];
      if (!kind || typeof artifact.sha256 !== "string" || !Number.isInteger(artifact.size_bytes)) continue;
      const row = document.createElement("li");
      const label = document.createElement("p");
      label.textContent = `${kind} · ${artifact.size_bytes.toLocaleString()} bytes`;
      const hash = document.createElement("code");
      hash.textContent = artifact.sha256;
      row.append(label, hash);
      list.appendChild(row);
    }
    if (!list.childElementCount) return;
    details.append(summary, list);
    parent.appendChild(details);
  };
  const appendRun = (run) => {
    if (!run || typeof run.run_id !== "string") return;
    const card = document.createElement("details");
    card.className = "workspace-evidence";
    const title = document.createElement("summary");
    title.textContent = `${run.launch_recorded_at_utc || "Time not recorded"} · ${run.run_id} · ${run.completion_status || "status not recorded"}`;
    const content = document.createElement("div");
    content.className = "workspace-evidence-body workspace-card";
    const timing = document.createElement("p");
    const started = typeof run.launch_recorded_at_utc === "string" ? run.launch_recorded_at_utc : "start time not recorded";
    const completed = typeof run.completion_recorded_at_utc === "string" ? run.completion_recorded_at_utc : "completion time not recorded";
    timing.textContent = `Started ${started} · completion recorded ${completed}`;
    const outcome = document.createElement("p");
    outcome.textContent = `Launch: ${String(run.launch_status || "not recorded")} · completion: ${String(run.completion_status || "not recorded")}`;
    content.append(timing, outcome);
    if (run.provider_id || run.model_id) {
      const route = document.createElement("p");
      route.textContent = [run.provider_id, run.model_id].filter(Boolean).join(" · ");
      content.appendChild(route);
    }
    const results = Array.isArray(run.results) ? run.results : [];
    const providerFlags = results.map((result) => result?.provider_solved).filter((value) => typeof value === "boolean");
    const providerOutcome = document.createElement("p");
    providerOutcome.textContent = providerFlags.length
      ? `Provider result field: solved=${providerFlags.map((value) => String(value)).join(", ")}`
      : "No provider solved flag is recorded.";
    content.appendChild(providerOutcome);
    const lean = Array.isArray(run.lean_receipts) ? run.lean_receipts : [];
    const leanOutcome = document.createElement("p");
    leanOutcome.textContent = lean.length
      ? `Recorded Lean receipt statuses: ${lean.map((receipt) => String(receipt?.status || "not recorded")).join(", ")}`
      : "No Lean receipt is linked to this run.";
    content.appendChild(leanOutcome);
    appendArtifactDetails(content, run.artifacts);
    card.append(title, content);
    records.appendChild(card);
  };

  let loaded = false;
  disclosure.addEventListener("toggle", () => {
    if (!disclosure.open || loaded) return;
    loaded = true;
    status.textContent = "Checking archive bindings…";
    fetch("/api/run-evidence-history", { headers: { Accept: "application/json" } })
      .then(async (response) => {
        const value = await response.json();
        if (!response.ok || value?.schema_version !== "mathcase-local-run-evidence-history-v1") throw new Error("archive response unavailable");
        if (value.status === "NOT_CONFIGURED") {
          setState("NOT CONFIGURED", "No archive is connected. The bundled cases and their History remain available.");
          return;
        }
        if (value.status !== "READY" || !Array.isArray(value.runs)) throw new Error("archive verification failed");
        const sorted = [...value.runs].sort((left, right) => String(left?.launch_recorded_at_utc || "").localeCompare(String(right?.launch_recorded_at_utc || "")));
        setState("READY", `${sorted.length} Proof Desk run summaries are bound to the archive manifest. Provider flags are separate from Lean receipt statuses.`);
        for (const run of sorted) appendRun(run);
        if (!sorted.length) status.textContent = "No Proof Desk launch/completion pairs were found in this archive.";
        const limit = document.createElement("p");
        limit.className = "library-note";
        limit.textContent = "This view shows verified status and hashes only. It does not reconstruct missing case context, open raw receipts, or run a model or proof check.";
        body.appendChild(limit);
      })
      .catch(() => {
        setState("CHECK FAILED", "The archive could not be verified. No archived records are shown.");
      });
  });
})();
