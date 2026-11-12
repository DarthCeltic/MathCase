namespace MathCase.CollatzAffineTrace

def collatzStep (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n : Nat) : Nat → Nat
  | 0 => n
  | t + 1 => iterate (collatzStep n) t

theorem iterate_succ (n t : Nat) : iterate n (t + 1) = iterate (collatzStep n) t := rfl

abbrev AffineState := Nat × Nat

def affineValue (state : AffineState) (k : Nat) : Nat := state.1 * k + state.2

inductive AffineTrace : AffineState → Nat → AffineState → Prop where
  | done (state : AffineState) : AffineTrace state 0 state
  | step {start middle finish : AffineState} {steps : Nat}
      (hstep : ∀ k : Nat, collatzStep (affineValue start k) = affineValue middle k)
      (tail : AffineTrace middle steps finish) : AffineTrace start (steps + 1) finish

theorem affineTrace_exact {start finish : AffineState} {steps : Nat}
    (trace : AffineTrace start steps finish) :
    ∀ k : Nat, iterate (affineValue start k) steps = affineValue finish k := by
  induction trace with
  | done state =>
      intro k
      rfl
  | step hstep tail ih =>
      intro k
      rw [iterate_succ, hstep k]
      exact ih k

theorem affineTraceDescent
    {modulus residue finalSlope finalIntercept steps : Nat}
    (trace : AffineTrace (modulus, residue) steps (finalSlope, finalIntercept))
    (hslope : finalSlope ≤ modulus)
    (hintercept : finalIntercept < residue)
    : ∀ k : Nat,
      iterate (modulus * k + residue) steps = finalSlope * k + finalIntercept ∧
        finalSlope * k + finalIntercept < modulus * k + residue := by
  intro k
  have equality := affineTrace_exact trace k
  refine ⟨equality, ?_⟩
  have slope_product : finalSlope * k ≤ modulus * k := Nat.mul_le_mul_right k hslope
  calc
    finalSlope * k + finalIntercept ≤ modulus * k + finalIntercept :=
      Nat.add_le_add_right slope_product finalIntercept
    _ < modulus * k + residue := Nat.add_lt_add_left hintercept (modulus * k)

end MathCase.CollatzAffineTrace
