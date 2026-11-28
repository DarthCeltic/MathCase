# A bounded Collatz descent rule from 17 of 27 shortcut moves

For every natural number `n >= 26,018`, if at most 17 of its first 27 accelerated Collatz inputs are odd, then an ordinary Collatz iterate is strictly smaller than `n` by step 44.

**Review status:** the Lean replay and arithmetic audit are recorded, but no separate M0 statement review is recorded for this case. Treat this as bounded evidence, not a general Collatz result.

A shortcut move halves an even number. For an odd number, it computes `3n+1` and halves. If `h` of the first 27 shortcut inputs are odd, the corresponding ordinary Collatz path reaches the same value after `27+h` ordinary steps. Since `h <= 17`, this is at most 44 steps.

The descent proof is parameterized: a shared Lean lemma turns the parity count and a coefficient inequality into strict descent. The new theorem checks all 18 possible odd-input counts from 0 through 17 against the exact bound `n >= 26,018`.

## How many residue classes?

An exact arithmetic audit counts **126,025,204 of 134,217,728** residue classes modulo `2^27` whose 27 shortcut inputs contain at most 17 odd inputs: **93.8961%**. The audit checks the count in two ways, by Pascal recurrence and by the binomial sum. The reused Lean theorem `residueCount_eq_wordCount` proves that residue counts by odd-input total match the parity-word recurrence. The final numeric sum is recorded as an independent Python arithmetic audit, not as a separate Lean numeral theorem.

This percentage is a fraction of one finite residue space. It is not a natural-density statement and not a percentage of the Collatz conjecture solved. The qualifying classes are different from the 20-, 21-, and 22-step filters; this rule trades a longer window and a start threshold for broader residue coverage.

## One example

Starting at `26,018`, 12 of the first 27 shortcut inputs are odd. The ordinary sequence is below its start by step 39, where it reaches 107. This is an exact illustrative calculation, not the proof.

## What Lean checked

Lean 4.33.1 compiled five modules from fresh source copies using core Lean only, without Mathlib. The new general descent lemma and the 27-step theorem report `[propext, Classical.choice, Quot.sound]`. The imported shared recurrence lemmas also report their axiom lists in the [path-free replay receipt](evidence/replay-receipt.json). No `sorryAx` appears in any passing theorem audit, and the sources contain no `sorry`, `admit`, or `native_decide`.

The separate [arithmetic audit](evidence/arithmetic-audit.json) checks the exact class count, all 18 coefficient thresholds, and that the largest sufficient threshold is 26,018. At 26,017 the sufficient coefficient inequality for `h=17` does not yet hold; that is not a claim that the actual Collatz trajectory fails to descend there.

## Reproduce

Install Lean 4.33.1 with `elan` before running the check. Python 3 is also required. Run from this directory, choosing a new output directory:

```sh
python -B verify_at_most_seventeen_27.py RUN_DIR
```

The runner copies the five Lean sources into `RUN_DIR/inputs`, compiles them in order with one process at a time and a 60-second limit per module, records output and OLEAN hashes, parses the full axiom reports, and runs the independent integer audit. `RUN_DIR` must not already exist. No Mathlib, Docker, model, provider, search service, GPU, or paid service is needed for the proof check.

## Limits

This proves a parity-conditioned bounded first drop for starts at least 26,018. It does not prove every Collatz trajectory reaches 1, classify every residue class, establish novelty or priority, or solve the Collatz conjecture.
