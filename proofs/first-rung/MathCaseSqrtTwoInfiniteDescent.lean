import Lean
import Mathlib.Data.Rat.Lemmas
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.NumberTheory.Real.Irrational
import MathCaseCandidate

/-!
An explicit infinite-descent proof for the irrationality of sqrt 2.

The argument is split into the arithmetic steps: an even square has an even
root; substituting p = 2k into p^2 = 2q^2 forces q even; dividing both even
variables by 2 yields a strictly smaller positive solution. Strong induction
rules out such a pair. The final theorem connects this integer descent to
rational and real square roots.

This formalizes a classical result. It is not a novelty claim or a MathCase
qualification receipt.
-/

namespace MathCaseInfiniteDescent

/-- If 2 divides a natural square, it divides the square root. -/
theorem two_dvd_square_implies_two_dvd (n : Nat) (h : 2 ∣ n ^ 2) : 2 ∣ n := by
  exact mathcase_candidate 2 n (by decide) h

/-- After substituting p = 2k, the equation forces q^2 = 2k^2. -/
theorem cancel_even_numerator (k q : Nat)
    (h : 2 * (k * (2 * k)) = 2 * q ^ 2) : q ^ 2 = 2 * k ^ 2 := by
  have hcancel : k * (2 * k) = q ^ 2 :=
    Nat.mul_left_cancel (by decide : 0 < (2 : Nat)) h
  calc
    q ^ 2 = k * (2 * k) := hcancel.symm
    _ = 2 * k ^ 2 := by
      rw [pow_two]
      calc
        k * (2 * k) = (k * 2) * k := by rw [← Nat.mul_assoc]
        _ = (2 * k) * k := by rw [Nat.mul_comm k 2]
        _ = 2 * (k * k) := by rw [Nat.mul_assoc]

/-- A positive integer square equation p^2 = 2q^2 has no solutions.

The proof descends from (p,q) to (p/2,q/2), contradicting strong induction
on p. No coprimality hypothesis is needed. -/
theorem no_positive_integer_pair :
    ∀ p q : Nat, 0 < p → 0 < q → p ^ 2 = 2 * q ^ 2 → False := by
  intro p
  induction p using Nat.strong_induction_on with
  | h p ih =>
      intro q hp hq h
      have hpSquareEven : 2 ∣ p ^ 2 := ⟨q ^ 2, h⟩
      have hpEven : 2 ∣ p := two_dvd_square_implies_two_dvd p hpSquareEven
      obtain ⟨k, hpk⟩ := hpEven
      have hSubstituted : 2 * (k * (2 * k)) = 2 * q ^ 2 := by
        calc
          2 * (k * (2 * k)) = (2 * k) * (2 * k) := by rw [← Nat.mul_assoc]
          _ = p ^ 2 := by rw [hpk, pow_two]
          _ = 2 * q ^ 2 := h
      have hqSquare : q ^ 2 = 2 * k ^ 2 := cancel_even_numerator k q hSubstituted
      have hqSquareEven : 2 ∣ q ^ 2 := ⟨k ^ 2, hqSquare⟩
      have hqEven : 2 ∣ q := two_dvd_square_implies_two_dvd q hqSquareEven
      obtain ⟨l, hql⟩ := hqEven
      have hqSquareRewritten : (2 * l) ^ 2 = 2 * k ^ 2 := by
        simpa [hql] using hqSquare
      have hdouble : 2 * (2 * l ^ 2) = 2 * k ^ 2 := by
        calc
          2 * (2 * l ^ 2) = (2 * l) ^ 2 := by simp only [pow_two]; ac_rfl
          _ = 2 * k ^ 2 := hqSquareRewritten
      have hkSquare : k ^ 2 = 2 * l ^ 2 :=
        (Nat.mul_left_cancel (by decide : 0 < (2 : Nat)) hdouble).symm
      have hkPos : 0 < k := by omega
      have hlPos : 0 < l := by omega
      have hkLtP : k < p := by omega
      exact ih k hkLtP l hkPos hlPos hkSquare

/-- The natural-number square equation n^2 = 2 is impossible. -/
theorem no_natural_square_root_two (n : Nat) (h : n ^ 2 = 2) : False := by
  have hnPos : 0 < n := Nat.pos_of_ne_zero (by
    intro hn
    rw [hn] at h
    norm_num at h)
  have honePos : 0 < (1 : Nat) := by decide
  have hpair : n ^ 2 = 2 * 1 ^ 2 := by simpa using h
  exact no_positive_integer_pair n 1 hnPos honePos hpair

/-- A rational number cannot square to 2, by the explicit descent above. -/
theorem no_rational_square_root_two (r : ℚ) (h : r ^ 2 = 2) : False := by
  have hratSquare : IsSquare (2 : ℚ) := ⟨r, by simpa [pow_two] using h.symm⟩
  rcases Rat.isSquare_natCast_iff.mp hratSquare with ⟨n, hn⟩
  have hnSquare : n ^ 2 = 2 := by simpa [pow_two] using hn.symm
  exact no_natural_square_root_two n hnSquare

/-- The real square root of 2 is irrational by this infinite-descent proof. -/
theorem sqrt_two_irrational : Irrational (Real.sqrt (2 : ℝ)) := by
  have hnotSquare : ¬ IsSquare (2 : ℚ) := by
    rintro ⟨r, hr⟩
    have hroot : r ^ 2 = 2 := by simpa [pow_two] using hr.symm
    exact no_rational_square_root_two r hroot
  exact (irrational_sqrt_ratCast_iff_of_nonneg (q := (2 : ℚ)) (by decide)).2 hnotSquare

#print axioms no_positive_integer_pair
#print axioms no_natural_square_root_two
#print axioms no_rational_square_root_two
#print axioms sqrt_two_irrational

end MathCaseInfiniteDescent
