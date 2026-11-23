# Collatz descent when at most thirteen of twenty-one accelerated inputs are odd

## Plain statement

For every natural number `n >= 3`, if at most 13 of the first 21 accelerated Collatz inputs are odd, then the ordinary Collatz value after `21 + h` steps is smaller than `n`, where `h` is the number of odd inputs. The endpoint is between ordinary steps 21 and 34.

The condition selects **1,898,712 of 2,097,152 residue classes modulo 2^21** (90.5376434326%). For every selected residue `r`, every `2^21*k+r >= 3` has the stated decrease. This is bounded first descent, not a solution of the Collatz conjecture.

## Exact statement

The Lean theorem `MathCase.Collatz.WordBound.counted_at_most_thirteen_families` proves:

```text
residueAtMostCount 21 13 = 1898712
and for every r,k, if 3 <= 2^21*k+r and odds r 21 <= 13, then
  ordinaryIter (2^21*k+r) (21+odds r 21) < 2^21*k+r
```

The accelerated map halves an even input and sends an odd input to `(3*n+1)/2`. After 21 accelerated steps with `h` odd inputs, the value equals the ordinary Collatz iterate at step `21+h`. The proof checks the remaining small starts below 808 in Lean and proves the large-start inequality for each odd count from 0 through 13.

A separate Lean boundary theorem says that for every residue with exactly 14 odd inputs, the representative `2^21+r` is not smaller after 35 ordinary steps. It establishes a precise boundary for this corresponding-step rule; it does not say that every 14-odd start fails to decrease at every possible time.

## Reproduce

Requires Lean 4.33.1 and Python 3. From this directory:

```sh
python verify_at_most_thirteen.py --output replay-receipt.json --evidence-dir replay-output
```

The runner copies all Lean sources into a fresh temporary directory, compiles them in dependency order with one Lean worker, parses wrapped `#print axioms` output before comparing the exact axiom list, and exhaustively checks all 2,097,152 residues plus the 14-odd boundary representatives. It makes no model, provider, or network calls. Each Lean module and the finite census have separate saved output files when `--evidence-dir` is supplied. A timeout or failure is written to the receipt and preserved as output; it is not treated as a pass. The checked owner-local run and raw outputs are in [runs/owner-local-replay-2026-11-23](runs/owner-local-replay-2026-11-23/); they are not an independent third-party replay.

The expected axiom lists are recorded verbatim in the receipt. The counted theorem and residue count use `[propext, Classical.choice, Quot.sound]`; the descent, shared recurrence, and boundary theorems use `[propext, Quot.sound]`. No successful module uses `sorryAx`; the sources do not use `sorry`, `admit`, or `native_decide`.

## Limits

This result applies only when the first 21 accelerated parity inputs contain at most 13 odds. It proves one finite first-drop event at a parity-dependent time. It does not prove that all Collatz trajectories reach 1, does not cover every parity pattern, and makes no novelty or priority claim. The residue fraction is not a percentage of the conjecture solved.
