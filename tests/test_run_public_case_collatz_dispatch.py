"""Keep the reviewed Collatz action distinct from the combined exploratory check."""
from argparse import Namespace
import importlib.util
from pathlib import Path
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("public_case_launcher", ROOT / "scripts/run_public_case.py")
launcher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(launcher)


def common_args():
    return Namespace(case_packet=None, source=None, lake_project=None,
                     mathlib=None, bootstrap=None, stage_timeout=None)


class CollatzReplayDispatchTests(unittest.TestCase):
    def test_reviewed_case_uses_scoped_runner(self):
        with tempfile.TemporaryDirectory() as temp:
            output = Path(temp) / "target"
            command = launcher.commands("collatz-parity-envelope-23-14", common_args(), output)[0]
        self.assertEqual(command[0], "reproduction/collatz-parity-envelopes-2026-11-v1/replay-scoped-validation-v2.py")
        self.assertEqual(command[1], "--output")
        self.assertEqual(Path(command[2]), output / "lean-replay")

    def test_combined_route_remains_explicit(self):
        with tempfile.TemporaryDirectory() as temp:
            output = Path(temp) / "combined"
            command = launcher.commands("collatz-parity-envelopes-all", common_args(), output)[0]
        self.assertEqual(command[0], "reproduction/collatz-parity-envelopes-2026-11-v1/replay.py")
        self.assertEqual(command[1], "--output")
        self.assertEqual(Path(command[2]), output / "lean-replay")


if __name__ == "__main__":
    unittest.main()
