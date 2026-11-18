import M20Shard129

namespace CollatzM20CompositionV1

theorem chunk129 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1014951) 32 = 531441 * k + 514400 ∧ 531441 * k + 514400 < 1048576 * k + 1014951) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1014975) 32 = 531441 * k + 514412 ∧ 531441 * k + 514412 < 1048576 * k + 1014975) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1015103) 32 = 531441 * k + 514477 ∧ 531441 * k + 514477 < 1048576 * k + 1015103) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1015295) 32 = 531441 * k + 514574 ∧ 531441 * k + 514574 < 1048576 * k + 1015295) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1015679) 32 = 531441 * k + 514769 ∧ 531441 * k + 514769 < 1048576 * k + 1015679) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1015839) 32 = 531441 * k + 514850 ∧ 531441 * k + 514850 < 1048576 * k + 1015839) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1015975) 32 = 531441 * k + 514919 ∧ 531441 * k + 514919 < 1048576 * k + 1015975) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1016319) 32 = 531441 * k + 515093 ∧ 531441 * k + 515093 < 1048576 * k + 1016319) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1017447) 32 = 531441 * k + 515665 ∧ 531441 * k + 515665 < 1048576 * k + 1017447) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1017851) 32 = 531441 * k + 515870 ∧ 531441 * k + 515870 < 1048576 * k + 1017851) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1018023) 32 = 531441 * k + 515957 ∧ 531441 * k + 515957 < 1048576 * k + 1018023) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1018175) 32 = 531441 * k + 516034 ∧ 531441 * k + 516034 < 1048576 * k + 1018175) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1018495) 32 = 531441 * k + 516196 ∧ 531441 * k + 516196 < 1048576 * k + 1018495) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1018911) 32 = 531441 * k + 516407 ∧ 531441 * k + 516407 < 1048576 * k + 1018911) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1019035) 32 = 531441 * k + 516470 ∧ 531441 * k + 516470 < 1048576 * k + 1019035) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1019071) 32 = 531441 * k + 516488 ∧ 531441 * k + 516488 < 1048576 * k + 1019071) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1019391) 32 = 531441 * k + 516650 ∧ 531441 * k + 516650 < 1048576 * k + 1019391) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1019935) 32 = 531441 * k + 516926 ∧ 531441 * k + 516926 < 1048576 * k + 1019935) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1021095) 32 = 531441 * k + 517514 ∧ 531441 * k + 517514 < 1048576 * k + 1021095) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1021543) 32 = 531441 * k + 517741 ∧ 531441 * k + 517741 < 1048576 * k + 1021543) ∧
  R := by
  exact ⟨CollatzM20Shard129.descent_mod1048576_1014951, ⟨CollatzM20Shard129.descent_mod1048576_1014975, ⟨CollatzM20Shard129.descent_mod1048576_1015103, ⟨CollatzM20Shard129.descent_mod1048576_1015295, ⟨CollatzM20Shard129.descent_mod1048576_1015679, ⟨CollatzM20Shard129.descent_mod1048576_1015839, ⟨CollatzM20Shard129.descent_mod1048576_1015975, ⟨CollatzM20Shard129.descent_mod1048576_1016319, ⟨CollatzM20Shard129.descent_mod1048576_1017447, ⟨CollatzM20Shard129.descent_mod1048576_1017851, ⟨CollatzM20Shard129.descent_mod1048576_1018023, ⟨CollatzM20Shard129.descent_mod1048576_1018175, ⟨CollatzM20Shard129.descent_mod1048576_1018495, ⟨CollatzM20Shard129.descent_mod1048576_1018911, ⟨CollatzM20Shard129.descent_mod1048576_1019035, ⟨CollatzM20Shard129.descent_mod1048576_1019071, ⟨CollatzM20Shard129.descent_mod1048576_1019391, ⟨CollatzM20Shard129.descent_mod1048576_1019935, ⟨CollatzM20Shard129.descent_mod1048576_1021095, ⟨CollatzM20Shard129.descent_mod1048576_1021543, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
