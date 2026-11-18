import M20Shard002

namespace CollatzM20CompositionV1

theorem chunk002 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 5247) 32 = 531441 * k + 2660 ∧ 531441 * k + 2660 < 1048576 * k + 5247) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 5679) 32 = 531441 * k + 2879 ∧ 531441 * k + 2879 < 1048576 * k + 5679) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 6235) 32 = 531441 * k + 3161 ∧ 531441 * k + 3161 < 1048576 * k + 6235) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 7271) 32 = 531441 * k + 3686 ∧ 531441 * k + 3686 < 1048576 * k + 7271) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 7583) 32 = 531441 * k + 3844 ∧ 531441 * k + 3844 < 1048576 * k + 7583) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 7615) 32 = 531441 * k + 3860 ∧ 531441 * k + 3860 < 1048576 * k + 7615) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 7707) 32 = 531441 * k + 3907 ∧ 531441 * k + 3907 < 1048576 * k + 7707) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 7999) 32 = 531441 * k + 4055 ∧ 531441 * k + 4055 < 1048576 * k + 7999) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 8039) 32 = 531441 * k + 4075 ∧ 531441 * k + 4075 < 1048576 * k + 8039) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 8283) 32 = 531441 * k + 4199 ∧ 531441 * k + 4199 < 1048576 * k + 8283) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 8319) 32 = 531441 * k + 4217 ∧ 531441 * k + 4217 < 1048576 * k + 8319) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 8607) 32 = 531441 * k + 4363 ∧ 531441 * k + 4363 < 1048576 * k + 8607) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 8751) 32 = 531441 * k + 4436 ∧ 531441 * k + 4436 < 1048576 * k + 8751) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 9023) 32 = 531441 * k + 4574 ∧ 531441 * k + 4574 < 1048576 * k + 9023) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 9063) 32 = 531441 * k + 4594 ∧ 531441 * k + 4594 < 1048576 * k + 9063) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 9343) 32 = 531441 * k + 4736 ∧ 531441 * k + 4736 < 1048576 * k + 9343) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 9447) 32 = 531441 * k + 4789 ∧ 531441 * k + 4789 < 1048576 * k + 9447) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 9703) 32 = 531441 * k + 4919 ∧ 531441 * k + 4919 < 1048576 * k + 9703) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 10311) 32 = 531441 * k + 5227 ∧ 531441 * k + 5227 < 1048576 * k + 10311) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 10343) 32 = 531441 * k + 5243 ∧ 531441 * k + 5243 < 1048576 * k + 10343) ∧
  R := by
  exact ⟨CollatzM20Shard002.descent_mod1048576_5247, ⟨CollatzM20Shard002.descent_mod1048576_5679, ⟨CollatzM20Shard002.descent_mod1048576_6235, ⟨CollatzM20Shard002.descent_mod1048576_7271, ⟨CollatzM20Shard002.descent_mod1048576_7583, ⟨CollatzM20Shard002.descent_mod1048576_7615, ⟨CollatzM20Shard002.descent_mod1048576_7707, ⟨CollatzM20Shard002.descent_mod1048576_7999, ⟨CollatzM20Shard002.descent_mod1048576_8039, ⟨CollatzM20Shard002.descent_mod1048576_8283, ⟨CollatzM20Shard002.descent_mod1048576_8319, ⟨CollatzM20Shard002.descent_mod1048576_8607, ⟨CollatzM20Shard002.descent_mod1048576_8751, ⟨CollatzM20Shard002.descent_mod1048576_9023, ⟨CollatzM20Shard002.descent_mod1048576_9063, ⟨CollatzM20Shard002.descent_mod1048576_9343, ⟨CollatzM20Shard002.descent_mod1048576_9447, ⟨CollatzM20Shard002.descent_mod1048576_9703, ⟨CollatzM20Shard002.descent_mod1048576_10311, ⟨CollatzM20Shard002.descent_mod1048576_10343, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
