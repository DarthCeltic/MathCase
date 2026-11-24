# Six math questions, with checkable limits

These are six active research tracks with runnable checks and a plain account of what each check does. The included computation and Lean checks are evidence for the bounded claims below; none settles the named open problem. The visitor page is [MathCase Frontier](https://darthceltic.github.io/frontier.html).

Run `python scripts/run_frontier_case.py list` from the repository root. Then run one ID, for example `python scripts/run_frontier_case.py vdw-2-7`. Each run creates a new output folder and preserves its logs and a small hash-bound `run.json`; it never overwrites an earlier run. `ws-5` downloads two pinned public witness files on first use, verifies their hashes, and keeps the downloaded inputs in the run folder. No model or provider is called. A runner exit code of zero means every listed command exited successfully; read the step logs and their domain-specific statuses for the mathematical result. In particular, a bounded search may finish with `UNKNOWN` and is not reported as a mathematical pass.

## The six tracks

| Case | What the current evidence says | What it does not say | Next measurable target |
|---|---|---|---|
| `vdw-2-7` | A checked two-coloring of 3,703 positions has no one-color seven-term arithmetic progression, so the known lower bound is `W(2,7) ≥ 3,704`. A separate certificate rules out one translated quadratic-residue construction family at length 3,704, covering 617 translations and 644,907,008 assignments. | The certificate covers that construction family only. It does not rule out every coloring at length 3,704 or prove an upper bound. | Check a genuinely different construction family or a general, independently verified length-3,704 refutation. |
| `ws-5` | Two published five-color weak-Schur witnesses on `[1,207]` are checked. Starting from either witness, every one of the five colors for 208 was searched through 18 old-color changes; all ten searches finished within their stated node caps. | This is a neighborhood search around two known witnesses, not a proof that 208 is impossible. `WS(5)` is not settled here. | Find a valid witness at 208 outside those neighborhoods, or produce a proof covering all five-colorings. |
| `ramsey-3-3-3-3` | A four-color graph on 50 vertices has no monochromatic triangle, giving the known lower bound `R(3,3,3,3) ≥ 51`. Every attachment to this particular graph was checked; a separate search finds any extension from this base needs at least three old-edge changes. | It does not rule out another 50-vertex graph or prove an upper bound. | Search for a distinct 50-vertex seed or certify a broader family of starting graphs. |
| `vdw-5-3` | A checked five-coloring of 170 positions gives `W(5,3) ≥ 171`. The unrestricted 171-position SAT encoding has 855 variables and 38,006 clauses. Its 20-second probe ended `UNKNOWN_WALL_LIMIT`; the W(2,3)=9 control is verified. | There is no verdict for the unrestricted 171-position problem. No exact value is claimed. | Obtain a checked SAT result for all 171-position colorings or find a valid coloring at 171. |
| `egyptian-28k-21` | Lean 4.33.1 checks an exact three-unit-fraction identity for every `n = 28k+21`, and a separate identity for every positive multiple of seven. | These cover two infinite families only, not every integer `n ≥ 2`; the full Erdős–Straus conjecture remains open. | Compare the identity carefully with prior literature, then formalize a genuinely broader family if one is found. |
| `ramsey-6-6` | The known Paley graph on 101 vertices has no monochromatic six-clique, giving `R(6,6) ≥ 102`. The certificates rule out adding a vertex while keeping that graph unchanged. Bounded recoloring checks say at least 16 old edges must change, with none of the 33 tested structured variants surviving. | This does not rule out a different 102-vertex coloring, establish a global upper bound, or show that 16 changes suffice. | Find a materially different 102-vertex seed and check every six-vertex subset, or formalize a broader obstruction. |

## How to reproduce

The standard-library Python checks need Python 3.10 or later. The Erdős–Straus route also needs Lean 4.33.1; it recompiles the two small `Init`-level sources in a temporary directory and checks the declared axioms and a deliberately wrong denominator control. It does not build Mathlib. The weak-Schur route downloads only the two immutable, hash-pinned source witnesses on first run; the exact upstream attribution and hashes are in `weak-schur-5/verify_weak_schur.py`.

The existing ten-case public launcher is unchanged. These six entries are a separate, focused research set. A focused regression test checks case registration and dry-run behavior without launching any calculations:

```text
python -m unittest tests.test_run_frontier_case
python scripts/run_frontier_case.py list
python scripts/run_frontier_case.py vdw-2-7
python scripts/run_frontier_case.py ws-5
python scripts/run_frontier_case.py ramsey-3-3-3-3
python scripts/run_frontier_case.py vdw-5-3
python scripts/run_frontier_case.py egyptian-28k-21
python scripts/run_frontier_case.py ramsey-6-6
```

Use `--dry-run` to inspect a route without running it. The hard 20-second W(5,3) SAT probe is preserved as `van-der-waerden/w5-3-upper/probe-20s.json`; the public runner checks the witness and positive control but does not repeat that probe automatically.

## Attribution and status

- The van der Waerden witness sources credit John R. Rabung and Marijn J. H. Heule; the original sources and hashes are recorded beside the witnesses. No upstream issue number, assignment, or endorsement is claimed in this package; no issue was contacted.
- Weak-Schur witness attribution remains with Fred Rowley and Rebecca Vicenzi and coauthors. The latest public paper reports a distinct 207-element construction: [arXiv:2611.22032](https://arxiv.org/abs/2611.22032).
- The four-color construction credits Fan Chung and Robertson. The four-color interval currently reported in the literature is `[51,60]`; see Tatarević's [version 2 preprint](https://arxiv.org/abs/2610.36648v2). MathCase checks the lower witness and selected fixed-base changes, not the upper-bound proof.
- The Egyptian-fraction folder cites Elsholtz and Tao for background. Its identities are presented as known-style algebraic constructions, with no priority claim.

`SHA256SUMS` binds the public files in this folder except the checksum file itself. Historical local runs and raw private coordination material are not included.
