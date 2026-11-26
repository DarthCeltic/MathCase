# aiXiv subject map

This table maps all 155 subject categories shown on the aiXiv subject listing to one MathCase topic and a concrete check that could make a useful bounded case. It is a catalog of MathCase work and ideas, not a record of submissions to aiXiv.

## Snapshot and scope

The category names and listing statuses were checked against the official [aiXiv subject listing](https://aixiv.online/categories), using a page snapshot captured on 2026-11-26 (SHA-256 `696ed02924f3d2693d713e5d92c76a1b83d76689b9ca46ac1baf54c317ebcd62`). The listing showed 40 categories as `open` and 115 as `coming soon` on that date. Those are aiXiv's displayed category statuses at capture time and may change. They do not indicate that MathCase submitted, was accepted, or is affiliated with aiXiv.

The TSV contains one row for each unique category code, topic, and proposed check. Subject aliases can describe the same underlying MathCase case or artifact; the table does not imply that every row is a separate research result. An em dash (`—`) in the evidence column means that the row has no linked artifact.

The `coverage` column is MathCase's own evidence level:

- `Checked case`: a bounded case with a public reproducible artifact and stated scope.
- `Supporting artifact`: work that supports a subject connection or a workflow claim but is not itself a standalone checked case for that subject.
- `Proposed`: a topic and check idea that has not been completed and verified as a public case.

These labels describe MathCase evidence only. They are not aiXiv submission, review, or acceptance states. In particular, the Ising entry remains proposed while its proof is in progress.

## Files

- [`aixiv-subjects.tsv`](aixiv-subjects.tsv) — the human-curated subject map.
- [`verify_subject_map.py`](verify_subject_map.py) — checks field completeness, uniqueness, the 40/115 counts, and exact code/name/status agreement against a supplied copy of the official listing HTML.

From the repository root, reproduce the snapshot check with:

```powershell
python -B research/subjects/verify_subject_map.py PATH\TO\categories.html
```

This check validates the map against the supplied snapshot, not against a live site. The official source remains the [aiXiv categories page](https://aixiv.online/categories).

## Evidence notes

The `cs.MA` proposal is framed around task allocation and independent validation in a multiagent workflow, with single-agent controls. It does not count proof assistants as agents by itself. The `cs.CC` row is only a source-level audit of a VP/VNP proof request; it is not a result about VP versus VNP. The `cs.DS` row links the [Collatz parity-window atlas](https://github.com/DarthCeltic/MathCase/tree/6649e9490648e74b8c9bc76c6e6a13901aba225c/reproduction/collatz-window-atlas-v1) as a supporting artifact. The `math.DS` checked-case row points to the [Lean-checked six-of-ten first-drop case](https://github.com/DarthCeltic/MathCase/tree/159e92d9c719896582d36dc6042866f03316184b/reproduction/collatz-six-of-ten-lean-v1). The `math.CO` and `cs.DM` rows cite the merged [Weak Schur class-extension packet](https://github.com/DarthCeltic/MathCase/tree/28adad574cb35f3e717cc108071de46fb99fb927/research/frontier-2026-11/weak-schur-5/class-extensions). The `math.AT` row links the [finite F2 homology computation](https://github.com/DarthCeltic/MathCase/tree/81345da818c62519ee620bdb77dd5ff1237e1bb6/reproduction/math-at-f2-surface-homology-v1) for three explicit surfaces. The `math.AT` checked case is limited to its three explicit finite triangulations; it does not claim a general topology library. The Ising proposal remains unpromoted while its proof work is in progress. Some subject rows can point to one case under multiple aliases.
