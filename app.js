/* A static reader over deliberately whitelisted saved evidence. No network execution. */
(() => {
  "use strict";
  const data = window.MathCaseStaticDemo;
  if (!data || data.schema !== "mathcase-static-demo-r7") throw new Error("Saved demo data is missing");
  const byId = id => document.getElementById(id);
  const make = (tag, className = "", text = "") => {
    const node = document.createElement(tag);
    if (className) node.className = className;
    if (text) node.textContent = text;
    return node;
  };
  const caseMap = new Map(data.cases.map(item => [item.id, item]));
  const position = new Map();

  function currentId() {
    const route = decodeURIComponent(location.hash.slice(1));
    const match = /^case\/([a-z0-9-]+)$/.exec(route);
    return match && caseMap.has(match[1]) ? match[1] : data.cases[0].id;
  }

  function caseHref(id) { return "#case/" + encodeURIComponent(id); }

  function renderNav(activeId) {
    const host = byId("case-nav");
    host.replaceChildren();
    data.cases.forEach((item, index) => {
      const link = make("a", "case-tab");
      link.href = caseHref(item.id);
      if (item.id === activeId) link.setAttribute("aria-current", "page");
      link.append(make("span", "case-number", String(index + 1)));
      const label = make("span");
      label.append(make("strong", "", item.short), make("small", "", item.kind));
      link.append(label);
      host.append(link);
    });
  }

  function renderCase() {
    const id = currentId();
    const item = caseMap.get(id);
    if (!location.hash || !location.hash.startsWith("#case/")) history.replaceState(null, "", caseHref(id));
    const step = Math.min(position.get(id) || 0, item.steps.length - 1);
    renderNav(id);
    const host = byId("case-stage");
    host.replaceChildren();

    const head = make("div", "stage-head");
    const headText = make("div");
    headText.append(make("span", "eyebrow", item.kind), make("h2", "", item.title), make("p", "", item.note));
    head.append(headText, make("span", "result", item.result));
    host.append(head);

    const reader = make("div", "reader");
    const paper = make("section", "paper");
    paper.setAttribute("aria-label", "Saved mathematical reading surface");
    paper.append(make("span", "paper-label", "Saved case · " + item.status), make("div", "math", item.math), make("p", "statement", item.statement));
    if (item.id === "hero-composite-counterexample-r1") paper.append(renderArithmeticCheck());
    const stepArea = make("div", "step");
    stepArea.append(make("span", "step-kicker", `Step ${step + 1} / ${item.steps.length}`), make("h3", "", item.steps[step].title), make("p", "", item.steps[step].body));
    if (item.rejected_attempt) {
      const failure = item.rejected_attempt;
      const detail = make("details", "details");
      detail.open = step === 1;
      const summary = make("summary", "", "S0 rejected proposal and Lean error");
      summary.style.color = "#775326";
      const note = make("p", "", "First NVIDIA Nemotron proposal through Nebius. Lean rejected this attempt; it is not a proof. The linked derived record carries the original source hashes.");
      note.style.color = "#334958";
      const errorLabel = make("p", "", "Saved Lean error excerpt");
      errorLabel.style.color = "#334958";
      detail.append(summary, note, make("pre", "", failure.candidate), errorLabel, make("pre", "", failure.lean_error_excerpt));
      stepArea.append(detail);
    }
    const controls = make("div", "step-controls");
    const previous = make("button", "", "← Previous step"); previous.type = "button"; previous.disabled = step === 0;
    previous.addEventListener("click", () => { position.set(id, step - 1); renderCase(); });
    const next = make("button", "", "Next step →"); next.type = "button"; next.disabled = step === item.steps.length - 1;
    next.addEventListener("click", () => { position.set(id, step + 1); renderCase(); });
    controls.append(previous, next); stepArea.append(controls); paper.append(stepArea); reader.append(paper);

    const side = make("aside", "side");
    const overview = make("section", "side-card");
    overview.append(make("h3", "", "Saved progression"));
    const steps = make("ol");
    item.steps.forEach((entry, index) => {
      const row = make("li", index === step ? "current" : "", entry.title);
      steps.append(row);
    });
    overview.append(steps);
    const links = make("div", "case-links");
    if (item.previous_case) {
      const link = make("a", "", "← Checked parent lemma"); link.href = caseHref(item.previous_case); links.append(link);
    }
    if (item.next_case) {
      const link = make("a", "", "Use lemma in √2 →"); link.href = caseHref(item.next_case); links.append(link);
    }
    overview.append(links); side.append(overview);

    const evidence = make("section", "side-card");
    evidence.append(make("h3", "", "Inspect the evidence"), make("p", "", "These links open the saved source or a clearly labeled derived verification summary. The original private receipts remain unchanged."));
    const evidenceList = make("div", "evidence-list");
    item.evidence.forEach(record => {
      const link = make("a", "", record.label + " ↗");
      link.href = "/" + record.path; link.target = "_blank"; link.rel = "noopener";
      evidenceList.append(link);
    });
    evidence.append(evidenceList);
    if (item.proof) {
      const detail = make("details", "details");
      detail.append(make("summary", "", "Exact saved Lean proof"));
      detail.append(make("pre", "", item.proof), make("div", "hash", "Proof SHA-256 " + item.proof_sha256));
      evidence.append(detail);
    }
    side.append(evidence); reader.append(side); host.append(reader);
  }


  function renderArithmeticCheck() {
    const panel=make("section","arithmetic-check");
    panel.setAttribute("aria-labelledby","arithmetic-title");
    const title=make("h3","","Try an exact integer example"); title.id="arithmetic-title";
    panel.append(title,make("p","arithmetic-note","Test d ∣ n² ⇒ d ∣ n with an exact local calculation. Passing examples do not prove the general rule; saved records stay unchanged."));
    const form=make("form","arithmetic-form"); form.noValidate=true;
    const dLabel=make("label","arithmetic-field","Divisor d"), dInput=make("input","arithmetic-input");
    dInput.type="text"; dInput.inputMode="numeric"; dInput.autocomplete="off"; dInput.maxLength=30; dInput.value="4"; dLabel.append(dInput);
    const nLabel=make("label","arithmetic-field","Number n"), nInput=make("input","arithmetic-input");
    nInput.type="text"; nInput.inputMode="numeric"; nInput.autocomplete="off"; nInput.maxLength=30; nInput.value="2"; nLabel.append(nInput);
    const check=make("button","arithmetic-button","Check example"); check.type="submit";
    form.append(dLabel,nLabel,check);
    const output=make("div","arithmetic-output"); output.setAttribute("aria-live","polite"); output.setAttribute("role","status");
    panel.append(form,output);
    function evaluate() {
      output.replaceChildren();
      const ds=dInput.value.trim(), ns=nInput.value.trim(), valid=x=>x.length>0 && x.length<=30 && /^[0-9]+$/.test(x);
      if(!valid(ds)||!valid(ns)){output.className="arithmetic-output error";output.textContent="Enter whole numbers using digits only (up to 30 digits).";return;}
      const d=BigInt(ds), n=BigInt(ns);
      if(d===0n){output.className="arithmetic-output error";output.textContent="Divisor d must be positive.";return;}
      const square=n*n, sr=square%d, nr=n%d;
      output.className="arithmetic-output";
      const equation=make("p","arithmetic-equations","n² = "+square+"; n² mod d = "+sr+"; n mod d = "+nr);
      const verdict=make("p","arithmetic-verdict");
      if(sr===0n && nr!==0n){verdict.textContent="Counterexample: "+d+" divides "+n+"², but "+d+" does not divide "+n+".";output.classList.add("counterexample");}
      else if(sr===0n) verdict.textContent="This example fits the claim; one example does not prove it.";
      else verdict.textContent="The premise is false for this example, so it is not a counterexample.";
      output.append(equation,verdict);
    }
    form.addEventListener("submit",event=>{event.preventDefault();evaluate();});
    evaluate(); return panel;
  }

  function renderTavily() {
    const host = byId("tavily-body");
    const t = data.tavily;
    host.append(make("p", "", `${t.note} The saved receipt records ${t.result_count} results on ${t.completed_at_utc}.`));
    host.append(make("p", "", "Query: " + t.query));
    const link = make("a", "", "Open the source-free receipt summary ↗");
    link.href = "/" + t.path; link.target = "_blank"; link.rel = "noopener";
    host.append(link);
  }

  renderTavily();
  renderCase();
  addEventListener("hashchange", renderCase);
})();
