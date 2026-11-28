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


def sha256(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def canonical(value):
    return json.dumps(value, sort_keys=True, separators=(",", ":"), ensure_ascii=False).encode()


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


def verify(receipt):
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
    main()
