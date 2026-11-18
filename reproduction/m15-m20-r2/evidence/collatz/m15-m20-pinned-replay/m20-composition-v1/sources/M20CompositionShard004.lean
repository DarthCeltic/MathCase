import M20Shard004

namespace CollatzM20CompositionV1

theorem chunk004 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 17215) 32 = 531441 * k + 8726 ∧ 531441 * k + 8726 < 1048576 * k + 17215) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 17375) 32 = 531441 * k + 8807 ∧ 531441 * k + 8807 < 1048576 * k + 17375) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 17499) 32 = 531441 * k + 8870 ∧ 531441 * k + 8870 < 1048576 * k + 17499) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 17535) 32 = 531441 * k + 8888 ∧ 531441 * k + 8888 < 1048576 * k + 17535) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 18127) 32 = 531441 * k + 9188 ∧ 531441 * k + 9188 < 1048576 * k + 18127) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 18303) 32 = 531441 * k + 9277 ∧ 531441 * k + 9277 < 1048576 * k + 18303) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 18503) 32 = 531441 * k + 9379 ∧ 531441 * k + 9379 < 1048576 * k + 18503) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 18663) 32 = 531441 * k + 9460 ∧ 531441 * k + 9460 < 1048576 * k + 18663) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 18879) 32 = 531441 * k + 9569 ∧ 531441 * k + 9569 < 1048576 * k + 18879) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 19303) 32 = 531441 * k + 9784 ∧ 531441 * k + 9784 < 1048576 * k + 19303) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 19995) 32 = 531441 * k + 10135 ∧ 531441 * k + 10135 < 1048576 * k + 19995) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 20223) 32 = 531441 * k + 10250 ∧ 531441 * k + 10250 < 1048576 * k + 20223) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 20571) 32 = 531441 * k + 10427 ∧ 531441 * k + 10427 < 1048576 * k + 20571) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 21019) 32 = 531441 * k + 10654 ∧ 531441 * k + 10654 < 1048576 * k + 21019) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 21247) 32 = 531441 * k + 10769 ∧ 531441 * k + 10769 < 1048576 * k + 21247) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 21375) 32 = 531441 * k + 10834 ∧ 531441 * k + 10834 < 1048576 * k + 21375) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 22223) 32 = 531441 * k + 11264 ∧ 531441 * k + 11264 < 1048576 * k + 22223) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 23087) 32 = 531441 * k + 11702 ∧ 531441 * k + 11702 < 1048576 * k + 23087) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 23271) 32 = 531441 * k + 11795 ∧ 531441 * k + 11795 < 1048576 * k + 23271) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 23295) 32 = 531441 * k + 11807 ∧ 531441 * k + 11807 < 1048576 * k + 23295) ∧
  R := by
  exact ⟨CollatzM20Shard004.descent_mod1048576_17215, ⟨CollatzM20Shard004.descent_mod1048576_17375, ⟨CollatzM20Shard004.descent_mod1048576_17499, ⟨CollatzM20Shard004.descent_mod1048576_17535, ⟨CollatzM20Shard004.descent_mod1048576_18127, ⟨CollatzM20Shard004.descent_mod1048576_18303, ⟨CollatzM20Shard004.descent_mod1048576_18503, ⟨CollatzM20Shard004.descent_mod1048576_18663, ⟨CollatzM20Shard004.descent_mod1048576_18879, ⟨CollatzM20Shard004.descent_mod1048576_19303, ⟨CollatzM20Shard004.descent_mod1048576_19995, ⟨CollatzM20Shard004.descent_mod1048576_20223, ⟨CollatzM20Shard004.descent_mod1048576_20571, ⟨CollatzM20Shard004.descent_mod1048576_21019, ⟨CollatzM20Shard004.descent_mod1048576_21247, ⟨CollatzM20Shard004.descent_mod1048576_21375, ⟨CollatzM20Shard004.descent_mod1048576_22223, ⟨CollatzM20Shard004.descent_mod1048576_23087, ⟨CollatzM20Shard004.descent_mod1048576_23271, ⟨CollatzM20Shard004.descent_mod1048576_23295, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
