#!/usr/bin/env python3
"""Loopback-only, read-only API for the pinned Collatz replay export."""
from __future__ import annotations

import argparse
import hashlib
import json
import mimetypes
import posixpath
import re
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path, PurePosixPath
from urllib.parse import parse_qs, urlsplit

PACKAGE_ROOT = Path(__file__).resolve().parents[1]
REPLAY_ROOT = PACKAGE_ROOT / "evidence" / "collatz" / "m15-m20-pinned-replay"
EXPECTED_MANIFEST_SHA256 = "ca2cb0e41329922daf13f4396ed35210b4a6162da37cff7dce5aa01ab45d412b"
EXPECTED_REPOSITORY = "DarthCeltic/MathCase-internal"
EXPECTED_RUN_ID = "mathcase-collatz-m15-m20-replay-20261113"
PUBLIC_GRAPH_ROOT = PACKAGE_ROOT / "evidence" / "knowledge-graph" / "public-slice-v1"
EXPECTED_PUBLIC_GRAPH_MANIFEST_SHA256 = "3636c16287b6df468616b2cd8c982d1265c0fab0821abddd3746004c952bd400"
EXPECTED_PUBLIC_GRAPH_README_SHA256 = "69f9cd7f14d858998164a94f38415704951d4b850c09576c9b6a86c673fa79cd"
MAX_FILE_BYTES = 2 * 1024 * 1024
MAX_PUBLIC_GRAPH_FILE_BYTES = 16 * 1024 * 1024
DIGEST_RE = re.compile(r"^[0-9a-f]{64}$")
DISPLAY_FILES = (
    "README.md", "manifest.tsv", "run-results.tsv", "shard-receipts.jsonl",
    "axiom-group-receipts.jsonl", "m20-aggregate-m0-packet.md",
    "m20-composition-v1/README.md", "m20-composition-v1/attempt-history.md",
    "m20-composition-v1/source-index.md", "m20-composition-v1/compile-receipts.tsv",
    "m20-composition-v1/outputs/final-stdout.txt",
    "m20-composition-v1/sources/M20AllFamilies.lean",
    "m20-composition-v1/sources/M20CompositionAllFamiliesV1.lean",
)


class ReplayUnavailable(ValueError):
    pass


def _sha(raw: bytes) -> str:
    return hashlib.sha256(raw).hexdigest()


def _safe_relative(value: object) -> str:
    if not isinstance(value, str) or not value or "\\" in value or "\x00" in value:
        raise ReplayUnavailable("replay path is invalid")
    path = PurePosixPath(value)
    if path.is_absolute() or posixpath.normpath(value) != value or any(part in ("", ".", "..") for part in value.split("/")):
        raise ReplayUnavailable("replay path is not normalized")
    return value


def _load_manifest(replay_root: Path = REPLAY_ROOT, expected_sha256: str = EXPECTED_MANIFEST_SHA256):
    if not DIGEST_RE.fullmatch(expected_sha256):
        raise ReplayUnavailable("manifest pin is invalid")
    manifest_path = replay_root / "manifest.json"
    checksum_path = replay_root / "manifest.sha256"
    raw = manifest_path.read_bytes()
    actual = _sha(raw)
    checksum = checksum_path.read_text(encoding="utf-8").strip().split()
    if actual != expected_sha256 or checksum != [actual, "manifest.json"]:
        raise ReplayUnavailable("manifest hash does not match the fixed export pin")
    try:
        manifest = json.loads(raw)
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ReplayUnavailable("manifest JSON is invalid") from exc
    if (not isinstance(manifest, dict)
        or manifest.get("schema") != "mathcase-pinned-collatz-shard-replay-v1"
        or manifest.get("runId") != EXPECTED_RUN_ID
        or manifest.get("sourceRepository") != EXPECTED_REPOSITORY):
        raise ReplayUnavailable("manifest identity is unsupported")
    rows = manifest.get("files")
    if not isinstance(rows, list) or type(manifest.get("fileCount")) is not int or manifest["fileCount"] != len(rows):
        raise ReplayUnavailable("manifest inventory count is invalid")
    inventory = {}
    for row in rows:
        if not isinstance(row, dict):
            raise ReplayUnavailable("manifest inventory row is invalid")
        name = _safe_relative(row.get("path"))
        digest = row.get("sha256")
        size = row.get("bytes")
        if (name in inventory or name in {"manifest.json", "manifest.sha256"}
            or not isinstance(digest, str) or not DIGEST_RE.fullmatch(digest)
            or type(size) is not int or size < 0):
            raise ReplayUnavailable("manifest inventory binding is invalid")
        inventory[name] = {"path": name, "sha256": digest, "bytes": size}
    return manifest, inventory, actual


