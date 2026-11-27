"""Keep the six-of-ten Collatz route explicit and receipt-checked."""
from argparse import Namespace
import contextlib
import importlib.util
import io
from pathlib import Path
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("public_case_launcher", ROOT / "scripts/run_public_case.py")
launcher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(launcher)


class SixOfTenDispatchTests(unittest.TestCase):
    def test_catalog_states_bounded_scope(self):
        description = launcher.CATALOG["collatz-six-of-ten"]
        self.assertIn("bounded", description)
        self.assertIn("Lean 4.33.1", description)
        self.assertIn("not a convergence proof", description)

    def test_route_replays_then_verifies_the_generated_receipt(self):
        lean = Path("Lean-4.33.1/bin/lean.exe")
        args = Namespace(lean=lean)
        output = Path("out") / "run"
        commands = launcher.commands("collatz-six-of-ten", args, output)
        self.assertEqual(len(commands), 2)
        self.assertEqual(commands[0][0], "reproduction/collatz-six-of-ten-lean-v1/replay.py")
        self.assertEqual(commands[0][1:3], ("--lean", lean))
        self.assertEqual(commands[0][3], "--output-dir")
        self.assertEqual(Path(commands[0][4]), output / "lean-replay")
        self.assertEqual(commands[1][0], "reproduction/collatz-six-of-ten-lean-v1/verify_receipt.py")
        self.assertEqual(Path(commands[1][2]), output / "lean-replay/replay-receipt.json")
        self.assertEqual(Path(commands[1][-1]), output / "lean-replay/verification.json")

    def test_requires_lean_only_for_this_route(self):
        error = io.StringIO()
        with contextlib.redirect_stderr(error), self.assertRaises(SystemExit):
            launcher.main(["collatz-six-of-ten"])
        self.assertIn("needs --lean PATH_TO_LEAN_4_33_1", error.getvalue())

        error = io.StringIO()
        with contextlib.redirect_stderr(error), self.assertRaises(SystemExit):
            launcher.main(["collatz", "--lean", "Lean-4.33.1/bin/lean.exe"])
        self.assertIn("--lean applies only to collatz-six-of-ten", error.getvalue())


if __name__ == "__main__":
    unittest.main()
