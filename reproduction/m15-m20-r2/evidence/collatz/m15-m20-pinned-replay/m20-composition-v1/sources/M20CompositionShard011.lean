import M20Shard011

namespace CollatzM20CompositionV1

theorem chunk011 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 69631) 32 = 531441 * k + 35291 ∧ 531441 * k + 35291 < 1048576 * k + 69631) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 69743) 32 = 531441 * k + 35348 ∧ 531441 * k + 35348 < 1048576 * k + 69743) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 70655) 32 = 531441 * k + 35810 ∧ 531441 * k + 35810 < 1048576 * k + 70655) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 70759) 32 = 531441 * k + 35863 ∧ 531441 * k + 35863 < 1048576 * k + 70759) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 70783) 32 = 531441 * k + 35875 ∧ 531441 * k + 35875 < 1048576 * k + 70783) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 71039) 32 = 531441 * k + 36005 ∧ 531441 * k + 36005 < 1048576 * k + 71039) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 71679) 32 = 531441 * k + 36329 ∧ 531441 * k + 36329 < 1048576 * k + 71679) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 71771) 32 = 531441 * k + 36376 ∧ 531441 * k + 36376 < 1048576 * k + 71771) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 72347) 32 = 531441 * k + 36668 ∧ 531441 * k + 36668 < 1048576 * k + 72347) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 72359) 32 = 531441 * k + 36674 ∧ 531441 * k + 36674 < 1048576 * k + 72359) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 72807) 32 = 531441 * k + 36901 ∧ 531441 * k + 36901 < 1048576 * k + 72807) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 72815) 32 = 531441 * k + 36905 ∧ 531441 * k + 36905 < 1048576 * k + 72815) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 73791) 32 = 531441 * k + 37400 ∧ 531441 * k + 37400 < 1048576 * k + 73791) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 73819) 32 = 531441 * k + 37414 ∧ 531441 * k + 37414 < 1048576 * k + 73819) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 73839) 32 = 531441 * k + 37424 ∧ 531441 * k + 37424 < 1048576 * k + 73839) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 73951) 32 = 531441 * k + 37481 ∧ 531441 * k + 37481 < 1048576 * k + 73951) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 74395) 32 = 531441 * k + 37706 ∧ 531441 * k + 37706 < 1048576 * k + 74395) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 74559) 32 = 531441 * k + 37789 ∧ 531441 * k + 37789 < 1048576 * k + 74559) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 74719) 32 = 531441 * k + 37870 ∧ 531441 * k + 37870 < 1048576 * k + 74719) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 74751) 32 = 531441 * k + 37886 ∧ 531441 * k + 37886 < 1048576 * k + 74751) ∧
  R := by
  exact ⟨CollatzM20Shard011.descent_mod1048576_69631, ⟨CollatzM20Shard011.descent_mod1048576_69743, ⟨CollatzM20Shard011.descent_mod1048576_70655, ⟨CollatzM20Shard011.descent_mod1048576_70759, ⟨CollatzM20Shard011.descent_mod1048576_70783, ⟨CollatzM20Shard011.descent_mod1048576_71039, ⟨CollatzM20Shard011.descent_mod1048576_71679, ⟨CollatzM20Shard011.descent_mod1048576_71771, ⟨CollatzM20Shard011.descent_mod1048576_72347, ⟨CollatzM20Shard011.descent_mod1048576_72359, ⟨CollatzM20Shard011.descent_mod1048576_72807, ⟨CollatzM20Shard011.descent_mod1048576_72815, ⟨CollatzM20Shard011.descent_mod1048576_73791, ⟨CollatzM20Shard011.descent_mod1048576_73819, ⟨CollatzM20Shard011.descent_mod1048576_73839, ⟨CollatzM20Shard011.descent_mod1048576_73951, ⟨CollatzM20Shard011.descent_mod1048576_74395, ⟨CollatzM20Shard011.descent_mod1048576_74559, ⟨CollatzM20Shard011.descent_mod1048576_74719, ⟨CollatzM20Shard011.descent_mod1048576_74751, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
