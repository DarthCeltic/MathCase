"use strict";
// Exercise the real static transport without a backend or external requests.
const assert = require("node:assert/strict");
const fs = require("node:fs");
const path = require("node:path");
const vm = require("node:vm");
const { createHash, webcrypto } = require("node:crypto");
const directory = path.resolve(process.argv[2] || "");
if (!process.argv[2]) throw new Error("Usage: node scripts/test_static_case_desk.cjs EXPORTED_DIRECTORY");
const hash = bytes => createHash("sha256").update(bytes).digest("hex");
const manifest = JSON.parse(fs.readFileSync(path.join(directory, "ui/prototype/static-case-manifest.json"), "utf8"));
assert.equal(manifest.payload_count, 6);
assert.equal(manifest.response_route_count, 12);
assert.equal(manifest.source_file_alias_count, 16);
for (const [relative, digest] of Object.entries(manifest.files)) {
  assert.equal(hash(fs.readFileSync(path.join(directory, relative))), digest, relative);
}
const origin = "https://example.test";
let tamper = false;
const nativeCalls = [];
const location = { origin, href: origin + "/ui/prototype/index.html", hash: "" };
const document = { addEventListener() {} };
const window = { fetch: async (url, options) => {
  assert.equal(new URL(url).origin, origin, "Native network must stay on the static host");
  assert.equal(options.method, "GET");
  assert.equal(options.credentials, "omit");
  nativeCalls.push(new URL(url).pathname);
  const bytes = tamper ? Buffer.from("changed after export") : fs.readFileSync(path.join(directory, new URL(url).pathname));
  return new Response(bytes, { status: 200, headers: { "Content-Type": "application/json" } });
} };
const sandbox = vm.createContext({ window, location, document, navigator: {}, URL, URLSearchParams,
  Response, Uint8Array, crypto: webcrypto,
  history: { replaceState(_state, _title, next) { location.hash = next; } } });
vm.runInContext(fs.readFileSync(path.join(directory, "ui/prototype/static-case-fixtures.js"), "utf8"), sandbox);
vm.runInContext(fs.readFileSync(path.join(directory, "ui/prototype/static-saved-transport.js"), "utf8"), sandbox);
const data = window.MathCaseStaticCaseDesk;
assert.equal(location.hash, "#case/hero-composite-counterexample-r1/understand");
assert.equal(Object.isFrozen(data.payloads), true);
assert.equal(Object.keys(data.payloads).length, 6);
assert.equal(window.MathCaseStaticTransport.readerUrl, manifest.default_workbench ? "/reader.html" : "/");
if (manifest.default_workbench) {
  const launcher = fs.readFileSync(path.join(directory, "case-desk-launch.js"), "utf8");
  for (const [input, expected] of [
    ["", "#case/hero-composite-counterexample-r1/understand"],
    ["#case/hero-prime-divisibility-r1", "#case/hero-prime-divisibility-r1/understand"],
    ["#case/hero-sqrt2-parent-reuse-r2/prime-sqrt2-direct-parent-child-20261028-r2/understand", "#case/hero-sqrt2-parent-reuse-r2/prime-sqrt2-direct-parent-child-20261028-r2/understand"],
  ]) {
    let destination;
    vm.runInNewContext(launcher, { URL, location: { hash: input, href: origin + "/" + input, replace(value) { destination = value; } } });
    assert.equal(destination, origin + "/ui/prototype/index.html" + expected);
  }
  assert(fs.readFileSync(path.join(directory, "reader.html"), "utf8").includes('src="/app.js"'));
  const readerManifest = JSON.parse(fs.readFileSync(path.join(directory, "saved-demo/site-manifest.json"), "utf8"));
  assert.equal(readerManifest.default_workbench, true);
  assert.equal(readerManifest.source_head, manifest.source_commit);
  for (const item of readerManifest.files) {
    const bytes = fs.readFileSync(path.join(directory, item.path));
    assert.equal(bytes.length, item.bytes, item.path);
    assert.equal(hash(bytes), item.sha256, item.path);
  }
  for (const asset of ["app.js", "app.css", "saved-demo/data.js", "reader.html", "case-desk-launch.js"]) {
    assert(manifest.files[asset], "Standalone fallback closure: " + asset);
  }
}

(async () => {
  for (const [url, spec] of Object.entries(data.responses)) {
    const response = await window.fetch(url);
    assert.equal(response.status, 200, url);
    const value = await response.json();
    assert.deepEqual(value, JSON.parse(JSON.stringify({ ...data.payloads[spec.payload], ...(spec.extra || {}) })));
  }
  assert.equal(nativeCalls.length, 0, "Saved API views must not contact a server API");
  const prime = data.payloads["hero-prime-divisibility-r1"];
  if (prime.prepared_provider_context?.state === "UNAVAILABLE") {
    assert.equal(prime.prepared_provider_context.context_path, undefined);
    assert.equal(prime.prepared_provider_context.receipt_path, undefined);
  }
  const reversed = "/api/case-context?run_id=" + prime.selected_run.run_id + "&case_id=" + prime.case_id;
  assert.equal((await window.fetch(reversed)).status, 200);
  assert.deepEqual(Array.from(prime.provider_attempts, value => value.outcome), ["REJECTED", "PASS"]);
  const aliases = Object.entries(data.files).filter(([url, spec]) => url !== spec.path);
  assert.equal(aliases.length, 16);
  for (const [url, spec] of aliases) {
    const response = await window.fetch(url);
    assert.equal(response.status, 200, url);
    assert.equal(hash(Buffer.from(await response.arrayBuffer())), spec.sha256);
    assert.equal(hash(fs.readFileSync(path.join(directory, url))), spec.sha256, "Direct alias bytes: " + url);
    assert.equal(nativeCalls.at(-1), spec.path, "Fetch must use the canonical packaged evidence");
  }
  const before = nativeCalls.length;
  for (const [url, options, status] of [
    ["https://api.example.test/paid", {}, 403],
    ["/api/proofdesk-runs", { method: "POST", body: "{}" }, 405],
    ["/api/research", {}, 404],
    [aliases[0][0] + "?refresh=1", {}, 404],
    ["/api/case-context?case_id=private", {}, 404],
    ["/data/local/config/provider-profile.json", {}, 404],
    ["/docs/portable-hero/evidence/tavily-search.json", {}, 404],
    ["/ui/prototype/data/campaign-experimental-results.json", {}, 404],
  ]) assert.equal((await window.fetch(url, options)).status, status, url);
  assert.equal(nativeCalls.length, before, "Refused requests must never reach native fetch");
  tamper = true;
  assert.equal((await window.fetch(aliases[0][0])).status, 409, "Changed evidence must be refused");
  const html = fs.readFileSync(path.join(directory, "ui/prototype/index.html"), "utf8");
  assert(html.indexOf('src="static-saved-transport.js"') < html.indexOf('src="public-profile.js"'));
  assert(html.includes('http-equiv="Content-Security-Policy"'));
  for (const script of html.matchAll(/<script(?![^>]*\bsrc=)[^>]*>([\s\S]*?)<\/script>/gi)) new vm.Script(script[1]);
  console.log(JSON.stringify({ result: "PASS", staticFiles: Object.keys(manifest.files).length,
    savedPayloads: 6, exactGetRoutes: 12, verifiedAliases: aliases.length,
    refusalChecks: 8, tamperedEvidence: "REFUSED", defaultCase: "counterexample" }, null, 2));
})().catch(error => { console.error(error); process.exitCode = 1; });
