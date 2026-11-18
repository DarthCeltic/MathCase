import M20Shard048

namespace CollatzM20CompositionV1

theorem chunk048 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 376703) 32 = 531441 * k + 190922 ∧ 531441 * k + 190922 < 1048576 * k + 376703) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 377151) 32 = 531441 * k + 191149 ∧ 531441 * k + 191149 < 1048576 * k + 377151) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 377583) 32 = 531441 * k + 191368 ∧ 531441 * k + 191368 < 1048576 * k + 377583) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 377671) 32 = 531441 * k + 191413 ∧ 531441 * k + 191413 < 1048576 * k + 377671) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 377727) 32 = 531441 * k + 191441 ∧ 531441 * k + 191441 < 1048576 * k + 377727) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 377839) 32 = 531441 * k + 191498 ∧ 531441 * k + 191498 < 1048576 * k + 377839) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 377927) 32 = 531441 * k + 191543 ∧ 531441 * k + 191543 < 1048576 * k + 377927) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 378495) 32 = 531441 * k + 191830 ∧ 531441 * k + 191830 < 1048576 * k + 378495) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 378695) 32 = 531441 * k + 191932 ∧ 531441 * k + 191932 < 1048576 * k + 378695) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 379935) 32 = 531441 * k + 192560 ∧ 531441 * k + 192560 < 1048576 * k + 379935) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 380223) 32 = 531441 * k + 192706 ∧ 531441 * k + 192706 < 1048576 * k + 380223) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 380655) 32 = 531441 * k + 192925 ∧ 531441 * k + 192925 < 1048576 * k + 380655) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 381095) 32 = 531441 * k + 193148 ∧ 531441 * k + 193148 < 1048576 * k + 381095) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 382591) 32 = 531441 * k + 193906 ∧ 531441 * k + 193906 < 1048576 * k + 382591) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 382847) 32 = 531441 * k + 194036 ∧ 531441 * k + 194036 < 1048576 * k + 382847) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 383455) 32 = 531441 * k + 194344 ∧ 531441 * k + 194344 < 1048576 * k + 383455) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 384167) 32 = 531441 * k + 194705 ∧ 531441 * k + 194705 < 1048576 * k + 384167) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 384303) 32 = 531441 * k + 194774 ∧ 531441 * k + 194774 < 1048576 * k + 384303) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 385535) 32 = 531441 * k + 195398 ∧ 531441 * k + 195398 < 1048576 * k + 385535) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 385919) 32 = 531441 * k + 195593 ∧ 531441 * k + 195593 < 1048576 * k + 385919) ∧
  R := by
  exact ⟨CollatzM20Shard048.descent_mod1048576_376703, ⟨CollatzM20Shard048.descent_mod1048576_377151, ⟨CollatzM20Shard048.descent_mod1048576_377583, ⟨CollatzM20Shard048.descent_mod1048576_377671, ⟨CollatzM20Shard048.descent_mod1048576_377727, ⟨CollatzM20Shard048.descent_mod1048576_377839, ⟨CollatzM20Shard048.descent_mod1048576_377927, ⟨CollatzM20Shard048.descent_mod1048576_378495, ⟨CollatzM20Shard048.descent_mod1048576_378695, ⟨CollatzM20Shard048.descent_mod1048576_379935, ⟨CollatzM20Shard048.descent_mod1048576_380223, ⟨CollatzM20Shard048.descent_mod1048576_380655, ⟨CollatzM20Shard048.descent_mod1048576_381095, ⟨CollatzM20Shard048.descent_mod1048576_382591, ⟨CollatzM20Shard048.descent_mod1048576_382847, ⟨CollatzM20Shard048.descent_mod1048576_383455, ⟨CollatzM20Shard048.descent_mod1048576_384167, ⟨CollatzM20Shard048.descent_mod1048576_384303, ⟨CollatzM20Shard048.descent_mod1048576_385535, ⟨CollatzM20Shard048.descent_mod1048576_385919, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
