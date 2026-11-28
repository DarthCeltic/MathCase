import argparse, hashlib, json, math, os, platform, sys, time
from pathlib import Path

W, H = 7, 3
RUN_START = None
MAX_SECONDS = 180
N = W * H
TOTAL = 1 << N


def direct_hist():
    # Enumerate every assignment in binary-reflected Gray order. Update only
    # the four incident bonds and the flipped site's up-spin count.
    edges = []
    for y in range(H):
        for x in range(W):
            i = y * W + x
            edges.append((i, y * W + (x + 1) % W))
            edges.append((i, ((y + 1) % H) * W + x))
    incident = [[] for _ in range(N)]
    for a, b in edges:
        incident[a].append((a, b))
        incident[b].append((a, b))
    spins = [0] * N
    broken = 0
    up = 0
    hist = [[0] * (N + 1) for _ in range(2 * N + 1)]
    hist[0][0] = 1
    prev_gray = 0
    for k in range(1, TOTAL):
        if (k & 65535) == 0 and RUN_START is not None and time.monotonic() - RUN_START > MAX_SECONDS:
            raise TimeoutError("direct enumeration exceeded runtime cap")
        gray = k ^ (k >> 1)
        bit = (gray ^ prev_gray).bit_length() - 1
        old = spins[bit]
        delta = 0
        for a, b in incident[bit]:
            before = spins[a] != spins[b]
            after = ((1 - old) if a == bit else spins[a]) != ((1 - old) if b == bit else spins[b])
            delta += int(after) - int(before)
        spins[bit] = 1 - old
        broken += delta
        up += 1 if old == 0 else -1
        hist[broken][up] += 1
        prev_gray = gray
    return hist, len(edges)


def transfer_hist(include_vertical=True):
    # A column is a 3-bit cyclic spin state. For each possible first column,
    # sum all seven-column closed walks. Transition cost adds horizontal bonds
    # between columns; each column contributes its vertical cyclic bonds and
    # its number of + spins. The closing transition makes the torus seam.
    states = list(range(1 << H))
    vert = [sum(((s >> y) & 1) != ((s >> ((y + 1) % H)) & 1) for y in range(H)) if include_vertical else 0 for s in states]
    ups = [s.bit_count() for s in states]
    horiz = [[sum(((a >> y) & 1) != ((b >> y) & 1) for y in range(H)) for b in states] for a in states]
    out = [[0] * (N + 1) for _ in range(2 * N + 1)]
    for first in states:
        # keys (broken bonds so far, up spins so far, last state)
        dp = {(vert[first], ups[first], first): 1}
        for _ in range(1, W):
            if RUN_START is not None and time.monotonic() - RUN_START > MAX_SECONDS:
                raise TimeoutError("transfer computation exceeded runtime cap")
            nxt = {}
            for (e, u, last), count in dp.items():
                for s in states:
                    key = (e + vert[s] + horiz[last][s], u + ups[s], s)
                    nxt[key] = nxt.get(key, 0) + count
            dp = nxt
        for (e, u, last), count in dp.items():
            ee = e + horiz[last][first]
            out[ee][u] += count
    return out


def profile_check(hist):
    rows = []
    failures = []
    for u in range(N + 1):
        raw = [hist[e][u] for e in range(2 * N + 1)]
        nonzero = [i for i, x in enumerate(raw) if x]
        lo, hi = (nonzero[0], nonzero[-1]) if nonzero else (0, -1)
        trimmed = raw[lo:hi + 1]
        # Keep interior zero bins; compare adjacent naturally spaced even bonds.
        even = [trimmed[e - lo] for e in range(lo, hi + 1) if e % 2 == 0]
        # Because all valid bond counts are even, even profile is contiguous in steps of two.
        bad = []
        for i in range(1, len(even) - 1):
            if even[i] * even[i] < even[i - 1] * even[i + 1]:
                bad.append({"index": i, "left": even[i - 1], "middle": even[i], "right": even[i + 1],
                            "lhs": even[i] * even[i], "rhs": even[i - 1] * even[i + 1]})
        row = {"up_spins": u, "trimmed_even_bond_profile": even, "log_concave": not bad, "violations": bad}
        rows.append(row)
        if bad:
            failures.append(row)
    return rows, failures


def sha(path):
    h = hashlib.sha256()
    with open(path, "rb") as f:
        for b in iter(lambda: f.read(1024 * 1024), b""):
            h.update(b)
    return h.hexdigest()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--max-seconds", type=int, default=180)
    ap.add_argument("--output", required=True)
    args = ap.parse_args()
    global RUN_START, MAX_SECONDS
    start = time.monotonic()
    RUN_START = start
    MAX_SECONDS = args.max_seconds
    out = Path(args.output).resolve()
    out.parent.mkdir(parents=True, exist_ok=True)
    source = Path(__file__).resolve()
    status = "FAIL"
    try:
        direct, edge_count = direct_hist()
        direct_elapsed = time.monotonic() - start
        transfer = transfer_hist(True)
        transfer_elapsed = time.monotonic() - start - direct_elapsed
        same = direct == transfer
        damaged = transfer_hist(False)
        damaged_rejected = damaged != direct
        profiles, failures = profile_check(direct)
        status = "PASS_EXACT_FINITE_CHECK" if same and damaged_rejected else "FAIL_CROSSCHECK"
        receipt = {
            "status": status, "grid": {"width": W, "height": H, "periodic": True, "vertices": N,
                "edges": edge_count, "assignments": TOTAL},
            "methods": ["Gray-code direct enumeration updating incident bonds", "closed-walk transfer over 8 three-spin column states"],
            "histograms_equal": same, "direct_histogram": direct,
            "histogram_sha256_compact_json": hashlib.sha256(json.dumps(direct, separators=(",", ":")).encode()).hexdigest(),
            "fixed_up_spin_profiles": profiles, "log_concavity_failures": failures,
            "zero_bin_convention": "Leading and trailing zero bins trimmed; interior zeros retained; positive-neighbor inequality violations count as failures. Odd bond bins excluded from shape profile because degree-four torus bond counts are even.",
            "damaged_control": {"control": "transfer method omitting all vertical bonds", "rejected": damaged_rejected},
            "timing_seconds": {"direct": round(direct_elapsed, 6), "transfer": round(transfer_elapsed, 6), "total": round(time.monotonic() - start, 6)},
            "runtime_limit_seconds": args.max_seconds, "runtime_limit_enforced": True,
            "python": sys.version, "platform": platform.platform(), "external_calls": 0,
            "source_sha256": sha(source),
        }
        if receipt["timing_seconds"]["total"] > args.max_seconds:
            receipt["status"] = "TIMEOUT_AFTER_COMPLETION"
        receipt["receipt_sha256_self_excluded"] = None
        out.write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")
        receipt["receipt_sha256_self_excluded"] = sha(out)
        out.write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")
        print(json.dumps({"status": receipt["status"], "histograms_equal": same, "failures": [(x["up_spins"], x["trimmed_even_bond_profile"]) for x in failures], "timing_seconds": receipt["timing_seconds"], "output": str(out)}))
        return 0 if receipt["status"] == "PASS_EXACT_FINITE_CHECK" else 1
    except Exception as exc:
        receipt = {"status": status, "error": repr(exc), "runtime_limit_seconds": args.max_seconds,
                   "elapsed_seconds": round(time.monotonic() - start, 6), "source_sha256": sha(source)}
        out.write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")
        print(json.dumps(receipt))
        return 1

if __name__ == "__main__":
    raise SystemExit(main())




