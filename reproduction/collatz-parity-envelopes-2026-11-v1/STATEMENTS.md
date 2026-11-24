# Four parity-conditioned first-descent statements

These exact statements share the definitions in `WordBound.lean`, `WordResidue.lean`, and `CountWords.lean`. Accelerated step `T` sends even `n` to `n/2` and odd `n` to `(3n+1)/2`; `odds n t` counts odd inputs in the first `t` accelerated steps. `ordinaryIter n m` applies the standard Collatz map exactly `m` times.

## Reviewed and Lean-checked: 23/14

For every natural `n ≥ 3`, if at most 14 of the first 23 accelerated inputs are odd, then the ordinary iterate after `23+h` steps is strictly below `n`, where `h = odds n 23`. Exactly 7,507,638 of 8,388,608 residue classes modulo `2^23` meet the condition; descent is within 37 ordinary steps.

```lean
(residueAtMostCount 23 14 = 7507638) ∧
  ∀ n : Nat, 3 ≤ n → odds n 23 ≤ 14 →
    ordinaryIter n (23 + odds n 23) < n
```

Ryan's statement-fidelity YES is bound to packet SHA-256 `cab441ca8079f71a6c9dbaadcea53a8e38cc8d4e9ee68f18f874f6bf39fb66bb`. The local M0 record is linked in `evidence/m0-review-23-14.json`. M4 was not promoted.

## Exploratory, not M0-reviewed

### 24/15

For every `n ≥ 3`, if at most 15 of the first 24 accelerated inputs are odd, then the ordinary iterate after `24+h` steps is below `n`. Exactly 15,505,590 of 16,777,216 classes qualify; at most 39 ordinary steps.

```lean
(residueAtMostCount 24 15 = 15505590) ∧
  ∀ n : Nat, 3 ≤ n → odds n 24 ≤ 15 →
    ordinaryIter n (24 + odds n 24) < n
```

### 31/19

For every `n ≥ 3`, if at most 19 of the first 31 accelerated inputs are odd, then the ordinary iterate after `31+h` steps is below `n`. Exactly 1,986,838,144 of 2,147,483,648 classes qualify; at most 50 ordinary steps. The source compiled successfully and a separate Lean import audit confirmed `[Classical.choice, propext, Quot.sound]`. The original runner receipt remains `FAIL_AUDIT` because its expected axiom list omitted `Classical.choice`; see both receipts and `evidence/failure-history.json`.

### 32/20

For every `n ≥ 3`, if at most 20 of the first 32 accelerated inputs are odd, then the ordinary iterate after `32+h` steps is below `n`. Exactly 4,058,348,603 of 4,294,967,296 classes qualify; at most 52 ordinary steps.

```lean
(residueAtMostCount 32 20 = 4058348603) ∧
  ∀ n : Nat, 3 ≤ n → odds n 32 ≤ 20 →
    ordinaryIter n (32 + odds n 32) < n
```

## Limits

These are four separate filters. Their residue-class counts are exact counts under their own moduli, not a natural-density statement and not a percentage of Collatz solved. None proves that every Collatz trajectory reaches 1, covers parity classes outside its condition, or establishes novelty. The three exploratory items have no separate human M0 review.
