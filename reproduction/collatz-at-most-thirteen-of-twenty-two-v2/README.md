# A bounded Collatz descent rule from 22 parity steps

For every natural number `n ≥ 3`, if at most 13 of its first 22 accelerated Collatz inputs are odd, then an ordinary Collatz iterate is strictly smaller than `n` by step 35.

More precisely, let `h` be the number of odd inputs among the first 22 applications of

```text
T(n) = n/2       when n is even
T(n) = (3n+1)/2  when n is odd
```

If `h ≤ 13`, then the ordinary map `C(n) = n/2` for even `n`, and `C(n) = 3n+1` for odd `n`, satisfies `C^(22+h)(n) < n`. The exact endpoint is therefore between ordinary steps 22 and 35.

The parity condition selects exactly **3,593,934 of 4,194,304 residue classes modulo `2^22`**, or 85.6861% of those classes. Every `n ≥ 3` in a selected class has the stated bounded first drop.

## What was checked

Lean 4.33.1 compiled all four modules from fresh source copies without Mathlib. The exact axiom reports are:

- Descent theorem: `[propext, Quot.sound]`
- Exact residue count and combined theorem: `[propext, Classical.choice, Quot.sound]`
- No `sorryAx` appeared in the passing theorem audit. The checked sources contain no `sorry`, `admit`, or `native_decide`.

An independent Python integer audit confirmed the binomial count, the large-start coefficient thresholds through `h = 13`, and all 226 qualifying starts from 3 through 312. The full theorem itself is Lean-checked; that small-start audit is corroboration, not its proof.

The first v1 attempt failed on a proof-term rewrite direction. Its failed source, protocol, and path-free summary are preserved under [`attempt-v1-failed/`](attempt-v1-failed/). The raw receipt and compiler logs remain in the local MathCase run archive; their hashes are recorded in the summary. Version 2 changes the proof term and passes. The [reproduction protocol](REPLAY-PROTOCOL.md), [path-free run binding](ATTEMPT-BINDING.json), and [verification summary](verification-summary.json) record the compiled source hashes and results. See [the replay outcome and limits](REPLAY-RESULTS.md).

## Reproduce

Install Lean 4.33.1 through `elan` and Python 3. Run from this directory:

```sh
python verify_at_most_thirteen_22.py --output-dir RUN_DIR
```

`RUN_DIR` must be new. The command compiles `WordBound`, `WordResidue`, `CountWords`, and `AtMostThirteen22` in order, with one Lean process at a time and a 60-second cap per module. It stores source copies, compiler output, `.olean` hashes, axiom reports, and an independent arithmetic audit. The runner's module docstring retains the v1 packet name; the v2 source and passing hashes are recorded in the binding and verification summary. No Mathlib, Docker, model, provider, search service, network, GPU, or paid service is used.

## Limits

This is a parity-conditioned, bounded first-descent result. It does not prove that every Collatz trajectory reaches 1, cover every parity pattern, or establish novelty or priority. The residue-class percentage is not a percentage of the Collatz conjecture solved.
