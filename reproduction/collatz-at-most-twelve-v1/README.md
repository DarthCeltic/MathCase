# Collatz descent when at most twelve of twenty accelerated inputs are odd

## Plain statement

For every natural number `n >= 3`, if the first 20 accelerated Collatz steps contain at most 12 odd inputs, then the value after exactly `20 + h` ordinary steps is smaller than `n`, where `h` is that odd-input count. This iterate lies between steps 20 and 32.

The qualifying parity patterns give **910,596 of 1,048,576 residue classes modulo 2^20** (86.8412017822%). Every number `2^20*k+r >= 3` in one of those classes has the stated descent. This is a bounded first-drop result, not a Collatz solution.

## Exact Lean statements

The main theorem is `MathCase.Collatz.WordBound.counted_at_most_twelve_families`:

```text
residueAtMostCount 20 12 = 910596
and for every r,k, if 3 <= 2^20*k+r and odds r 20 <= 12, then
  ordinaryIter (2^20*k+r) (20+odds r 20) < 2^20*k+r
```

An accelerated step halves an even input and sends an odd input to `(3n+1)/2`. Twenty accelerated steps with `h` odd inputs equal `20+h` ordinary steps. The proof uses the general word-wide scaled bound, checks the 13 odd-count values 0 through 12 for starts at least 262, and kernel-reduces the remaining starts 3 through 261.

The exact count is derived by a recursive parity-word count. The path-free owner run receipt and its limits are in `runs/`. A separate Python program enumerates all 1,048,576 canonical residues, checks all weight counts against the binomial coefficients, verifies the accelerated/ordinary endpoints, and checks the 910,593 qualifying representatives `r >= 3`. This finite census corroborates the Lean result; it does not replace the all-`k` proof.

The boundary is also formalized: for every residue with exactly 13 odd inputs, some member of that full residue family is not smaller at ordinary step 33. This shows the 12-odd cutoff is sharp for guaranteeing descent of every member at the corresponding endpoint time. It does not say that every 13-odd start fails to descend.

## Reproduce

Requires Lean 4.33.1 and Python 3. The `lean-toolchain` file pins Elan. From this directory:

```sh
python verify_at_most_twelve.py --output run-receipt.json
```

The command copies the Lean sources to a fresh temporary directory, compiles them with one worker, checks the declared axiom sets, and runs the exhaustive census. It makes no network, model, or provider calls.

Expected axiom reports:

- `at_most_twelve_descend`: `[propext, Quot.sound]`
- `residue_at_most_twelve_count`: `[propext, Classical.choice, Quot.sound]`
- `counted_at_most_twelve_families`: `[propext, Classical.choice, Quot.sound]`
- `thirteen_odd_family_not_uniformly_descending`: `[propext, Quot.sound]`

No passing theorem has `sorryAx`; the sources do not use `native_decide`.

## Limits

The theorem concerns a parity-conditioned, bounded iterate. It does not show that every Collatz trajectory reaches 1, does not give a fixed step-32 endpoint for these 910,596 classes, and makes no novelty or priority claim. The two positive starts 1 and 2 are excluded because their step-30 value is not strictly smaller than the start; excluding finitely many values does not change the stated natural density.
