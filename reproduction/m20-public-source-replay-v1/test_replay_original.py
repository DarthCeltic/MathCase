import json
import tempfile
import unittest
from pathlib import Path

from replay_original import atomic_json


class AtomicStatusTests(unittest.TestCase):
    def test_atomic_json_writes_valid_status_and_leaves_no_fixed_temp(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / "status.json"
            atomic_json(path, {"status": "RUNNING", "count": 0})
            self.assertEqual(json.loads(path.read_text(encoding="utf-8"))["status"], "RUNNING")
            self.assertEqual(list(Path(tmp).iterdir()), [path])


if __name__ == "__main__":
    unittest.main()
