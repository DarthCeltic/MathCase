"""Recheck the three public proof modules in a clean temporary directory."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import tempfile

BASE = Path(__file__).resolve().parent
MODULES = {
    "WordBound": ["twelve_of_twenty", "scaled_upper", "twenty_twelve_descent"],
    "WordOffset": ["affine_identity", "offset_upper", "twenty_twelve_offset"],
    "WordResidue": ["lift_residue", "residue_twelve_of_twenty"],
}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--lean", default="lean", help="Lean 4.33.1 executable")
    parser.add_argument("--output", type=Path, help="optional JSON receipt destination")
    options = parser.parse_args()
    executable = shutil.which(options.lean)
    if not executable:
        parser.error("Lean was not found. Supply --lean with the 4.33.1 executable.")
    executable = str(Path(executable).resolve())
    with tempfile.TemporaryDirectory(prefix="mathcase-word-") as name:
        workspace = Path(name)
        env = {**os.environ, "LEAN_PATH": name,
               "ELAN_TOOLCHAIN": "leanprover/lean4:v4.33.1"}
        def run(arguments):
            return subprocess.run([executable, *arguments], cwd=workspace, env=env,
                                  capture_output=True, encoding="utf-8", timeout=120)

        version = run(["--version"])
        if version.returncode or not re.search(r"\bversion 4\.33\.1\b", version.stdout):
            parser.error("This check requires Lean 4.33.1.")
        results = []
        for module, declarations in MODULES.items():
            source = BASE / (module + ".lean")
            shutil.copyfile(source, workspace / source.name)
            result = run(["-j", "1", "-o", module + ".olean", source.name])
            output = result.stdout + result.stderr
            expected = {f"'MathCase.Collatz.WordBound.{decl}' depends on axioms: [propext, Quot.sound]"
                        for decl in declarations}
            if result.returncode or set(output.splitlines()) != expected:
                raise SystemExit(f"{module} failed the proof or axiom check:\n{output}")
            results.append({"module": module, "exit": result.returncode,
                            "source_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
                            "axiom_audit": sorted(expected)})
    report = {"toolchain": version.stdout.strip(), "modules": results,
              "scope": "Count-conditioned 32-step descent, exact affine offset, and lifting to arithmetic progressions",
              "reproduction": "Clean temporary directory; only the three named .lean files copied in",
              "status": "passed"}
    text = json.dumps(report, indent=2) + "\n"
    if options.output:
        options.output.write_text(text, encoding="utf-8")
    print(text, end="")


if __name__ == "__main__":
    main()
