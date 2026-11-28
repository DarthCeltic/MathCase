# C7⁵ search: a bounded miss at 368

**Plain result:** a fresh randomized search did not find a 368-word code for the fivefold strong product of the seven-cycle. This does **not** prove that 368 is impossible and does not change the known lower bound 367.

The search started from an empty set on all 16,807 five-symbol words. It froze no part of the published construction, imposed no slice pattern, and ran 12,549 randomized greedy trials with seed `28112026` and a 180-second search cap. The best set had 253 words.

The published 367-word control passed all 67,161 pair checks. The saved 253-word candidate passed its 31,878 pair checks. A deliberately corrupted candidate was rejected. The independent checker is `verify.py`; the search is `search.py`.

## Reproduce

From this directory:

```powershell
python -u .\search.py --seconds 180 --seed 28112026 --out .
python -B .\verify.py --baseline .\base_c7.json --candidate .\search-result.json --out .\verification.json
```

The run record reports Python 3.14.7, 185.367 seconds including setup and final validation, no network or provider calls, and zero external cost. The candidate and all receipts are hash-bound in `SHA256SUMS`.

The criterion checked is exact: two distinct words conflict when every coordinate difference modulo seven is 0, 1, or 6. A valid code contains no conflicting pair.

The known construction is attributed to Polak and Schrijver ([arXiv:1808.07438](https://arxiv.org/abs/1808.07438)); the published context records `367 ≤ α(C7⁵) ≤ 401`. This experiment is a bounded search record, not a maximality proof, impossibility proof, novelty claim, or solution of a Shannon-capacity problem.

## Next question

A useful next search would use unrestricted ejection chains or a surplus-neighborhood calculation against the 367-word seed. This package deliberately stops at the measured miss and preserves the negative result.
