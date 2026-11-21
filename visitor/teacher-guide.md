# MathCase guided cases — teacher guide

This answer key is a separate download. The learner-facing case asks for the proof; the guide supplies one Lean route. The examples formalize standard facts and are not novelty claims.

## Transfer challenge

Plain statement: if a prime `p` divides `(a*b)^2`, then `p` divides `a` or `p` divides `b`.

Exact Lean proposition supplied to the checker:

```lean
∀ (p a b : Nat), p.Prime → p ∣ (a * b) ^ 2 → p ∣ a ∨ p ∣ b
```

The proof source can use this proposition in a named theorem declaration:

```lean
theorem prime_dvd_factor_of_product_square (p a b : Nat)
    (hp : p.Prime) (h : p ∣ (a * b) ^ 2) : p ∣ a ∨ p ∣ b
```

One proof:

```lean
by
  have hProduct : p ∣ a * b := hp.dvd_of_dvd_pow h
  exact hp.dvd_mul.mp hProduct
```

The first line uses primality to move from a divisor of a square to a divisor of its base. The second applies the prime-divides-product property. The proof assumes `p` is prime; without that hypothesis the conclusion need not hold.

## Teaching notes

- Ask the learner to compare the exact Lean declaration to the words before checking a proof.
- A Lean check establishes the formal proposition under the imported Lean/Mathlib environment. It does not establish that the informal sentence was translated correctly unless a person checks that separately.
- Keep the learner's failed proofs. A rejected candidate is useful process evidence and should not be silently replaced in a report.
