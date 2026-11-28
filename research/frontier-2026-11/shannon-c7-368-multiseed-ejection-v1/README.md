# C7 multi-seed ejection search (bounded UNKNOWN)

Question: does coordinated ejection/refill from multiple distinct 367-word
starting codes find a 368-word independent set in the five-fold strong-product
representation of C7?

## Method and scope

The checked published 367-code is `base_c7.json` (SHA-256
`2395d9ce16e068010a5f2a57f3fbfec5a607fa9272b02afd6c9e4a95fc70016b`). The
seed-preparation pass examines every word in `[0,7^5)` and forms every valid
one-for-one exchange with exactly one conflict against that code. It found eight
exchanges, giving nine distinct valid size-367 seeds total. `seed-pool.json`
records the exact codes and exchanges. The heuristic then starts chains uniformly
from those seeds, removes all words conflicting with a sampled outsider, and
samples 800 words for greedy refill. It used Python's PRNG seed 291128 and a
60-second search-loop cap. The cap begins after the exhaustive seed preparation;
wall time for seed preparation plus the capped loop is recorded separately.

Command:

```powershell
python -B search_multiseed.py
python -B verify_multiseed.py
```

## Result

`NO_368_FOUND_UNKNOWN`: 8 starts, 455 attempted moves, best size 367, and zero
new distinct size-367 codes encountered during the chains. This does not rule
out any 368-code, nor does it alter the published 367 lower bound. It only
records this finite one-swap seed family and bounded stochastic continuation.

The separate checker decodes base-7 digits by repeated division, verifies all
67,161 pairs in both the published code and best candidate, checks all nine
seed codes, and rejects a planted conflicting word. `verification.json` is
PASS. No external calls or provider spend. This package is a reproducible
negative search record, not a mathematical impossibility proof and not a new
lower bound.
