import json
import tempfile
import unittest
from pathlib import Path

import check_input


class InputReceiptTests(unittest.TestCase):
    def test_examples_and_scope(self):
        positive = check_input.evaluate(881, 3)
        self.assertEqual(positive["status"], "EXISTS_WITHIN_CAP")
        self.assertEqual(positive["witness"]["denominators"], [228, 10572, 16739])
        negative = check_input.evaluate(883, 3)
        self.assertEqual(negative["status"], "NO_TRIPLE_WITHIN_CAP")
        self.assertEqual(negative["cap"], 16777)
        self.assertEqual(check_input.evaluate(884, 3)["status"], "UNSUPPORTED_INPUT")
        self.assertEqual(check_input.evaluate(31, 0)["status"], "UNSUPPORTED_INPUT")
        self.assertIn(check_input.evaluate(887, 3)["status"], {"EXISTS_WITHIN_CAP", "NO_TRIPLE_WITHIN_CAP"})

    def test_receipt_replay_and_tamper(self):
        receipt = check_input.evaluate(881, 3)
        self.assertEqual(check_input.verify(receipt), (True, "REPLAY_MATCH"))
        receipt["witness"]["denominators"][0] += 1
        self.assertEqual(check_input.verify(receipt), (False, "RECEIPT_DIGEST_MISMATCH"))


if __name__ == "__main__":
    unittest.main()
