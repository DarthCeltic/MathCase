"""Focused no-key acceptance for the public Case Desk's evidence and boundaries."""
from __future__ import annotations

import hashlib
import json
from pathlib import Path
import tempfile
import threading
import unittest
from unittest.mock import patch
import urllib.error
import urllib.request

import public_case_desk as public
from start_public_case_desk import clean_environment
import serve_ui_preview as engine


class PublicCaseDeskTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.root = Path(__file__).resolve().parents[1]
        cls.server = engine.make_server(0)
        cls.worker = threading.Thread(target=cls.server.serve_forever, daemon=True)
        cls.worker.start()
        cls.base = f"http://127.0.0.1:{cls.server.server_port}"

    @classmethod
    def tearDownClass(cls):
        cls.server.shutdown()
        cls.server.server_close()
        cls.worker.join(3)

    def request(self, path, method="GET"):
        request = urllib.request.Request(self.base + path, method=method,
                                         data=b"{}" if method == "POST" else None)
        try:
            with urllib.request.urlopen(request, timeout=5) as response:
                return response.status, response.read()
        except urllib.error.HTTPError as response:
            with response:
                return response.code, response.read()

    def test_three_real_saved_contexts_and_actual_rejection(self):
        expected = ["COUNTEREXAMPLE_CHECKED", "PASSED", "COMPILED_REUSE_PASS"]
        with patch("urllib.request.urlopen", side_effect=AssertionError("No external request is allowed")), \
             patch("subprocess.run", side_effect=AssertionError("No proof or provider command is allowed")):
            values = [public.context(self.root, vars(engine), None, key) for key in public.CASE_IDS]
        self.assertEqual([value["selected_run"]["status"] for value in values], expected)
        self.assertEqual([attempt["outcome"] for attempt in values[1]["provider_attempts"]], ["REJECTED", "PASS"])
        self.assertEqual(values[1]["selected_run"]["proof_sha256"],
                         "03602b73efcddecf3f025c5bf6e5b8cfaac5abedc065a9b8c3e0626e4a3e26ca")
        self.assertIsNone(values[1].get("expositor"))

    def test_public_catalog_contains_only_selected_cases(self):
        code, raw = self.request("/api/cases")
        self.assertEqual(code, 200)
        catalog = json.loads(raw)
        self.assertEqual(catalog["schema_version"], "mathcase-local-case-catalog-v1")
        self.assertEqual([case["case_id"] for case in catalog["cases"]], list(public.CASE_IDS))
        code, raw = self.request("/api/library")
        self.assertEqual(code, 200)
        self.assertEqual(len(json.loads(raw)["records"]), 3)

    def test_private_paths_and_nonpublic_api_are_not_exposed(self):
        for path in ["/scripts/proofdesk_dispatch.py", "/.git/config", "/api/source-match",
                     "/api/research", "/api/problem-queue", "/api/experimental-campaign-evidence",
                     "/ui/prototype/data/campaign-experimental-results.json",
                     "/docs/portable-hero/evidence/tavily-search.json",
                     "/ui/prototype/data/case-library/library.json",
                     "/proofs/first-rung/evidence/prime-sqrt2-model-reuse-r2/explanation-draft-r1.json"]:
            with self.subTest(path=path):
                self.assertEqual(self.request(path)[0], 404)
                self.assertEqual(self.request(path, "HEAD")[0], 404)
        self.assertEqual(self.request("/api/case-context?case_id=nat-add-assoc")[0], 409)
        self.assertEqual(self.request("/api/case-context?case_id=hero-prime-divisibility-r1&run_id=unknown")[0], 409)

    def test_all_writes_are_refused(self):
        for path in ["/api/proofdesk-runs", "/api/research", "/api/user-problem-drafts",
                     "/api/local-computations", "/api/review-notes", "/api/local-preview-shutdown"]:
            with self.subTest(path=path):
                self.assertEqual(self.request(path, "POST")[0], 405)

    def test_exact_evidence_alias_and_manifest_hash(self):
        value = public.manifest(self.root)
        source = next(key for key in value["routes"] if key.startswith("data/local/") and key.endswith("completion-receipt.json"))
        code, raw = self.request("/" + source)
        self.assertEqual(code, 200)
        self.assertEqual(hashlib.sha256(raw).hexdigest(), value["files"][value["routes"][source]])
        self.assertEqual(self.request("/ui/prototype/index.html")[0], 200)

    def test_every_case_source_reopens_with_its_original_digest(self):
        for case_id in public.CASE_IDS:
            value = public.context(self.root, vars(engine), None, case_id)
            for source in value["sources"]:
                with self.subTest(case=case_id, path=source["path"]):
                    code, raw = self.request("/" + source["path"])
                    self.assertEqual(code, 200)
                    self.assertEqual(hashlib.sha256(raw).hexdigest(), source["sha256"])

    def test_tampered_file_is_refused(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            (root / "example.txt").write_text("changed", encoding="utf-8")
            value = {"files": {"example.txt": hashlib.sha256(b"original").hexdigest()}}
            with self.assertRaisesRegex(ValueError, "changed after"):
                public.checked_file(root, "example.txt", value)

    def test_launcher_does_not_inherit_keys_or_python_injection(self):
        result = clean_environment({"PATH": "python", "HOME": "example", "NEBIUS_API_KEY": "sentinel",
                                    "TAVILY_API_KEY": "sentinel", "OPENAI_API_KEY": "sentinel",
                                    "PYTHONPATH": "injected", "HTTP_PROXY": "secret"})
        self.assertEqual(result["PATH"], "python")
        self.assertFalse(any("KEY" in key or key in {"PYTHONPATH", "HTTP_PROXY"} for key in result))
        code, raw = self.request("/api/capabilities")
        self.assertEqual(code, 200)
        self.assertFalse(json.loads(raw)["tavily_configured"])
        self.assertEqual(json.loads(raw)["mode"], "SAVED_EXECUTION_READ_ONLY")


if __name__ == "__main__":
    unittest.main()
