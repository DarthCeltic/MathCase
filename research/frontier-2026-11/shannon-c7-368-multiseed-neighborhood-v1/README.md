# C7 five-symbol multi-seed neighborhood pilot

**Result: `NO_368_FOUND_UNKNOWN`.** This finite, bounded search did not find a
368-word independent set. Its best saved exchange has 367 words and passes a
separate full pair check. A miss here is not an impossibility proof, an upper
bound, or a change to the established 367-word baseline.

## The question

The zero-error Shannon-capacity problem for the seven-cycle asks for a large
set of five-symbol words in which no two words are confusable in every one of
the five coordinates. The published Polak--Schrijver construction has 367
words. This pilot asks whether a coordinated local exchange can reach 368.

## What was run

The input is `base_c7.json`, the pinned 367-word construction (SHA-256
`2395d9ce16e068010a5f2a57f3fbfec5a607fa9272b02afd6c9e4a95fc70016b`). The
search reconstructs eight independently checked one-word swaps, so it starts
from nine valid 367-word seeds. For each seed it builds exact conflict
neighborhoods from base-7 coordinates, greedily chooses mutually compatible
outsiders, and scores `|S| - |N(S)|`. A positive score would produce a larger
independent set by replacing the conflicting seed words.

Run 03 used Python 3.14.7, PRNG seed `28112803`, a 45-second monotonic cap,
12 starts per seed, and depth at most 12. Seven of the nine seed masks were
built before the deadline; 84 starts and 161,280 candidate evaluations were
completed. The best exact surplus was 0, leaving a 367-word candidate.

From this directory, the same bounded search can be rerun with:

```powershell
python -u search.py --base base_c7.json --out run-03 --seconds 45 --seed 28112803 --trials-per-seed 12 --depth 12
python -B verify.py --base base_c7.json --candidate run-03/candidate.json --out run-03/independent-verification-rerun.json
```

The saved run is in `run-03/`. Its independent checker decodes each word
directly, checks all 67,161 unordered pairs in the candidate and the published
baseline, and rejects a deliberately planted conflict (witness `(46, 45)`).
The saved verification is `PASS`.

## Scope and next step

This experiment covers only the nine audited seeds, sampled greedy exchanges,
and the stated time/depth limits. It says nothing about other independent
sets or about the global value of the Shannon capacity. The next useful search
should diversify equal-size seeds or use an exact solver rather than treating
this bounded miss as evidence of impossibility.

The 367-word baseline is attributed to Polak and Schrijver:
<https://arxiv.org/abs/1808.07438>.
