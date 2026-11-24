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

    def check_packet(self, statement, target, source, theorem_name="truth"):
        packet = {
            "schema_version": "mathcase-visitor-case-v2",
            "title": "Focused target check",
            "statement": statement,
            "formal_target": target,
            "theorem_name": theorem_name,
            "source": source,
            "filename": "FocusedCase.lean",
        }
        with tempfile.TemporaryDirectory() as temp:
            packet_path = Path(temp) / "FocusedCase.mathcase.json"
            destination = Path(temp) / "check.json"
            packet_path.write_text(json.dumps(packet), encoding="utf-8")
            run = subprocess.run(
                [sys.executable, checker.__file__, "--case-packet", packet_path,
                 "--receipt", destination],
                capture_output=True, timeout=checker.TIMEOUT_SECONDS + 60,
            )
            self.assertEqual(run.stderr, b"")
            self.assertEqual(run.stdout, destination.read_bytes())
            receipt = json.loads(run.stdout)
            self.assertEqual(receipt["schema_version"], "mathcase-visitor-lean-check-v2")
            self.assertEqual(receipt["scope"], "target_and_axioms")
            self.assertEqual(receipt["source_sha256"], hashlib.sha256(source.encode()).hexdigest())
            self.assertEqual(receipt["statement_sha256"], hashlib.sha256(statement.encode()).hexdigest())
            self.assertEqual(receipt["formal_target_sha256"], hashlib.sha256(target.encode()).hexdigest())
            self.assertEqual(receipt["generated_input_sha256"], hashlib.sha256(
                checker.generated_target_check(source.encode(), target, theorem_name)[1]).hexdigest())
            self.assertEqual(receipt["toolchain"], checker.TOOLCHAIN)
            return run.returncode, receipt

    def test_exact_target_accepted_and_axioms_reported(self):
        code, receipt = self.check_packet(
            "Every natural number equals itself.", "∀ n : Nat, n = n",
            "theorem truth : ∀ n : Nat, n = n := by\n  intro n\n  rfl\n",
        )
        self.assertEqual((code, receipt["status"], receipt["exit_code"]), (0, "target_accepted", 0))
        self.assertEqual(receipt["axiom_audit_status"], "reported")
        self.assertIn(receipt["axiom_names"], ([], ["propext"]))
        self.assertTrue(receipt["stdout_sha256"])
        self.assertTrue(receipt["stderr_sha256"])

    def test_workbench_counterexample_starter_matches_its_exact_target(self):
        code, receipt = self.check_packet(
            "A composite number can divide a square without dividing its root: 4 divides 2², but 4 does not divide 2.",
            "(4 : Nat) ∣ 2 ^ 2 ∧ ¬ (4 : Nat) ∣ 2",
            "theorem composite_divisor_counterexample : (4 : Nat) ∣ 2 ^ 2 ∧ ¬ (4 : Nat) ∣ 2 := by\n  decide\n",
            "composite_divisor_counterexample",
        )
        self.assertEqual((code, receipt["status"], receipt["axiom_audit_status"]),
                         (0, "target_accepted", "reported"))
        self.assertIn(receipt["axiom_names"], ([], ["propext"]))

    def test_wrong_exact_target_is_rejected(self):
        code, receipt = self.check_packet(
            "Every natural number equals itself.", "∀ n : Nat, n + 1 = n",
            "theorem truth : ∀ n : Nat, n = n := by\n  intro n\n  rfl\n",
        )
        self.assertEqual((code, receipt["status"]), (1, "target_rejected"))
        self.assertNotEqual(receipt["exit_code"], 0)
        self.assertIn("error", receipt["stdout"] + receipt["stderr"])
        self.assertEqual(receipt["axiom_audit_status"], "reported")
        self.assertIn("sorryAx", receipt["axiom_names"])

    def test_axiom_is_reported_not_hidden(self):
        code, receipt = self.check_packet(
            "False follows from the declared assumption.", "False",
            "axiom localAssumption : False\ntheorem truth : False := localAssumption\n",
        )
        self.assertEqual((code, receipt["status"]), (0, "target_accepted"))
        self.assertEqual(receipt["axiom_audit_status"], "reported")
        self.assertIn("localAssumption", receipt["axiom_names"])

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
        self.assertEqual(len(receipt["stderr_sha256"]), 64)

    def test_compile_timeout_is_distinct_and_keeps_output_hashes(self):
        timeout = subprocess.TimeoutExpired("lean", checker.TIMEOUT_SECONDS, output=b"partial", stderr=b"waiting")
        with patch.object(checker, "installed_lean", return_value=Path("lean")), \
                patch.object(checker, "compiler_command", return_value=["lean", *checker.COMPILER_FLAGS]), \
                patch.object(checker, "compiler_version", return_value="Lean (version 4.33.1, test)"), \
                patch.object(checker.subprocess, "run", side_effect=timeout):
            receipt = checker.check_source(Path("MyCase.lean"), b"example : True := trivial\n")
        self.assertEqual(receipt["status"], "timeout")
        self.assertIsNone(receipt["exit_code"])
        self.assertEqual(receipt["stdout_sha256"], hashlib.sha256(b"partial").hexdigest())
        self.assertEqual(receipt["stderr_sha256"], hashlib.sha256(b"waiting").hexdigest())

    def test_non_object_packet_is_reported_as_input_error(self):
        with tempfile.TemporaryDirectory() as temp:
            path = Path(temp) / "bad.json"
            with self.assertRaises(ValueError):
                checker.validate_case_packet(path, b"[]")

    def test_target_wrapper_name_avoids_source_collision(self):
        source = b"theorem MathCaseVisitorTarget_0000000000000000 : True := trivial\n"
        with patch.object(checker, "digest", side_effect=["0" * 64, "1" * 64]):
            name, generated = checker.generated_target_check(source, "True", "existing")
        self.assertEqual(name, "MathCaseVisitorTarget_1111111111111111")
        self.assertNotIn(name.encode(), source)
        self.assertIn(name.encode(), generated)


if __name__ == "__main__":
    unittest.main()
