import M20Shard127

namespace CollatzM20CompositionV1

theorem chunk127 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 995871) 32 = 531441 * k + 504730 ∧ 531441 * k + 504730 < 1048576 * k + 995871) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 996167) 32 = 531441 * k + 504880 ∧ 531441 * k + 504880 < 1048576 * k + 996167) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 996199) 32 = 531441 * k + 504896 ∧ 531441 * k + 504896 < 1048576 * k + 996199) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 996223) 32 = 531441 * k + 504908 ∧ 531441 * k + 504908 < 1048576 * k + 996223) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 996511) 32 = 531441 * k + 505054 ∧ 531441 * k + 505054 < 1048576 * k + 996511) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 996635) 32 = 531441 * k + 505117 ∧ 531441 * k + 505117 < 1048576 * k + 996635) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 997223) 32 = 531441 * k + 505415 ∧ 531441 * k + 505415 < 1048576 * k + 997223) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 999583) 32 = 531441 * k + 506611 ∧ 531441 * k + 506611 < 1048576 * k + 999583) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 999707) 32 = 531441 * k + 506674 ∧ 531441 * k + 506674 < 1048576 * k + 999707) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 999839) 32 = 531441 * k + 506741 ∧ 531441 * k + 506741 < 1048576 * k + 999839) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1000319) 32 = 531441 * k + 506984 ∧ 531441 * k + 506984 < 1048576 * k + 1000319) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1000607) 32 = 531441 * k + 507130 ∧ 531441 * k + 507130 < 1048576 * k + 1000607) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1001543) 32 = 531441 * k + 507605 ∧ 531441 * k + 507605 < 1048576 * k + 1001543) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1001703) 32 = 531441 * k + 507686 ∧ 531441 * k + 507686 < 1048576 * k + 1001703) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1002311) 32 = 531441 * k + 507994 ∧ 531441 * k + 507994 < 1048576 * k + 1002311) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1002343) 32 = 531441 * k + 508010 ∧ 531441 * k + 508010 < 1048576 * k + 1002343) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1002779) 32 = 531441 * k + 508231 ∧ 531441 * k + 508231 < 1048576 * k + 1002779) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1003035) 32 = 531441 * k + 508361 ∧ 531441 * k + 508361 < 1048576 * k + 1003035) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1003803) 32 = 531441 * k + 508750 ∧ 531441 * k + 508750 < 1048576 * k + 1003803) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1003839) 32 = 531441 * k + 508768 ∧ 531441 * k + 508768 < 1048576 * k + 1003839) ∧
  R := by
  exact ⟨CollatzM20Shard127.descent_mod1048576_995871, ⟨CollatzM20Shard127.descent_mod1048576_996167, ⟨CollatzM20Shard127.descent_mod1048576_996199, ⟨CollatzM20Shard127.descent_mod1048576_996223, ⟨CollatzM20Shard127.descent_mod1048576_996511, ⟨CollatzM20Shard127.descent_mod1048576_996635, ⟨CollatzM20Shard127.descent_mod1048576_997223, ⟨CollatzM20Shard127.descent_mod1048576_999583, ⟨CollatzM20Shard127.descent_mod1048576_999707, ⟨CollatzM20Shard127.descent_mod1048576_999839, ⟨CollatzM20Shard127.descent_mod1048576_1000319, ⟨CollatzM20Shard127.descent_mod1048576_1000607, ⟨CollatzM20Shard127.descent_mod1048576_1001543, ⟨CollatzM20Shard127.descent_mod1048576_1001703, ⟨CollatzM20Shard127.descent_mod1048576_1002311, ⟨CollatzM20Shard127.descent_mod1048576_1002343, ⟨CollatzM20Shard127.descent_mod1048576_1002779, ⟨CollatzM20Shard127.descent_mod1048576_1003035, ⟨CollatzM20Shard127.descent_mod1048576_1003803, ⟨CollatzM20Shard127.descent_mod1048576_1003839, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
