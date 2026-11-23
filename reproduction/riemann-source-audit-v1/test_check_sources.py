import contextlib
import hashlib
import io
import json
import unittest
from unittest.mock import patch

import check_sources


class SourceCheckTest(unittest.TestCase):
    def setUp(self):
        self.ref = check_sources.Reference("fixture", "https://example.org",
                                           3, hashlib.sha256(b"abc").hexdigest())

    def test_reference_matches(self):
        self.assertEqual(check_sources.check(self.ref, lambda _: b"abc")["status"], "MATCH")

    def test_mutation_and_truncation_fail(self):
        for body in (b"abd", b"ab", b"abcd"):
            with self.subTest(body=body):
                self.assertEqual(check_sources.check(self.ref, lambda _: body)["status"], "MISMATCH")

    def test_unavailable_is_not_a_proof_verdict(self):
        with patch.object(check_sources, "fetch", side_effect=OSError("offline")):
            buffer = io.StringIO()
            with contextlib.redirect_stdout(buffer):
                self.assertEqual(check_sources.main(), 1)
        result = json.loads(buffer.getvalue())
        self.assertEqual(result["status"], "INCOMPLETE_OR_MISMATCH")
        self.assertTrue(all(row["status"] == "UNAVAILABLE" for row in result["files"]))
        self.assertFalse(result["proof_replayed_by_this_check"])
        self.assertFalse(result["statement_elaborated_by_this_check"])


if __name__ == "__main__":
    unittest.main()
