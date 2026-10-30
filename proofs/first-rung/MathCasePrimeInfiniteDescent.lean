import Mathlib.Data.Rat.Lemmas
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.NumberTheory.Real.Irrational

/-!
For every prime p, no positive natural numbers a and b satisfy

    a^2 = p * b^2.

The proof makes the infinite descent explicit.  Primality forces p | a and
then p | b; canceling p from the equation gives a smaller positive solution.
The final corollary proves that the real square root of every prime is
irrational.  These are classical known results, not a novelty claim.
-/

namespace MathCasePrimeInfiniteDescent

/-- A prime dividing a square divides the number being squared. -/
theorem prime_dvd_square_implies_prime_dvd
    (p n : Nat) (hp : p.Prime) (h : p ∣ n ^ 2) : p ∣ n := by
  exact hp.dvd_of_dvd_pow h

/-- Cancel the repeated prime factor after substituting a = p*k. -/
theorem cancel_prime_factor
    (p k b : Nat) (hpPos : 0 < p)
    (h : p * (k * (p * k)) = p * b ^ 2) :
    b ^ 2 = p * k ^ 2 := by
  have hcancel : k * (p * k) = b ^ 2 := Nat.mul_left_cancel hpPos h
  calc
    b ^ 2 = k * (p * k) := hcancel.symm
    _ = p * k ^ 2 := by
      rw [pow_two]
      ac_rfl

/-- No positive natural-number square equation `a^2 = p*b^2` exists for a
prime p.  Strong induction on a constructs a strictly smaller positive pair.
-/
theorem no_positive_pair_for_prime :
    ∀ p : Nat, p.Prime →
      ∀ a b : Nat, 0 < a → 0 < b → a ^ 2 = p * b ^ 2 → False := by
  intro p hp
  have hpPos : 0 < p := hp.pos
  have hpTwo : 2 ≤ p := hp.two_le
  intro a
  induction a using Nat.strong_induction_on with
  | h a ih =>
      intro b ha hb h
      have haSquareDiv : p ∣ a ^ 2 := ⟨b ^ 2, h⟩
      have haDiv : p ∣ a := prime_dvd_square_implies_prime_dvd p a hp haSquareDiv
      obtain ⟨k, hak⟩ := haDiv
      have hSubstituted : p * (k * (p * k)) = p * b ^ 2 := by
        calc
          p * (k * (p * k)) = (p * k) * (p * k) := by ring
          _ = a ^ 2 := by rw [hak]; ring
          _ = p * b ^ 2 := h
      have hbSquare : b ^ 2 = p * k ^ 2 :=
        cancel_prime_factor p k b hpPos hSubstituted
      have hbSquareDiv : p ∣ b ^ 2 := ⟨k ^ 2, hbSquare⟩
      have hbDiv : p ∣ b := prime_dvd_square_implies_prime_dvd p b hp hbSquareDiv
      obtain ⟨l, hbl⟩ := hbDiv
      have hbSquareRewritten : (p * l) ^ 2 = p * k ^ 2 := by
        simpa [hbl] using hbSquare
      have hCancelAgain : p * (p * l ^ 2) = p * k ^ 2 := by
        calc
          p * (p * l ^ 2) = (p * l) ^ 2 := by ring
          _ = p * k ^ 2 := hbSquareRewritten
      have hkSquare : k ^ 2 = p * l ^ 2 :=
        (Nat.mul_left_cancel hpPos hCancelAgain).symm
      have hlPos : 0 < l := by
        by_contra hnot
        have hlZero : l = 0 := by omega
        rw [hlZero] at hbl
        simp at hbl
        omega
      have hkPos : 0 < k := by
        by_contra hnot
        have hkZero : k = 0 := by omega
        rw [hkZero] at hkSquare
        simp at hkSquare
        rcases hkSquare with hpZero | hlZero
        · exact (Nat.ne_of_gt hpPos) hpZero
        · exact (Nat.ne_of_gt hlPos) hlZero
      have hkLtA : k < a := by
        rw [hak]
        calc
          k < 2 * k := by omega
          _ ≤ p * k := Nat.mul_le_mul_right k hpTwo
      exact ih k hkLtA l hkPos hlPos hkSquare

/-- A rational number cannot square to a prime natural number. -/
theorem no_rational_square_root_prime
    (p : Nat) (hp : p.Prime) (r : ℚ) (h : r ^ 2 = p) : False := by
  have hratSquare : IsSquare (p : ℚ) :=
    ⟨r, by simpa [pow_two] using h.symm⟩
  rcases Rat.isSquare_natCast_iff.mp hratSquare with ⟨n, hn⟩
  have hnSquare : n ^ 2 = p := by simpa [pow_two] using hn.symm
  have hnPos : 0 < n := Nat.pos_of_ne_zero (by
    intro hnZero
    rw [hnZero] at hnSquare
    exact (Nat.ne_of_gt hp.pos) hnSquare.symm)
  have honePos : 0 < (1 : Nat) := by decide
  have hpair : n ^ 2 = p * 1 ^ 2 := by simpa using hnSquare
  exact no_positive_pair_for_prime p hp n 1 hnPos honePos hpair

/-- The real square root of every prime natural number is irrational. -/
theorem sqrt_prime_irrational (p : Nat) (hp : p.Prime) :
    Irrational (Real.sqrt (p : ℝ)) := by
  have hnotSquare : ¬ IsSquare (p : ℚ) := by
    rintro ⟨r, hr⟩
    have hroot : r ^ 2 = p := by simpa [pow_two] using hr.symm
    exact no_rational_square_root_prime p hp r hroot
  exact
    (irrational_sqrt_ratCast_iff_of_nonneg (q := (p : ℚ)) (by positivity)).2
      hnotSquare

/-- Concrete checked instance: the positive real square root of 3 is irrational. -/
theorem sqrt_three_irrational : Irrational (Real.sqrt (3 : ℝ)) :=
  sqrt_prime_irrational 3 (by decide)

#print axioms prime_dvd_square_implies_prime_dvd
#print axioms no_positive_pair_for_prime
#print axioms no_rational_square_root_prime
#print axioms sqrt_prime_irrational
#print axioms sqrt_three_irrational

end MathCasePrimeInfiniteDescent
