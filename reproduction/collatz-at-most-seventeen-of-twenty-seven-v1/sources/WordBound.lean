import Init

namespace MathCase.Collatz.WordBound

/-- One ordinary Collatz step. -/
def ordinary (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

/-- One accelerated step always halves once, after the odd update if required. -/
def accelerated (n : Nat) : Nat := if n % 2 = 0 then n / 2 else (3 * n + 1) / 2

def ordinaryIter (n : Nat) : Nat → Nat
  | 0 => n
  | t + 1 => ordinaryIter (ordinary n) t

def acceleratedIter (n : Nat) : Nat → Nat
  | 0 => n
  | t + 1 => acceleratedIter (accelerated n) t

def odds (n : Nat) : Nat → Nat
  | 0 => 0
  | t + 1 => if n % 2 = 0 then odds (accelerated n) t else odds (accelerated n) t + 1

def evens (n : Nat) : Nat → Nat
  | 0 => 0
  | t + 1 => if n % 2 = 0 then evens (accelerated n) t + 1 else evens (accelerated n) t

theorem counts (n t : Nat) : odds n t + evens n t = t := by
  induction t generalizing n with
  | zero => rfl
  | succ t ih =>
    have h := ih (accelerated n)
    by_cases he : n % 2 = 0
    · simp only [odds, evens, if_pos he]; omega
    · simp only [odds, evens, if_neg he]; omega

theorem ordinary_eq_accelerated (n t : Nat) :
    ordinaryIter n (t + odds n t) = acceleratedIter n t := by
  induction t generalizing n with
  | zero => rfl
  | succ t ih =>
    by_cases he : n % 2 = 0
    · simp only [odds, if_pos he, acceleratedIter]
      have ht : t + 1 + odds (accelerated n) t = (t + odds (accelerated n) t) + 1 := by omega
      rw [ht, ordinaryIter]
      have hn : ordinary n = accelerated n := by simp [ordinary, accelerated, he]
      rw [hn]
      exact ih (accelerated n)
    · simp only [odds, if_neg he, acceleratedIter]
      have ht : t + 1 + (odds (accelerated n) t + 1) = (t + odds (accelerated n) t) + 1 + 1 := by omega
      have hpar : (3 * n + 1) % 2 = 0 := by omega
      have hn : ordinary (ordinary n) = accelerated n := by
        simp only [ordinary, accelerated, if_neg he, if_pos hpar]
      rw [ht, ordinaryIter, ordinaryIter, hn]
      exact ih (accelerated n)

/-- A word-wide upper bound. It uses the numbers of even and odd inputs,
    without listing the order in which they occur. -/
theorem scaled_upper (n t : Nat) :
    2^t * (acceleratedIter n t + 1) ≤
      3^(odds n t) * (n + 2^(evens n t)) := by
  induction t generalizing n with
  | zero => simp [acceleratedIter, odds, evens]
  | succ t ih =>
    let m := accelerated n
    let E := 2^(evens m t)
    let O := 3^(odds m t)
    let Y := acceleratedIter m t + 1
    have tail : 2^t * Y ≤ O * (m + E) := ih m
    have twice : 2^(t+1) * Y ≤ O * (2 * (m + E)) := by
      calc
        2^(t+1) * Y = 2 * (2^t * Y) := by
          rw [Nat.pow_succ, Nat.mul_comm (2^t) 2, Nat.mul_assoc]
        _ ≤ 2 * (O * (m + E)) := Nat.mul_le_mul_left 2 tail
        _ = O * (2 * (m + E)) := Nat.mul_left_comm _ _ _
    by_cases he : n % 2 = 0
    · simp only [acceleratedIter, odds, evens, if_pos he, Nat.pow_succ]
      have hm : m = n/2 := by simp [m, accelerated, he]
      have q : 2 * (m + E) = n + E*2 := by omega
      rw [q] at twice
      exact twice
    · simp only [acceleratedIter, odds, evens, if_neg he, Nat.pow_succ]
      have hm : m = (3*n+1)/2 := by simp [m, accelerated, he]
      have hp : 0 < E := Nat.pow_pos (by decide)
      have q : 2 * (m + E) ≤ 3 * (n + E) := by omega
      calc
        _ ≤ O * (2 * (m + E)) := twice
        _ ≤ O * (3 * (n + E)) := Nat.mul_le_mul_left O q
        _ = (O * 3) * (n + E) := (Nat.mul_assoc _ _ _).symm

/-- Every start at least 262 with 12 odd inputs in 20 accelerated steps
    is below its starting value after exactly 32 ordinary steps. -/
theorem twenty_twelve_descent (n : Nat) (hn : 262 ≤ n) (ho : odds n 20 = 12) :
    ordinaryIter n 32 < n := by
  have hc := counts n 20
  have he : evens n 20 = 8 := by omega
  have h := scaled_upper n 20
  rw [he, ho] at h
  change 1048576 * (acceleratedIter n 20 + 1) ≤ 531441 * (n + 256) at h
  have hbridge := ordinary_eq_accelerated n 20
  rw [ho] at hbridge
  change ordinaryIter n 32 = acceleratedIter n 20 at hbridge
  omega

set_option maxRecDepth 4096 in
private theorem small_starts : ∀ n : Fin 262,
    odds n.val 20 = 12 → ordinaryIter n.val 32 < n.val := by decide

/-- All starts covered by the parity-count predicate, including small starts. -/
theorem twelve_of_twenty (n : Nat) (ho : odds n 20 = 12) :
    ordinaryIter n 32 < n := by
  by_cases small : n < 262
  · exact small_starts ⟨n, small⟩ ho
  · exact twenty_twelve_descent n (by omega) ho

#print axioms twelve_of_twenty
#print axioms scaled_upper
#print axioms twenty_twelve_descent

end MathCase.Collatz.WordBound
