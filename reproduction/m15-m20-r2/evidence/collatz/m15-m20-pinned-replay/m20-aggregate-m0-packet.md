# M20 aggregate target — M0 review packet (pending)

**Status: pending Ryan's statement review. No new aggregate/composition proof attempt has been run.**

## Exact target binding

- Source: `research/collatz/m20/lean/M20AllFamilies.lean`
- SHA-256: `4b480752687cc2fea5554f20e4198d990e4c30ebe50a01b5813eb517dde469bf`
- Theorem: `CollatzM20AllFamilies.all_scanned_m20_families_descend`
- Target shape: a 2,652-way conjunction, with each conjunct taken from the exact residue and affine-value list in that source file.

In words, each conjunct says: for every natural number `k`, start from `1,048,576*k + r`, apply the source-defined Collatz map exactly 32 times, obtain the listed affine value `531,441*k + q`, and that value is strictly smaller than the start. The source defines the one-step map as `n/2` for even `n` and `3*n+1` for odd `n`; the 2,652 individual `r` and `q` values are part of the source-hash-bound statement.

## Ryan's M0 question

Does that English summary faithfully express the exact Lean target bound above? Reply yes or no/unclear. This is only a statement review. A “yes” does not promote M4; the composition attempt remains a separate bounded action under the existing local-only rules.

## Existing failure preserved

The prior operator-stopped aggregate attempt remains at `research/collatz/m20/evidence/m20/failed-attempts/aggregate-memory-cap/aggregate-stop.json` (historical source SHA-256 `4b480752687cc2fea5554f20e4198d990e4c30ebe50a01b5813eb517dde469bf`, exit 137 at the 2 GiB limit, stopped before OOM). It was not edited or replaced by this shard replay.
