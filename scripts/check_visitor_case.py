"""Check a visitor Lean file, or bind an exported MathCase case to its exact target."""

import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile


PIN_FILE = Path(__file__).resolve().parents[1] / "proofs" / "r0b" / "lean-toolchain"
TOOLCHAIN = PIN_FILE.read_text(encoding="utf-8").strip()
COMPILER_FLAGS = ["-DwarningAsError=true", "--stdin"]
TIMEOUT_SECONDS = 120
MAX_PACKET_BYTES = 4 * 1024 * 1024
LEAN_NAME = re.compile(r"^(?:_root_\.)?[A-Za-z_][A-Za-z0-9_']*(?:\.[A-Za-z_][A-Za-z0-9_']*)*$")
AXIOM_LINE = re.compile(r"(?m)^'[^'\r\n]+' depends on axioms: \[([^\]\r\n]*)\]$")
NO_AXIOMS_LINE = re.compile(r"(?m)^'[^'\r\n]+' does not depend on any axioms$")


def decoded(raw):
    return (raw or b"").decode("utf-8", errors="replace")


def digest(raw):
    return hashlib.sha256(raw).hexdigest()


def local_toolchain_available():
    listed = subprocess.run(
        ["elan", "toolchain", "list"], stdin=subprocess.DEVNULL,
        capture_output=True, check=True, timeout=30,
    )
    return TOOLCHAIN in decoded(listed.stdout).split()


def installed_lean():
    # Do not let elan download a toolchain during a visitor check.
    if not local_toolchain_available():
        raise FileNotFoundError(f"Pinned Lean toolchain {TOOLCHAIN} is not installed locally.")
    prefix = subprocess.run(
        ["elan", "run", TOOLCHAIN, "lean", "--print-prefix"],
        stdin=subprocess.DEVNULL, capture_output=True, check=True, timeout=30,
    )
    leaf = "lean.exe" if os.name == "nt" else "lean"
    return Path(os.fsdecode(prefix.stdout.strip())) / "bin" / leaf


def compiler_command(lean, lake_project=None):
    if lake_project is None:
        return [str(lean), *COMPILER_FLAGS]
    project = lake_project.resolve()
    if not project.is_dir() or not (project / "lake-manifest.json").is_file():
        raise FileNotFoundError("--lake-project must point to a prepared local Lake project with lake-manifest.json.")
    if not any((project / name).is_file() for name in ("lakefile.lean", "lakefile.toml")):
        raise FileNotFoundError("The local Lake project has no lakefile.lean or lakefile.toml.")
    if not (project / ".lake" / "packages").is_dir():
        raise FileNotFoundError("The local Lake project has no prepared .lake/packages directory; no dependencies were fetched.")
    # The caller must use a prepared project; no `lake update` or network bootstrap is performed.
    return ["lake", "env", "lean", *COMPILER_FLAGS]


def compiler_version(command, cwd):
    version = subprocess.run(
        command[:-2] + ["--version"] if command[-2:] == COMPILER_FLAGS else command + ["--version"],
        cwd=cwd, stdin=subprocess.DEVNULL, capture_output=True, check=True, timeout=30,
    )
    text = decoded(version.stdout).strip()
    expected = TOOLCHAIN.split(":v")[-1]
    if not text.startswith(f"Lean (version {expected},"):
        raise RuntimeError(f"Expected Lean {expected}; found {text or 'no version output'}.")
    return text


def base_receipt(schema, scope, source_path, source):
    return {
        "schema_version": schema,
        "scope": scope,
        "checked_at_utc": datetime.now(timezone.utc).isoformat(),
        "source_name": source_path.name,
        "source_bytes": len(source),
        "source_sha256": digest(source),
        "toolchain": TOOLCHAIN,
        "lean_version": None,
        "command": [],
        "status": "toolchain_error",
        "exit_code": None,
        "stdout": "",
        "stderr": "",
        "stdout_sha256": None,
        "stderr_sha256": None,
    }


def finish_receipt(receipt):
    if not isinstance(receipt.get("stdout_sha256"), str):
        receipt["stdout_sha256"] = digest(receipt.get("stdout", "").encode("utf-8"))
    if not isinstance(receipt.get("stderr_sha256"), str):
        receipt["stderr_sha256"] = digest(receipt.get("stderr", "").encode("utf-8"))
    return receipt


