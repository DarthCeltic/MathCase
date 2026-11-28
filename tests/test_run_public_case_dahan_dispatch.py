from pathlib import Path
import importlib.util
import tempfile
import unittest


ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("public_case_launcher", ROOT / "scripts/run_public_case.py")
launcher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(launcher)


class DahanReplayDispatchTests(unittest.TestCase):
    def test_catalog_states_finite_scope(self):
        description = launcher.CATALOG["dahan-theorem39-500000"]
        self.assertIn("500,000", description)
        self.assertIn("finite", description)

    def test_dispatch_runs_generation_then_independent_audit(self):
        with tempfile.TemporaryDirectory() as temp:
            output = Path(temp) / "dahan"
            commands = launcher.commands("dahan-theorem39-500000", None, output)
        self.assertEqual(len(commands), 2)
        self.assertEqual(commands[0][0], "research/number-theory/egyptian-fractions/dahan-theorem39-extension-200000-v1/check_theorem39_extended.py")
        self.assertEqual(commands[0][1:5], ("--count", "500000", "--pair-bound", "40"))
        self.assertEqual(commands[0][5], "--output")
        self.assertEqual(commands[0][6], output / "full-result.json")
        self.assertEqual(commands[1][0], "research/number-theory/egyptian-fractions/dahan-theorem39-extension-200000-v1/audit_extended.py")
        self.assertEqual(commands[1][1], output / "full-result.json")


if __name__ == "__main__":
    unittest.main()
