from __future__ import annotations

import hashlib
import json
import tempfile
import unittest
from pathlib import Path

from scripts.export_egyptian_fraction_witness_stream_v3 import export_bundle
from scripts.verify_egyptian_fraction_witness_stream_v3 import verify_bundle


def _canonical_json_line(value: dict) -> bytes:
    return (json.dumps(value, sort_keys=True, separators=(",", ":")) + "\n").encode("utf-8")


def _refresh_stream_hash(manifest_path: Path, stream_name: str, stream_path: Path) -> None:
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    manifest["streams"][stream_name]["sha256"] = hashlib.sha256(stream_path.read_bytes()).hexdigest()
    manifest_path.write_text(json.dumps(manifest, sort_keys=True, indent=2) + "\n", encoding="utf-8", newline="\n")


class EgyptianFractionWitnessStreamV3Tests(unittest.TestCase):
    def _new_bundle(self, parent: Path) -> Path:
        bundle = parent / "bundle"
        export_bundle(1, 1_500, 4096, bundle)
        return bundle

    def test_stream_reopens_with_independent_coverage_and_identity_checks(self):
        with tempfile.TemporaryDirectory() as temporary:
            result = verify_bundle(self._new_bundle(Path(temporary)))
        self.assertEqual(result["status"], "PASS_ALL_EXPORTED_WITNESSES_AND_CANDIDATE_COVERAGE")
        self.assertGreater(result["candidate_count"], 0)
        self.assertEqual(result["candidate_count"], result["witness_count"] + result["not_found_within_bound"])

    def test_export_refuses_to_overwrite_nonempty_directory(self):
        with tempfile.TemporaryDirectory() as temporary:
            bundle = Path(temporary) / "bundle"
            bundle.mkdir()
            sentinel = bundle / "keep.txt"
            sentinel.write_text("preserve", encoding="utf-8")
            with self.assertRaisesRegex(FileExistsError, "refusing to overwrite"):
                export_bundle(1, 25, 4096, bundle)
            self.assertEqual(sentinel.read_text(encoding="utf-8"), "preserve")

    def test_stale_witness_digest_is_rejected(self):
        with tempfile.TemporaryDirectory() as temporary:
            bundle = self._new_bundle(Path(temporary))
            witness_path = bundle / "witnesses.jsonl"
            witness_path.write_bytes(witness_path.read_bytes() + b"\n")
            with self.assertRaisesRegex(ValueError, "witnesses stream digest differs"):
                verify_bundle(bundle)

    def test_rehashed_false_witness_is_rejected_by_integer_identity(self):
        with tempfile.TemporaryDirectory() as temporary:
            bundle = self._new_bundle(Path(temporary))
            manifest_path = bundle / "run-manifest.json"
            manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
            results_path = bundle / "results.jsonl"
            result_rows = [json.loads(line) for line in results_path.read_text(encoding="utf-8").splitlines()]
            witnesses_path = bundle / "witnesses.jsonl"
            witness_rows = [json.loads(line) for line in witnesses_path.read_text(encoding="utf-8").splitlines()]
            result = next(row for row in result_rows if row["status"] == "WITNESS_FOUND")
            witness = next(row for row in witness_rows if row["n"] == result["n"])
            result["denominators"][2] += 1
            witness["z"] += 1
            results_path.write_bytes(b"".join(_canonical_json_line(row) for row in result_rows))
            witnesses_path.write_bytes(b"".join(_canonical_json_line(row) for row in witness_rows))
            manifest["streams"]["results"]["sha256"] = hashlib.sha256(results_path.read_bytes()).hexdigest()
            manifest["streams"]["witnesses"]["sha256"] = hashlib.sha256(witnesses_path.read_bytes()).hexdigest()
            manifest_path.write_bytes((json.dumps(manifest, sort_keys=True, indent=2) + "\n").encode("utf-8"))
            with self.assertRaisesRegex(ValueError, "exact Egyptian-fraction identity fails"):
                verify_bundle(bundle)

    def test_rehashed_missing_candidate_is_rejected_by_independent_sieve(self):
        with tempfile.TemporaryDirectory() as temporary:
            bundle = self._new_bundle(Path(temporary))
            candidate_path = bundle / "candidate-n.jsonl"
            candidate_lines = candidate_path.read_bytes().splitlines(keepends=True)
            candidate_path.write_bytes(b"".join(candidate_lines[1:]))
            _refresh_stream_hash(bundle / "run-manifest.json", "candidates", candidate_path)
            with self.assertRaisesRegex(ValueError, "candidate coverage or order differs"):
                verify_bundle(bundle)

    def test_extended_maximum_is_bounded_and_refuses_before_creating_output(self):
        with tempfile.TemporaryDirectory() as temporary:
            bundle = Path(temporary) / "bundle"
            with self.assertRaisesRegex(ValueError, "<= 1000000"):
                export_bundle(1_000_001, 1_000_001, 4096, bundle)
            self.assertFalse(bundle.exists())


if __name__ == "__main__":
    unittest.main()
