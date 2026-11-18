from __future__ import annotations
import hashlib
import json
import sys
import tempfile
import threading
import unittest
from http.server import ThreadingHTTPServer
from pathlib import Path
from urllib.error import HTTPError
from urllib.parse import urlencode
from urllib.request import Request, urlopen

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "tools"))
import serve_pinned_collatz_replay as api


class PublicReplayApiTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.server = ThreadingHTTPServer(("127.0.0.1", 0), api.ReplayHandler)
        cls.thread = threading.Thread(target=cls.server.serve_forever, daemon=True)
        cls.thread.start()
        cls.base = f"http://127.0.0.1:{cls.server.server_port}"

    @classmethod
    def tearDownClass(cls):
        cls.server.shutdown()
        cls.server.server_close()
        cls.thread.join(timeout=2)

    def request(self, path, origin=True):
        headers = {"Host": f"127.0.0.1:{self.server.server_port}"}
        if origin:
            headers["Origin"] = self.base
        return Request(self.base + path, headers=headers)

    def test_read_only_summary_binds_export_manifest(self):
        with urlopen(self.request("/api/collatz-pinned-replay"), timeout=5) as response:
            payload = json.loads(response.read())
        self.assertEqual(payload["schema_version"], "mathcase-collatz-pinned-replay-view-v1")
        self.assertEqual(payload["status"], "HASH_VERIFIED_READ_ONLY")
        self.assertEqual(payload["gate_effect"], "NONE")
        self.assertEqual(payload["manifest_sha256"], api.EXPECTED_MANIFEST_SHA256)
        self.assertEqual(payload["summary"]["modules_passed"], 229)
        self.assertEqual(payload["summary"]["modules_failed"], 0)
        self.assertEqual(payload["summary"]["axiom_queries_reported"], 4262)
        self.assertEqual(payload["composition"]["status"], "PASS_COMPOSED_AGGREGATE_CANDIDATE; separate composition-v1 run")
        self.assertEqual(payload["composition"]["m0_review"], "YES; statement fidelity only")
        self.assertEqual(payload["composition"]["families_composed"], 2652)
        self.assertEqual(payload["composition"]["intermediate_modules_compiled"], 133)
        self.assertEqual(payload["composition"]["compiled_outputs"], 134)
        self.assertTrue(payload["composition"]["all_exit_codes_zero"])
        self.assertIn("m20-composition-v1/README.md", {row["path"] for row in payload["files"]})
        self.assertIn("m20-composition-v1/attempt-history.md", {row["path"] for row in payload["files"]})
        self.assertIn("m20-composition-v1/outputs/final-stdout.txt", {row["path"] for row in payload["files"]})

    def test_m20_final_axiom_report_is_served_by_its_bound_hash(self):
        _manifest, inventory, _digest = api._load_manifest()
        entry = inventory["m20-composition-v1/outputs/final-stdout.txt"]
        query = urlencode({"path": entry["path"], "sha256": entry["sha256"]})
        with urlopen(self.request("/api/collatz-pinned-replay-file?" + query), timeout=5) as response:
            raw = response.read()
        self.assertEqual(hashlib.sha256(raw).hexdigest(), entry["sha256"])
        self.assertIn(b"[propext, Quot.sound]", raw)
        self.assertNotIn(b"sorryAx", raw)

    def test_file_read_requires_inventory_path_size_and_digest(self):
        _manifest, inventory, _digest = api._load_manifest()
        entry = inventory["shard-receipts.jsonl"]
        query = urlencode({"path": entry["path"], "sha256": entry["sha256"]})
        with urlopen(self.request("/api/collatz-pinned-replay-file?" + query), timeout=5) as response:
            raw = response.read()
        self.assertEqual(len(raw), entry["bytes"])
        self.assertEqual(hashlib.sha256(raw).hexdigest(), entry["sha256"])

    def test_path_traversal_bad_digest_and_cross_origin_are_refused(self):
        for values in (
            {"path": "../README.md", "sha256": "0" * 64},
            {"path": "manifest.json", "sha256": api.EXPECTED_MANIFEST_SHA256},
            {"path": "README.md", "sha256": "0" * 64},
        ):
            with self.subTest(values=values):
                request = self.request("/api/collatz-pinned-replay-file?" + urlencode(values))
                with self.assertRaises(HTTPError) as err:
                    urlopen(request, timeout=5)
                self.assertEqual(err.exception.code, 409)
                err.exception.close()
        request = Request(self.base + "/api/collatz-pinned-replay", headers={
            "Host": f"127.0.0.1:{self.server.server_port}", "Origin": "https://example.invalid"
        })
        with self.assertRaises(HTTPError) as err:
            urlopen(request, timeout=5)
        self.assertEqual(err.exception.code, 409)
        err.exception.close()

    def test_public_graph_summary_and_files_are_hash_bound(self):
        with urlopen(self.request("/api/knowledge-graph"), timeout=10) as response:
            summary = json.loads(response.read())
        self.assertEqual(summary["schema_version"], "mathcase-public-knowledge-graph-view-v1")
        self.assertEqual(summary["status"], "HASH_VERIFIED_READ_ONLY")
        self.assertEqual(summary["gate_effect"], "NONE")
        self.assertEqual(summary["record_count"], 4262)
        self.assertEqual(summary["m0_status"], "NOT_REVIEWED_AS_INDIVIDUAL_SHARD_STATEMENT")
        self.assertEqual(summary["m4_promotions"], 0)
        self.assertEqual(summary["external_calls"], 0)
        self.assertEqual(summary["external_spend_usd"], 0)
        with urlopen(self.request("/api/knowledge-graph-doc"), timeout=10) as response:
            documentation = response.read()
        self.assertEqual(hashlib.sha256(documentation).hexdigest(), summary["readme_sha256"])
        self.assertIn(b"partial exact-statement index", documentation)
        files = {row["name"]: row for row in summary["files"]}
        self.assertEqual(set(files), {"index.jsonl", "records.jsonl"})
        for name, row in files.items():
            query = urlencode({"name": name, "sha256": row["sha256"]})
            with urlopen(self.request("/api/knowledge-graph-file?" + query), timeout=10) as response:
                raw = response.read()
            self.assertEqual(len(raw), row["bytes"])
            self.assertEqual(hashlib.sha256(raw).hexdigest(), row["sha256"])
        for values in (
            {"name": "../README.md", "sha256": "0" * 64},
            {"name": "manifest.json", "sha256": summary["manifest_sha256"]},
            {"name": "records.jsonl", "sha256": "0" * 64},
        ):
            request = self.request("/api/knowledge-graph-file?" + urlencode(values))
            with self.assertRaises(HTTPError) as err:
                urlopen(request, timeout=10)
            self.assertEqual(err.exception.code, 409)
            err.exception.close()

    def test_ui_serves_panel_and_api_is_read_only(self):
        with urlopen(self.request("/"), timeout=5) as response:
            page = response.read().decode("utf-8")
        self.assertIn('id="collatz-pinned-replay"', page)
        self.assertIn('id="knowledge-graph"', page)
        self.assertIn('src="/ui/knowledge-graph.js"', page)
        self.assertIn('href="/api/knowledge-graph-doc"', page)
        self.assertIn('href="/ui/replay.css"', page)
        with urlopen(self.request("/ui/replay.css"), timeout=5) as response:
            css = response.read().decode("utf-8")
        self.assertIn("--bg:", css)
        with urlopen(self.request("/ui/collatz-pinned-replay.js"), timeout=5) as response:
            script = response.read().decode("utf-8")
        self.assertIn("/api/collatz-pinned-replay", script)
        with urlopen(self.request("/ui/knowledge-graph.js"), timeout=5) as response:
            graph_script = response.read().decode("utf-8")
        self.assertIn("/api/knowledge-graph", graph_script)
        self.assertIn("crypto.subtle.digest", graph_script)
        request = Request(self.base + "/api/collatz-pinned-replay", method="POST", headers={
            "Host": f"127.0.0.1:{self.server.server_port}", "Origin": self.base
        }, data=b"{}")
        with self.assertRaises(HTTPError) as err:
            urlopen(request, timeout=5)
        self.assertEqual(err.exception.code, 405)
        err.exception.close()

    def test_changed_manifest_pin_is_rejected(self):
        with tempfile.TemporaryDirectory() as td:
            replay = Path(td)
            (replay / "manifest.json").write_bytes(b"{}")
            (replay / "manifest.sha256").write_text("0" * 64 + "  manifest.json\n", encoding="utf-8")
            with self.assertRaisesRegex(api.ReplayUnavailable, "manifest hash"):
                api._load_manifest(replay, api.EXPECTED_MANIFEST_SHA256)


if __name__ == "__main__":
    unittest.main(verbosity=2)
