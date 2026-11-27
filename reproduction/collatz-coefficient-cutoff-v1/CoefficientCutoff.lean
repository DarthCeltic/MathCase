import Init
import EnvelopeLemma

namespace MathCase.Collatz.WordBound

def coefficientCutoff (A B C : Nat) : Nat :=
  if B*C < A then 0 else (B*C-A)/(A-B)+1

theorem division_cutoff_iff (E D n : Nat) (hD : 0 < D) :
    E < D*n ↔ E/D + 1 ≤ n := by
  constructor
  · intro h
    have hdiv : E/D < n := (Nat.div_lt_iff_lt_mul hD).2 (by simpa [Nat.mul_comm] using h)
    omega
  · intro h
    have hdiv : E/D < n := by omega
    have hprod : E < n*D := (Nat.div_lt_iff_lt_mul hD).1 hdiv
    simpa [Nat.mul_comm] using hprod

theorem coefficient_inequality_iff_cutoff (A B C n : Nat) (hAB : B < A) :
    B*(n+C) < A*(n+1) ↔ coefficientCutoff A B C ≤ n := by
  by_cases hsmall : B*C < A
  · unfold coefficientCutoff
    rw [if_pos hsmall]
    constructor
    · intro _
      exact Nat.zero_le n
    · intro _
      have hBN : B*n ≤ A*n := by
        calc
          B*n = n*B := Nat.mul_comm _ _
          _ ≤ n*A := Nat.mul_le_mul_left n (Nat.le_of_lt hAB)
          _ = A*n := Nat.mul_comm _ _
      calc
        B*(n+C) = B*n+B*C := by rw [Nat.mul_add]
        _ < B*n+A := Nat.add_lt_add_left hsmall (B*n)
        _ ≤ A*n+A := Nat.add_le_add_right hBN A
        _ = A*(n+1) := by simp [Nat.mul_add]
  · have hle : A ≤ B*C := by omega
    let D : Nat := A-B
    let E : Nat := B*C-A
    have hD : 0 < D := by dsimp [D]; omega
    have hA : A = B+D := by dsimp [D]; omega
    have hE : B*C = A+E := by dsimp [E]; omega
    have hleft : B*(n+C) = B*n+(A+E) := by
      rw [Nat.mul_add, hE]
    have hright : A*(n+1) = B*n+D*n+A := by
      calc
        A*(n+1) = A*n+A := by simp [Nat.mul_add]
        _ = (B+D)*n+A := by rw [hA]
        _ = B*n+D*n+A := by rw [Nat.add_mul]
    have hlinear : B*n+(A+E) < B*n+D*n+A ↔ E < D*n := by omega
    have hcore : B*(n+C) < A*(n+1) ↔ E < D*n := by
      rw [hleft, hright]
      exact hlinear
    unfold coefficientCutoff
    rw [if_neg hsmall]
    change B*(n+C) < A*(n+1) ↔ (B*C-A)/(A-B)+1 ≤ n
    rw [hcore]
    simpa [D, E] using division_cutoff_iff (B*C-A) (A-B) n hD

def parityCoefficientCutoff (t H : Nat) : Nat :=
  coefficientCutoff (2^t) (3^H) (2^(t-H))

theorem all_admitted_envelopes_below_iff_cutoff (t H n : Nat)
    (hHT : H ≤ t) (hcoef : 3^H < 2^t) :
    (∀ h, h ≤ H → scaledEnvelope t h n < 2^t*(n+1)) ↔
      parityCoefficientCutoff t H ≤ n := by
  constructor
  · intro hall
    have hcap := hall H (Nat.le_refl H)
    exact (coefficient_inequality_iff_cutoff (2^t) (3^H) (2^(t-H)) n hcoef).mp hcap
  · intro hcut h hh
    have hmono := scaledEnvelope_le_cap t h H n hh hHT
    have hcap : 3^H*(n+2^(t-H)) < 2^t*(n+1) :=
      (coefficient_inequality_iff_cutoff (2^t) (3^H) (2^(t-H)) n hcoef).mpr hcut
    exact Nat.lt_of_le_of_lt hmono hcap

theorem cutoff_20_12 : parityCoefficientCutoff 20 12 = 262 := by decide
theorem cutoff_21_13 : parityCoefficientCutoff 21 13 = 808 := by decide
theorem cutoff_22_13 : parityCoefficientCutoff 22 13 = 313 := by decide
theorem cutoff_23_14 : parityCoefficientCutoff 23 14 = 677 := by decide
theorem cutoff_24_15 : parityCoefficientCutoff 24 15 = 3019 := by decide
theorem cutoff_27_17 : parityCoefficientCutoff 27 17 = 26018 := by decide
theorem cutoff_31_19 : parityCoefficientCutoff 31 19 = 4830 := by decide
theorem cutoff_32_20 : parityCoefficientCutoff 32 20 = 17667 := by decide

#print axioms division_cutoff_iff
#print axioms coefficient_inequality_iff_cutoff
#print axioms all_admitted_envelopes_below_iff_cutoff
#print axioms cutoff_20_12
#print axioms cutoff_21_13
#print axioms cutoff_22_13
#print axioms cutoff_23_14
#print axioms cutoff_24_15
#print axioms cutoff_27_17
#print axioms cutoff_31_19
#print axioms cutoff_32_20

end MathCase.Collatz.WordBound