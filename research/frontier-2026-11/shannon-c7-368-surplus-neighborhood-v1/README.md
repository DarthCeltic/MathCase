# C7^5 surplus-neighborhood pilot

Status: **bounded miss, UNKNOWN**. This did not find a set of mutually compatible outsiders S with |S|>|N(S)| against the pinned 367-word seed. It is not an impossibility result and does not change the known 367 lower bound.

## Exact experiment

Input is the published Polak–Schrijver seed `base_c7.json` in this package (SHA-256 `2395d9ce16e068010a5f2a57f3fbfec5a607fa9272b02afd6c9e4a95fc70016b`). Search considers every vertex outside I0 (16,440 words), not only the separately supplied X subset. For a compatible outsider set S, N(S) is the set of I0 words confusable with at least one member of S. If |S|>|N(S)|, then replacing N(S) by S in I0 yields a code of at least 368 words.

From this folder, run:

```powershell
python -u .\search.py --base .\base_c7.json --seconds 30 --starts 12 --depth 4 --seed 281128 --out .
python -B .\verify.py --base .\base_c7.json --result .\search-result.json --out .\verification.json
```

The search greedily constructs compatible outsider sets, choosing among 300 randomly sampled available candidates by the smallest incremental seed neighborhood. Seed 281128, 12 starts, depth cap 4, 14,400 candidate evaluations. It completed all 12 starts in 0.311 seconds on this host. Best observed set is S={1279,13158}, with N(S)={3680,10708,15384}; |S|=2, |N(S)|=3, surplus -1. No positive surplus appeared. The finite run is not exhaustive over compatible outsider sets.

`verify.py` is a separate direct-coordinate checker: it recomputes pair confusability and the exact N(S), verifies I0's 367 distinct words are pairwise independent, checks the surplus arithmetic, and rejects a planted duplicate-word control. The positive condition is false for the candidate (as expected); verification PASS means the recorded negative result is internally consistent, not that a 368 code was found. Search adjacency uses enumerated residue offsets, whereas verification evaluates the pair definition directly.

## Relationship to prior experiments

This uses the surplus-neighborhood criterion and varies S across the whole outsider domain. It is different in objective from the completed empty-graph greedy miss (which sought large codes directly) and from the diagonal-slice pilot (which altered selected coordinates/slices of the seed). This small run is only a first bounded pilot; it does not exhaust the surplus criterion. The earlier domain audit cited by the task was not found in the supplied T: redesign directory, so its prior recorded statuses were not re-run or modified.

Primary source for the 367-word construction: Polak and Schrijver, https://arxiv.org/abs/1808.07438. No public files were changed.
