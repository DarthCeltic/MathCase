# C7 five-symbol surplus-neighborhood pilot

This pilot tests a specific way to improve the published 367-word code. For
a compatible outsider set `S`, let `N(S)` be the seed words that conflict
with at least one outsider. If `|S| > |N(S)|`, replacing `N(S)` by `S` would
produce a code of at least 368 words.

The bounded run examined all 16,440 outsiders, used 12 starts, depth cap 4,
14,400 candidate evaluations, and seed `281128`. Its best set was
`S={1279,13158}`, with `N(S)={3680,10708,15384}`. Thus `|S|-|N(S)| = -1`;
the run ended `NO_SURPLUS_FOUND_UNKNOWN`.

## Reproduce

From this directory in a fresh MathCase checkout:

```powershell
python -u .\search.py --base .\base_c7.json --seconds 30 --starts 12 --depth 4 --seed 281128 --out .
python -B .\verify.py --base .\base_c7.json --result .\search-result.json --out .\verification.json
```

The independent verifier recomputes the pair relation and exact neighborhood,
checks the 367-word seed, validates the surplus arithmetic, and rejects a
planted duplicate. A PASS means the negative run is internally consistent; it
does not exhaust all compatible outsider sets.

The known 367-word construction is attributed to Polak and Schrijver,
[arXiv:1808.07438](https://arxiv.org/abs/1808.07438). This is a bounded
construction-family experiment, not a new bound, impossibility proof, or
priority claim.
