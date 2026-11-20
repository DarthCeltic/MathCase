"""Exercise the visitor's CLI with the installed pinned Lean compiler."""

import hashlib
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch

import check_visitor_case as checker


class VisitorCompilerTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        try:
            checker.installed_lean()
        except (OSError, subprocess.SubprocessError) as exc:
            raise unittest.SkipTest(f"Install {checker.TOOLCHAIN} to run the compiler tests: {exc}")

    def compile(self, source):
        with tempfile.TemporaryDirectory() as temp:
            source_path = Path(temp) / "MyCase.lean"
            destination = Path(temp) / "check.json"
            source_path.write_bytes(source)
            run = subprocess.run(
                [sys.executable, checker.__file__, source_path, "--receipt", destination],
                capture_output=True, timeout=checker.TIMEOUT_SECONDS + 60,
            )
            self.assertEqual(run.stderr, b"")
            self.assertEqual(run.stdout, destination.read_bytes())
            receipt = json.loads(run.stdout)
            self.assertEqual(receipt["schema_version"], "mathcase-visitor-lean-check-v1")
            self.assertEqual(receipt["scope"], "compiler_only")
            self.assertEqual(receipt["source_sha256"], hashlib.sha256(source).hexdigest())
            self.assertEqual(receipt["source_bytes"], len(source))
            self.assertEqual(receipt["source_name"], source_path.name)
            self.assertEqual(receipt["toolchain"], checker.TOOLCHAIN)
            self.assertIn("Lean (version", receipt["lean_version"])
            return run.returncode, receipt

    def test_starter_and_crlf_source(self):
        starter = Path(checker.__file__).resolve().parents[1] / "visitor-examples" / "MyCase.lean"
        source = starter.read_bytes().replace(b"\r\n", b"\n").replace(b"\n", b"\r\n")
        code, receipt = self.compile(source)
        self.assertEqual((code, receipt["status"], receipt["exit_code"]), (0, "compiler_accepted", 0))

    def test_wrong_proof_and_unfinished_proof(self):
        for source in [b"example : 1 = 2 := rfl\n", b"example : False := by sorry\n"]:
            with self.subTest(source=source):
                code, receipt = self.compile(source)
                self.assertEqual((code, receipt["status"]), (1, "compiler_rejected"))
                self.assertNotEqual(receipt["exit_code"], 0)
                self.assertIn("error", receipt["stdout"] + receipt["stderr"])

    def test_declared_assumption_has_compiler_only_scope(self):
        code, receipt = self.compile(b"axiom myAssumption : False\nexample : False := myAssumption\n")
        self.assertEqual((code, receipt["status"], receipt["scope"]), (0, "compiler_accepted", "compiler_only"))


class ToolchainFailureTests(unittest.TestCase):
    def test_missing_runtime_produces_a_distinct_status(self):
        with patch.object(checker, "installed_lean", side_effect=FileNotFoundError("elan unavailable")):
            receipt = checker.check_source(Path("MyCase.lean"), b"example : True := trivial\n")
        self.assertEqual(receipt["status"], "toolchain_error")
        self.assertIsNone(receipt["exit_code"])
        self.assertIn("elan unavailable", receipt["stderr"])


if __name__ == "__main__":
    unittest.main()
