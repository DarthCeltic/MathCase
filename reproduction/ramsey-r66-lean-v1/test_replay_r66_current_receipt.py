from __future__ import annotations
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest

import replay_r66

PACKAGE = Path(replay_r66.__file__).resolve().parent


def copy_package(destination: Path) -> None:
    shutil.copytree(
        PACKAGE,
        destination,
        ignore=shutil.ignore_patterns('.git', '.lake', '__pycache__'),
    )


class CurrentReceiptTests(unittest.TestCase):
    def test_current_lock_receipt_and_audit_are_bound(self) -> None:
        replay_r66.verify_inputs()
        replay_r66.verify_current_recorded()

    def test_changed_audit_output_is_rejected(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            copy = Path(tmp) / 'package'
            copy_package(copy)
            previous = replay_r66.ROOT
            replay_r66.ROOT = copy
            try:
                audit = copy / 'verification' / 'current-lock-audit-r2.txt'
                audit.write_bytes(audit.read_bytes() + b'changed')
                with self.assertRaisesRegex(RuntimeError, 'CURRENT_RECEIPT_FILE_HASH_MISMATCH: audit_output'):
                    replay_r66.verify_current_recorded()
            finally:
                replay_r66.ROOT = previous

    def test_historical_receipt_is_preserved_as_a_distinct_lock(self) -> None:
        replay_r66.verify_historical_receipt()

    def test_utf8_console_handles_warning_under_cp1252_environment(self) -> None:
        env = os.environ.copy()
        env['PYTHONIOENCODING'] = 'cp1252'
        env['PYTHONUTF8'] = '0'
        code = "import replay_r66; replay_r66.configure_utf8_console(); print('⚠')"
        completed = subprocess.run(
            [sys.executable, '-c', code],
            cwd=PACKAGE,
            env=env,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            check=False,
        )
        self.assertEqual(completed.returncode, 0, completed.stderr.decode('utf-8', errors='replace'))
        self.assertEqual(completed.stdout.decode('utf-8').splitlines(), ['⚠'])


if __name__ == '__main__':
    unittest.main()
