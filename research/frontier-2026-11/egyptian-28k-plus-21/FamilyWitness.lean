import Family28

namespace MathCase.EgyptianFractions

/-- With positive denominators, the last equality is exactly 4/n = 1/x + 1/y + 1/z. -/
def Witness (n x y z : Nat) : Prop :=
  0 < n ∧ 0 < x ∧ x < y ∧ y < z ∧ 4 * x * y * z = n * (x*y + x*z + y*z)

/-- Recover the unreduced three-denominator identity from the saved family. -/
theorem split_witness {n x t : Nat} (hn : 0 < n)
    (h : 4*x*t*(t+1) = n*(t*(t+1) + x*t + x) ∧ 0 < x ∧ x < t+1 ∧ t+1 < t*(t+1)) :
    Witness n x (t+1) (t*(t+1)) := by
  obtain ⟨eqn, hx, hxy, hyz⟩ := h
  refine ⟨hn, hx, hxy, hyz, ?_⟩
  calc
    4*x*(t+1)*(t*(t+1)) = (4*x*t*(t+1))*(t+1) := by ac_rfl
    _ = (n*(t*(t+1)+x*t+x))*(t+1) := congrArg (fun u => u*(t+1)) eqn
    _ = n*(x*(t+1)+x*(t*(t+1))+(t+1)*(t*(t+1))) := by
      simp only [Nat.add_mul, Nat.mul_add]
      ac_rfl

open ErdosStraus28kPlus21CandidateV1 in
theorem family_witness (k : Nat) :
    Witness (28*k+21) (7*k+7) (tailScale k+1) (tailScale k*(tailScale k+1)) := by
  apply split_witness (by omega)
  exact reviewed_target k

/-- Scale the elementary decomposition 4/7 = 1/2 + 1/21 + 1/42. -/
theorem multiples_of_seven (m : Nat) (hm : 0 < m) :
    Witness (7*m) (2*m) (21*m) (42*m) := by
  refine ⟨by omega, by omega, by omega, by omega, ?_⟩
  grind

end MathCase.EgyptianFractions

#print axioms MathCase.EgyptianFractions.family_witness
#print axioms MathCase.EgyptianFractions.multiples_of_seven
