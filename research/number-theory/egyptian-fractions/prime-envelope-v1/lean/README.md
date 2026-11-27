# Lean replay for the first-band theorem

`PrimeBand.lean` proves four propositions from the prime-band case: the universal floor bound, the exact equality criterion at that floor, the necessary-and-sufficient offset classification below each permitted cap, and uniqueness of any represented triple under that cap. Its definitions are explicit in the source: `Prime p` is integer primality (`1 < p` and divisibility of a product implies divisibility of a factor); `Represents` is the cleared-denominator identity; `UnderCap` includes positive strict ordering and the upper bound on `z`; `AtOffset` pins all three proposed coordinates.

The hypotheses `D (B-1) < p ≤ D B` encode that `B` is the first index crossing `p`, using the monotonicity proved in the module. The formalization does not assume a solution exists, and the classification is an iff for all integer coordinates. It does not formalize the sparsity/density estimates, establish priority, or claim a new theorem beyond the stated case.

## Reproduce

Use Lean 4.33.1 (toolchain commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`). The adjacent `lean-toolchain` pins the release. From this directory, with Lean and LeanChecker on `PATH`:

```sh
lean --version
lean -o PrimeBand.olean PrimeBand.lean
export LEAN_PATH="$(pwd)"
lean Check.lean
lean MutationControl.lean
leanchecker -v PrimeBand
```

In PowerShell, run `$env:LEAN_PATH = (Get-Location).Path` before the last three commands.

`Check.lean` prints dependencies for the four public theorems. `MutationControl.lean` verifies the concrete valid triple for `p=71, B=5`, then verifies that the tempting stronger cap `z ≤ (B+1)p` is false for that triple. LeanChecker replays the module from its imports; `--fresh` would also replay all of `Std` and is unnecessary.

The source uses only `import Std`; it contains no `sorry`, `unsafe`, or `native_decide`. The axioms printed for each public theorem are exactly `propext`, `Classical.choice`, and `Quot.sound`.
