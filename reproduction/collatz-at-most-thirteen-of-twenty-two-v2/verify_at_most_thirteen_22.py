#!/usr/bin/env python3
"""One-shot, local replay and independent arithmetic audit for the v1 packet."""

from __future__ import annotations

import argparse
import hashlib
import json
import math
import os
from pathlib import Path
import re
import subprocess
import time
from datetime import datetime, timezone


TOOLCHAIN = "leanprover/lean4:v4.33.1"
MODULES = ("WordBound", "WordResidue", "CountWords", "AtMostThirteen22")
EXPECTED_AXIOMS = {
    "residue_at_most_thirteen_count_22": {"propext", "Classical.choice", "Quot.sound"},
    "at_most_thirteen_of_twenty_two_descend": {"propext", "Quot.sound"},
    "counted_at_most_thirteen_families_22": {"propext", "Classical.choice", "Quot.sound"},
}


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256_file(path: Path) -> str:
    return sha256_bytes(path.read_bytes())


def write_json(path: Path, value: object) -> None:
    path.write_text(json.dumps(value, indent=2, sort_keys=True) + "\n", encoding="utf-8", newline="\n")


def utc_now() -> str:
    return datetime.now(timezone.utc).isoformat(timespec="seconds").replace("+00:00", "Z")


def accelerated_step(n: int) -> int:
    return n // 2 if n % 2 == 0 else (3 * n + 1) // 2


def ordinary_step(n: int) -> int:
    return n // 2 if n % 2 == 0 else 3 * n + 1


def accelerated_odds(n: int, steps: int) -> int:
    count = 0
    for _ in range(steps):
        if n % 2:
            count += 1
        n = accelerated_step(n)
    return count


def ordinary_iter(n: int, steps: int) -> int:
    for _ in range(steps):
        n = ordinary_step(n)
    return n


