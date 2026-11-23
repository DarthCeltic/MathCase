import WordBound

namespace MathCase.Collatz.WordBound

/-- Affine constant for the accelerated word followed from n. -/
def offset (n : Nat) : Nat → Nat
  | 0 => 0
  | t+1 => 2 * offset (accelerated n) t +
      (if n%2=0 then 0 else 3^(odds (accelerated n) t))

theorem affine_identity (n t : Nat) :
    2^t * acceleratedIter n t = 3^(odds n t) * n + offset n t := by
  induction t generalizing n with
  | zero => simp [acceleratedIter, odds, offset]
  | succ t ih =>
    let m := accelerated n
    let O := 3^(odds m t)
    let B := offset m t
    let y := acceleratedIter m t
    have doubled : 2^(t+1)*y = O*(2*m) + 2*B := by
      calc
        2^(t+1)*y = 2*(2^t*y) := by rw [Nat.pow_succ, Nat.mul_comm (2^t) 2, Nat.mul_assoc]
        _ = 2*(O*m+B) := congrArg (fun v => 2*v) (ih m)
        _ = O*(2*m)+2*B := by rw [Nat.mul_add, Nat.mul_left_comm 2 O]
    by_cases he : n%2=0
    · have hm : m=n/2 := by simp [m, accelerated, he]
      have h2 : 2*m=n := by omega
      rw [h2] at doubled
      simpa only [acceleratedIter, odds, offset, if_pos he, Nat.add_zero] using doubled
    · have hm : m=(3*n+1)/2 := by simp [m, accelerated, he]
      have h2 : 2*m=3*n+1 := by omega
      rw [h2, Nat.mul_add, Nat.mul_one] at doubled
      simp only [acceleratedIter, odds, offset, if_neg he, Nat.pow_succ]
      change 2^(t+1)*y = O*3*n + (2*B+O)
      rw [Nat.mul_assoc O 3 n]
      omega

/-- Sharp ordering bound in an addition-only form that avoids Nat subtraction. -/
theorem offset_upper (n t : Nat) :
    offset n t + 2^t ≤ 3^(odds n t)*2^(evens n t) := by
  have h := scaled_upper n t
  rw [Nat.mul_add, Nat.mul_one, affine_identity, Nat.mul_add] at h
  omega

theorem twenty_twelve_offset (n : Nat) (ho : odds n 20 = 12) :
    offset n 20 ≤ 135000320 := by
  have count := counts n 20
  have he : evens n 20 = 8 := by omega
  have h := offset_upper n 20
  rw [he,ho] at h
  change offset n 20 + 1048576 ≤ 136048896 at h
  omega

-- Controls exercise a qualifying progression and a start outside the predicate.
example : odds 239 20 = 12 ∧ ordinaryIter 239 32 = 122 := by decide
example : odds 27 20 = 15 ∧ ordinaryIter 27 32 = 526 := by decide

#print axioms affine_identity
#print axioms offset_upper
#print axioms twenty_twelve_offset

end MathCase.Collatz.WordBound
