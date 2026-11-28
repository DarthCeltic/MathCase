# Weak Schur(5): block-crossover repair pilot

## Result

A 30-second local CPU search tested 39 of 50 designed starts, making 46,766
single-number repair moves. It ended at the wall cap without a valid
five-coloring of 1 through 208. The best candidate has one forbidden triple:
`12 + 196 = 208`, all in color 4. It differs from the Rowley 207 coloring
with 208 appended in color 4 at 7 of the 208 positions, and from the Vicenzi
coloring with that append at 9 positions. It is a distinct one-conflict
candidate, not a new valid construction.

The candidate retains the same one forbidden triple as the simple
Rowley-plus-208 assignment. This is useful only as a bounded search record;
the established lower bound remains 207, and `WS(5)` remains open.

The supplied result JSON also contains a `distance_from_known_appended_seeds`
summary that does not agree with the candidate bytes. The independent check
recomputes the direct Hamming distances as 7 from Rowley-plus-color-4 and 9
from Vicenzi-plus-color-4; these recomputed values are the ones reported
above. No conclusion here relies on that inconsistent summary field.

## Method and limits

The search mixed contiguous blocks from the two hash-pinned 207 witnesses,
tried all five colors for 208, then used greedy conflict-delta recoloring.
Block lengths were 4, 7, 11, 16, 23, 31, 43, 64, 17, and 29 with the exact
offsets and patterns recorded in `result.json`. The run used Python 3.14.7,
seed 20261128, a 30-second wall cap, and at most 1,200 local moves per start.
It evaluated 39 starts before the cap. The run made no Lean, solver, network,
model, or paid-compute calls.

This is materially different from recoloring a fixed neighborhood of one
seed: each start is a blockwise hybrid of two published colorings. It does
not exhaust all hybrids, all repair paths, or all 208-colorings. A timeout
does not show that a valid coloring is impossible.

## Check and replay

Check the saved candidate and controls without repeating the search:

```text
python -B verify_result.py
```

This checks the pinned input bytes, both valid 207 controls, the candidate's
full 10,712-constraint direct and bitset scans, the stored sole violation,
and an all-one damaged control. To rerun the bounded pilot, first copy this
folder so the generated result cannot overwrite the preserved record, then
run `python -B pilot.py` from the copy. It may reach a different number of
starts before its wall cap on another machine.

The Rowley input is credited to [OEIS A072842](https://oeis.org/A072842).
The second seed is from Vicenzi et al., [*FunSearch and Structured SAT Search
for Weak Schur Partitions*](https://arxiv.org/abs/2611.22032). Their exact
immutable source URLs and SHA-256 values are recorded in `verify_weak_schur.py`
and `result.json`.

## Files and hashes

`pilot.py` is the bounded search; `result.json` is its saved run record.
`verify_result.py` checks the result without searching. `rowley`, `vicenzi`,
and `verify_weak_schur.py` are the exact pinned inputs used by the pilot.
`SHA256SUMS` records all release files other than itself.
