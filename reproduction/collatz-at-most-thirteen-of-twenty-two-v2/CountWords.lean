import WordResidue

namespace MathCase.Collatz.WordBound

/-- Sum over the natural numbers strictly less than the given bound. -/
def sumBelow (f : Nat → Nat) : Nat → Nat
  | 0 => 0
  | n+1 => sumBelow f n + f n

private theorem split_sum (f : Nat → Nat) (a b : Nat) :
    sumBelow f (a+b) = sumBelow f a + sumBelow (fun i => f (a+i)) b := by
  induction b with
  | zero => simp [sumBelow]
  | succ b ih =>
    change sumBelow f (a+b) + f (a+b) = sumBelow f a + (sumBelow (fun i => f (a+i)) b + f (a+b))
    rw [ih, Nat.add_assoc]

private theorem sum_pair (f g : Nat → Nat) (n : Nat) :
    sumBelow f n + sumBelow g n = sumBelow (fun i => f i + g i) n := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [sumBelow]; omega

private theorem sum_congr {f g : Nat → Nat} (h : ∀ i, f i = g i) (n : Nat) :
    sumBelow f n = sumBelow g n := congrArg (fun z => sumBelow z n) (funext h)

private theorem oddPower (n : Nat) : 3^n % 2 = 1 := by
  induction n with
  | zero => decide
  | succ n ih => rw [Nat.pow_succ]; omega

private theorem odds_snoc (t n : Nat) :
    odds n (t+1) = odds n t + (if acceleratedIter n t % 2 = 0 then 0 else 1) := by
  induction t generalizing n with
  | zero => by_cases he : n % 2 = 0 <;> simp [odds, acceleratedIter, he]
  | succ t ih =>
    by_cases h : n%2 = 0
    · simp only [odds, if_pos h, acceleratedIter]; exact ih (accelerated n)
    · simp only [odds, if_neg h, acceleratedIter]
      change odds (accelerated n) (t+1) + 1 = odds (accelerated n) t + 1 + (if acceleratedIter (accelerated n) t % 2 = 0 then 0 else 1)
      rw [ih (accelerated n)]
      omega

/-- The two lifts of a residue modulo 2^t acquire complementary next parity bits. -/
theorem sibling_counts (t r : Nat) :
    (odds r (t+1) = odds r t ∧ odds (2^t+r) (t+1) = odds r t + 1) ∨
    (odds r (t+1) = odds r t + 1 ∧ odds (2^t+r) (t+1) = odds r t) := by
  have lift := lift_residue t r 1
  simp only [Nat.mul_one] at lift
  rw [odds_snoc t r, odds_snoc t (2^t+r), lift.1, lift.2]
  have odd := oddPower (odds r t)
  by_cases h : acceleratedIter r t % 2 = 0
  · have other : (3^(odds r t) + acceleratedIter r t) % 2 ≠ 0 := by omega
    simp [h, other]
  · have other : (3^(odds r t) + acceleratedIter r t) % 2 = 0 := by omega
    simp [h, other]

private def indicator (value target : Nat) := if value = target then 1 else 0

/-- Count exactly the canonical residues 0 ≤ r < 2^t with h odd inputs. -/
def residueCount (t h : Nat) := sumBelow (fun r => indicator (odds r t) h) (2^t)

private theorem counted_siblings (t h : Nat) :
    residueCount (t+1) h =
    sumBelow (fun r => indicator (odds r t) h + indicator (odds r t + 1) h) (2^t) := by
  unfold residueCount
  rw [Nat.pow_succ, Nat.mul_two, split_sum, sum_pair]
  apply sum_congr
  intro r
  rcases sibling_counts t r with ⟨lo,hi⟩ | ⟨hi,lo⟩
  · rw [lo,hi]
  · rw [hi,lo, Nat.add_comm]

/-- Pascal recursion for the number of binary words of length t and weight h. -/
def parityWordCount : Nat → Nat → Nat
  | 0, h => indicator 0 h
  | t+1, 0 => parityWordCount t 0
  | t+1, h+1 => parityWordCount t (h+1) + parityWordCount t h

theorem residueCount_eq_wordCount (t h : Nat) :
    residueCount t h = parityWordCount t h := by
  induction t generalizing h with
  | zero => simp [residueCount, sumBelow, odds, parityWordCount]
  | succ t ih =>
    rw [counted_siblings]
    cases h with
    | zero =>
      simpa [indicator, parityWordCount, residueCount] using ih 0
    | succ h =>
      have step := sum_pair (fun r => indicator (odds r t) (h+1))
                            (fun r => indicator (odds r t) h) (2^t)
      have rearrange :
          sumBelow (fun r => indicator (odds r t) (h+1) + indicator (odds r t + 1) (h+1)) (2^t) =
          residueCount t (h+1) + residueCount t h := by
        unfold residueCount
        rw [step]
        apply sum_congr
        intro r
        simp [indicator]
      rw [rearrange, ih, ih]
      rfl

theorem count_twelve_of_twenty : residueCount 20 12 = 125970 := by
  rw [residueCount_eq_wordCount]
  decide

private theorem count_range (t h n : Nat) :
    (List.range n).countP (fun r => decide (odds r t = h)) =
    sumBelow (fun r => indicator (odds r t) h) n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    rw [List.range_succ, List.countP_append, ih, List.countP_singleton]
    simp [sumBelow, indicator]

/-- Exactly 125,970 of the 1,048,576 canonical residues qualify, and every
    member of each qualifying infinite progression has its stated endpoint
    and descends. -/
theorem counted_progressions_descend :
    (List.range 1048576).countP (fun r => decide (odds r 20 = 12)) = 125970 ∧
    ∀ (r : Fin 1048576) (k : Nat), odds r.val 20 = 12 →
      ordinaryIter (1048576*k+r.val) 32 = 531441*k + acceleratedIter r.val 20 ∧
      ordinaryIter (1048576*k+r.val) 32 < 1048576*k+r.val := by
  constructor
  · rw [count_range]
    exact count_twelve_of_twenty
  · intro r k h
    exact residue_twelve_of_twenty r.val k h

#print axioms residueCount_eq_wordCount
#print axioms count_twelve_of_twenty
#print axioms counted_progressions_descend

end MathCase.Collatz.WordBound
