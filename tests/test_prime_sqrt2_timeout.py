"""Focused coverage for bounded prime-to-square-root replay outcomes."""
import importlib.util
import contextlib
import io
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch


ROOT = Path(__file__).resolve().parents[1]


def load_module(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


prime = load_module("prime_sqrt2_replay", ROOT / "reproduction/prime-sqrt2-source-replay-v1/verify_prime_sqrt2.py")
launcher = load_module("public_case_launcher", ROOT / "scripts/run_public_case.py")


class PrimeSqrt2TimeoutTests(unittest.TestCase):
    def test_timeout_is_structured_and_never_a_pass(self):
        with patch.object(prime, "run", side_effect=subprocess.TimeoutExpired("lean", 30)):
            with patch.object(prime.time, "monotonic", side_effect=[10.0, 41.25]):
                with self.assertRaises(prime.StageTimeout) as caught:
                    prime.run_stage(["lean"], Path("."), {}, 30,
                                    "compile:MathCaseSqrtTwoInfiniteDescent")
        error = caught.exception
        self.assertEqual(error.stage, "compile:MathCaseSqrtTwoInfiniteDescent")
        self.assertEqual(error.limit_seconds, 30)
        self.assertAlmostEqual(error.elapsed_s, 31.25)

        with tempfile.TemporaryDirectory() as temp:
            receipt_path = Path(temp) / "parent-child.json"
            report = {"schema": "mathcase-public-prime-sqrt2-source-replay-v1",
                      "status": "RUNNING", "stages": {}}
            body = prime.record_failure(report, receipt_path, error)
            receipt = json.loads(receipt_path.read_text(encoding="utf-8"))
        self.assertEqual(receipt["status"], "TIMEOUT")
        self.assertEqual(receipt["stage"], "compile:MathCaseSqrtTwoInfiniteDescent")
        self.assertEqual(receipt["limit_seconds"], 30)
        self.assertEqual(receipt["elapsed_s"], 31.25)
        self.assertEqual(receipt["exit_code"], 124)
        self.assertNotEqual(receipt["status"], "PASS")
        self.assertIn('"status": "TIMEOUT"', body)

    def test_launcher_forwards_timeout_override(self):
        from argparse import Namespace
        with tempfile.TemporaryDirectory() as temp:
            command = launcher.commands(
                "prime-sqrt2",
                Namespace(mathlib=Path(temp), bootstrap=None, stage_timeout=75, source=None),
                Path(temp) / "output",
            )[0]
        self.assertIn("--stage-timeout", command)
        self.assertEqual(command[command.index("--stage-timeout") + 1], "75")

    def test_cli_rejects_nonpositive_or_misapplied_timeout(self):
        with patch.object(sys, "argv", ["verify_prime_sqrt2.py", "--mathlib", ".",
                                         "--stage-timeout", "0"]):
            with contextlib.redirect_stderr(io.StringIO()):
                with self.assertRaises(SystemExit) as direct:
                    prime.main()
        self.assertEqual(direct.exception.code, 2)

        with contextlib.redirect_stderr(io.StringIO()):
            with self.assertRaises(SystemExit) as routed:
                launcher.main(["collatz", "--stage-timeout", "60"], root=ROOT)
        self.assertEqual(routed.exception.code, 2)

    def test_timeout_and_expected_rejection_are_distinct(self):
        with tempfile.TemporaryDirectory() as temp:
            output = Path(temp)
            receipt_path = output / "parent-child.json"
            receipt_path.write_text(json.dumps({
                "status": "TIMEOUT", "stage": "compile:MathCaseSqrtTwoInfiniteDescent",
                "limit_seconds": 600, "elapsed_s": 600.1,
            }), encoding="utf-8")
            self.assertEqual(launcher.classify_step("prime-sqrt2", 124, output),
                             ("timed out", 124))
            receipt_path.write_text(json.dumps({
                "status": "PASS", "dropped_primality_control": "REJECTED",
            }), encoding="utf-8")
            self.assertEqual(launcher.classify_step("prime-sqrt2", 0, output),
                             ("completed; negative control rejected as expected", 0))


if __name__ == "__main__":
    unittest.main()
