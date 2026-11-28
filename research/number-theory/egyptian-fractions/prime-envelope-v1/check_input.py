"""Evaluate one input using the published prime-envelope theorem's arithmetic rule.

This is not a fresh Lean run. The receipt binds the result to the checked-in
theorem source and this evaluator, then can be independently replayed offline.
"""
import argparse
import hashlib
import json
from math import isqrt
from pathlib import Path

HERE = Path(__file__).resolve().parent
THEOREM = HERE / "lean" / "PrimeBand.lean"
VERSION = "prime-envelope-v1"
BROWSER_SCHEMA = "mathcase-prime-envelope-receipt-v1"
BROWSER_CHECKER_VERSION = "mathcase-prime-envelope-case-v1"
BROWSER_SOURCE_URLS = {
    "https://github.com/DarthCeltic/MathCase/blob/main/research/number-theory/egyptian-fractions/prime-envelope-v1/lean/PrimeBand.lean",
    "https://github.com/DarthCeltic/MathCase/blob/be1d3eec2bf82e677d7692f14828206a88e5cc06/research/number-theory/egyptian-fractions/prime-envelope-v1/lean/PrimeBand.lean",
}


def sha256(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def canonical(value):
    return json.dumps(value, sort_keys=True, separators=(",", ":"), ensure_ascii=False).encode()


def browser_canonical(value):
    """Match the insertion-order JSON fingerprint used by the first browser export."""
    body = dict(value)
    body.pop("receipt_sha256", None)
    return json.dumps(body, separators=(",", ":"), ensure_ascii=False).encode()


def is_prime(n):
    if n < 2:
        return False
    if n % 2 == 0:
        return n == 2
    return all(n % d for d in range(3, isqrt(n) + 1, 2))


def lower_index(p):
    b = (3 + isqrt(4 * p + 5)) // 4
    return b if 4 * b * b - 6 * b + 1 >= p else b + 1


def evaluate(p, s):
    payload = {
        "format": "mathcase-prime-envelope-input-v1",
        "theorem_version": VERSION,
        "theorem_source_sha256": sha256(THEOREM),
        "evaluator_sha256": sha256(Path(__file__)),
        "input": {"prime": p, "offset": s},
        "verification_kind": "deterministic integer evaluation of published Lean-classified rule; no Lean process run",
    }
    if not is_prime(p):
        payload.update(status="UNSUPPORTED_INPUT", reason="input is not prime")
    elif p < 43:
        payload.update(status="UNSUPPORTED_INPUT", reason="the theorem requires p >= 43")
    else:
        b = lower_index(p)
        d = 4 * b * b - 6 * b + 1
        allowed = isqrt(b) - 1 if b >= 16 else 0
        payload["conditions"] = {"B": b, "D_B": d, "required_prime_band": [4 * (b - 1) ** 2 - 6 * (b - 1) + 1, d],
                                 "maximum_certified_offset": allowed, "offset_condition": "(s+1)^2 <= B"}
        if s < 0 or s > allowed:
            payload.update(status="UNSUPPORTED_INPUT", reason="offset is outside the theorem's certified range")
        else:
            diff = d - p
            t = (isqrt(1 + diff) - 1) // 2 if diff >= 0 else -1
            matches = diff >= 0 and 4 * t * (t + 1) == diff and t <= s
            cap = (b + s) * p
            payload["cap"] = cap
            if matches:
                a, c = b - t - 1, b + t
                triple = [a * c, a * p, c * p]
                payload.update(status="EXISTS_WITHIN_CAP", witness={"t": t, "denominators": triple},
                               statement=f"There exists a triple of distinct positive integers x<y<z with 4/{p}=1/x+1/y+1/z and z<={cap}.")
            else:
                payload.update(status="NO_TRIPLE_WITHIN_CAP", statement=f"No triple of distinct positive integers x<y<z satisfies 4/{p}=1/x+1/y+1/z with z<={cap}.",
                               limit="Exclusion applies only through this cap; larger-denominator solutions are not ruled out.")
    payload["receipt_sha256"] = hashlib.sha256(canonical(payload)).hexdigest()
    return payload


def evaluate_browser(p, s, source_url):
    """Recompute the legacy Pages v1 receipt, independently of its stored result."""
    base = {
        "schema_version": BROWSER_SCHEMA,
        "checker_version": BROWSER_CHECKER_VERSION,
        "theorem": {
            "package": VERSION,
            "declarations": ["MathCase.PrimeBand.classification", "MathCase.PrimeBand.unique_under_cap"],
            "source_url": source_url,
            "source_sha256": sha256(THEOREM),
            "toolchain": "Lean 4.33.1 (819816b2e0a3bf405af45ae5c7af2491d8f5bee6)",
        },
        "input": {"p": p, "s": s},
    }
    if not isinstance(p, int) or p < 43 or p > 1_000_000:
        return {**base, "status": "UNSUPPORTED_INPUT", "message": "Enter a whole number from 43 through 1,000,000."}
    if not is_prime(p):
        return {**base, "status": "OUT_OF_SCOPE_COMPOSITE", "message": f"{p} is composite. This class starts with prime denominators."}
    if not isinstance(s, int) or s < 0 or s > 1_000:
        return {**base, "status": "UNSUPPORTED_INPUT", "message": "The offset s must be a whole number from 0 through 1,000."}
    b = 2
    while 4 * b * b - 6 * b + 1 < p:
        b += 1
    d_b = 4 * b * b - 6 * b + 1
    difference = d_b - p
    cap = (b + s) * p
    size_ok = b >= 16 and (s + 1) ** 2 <= b
    common = {
        **base,
        "computed": {
            "B": b,
            "D_B": d_b,
            "D_previous": 4 * (b - 1) * (b - 1) - 6 * (b - 1) + 1,
            "difference": difference,
            "cap": cap,
            "allowed_offsets": [4 * t * (t + 1) for t in range(s + 1)],
            "size_condition": "(s + 1)^2 ≤ B",
            "size_condition_value": (s + 1) ** 2,
            "size_condition_ok": size_ok,
        },
        "scope": [
            f"p = {p} is prime and B = {b} is the first index with D(B) ≥ p.",
            f"The cap is z ≤ (B + s)p = {cap}.",
            f"The theorem-side size conditions are B ≥ 16 and (s + 1)² ≤ B ({(s + 1) ** 2} ≤ {b}).",
        ],
    }
    if not size_ok:
        return {
            **common,
            "status": "INCONCLUSIVE_SCOPE",
            "message": "The prime is valid, but the pinned near-minimum theorem does not cover this cap. MathCase will not call this a proof of absence.",
        }
    for t in range(s + 1):
        if difference == 4 * t * (t + 1):
            a = b - t - 1
            c = b + t
            triple = [a * c, a * p, c * p]
            if a >= 1 and a < c:
                return {
                    **common,
                    "status": "CHECKED_WITNESS_UNDER_CAP",
                    "message": "The pinned criterion gives one triple under this cap, and the integer identity was checked again in the browser.",
                    "hit": {"t": t, "a": a, "b": c, "triple": triple},
                    "claim": f"For p = {p}, the pinned criterion gives the unique triple under z ≤ {cap}.",
                }
    return {
        **common,
        "status": "PROVED_EXCLUSION_UNDER_CAP",
        "message": "The pinned criterion has no allowed offset through s, so it proves that no triple fits under this cap. A larger denominator may still work.",
        "claim": f"For p = {p}, no triple fits under z ≤ {cap} under the pinned theorem hypotheses.",
    }


def verify_browser(receipt):
    theorem = receipt.get("theorem") if isinstance(receipt, dict) else None
    if not isinstance(receipt, dict) or receipt.get("schema_version") != BROWSER_SCHEMA:
        return False, "BROWSER_SCHEMA_MISMATCH"
    if receipt.get("checker_version") != BROWSER_CHECKER_VERSION or not isinstance(theorem, dict):
        return False, "BROWSER_CHECKER_MISMATCH"
    if theorem.get("source_sha256") != sha256(THEOREM) or theorem.get("source_url") not in BROWSER_SOURCE_URLS:
        return False, "PACKAGE_SOURCE_MISMATCH"
    claimed = receipt.get("receipt_sha256")
    if not isinstance(claimed, str) or hashlib.sha256(browser_canonical(receipt)).hexdigest() != claimed:
        return False, "RECEIPT_DIGEST_MISMATCH"
    inp = receipt.get("input")
    if not isinstance(inp, dict) or type(inp.get("p")) is not int or type(inp.get("s")) is not int:
        return False, "BROWSER_INPUT_MISMATCH"
    expected = evaluate_browser(inp["p"], inp["s"], theorem["source_url"])
    if expected != {k: v for k, v in receipt.items() if k != "receipt_sha256"}:
        return False, "RESULT_MISMATCH"
    return True, "REPLAY_MATCH"


def verify(receipt):
    if isinstance(receipt, dict) and receipt.get("schema_version") == BROWSER_SCHEMA:
        return verify_browser(receipt)
    claimed = receipt.get("receipt_sha256")
    body = dict(receipt)
    body.pop("receipt_sha256", None)
    if not isinstance(claimed, str) or hashlib.sha256(canonical(body)).hexdigest() != claimed:
        return False, "RECEIPT_DIGEST_MISMATCH"
    if body.get("theorem_source_sha256") != sha256(THEOREM) or body.get("evaluator_sha256") != sha256(Path(__file__)):
        return False, "PACKAGE_SOURCE_MISMATCH"
    expected = evaluate(body["input"]["prime"], body["input"]["offset"])
    if expected != receipt:
        return False, "RESULT_MISMATCH"
    return True, "REPLAY_MATCH"


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--prime", type=int)
    ap.add_argument("--offset", type=int)
    ap.add_argument("--out", type=Path)
    ap.add_argument("--verify", type=Path, help="verify and replay an existing receipt")
    args = ap.parse_args()
    if args.verify:
        try:
            data = json.loads(args.verify.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError) as e:
            raise SystemExit(f"invalid receipt: {e}")
        ok, status = verify(data)
        print(json.dumps({"status": status, "valid": ok}, indent=2))
        return 0 if ok else 1
    if args.prime is None or args.offset is None:
        ap.error("provide --prime and --offset, or use --verify RECEIPT")
    result = evaluate(args.prime, args.offset)
    rendered = json.dumps(result, indent=2) + "\n"
    if args.out:
        args.out.parent.mkdir(parents=True, exist_ok=True)
        args.out.write_text(rendered, encoding="utf-8")
    print(rendered, end="")


if __name__ == "__main__":
    raise SystemExit(main())