def _read_bound_file(relative_path: str, requested_sha256: str, replay_root: Path = REPLAY_ROOT,
                     expected_sha256: str = EXPECTED_MANIFEST_SHA256) -> bytes:
    relative_path = _safe_relative(relative_path)
    if not DIGEST_RE.fullmatch(requested_sha256):
        raise ReplayUnavailable("requested SHA-256 is invalid")
    _manifest, inventory, _actual = _load_manifest(replay_root, expected_sha256)
    row = inventory.get(relative_path)
    if row is None or row["sha256"] != requested_sha256:
        raise ReplayUnavailable("file is not bound by the pinned inventory")
    if row["bytes"] > MAX_FILE_BYTES:
        raise ReplayUnavailable("file exceeds the read limit")
    resolved_root = replay_root.resolve(strict=True)
    candidate = replay_root / Path(*PurePosixPath(relative_path).parts)
    if any(part.is_symlink() for part in [candidate, *candidate.parents] if part != replay_root.parent):
        raise ReplayUnavailable("symbolic links are not served")
    resolved = candidate.resolve(strict=True)
    if resolved_root not in resolved.parents:
        raise ReplayUnavailable("file escapes the replay directory")
    raw = resolved.read_bytes()
    if len(raw) != row["bytes"] or _sha(raw) != row["sha256"]:
        raise ReplayUnavailable("file bytes no longer match the inventory")
    return raw


def _summary_view():
    manifest, inventory, digest = _load_manifest()
    counts = manifest.get("moduleCounts")
    compiled = manifest.get("shardCompilation")
    audit = manifest.get("axiomAudit")
    toolchain = manifest.get("toolchain")
    composition = manifest.get("aggregateComposition")
    if not all(isinstance(x, dict) for x in (counts, compiled, audit, toolchain, composition)):
        raise ReplayUnavailable("manifest summary fields are incomplete")
    files = []
    for name in DISPLAY_FILES:
        if name not in inventory:
            raise ReplayUnavailable("a required display file is missing from the inventory")
        files.append(dict(inventory[name]))
    axiom_counts = audit.get("axiomCounts")
    if not isinstance(axiom_counts, dict):
        raise ReplayUnavailable("axiom summary is malformed")
    return {
        "schema_version": "mathcase-collatz-pinned-replay-view-v1",
        "status": "HASH_VERIFIED_READ_ONLY",
        "run_id": manifest["runId"],
        "source_branch": manifest.get("sourceBranch"),
        "source_commit": manifest.get("sourceCommit"),
        "started_at_eastern": manifest.get("startedAtEastern"),
        "finished_at_eastern": manifest.get("finishedAtEastern"),
        "manifest_sha256": digest,
        "summary": {
            "module_counts": counts,
            "modules_passed": compiled.get("passed"),
            "modules_failed": compiled.get("failed"),
            "axiom_groups": audit.get("groups"),
            "axiom_queries_expected": audit.get("queriesExpected"),
            "axiom_queries_reported": audit.get("queriesReported"),
            "axiom_counts": axiom_counts,
            "sorry_ax_reports": audit.get("sorryAxReports"),
        },
        "toolchain": {
            "lean_version": toolchain.get("leanVersion"),
            "mathlib_tag": toolchain.get("mathlibTag"),
            "docker_image_digest": toolchain.get("dockerImageDigest"),
        },
        "composition": {
            "status": composition.get("status"),
            "target_theorem": composition.get("targetTheorem"),
            "m0_packet": composition.get("m0Packet"),
            "m0_review": composition.get("m0Review"),
            "families_composed": composition.get("familiesComposed"),
            "intermediate_modules_compiled": composition.get("intermediateModulesCompiled"),
            "compiled_outputs": composition.get("compiledOutputs"),
            "all_exit_codes_zero": composition.get("allExitCodesZero"),
            "cached_shard_outputs_reused": composition.get("cachedShardOutputsReused"),
            "fresh_public_replay": composition.get("freshPublicReplay"),
        },
        "claim_boundary": manifest.get("claimBoundary"),
        "gate_effect": "NONE",
        "files": files,
    }


