# Collatz six-of-ten: Lean checked first descent

## The result

This package proves a bounded first-drop theorem. Using the definitions in the existing [`WordBound.lean`](../collatz-parity-envelopes-2026-11-v1/WordBound.lean), for every natural `n ≥ 3`, if at most six of the first ten accelerated Collatz inputs are odd, then

```text
ordinaryIter n (10 + odds n 10) < n
```

Since `odds n 10 ≤ 6`, the descent occurs by ordinary step 16. The theorem is conditional on the first-ten parity count; it does not prove convergence for arbitrary starts.

The same result follows from the first-12 cap-six condition: the odd count cannot decrease when the prefix is extended, so `odds n 10 ≤ odds n 12`. The Lean theorem `six_of_twelve` records this implication and the same step-16 cap.

## Proof structure

The reusable theorem `cap_scaled_descent` is a criterion derived from `WordBound.scaled_upper`. If `odds n t ≤ k` and

```text
3^k * (n + 2^t) < 2^t * (n + 1),
```

then the corresponding ordinary iterate is below `n` at step `t + odds n t`. For `t=10, k=6`, the inequality holds whenever `n ≥ 2528`. The proof handles that range algebraically and checks the finite range below 2528 in Lean's kernel using `decide` (no `native_decide`).

The bound is attained in time by `n=347`: the first ten accelerated parity inputs contain six odds, ordinary iterates 0 through 15 are all at least 347, and the 16th iterate is 248. The checked ordinary orbit is

```text
347, 1042, 521, 1564, 782, 391, 1174, 587, 1762,
881, 2644, 1322, 661, 1984, 992, 496, 248
```

This case specializes a general word-bound argument to one parity cap. It is a formalization and reproduction of a bounded statement, not a claim about the full Collatz conjecture or mathematical novelty.

## Replay from a checkout

Lean Core is sufficient. Use the official Lean 4.33.1 executable and run these commands from the repository root, choosing a new output directory on a scratch volume:

```text
python -B reproduction/collatz-six-of-ten-lean-v1/replay.py --lean <path-to-lean-4.33.1-executable> --output-dir <new-output-directory>
python -B reproduction/collatz-six-of-ten-lean-v1/verify_receipt.py --receipt <new-output-directory>/replay-receipt.json --lean <same-lean-executable> --output <new-output-directory>/verification.json
```

The replay compiles the existing `WordBound.lean` directly into a temporary build directory, compiles `SixOfTen.lean` against that OLEAN, captures `#print axioms`, checks for `sorry` and `native_decide`, and writes source, binary, output, and OLEAN hashes. It does not copy or modify the historical source. The verification command checks the receipt against the current source bytes and, when `--lean` is supplied, the exact Lean executable hash and version.

The central MathCase launcher can run both stages and verify the generated receipt in one action:

```text
python -B scripts/run_public_case.py collatz-six-of-ten --lean <official Lean 4.33.1 executable> --out <scratch parent directory>
```

It creates a unique run folder beneath the scratch parent and saves the compile log, replay receipt, and receipt-verification record there. The launcher lists the action as a route to this bounded theorem, not as an additional mathematical result.

## First-party receipt

The [official Lean 4.33.1 replay receipt](evidence/official-lean-4.33.1-replay.json) binds the two source files and Lean binary. Its recorded theorem axioms are `[propext, Quot.sound]` for `cap_scaled_descent`, `six_of_ten`, and `six_of_twelve`; `n347_first_drop` has no axioms. The [verification record](evidence/official-lean-4.33.1-verification.json) confirms source hashes, the compiler exit, axiom output, and proof-token scan. This was a local first-party replay; an independent third-party run is not claimed.

## Fresh public-checkout replay

A fresh credential-disabled public checkout was replayed with Lean 4.33.1 on 2026-11-27 UTC. Both modules compiled from source into a new output directory, and their OLEAN hashes matched the first-party receipt. The [run receipt](evidence/public-replay-2026-11-27/replay-receipt.json), [receipt verification](evidence/public-replay-2026-11-27/verification.json), and [tamper-control result](evidence/public-replay-2026-11-27/negative-control-result.json) are available with a [plain-language report](evidence/public-replay-2026-11-27/README.md) and [file hashes](evidence/public-replay-2026-11-27/SHA256SUMS.txt). This was run by the project operator on the same host, not by an independent stranger or reviewer.
