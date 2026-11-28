# C7 equal-seed persistence with multi-ejection (bounded run)

Date: 2026-11-28. This is a finite search experiment for a 368-word independent set in the fivefold strong product of C7. The established 367-word Polak–Schrijver construction remains the best size found here; this experiment does not prove a 368-set impossible.

## Inputs and seeds

`base_c7.json` is the pinned public 367-word seed, SHA-256 `2395d9ce16e068010a5f2a57f3fbfec5a607fa9272b02afd6c9e4a95fc70016b`. The saved audit `equal-seed-audit.json` (SHA-256 `ADC054B1EECCD60D6CB63FC975132607058D553F5F717C8E1BDACF80FDDCE871`) identified eight legal one-for-one changes from that seed. `search.py` reconstructed and validated all eight, deduplicated them with the original, and persisted a nine-seed pool in `equal-seed-pool.json`. Eight of nine are non-I0 seeds.

## Search and result

Command: `python -B search.py` (Python 3.14.7). Fixed PRNG seed 281128; 120-second monotonic wall cap; T: scratch only; no external calls. Each move chose 2–5 outside words, removed the union of their conflicts, inserted a mutually compatible subset, then sampled a bounded refill. All distinct valid 367 sets were retained and reused as restart seeds. Result: 83 starts, 9,941 moves, best size 367, zero new distinct size-367 seeds retained, `NO_368_FOUND_UNKNOWN`.

This is evidence only about this bounded multi-ejection process initialized with the eight audited single-swap seeds and I0. It is not an exhaustive search over all codes or all neighborhoods. It extends the earlier persistence pilot by seeding from the eight non-I0 legal variants and using multi-outsider ejection rather than the previous I0-only ejection chain. It did not discover a new equal-size seed to diversify further.

## Independent check

Run `python -B verify.py`. This separately decodes base-7 words and checks all 67,161 unordered pairs for the returned 367-set and for every seed in the nine-entry starting pool. It also plants a known conflicting pair and verifies rejection. Result is in `independent-verification.json`.

The older published record and full details are preserved in the input files. This folder is a public research receipt, not a claim of a new bound.