def arithmetic_audit() -> dict[str, object]:
    steps, cutoff = 22, 13
    modulus = 1 << steps
    thresholds: list[dict[str, int]] = []
    for h in range(cutoff + 1):
        coefficient = modulus - 3**h
        if coefficient <= 0:
            raise AssertionError(f"coefficient is not positive at h={h}")
        constant = 3**h * (1 << (steps - h)) - modulus
        minimum = max(0, constant // coefficient + 1)
        if minimum > 313:
            raise AssertionError(f"large-start cutoff 313 does not cover h={h}: {minimum}")
        if coefficient * minimum <= constant or (minimum > 0 and coefficient * (minimum - 1) > constant):
            raise AssertionError(f"threshold calculation is inconsistent at h={h}")
        thresholds.append({"odd_inputs": h, "coefficient": coefficient, "minimum_n_for_strict_bound": minimum})

    small_qualifying = 0
    small_failures: list[dict[str, int]] = []
    for n in range(3, 313):
        h = accelerated_odds(n, steps)
        if h <= cutoff:
            small_qualifying += 1
            endpoint_steps = steps + h
            end = ordinary_iter(n, endpoint_steps)
            if end >= n:
                small_failures.append({"n": n, "odd_inputs": h, "steps": endpoint_steps, "endpoint": end})

    family_count = sum(math.comb(steps, h) for h in range(cutoff + 1))
    if family_count != 3_593_934:
        raise AssertionError(f"unexpected binomial count: {family_count}")
    if small_failures:
        raise AssertionError(f"small-start counterexamples: {small_failures[:3]}")
    if max(row["minimum_n_for_strict_bound"] for row in thresholds) != 313:
        raise AssertionError("expected maximum coefficient threshold 313")

    return {
        "status": "PASS",
        "method": "independent Python integer arithmetic and direct trajectory evaluation",
        "steps": steps,
        "odd_input_cutoff": cutoff,
        "residue_modulus": modulus,
        "qualifying_residue_count_from_binomial_sum": family_count,
        "density_percent": family_count * 100.0 / modulus,
        "coefficient_thresholds": thresholds,
        "large_start_cutoff": 313,
        "small_start_range": {"first": 3, "last": 312},
        "small_starts_qualifying": small_qualifying,
        "small_start_counterexamples": small_failures,
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output-dir", required=True, type=Path)
    parser.add_argument("--lean-toolchain", default=TOOLCHAIN)
    args = parser.parse_args()

    packet = Path(__file__).resolve().parent
    output = args.output_dir.resolve()
    if output.exists():
        parser.error(f"output directory already exists; preserve prior evidence and choose a fresh path: {output}")
    output.mkdir(parents=True)
    inputs = output / "inputs"
    build = output / "build"
    inputs.mkdir()
    build.mkdir()

    source_hashes: dict[str, str] = {}
    copied_sources: dict[str, Path] = {}
    for module in MODULES:
        source = packet / f"{module}.lean"
        if not source.is_file():
            raise FileNotFoundError(source)
        raw = source.read_bytes()
        target = inputs / source.name
        target.write_bytes(raw)
        source_hashes[source.name] = sha256_bytes(raw)
        copied_sources[module] = target

    forbidden_tokens = ("sorry", "admit", "native_decide")
    source_text = "\n".join(p.read_text(encoding="utf-8") for p in copied_sources.values())
    forbidden_found = [token for token in forbidden_tokens if re.search(rf"\b{re.escape(token)}\b", source_text)]

    env = os.environ.copy()
    prior_lean_path = env.get("LEAN_PATH", "")
    env["LEAN_PATH"] = str(build) + (os.pathsep + prior_lean_path if prior_lean_path else "")

    modules: list[dict[str, object]] = []
    observed_axioms: dict[str, list[str]] = {}
    started = utc_now()
    overall = "PASS"
    for module in MODULES:
        out_file = build / f"{module}.olean"
        command = ["elan", "run", args.lean_toolchain, "lean", "-o", str(out_file), str(copied_sources[module])]
        stdout_path = output / f"{module}.stdout.txt"
        stderr_path = output / f"{module}.stderr.txt"
        tic = time.monotonic()
        timed_out = False
        try:
            completed = subprocess.run(command, cwd=inputs, env=env, capture_output=True, timeout=60, check=False)
            stdout = completed.stdout
            stderr = completed.stderr
            exit_code = completed.returncode
        except subprocess.TimeoutExpired as exc:
            timed_out = True
            stdout = exc.stdout or b""
            stderr = exc.stderr or b""
            exit_code = None
        elapsed = time.monotonic() - tic
        stdout_path.write_bytes(stdout)
        stderr_path.write_bytes(stderr)
        combined = (stdout.decode("utf-8", errors="replace") + stderr.decode("utf-8", errors="replace")).replace("\r", "")
        reports = re.findall(r"^'([^']+)' depends on axioms: \[([^\]]*)\]$", combined, re.MULTILINE)
        for theorem, names in reports:
            observed_axioms[theorem.rsplit(".", 1)[-1]] = sorted(name.strip() for name in names.split(",") if name.strip())
        record = {
            "module": module,
            "command": command,
            "exit_code": exit_code,
            "timed_out": timed_out,
            "elapsed_seconds": round(elapsed, 6),
            "source_sha256": source_hashes[f"{module}.lean"],
            "stdout_file": stdout_path.name,
            "stdout_sha256": sha256_file(stdout_path),
            "stderr_file": stderr_path.name,
            "stderr_sha256": sha256_file(stderr_path),
            "olean_sha256": sha256_file(out_file) if out_file.is_file() else None,
            "axiom_lines": reports,
        }
        modules.append(record)
        if timed_out or exit_code != 0:
            overall = "TIMEOUT" if timed_out else "FAIL"
            break

    audit: dict[str, object] | None = None
    audit_error: str | None = None
    try:
        audit = arithmetic_audit()
    except Exception as exc:  # preserve this bounded independent check as a failure record
        overall = "FAIL"
        audit_error = f"{type(exc).__name__}: {exc}"

    axiom_mismatches = {
        theorem: {"expected": sorted(expected), "observed": observed_axioms.get(theorem)}
        for theorem, expected in EXPECTED_AXIOMS.items()
        if set(observed_axioms.get(theorem, [])) != expected
    }
    if forbidden_found or axiom_mismatches:
        overall = "FAIL"
    if audit is not None:
        audit_path = output / "arithmetic-audit.json"
        write_json(audit_path, audit)
        audit_hash = sha256_file(audit_path)
    else:
        audit_hash = None

    receipt = {
        "schema": "mathcase-collatz-at-most-thirteen-of-twenty-two-replay-v1",
        "status": overall,
        "started_utc": started,
        "finished_utc": utc_now(),
        "lean_toolchain": args.lean_toolchain,
        "lean_command": ["elan", "run", args.lean_toolchain, "lean", "-o", "<module>.olean", "<module>.lean"],
        "network_or_provider_calls": 0,
        "external_cost_usd": 0,
        "retry_count": 0,
        "module_timeout_seconds": 60,
        "sources": source_hashes,
        "module_results": modules,
        "observed_axioms": observed_axioms,
        "expected_axioms": {name: sorted(names) for name, names in EXPECTED_AXIOMS.items()},
        "axiom_mismatches": axiom_mismatches,
        "forbidden_source_tokens": forbidden_found,
        "arithmetic_audit_status": "PASS" if audit is not None else "FAIL",
        "arithmetic_audit_sha256": audit_hash,
        "arithmetic_audit_error": audit_error,
    }
    write_json(output / "receipt.json", receipt)
    manifest = {
        "files": {
            str(path.relative_to(output)).replace("\\", "/"): sha256_file(path)
            for path in sorted(output.rglob("*")) if path.is_file() and path.name != "manifest.json"
        }
    }
    write_json(output / "manifest.json", manifest)
    print(json.dumps({"status": overall, "receipt": str(output / "receipt.json"), "modules_completed": len(modules), "axiom_mismatches": axiom_mismatches, "audit": audit}, indent=2))
    return 0 if overall == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())
