from __future__ import annotations
import argparse
import hashlib
import json
import math
import pathlib
import time


def accelerated_step(n: int) -> int:
    return n // 2 if n % 2 == 0 else (3 * n + 1) // 2


def ordinary_step(n: int) -> int:
    return n // 2 if n % 2 == 0 else 3 * n + 1


def run() -> dict:
    started = time.monotonic()
    limit = 1 << 20
    counts = [0] * 21
    eligible = 0
    positive_eligible = 0
    endpoint_mismatches = 0
    non_descents = []
    digest = hashlib.sha256()
    for residue in range(limit):
        x = residue
        odd_count = 0
        for _ in range(20):
            odd_count += x & 1
            x = accelerated_step(x)
        counts[odd_count] += 1
        standard = residue
        for _ in range(20 + odd_count):
            standard = ordinary_step(standard)
        digest.update(f"{residue},{odd_count},{x},{standard}\n".encode("ascii"))
        endpoint_mismatches += standard != x
        if odd_count <= 12:
            eligible += 1
            if residue >= 3:
                positive_eligible += 1
                if standard >= residue:
                    non_descents.append({"residue": residue, "odd_count": odd_count,
                                         "endpoint": standard})
    expected = [math.comb(20, h) for h in range(21)]
    return {
        "schema": "mathcase-collatz-at-most-12-finite-census-r1",
        "modulus": limit,
        "accelerated_steps": 20,
        "criterion": "at most 12 odd inputs",
        "ordinary_steps_checked": "20 + odd_count",
        "all_residue_weight_counts_match_binomial": counts == expected,
        "weight_counts": counts,
        "qualifying_residue_count": eligible,
        "qualifying_fraction": f"{eligible}/{limit}",
        "qualifying_percent": 100 * eligible / limit,
        "positive_base_residues_at_least_3_checked": positive_eligible,
        "endpoint_mismatch_count": endpoint_mismatches,
        "non_descent_count_for_residue_at_least_3": len(non_descents),
        "non_descent_samples": non_descents[:10],
        "ordered_record_stream_sha256": digest.hexdigest(),
        "elapsed_seconds": round(time.monotonic() - started, 3),
        "external_spend_usd": 0,
        "network_used": False,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description="Exhaustively check all 20-bit Collatz parity residues.")
    parser.add_argument("--output", type=pathlib.Path, help="optional JSON receipt path")
    args = parser.parse_args()
    result = run()
    result["status"] = "PASS" if (
        result["all_residue_weight_counts_match_binomial"]
        and result["endpoint_mismatch_count"] == 0
        and result["non_descent_count_for_residue_at_least_3"] == 0
    ) else "FAIL"
    text = json.dumps(result, indent=2, sort_keys=True) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(text, encoding="utf-8")
    print(text, end="")
    return 0 if result["status"] == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())