def _load_public_graph_view():
    manifest_bytes = (PUBLIC_GRAPH_ROOT / "manifest.json").read_bytes()
    manifest_sha = _sha(manifest_bytes)
    sidecar = (PUBLIC_GRAPH_ROOT / "manifest.sha256").read_text(encoding="ascii").strip().split()
    if manifest_sha != EXPECTED_PUBLIC_GRAPH_MANIFEST_SHA256 or sidecar != [manifest_sha, "manifest.json"]:
        raise ReplayUnavailable("public graph manifest does not match its fixed export pin")
    try:
        manifest = json.loads(manifest_bytes.decode("utf-8"))
    except (json.JSONDecodeError, UnicodeDecodeError) as exc:
        raise ReplayUnavailable("public graph manifest is invalid") from exc
    if (manifest.get("schema_version") != "mathcase-public-knowledge-graph-v1"
        or manifest.get("status") != "PUBLIC_SAFE_PARTIAL_SLICE"
        or manifest.get("record_count") != 4262
        or manifest.get("index_path") != "index.jsonl"
        or manifest.get("m4_promotions") != 0
        or manifest.get("external_calls") != 0
        or manifest.get("external_spend_usd") != 0):
        raise ReplayUnavailable("public graph manifest is outside its read-only partial-slice contract")
    index_bytes = (PUBLIC_GRAPH_ROOT / "index.jsonl").read_bytes()
    if len(index_bytes) > MAX_PUBLIC_GRAPH_FILE_BYTES or _sha(index_bytes) != manifest.get("index_sha256"):
        raise ReplayUnavailable("public graph index does not match its pinned digest")
    records_bytes = (PUBLIC_GRAPH_ROOT / "records.jsonl").read_bytes()
    if len(records_bytes) > MAX_PUBLIC_GRAPH_FILE_BYTES:
        raise ReplayUnavailable("public graph records exceed the read limit")
    records_sidecar = (PUBLIC_GRAPH_ROOT / "records.sha256").read_text(encoding="ascii").strip().split()
    records_sha = _sha(records_bytes)
    if records_sidecar != [records_sha, "records.jsonl"]:
        raise ReplayUnavailable("public graph records do not match their sidecar digest")
    readme_bytes = (PUBLIC_GRAPH_ROOT / "README.md").read_bytes()
    readme_sha = _sha(readme_bytes)
    if len(readme_bytes) > 64 * 1024 or readme_sha != EXPECTED_PUBLIC_GRAPH_README_SHA256:
        raise ReplayUnavailable("public graph scope document does not match its fixed pin")
    if index_bytes.count(b"\n") != 4262 or records_bytes.count(b"\n") != 4262:
        raise ReplayUnavailable("public graph row count differs from its fixed slice size")
    return {
        "schema_version": "mathcase-public-knowledge-graph-view-v1",
        "status": "HASH_VERIFIED_READ_ONLY",
        "gate_effect": "NONE",
        "manifest_sha256": manifest_sha,
        "index_sha256": manifest["index_sha256"],
        "records_sha256": records_sha,
        "readme_sha256": readme_sha,
        "record_count": manifest["record_count"],
        "cohort_counts": manifest["cohort_counts"],
        "m0_status": "NOT_REVIEWED_AS_INDIVIDUAL_SHARD_STATEMENT",
        "m4_status": "NOT_PROMOTED_PER_SHARD_REPLAY_ONLY",
        "m4_promotions": 0,
        "external_calls": 0,
        "external_spend_usd": 0,
        "excluded_owner_only_records": manifest["excluded_owner_only_records"],
        "excluded_source_graph_records": manifest["excluded_source_graph_records"],
        "excluded_historical_aggregate_records": manifest["excluded_historical_aggregate_records"],
        "claim_boundary": "Exact statement lookup only; finite per-shard descent evidence, not global Collatz convergence or a complete graph.",
        "files": [
            {"name": "index.jsonl", "sha256": manifest["index_sha256"], "bytes": len(index_bytes), "label": "Exact statement hash index"},
            {"name": "records.jsonl", "sha256": records_sha, "bytes": len(records_bytes), "label": "Inspectible statement and receipt records"},
        ],
    }


