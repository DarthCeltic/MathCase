# C7^5 five-symbol code: whole-graph greedy redesign

> Historical package. The canonical, fresh-clone-verified package is [v2](../shannon-c7-368-whole-graph-greedy-v2/README.md). This v1 record is retained for provenance.

**Status: bounded search miss; no improvement.** On 2026-11-28, a fresh randomized greedy maximal-independent-set search over all 16,807 vertices of the fivefold C7 strong product found a best set of 253 words. It did not find 368. This is `UNKNOWN` about whether a 368-word code exists and does not change the known 367 lower bound or the published global upper bound.

## Why this is a different search

The earlier pilot started each trial from the published 367-word Polak–Schrijver code and only varied selected diagonal slices, leaving the other seed words frozen. This redesign started from an empty set on the full vertex set for every trial. It imposed no fixed core, no diagonal form, and no slice restrictions. Each trial shuffled all 16,807 words (alternating an unbiased random permutation with a randomized biased-priority order), then accepted a word exactly when it conflicted with none already selected. This is a cheap baseline, not a strong maximum-independent-set algorithm; the observed best of 253 is far below the known construction.

## Exact run

From this directory:

```powershell
python -u .\search.py --seconds 180 --seed 28112026 --out .
python -B .\verify.py --baseline .\base_c7.json --candidate .\search-result.json --out .\verification.json
```

Python was 3.14.7. The 180-second cap governs the search loop; graph-mask construction took 5.341 seconds before the loop, and final independent pair-checking followed it. The search completed 12,549 trials, reached size 253, and reported 185.367 seconds total including setup/final check. The 253-word candidate passed a separate pairwise checker (31,878 pairs). The copied published baseline `I0` passed all 67,161 pairs. A planted adjacent-coordinate corruption was rejected with a concrete conflicting pair. See `search-result.json` and `verification.json`.

## Mathematical check

Encode a word as five base-7 digits. Distinct words are confusable exactly when each coordinate difference modulo seven is 0, 1, or 6; a valid code has no such pair. `verify.py` checks this criterion directly over every unordered pair and does not reuse the search's bit-mask routine.

The baseline input is the published `base_c7.json` from `spectra-research/shannon-capacity-lean`, commit `aa21eeb12b75b0413d3fa9fb4208b5d0bf2c4d65`, attributed there to the Polak–Schrijver 367-word construction. Its SHA-256 is pinned in the verification output. Current prior-art context was checked against `molind/c7-five` (README updated 2026-09-22): it records restricted-domain obstructions and the published bounds `367 ≤ α(C7^5) ≤ 401`, with no 368 construction or global 368-impossibility proof. This experiment does not repeat or certify those restricted-domain results and does not imply a global bound.

Primary reference for the known 367 construction: Polak and Schrijver, [arXiv:1808.07438](https://arxiv.org/abs/1808.07438). The C7^5 computational status and closed-domain inventory were read from [molind/c7-five](https://github.com/molind/c7-five). An earlier diagonal-slice audit is preserved separately and was not rerun here; this full-vertex greedy method is a separate experiment.

## Limits and next useful experiment

A low-quality greedy construction produces a negative search result only. It neither proves maximality of the returned 253-word set nor excludes any 368-word code. A more targeted next attempt should exploit the verified 367 code using an unrestricted ejection-chain / multiword-exchange method, or implement the surplus-neighborhood search: find mutually compatible outsiders `S` for which the seed words they conflict with, `N(S)`, satisfy `|S| > |N(S)|`. Do not describe the 233 prior domain statuses or this run as a global exclusion.
