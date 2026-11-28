# C7⁵ equal-size-seed persistence pilot

**Plain result:** a changed ejection-chain search ran for 180 seconds and did
not find a 368-word code or a distinct valid 367-word seed to reuse. It made
six starts and 419 ejection moves. The result is `UNKNOWN`: this bounded run
does not prove that 368 is impossible and does not change the known
`367 ≤ α(C7⁵) ≤ 401` interval.

## What changed

The earlier ejection pilot kept only the largest code. This pilot persists and
deduplicates every valid code of the baseline size, then reseeds later starts
from those equal-size codes. It recorded zero such codes beyond the published
seed. The saved `equal-size-seeds.json` is therefore an explicit empty result,
not a missing field.

The independent verifier checked all 67,161 pairs in the published baseline
and the saved candidate, and rejected a deliberately planted duplicate. Those
checks validate the recorded code and controls; they do not certify a global
search bound.

## Reproduce

From this directory in a fresh MathCase checkout:

```powershell
python -B search_persist.py --base .\base_c7.json --seconds 180 --seed 281129 --out run
python -B verify.py --base .\base_c7.json --result .\run\search-result.json --out .\run\verification.json
```

The search uses only local Python and makes no model or provider calls. The
known 367-word construction is attributed to Polak and Schrijver,
[arXiv:1808.07438](https://arxiv.org/abs/1808.07438). This is a project-level
negative search record, not a new bound, impossibility proof, or priority
claim.
