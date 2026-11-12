from __future__ import annotations

import array
import io
import unittest

from scripts.sample_collatz_m31_unresolved_structure import (
    _affine_certificate_step,
    _hash_index,
    _select_uniform_unresolved_odd_classes,
    iter_json_array_objects,
)


class SampleCollatzM31UnresolvedStructureTests(unittest.TestCase):
    def test_streams_array_across_small_chunks(self) -> None:
        rows = list(iter_json_array_objects(io.StringIO('{"other":0,"families":[{"r":1},{"r":3}]}'), "families", chunk_size=3))
        self.assertEqual(rows, [{"r": 1}, {"r": 3}])

    def test_hash_index_is_bounded_and_repeatable(self) -> None:
        first = [_hash_index("seed", i, 16) for i in range(20)]
        second = [_hash_index("seed", i, 16) for i in range(20)]
        self.assertEqual(first, second)
        self.assertTrue(all(0 <= value < 16 for value in first))

    def test_sample_excludes_covered_and_known_family_classes(self) -> None:
        covered = bytearray(8)
        covered[3] = 1
        families = array.array("Q", [5, 13])
        sample, draws = _select_uniform_unresolved_odd_classes(covered, families, 2, "small-test")
        self.assertEqual(len(sample), 2)
        self.assertEqual(len(set(sample)), 2)
        self.assertGreaterEqual(draws, len(sample))
        self.assertTrue(all(value & 1 for value in sample))
        self.assertTrue(all(not covered[value & 7] for value in sample))
        self.assertTrue(all(value not in families for value in sample))

    def test_affine_certificate_returns_none_for_known_test_residue(self) -> None:
        self.assertIsNone(_affine_certificate_step(1, max_steps=1))


if __name__ == "__main__":
    unittest.main()
