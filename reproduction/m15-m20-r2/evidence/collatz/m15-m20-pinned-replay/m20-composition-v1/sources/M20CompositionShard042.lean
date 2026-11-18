import M20Shard042

namespace CollatzM20CompositionV1

theorem chunk042 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 312135) 32 = 531441 * k + 158198 ∧ 531441 * k + 158198 < 1048576 * k + 312135) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 312347) 32 = 531441 * k + 158305 ∧ 531441 * k + 158305 < 1048576 * k + 312347) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 312571) 32 = 531441 * k + 158419 ∧ 531441 * k + 158419 < 1048576 * k + 312571) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 313063) 32 = 531441 * k + 158668 ∧ 531441 * k + 158668 < 1048576 * k + 313063) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 313159) 32 = 531441 * k + 158717 ∧ 531441 * k + 158717 < 1048576 * k + 313159) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 313823) 32 = 531441 * k + 159053 ∧ 531441 * k + 159053 < 1048576 * k + 313823) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 313983) 32 = 531441 * k + 159134 ∧ 531441 * k + 159134 < 1048576 * k + 313983) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 314063) 32 = 531441 * k + 159175 ∧ 531441 * k + 159175 < 1048576 * k + 314063) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 314395) 32 = 531441 * k + 159343 ∧ 531441 * k + 159343 < 1048576 * k + 314395) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 314687) 32 = 531441 * k + 159491 ∧ 531441 * k + 159491 < 1048576 * k + 314687) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 315119) 32 = 531441 * k + 159710 ∧ 531441 * k + 159710 < 1048576 * k + 315119) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 315247) 32 = 531441 * k + 159775 ∧ 531441 * k + 159775 < 1048576 * k + 315247) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 315871) 32 = 531441 * k + 160091 ∧ 531441 * k + 160091 < 1048576 * k + 315871) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 316443) 32 = 531441 * k + 160381 ∧ 531441 * k + 160381 < 1048576 * k + 316443) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 317055) 32 = 531441 * k + 160691 ∧ 531441 * k + 160691 < 1048576 * k + 317055) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 318875) 32 = 531441 * k + 161614 ∧ 531441 * k + 161614 < 1048576 * k + 318875) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 319515) 32 = 531441 * k + 161938 ∧ 531441 * k + 161938 < 1048576 * k + 319515) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 319967) 32 = 531441 * k + 162167 ∧ 531441 * k + 162167 < 1048576 * k + 319967) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 320831) 32 = 531441 * k + 162605 ∧ 531441 * k + 162605 < 1048576 * k + 320831) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 321255) 32 = 531441 * k + 162820 ∧ 531441 * k + 162820 < 1048576 * k + 321255) ∧
  R := by
  exact ⟨CollatzM20Shard042.descent_mod1048576_312135, ⟨CollatzM20Shard042.descent_mod1048576_312347, ⟨CollatzM20Shard042.descent_mod1048576_312571, ⟨CollatzM20Shard042.descent_mod1048576_313063, ⟨CollatzM20Shard042.descent_mod1048576_313159, ⟨CollatzM20Shard042.descent_mod1048576_313823, ⟨CollatzM20Shard042.descent_mod1048576_313983, ⟨CollatzM20Shard042.descent_mod1048576_314063, ⟨CollatzM20Shard042.descent_mod1048576_314395, ⟨CollatzM20Shard042.descent_mod1048576_314687, ⟨CollatzM20Shard042.descent_mod1048576_315119, ⟨CollatzM20Shard042.descent_mod1048576_315247, ⟨CollatzM20Shard042.descent_mod1048576_315871, ⟨CollatzM20Shard042.descent_mod1048576_316443, ⟨CollatzM20Shard042.descent_mod1048576_317055, ⟨CollatzM20Shard042.descent_mod1048576_318875, ⟨CollatzM20Shard042.descent_mod1048576_319515, ⟨CollatzM20Shard042.descent_mod1048576_319967, ⟨CollatzM20Shard042.descent_mod1048576_320831, ⟨CollatzM20Shard042.descent_mod1048576_321255, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
