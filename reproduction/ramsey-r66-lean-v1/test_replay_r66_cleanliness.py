from __future__ import annotations
import json
from pathlib import Path
import tempfile
import unittest

import replay_r66

class CleanBuildGuardTests(unittest.TestCase):
    def manifest(self, root: Path) -> None:
        (root / 'source-manifest.json').write_text(json.dumps({'mathcase_sources':[{'path':'MathCase/R66/Foundation.lean'}]}), encoding='utf-8')

    def test_clean_case_build_tree_passes_and_mathlib_cache_is_allowed(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            root=Path(tmp)
            self.manifest(root)
            mathlib=root/'.lake'/'build'/'lib'/'lean'/'Mathlib'/'Data.olean'
            mathlib.parent.mkdir(parents=True)
            mathlib.write_bytes(b'cached mathlib')
            self.assertEqual(replay_r66.find_preexisting_mathcase_oleans(root), [])
            self.assertEqual(replay_r66.require_fresh_mathcase_outputs(root), [])

    def test_pinned_mathcase_olean_is_rejected_without_deletion(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            root=Path(tmp)
            self.manifest(root)
            output=root/'.lake'/'build'/'lib'/'lean'/'MathCase'/'R66'/'Foundation.olean'
            output.parent.mkdir(parents=True)
            output.write_bytes(b'preexisting')
            with self.assertRaisesRegex(RuntimeError, 'PREEXISTING_MATHCASE_OLEAN'):
                replay_r66.require_fresh_mathcase_outputs(root)
            self.assertEqual(output.read_bytes(), b'preexisting')

if __name__ == '__main__':
    unittest.main()
