from __future__ import annotations

import hashlib
import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SCRIPT = ROOT / "tools" / "verify_m20_composition_bundle.py"


class M20CompositionBundleTests(unittest.TestCase):
    def run_checker(self, *args: str) -> subprocess.CompletedProcess[str]:
        return subprocess.run(
            [sys.executable, "-B", str(SCRIPT), *args],
            cwd=ROOT,
            text=True,
            capture_output=True,
            check=False,
            timeout=30,
        )

    def test_archived_bundle_bindings_pass_without_lean(self) -> None:
        result = self.run_checker()
        self.assertEqual(result.returncode, 0, result.stderr)
        payload = json.loads(result.stdout)
        self.assertEqual(payload["status"], "ARCHIVE_BINDINGS_PASS_NOT_FRESH_REPLAY")
        self.assertEqual(payload["composition_shards"], 133)
        self.assertEqual(payload["family_statement_count"], 2652)
        self.assertEqual(payload["compile_receipt_rows"], 134)
        self.assertEqual(payload["lean_invocations"], 0)
        self.assertFalse(payload["olean_bytes_in_bundle"])

    def test_tampered_archived_payload_fails_the_binding_audit(self) -> None:
        bundle = ROOT / "evidence" / "collatz" / "m15-m20-pinned-replay" / "m20-composition-v1"
        with tempfile.TemporaryDirectory(prefix="mathcase-m20-tamper-") as temporary:
            target = Path(temporary) / "bundle"
            target.mkdir()
            payload = b"original\n"
            (target / "payload.txt").write_bytes(payload)
            digest = hashlib.sha256(payload).hexdigest()
            manifest = {"file_count": 1, "files": [{"path": "payload.txt", "bytes": len(payload), "sha256": digest}]}
            manifest_bytes = (json.dumps(manifest, sort_keys=True, indent=2) + "\n").encode("utf-8")
            (target / "manifest.json").write_bytes(manifest_bytes)
            (target / "manifest.sha256").write_text(
                f"{hashlib.sha256(manifest_bytes).hexdigest()}  manifest.json\n", encoding="ascii"
            )
            (target / "payload.txt").write_bytes(b"tampered\n")
            result = self.run_checker("--bundle", str(target))
            self.assertEqual(result.returncode, 1)
            self.assertIn("payload digest or size mismatch", result.stderr)


if __name__ == "__main__":
    unittest.main()
