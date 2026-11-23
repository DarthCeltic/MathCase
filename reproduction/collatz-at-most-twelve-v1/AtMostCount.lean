import CountWords

namespace MathCase.Collatz.WordBound

def residueAtMostCount (t maxOdd : Nat) : Nat :=
  sumBelow (fun h => residueCount t h) (maxOdd + 1)

private theorem summed_residue_counts_eq_words (t limit : Nat) :
    sumBelow (fun h => residueCount t h) limit =
      sumBelow (fun h => parityWordCount t h) limit := by
  induction limit with
  | zero => rfl
  | succ limit ih =>
    simp [sumBelow, ih, residueCount_eq_wordCount]

/-- The exact number of 20-bit parity residues with at most twelve odd inputs. -/
theorem residue_at_most_twelve_count : residueAtMostCount 20 12 = 910596 := by
  unfold residueAtMostCount
  rw [summed_residue_counts_eq_words]
  decide

#print axioms residue_at_most_twelve_count

end MathCase.Collatz.WordBound
