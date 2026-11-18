import M20Shard018

namespace CollatzM20CompositionV1

theorem chunk018 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 125531) 32 = 531441 * k + 63623 ∧ 531441 * k + 63623 < 1048576 * k + 125531) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 125887) 32 = 531441 * k + 63803 ∧ 531441 * k + 63803 < 1048576 * k + 125887) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 127023) 32 = 531441 * k + 64379 ∧ 531441 * k + 64379 < 1048576 * k + 127023) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 127935) 32 = 531441 * k + 64841 ∧ 531441 * k + 64841 < 1048576 * k + 127935) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 128935) 32 = 531441 * k + 65348 ∧ 531441 * k + 65348 < 1048576 * k + 128935) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 129231) 32 = 531441 * k + 65498 ∧ 531441 * k + 65498 < 1048576 * k + 129231) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 129383) 32 = 531441 * k + 65575 ∧ 531441 * k + 65575 < 1048576 * k + 129383) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 129639) 32 = 531441 * k + 65705 ∧ 531441 * k + 65705 < 1048576 * k + 129639) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 130527) 32 = 531441 * k + 66155 ∧ 531441 * k + 66155 < 1048576 * k + 130527) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 131007) 32 = 531441 * k + 66398 ∧ 531441 * k + 66398 < 1048576 * k + 131007) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 131135) 32 = 531441 * k + 66463 ∧ 531441 * k + 66463 < 1048576 * k + 131135) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 131295) 32 = 531441 * k + 66544 ∧ 531441 * k + 66544 < 1048576 * k + 131295) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 131739) 32 = 531441 * k + 66769 ∧ 531441 * k + 66769 < 1048576 * k + 131739) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 132455) 32 = 531441 * k + 67132 ∧ 531441 * k + 67132 < 1048576 * k + 132455) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 133031) 32 = 531441 * k + 67424 ∧ 531441 * k + 67424 < 1048576 * k + 133031) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 133723) 32 = 531441 * k + 67775 ∧ 531441 * k + 67775 < 1048576 * k + 133723) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 133883) 32 = 531441 * k + 67856 ∧ 531441 * k + 67856 < 1048576 * k + 133883) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 134399) 32 = 531441 * k + 68117 ∧ 531441 * k + 68117 < 1048576 * k + 134399) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 134811) 32 = 531441 * k + 68326 ∧ 531441 * k + 68326 < 1048576 * k + 134811) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 135215) 32 = 531441 * k + 68531 ∧ 531441 * k + 68531 < 1048576 * k + 135215) ∧
  R := by
  exact ⟨CollatzM20Shard018.descent_mod1048576_125531, ⟨CollatzM20Shard018.descent_mod1048576_125887, ⟨CollatzM20Shard018.descent_mod1048576_127023, ⟨CollatzM20Shard018.descent_mod1048576_127935, ⟨CollatzM20Shard018.descent_mod1048576_128935, ⟨CollatzM20Shard018.descent_mod1048576_129231, ⟨CollatzM20Shard018.descent_mod1048576_129383, ⟨CollatzM20Shard018.descent_mod1048576_129639, ⟨CollatzM20Shard018.descent_mod1048576_130527, ⟨CollatzM20Shard018.descent_mod1048576_131007, ⟨CollatzM20Shard018.descent_mod1048576_131135, ⟨CollatzM20Shard018.descent_mod1048576_131295, ⟨CollatzM20Shard018.descent_mod1048576_131739, ⟨CollatzM20Shard018.descent_mod1048576_132455, ⟨CollatzM20Shard018.descent_mod1048576_133031, ⟨CollatzM20Shard018.descent_mod1048576_133723, ⟨CollatzM20Shard018.descent_mod1048576_133883, ⟨CollatzM20Shard018.descent_mod1048576_134399, ⟨CollatzM20Shard018.descent_mod1048576_134811, ⟨CollatzM20Shard018.descent_mod1048576_135215, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
