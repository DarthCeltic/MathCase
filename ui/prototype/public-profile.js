/* Public Case Desk profile; its server or static transport enforces read-only access. */
window.MathCasePublicReadOnly = true;
document.documentElement.dataset.publicCaseDesk = "true";
(() => {
  "use strict";
  const cases = ["hero-composite-counterexample-r1", "hero-prime-divisibility-r1", "hero-sqrt2-parent-reuse-r2"];
  function validLocation() {
    const hash = location.hash;
    if (!hash || ["#welcome", "#library"].includes(hash)) return;
    if (/^#(?:case|item)\//.test(hash) && cases.includes(hash.split("/")[1])) return;
    history.replaceState(null, "", "#library");
  }
  validLocation();
  window.addEventListener("hashchange", validLocation);
  document.addEventListener("DOMContentLoaded", () => {
    const banner = document.createElement("aside");
    banner.className = "public-case-desk-banner";
    banner.innerHTML = '<strong>Saved Case Desk</strong><span>Original proof records · no key required · no model or proof checker runs</span><nav aria-label="Saved cases"><a href="#library">Cases</a><a href="#case/hero-composite-counterexample-r1/understand">Counterexample</a><a href="#case/hero-prime-divisibility-r1/understand">Prime lemma</a><a href="#case/hero-sqrt2-parent-reuse-r2/understand">Build on it: √2</a></nav>';
    const tavily = document.createElement("button");
    tavily.type = "button";
    tavily.className = "link";
    tavily.textContent = "Tavily search";
    tavily.dataset.evidenceHref = "/saved-demo/tavily-runtime.json";
    tavily.dataset.evidenceTitle = "Separate saved Tavily search · addition case, not prime-proof input";
    tavily.dataset.evidenceSha256 = "efc38c1e84b56be0c25aee89c382f233b839c7ceedb7046e9aebd0234bd5e6d2";
    banner.querySelector("nav").appendChild(tavily);
    const sourceToggle = document.createElement("button");
    sourceToggle.type = "button";
    sourceToggle.className = "link";
    sourceToggle.textContent = "Six saved source links";
    sourceToggle.setAttribute("aria-controls", "public-tavily-sources");
    sourceToggle.setAttribute("aria-expanded", "false");
    banner.querySelector("nav").appendChild(sourceToggle);
    if (window.MathCaseStaticTransport) {
      const fallback = document.createElement("a");
      fallback.href = window.MathCaseStaticTransport.readerUrl;
      fallback.textContent = "Simple reader";
      banner.querySelector("nav").appendChild(fallback);
    }
    document.querySelector("main")?.prepend(banner);
    const sourcesPanel = document.createElement("section");
    sourcesPanel.id = "public-tavily-sources";
    sourcesPanel.className = "public-tavily-panel";
    sourcesPanel.hidden = true;
    const heading = document.createElement("h2");
    heading.textContent = "Six saved related-work links";
    const status = document.createElement("p");
    status.textContent = "These locators belong to a separate natural-number addition search. They were not inputs to the prime proof; no source excerpts are included.";
    const cards = document.createElement("div");
    cards.className = "public-tavily-grid";
    sourcesPanel.append(heading, status, cards);
    banner.after(sourcesPanel);
    let loaded = false;
    sourceToggle.addEventListener("click", async () => {
      sourcesPanel.hidden = !sourcesPanel.hidden;
      sourceToggle.setAttribute("aria-expanded", String(!sourcesPanel.hidden));
      if (sourcesPanel.hidden || loaded) return;
      try {
        const response = await fetch("/saved-demo/tavily-sources.json", { credentials: "omit", cache: "no-store" });
        if (!response.ok) throw new Error("Saved source locators unavailable");
        const record = await response.json();
        if (record.schema_version !== "mathcase-tavily-source-locators-v1" || record.case_id !== "nat-add-assoc" ||
            record.completed_at_utc !== "2026-10-26T04:18:36.805941Z" || record.result_count !== 6 ||
            record.original_redacted_receipt_sha256 !== "20903a9efd69bd3c02a527be254f2a2a27d11fbe176a9287ca0fe903e0ae6bb9" ||
            record.source_content_included !== false || record.proof_input !== false ||
            !Array.isArray(record.sources) || record.sources.length !== 6) throw new Error("Saved source binding mismatch");
        const rendered = document.createDocumentFragment();
        record.sources.forEach((source, index) => {
          const url = new URL(source.url);
          if (source.rank !== index + 1 || typeof source.title !== "string" || !source.title ||
              url.protocol !== "https:" || url.username || url.password) throw new Error("Invalid saved source locator");
          const card = document.createElement("article");
          const label = document.createElement("span");
          label.textContent = `Saved result ${index + 1} · ${url.hostname}`;
          const link = document.createElement("a");
          link.href = url.href;
          link.target = "_blank";
          link.rel = "noopener noreferrer";
          link.textContent = source.title;
          card.append(label, link);
          rendered.append(card);
        });
        cards.replaceChildren(rendered);
        loaded = true;
      } catch {
        status.textContent = "Saved source links could not be verified. The source-free receipt summary remains available.";
      }
    });
    document.querySelectorAll('a[href="#intake"], a[href="#live"], [data-view="intake"], [data-view="live"], [data-room]').forEach(node => node.hidden = true);
    document.querySelectorAll('form:not(.reading-example form)').forEach(form => {
      form.addEventListener("submit", event => event.preventDefault());
      form.querySelectorAll("button[type=submit]").forEach(button => button.disabled = true);
    });
    const tools = document.querySelector('.reading-toolbar [aria-controls="run-settings-drawer"]');
    if (tools) tools.hidden = true;
  });
})();
