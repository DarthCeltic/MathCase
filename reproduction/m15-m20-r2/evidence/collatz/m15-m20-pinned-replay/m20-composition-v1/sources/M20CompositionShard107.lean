import M20Shard107

namespace CollatzM20CompositionV1

theorem chunk107 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 833791) 32 = 531441 * k + 422584 ∧ 531441 * k + 422584 < 1048576 * k + 833791) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 834663) 32 = 531441 * k + 423026 ∧ 531441 * k + 423026 < 1048576 * k + 834663) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 834799) 32 = 531441 * k + 423095 ∧ 531441 * k + 423095 < 1048576 * k + 834799) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 835823) 32 = 531441 * k + 423614 ∧ 531441 * k + 423614 < 1048576 * k + 835823) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 836255) 32 = 531441 * k + 423833 ∧ 531441 * k + 423833 < 1048576 * k + 836255) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 837023) 32 = 531441 * k + 424222 ∧ 531441 * k + 424222 < 1048576 * k + 837023) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 837543) 32 = 531441 * k + 424486 ∧ 531441 * k + 424486 < 1048576 * k + 837543) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 837735) 32 = 531441 * k + 424583 ∧ 531441 * k + 424583 < 1048576 * k + 837735) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 838119) 32 = 531441 * k + 424778 ∧ 531441 * k + 424778 < 1048576 * k + 838119) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 838431) 32 = 531441 * k + 424936 ∧ 531441 * k + 424936 < 1048576 * k + 838431) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 839327) 32 = 531441 * k + 425390 ∧ 531441 * k + 425390 < 1048576 * k + 839327) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 839455) 32 = 531441 * k + 425455 ∧ 531441 * k + 425455 < 1048576 * k + 839455) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 839887) 32 = 531441 * k + 425674 ∧ 531441 * k + 425674 < 1048576 * k + 839887) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 839935) 32 = 531441 * k + 425698 ∧ 531441 * k + 425698 < 1048576 * k + 839935) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 840095) 32 = 531441 * k + 425779 ∧ 531441 * k + 425779 < 1048576 * k + 840095) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 840935) 32 = 531441 * k + 426205 ∧ 531441 * k + 426205 < 1048576 * k + 840935) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 841831) 32 = 531441 * k + 426659 ∧ 531441 * k + 426659 < 1048576 * k + 841831) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 842855) 32 = 531441 * k + 427178 ∧ 531441 * k + 427178 < 1048576 * k + 842855) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 842879) 32 = 531441 * k + 427190 ∧ 531441 * k + 427190 < 1048576 * k + 842879) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 843167) 32 = 531441 * k + 427336 ∧ 531441 * k + 427336 < 1048576 * k + 843167) ∧
  R := by
  exact ⟨CollatzM20Shard107.descent_mod1048576_833791, ⟨CollatzM20Shard107.descent_mod1048576_834663, ⟨CollatzM20Shard107.descent_mod1048576_834799, ⟨CollatzM20Shard107.descent_mod1048576_835823, ⟨CollatzM20Shard107.descent_mod1048576_836255, ⟨CollatzM20Shard107.descent_mod1048576_837023, ⟨CollatzM20Shard107.descent_mod1048576_837543, ⟨CollatzM20Shard107.descent_mod1048576_837735, ⟨CollatzM20Shard107.descent_mod1048576_838119, ⟨CollatzM20Shard107.descent_mod1048576_838431, ⟨CollatzM20Shard107.descent_mod1048576_839327, ⟨CollatzM20Shard107.descent_mod1048576_839455, ⟨CollatzM20Shard107.descent_mod1048576_839887, ⟨CollatzM20Shard107.descent_mod1048576_839935, ⟨CollatzM20Shard107.descent_mod1048576_840095, ⟨CollatzM20Shard107.descent_mod1048576_840935, ⟨CollatzM20Shard107.descent_mod1048576_841831, ⟨CollatzM20Shard107.descent_mod1048576_842855, ⟨CollatzM20Shard107.descent_mod1048576_842879, ⟨CollatzM20Shard107.descent_mod1048576_843167, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
