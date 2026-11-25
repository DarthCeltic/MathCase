from __future__ import annotations
import hashlib, json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
N, COLORS, LIMIT, SEED = 208, 5, 10, 20261125
EXPECTED_SEED_SHA256 = "b849284d7b1b19774f835bcd1e2baf8683b2606b9d5a14fb93dfbf96324304cf"
EXPECTED_QUERY_SHA256 = "fa955a5c0364d45f768b1808fe751e42df6ca226e22bb2fdbae7f5a15d68c692"
EXPECTED_VIOLATIONS = [[1, 2, 3, 3], [1, 3, 4, 3], [5, 7, 12, 5]]


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def all_triples():
    return [(a, b, a + b) for a in range(1, N) for b in range(a + 1, N - a + 1)]


def violations(colors):
    return [[a, b, c, colors[a - 1]] for a, b, c in all_triples()
            if colors[a - 1] == colors[b - 1] == colors[c - 1]]


def expected_query(colors, model=False):
    lines = [
        "; Weak Schur five-color repair query for one fixed saved assignment.",
        "; Distinct addends only: 1 <= a < b and a+b <= 208.",
        f"; Hamming distance from the saved assignment is at most {LIMIT}.",
    ]
    if model:
        lines.append("(set-option :produce-models true)")
    lines += [
        "(set-option :timeout 55000)",
        f"(set-option :smt.random_seed {SEED})",
        f"(set-option :sat.random_seed {SEED})",
        "(set-logic QF_LIA)",
    ]
    for i in range(N):
        for c in range(COLORS):
            lines.append(f"(declare-fun x_{i+1}_{c+1} () Bool)")
    for i in range(N):
        bits = [f"(ite x_{i+1}_{c+1} 1 0)" for c in range(COLORS)]
        lines.append("(assert (= (+ " + " ".join(bits) + ") 1))")
    triples = all_triples()
    for a, b, total in triples:
        for c in range(1, COLORS + 1):
            lines.append(f"(assert (or (not x_{a}_{c}) (not x_{b}_{c}) (not x_{total}_{c})))")
    cost = [f"(ite x_{i+1}_{colors[i]} 0 1)" for i in range(N)]
    lines.append("(assert (<= (+ " + " ".join(cost) + f") {LIMIT}))")
    lines.append("(check-sat)")
    if model:
        names = " ".join(f"x_{n}_{c}" for n in range(1, N + 1) for c in range(1, COLORS + 1))
        lines.append(f"(get-value ({names}))")
    lines.append("(exit)")
    return ("\n".join(lines) + "\n").encode("ascii")


def verify_manifest():
    manifest = json.loads((ROOT / "public-manifest.json").read_text(encoding="utf-8"))
    if manifest.get("schema") != "mathcase-public-package-manifest-v1":
        raise SystemExit("public manifest schema mismatch")
    files = manifest.get("files")
    if not isinstance(files, dict) or not files:
        raise SystemExit("public manifest file list missing")
    actual = {}
    for rel, expected in files.items():
        path = (ROOT / rel).resolve()
        if ROOT.resolve() not in path.parents or not path.is_file():
            raise SystemExit(f"manifest path invalid: {rel}")
        actual[rel] = sha(path.read_bytes())
        if actual[rel] != expected:
            raise SystemExit(f"package file hash mismatch: {rel}")
    present = {p.relative_to(ROOT).as_posix() for p in ROOT.rglob("*")
               if p.is_file() and p.name != "public-manifest.json" and "__pycache__" not in p.parts}
    if present != set(files):
        raise SystemExit("manifest does not cover exactly the package files")
    return len(files)


