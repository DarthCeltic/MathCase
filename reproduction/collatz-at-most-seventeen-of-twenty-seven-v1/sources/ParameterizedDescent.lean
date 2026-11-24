import WordBound

namespace MathCase.Collatz.WordBound

/-- A reusable bridge from a parity-count bound to strict descent. -/
theorem descent_from_parity_count (n t h : Nat)
    (hodd : odds n t = h) (hh : h ≤ t)
    (hcoeff : 3^h * (n + 2^(t-h)) < 2^t * (n+1)) :
    ordinaryIter n (t+h) < n := by
  have hc := counts n t
  have he : evens n t = t-h := by rw [hodd] at hc; omega
  have hscaled := scaled_upper n t
  rw [hodd, he] at hscaled
  have hproduct := Nat.lt_of_le_of_lt hscaled hcoeff
  have haccelerated_succ : acceleratedIter n t + 1 < n + 1 :=
    Nat.lt_of_mul_lt_mul_left hproduct
  have haccelerated : acceleratedIter n t < n := by omega
  have hbridge := ordinary_eq_accelerated n t
  rw [hodd] at hbridge
  calc
    ordinaryIter n (t+h) = acceleratedIter n t := hbridge
    _ < n := haccelerated

#print axioms descent_from_parity_count

end MathCase.Collatz.WordBound
