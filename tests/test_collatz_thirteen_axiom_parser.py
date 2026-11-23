"""Regression for wrapped Lean #print axioms output."""
import importlib.util
from pathlib import Path
import unittest

ROOT = Path(__file__).resolve().parents[1]
SCRIPT = ROOT / "reproduction/collatz-at-most-thirteen-of-twenty-one-v1/verify_at_most_thirteen.py"
spec = importlib.util.spec_from_file_location("collatz_thirteen_replay", SCRIPT)
replay = importlib.util.module_from_spec(spec)
spec.loader.exec_module(replay)


class WrappedAxiomParserTests(unittest.TestCase):
    def test_joins_continuations_before_exact_comparison(self):
        output = ("'MathCase.Collatz.WordBound.counted_at_most_thirteen_families' "
                  "depends on axioms: [propext,\n"
                  "  Classical.choice,\n"
                  "  Quot.sound]\n")
        self.assertEqual(replay.parse_axiom_reports(output), [
            "'MathCase.Collatz.WordBound.counted_at_most_thirteen_families' "
            "depends on axioms: [propext, Classical.choice, Quot.sound]"
        ])

    def test_keeps_adjacent_axiom_reports_separate(self):
        output = ("'A.one' depends on axioms: [propext, Quot.sound]\n"
                  "'A.two' depends on axioms: [propext,\n"
                  "  Classical.choice, Quot.sound]\n")
        reports = replay.parse_axiom_reports(output)
        self.assertEqual(len(reports), 2)
        self.assertTrue(reports[1].endswith("[propext, Classical.choice, Quot.sound]"))


if __name__ == "__main__":
    unittest.main()
