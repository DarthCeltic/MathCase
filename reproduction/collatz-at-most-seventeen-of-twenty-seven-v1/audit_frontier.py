import hashlib, json, math, pathlib, sys
from datetime import datetime, timezone

def audit():
    t, cutoff = 27, 17
    row = [1]
    for _ in range(t):
        row = [1] + [row[i - 1] + row[i] for i in range(1, len(row))] + [1]
    pascal_count = sum(row[:cutoff + 1])
    combination_count = sum(math.comb(t, h) for h in range(cutoff + 1))
    thresholds = []
    for h in range(cutoff + 1):
        a, b = 3**h, 2**t
        numerator = a * 2**(t-h) - b
        denominator = b-a
        threshold = max(0, numerator // denominator + 1)
        ok_at_threshold = a * (threshold + 2**(t-h)) < b * (threshold + 1)
        ok_before = threshold == 0 or not (a * (threshold-1 + 2**(t-h)) < b * threshold)
        thresholds.append({"h": h, "minimum_start": threshold, "holds_at_threshold": ok_at_threshold, "fails_at_previous": ok_before})
    return {
        "status": "PASS" if pascal_count == combination_count == 126025204 and max(x["minimum_start"] for x in thresholds) == 26018 and thresholds[17]["minimum_start"] == 26018 and all(3**h < 2**t for h in range(cutoff+1)) and all(x["holds_at_threshold"] and x["fails_at_previous"] for x in thresholds) else "FAIL",
        "steps": t, "cutoff_odd_inputs": cutoff, "parity_word_count_pascal": pascal_count,
        "parity_word_count_combinations": combination_count, "total_residues": 2**t,
        "fraction": f"{pascal_count}/{2**t}", "percentage": 100*pascal_count/(2**t),
        "minimum_start_threshold_by_odd_count": thresholds,
        "largest_threshold": max(x["minimum_start"] for x in thresholds),
        "network_or_provider_calls": 0, "external_cost_usd": 0,
    }

def main():
    p = pathlib.Path(__file__).resolve().parent
    if len(sys.argv) != 2:
        raise SystemExit("usage: audit_frontier.py OUTPUT.json")
    out = pathlib.Path(sys.argv[1]).resolve()
    data = audit()
    out.write_text(json.dumps(data, indent=2) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps({"status": data["status"], "count": data["parity_word_count_pascal"], "threshold": data["largest_threshold"], "percentage": data["percentage"]}, indent=2))
    raise SystemExit(0 if data["status"] == "PASS" else 1)
if __name__ == "__main__": main()
