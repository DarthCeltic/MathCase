from pathlib import Path
import importlib.util
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("public_case_launcher", ROOT / "scripts/run_public_case.py")
launcher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(launcher)


def common_args():
    return type("Args", (), {"case_packet": None, "source": None, "lake_project": None,
                              "mathlib": None, "bootstrap": None, "stage_timeout": None,
                              "lean": None})()


class GeometryMidpointDispatchTests(unittest.TestCase):
    def test_catalog_explains_the_bounded_case(self):
        self.assertIn("normalized, axis-aligned right-triangle coordinate model", launcher.CATALOG["geometry-midpoint"])

    def test_route_uses_the_package_replay(self):
        with tempfile.TemporaryDirectory() as temp:
            output = Path(temp) / "run"
            command = launcher.commands("geometry-midpoint", common_args(), output)[0]
        self.assertEqual(command[0], "reproduction/coordinate-right-triangle-midpoint-v1/replay.py")
        self.assertEqual(command[1], "--output-dir")
        self.assertEqual(Path(command[2]), output / "lean-replay")

    def test_route_forwards_stage_timeout(self):
        with tempfile.TemporaryDirectory() as temp:
            output = Path(temp) / "run"
            args = type("Args", (), {"stage_timeout": 75})()
            command = launcher.commands("geometry-midpoint", args, output)[0]
        self.assertEqual(command[-2:], ("--stage-timeout", "75"))

    def test_route_forwards_explicit_lean(self):
        with tempfile.TemporaryDirectory() as temp:
            output = Path(temp) / "run"
            args = type("Args", (), {"stage_timeout": None, "lean": Path(temp) / "lean.exe"})()
            command = launcher.commands("geometry-midpoint", args, output)[0]
        self.assertEqual(command[1:3], ("--lean", str(Path(temp) / "lean.exe")))


if __name__ == "__main__":
    unittest.main()