def check_source(source_path, source, lake_project=None):
    """Legacy v1 check: compile source only; it does not check a named target or axioms."""
    receipt = base_receipt("mathcase-visitor-lean-check-v1", "compiler_only", source_path, source)
    receipt["scope_note"] = "Compiler acceptance can include declared axioms. No target, dependency, or axiom audit is recorded."
    cwd = lake_project.resolve() if lake_project else source_path.parent
    try:
        lean = installed_lean()
        command = compiler_command(lean, lake_project)
        receipt["command"] = ["lake", "env", "lean", *COMPILER_FLAGS] if lake_project else ["lean", *COMPILER_FLAGS]
        receipt["lean_version"] = compiler_version(command, cwd)
        result = subprocess.run(command, cwd=cwd, input=source, capture_output=True, timeout=TIMEOUT_SECONDS)
    except subprocess.CalledProcessError as exc:
        receipt["stdout"] = decoded(exc.stdout)
        receipt["stderr"] = decoded(exc.stderr) or str(exc)
    except subprocess.TimeoutExpired as exc:
        receipt.update(status="timeout", stdout=decoded(exc.stdout), stderr=decoded(exc.stderr),
                       error=f"Command exceeded {exc.timeout} seconds.")
    except (OSError, RuntimeError, subprocess.SubprocessError) as exc:
        receipt["stderr"] = str(exc)
    else:
        receipt.update(
            status="compiler_accepted" if result.returncode == 0 else "compiler_rejected",
            exit_code=result.returncode, stdout=decoded(result.stdout), stderr=decoded(result.stderr),
            stdout_sha256=digest(result.stdout), stderr_sha256=digest(result.stderr),
        )
    return finish_receipt(receipt)


def generated_target_check(source, target, theorem_name):
    seed = source + b"\0" + target.encode("utf-8") + b"\0" + theorem_name.encode("utf-8")
    salt = 0
    while True:
        suffix = digest(seed + str(salt).encode("ascii"))[:16]
        check_name = f"MathCaseVisitorTarget_{suffix}"
        if check_name.encode("ascii") not in source:
            break
        salt += 1
    suffix_bytes = b"" if not source or source.endswith((b"\n", b"\r")) else b"\n"
    generated = (
        suffix_bytes + b"\n-- Generated by MathCase: prove the exported exact proposition.\n" +
        f"theorem {check_name} : (".encode("ascii") + target.encode("utf-8") +
        b") := by\n  exact " + theorem_name.encode("utf-8") +
        b"\n#print axioms " + check_name.encode("ascii") + b"\n"
    )
    return check_name, source + generated


def checked_axioms(stdout, stderr):
    combined = stdout + b"\n" + stderr
    text = decoded(combined)
    match = AXIOM_LINE.search(text)
    if match:
        body = match.group(1).strip()
        names = [] if not body else [name.strip() for name in body.split(",") if name.strip()]
        return "reported", names
    if NO_AXIOMS_LINE.search(text):
        return "reported", []
    return "unavailable", []


