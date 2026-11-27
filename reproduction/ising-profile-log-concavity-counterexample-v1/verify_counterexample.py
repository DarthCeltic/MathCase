from __future__ import annotations
import argparse
from collections import Counter
from itertools import combinations
import hashlib, json, platform, subprocess, time
from pathlib import Path

PINNED_RECEIPT_SHA256 = "4891bbea34851ce21a270c5d2626c3691fbdfa440a6cf5a698d3a341e19829ab"
SOURCE_COMMIT = "288b0f4b6bae28db0d4b2feb6dbcab3dd4022f8b"
REFERENCE = "reproduction/ising-width4-joint-density-v1/evidence/runs/final-clean-replay-2026-11-27/receipt.json"
TARGET_UP_SPINS = 5


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def git_output(repo: Path, *args: str) -> bytes:
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout


def direct_subset_profile() -> dict[int, int]:
    # Vertices are the 4x3 periodic grid, represented independently as pairs.
    vertices = [(r, c) for r in range(4) for c in range(3)]
    edges: set[tuple[tuple[int, int], tuple[int, int]]] = set()
    for r, c in vertices:
        for neighbor in (((r + 1) % 4, c), (r, (c + 1) % 3)):
            edges.add(tuple(sorted(((r, c), neighbor))))
    if len(edges) != 24:
        raise AssertionError(f"expected 24 distinct torus edges, got {len(edges)}")

    counts: Counter[int] = Counter()
    for plus_vertices in combinations(vertices, TARGET_UP_SPINS):
        plus = set(plus_vertices)
        broken = sum((a in plus) != (b in plus) for a, b in edges)
        counts[broken] += 1
    return dict(sorted(counts.items()))


def is_log_concave(sequence: list[int]) -> bool:
    return all(sequence[i] * sequence[i] >= sequence[i - 1] * sequence[i + 1]
               for i in range(1, len(sequence) - 1))


def main() -> int:
    started = time.perf_counter()
    parser = argparse.ArgumentParser(description="Check one finite Ising histogram counterexample.")
    parser.add_argument("--repo", type=Path, default=Path(__file__).resolve().parents[2],
                        help="MathCase checkout containing the pinned public receipt")
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    repo = args.repo.resolve()
    head = git_output(repo, "rev-parse", "HEAD").decode().strip()
    if not head:
        raise SystemExit("could not identify checkout HEAD")
    committed_bytes = git_output(repo, "cat-file", "blob", f"HEAD:{REFERENCE}")
    working_path = repo / Path(REFERENCE)
    working_bytes = working_path.read_bytes()
    if working_bytes != committed_bytes:
        raise SystemExit("pinned receipt working-tree bytes differ from HEAD blob")
    reference_sha = digest(committed_bytes)
    if reference_sha != PINNED_RECEIPT_SHA256:
        raise SystemExit(f"REFERENCE_HASH_MISMATCH: {reference_sha}")
    reference = json.loads(committed_bytes)
    if reference.get("status") != "PASS":
        raise SystemExit("pinned joint-density receipt is not PASS")
    row = next((r for r in reference.get("results", []) if r.get("length") == 3), None)
    if row is None:
        raise SystemExit("4x3 row missing from pinned receipt")

    public_profile: Counter[int] = Counter()
    for broken, up_spins, count in row["joint_histogram"]:
        if up_spins == TARGET_UP_SPINS:
            public_profile[broken] += count
    public_profile = Counter({b: c for b, c in public_profile.items() if c})
    direct_profile = direct_subset_profile()
    if dict(public_profile) != direct_profile:
        raise SystemExit(f"INDEPENDENT_PROFILE_MISMATCH: direct={direct_profile}; public={dict(public_profile)}")
    if sum(direct_profile.values()) != 792:
        raise SystemExit("subset count mismatch: expected choose(12,5)=792")

    c14, c16, c18 = (direct_profile.get(b, 0) for b in (14, 16, 18))
    lhs, rhs = c16 * c16, c14 * c18
    even_bond_profile = [direct_profile.get(b, 0) for b in range(0, 25, 2)]
    target_profile_log_concave = is_log_concave(even_bond_profile)
    if not lhs < rhs or target_profile_log_concave:
        raise SystemExit("the expected strict log-concavity counterexample was absent")
    damaged = dict(direct_profile)
    damaged[14] += 1
    damaged_control_rejected = damaged != dict(public_profile)
    positive_control_passed = is_log_concave([1, 2, 1])
    damaged_shape_control_rejected = not is_log_concave([1, 0, 1])
    if not damaged_control_rejected or not positive_control_passed or not damaged_shape_control_rejected:
        raise SystemExit("checker controls failed")

    checker_sha = digest(Path(__file__).read_bytes())
    git_blob = git_output(repo, "rev-parse", f"HEAD:{REFERENCE}").decode().strip()
    receipt = {
        "schema": "mathcase-ising-4x3-fixed-magnetization-logconcavity-counterexample-v1",
        "status": "PASS_EXACT_FINITE_COUNTEREXAMPLE",
        "checker_sha256": checker_sha,
        "python": platform.python_version(),
        "checkout_head": head,
        "reference_origin_commit": SOURCE_COMMIT,
        "reference_path": REFERENCE,
        "reference_sha256": reference_sha,
        "reference_git_blob": git_blob,
        "method": "Enumerate all choose(12,5)=792 subsets of five + vertices and count cut edges in the explicit 24-edge periodic 4x3 grid.",
        "profile_definition": "c_b is the number of configurations with exactly five + spins and exactly b disagreeing edges; test log-concavity on the naturally spaced even-b sequence.",
        "nonzero_profile_by_broken_bonds": [[b, c] for b, c in direct_profile.items()],
        "strict_counterexample": {
            "b_values": [14, 16, 18],
            "counts": [c14, c16, c18],
            "middle_squared": lhs,
            "neighbor_product": rhs,
            "inequality": f"{lhs} < {rhs}",
            "conclusion": "This finite fixed-magnetization energy profile is not log-concave."
        },
        "controls": {
            "24_distinct_edges": True,
            "all_choose_12_5_subsets_counted": sum(direct_profile.values()) == 792,
            "full_profile_matches_pinned_joint_receipt": direct_profile == dict(public_profile),
            "one_count_mutation_rejected": damaged_control_rejected,
            "log_concavity_positive_control_passed": positive_control_passed,
            "damaged_log_concavity_control_rejected": damaged_shape_control_rejected,
            "full_even_bond_target_profile_not_log_concave": not target_profile_log_concave
        },
        "runtime_seconds": round(time.perf_counter() - started, 6),
        "limits": [
            "One exact finite counterexample on the periodic 4x3 torus only.",
            "No general statement about other widths, lengths, or thermodynamic limits.",
            "No Lean proof, novelty claim, or literature-priority claim."
        ]
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes((json.dumps(receipt, indent=2, sort_keys=True) + "\n").encode("utf-8"))
    print(json.dumps({"status": receipt["status"], "profile": receipt["nonzero_profile_by_broken_bonds"],
                      "counterexample": receipt["strict_counterexample"], "controls": receipt["controls"],
                      "receipt": str(args.output)}, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
