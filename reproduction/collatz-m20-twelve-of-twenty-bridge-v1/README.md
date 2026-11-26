# The 2,652 listed families fit one broader checked rule

## In plain words

Every one of the 2,652 published Collatz rows has exactly 12 odd inputs in its first 20 accelerated steps. Its listed endpoint also matches two direct calculations: 20 accelerated steps and 32 ordinary steps. The existing Lean theorem proves the corresponding decrease for every natural-number progression in every residue class with that 12-of-20 pattern. Together, the finite row check and that Lean theorem show that all 2,652 listed progressions are covered by the broader rule.

For a listed pair `(r, q)`, the family is `1,048,576k + r`, and its value after 32 ordinary steps is `531,441k + q`, for every natural `k`. The result is a bounded first decrease for these progressions. It does not say every number eventually reaches 1.

## Check the bridge

From the repository root, run:

```sh
python -B scripts/run_public_case.py collatz-m20-twelve-of-twenty-bridge
```

The command checks the pinned M20 table and its generator, all 133 composition source files referenced by the rows, every source line named by the table, all 2,652 finite trajectories through both step conventions, the existing Lean receipt's exact source hashes and axiom lines, and a deliberately wrong endpoint. It does not run Lean.

For the lower-level command:

```sh
python -B reproduction/collatz-m20-twelve-of-twenty-bridge-v1/verify_bridge.py --output runs/bridge.json
python -B reproduction/collatz-m20-twelve-of-twenty-bridge-v1/test_bridge.py
```

The supplied `bridge-receipt.json` records the first audit. Running the command creates a fresh receipt at the chosen output path; it does not overwrite the supplied record.

## Which Lean theorem is combined with the audit?

The existing theorem is `MathCase.Collatz.WordBound.counted_progressions_descend` in `reproduction/collatz-twelve-of-twenty-v1/CountWords.lean`. Its saved receipt reports exactly 125,970 qualifying residue classes out of 1,048,576 and proves the endpoint and strict decrease for every member of each qualifying progression. The receipt is pinned to Lean 4.33.1 and reports `[propext, Classical.choice, Quot.sound]`, with no `sorryAx` reported. The bridge checks those saved bytes and that receipt; it does not replay the Lean theorem.

The row-by-row result is also compatible with the compact `M20Table.lean` proof route, but that table's historical proof remains separate evidence. This bridge does not replace the original 229-shard/133-composition replay and does not show that the older prefix screen found a smaller M20-specific basis. It supplies a new, finite inclusion check between the published rows and the broader 12-of-20 theorem.

## Limits

- The finite audit establishes membership and endpoint agreement for the exact 2,652 pinned rows; it is not a new Lean theorem.
- The universal statement for all `k` follows only by combining that audit with the separately checked Lean theorem and its saved receipt.
- The 125,970 count is a density among residue classes modulo `2^20`, not a percentage of all Collatz trajectories solved.
- No global convergence, novelty, or independent-review claim is made.
