from __future__ import annotations

import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SCRIPT = ROOT / "tools" / "replay_pinned_shards_lake.py"


class LakeReplayPlanTests(unittest.TestCase):
    def run_worker(self, *args: str) -> subprocess.CompletedProcess[str]:
        return subprocess.run(
            [sys.executable, "-B", str(SCRIPT), *args],
            cwd=ROOT,
            text=True,
            capture_output=True,
            check=False,
            timeout=30,
        )

    def test_plan_checks_all_source_and_receipt_bindings_without_lean(self) -> None:
        result = self.run_worker("--plan-only")
        self.assertEqual(result.returncode, 0, result.stderr)
        payload = json.loads(result.stdout)
        self.assertEqual(payload["status"], "PLAN_PASS_NO_LEAN_RUN")
        self.assertEqual(payload["source_count"], 229)
        self.assertEqual(payload["receipt_count"], 229)
        self.assertEqual(payload["mathlib_commit"], "0df444a360eaa60ab8c11dca51a86af692955474")

    def test_replay_output_cannot_be_written_inside_candidate(self) -> None:
        forbidden = ROOT / "tests" / "__forbidden_lake_output__"
        self.assertFalse(forbidden.exists())
        result = self.run_worker("--output-dir", str(forbidden))
        self.assertEqual(result.returncode, 2)
        self.assertIn("outside the candidate package", result.stderr)
        self.assertFalse(forbidden.exists())

    def test_environment_preflight_records_zero_lean_calls(self) -> None:
        with tempfile.TemporaryDirectory(prefix="mathcase-lake-preflight-") as temporary:
            output = Path(temporary) / "attempt"
            result = self.run_worker(
                "--project-dir",
                str(ROOT / "project"),
                "--preflight-only",
                "--output-dir",
                str(output),
            )
            self.assertIn(result.returncode, (0, 2), result.stderr)
            events = [json.loads(line) for line in (output / "events.jsonl").read_text(encoding="utf-8").splitlines()]
            self.assertEqual(events[0]["event"], "attempt_started")
            self.assertIn(events[-1]["event"], ("preflight_passed", "preflight_failed"))
            self.assertEqual(events[-1]["lean_invocations"], 0)


if __name__ == "__main__":
    unittest.main()
