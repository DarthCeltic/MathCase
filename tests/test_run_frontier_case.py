"""Fast registration/dry-run tests; these never start mathematical searches."""
from __future__ import annotations

import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
RUNNER = ROOT / "scripts" / "run_frontier_case.py"
EXPECTED = {
    "vdw-2-7",
    "ws-5",
    "ws-5-r10",
    "ramsey-3-3-3-3",
    "vdw-5-3",
    "egyptian-28k-21",
    "ramsey-6-6",
}


class FrontierRunnerTests(unittest.TestCase):
    def test_list_registers_exactly_seven_cases(self) -> None:
        result = subprocess.run(
            [sys.executable, str(RUNNER), "list"], cwd=ROOT,
            capture_output=True, text=True, check=True,
        )
        ids = {line.split()[0] for line in result.stdout.splitlines() if line.strip()}
        self.assertEqual(ids, EXPECTED)

    def test_dry_run_prints_plan_without_leaving_run_files(self) -> None:
        with tempfile.TemporaryDirectory(prefix="mathcase-frontier-test-") as temp:
            result = subprocess.run(
                [sys.executable, str(RUNNER), "egyptian-28k-21", "--dry-run", "--out", temp],
                cwd=ROOT, capture_output=True, text=True, check=True,
            )
            self.assertIn("Lean identity check", result.stdout)
            self.assertNotIn("PASS", result.stdout)
            self.assertIn("<new-run-folder>", result.stdout)
            self.assertNotIn(temp, result.stdout)
            self.assertEqual(list(Path(temp).iterdir()), [])

    def test_ws5_radius_ten_dry_run_has_only_audit_and_bounded_solver(self) -> None:
        with tempfile.TemporaryDirectory(prefix="mathcase-ws5-r10-test-") as temp:
            result = subprocess.run(
                [sys.executable, str(RUNNER), "ws-5-r10", "--dry-run", "--out", temp],
                cwd=ROOT, capture_output=True, text=True, check=True,
            )
            self.assertIn("verify_public_artifact.py", result.stdout)
            self.assertIn("run_repair_query.py", result.stdout)
            self.assertIn("mathcase-smt-isolated:5.3.1.0", result.stdout)
            self.assertNotIn(temp, result.stdout)
            self.assertEqual(list(Path(temp).iterdir()), [])


if __name__ == "__main__":
    unittest.main()
