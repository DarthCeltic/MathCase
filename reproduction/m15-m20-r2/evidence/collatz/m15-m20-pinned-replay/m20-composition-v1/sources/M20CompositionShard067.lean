import M20Shard067

namespace CollatzM20CompositionV1

theorem chunk067 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 515231) 32 = 531441 * k + 261131 ∧ 531441 * k + 261131 < 1048576 * k + 515231) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 516379) 32 = 531441 * k + 261713 ∧ 531441 * k + 261713 < 1048576 * k + 516379) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 516839) 32 = 531441 * k + 261946 ∧ 531441 * k + 261946 < 1048576 * k + 516839) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 516847) 32 = 531441 * k + 261950 ∧ 531441 * k + 261950 < 1048576 * k + 516847) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 516935) 32 = 531441 * k + 261995 ∧ 531441 * k + 261995 < 1048576 * k + 516935) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 517371) 32 = 531441 * k + 262216 ∧ 531441 * k + 262216 < 1048576 * k + 517371) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 517759) 32 = 531441 * k + 262412 ∧ 531441 * k + 262412 < 1048576 * k + 517759) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 517887) 32 = 531441 * k + 262477 ∧ 531441 * k + 262477 < 1048576 * k + 517887) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 518463) 32 = 531441 * k + 262769 ∧ 531441 * k + 262769 < 1048576 * k + 518463) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 518863) 32 = 531441 * k + 262972 ∧ 531441 * k + 262972 < 1048576 * k + 518863) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 518911) 32 = 531441 * k + 262996 ∧ 531441 * k + 262996 < 1048576 * k + 518911) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 519847) 32 = 531441 * k + 263471 ∧ 531441 * k + 263471 < 1048576 * k + 519847) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 519919) 32 = 531441 * k + 263507 ∧ 531441 * k + 263507 < 1048576 * k + 519919) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 520831) 32 = 531441 * k + 263969 ∧ 531441 * k + 263969 < 1048576 * k + 520831) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 520935) 32 = 531441 * k + 264022 ∧ 531441 * k + 264022 < 1048576 * k + 520935) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 521855) 32 = 531441 * k + 264488 ∧ 531441 * k + 264488 < 1048576 * k + 521855) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 521935) 32 = 531441 * k + 264529 ∧ 531441 * k + 264529 < 1048576 * k + 521935) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 522095) 32 = 531441 * k + 264610 ∧ 531441 * k + 264610 < 1048576 * k + 522095) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 522523) 32 = 531441 * k + 264827 ∧ 531441 * k + 264827 < 1048576 * k + 522523) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 522559) 32 = 531441 * k + 264845 ∧ 531441 * k + 264845 < 1048576 * k + 522559) ∧
  R := by
  exact ⟨CollatzM20Shard067.descent_mod1048576_515231, ⟨CollatzM20Shard067.descent_mod1048576_516379, ⟨CollatzM20Shard067.descent_mod1048576_516839, ⟨CollatzM20Shard067.descent_mod1048576_516847, ⟨CollatzM20Shard067.descent_mod1048576_516935, ⟨CollatzM20Shard067.descent_mod1048576_517371, ⟨CollatzM20Shard067.descent_mod1048576_517759, ⟨CollatzM20Shard067.descent_mod1048576_517887, ⟨CollatzM20Shard067.descent_mod1048576_518463, ⟨CollatzM20Shard067.descent_mod1048576_518863, ⟨CollatzM20Shard067.descent_mod1048576_518911, ⟨CollatzM20Shard067.descent_mod1048576_519847, ⟨CollatzM20Shard067.descent_mod1048576_519919, ⟨CollatzM20Shard067.descent_mod1048576_520831, ⟨CollatzM20Shard067.descent_mod1048576_520935, ⟨CollatzM20Shard067.descent_mod1048576_521855, ⟨CollatzM20Shard067.descent_mod1048576_521935, ⟨CollatzM20Shard067.descent_mod1048576_522095, ⟨CollatzM20Shard067.descent_mod1048576_522523, ⟨CollatzM20Shard067.descent_mod1048576_522559, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
