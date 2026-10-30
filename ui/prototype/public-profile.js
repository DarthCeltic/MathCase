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
    if (window.MathCaseStaticTransport) {
      const fallback = document.createElement("a");
      fallback.href = window.MathCaseStaticTransport.readerUrl;
      fallback.textContent = "Simple reader";
      banner.querySelector("nav").appendChild(fallback);
    }
    document.querySelector("main")?.prepend(banner);
    document.querySelectorAll('a[href="#intake"], a[href="#live"], [data-view="intake"], [data-view="live"], [data-room]').forEach(node => node.hidden = true);
    document.querySelectorAll('form:not(.reading-example form)').forEach(form => {
      form.addEventListener("submit", event => event.preventDefault());
      form.querySelectorAll("button[type=submit]").forEach(button => button.disabled = true);
    });
    const tools = document.querySelector('.reading-toolbar [aria-controls="run-settings-drawer"]');
    if (tools) tools.hidden = true;
  });
})();
