# C7 five-symbol ejection-chain pilot

This is a distinct bounded search from the whole-graph greedy pilot. It starts
from the published 367-word construction, removes the words conflicting with
one selected outsider, and greedily refills the gap. That permits coordinated
removal and reinsertion instead of freezing the original seed.

The 180-second run used seed `281131`, completed 6 starts and 447 ejection
moves, and reached a best valid size of 367. Its status is
`NO_368_FOUND_UNKNOWN`: no 368-word code was found in this run, but the result
does not prove that one cannot exist.

## Reproduce

From this directory in a fresh MathCase checkout:

```powershell
python -u .\search.py --base .\base_c7.json --seconds 180 --seed 281131 --out .
python -B .\verify.py --base .\base_c7.json --result .\search-result.json --out .\verification.json
```

The independent verifier checked all 67,161 pairs in both the known baseline
and the saved candidate, and rejected a deliberately damaged duplicate. The
recorded result and verification receipt are included beside the source.

The known 367-word construction is attributed to Polak and Schrijver,
[arXiv:1808.07438](https://arxiv.org/abs/1808.07438). This is a project-level
search record, not a new bound, impossibility proof, or priority claim.
