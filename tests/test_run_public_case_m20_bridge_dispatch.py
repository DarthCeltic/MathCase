import importlib.util
from pathlib import Path
import unittest


ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location(
    "public_case_launcher", ROOT / "scripts/run_public_case.py"
)
LAUNCHER = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(LAUNCHER)


class M20BridgeDispatchTests(unittest.TestCase):
    def test_catalog_names_the_finite_bridge_and_its_limit(self):
        description = LAUNCHER.CATALOG["collatz-m20-twelve-of-twenty-bridge"]
        self.assertIn("2,652", description)
        self.assertIn("no Lean run", description)

    def test_launcher_uses_the_canonical_bridge_checker(self):
        output = ROOT / "unused-test-output"
        command = LAUNCHER.commands("collatz-m20-twelve-of-twenty-bridge", None, output)
        self.assertEqual(len(command), 1)
        self.assertEqual(
            command[0][0],
            "reproduction/collatz-m20-twelve-of-twenty-bridge-v1/verify_bridge.py",
        )
        self.assertEqual(command[0][1], "--output")


if __name__ == "__main__":
    unittest.main()
