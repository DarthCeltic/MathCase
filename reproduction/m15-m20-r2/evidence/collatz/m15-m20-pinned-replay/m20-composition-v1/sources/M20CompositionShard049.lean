import M20Shard049

namespace CollatzM20CompositionV1

theorem chunk049 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 386367) 32 = 531441 * k + 195820 ∧ 531441 * k + 195820 < 1048576 * k + 386367) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 386527) 32 = 531441 * k + 195901 ∧ 531441 * k + 195901 < 1048576 * k + 386527) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 386799) 32 = 531441 * k + 196039 ∧ 531441 * k + 196039 < 1048576 * k + 386799) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 386887) 32 = 531441 * k + 196084 ∧ 531441 * k + 196084 < 1048576 * k + 386887) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 388263) 32 = 531441 * k + 196781 ∧ 531441 * k + 196781 < 1048576 * k + 388263) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 388607) 32 = 531441 * k + 196955 ∧ 531441 * k + 196955 < 1048576 * k + 388607) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 388955) 32 = 531441 * k + 197132 ∧ 531441 * k + 197132 < 1048576 * k + 388955) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 389287) 32 = 531441 * k + 197300 ∧ 531441 * k + 197300 < 1048576 * k + 389287) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 389599) 32 = 531441 * k + 197458 ∧ 531441 * k + 197458 < 1048576 * k + 389599) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 389631) 32 = 531441 * k + 197474 ∧ 531441 * k + 197474 < 1048576 * k + 389631) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 389723) 32 = 531441 * k + 197521 ∧ 531441 * k + 197521 < 1048576 * k + 389723) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 390447) 32 = 531441 * k + 197888 ∧ 531441 * k + 197888 < 1048576 * k + 390447) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 391495) 32 = 531441 * k + 198419 ∧ 531441 * k + 198419 < 1048576 * k + 391495) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 391647) 32 = 531441 * k + 198496 ∧ 531441 * k + 198496 < 1048576 * k + 391647) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 391807) 32 = 531441 * k + 198577 ∧ 531441 * k + 198577 < 1048576 * k + 391807) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 392223) 32 = 531441 * k + 198788 ∧ 531441 * k + 198788 < 1048576 * k + 392223) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 392359) 32 = 531441 * k + 198857 ∧ 531441 * k + 198857 < 1048576 * k + 392359) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 392383) 32 = 531441 * k + 198869 ∧ 531441 * k + 198869 < 1048576 * k + 392383) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 393543) 32 = 531441 * k + 199457 ∧ 531441 * k + 199457 < 1048576 * k + 393543) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 393727) 32 = 531441 * k + 199550 ∧ 531441 * k + 199550 < 1048576 * k + 393727) ∧
  R := by
  exact ⟨CollatzM20Shard049.descent_mod1048576_386367, ⟨CollatzM20Shard049.descent_mod1048576_386527, ⟨CollatzM20Shard049.descent_mod1048576_386799, ⟨CollatzM20Shard049.descent_mod1048576_386887, ⟨CollatzM20Shard049.descent_mod1048576_388263, ⟨CollatzM20Shard049.descent_mod1048576_388607, ⟨CollatzM20Shard049.descent_mod1048576_388955, ⟨CollatzM20Shard049.descent_mod1048576_389287, ⟨CollatzM20Shard049.descent_mod1048576_389599, ⟨CollatzM20Shard049.descent_mod1048576_389631, ⟨CollatzM20Shard049.descent_mod1048576_389723, ⟨CollatzM20Shard049.descent_mod1048576_390447, ⟨CollatzM20Shard049.descent_mod1048576_391495, ⟨CollatzM20Shard049.descent_mod1048576_391647, ⟨CollatzM20Shard049.descent_mod1048576_391807, ⟨CollatzM20Shard049.descent_mod1048576_392223, ⟨CollatzM20Shard049.descent_mod1048576_392359, ⟨CollatzM20Shard049.descent_mod1048576_392383, ⟨CollatzM20Shard049.descent_mod1048576_393543, ⟨CollatzM20Shard049.descent_mod1048576_393727, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
