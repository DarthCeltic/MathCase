import shutil
from pathlib import Path
import tempfile
import unittest

from verify_ramsey_r55_public_bundle import validate

SOURCE = Path(__file__).resolve().parents[1] / "reproduction" / "ramsey-r55-lean-v1"


class RamseyBundleTests(unittest.TestCase):
    def test_lake_build_logs_and_public_files_have_different_scopes(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder) / "bundle"
            shutil.copytree(SOURCE, root, ignore=shutil.ignore_patterns(".lake"))
            private_log = root / ".lake" / "build" / "trace.log"
            private_log.parent.mkdir(parents=True)
            private_log.write_text("cache /home/runner/toolchain", encoding="utf-8")
            self.assertEqual(validate(root)["chunk_receipts"], 27)

            (root / "new-public-note.txt").write_text("author /home/runner", encoding="utf-8")
            with self.assertRaisesRegex(ValueError, "workstation path in bundle: new-public-note"):
                validate(root)


if __name__ == "__main__":
    unittest.main()
