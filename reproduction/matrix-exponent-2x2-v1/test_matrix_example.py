import json
import subprocess
import sys
import unittest
from pathlib import Path
import check_matrix_example as example

ROOT = Path(__file__).resolve().parent

class MatrixExampleTests(unittest.TestCase):
    def test_ordinary_and_strassen_match(self):
        data = json.loads((ROOT / 'worked-example.json').read_text(encoding='utf-8'))
        ordinary, oc = example.ordinary(data['a'], data['b'])
        fast, sc, products = example.strassen(data['a'], data['b'])
        self.assertEqual(ordinary, [[19, 22], [43, 50]])
        self.assertEqual(fast, ordinary)
        self.assertEqual((oc.multiplications, oc.additions_subtractions), (8, 4))
        self.assertEqual((sc.multiplications, sc.additions_subtractions), (7, 18))
        self.assertEqual(products, [-2, 24, 35, 8, 65, -30, -22])

    def test_wrong_control_fails(self):
        result = subprocess.run([sys.executable, str(ROOT / 'check_matrix_example.py'), '--wrong-control'], capture_output=True, text=True)
        self.assertEqual(result.returncode, 1, result.stdout + result.stderr)
        self.assertIn('FAIL:', result.stdout)

    def test_package_manifest_and_hygiene(self):
        result = subprocess.run([sys.executable, str(ROOT / 'verify_package.py')], capture_output=True, text=True)
        self.assertEqual(result.returncode, 0, result.stdout + result.stderr)

    def test_upstream_pins_are_recorded(self):
        audit = json.loads((ROOT / 'source-audit.json').read_text(encoding='utf-8'))
        self.assertEqual(audit['upstream_commit'], '3344da59991ed94f9ba711217b29c1d760badfa6')
        paths = {row['path'] for row in audit['files']}
        self.assertIn('lean/OAI/LinearAlgebra/SpectralBooks/ExactExponent.lean', paths)
        self.assertIn('lean/ComparatorChallenges/MatrixExponent.lean', paths)

if __name__ == '__main__':
    unittest.main()
