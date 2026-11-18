import M20Shard062

namespace CollatzM20CompositionV1

theorem chunk062 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 486207) 32 = 531441 * k + 246421 ∧ 531441 * k + 246421 < 1048576 * k + 486207) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 486503) 32 = 531441 * k + 246571 ∧ 531441 * k + 246571 < 1048576 * k + 486503) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 487067) 32 = 531441 * k + 246857 ∧ 531441 * k + 246857 < 1048576 * k + 487067) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 487535) 32 = 531441 * k + 247094 ∧ 531441 * k + 247094 < 1048576 * k + 487535) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 488091) 32 = 531441 * k + 247376 ∧ 531441 * k + 247376 < 1048576 * k + 488091) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 488551) 32 = 531441 * k + 247609 ∧ 531441 * k + 247609 < 1048576 * k + 488551) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 489471) 32 = 531441 * k + 248075 ∧ 531441 * k + 248075 < 1048576 * k + 489471) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 489535) 32 = 531441 * k + 248108 ∧ 531441 * k + 248108 < 1048576 * k + 489535) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 489695) 32 = 531441 * k + 248189 ∧ 531441 * k + 248189 < 1048576 * k + 489695) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 489855) 32 = 531441 * k + 248270 ∧ 531441 * k + 248270 < 1048576 * k + 489855) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490139) 32 = 531441 * k + 248414 ∧ 531441 * k + 248414 < 1048576 * k + 490139) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490175) 32 = 531441 * k + 248432 ∧ 531441 * k + 248432 < 1048576 * k + 490175) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490303) 32 = 531441 * k + 248497 ∧ 531441 * k + 248497 < 1048576 * k + 490303) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490559) 32 = 531441 * k + 248627 ∧ 531441 * k + 248627 < 1048576 * k + 490559) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490607) 32 = 531441 * k + 248651 ∧ 531441 * k + 248651 < 1048576 * k + 490607) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490623) 32 = 531441 * k + 248659 ∧ 531441 * k + 248659 < 1048576 * k + 490623) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490879) 32 = 531441 * k + 248789 ∧ 531441 * k + 248789 < 1048576 * k + 490879) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 491879) 32 = 531441 * k + 249296 ∧ 531441 * k + 249296 < 1048576 * k + 491879) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 492543) 32 = 531441 * k + 249632 ∧ 531441 * k + 249632 < 1048576 * k + 492543) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 492647) 32 = 531441 * k + 249685 ∧ 531441 * k + 249685 < 1048576 * k + 492647) ∧
  R := by
  exact ⟨CollatzM20Shard062.descent_mod1048576_486207, ⟨CollatzM20Shard062.descent_mod1048576_486503, ⟨CollatzM20Shard062.descent_mod1048576_487067, ⟨CollatzM20Shard062.descent_mod1048576_487535, ⟨CollatzM20Shard062.descent_mod1048576_488091, ⟨CollatzM20Shard062.descent_mod1048576_488551, ⟨CollatzM20Shard062.descent_mod1048576_489471, ⟨CollatzM20Shard062.descent_mod1048576_489535, ⟨CollatzM20Shard062.descent_mod1048576_489695, ⟨CollatzM20Shard062.descent_mod1048576_489855, ⟨CollatzM20Shard062.descent_mod1048576_490139, ⟨CollatzM20Shard062.descent_mod1048576_490175, ⟨CollatzM20Shard062.descent_mod1048576_490303, ⟨CollatzM20Shard062.descent_mod1048576_490559, ⟨CollatzM20Shard062.descent_mod1048576_490607, ⟨CollatzM20Shard062.descent_mod1048576_490623, ⟨CollatzM20Shard062.descent_mod1048576_490879, ⟨CollatzM20Shard062.descent_mod1048576_491879, ⟨CollatzM20Shard062.descent_mod1048576_492543, ⟨CollatzM20Shard062.descent_mod1048576_492647, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