def _read_public_graph_file(name: str, requested_sha256: str) -> bytes:
    if name not in {"index.jsonl", "records.jsonl"}:
        raise ReplayUnavailable("public graph file is not in the read-only allowlist")
    if not DIGEST_RE.fullmatch(requested_sha256):
        raise ReplayUnavailable("requested public graph SHA-256 is invalid")
    view = _load_public_graph_view()
    row = next((item for item in view["files"] if item["name"] == name), None)
    if row is None or row["sha256"] != requested_sha256:
        raise ReplayUnavailable("public graph file is not bound by the pinned manifest")
    raw = (PUBLIC_GRAPH_ROOT / name).read_bytes()
    if len(raw) != row["bytes"] or _sha(raw) != row["sha256"]:
        raise ReplayUnavailable("public graph file bytes no longer match the pinned digest")
    return raw


class ReplayHandler(BaseHTTPRequestHandler):
    server_version = "MathCasePinnedReplay/1"
    sys_version = ""

    def log_message(self, _format, *_args):
        return

    def _send(self, status: int, body: bytes, content_type: str):
        self.send_response(status)
        self.send_header("Content-Type", content_type)
        self.send_header("Content-Length", str(len(body)))
        self.send_header("Cache-Control", "no-store")
        self.send_header("X-Content-Type-Options", "nosniff")
        self.send_header("Content-Security-Policy", "default-src 'self'; object-src 'none'; base-uri 'none'; frame-ancestors 'none'")
        self.end_headers()
        self.wfile.write(body)

    def _json(self, status: int, value: dict):
        self._send(status, json.dumps(value, ensure_ascii=False, separators=(",", ":")).encode("utf-8"), "application/json; charset=utf-8")

    def _validate_local_origin(self):
        expected_origin = f"http://127.0.0.1:{self.server.server_port}"
        if self.headers.get("Host") != f"127.0.0.1:{self.server.server_port}":
            raise ReplayUnavailable("host is not the loopback service address")
        origin = self.headers.get("Origin")
        if origin is not None and origin != expected_origin:
            raise ReplayUnavailable("cross-origin reads are refused")

    def do_GET(self):
        try:
            self._validate_local_origin()
            parsed = urlsplit(self.path)
            if parsed.path == "/" and not parsed.query:
                raw = (PACKAGE_ROOT / "index.html").read_bytes()
                self._send(200, raw, "text/html; charset=utf-8")
                return
            if parsed.path == "/ui/collatz-pinned-replay.js" and not parsed.query:
                raw = (PACKAGE_ROOT / "ui" / "collatz-pinned-replay.js").read_bytes()
                self._send(200, raw, "text/javascript; charset=utf-8")
                return
            if parsed.path == "/ui/replay.css" and not parsed.query:
                raw = (PACKAGE_ROOT / "ui" / "replay.css").read_bytes()
                self._send(200, raw, "text/css; charset=utf-8")
                return
            if parsed.path == "/ui/knowledge-graph.js" and not parsed.query:
                raw = (PACKAGE_ROOT / "ui" / "knowledge-graph.js").read_bytes()
                self._send(200, raw, "text/javascript; charset=utf-8")
                return
            if parsed.path == "/api/knowledge-graph":
                if parsed.query:
                    raise ReplayUnavailable("knowledge-graph summary endpoint does not accept query parameters")
                self._json(200, _load_public_graph_view())
                return
            if parsed.path == "/api/knowledge-graph-doc":
                if parsed.query:
                    raise ReplayUnavailable("knowledge-graph document endpoint does not accept query parameters")
                view = _load_public_graph_view()
                raw = (PUBLIC_GRAPH_ROOT / "README.md").read_bytes()
                if _sha(raw) != view["readme_sha256"]:
                    raise ReplayUnavailable("public graph scope document changed after pin verification")
                self._send(200, raw, "text/markdown; charset=utf-8")
                return
            if parsed.path == "/api/knowledge-graph-file":
                params = parse_qs(parsed.query, strict_parsing=True)
                if set(params) != {"name", "sha256"} or any(len(v) != 1 for v in params.values()):
                    raise ReplayUnavailable("knowledge-graph file reads require one name and one SHA-256")
                raw = _read_public_graph_file(params["name"][0], params["sha256"][0])
                self._send(200, raw, "application/x-ndjson; charset=utf-8")
                return
            if parsed.path == "/api/collatz-pinned-replay":
                if parsed.query:
                    raise ReplayUnavailable("summary endpoint does not accept query parameters")
                self._json(200, _summary_view())
                return
            if parsed.path == "/api/collatz-pinned-replay-file":
                params = parse_qs(parsed.query, strict_parsing=True)
                if set(params) != {"path", "sha256"} or any(len(v) != 1 for v in params.values()):
                    raise ReplayUnavailable("file reads require one path and one SHA-256")
                raw = _read_bound_file(params["path"][0], params["sha256"][0])
                guessed = mimetypes.guess_type(params["path"][0])[0] or "application/octet-stream"
                if guessed.startswith("text/") or guessed in {"application/json", "application/javascript"}:
                    guessed += "; charset=utf-8"
                self._send(200, raw, guessed)
                return
            self._json(404, {"error": "route not found", "gate_effect": "NONE"})
        except (OSError, ValueError, ReplayUnavailable, json.JSONDecodeError) as exc:
            self._json(409, {"schema_version": "mathcase-collatz-pinned-replay-view-v1", "status": "UNAVAILABLE", "error": str(exc), "gate_effect": "NONE"})

    def do_POST(self):
        self.send_response(405)
        self.send_header("Allow", "GET")
        self.send_header("Content-Length", "0")
        self.send_header("Cache-Control", "no-store")
        self.end_headers()


def main():
    parser = argparse.ArgumentParser(description="Serve the read-only pinned Collatz replay UI on loopback.")
    parser.add_argument("--port", type=int, default=55137)
    args = parser.parse_args()
    if not 1024 <= args.port <= 65535:
        parser.error("port must be between 1024 and 65535")
    _load_manifest()
    server = ThreadingHTTPServer(("127.0.0.1", args.port), ReplayHandler)
    print(f"MathCase read-only replay: http://127.0.0.1:{args.port}/")
    print(f"Pinned export manifest SHA-256: {EXPECTED_MANIFEST_SHA256}")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        server.server_close()


if __name__ == "__main__":
    main()
