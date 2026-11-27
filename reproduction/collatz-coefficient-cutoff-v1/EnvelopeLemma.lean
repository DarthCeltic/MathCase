import Init

namespace MathCase.Collatz.WordBound

/-- Scaled endpoint envelope for a prefix of t accelerated steps with h odd inputs. -/
def scaledEnvelope (t h n : Nat) : Nat :=
  3^h * (n + 2^(t-h))

/-- The envelope cannot decrease when the odd-input count increases by one. -/
theorem scaledEnvelope_step (t n h : Nat) (hh : h < t) :
    scaledEnvelope t h n ≤ scaledEnvelope t (h+1) n := by
  have hexp : t-h = (t-(h+1))+1 := by omega
  rw [scaledEnvelope, scaledEnvelope, hexp, Nat.pow_succ, Nat.pow_succ]
  have hinner : n + 2^(t-(h+1))*2 ≤ 3*(n + 2^(t-(h+1))) := by omega
  simpa [Nat.mul_assoc] using Nat.mul_le_mul_left (3^h) hinner

/-- Among odd-input counts h through H, the largest envelope is at H. -/
theorem scaledEnvelope_le_cap (t h H n : Nat)
    (hh : h ≤ H) (hHt : H ≤ t) :
    scaledEnvelope t h n ≤ scaledEnvelope t H n := by
  have hm : ∀ d, d ≤ H-h → scaledEnvelope t h n ≤ scaledEnvelope t (h+d) n := by
    intro d hd
    induction d with
    | zero => simp
    | succ d ih =>
      have hd' : d ≤ H-h := by omega
      have hlt : h+d < t := by omega
      have hsum : h+(d+1) = (h+d)+1 := by omega
      calc
        scaledEnvelope t h n ≤ scaledEnvelope t (h+d) n := ih hd'
        _ ≤ scaledEnvelope t ((h+d)+1) n := scaledEnvelope_step t n (h+d) hlt
        _ = scaledEnvelope t (h+(d+1)) n := by rw [← hsum]
  have hsum : h+(H-h) = H := by omega
  rw [← hsum]
  exact hm (H-h) (by omega)

end MathCase.Collatz.WordBound
