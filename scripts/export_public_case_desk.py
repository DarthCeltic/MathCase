#!/usr/bin/env python3
"""Export the public Case Desk to a static host using only its cleared file profile.

The export is additive: it writes only explicitly selected paths and leaves the
host's root index unchanged by default. --default-workbench generates a root
launcher and retains the source reader as reader.html. No provider, search or Lean run.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import stat
import subprocess
import sys
import tempfile

sys.dont_write_bytecode = True
import public_case_desk as public
import serve_ui_preview as engine

ROOT = Path(__file__).resolve().parents[1]
UI = "ui/prototype/index.html"
ADAPTER = "ui/prototype/static-saved-transport.js"
FIXTURES = "ui/prototype/static-case-fixtures.js"
EXPORT_MANIFEST = "ui/prototype/static-case-manifest.json"
ATTRIBUTES = (
    "*.olean binary",
    "docs/portable-hero/evidence/** -text -eol -diff",
    "proofs/first-rung/evidence/prime-sqrt2-model-reuse-r2/** -text -eol -diff",
    "proofs/first-rung/evidence/composite-counterexample-r1/** -text -eol -diff",
    "proofs/first-rung/MathCasePrimeInfiniteDescent.lean -text -eol -diff",
    "proofs/first-rung/MathCaseSqrtTwoInfiniteDescent.lean -text -eol -diff",
)


def digest(raw: bytes) -> str:
    return hashlib.sha256(raw).hexdigest()


def _write(output: Path, relative: str, raw: bytes) -> None:
    if relative.startswith("/") or "\\" in relative or any(part in {"", ".", ".."} for part in relative.split("/")):
        raise ValueError("Invalid export path")
    target = output
    for part in relative.split("/"):
        target /= part
        if target.exists() or target.is_symlink():
            info = target.lstat()
            if stat.S_ISLNK(info.st_mode) or getattr(info, "st_file_attributes", 0) & 0x400:
                raise ValueError("Export must not overwrite or traverse a link")
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_bytes(raw)


def snapshots(clean_root: Path) -> dict:
    contexts = {case_id: public.context(clean_root, vars(engine), None, case_id) for case_id in public.CASE_IDS}
    for value in contexts.values():
        prepared = value.get("prepared_provider_context")
        if isinstance(prepared, dict) and prepared.get("state") == "UNAVAILABLE":
            prepared.pop("context_path", None)
            prepared.pop("receipt_path", None)
    cases = []
    for value in contexts.values():
        cases.append({key: value.get(key) for key in
                      ("case_id", "problem_id", "title", "claim_class", "runs", "dossier_status", "delivery_ready")})
        cases[-1]["selected_run_id"] = value["selected_run"]["run_id"]
    library = public.library(clean_root, vars(engine), None)
    # A stable timestamp from the archived population, not a claim of a new run.
    library["generated_at_utc"] = max(str(value["selected_run"].get("recorded_at_utc", "")) for value in contexts.values())
    library["snapshot_timestamp_basis"] = "Latest included saved run; no new execution."
    payloads = {"catalog": {"schema_version": "mathcase-local-case-catalog-v1", "cases": cases, "unavailable_cases": []},
                "library": library, **contexts,
                "prime-run": engine._saved_proofdesk_run(clean_root, None, engine.PRIME_MODEL_RUN_ID)}
    responses = {"/api/cases": {"payload": "catalog"}, "/api/library": {"payload": "library"},
                 "/api/proofdesk-run?run_id=" + engine.PRIME_MODEL_RUN_ID: {"payload": "prime-run"}}
    for case_id, value in contexts.items():
        responses["/api/case-context?case_id=" + case_id] = {"payload": case_id}
        responses["/api/case-context?case_id=" + case_id + "&run_id=" + value["selected_run"]["run_id"]] = {"payload": case_id}
        responses["/api/library-item?item_id=" + case_id] = {"payload": case_id, "extra": {"record_type": "executable_case"}}
    return {"payloads": payloads, "responses": responses}


def export(output: Path, *, default_workbench: bool = False) -> dict:
    output = output.resolve()
    if output == ROOT.resolve() or ROOT.resolve() in output.parents:
        raise ValueError("Choose a separate output directory, not the source checkout")
    source_manifest = public.manifest(ROOT)
    source_manifest_raw = (ROOT / public.MANIFEST).read_bytes()
    try:
        source_commit = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=ROOT, text=True).strip()
    except (OSError, subprocess.CalledProcessError):
        source_commit = None
    # Snapshot only the positive file inventory. Owner-local state cannot enter
    # the saved readers even if a developer has added private files to a fork.
    with tempfile.TemporaryDirectory(prefix="mathcase-static-profile-") as directory:
        clean_root = Path(directory)
        _write(clean_root, public.MANIFEST, source_manifest_raw)
        for relative in source_manifest["files"]:
            _path, raw = public.checked_file(ROOT, relative, source_manifest)
            _write(clean_root, relative, raw)
        saved = snapshots(clean_root)
    files = {"/" + route: {"path": "/" + target, "sha256": source_manifest["files"][target]}
             for route, target in source_manifest["routes"].items()}
    data = {"schema": "mathcase-static-case-desk-v1", "mode": "SAVED_EXECUTION_READ_ONLY",
            "source_commit": source_commit, "source_manifest_sha256": digest(source_manifest_raw),
            "fallback_reader_url": "/reader.html" if default_workbench else "/",
            "case_ids": list(public.CASE_IDS), **saved, "files": files}
    output.mkdir(parents=True, exist_ok=True)
    written = {}
    for relative in sorted(set(source_manifest["routes"].values())):
        _path, raw = public.checked_file(ROOT, relative, source_manifest)
        if relative == UI:
            text = raw.decode("utf-8")
            injection = ('<head>\n  <meta http-equiv="Content-Security-Policy" content="default-src \'self\' data:; '
                         'img-src \'self\' data:; style-src \'self\' \'unsafe-inline\'; script-src \'self\' \'unsafe-inline\'; '
                         'connect-src \'self\'; frame-src \'self\'; object-src \'none\'; base-uri \'none\'; form-action \'none\'">\n'
                         '  <script src="static-case-fixtures.js"></script>\n'
                         '  <script src="static-saved-transport.js"></script>')
            if text.count("<head>") != 1:
                raise ValueError("The public frontend head is unsupported")
            raw = text.replace("<head>", injection, 1).encode("utf-8")
        _write(output, relative, raw)
        written[relative] = digest(raw)
        for file in files.values():
            if file["path"] == "/" + relative:
                file["sha256"] = digest(raw)
    # Preserve direct navigation, downloads and new-tab links as well as fetch.
    # These are exact copies of individually approved aliases, not a local tree.
    aliases = {route: target for route, target in source_manifest["routes"].items() if route != target}
    for route, target in aliases.items():
        _path, raw = public.checked_file(ROOT, target, source_manifest)
        _write(output, route, raw)
        written[route] = digest(raw)
    fixture_raw = ("/* Derived saved views; no runtime or provider execution. */\nwindow.MathCaseStaticCaseDesk = "
                   + json.dumps(data, ensure_ascii=False, separators=(",", ":")) + ";\n").encode("utf-8")
    for relative, raw in [(ADAPTER, (ROOT / ADAPTER).read_bytes()), (FIXTURES, fixture_raw)]:
        _write(output, relative, raw)
        written[relative] = digest(raw)
    attributes_path = output / ".gitattributes"
    existing = attributes_path.read_text(encoding="utf-8") if attributes_path.exists() else "* text=auto eol=lf\n"
    lines = existing.splitlines()
    for line in ATTRIBUTES:
        if line not in lines:
            lines.append(line)
    for relative in sorted(aliases):
        line = relative + " -text -eol -diff"
        if line not in lines:
            lines.append(line)
    _write(output, ".gitattributes", ("\n".join(lines) + "\n").encode("utf-8"))
    _write(output, ".nojekyll", b"")
    written[".gitattributes"] = digest((output / ".gitattributes").read_bytes())
    written[".nojekyll"] = digest(b"")
    if default_workbench:
        # The source root remains the lightweight reader. Only this explicit
        # deployment option replaces the output root with a static launcher.
        reader_manifest = json.loads((ROOT / "saved-demo/site-manifest.json").read_bytes())
        reader_sources = {item["path"]: item["sha256"] for item in reader_manifest["files"]}
        # The fallback is a separately inventoried public artifact. Validate and
        # copy only its exact manifest, so an empty export is self-contained.
        for relative, expected in reader_sources.items():
            _path, raw = public.checked_file(ROOT, relative, {"files": reader_sources})
            _write(output, relative, raw)
            written[relative] = digest(raw)
        reader = (output / "index.html").read_bytes()
        launcher = b'''<!doctype html>
<html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Security-Policy" content="default-src 'self'; script-src 'self'; object-src 'none'; base-uri 'none'; form-action 'none'">
<title>MathCase - Saved Case Desk</title><script src="case-desk-launch.js" defer></script></head>
<body><main><h1>MathCase</h1><p>Opening the saved Case Desk. No model or proof checker runs.</p>
<p><a href="ui/prototype/index.html#case/hero-composite-counterexample-r1/understand">Open the saved Case Desk</a></p>
<p><a href="reader.html">Use the simpler saved reader</a></p></main></body></html>
'''
        launch_script = b'''/* Static navigation only; no provider or proof execution. */
(() => {
  "use strict";
  const cases = ["hero-composite-counterexample-r1", "hero-prime-divisibility-r1", "hero-sqrt2-parent-reuse-r2"];
  const parts = location.hash.slice(1).split("/");
  const target = new URL("ui/prototype/index.html", location.href);
  if (["case", "item"].includes(parts[0]) && cases.includes(parts[1])) {
    target.hash = parts.length === 2 ? location.hash + "/understand" : location.hash;
  } else target.hash = "#case/hero-composite-counterexample-r1/understand";
  location.replace(target.href);
})();
'''
        for relative, raw in [("reader.html", reader), ("index.html", launcher), ("case-desk-launch.js", launch_script)]:
            _write(output, relative, raw)
            written[relative] = digest(raw)
        reader_manifest["source_head"] = source_commit
        reader_manifest["default_workbench"] = True
        reader_manifest["case_desk_manifest"] = EXPORT_MANIFEST
        reader_manifest["files"] = []
        for relative in sorted(set(reader_sources) | {"reader.html", "case-desk-launch.js"}):
            raw = (output / relative).read_bytes()
            reader_manifest["files"].append({"path": relative, "bytes": len(raw), "sha256": digest(raw),
                "source_sha256": reader_sources.get("index.html") if relative == "reader.html"
                else reader_sources.get(relative) if relative != "index.html" else None})
        relative = "saved-demo/site-manifest.json"
        raw = (json.dumps(reader_manifest, indent=2) + "\n").encode("utf-8")
        _write(output, relative, raw)
        written[relative] = digest(raw)
    result = {"schema": "mathcase-static-case-desk-export-v1", "mode": "SAVED_EXECUTION_READ_ONLY",
              "source_commit": source_commit, "source_manifest_sha256": digest(source_manifest_raw),
              "entrypoint": UI, "case_ids": list(public.CASE_IDS), "payload_count": len(saved["payloads"]),
              "default_workbench": default_workbench,
              "response_route_count": len(saved["responses"]),
              "source_file_alias_count": sum(route != target for route, target in source_manifest["routes"].items()),
              "files": dict(sorted(written.items())),
              "derivation": "The ordinary public frontend gains only static fixture/transport and CSP tags. Proof and receipt bytes are unchanged."}
    _write(output, EXPORT_MANIFEST, (json.dumps(result, indent=2) + "\n").encode("utf-8"))
    return result


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--default-workbench", action="store_true", help="Make the output root a Case Desk launcher and retain the source reader as reader.html")
    args = parser.parse_args()
    result = export(args.output, default_workbench=args.default_workbench)
    print(json.dumps({"output": str(args.output.resolve()), "files": len(result["files"]),
                      "payloads": result["payload_count"], "responses": result["response_route_count"],
                      "aliases": result["source_file_alias_count"]}, indent=2))


if __name__ == "__main__":
    main()
