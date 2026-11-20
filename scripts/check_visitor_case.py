"""Compile an owner's Lean source with the installed public MathCase toolchain."""

import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile


PIN_FILE = Path(__file__).resolve().parents[1] / "proofs" / "r0b" / "lean-toolchain"
TOOLCHAIN = PIN_FILE.read_text(encoding="utf-8").strip()
COMPILER_FLAGS = ["-DwarningAsError=true", "--stdin"]
TIMEOUT_SECONDS = 120


def decoded(raw):
    return (raw or b"").decode("utf-8", errors="replace")


def installed_lean():
    # elan run uses an already-installed toolchain unless given --install.
    prefix = subprocess.run(
        ["elan", "run", TOOLCHAIN, "lean", "--print-prefix"],
        stdin=subprocess.DEVNULL, capture_output=True, check=True, timeout=30,
    )
    leaf = "lean.exe" if os.name == "nt" else "lean"
    return Path(os.fsdecode(prefix.stdout.strip())) / "bin" / leaf


def check_source(source_path, source):
    receipt = {
        "schema_version": "mathcase-visitor-lean-check-v1",
        "scope": "compiler_only",
        "scope_note": "Compiler acceptance can include declared axioms. This check records no dependency or axiom audit.",
        "checked_at_utc": datetime.now(timezone.utc).isoformat(),
        "source_name": source_path.name,
        "source_bytes": len(source),
        "source_sha256": hashlib.sha256(source).hexdigest(),
        "toolchain": TOOLCHAIN,
        "lean_version": None,
        "command": ["lean", *COMPILER_FLAGS],
        "status": "toolchain_error",
        "exit_code": None,
        "stdout": "",
        "stderr": "",
    }
    try:
        lean = installed_lean()
        version = subprocess.run(
            [lean, "--version"], stdin=subprocess.DEVNULL,
            capture_output=True, check=True, timeout=30,
        )
        receipt["lean_version"] = decoded(version.stdout).strip()
        expected = TOOLCHAIN.split(":v")[-1]
        if not receipt["lean_version"].startswith(f"Lean (version {expected},"):
            receipt["stderr"] = f"Expected the installed release {TOOLCHAIN}."
            return receipt
        # Supply the bytes already hashed, even if the editor changes the file mid-check.
        result = subprocess.run(
            [lean, *COMPILER_FLAGS], cwd=source_path.parent, input=source,
            capture_output=True, timeout=TIMEOUT_SECONDS,
        )
    except subprocess.CalledProcessError as exc:
        receipt["stdout"] = decoded(exc.stdout)
        receipt["stderr"] = decoded(exc.stderr) or str(exc)
    except OSError as exc:
        receipt["stderr"] = str(exc)
    except subprocess.TimeoutExpired as exc:
        receipt.update(status="timeout", stdout=decoded(exc.stdout), stderr=decoded(exc.stderr),
                       error=f"Command exceeded {exc.timeout} seconds.")
    else:
        receipt.update(
            status="compiler_accepted" if result.returncode == 0 else "compiler_rejected",
            exit_code=result.returncode, stdout=decoded(result.stdout), stderr=decoded(result.stderr),
            stdout_sha256=hashlib.sha256(result.stdout).hexdigest(),
            stderr_sha256=hashlib.sha256(result.stderr).hexdigest(),
        )
    return receipt


def save_receipt(path, encoded):
    temporary = None
    try:
        with tempfile.NamedTemporaryFile(dir=path.parent, delete=False) as handle:
            temporary = Path(handle.name)
            handle.write(encoded)
        os.replace(temporary, path)
    finally:
        if temporary is not None:
            temporary.unlink(missing_ok=True)


def main():
    parser = argparse.ArgumentParser(
        description="Compile your own trusted Lean file and print a fresh compiler-only JSON receipt. "
                    "Lean source can execute code with your account's permissions."
    )
    parser.add_argument("source", type=Path, help="your local .lean file")
    parser.add_argument("--receipt", type=Path, help="also save the receipt to a .json file")
    args = parser.parse_args()
    if args.source.suffix.lower() != ".lean":
        parser.error("the source must have a .lean extension")
    if args.receipt and args.receipt.suffix.lower() != ".json":
        parser.error("the receipt must have a .json extension")
    try:
        if args.receipt and args.receipt.resolve() == args.source.resolve():
            parser.error("source and receipt must be different files")
        source = args.source.read_bytes()
        receipt = check_source(args.source, source)
        encoded = (json.dumps(receipt, indent=2) + "\n").encode("ascii")
        if args.receipt:
            save_receipt(args.receipt, encoded)
        sys.stdout.buffer.write(encoded)
    except OSError as exc:
        parser.exit(2, f"{parser.prog}: {exc}\n")
    return {"compiler_accepted": 0, "compiler_rejected": 1}.get(receipt["status"], 2)


if __name__ == "__main__":
    sys.exit(main())
