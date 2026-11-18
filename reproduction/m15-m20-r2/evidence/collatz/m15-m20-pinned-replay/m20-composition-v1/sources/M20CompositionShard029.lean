import M20Shard029

namespace CollatzM20CompositionV1

theorem chunk029 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 208199) 32 = 531441 * k + 105521 ∧ 531441 * k + 105521 < 1048576 * k + 208199) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 208807) 32 = 531441 * k + 105829 ∧ 531441 * k + 105829 < 1048576 * k + 208807) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 208967) 32 = 531441 * k + 105910 ∧ 531441 * k + 105910 < 1048576 * k + 208967) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 209691) 32 = 531441 * k + 106277 ∧ 531441 * k + 106277 < 1048576 * k + 209691) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 209967) 32 = 531441 * k + 106417 ∧ 531441 * k + 106417 < 1048576 * k + 209967) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 210047) 32 = 531441 * k + 106457 ∧ 531441 * k + 106457 < 1048576 * k + 210047) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 210335) 32 = 531441 * k + 106603 ∧ 531441 * k + 106603 < 1048576 * k + 210335) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 212071) 32 = 531441 * k + 107483 ∧ 531441 * k + 107483 < 1048576 * k + 212071) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 212383) 32 = 531441 * k + 107641 ∧ 531441 * k + 107641 < 1048576 * k + 212383) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 213083) 32 = 531441 * k + 107996 ∧ 531441 * k + 107996 < 1048576 * k + 213083) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 214247) 32 = 531441 * k + 108586 ∧ 531441 * k + 108586 < 1048576 * k + 214247) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 214503) 32 = 531441 * k + 108716 ∧ 531441 * k + 108716 < 1048576 * k + 214503) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 214575) 32 = 531441 * k + 108752 ∧ 531441 * k + 108752 < 1048576 * k + 214575) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 215143) 32 = 531441 * k + 109040 ∧ 531441 * k + 109040 < 1048576 * k + 215143) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 215295) 32 = 531441 * k + 109117 ∧ 531441 * k + 109117 < 1048576 * k + 215295) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 215711) 32 = 531441 * k + 109328 ∧ 531441 * k + 109328 < 1048576 * k + 215711) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 215871) 32 = 531441 * k + 109409 ∧ 531441 * k + 109409 < 1048576 * k + 215871) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 216271) 32 = 531441 * k + 109612 ∧ 531441 * k + 109612 < 1048576 * k + 216271) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 216479) 32 = 531441 * k + 109717 ∧ 531441 * k + 109717 < 1048576 * k + 216479) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 216623) 32 = 531441 * k + 109790 ∧ 531441 * k + 109790 < 1048576 * k + 216623) ∧
  R := by
  exact ⟨CollatzM20Shard029.descent_mod1048576_208199, ⟨CollatzM20Shard029.descent_mod1048576_208807, ⟨CollatzM20Shard029.descent_mod1048576_208967, ⟨CollatzM20Shard029.descent_mod1048576_209691, ⟨CollatzM20Shard029.descent_mod1048576_209967, ⟨CollatzM20Shard029.descent_mod1048576_210047, ⟨CollatzM20Shard029.descent_mod1048576_210335, ⟨CollatzM20Shard029.descent_mod1048576_212071, ⟨CollatzM20Shard029.descent_mod1048576_212383, ⟨CollatzM20Shard029.descent_mod1048576_213083, ⟨CollatzM20Shard029.descent_mod1048576_214247, ⟨CollatzM20Shard029.descent_mod1048576_214503, ⟨CollatzM20Shard029.descent_mod1048576_214575, ⟨CollatzM20Shard029.descent_mod1048576_215143, ⟨CollatzM20Shard029.descent_mod1048576_215295, ⟨CollatzM20Shard029.descent_mod1048576_215711, ⟨CollatzM20Shard029.descent_mod1048576_215871, ⟨CollatzM20Shard029.descent_mod1048576_216271, ⟨CollatzM20Shard029.descent_mod1048576_216479, ⟨CollatzM20Shard029.descent_mod1048576_216623, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
