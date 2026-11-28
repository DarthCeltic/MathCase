# Positive anchors for two old Weak Schur color classes

This package studies a bounded question about the published five-color Rowley partition of `1..207`: if all old members of two chosen color classes keep their old colors, can every other value and 208 still use any of the five colors, including additions to the anchored classes?

## Certified result

For Rowley classes 1 and 3, the answer is no even when the model is allowed to change every unanchored value freely among all five colors. A SAT encoding assigns exactly one color to each `1..208` and forbids every monochromatic triple `a < b`, `a+b=c`. Its positive unit clauses fix the old Rowley members in classes 1 and 3. Glucose4 generated the bundled DRAT proof for this 66-anchor formula; the pinned DRAT-trim checker verifies it.

DRAT-trim also reports that the unit for vertex 190 (class 1) is unnecessary. The same proof verifies the weaker formula with just 65 old members fixed: every member of Rowley class 1 except 190, plus every member of class 3. All other old positions—including 190—and 208 can take any of the five labels. Thus any valid five-color extension to 208 must recolor at least one of those 65 original positions. This is an explicit, proof-backed hitting set of positions, not a minimality claim and not a claim that any particular one must change.

The anchored classes can gain entries under this model. A direct audit of each old class checks both possible conflict roles for an outsider: it may be the sum of two old class members, or it may add to an old member to make another. The counts of individually unblocked outsiders for Rowley classes 1 through 5 are `7, 0, 38, 0, 6`; for Vicenzi they are `10, 1, 10, 6, 6`. These are local pairwise possibilities, not a claim that every listed outsider can be added simultaneously. The 65-anchor SAT formula permits every unanchored integer all five colors, so all such possible gains are already included in the verified refutation.

A second, shorter bridge is available for Rowley classes 2 and 4: both have zero individually joinable outsiders and each contains an old pair summing to 208 (`36+172` and `12+196`). Positive anchors on those classes therefore force exact old memberships; the already verified [#24 three-free-color case](../../research/frontier-2026-11/weak-schur-5/class-extensions/README.md) for free colors 1, 3, and 5 applies. This secondary observation reuses the earlier proof rather than introducing another certificate.

## Reproduce

The seed snapshots are included and hash-pinned. The audit and CNF reconstruction use only Python's standard library. To independently check the bundled proof, compile the pinned [DRAT-trim](https://github.com/marijnheule/drat-trim/tree/2e3b2dc0ecf938addbd779d42877b6ed69d9a985) source and run from the repository root:

```powershell
gcc -std=gnu99 -O2 -Dgetc_unlocked=getc drat-trim/drat-trim.c -o drat-trim-check.exe
python -B reproduction/weak-schur-positive-anchors-v1/positive_anchor_check.py `
  --checker ./drat-trim-check.exe `
  --scratch-dir .\scratch\positive-anchor-check
```

The checker reconstructs both the 66-anchor and 65-anchor CNFs, verifies their byte hashes, expands the compressed DRAT in the selected scratch directory, and requires `s VERIFIED` for both formulas. It prints the outsider counts, the exact 65 anchored values, seed checks, and the two proof-check results. [`verification.json`](verification.json) records the checked run, formula and proof hashes, solver provenance, and DRAT-trim revision/source hash.

The included 717 KB compressed DRAT proof was produced with Glucose4 through `python-sat==1.9.dev25`; proof generation is not required for replay. The optional generator reproduces the same proof bytes when run with that pinned version:

```powershell
python -m pip install python-sat==1.9.dev25
python -B reproduction/weak-schur-positive-anchors-v1/generate_proof.py `
  --output .\scratch\regenerated-positive-anchor.drat
```

The proof is checked against both formula byte strings: all 66 anchors, and the strictly weaker formula with the single unit for 190 removed.

## Scope and limits

This proves only a seed-relative finite statement about extensions of Rowley's published partition to 208. It does not rule out all five-colorings of `1..208`, establish a Weak Schur number, or identify a minimum set of positions that must change. The other bounded positive-anchor SAT probes are not included because they did not have independently checked DRAT certificates.

Sources: [Rowley's coloring, OEIS A072842](https://oeis.org/A072842) · [Vicenzi et al., source repository](https://github.com/rebeccavicenzi/Weak_Schur_Problem_FunSearch/tree/f21786ee926d6535fe01767ad74392bb1c0dd985) · [the earlier exact-class extensions](../../research/frontier-2026-11/weak-schur-5/class-extensions/README.md).
