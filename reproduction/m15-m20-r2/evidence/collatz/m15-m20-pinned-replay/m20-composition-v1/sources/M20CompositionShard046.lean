import M20Shard046

namespace CollatzM20CompositionV1

theorem chunk046 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 351935) 32 = 531441 * k + 178369 ∧ 531441 * k + 178369 < 1048576 * k + 351935) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 351995) 32 = 531441 * k + 178400 ∧ 531441 * k + 178400 < 1048576 * k + 351995) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 354559) 32 = 531441 * k + 179699 ∧ 531441 * k + 179699 < 1048576 * k + 354559) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 356263) 32 = 531441 * k + 180563 ∧ 531441 * k + 180563 < 1048576 * k + 356263) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 356423) 32 = 531441 * k + 180644 ∧ 531441 * k + 180644 < 1048576 * k + 356423) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 356575) 32 = 531441 * k + 180721 ∧ 531441 * k + 180721 < 1048576 * k + 356575) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 357151) 32 = 531441 * k + 181013 ∧ 531441 * k + 181013 < 1048576 * k + 357151) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 357599) 32 = 531441 * k + 181240 ∧ 531441 * k + 181240 < 1048576 * k + 357599) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 357631) 32 = 531441 * k + 181256 ∧ 531441 * k + 181256 < 1048576 * k + 357631) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 357919) 32 = 531441 * k + 181402 ∧ 531441 * k + 181402 < 1048576 * k + 357919) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 358079) 32 = 531441 * k + 181483 ∧ 531441 * k + 181483 < 1048576 * k + 358079) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 358511) 32 = 531441 * k + 181702 ∧ 531441 * k + 181702 < 1048576 * k + 358511) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 359079) 32 = 531441 * k + 181990 ∧ 531441 * k + 181990 < 1048576 * k + 359079) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 360091) 32 = 531441 * k + 182503 ∧ 531441 * k + 182503 < 1048576 * k + 360091) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 360187) 32 = 531441 * k + 182552 ∧ 531441 * k + 182552 < 1048576 * k + 360187) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 360519) 32 = 531441 * k + 182720 ∧ 531441 * k + 182720 < 1048576 * k + 360519) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 363367) 32 = 531441 * k + 184163 ∧ 531441 * k + 184163 < 1048576 * k + 363367) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 363391) 32 = 531441 * k + 184175 ∧ 531441 * k + 184175 < 1048576 * k + 363391) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 363935) 32 = 531441 * k + 184451 ∧ 531441 * k + 184451 < 1048576 * k + 363935) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 364703) 32 = 531441 * k + 184840 ∧ 531441 * k + 184840 < 1048576 * k + 364703) ∧
  R := by
  exact ⟨CollatzM20Shard046.descent_mod1048576_351935, ⟨CollatzM20Shard046.descent_mod1048576_351995, ⟨CollatzM20Shard046.descent_mod1048576_354559, ⟨CollatzM20Shard046.descent_mod1048576_356263, ⟨CollatzM20Shard046.descent_mod1048576_356423, ⟨CollatzM20Shard046.descent_mod1048576_356575, ⟨CollatzM20Shard046.descent_mod1048576_357151, ⟨CollatzM20Shard046.descent_mod1048576_357599, ⟨CollatzM20Shard046.descent_mod1048576_357631, ⟨CollatzM20Shard046.descent_mod1048576_357919, ⟨CollatzM20Shard046.descent_mod1048576_358079, ⟨CollatzM20Shard046.descent_mod1048576_358511, ⟨CollatzM20Shard046.descent_mod1048576_359079, ⟨CollatzM20Shard046.descent_mod1048576_360091, ⟨CollatzM20Shard046.descent_mod1048576_360187, ⟨CollatzM20Shard046.descent_mod1048576_360519, ⟨CollatzM20Shard046.descent_mod1048576_363367, ⟨CollatzM20Shard046.descent_mod1048576_363391, ⟨CollatzM20Shard046.descent_mod1048576_363935, ⟨CollatzM20Shard046.descent_mod1048576_364703, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
