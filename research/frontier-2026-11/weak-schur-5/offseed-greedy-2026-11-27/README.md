# Off-seed constructive search for Weak Schur 208

This campaign starts from scratch with randomized greedy colorings, not from
Rowley, Vicenzi, or any saved 208 near-miss. Each integer is assigned a color
that minimizes already-visible monochromatic sums; a conflict-directed tabu
repair then runs 25,000 moves. The campaign used master seed `2026112701`, 38
independent starts, and a nominal 900-second wall budget (the final in-flight
start completed at 949.684 seconds).

The best candidate has four exact conflicts:

```text
(1, 2, 3), (1, 3, 4), (2, 4, 6), (5, 7, 12)
```

The direct checker independently enumerates all 10,712 distinct-addend
constraints. This is a near-miss only: no 208 witness or impossibility claim is
made. `controls.json` records the known valid Rowley 207 control and a broken
207 control (changing position 1), both checked before packaging.

Replay:

```text
python -B validate_controls.py
python -B search.py
```
