import copy
import json
import unittest
from pathlib import Path

from verify_obstruction import verify, verify_record

class TestCertificates(unittest.TestCase):
    def setUp(self):
        self.packet = json.loads(Path(__file__).with_name("certificates.json").read_bytes())
        self.first = copy.deepcopy(self.packet["certificates"][0])

    def test_full_coverage(self):
        result = verify(self.packet)
        self.assertEqual(result["translations"], 617)
        self.assertEqual(result["translations_by_independent_free_cell_count"], {14: 2, 20: 615})
        self.assertEqual(result["sum_of_labeled_assignments"], 644907008)

    def test_flipped_forced_color_is_rejected(self):
        self.first["forced_color"] ^= 1
        with self.assertRaisesRegex(ValueError, "wrong color"):
            verify_record(self.first)

    def test_extra_free_points_are_rejected(self):
        self.first["forcing_progressions"][0] = [self.first["residue"], 617]
        with self.assertRaisesRegex(ValueError, "additional free point"):
            verify_record(self.first)

    def test_duplicate_shift_is_rejected(self):
        self.packet["certificates"][-1] = self.first
        with self.assertRaisesRegex(ValueError, "duplicate translation"):
            verify(self.packet)

if __name__ == "__main__":
    unittest.main()