def check_case_packet(packet_path, packet_bytes, packet, lake_project=None):
    filename = packet.get("filename", "ImportedCase.lean")
    source_path = Path(filename if isinstance(filename, str) else "ImportedCase.lean").name
    if not source_path.lower().endswith(".lean"):
        source_path = "ImportedCase.lean"
    source = packet["source"].encode("utf-8")
    target = packet["formal_target"]
    statement = packet["statement"]
    theorem_name = packet["theorem_name"].strip()
    generated_name, compilation_input = generated_target_check(source, target, theorem_name)
    receipt = base_receipt("mathcase-visitor-lean-check-v2", "target_and_axioms", Path(source_path), source)
    receipt.update({
        "scope_note": "Lean checked the generated theorem against the exact formal target. A person must still review the English-to-Lean meaning; axioms are reported, not filtered.",
        "packet_name": packet_path.name,
        "packet_sha256": digest(packet_bytes),
        "statement_sha256": digest(statement.encode("utf-8")),
        "formal_target_sha256": digest(target.encode("utf-8")),
        "theorem_name": theorem_name,
        "generated_target_name": generated_name,
        "generated_input_sha256": digest(compilation_input),
        "axiom_audit_status": "unavailable",
        "axiom_names": [],
    })
    cwd = lake_project.resolve() if lake_project else Path.cwd()
    try:
        lean = installed_lean()
        command = compiler_command(lean, lake_project)
        receipt["command"] = ["lake", "env", "lean", *COMPILER_FLAGS] if lake_project else ["lean", *COMPILER_FLAGS]
        receipt["lean_version"] = compiler_version(command, cwd)
        result = subprocess.run(command, cwd=cwd, input=compilation_input,
                                capture_output=True, timeout=TIMEOUT_SECONDS)
    except subprocess.CalledProcessError as exc:
        receipt["stdout"] = decoded(exc.stdout)
        receipt["stderr"] = decoded(exc.stderr) or str(exc)
    except subprocess.TimeoutExpired as exc:
        receipt.update(status="timeout", stdout=decoded(exc.stdout), stderr=decoded(exc.stderr),
                       error=f"Command exceeded {exc.timeout} seconds.")
    except (OSError, RuntimeError, subprocess.SubprocessError) as exc:
        receipt["stderr"] = str(exc)
    else:
        status = "target_accepted" if result.returncode == 0 else "target_rejected"
        audit_status, axioms = checked_axioms(result.stdout, result.stderr)
        receipt.update(
            status=status, exit_code=result.returncode,
            stdout=decoded(result.stdout), stderr=decoded(result.stderr),
            stdout_sha256=digest(result.stdout), stderr_sha256=digest(result.stderr),
            axiom_audit_status=audit_status, axiom_names=axioms,
        )
    return finish_receipt(receipt)


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


def validate_case_packet(path, raw):
    if len(raw) > MAX_PACKET_BYTES:
        raise ValueError("case packet exceeds the 4 MiB limit")
    packet = json.loads(raw.decode("utf-8"))
    if (not isinstance(packet, dict) or
            packet.get("schema_version") not in {"mathcase-visitor-case-v2"} or
            not all(isinstance(packet.get(key), str) for key in
                    ("statement", "formal_target", "theorem_name", "source")) or
            not packet["statement"].strip() or not packet["formal_target"].strip() or
            not LEAN_NAME.fullmatch(packet["theorem_name"].strip())):
        raise ValueError("expected a v2 exported case with a plain claim, exact target, theorem name, and source")
    return packet


def main():
    parser = argparse.ArgumentParser(
        description="Check a Lean source file, or prove an exported MathCase case's exact target and report axioms. "
                    "Lean source is trusted code and runs with your account's permissions."
    )
    parser.add_argument("source", nargs="?", type=Path, help="legacy compiler-only path: trusted local .lean file")
    parser.add_argument("--case-packet", type=Path, help="exported .mathcase.json packet; checks the exact target")
    parser.add_argument("--receipt", type=Path, help="also save the receipt to this .json file")
    parser.add_argument("--lake-project", type=Path, help="use an already prepared local Lake project; dependencies are not fetched")
    args = parser.parse_args()
    if bool(args.source) == bool(args.case_packet):
        parser.error("provide exactly one .lean source or --case-packet")
    if args.receipt and args.receipt.suffix.lower() != ".json":
        parser.error("the receipt must have a .json extension")
    if args.source and args.source.suffix.lower() != ".lean":
        parser.error("the source must have a .lean extension")
    try:
        if args.case_packet:
            raw = args.case_packet.read_bytes()
            packet = validate_case_packet(args.case_packet, raw)
            if args.receipt and args.receipt.resolve() == args.case_packet.resolve():
                parser.error("case packet and receipt must be different files")
            receipt = check_case_packet(args.case_packet, raw, packet, args.lake_project)
        else:
            source_path = args.source.resolve()
            if args.receipt and args.receipt.resolve() == source_path:
                parser.error("source and receipt must be different files")
            receipt = check_source(source_path, source_path.read_bytes(), args.lake_project)
        encoded = (json.dumps(receipt, indent=2, ensure_ascii=False) + "\n").encode("utf-8")
        if args.receipt:
            save_receipt(args.receipt, encoded)
        sys.stdout.buffer.write(encoded)
    except (OSError, ValueError, UnicodeError, json.JSONDecodeError) as exc:
        parser.exit(2, f"{parser.prog}: {exc}\n")
    return {
        "compiler_accepted": 0, "compiler_rejected": 1,
        "target_accepted": 0, "target_rejected": 1,
    }.get(receipt["status"], 2)


if __name__ == "__main__":
    sys.exit(main())
