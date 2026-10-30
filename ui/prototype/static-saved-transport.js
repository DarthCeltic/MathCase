/* Immutable saved GET responses for the ordinary public Case Desk on a static host. */
(() => {
  "use strict";
  const data = window.MathCaseStaticCaseDesk;
  if (!data || data.schema !== "mathcase-static-case-desk-v1") throw new Error("Saved Case Desk fixtures are missing.");
  if (!location.hash) history.replaceState(null, "", "#case/hero-composite-counterexample-r1/understand");
  const nativeFetch = window.fetch.bind(window);
  const audit = { savedReads: 0, evidenceReads: 0, refusedRequests: 0 };
  const reply = (value, status = 200, head = false) => new Response(head ? null : JSON.stringify(value), {
    status, headers: { "Content-Type": "application/json; charset=utf-8" },
  });
  function freeze(value) {
    if (value && typeof value === "object" && !Object.isFrozen(value)) {
      Object.values(value).forEach(freeze);
      Object.freeze(value);
    }
    return value;
  }
  freeze(data);
  Object.defineProperty(window, "MathCaseStaticTransport", {
    value: Object.freeze({ mode: "SAVED_EXECUTION_READ_ONLY", audit, sourceManifestSha256: data.source_manifest_sha256,
      readerUrl: data.fallback_reader_url || "/" }),
    writable: false,
  });
  function key(url) {
    const parameters = new URLSearchParams(url.search);
    parameters.sort();
    return url.pathname + (parameters.size ? "?" + parameters.toString() : "");
  }
  async function savedFetch(input, init = {}) {
    const url = new URL(typeof input === "string" || input instanceof URL ? input : input.url, location.href);
    const method = String(init.method || (typeof input === "object" && input.method) || "GET").toUpperCase();
    const head = method === "HEAD";
    if (url.origin !== location.origin || !["GET", "HEAD"].includes(method)) {
      audit.refusedRequests++;
      return reply({ error: "Saved Case Desk only: external requests and writes are unavailable." }, url.origin !== location.origin ? 403 : 405, head);
    }
    const route = data.responses[key(url)];
    if (route && Object.prototype.hasOwnProperty.call(data.payloads, route.payload)) {
      audit.savedReads++;
      return reply({ ...data.payloads[route.payload], ...(route.extra || {}) }, 200, head);
    }
    const file = data.files[url.pathname];
    if (url.pathname.startsWith("/api/") || !file || url.search) {
      audit.refusedRequests++;
      return reply({ error: "This record is outside the three saved Case Desk examples." }, 404, head);
    }
    audit.evidenceReads++;
    const target = new URL(file.path, location.origin);
    if (target.origin !== location.origin) return reply({ error: "Invalid saved evidence destination." }, 409, head);
    try {
      const response = await nativeFetch(target.href, { method: "GET", credentials: "omit", cache: "no-store", redirect: "error" });
      if (!response.ok) return reply({ error: "The saved evidence file is unavailable." }, response.status, head);
      const bytes = await response.arrayBuffer();
      const digest = Array.from(new Uint8Array(await crypto.subtle.digest("SHA-256", bytes)), value => value.toString(16).padStart(2, "0")).join("");
      if (digest !== file.sha256) return reply({ error: "The saved evidence failed its manifest hash check." }, 409, head);
      return new Response(head ? null : bytes, { status: 200, headers: response.headers });
    } catch {
      return reply({ error: "The saved evidence could not be read. No provider request was made." }, 503, head);
    }
  }
  Object.defineProperty(window, "fetch", { value: savedFetch, writable: false });
  window.XMLHttpRequest = class { constructor() { throw new Error("Only saved Case Desk GET requests are available."); } };
  window.WebSocket = class { constructor() { throw new Error("Saved Case Desk cannot open a network session."); } };
  window.EventSource = class { constructor() { throw new Error("Saved Case Desk cannot open a network session."); } };
  try { Object.defineProperty(navigator, "sendBeacon", { value: () => false }); } catch { /* Static hosting has no write API. */ }
  document.addEventListener("submit", event => event.preventDefault(), true);
})();
