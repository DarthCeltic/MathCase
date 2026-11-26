"""Retrieve a pinned three-class proof bundle and verify it without a SAT solver."""

import argparse
from collections import Counter
from hashlib import sha256
from itertools import combinations
import json
from pathlib import Path
import shutil
import subprocess
import sys
from tempfile import TemporaryDirectory
from urllib.request import urlopen
from zipfile import ZipFile

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from verify_weak_schur import NAMES, source


def expected_formula(vertices):
    # Build the clauses independently, enumerating forbidden pairs by their sum.
    index = {x: 3 * i + 1 for i, x in enumerate(vertices)}
    clauses = []
    earlier = [[], [], []]
    for x in vertices:
        first = index[x]
        clauses.append((first, first + 1, first + 2))
        for j, k in combinations(range(3), 2):
            clauses.append((-first - j, -first - k))
        for j in (1, 2):
            clauses.append(tuple([-first - j, *earlier[j - 1]]))
        for j in range(3):
            earlier[j].append(first + j)
        for a in range(1, (x + 1) // 2):
            b = x - a
            if a in index and b in index:
                for j in range(3):
                    clauses.append((-index[a] - j, -index[b] - j, -first - j))
    return Counter(tuple(sorted(c)) for c in clauses)


def verify_cnf(raw, vertices):
    lines = raw.decode("ascii").splitlines()
    expected = expected_formula(vertices)
    if lines[0].split() != ["p", "cnf", str(3 * len(vertices)), str(expected.total())]:
        raise ValueError("Wrong DIMACS header")
    actual = Counter()
    for line in lines[1:]:
        literals = list(map(int, line.split()))
        if not literals or literals[-1] != 0 or 0 in literals[:-1]:
            raise ValueError("Invalid clause terminator")
        actual[tuple(sorted(literals[:-1]))] += 1
    if actual != expected:
        raise ValueError("Formula differs from the recoloring constraints")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--checker", type=Path, required=True, help="compiled drat-trim binary")
    parser.add_argument("--input-cache", type=Path, required=True, help="cache for two pinned public seed files")
    parser.add_argument("--archive", type=Path, help="already downloaded proofs.zip")
    parser.add_argument("--scratch-dir", type=Path, help="parent folder for disposable verification files")
    args = parser.parse_args()
    record = json.loads(Path(__file__).with_name("three-class.json").read_bytes())
    checker = args.checker.resolve(strict=True)
    seeds = {name: source(name, args.input_cache) for name in NAMES}
    expected = {(name, pair) for name in NAMES for pair in combinations(range(1, 6), 3)}
    if args.scratch_dir:
        args.scratch_dir.mkdir(parents=True, exist_ok=True)
    with TemporaryDirectory(dir=args.scratch_dir) as work:
        work = Path(work)
        archive = args.archive
        if archive is None:
            archive = work / "proofs.zip"
            with urlopen(record["archive_url"], timeout=45) as response, archive.open("wb") as out:
                shutil.copyfileobj(response, out)
        if archive.stat().st_size != record["archive_bytes"] or sha256(archive.read_bytes()).hexdigest() != record["archive_sha256"]:
            raise ValueError("Archive size or SHA-256 mismatch")
        with ZipFile(archive) as z:
            for row in record["cases"]:
                name, free = row["seed"], tuple(row["free_colors"])
                if (name, free) not in expected:
                    raise ValueError("Unexpected or duplicate seed/choice")
                expected.remove((name, free))
                seed = seeds[name]
                if any(seed[a] == seed[b] == seed[a + b] for a, b in combinations(range(1, 208), 2) if a + b <= 207):
                    raise ValueError("Invalid base partition")
                blocked = {seed[a] for a in range(1, 104) if seed[a] == seed[208 - a]}
                if blocked != set(range(1, 6)):
                    raise ValueError("208 could join an unchanged class")
                vertices = [x for x in range(1, 208) if seed[x] in free] + [208]
                prefix = name + "-" + "".join(map(str, free)) + "/"
                for fname, key in [("input.cnf", "cnf_sha256"), ("proof.drat", "proof_sha256")]:
                    raw = z.read(prefix + fname)
                    if sha256(raw).hexdigest() != row[key]:
                        raise ValueError(f"Wrong digest for {prefix}{fname}")
                    if fname == "input.cnf":
                        verify_cnf(raw, vertices)
                    (work / fname).write_bytes(raw)
                run = subprocess.run([checker, "input.cnf", "proof.drat"], cwd=work, capture_output=True, timeout=240)
                if run.returncode or b"s VERIFIED" not in (run.stdout + run.stderr).splitlines():
                    raise ValueError(f"Invalid DRAT certificate for {prefix}")
                print("verified", prefix.rstrip("/"), flush=True)
    if expected:
        raise ValueError("Some seed/choice pairs are missing")
    print("All 20 three-class extensions were refuted.")


if __name__ == "__main__":
    main()
