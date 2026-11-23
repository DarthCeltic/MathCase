# A Lean-checked finite witness for R(5,5) ≥ 43

A known 42-vertex graph has no 5-clique, and its complement has no 5-clique. This formalizes the established lower bound `R(5,5) ≥ 43`; it is not a new construction and does not determine the Ramsey number.

## What Lean checked

The exact target is `∃ G : SimpleGraph (Fin 42), G.CliqueFree 5 ∧ (Gᶜ).CliqueFree 5`. The proof divides 861 unordered vertex pairs across 27 Lean modules. It checks 45,802 witness-edge and 44,223 complement-edge triangle cases, then composes the result. The recorded axiom report is `[propext, Classical.choice, Quot.sound]`; the proof sources contain no `sorry`, `admit`, or `native_decide`.

## Evidence

- `evidence/public-evidence.json` lists the exact statement, source hashes, run-receipt hashes, M0 review hashes, toolchain, axioms, and limits.
- `receipts/chunks/` contains the 27 exact path-free chunk receipts.
- `receipts/composition/` contains the final exact run receipt and its axiom-report output.
- `MathCase/Ramsey/R55/` contains the 29 Lean source files.
- Earlier nonpassing runs are retained as receipt hashes in the evidence projection; raw local diagnostics are not included.

Ryan reviewed the statement wording (M0 YES). This is not an M4 pass, is unsigned, and has not had independent mathematical review. The original compile used a warm local cache; this package has not yet been rebuilt from a fresh checkout.

## Rebuild from a fresh checkout

Requires Lean 4.33.1, Lake, network access to fetch the pinned Mathlib dependencies on first setup, and enough disk for Mathlib. From this directory:

```sh
lake exe cache get
lake build MathCase.Ramsey.R55.RamseyR55LowerBoundChunkedV2
```

`lean-toolchain` pins Lean 4.33.1 and the lock manifest pins Mathlib revision `0df444a360eaa60ab8c11dca51a86af692955474`. These are reproduction instructions only: this fresh-checkout build has not been run for this publication.


## Standard graph6 interchange correction

The Lean adjacency masks and their historical receipts are unchanged. The original exported graph6 bytes used row-major ordering and should not be interpreted as standard graph6. The corrected standard file, independent decoder, and row-by-row match against FoundationV4.lean are in graph6-interoperability/README.md. Do not use the historical export as an interoperable standard graph6 witness.
