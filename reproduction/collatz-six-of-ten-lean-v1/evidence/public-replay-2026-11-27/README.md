# Fresh public-source replay · six-of-ten Collatz case

For a start `n ≥ 3`, if no more than six of the first ten accelerated Collatz steps are odd, the Lean theorem proves the ordinary sequence is below `n` at step `10 + h`, where `h` is that odd-step count. Since `h ≤ 6`, this is by step 16. It may fall earlier. The statement is conditional; it does not prove convergence for arbitrary starts.

The public source was cloned with Git credentials disabled at MathCase commit `900cce6d95fe4f6008b4d997b789eade05e3176d`. Lean compiled `WordBound.lean` and `SixOfTen.lean` from fresh source in a new temporary output directory. Both module output hashes exactly match the earlier official receipt. The theorem axioms are `[propext, Quot.sound]` for `cap_scaled_descent`, `six_of_ten`, and `six_of_twelve`; `n347_first_drop` has no axioms. No `sorryAx` was reported; the source scan found neither `sorry` nor `native_decide`.

The second command is a verifier for the run receipt. A tamper control changed the recorded `SixOfTen.lean` digest to 64 zeroes; the verifier exited 1 with `Source digest mismatch for SixOfTen.lean` and wrote no positive verification file.

## Reproduce it

Use the repository-root commands below with the official Lean 4.33.1 executable and a new output directory:

```text
python -B reproduction/collatz-six-of-ten-lean-v1/replay.py --lean <official Lean 4.33.1 executable> --output-dir <new output directory>
python -B reproduction/collatz-six-of-ten-lean-v1/verify_receipt.py --receipt <output directory>/replay-receipt.json --lean <same executable> --output <output directory>/verification.json
```

The [machine-readable run context](context.json), [Lean receipt](replay-receipt.json), [receipt verification](verification.json), and [tamper-control result](negative-control-result.json) are included. The intentionally altered control receipt is also available as `tampered-receipt.json`.

This is a fresh operator-run public-source replay on the same host. It reused the already verified official Lean binary and is not an independent stranger replay or review. Network isolation was not imposed. The result is a bounded descent fact for the stated parity condition, not a solution to the Collatz conjecture.