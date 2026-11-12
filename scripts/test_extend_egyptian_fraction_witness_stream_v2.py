from __future__ import annotations

import unittest
from fractions import Fraction
from pathlib import Path
import tempfile

from scripts.export_egyptian_fraction_witness_stream_v3 import export_bundle
from scripts.extend_egyptian_fraction_witness_stream_v2 import (
    MAX_TOTAL_OFFSET,
    run_extension,
    verify_receipt,
)


class EgyptianFractionWitnessStreamExtensionV2Tests(unittest.TestCase):
    def test_explicit_miss_stays_unresolved_and_receipt_reopens(self):
        with tempfile.TemporaryDirectory() as temporary:
            bundle = Path(temporary) / "bundle"
            base = export_bundle(1, 20, 4096, bundle)
            self.assertEqual(base["counts"]["not_found_within_bound"], 1)
            receipt = run_extension(bundle, MAX_TOTAL_OFFSET)
            self.assertEqual(receipt["status"], "PASS_BOUNDED_EXTENSION")
            self.assertEqual(receipt["base_bundle"]["miss_count"], 1)
            self.assertEqual(receipt["counts"]["witnesses_found"], 0)
            self.assertEqual(receipt["counts"]["still_not_found_within_extension_cap"], 1)
            self.assertEqual(receipt["items"][0]["n"], 193)
            self.assertEqual(receipt["items"][0]["status"], "NOT_FOUND_AFTER_EXTENSION_CAP")
            self.assertIsNone(receipt["items"][0]["exact_identity"])
            verify_receipt(receipt, bundle)

    def test_offset_bounds_fail_closed(self):
        for bound in (4_096, MAX_TOTAL_OFFSET + 1):
            with self.subTest(bound=bound), self.assertRaisesRegex(ValueError, "max_total_offset"):
                run_extension(Path("unused-test-bundle"), bound)


if __name__ == "__main__":
    unittest.main()
