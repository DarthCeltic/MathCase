import M20Shard131

namespace CollatzM20CompositionV1

theorem chunk131 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1029583) 32 = 531441 * k + 521816 ∧ 531441 * k + 521816 < 1048576 * k + 1029583) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1029631) 32 = 531441 * k + 521840 ∧ 531441 * k + 521840 < 1048576 * k + 1029631) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1029735) 32 = 531441 * k + 521893 ∧ 531441 * k + 521893 < 1048576 * k + 1029735) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1030311) 32 = 531441 * k + 522185 ∧ 531441 * k + 522185 < 1048576 * k + 1030311) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1030759) 32 = 531441 * k + 522412 ∧ 531441 * k + 522412 < 1048576 * k + 1030759) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1031163) 32 = 531441 * k + 522617 ∧ 531441 * k + 522617 < 1048576 * k + 1031163) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1031323) 32 = 531441 * k + 522698 ∧ 531441 * k + 522698 < 1048576 * k + 1031323) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1031839) 32 = 531441 * k + 522959 ∧ 531441 * k + 522959 < 1048576 * k + 1031839) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1032127) 32 = 531441 * k + 523105 ∧ 531441 * k + 523105 < 1048576 * k + 1032127) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1032187) 32 = 531441 * k + 523136 ∧ 531441 * k + 523136 < 1048576 * k + 1032187) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1032239) 32 = 531441 * k + 523162 ∧ 531441 * k + 523162 < 1048576 * k + 1032239) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1032347) 32 = 531441 * k + 523217 ∧ 531441 * k + 523217 < 1048576 * k + 1032347) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1033679) 32 = 531441 * k + 523892 ∧ 531441 * k + 523892 < 1048576 * k + 1033679) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1035003) 32 = 531441 * k + 524563 ∧ 531441 * k + 524563 < 1048576 * k + 1035003) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1035035) 32 = 531441 * k + 524579 ∧ 531441 * k + 524579 < 1048576 * k + 1035035) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1035519) 32 = 531441 * k + 524824 ∧ 531441 * k + 524824 < 1048576 * k + 1035519) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1036059) 32 = 531441 * k + 525098 ∧ 531441 * k + 525098 < 1048576 * k + 1036059) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1036527) 32 = 531441 * k + 525335 ∧ 531441 * k + 525335 < 1048576 * k + 1036527) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1036615) 32 = 531441 * k + 525380 ∧ 531441 * k + 525380 < 1048576 * k + 1036615) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1036775) 32 = 531441 * k + 525461 ∧ 531441 * k + 525461 < 1048576 * k + 1036775) ∧
  R := by
  exact ⟨CollatzM20Shard131.descent_mod1048576_1029583, ⟨CollatzM20Shard131.descent_mod1048576_1029631, ⟨CollatzM20Shard131.descent_mod1048576_1029735, ⟨CollatzM20Shard131.descent_mod1048576_1030311, ⟨CollatzM20Shard131.descent_mod1048576_1030759, ⟨CollatzM20Shard131.descent_mod1048576_1031163, ⟨CollatzM20Shard131.descent_mod1048576_1031323, ⟨CollatzM20Shard131.descent_mod1048576_1031839, ⟨CollatzM20Shard131.descent_mod1048576_1032127, ⟨CollatzM20Shard131.descent_mod1048576_1032187, ⟨CollatzM20Shard131.descent_mod1048576_1032239, ⟨CollatzM20Shard131.descent_mod1048576_1032347, ⟨CollatzM20Shard131.descent_mod1048576_1033679, ⟨CollatzM20Shard131.descent_mod1048576_1035003, ⟨CollatzM20Shard131.descent_mod1048576_1035035, ⟨CollatzM20Shard131.descent_mod1048576_1035519, ⟨CollatzM20Shard131.descent_mod1048576_1036059, ⟨CollatzM20Shard131.descent_mod1048576_1036527, ⟨CollatzM20Shard131.descent_mod1048576_1036615, ⟨CollatzM20Shard131.descent_mod1048576_1036775, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
