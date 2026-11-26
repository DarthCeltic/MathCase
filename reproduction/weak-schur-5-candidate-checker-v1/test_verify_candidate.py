import importlib.util
import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path

SPEC = importlib.util.spec_from_file_location("verify_candidate", Path(__file__).with_name("verify_candidate.py"))
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class CandidateVerifierTests(unittest.TestCase):
    def test_all_10712_distinct_addend_triples_are_counted(self):
        colors = [0] + [1] * 208
        conflicts = MODULE.find_conflicts(colors)
        self.assertEqual(len(conflicts), 10_712)
        self.assertEqual(conflicts[0], {"a": 1, "b": 2, "sum": 3, "color": 1})

    def test_repeated_addends_are_not_a_weak_schur_violation(self):
        colors = [0] + [2] * 208
        self.assertNotIn({"a": 1, "b": 1, "sum": 2, "color": 2}, MODULE.find_conflicts(colors))

    def test_damaged_control_exposes_1_plus_2_equals_3(self):
        colors = [0] + [2] * 208
        colors[1] = colors[2] = colors[3] = 1
        conflicts = MODULE.find_conflicts(colors)
        self.assertIn({"a": 1, "b": 2, "sum": 3, "color": 1}, conflicts)

    def test_cli_reports_conflicts_and_input_errors_with_distinct_exit_codes(self):
        script = Path(__file__).with_name("verify_candidate.py")
        with tempfile.TemporaryDirectory() as td:
            td = Path(td)
            candidate = td / "candidate.json"
            candidate.write_text(json.dumps({"colors_1_to_208": [1] * 208}), encoding="utf-8")
            conflict = subprocess.run([sys.executable, "-B", str(script), str(candidate)], capture_output=True, text=True)
            self.assertEqual(conflict.returncode, 1)
            self.assertEqual(json.loads(conflict.stdout)["conflict_count"], 10_712)
            malformed = td / "bad.json"
            malformed.write_text("[]", encoding="utf-8")
            bad = subprocess.run([sys.executable, "-B", str(script), str(malformed)], capture_output=True, text=True)
            self.assertEqual(bad.returncode, 2)
            self.assertEqual(json.loads(bad.stdout)["status"], "INPUT_ERROR")

    def test_rejects_wrong_length_and_non_integer_colors(self):
        with tempfile.TemporaryDirectory() as td:
            path = Path(td) / "candidate.json"
            path.write_text(json.dumps([1] * 207), encoding="utf-8")
            with self.assertRaisesRegex(ValueError, "exactly 208"):
                MODULE.load_candidate(path)
            path.write_text(json.dumps([1] * 207 + [True]), encoding="utf-8")
            with self.assertRaisesRegex(ValueError, "integer from 1 through 5"):
                MODULE.load_candidate(path)


if __name__ == "__main__":
    unittest.main()
