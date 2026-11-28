from pathlib import Path
import importlib.util
import tempfile
import unittest


ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("public_case_launcher", ROOT / "scripts/run_public_case.py")
launcher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(launcher)


class PrimeEnvelopeDispatchTests(unittest.TestCase):
    def test_catalog_and_two_step_commands_are_explicit(self):
        self.assertIn("source-bound", launcher.CATALOG["prime-envelope"])
        with tempfile.TemporaryDirectory() as temp:
            output = Path(temp) / "prime"
            class Args:
                prime = 881
                offset = 3
            commands = launcher.commands("prime-envelope", Args(), output)
        self.assertEqual(len(commands), 2)
        self.assertEqual(commands[0][0], "research/number-theory/egyptian-fractions/prime-envelope-v1/check_input.py")
        self.assertEqual(commands[0][1:5], ("--prime", "881", "--offset", "3"))
        self.assertEqual(commands[0][5], "--out")
        self.assertEqual(commands[0][6], output / "result.json")
        self.assertEqual(commands[1], (
            "research/number-theory/egyptian-fractions/prime-envelope-v1/check_input.py",
            "--verify", output / "result.json"))


if __name__ == "__main__":
    unittest.main()
