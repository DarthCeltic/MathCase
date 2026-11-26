# Can a 207-number coloring reach 208?

Fred Rowley colored the integers 1 through 207 with five colors so that no three numbers of the same color satisfy `a + b = c` for distinct addends `a < b`. Rebecca Vicenzi and colleagues found a second construction using structured SAT search. MathCase checks both witnesses and tests how much of either one can survive an extension to 208. [Rowley’s entry in OEIS A072842](https://oeis.org/A072842) · [Vicenzi et al., *FunSearch and Structured SAT Search for Weak Schur Partitions*](https://arxiv.org/abs/2611.22032)

## Findings

| Test | Rowley | Vicenzi et al. |
|---|---:|---:|
| Pairs with distinct positive addends and sum at most 207 | 10,609 | 10,609 |
| Monochromatic sums | 0 | 0 |
| Conflicts when appending 208 unchanged, for colors 1–5 | 11, 9, 6, 1, 14 | 9, 9, 6, 2, 14 |
| Longest recoloring radius fully exhausted in this experiment | 18 | 18 |
| Shortest tested original prefix proven impossible to extend by unrestricted suffix recoloring | 128 | 96 |

After optimal relabeling the two published colorings agree on 191 of their 207 positions. With either seed, an extension to 208 must change **at least 19** of its existing colors, even after a global palette relabeling. A coloring farther from both seeds could still work. The unrestricted value of WS(5) remains open in this investigation. These are reproducible finite computations in Python. There is no Lean proof or independently checked UNSAT certificate for the 208 search.

An exact test also allowed entire classes to change. For each seed, holding any two old classes fixed made an extension impossible even when the other three could be repartitioned freely. Each of the 20 formulas has an independently checked DRAT proof. A search freeing four classes reached its time limit for every choice. [Whole-class extension test and public proof files](class-extensions/README.md)

## A separate one-error candidate

A different saved five-color assignment for 1 through 208 has one forbidden sum: 4, 8, and 12 share a color, even though 4 + 8 = 12. Any fix must change at least one of those three numbers. An exhaustive check tested every way to change one, two, or three numbers that could repair this assignment: 4,064,044 possible changes across all 10,712 distinct-addend triples. None removed every forbidden sum; the best candidates still had 9, 8, or 7 conflicts at distances one, two, or three.

This result is only about that one saved assignment. It does not rule out a valid coloring of 1 through 208, say anything about other starting assignments, or change the known bound. The sources, exact candidate, fresh-clone replay, and limits are in [`repair-radius-three-v1`](repair-radius-three-v1/README.md).

## Replay

Python 3.10+ with its standard library is sufficient. The first command downloads two small files from immutable public GitHub revisions, verifies both SHA-256 values, and caches the originals. With that directory present all subsequent commands run offline. The output JSONs contain computed counts and search limits. The upstream colorings stay in the input cache.

```text
python verify_weak_schur.py --input-cache ws-inputs --output receipt.json --prefixes 160 128 104 96 80 64 48 40 32 24 --nodes 15000
python search_radius.py --input-cache ws-inputs --output radius-18-deeper.json --radius 18 --nodes 400000
python radius_controls.py
```

The first checker enumerates each unordered pair directly. It tests both valid seeds, flags the deliberate 1 + 2 = 3 corruption, and allows the repeated-addend 1 + 1 = 2. Its second procedure fixes a prefix, assigns possible colors to the other numbers, and removes any third color forced to conflict with a known pair of equal colors. Every 208 prefix marked `UNKNOWN_NODE_LIMIT` reached the stated node budget. The same algorithm found valid 207 completions starting from 96 fixed positions in each seed.

The radius search tries each of the five colors for 208. At every state with a monochromatic triple, a successful completion must change at least one still-editable member of that triple. The program branches on each possible member and final replacement color. It commits each replacement for that branch. If it finds more disjoint sets of required changes than the remaining budget allows, that branch ends. All ten radius-18 searches finished below their node cap. An independent exhaustive enumerator checks the implementation on 312 small two-color queries, including 72 where a solution requires changing a seed color.

The published source and certificate pins and checksums are in `verify_weak_schur.py`. Both witnesses retain their original authorship.