def main():
    seed_raw = (ROOT / "seed-coloring.txt").read_bytes()
    text = seed_raw.decode("ascii")
    if not text.endswith("\n") or text.count("\n") != 1:
        raise SystemExit("seed format mismatch")
    digits = text[:-1]
    if len(digits) != N or any(ch not in "12345" for ch in digits):
        raise SystemExit("seed must contain 208 colors in 1..5")
    colors = [int(ch) for ch in digits]
    seed_hash = sha(seed_raw)
    if seed_hash != EXPECTED_SEED_SHA256:
        raise SystemExit("seed coloring hash mismatch")
    tri = all_triples()
    bad = violations(colors)
    if len(tri) != 10712 or bad != EXPECTED_VIOLATIONS:
        raise SystemExit("seed constraints or recorded violations mismatch")
    query = (ROOT / "check-at-most-ten.smt2").read_bytes()
    regenerated = expected_query(colors)
    if query != regenerated or sha(query) != EXPECTED_QUERY_SHA256:
        raise SystemExit("SMT query differs from the independently reconstructed query")
    model_query = (ROOT / "extract-model-at-most-ten.smt2").read_bytes()
    if model_query != expected_query(colors, model=True):
        raise SystemExit("SAT-only model query differs from reconstruction")
    formula_audit = json.loads((ROOT / "formula-audit.json").read_text(encoding="utf-8"))
    if (formula_audit.get("result") != "PASS" or
        formula_audit.get("formula_sha256") != sha(query) or
        formula_audit.get("model_formula_sha256") != sha(model_query) or
        formula_audit.get("tamper_control") != "REJECTED"):
        raise SystemExit("formula audit does not bind the included queries")
    assertions = sum(line.startswith(b"(assert ") for line in query.splitlines())
    if assertions != 53769 or query.count(b"(check-sat)") != 1:
        raise SystemExit("query shape mismatch")
    damaged = list(colors)
    damaged[:3] = [1, 1, 1]
    damaged_bad = violations(damaged)
    if len(damaged_bad) != 101 or damaged_bad[0] != [1, 2, 3, 1]:
        raise SystemExit("deliberately damaged control was not detected")
    changed = query.replace(b") 10))\n(check-sat)", b") 9))\n(check-sat)", 1)
    if changed == query or sha(changed) == EXPECTED_QUERY_SHA256:
        raise SystemExit("query corruption control was not detected")
    original = json.loads((ROOT / "public-run.json").read_text(encoding="utf-8"))
    original_out = (ROOT / "solver-stdout.txt").read_bytes()
    original_err = (ROOT / "solver-stderr.txt").read_bytes()
    if (original.get("status") != "UNSAT_REPORTED" or original.get("query_sha256") != sha(query) or
        original.get("seed_coloring_sha256") != seed_hash or original.get("stdout_sha256") != sha(original_out) or
        original.get("stderr_sha256") != sha(original_err) or original_out.strip() != b"unsat" or
        original.get("proof_certificate_emitted") is not False):
        raise SystemExit("original public run summary does not bind the stored outputs")
    replay = json.loads((ROOT / "package-replay" / "run.json").read_text(encoding="utf-8"))
    replay_out = (ROOT / "package-replay" / "solver.stdout.bin").read_bytes()
    replay_err = (ROOT / "package-replay" / "solver.stderr.bin").read_bytes()
    if (replay.get("status") != "UNSAT_REPORTED" or replay.get("query_sha256") != sha(query) or
        replay.get("stdout_sha256") != sha(replay_out) or replay.get("stderr_sha256") != sha(replay_err) or
        replay_out.strip() != b"unsat" or replay.get("proof_certificate_emitted") is not False):
        raise SystemExit("package replay receipt does not bind the stored outputs")
    file_count = verify_manifest()
    print(json.dumps({
        "status": "PASS_ARTIFACT_AUDIT",
        "positions": N,
        "colors": COLORS,
        "distinct_addend_triples": len(tri),
        "saved_seed_violations": bad,
        "seed_sha256": seed_hash,
        "query_sha256": sha(query),
        "variables": N * COLORS,
        "assertions": assertions,
        "damaged_seed_control_violations": len(damaged_bad),
        "query_tamper_control": "REJECTED",
        "original_run_summary": "HASH_BOUND",
        "package_replay": "HASH_BOUND",
        "manifest_files_verified": file_count,
        "solver_invoked": False,
        "scope": "artifact and encoding check only; no solver conclusion",
    }, indent=2))


if __name__ == "__main__":
    main()