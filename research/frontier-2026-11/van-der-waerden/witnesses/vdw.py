"""Generate, check, and try a bounded one-point extension of two published colorings."""

import argparse
from collections import Counter
from dataclasses import dataclass
from hashlib import sha256
import json
import sys
import urllib.request


@dataclass(frozen=True)
class Case:
    colors: int
    length: int
    size: int


CASES = {"2-7": Case(2, 7, 3703), "5-3": Case(5, 3, 170)}
BASE = "https://raw.githubusercontent.com/marijnheule/vdWaerden/d18a9106ba9b720b18fd8d92946cf8b67746eab6/certificates/"
UPSTREAM = {
    "2-7": ("W_2_7_617.cert", 3703, "ed10ecd05b3bad235627e6104b89794073f538c3e8ae3979bd61e4e7acb369ff"),
    "5-3": ("W_5_3_170.cert", 171, "c639999c595d083f5fde1677ca12c3d67814bcfb89a3ce513a1337826246228a")
}


def witness(name):
    if name == "2-7":
        # Rabung's quadratic-residue construction; the final multiple of p
        # gets color 1, the first six multiples color 0. x=0 denotes point 1.
        p = 617
        squares = {a * a % p for a in range(1, p)}
        return tuple(int(x == 6 * p or (x % p != 0 and x % p not in squares))
                     for x in range(6 * p + 1))
    if name == "5-3":
        # Heule's pinned W_5_3_170 certificate advances the color by one
        # modulo 5 every 17 positions. These are color indices of its seed.
        seed = (0, 0, 4, 4, 0, 4, 2, 3, 1, 1, 4, 1, 1, 2, 4, 0, 4)
        return tuple((seed[i % 17] + i // 17) % 5 for i in range(170))
    raise ValueError("Unknown case")


def validate_shape(points, case):
    if len(points) != case.size or any(c < 0 or c >= case.colors for c in points):
        raise ValueError("Incorrect witness length or out-of-palette color")


def enumerate_check(points, k):
    # For each start count all positive steps that fit inside the interval.
    n = len(points)
    examined = violations = 0
    first = None
    for start in range(n):
        for d in range(1, (n - 1 - start) // (k - 1) + 1):
            examined += 1
            for j in range(1, k):
                if points[start + j * d] != points[start]:
                    break
            else:
                violations += 1
                if first is None:
                    first = {"a": start + 1, "d": d, "color": points[start]}
    return {"progressions_examined": examined, "monochromatic": violations, "first": first}


def color_masks(points, r):
    masks = [0] * r
    for i, color in enumerate(points):
        masks[color] |= 1 << i
    return masks


def monochromatic_starts(masks, k, n):
    # Each set bit in the intersection is a zero-indexed start, including
    # boundary starts. No zero padding can introduce a set bit.
    for d in range(1, (n - 1) // (k - 1) + 1):
        for color, mask in enumerate(masks):
            starts = mask
            for j in range(1, k):
                starts &= mask >> (j * d)
                if not starts:
                    break
            if starts:
                yield d, color, starts


def bitset_check(points, k, r):
    matches = 0
    first = None
    for d, color, starts in monochromatic_starts(color_masks(points, r), k, len(points)):
        matches += starts.bit_count()
        if first is None:
            first = {"a": (starts & -starts).bit_length(), "d": d, "color": color}
    # Independent arithmetic count of all starts grouped by step.
    examined = sum(len(points) - (k - 1) * d for d in range(1, (len(points) - 1) // (k - 1) + 1))
    return {"progressions_examined": examined, "monochromatic": matches, "first": first}


def check_both(points, case):
    validate_shape(points, case)
    direct = enumerate_check(points, case.length)
    masks = bitset_check(points, case.length, case.colors)
    if (direct["progressions_examined"], direct["monochromatic"]) != (
            masks["progressions_examined"], masks["monochromatic"]):
        raise ValueError("Independent checking methods disagree")
    return {"start_step_enumeration": direct, "bit_intersections": masks}


def normalized_bytes(points):
    return ("".join(str(c) for c in points) + "\n").encode("ascii")


def baseline(name):
    case = CASES[name]
    points = witness(name)
    result = check_both(points, case)
    if result["start_step_enumeration"]["monochromatic"]:
        raise ValueError("Full-length witness fails")
    # Deliberately corrupt the first k positions into a constant run.
    invalid = (0,) * case.length + points[case.length:]
    control = check_both(invalid, case)
    if control["start_step_enumeration"]["monochromatic"] == 0:
        raise ValueError("Failed to reject the invalid coloring")
    return {"case": name, "colors": case.colors, "progression_length": case.length,
            "witness_length": case.size, "interval_one_based": [1, case.size],
            "implied_lower_bound_inclusive": case.size + 1,
            "coloring_sha256_digits_followed_by_LF": sha256(normalized_bytes(points)).hexdigest(),
            "color_counts": sorted(Counter(points).items()), "baseline_checks": result,
            "negative_control": {"change": f"First {case.length} positions set to color zero",
                                 "checks": control}}


def at_boundary(points, k, color):
    """Conflicts made by appending color; old positions use one-based labels."""
    n = len(points)
    return [{"a": n + 1 - (k - 1) * d, "d": d}
            for d in range(1, n // (k - 1) + 1)
            if all(points[n - j * d] == color for j in range(1, k))]


class BudgetReached(Exception):
    pass


def repair(original, case, side, end_color, radius, node_limit):
    # Always search at the right endpoint; reversing maps left extension to right.
    old = original if side == "right" else original[::-1]
    n = len(old)
    initial = old + (end_color,)
    seen = set()
    extended_masks = color_masks(initial, case.colors)

    def search(masks, edits):
        key = tuple(sorted(edits.items()))
        if key in seen:
            return None
        if len(seen) >= node_limit:
            raise BudgetReached
        seen.add(key)
        problem = next(monochromatic_starts(masks, case.length, n + 1), None)
        if problem is None:
            candidate = list(initial)
            for i, c in edits.items():
                candidate[i] = c
            return tuple(candidate)
        if len(edits) == radius:
            return None
        d, old_color, starts = problem
        a = (starts & -starts).bit_length() - 1
        # A successful completion has to change an as-yet-unedited member of
        # this violated AP. Branch over all such positions and final colors.
        for i in range(a, a + case.length * d, d):
            if i == n or i in edits:
                continue
            for new_color in range(case.colors):
                if new_color == old_color:
                    continue
                nxt = masks.copy()
                nxt[old_color] ^= 1 << i
                nxt[new_color] |= 1 << i
                edits[i] = new_color
                found = search(nxt, edits)
                del edits[i]
                if found is not None:
                    return found
        return None

    try:
        candidate = search(extended_masks, {})
        status = "NO_REPAIR_WITHIN_RADIUS" if candidate is None else "EXTENSION_FOUND"
    except BudgetReached:
        candidate = None
        status = "NODE_LIMIT_REACHED"
    result = {"side": side, "endpoint_color": end_color, "radius_old_recolors": radius,
              "node_limit": node_limit, "distinct_search_states": len(seen), "status": status,
              "fixed_old_word_conflicts_in_search_orientation": at_boundary(old, case.length, end_color)}
    if candidate is not None:
        if side == "left":
            candidate = candidate[::-1]
        checks = check_both(candidate, Case(case.colors, case.length, n + 1))
        if checks["bit_intersections"]["monochromatic"]:
            raise ValueError("Repair candidate rejected on full recheck")
        result.update(extended_digits=normalized_bytes(candidate).decode().strip(), checks=checks)
    return result


def upstream_check(name):
    filename, byte_count, expected = UPSTREAM[name]
    with urllib.request.urlopen(BASE + filename, timeout=10) as response:
        data = response.read(byte_count + 1)
    if len(data) != byte_count or sha256(data).hexdigest() != expected:
        raise ValueError("Upstream bytes differ from the pinned certificate")
    points = tuple(c - ord("a") for c in data.rstrip(b"\n"))
    upstream_digits = len(points)
    if name == "2-7":
        # This file contains 3,702 color symbols and a newline. Prefix 'a'.
        points = (0,) + points
    case = CASES[name]
    full_check = check_both(points, case)
    if full_check["bit_intersections"]["monochromatic"]:
        raise ValueError("The upstream coloring or completed witness has a violation")
    if name == "5-3" and points != witness(name):
        raise ValueError("17-color seed expansion differs from the author's file")
    return {"case": name, "url": BASE + filename, "upstream_file_bytes": byte_count,
            "upstream_sha256": expected, "upstream_color_symbols": upstream_digits,
            "prefix_a_added": name == "2-7", "full_length": len(points), "full_checks": full_check}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("action", choices=("coloring", "check", "repair", "upstream"))
    parser.add_argument("case", choices=CASES)
    parser.add_argument("--radius", type=int, default=3, choices=range(5))
    args = parser.parse_args()
    case = CASES[args.case]
    if args.action == "coloring":
        sys.stdout.buffer.write(normalized_bytes(witness(args.case)))
        return
    if args.action == "check":
        result = baseline(args.case)
    elif args.action == "upstream":
        result = upstream_check(args.case)
    else:
        points = witness(args.case)
        if check_both(points, case)["bit_intersections"]["monochromatic"]:
            raise ValueError("Cannot use an invalid baseline")
        result = {"case": args.case, "original_length": case.size, "target_length": case.size + 1,
                  "orientation": "left trials reverse the original word for the AP coordinates",
                  "searches": [repair(points, case, side, color, args.radius, 20000)
                               for side in ("left", "right") for color in range(case.colors)]}
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
