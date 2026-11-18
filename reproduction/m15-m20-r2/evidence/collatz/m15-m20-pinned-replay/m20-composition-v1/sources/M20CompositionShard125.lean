import M20Shard125

namespace CollatzM20CompositionV1

theorem chunk125 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 981695) 32 = 531441 * k + 497545 ∧ 531441 * k + 497545 < 1048576 * k + 981695) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 982127) 32 = 531441 * k + 497764 ∧ 531441 * k + 497764 < 1048576 * k + 982127) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 983111) 32 = 531441 * k + 498263 ∧ 531441 * k + 498263 < 1048576 * k + 983111) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 983803) 32 = 531441 * k + 498614 ∧ 531441 * k + 498614 < 1048576 * k + 983803) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 984063) 32 = 531441 * k + 498745 ∧ 531441 * k + 498745 < 1048576 * k + 984063) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 984295) 32 = 531441 * k + 498863 ∧ 531441 * k + 498863 < 1048576 * k + 984295) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 984479) 32 = 531441 * k + 498956 ∧ 531441 * k + 498956 < 1048576 * k + 984479) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 984731) 32 = 531441 * k + 499084 ∧ 531441 * k + 499084 < 1048576 * k + 984731) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 985199) 32 = 531441 * k + 499321 ∧ 531441 * k + 499321 < 1048576 * k + 985199) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 985295) 32 = 531441 * k + 499370 ∧ 531441 * k + 499370 < 1048576 * k + 985295) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 986223) 32 = 531441 * k + 499840 ∧ 531441 * k + 499840 < 1048576 * k + 986223) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 986319) 32 = 531441 * k + 499889 ∧ 531441 * k + 499889 < 1048576 * k + 986319) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 986655) 32 = 531441 * k + 500059 ∧ 531441 * k + 500059 < 1048576 * k + 986655) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 986815) 32 = 531441 * k + 500140 ∧ 531441 * k + 500140 < 1048576 * k + 986815) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 986911) 32 = 531441 * k + 500189 ∧ 531441 * k + 500189 < 1048576 * k + 986911) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 987207) 32 = 531441 * k + 500339 ∧ 531441 * k + 500339 < 1048576 * k + 987207) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 987391) 32 = 531441 * k + 500432 ∧ 531441 * k + 500432 < 1048576 * k + 987391) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 987551) 32 = 531441 * k + 500513 ∧ 531441 * k + 500513 < 1048576 * k + 987551) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 989031) 32 = 531441 * k + 501263 ∧ 531441 * k + 501263 < 1048576 * k + 989031) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 989343) 32 = 531441 * k + 501421 ∧ 531441 * k + 501421 < 1048576 * k + 989343) ∧
  R := by
  exact ⟨CollatzM20Shard125.descent_mod1048576_981695, ⟨CollatzM20Shard125.descent_mod1048576_982127, ⟨CollatzM20Shard125.descent_mod1048576_983111, ⟨CollatzM20Shard125.descent_mod1048576_983803, ⟨CollatzM20Shard125.descent_mod1048576_984063, ⟨CollatzM20Shard125.descent_mod1048576_984295, ⟨CollatzM20Shard125.descent_mod1048576_984479, ⟨CollatzM20Shard125.descent_mod1048576_984731, ⟨CollatzM20Shard125.descent_mod1048576_985199, ⟨CollatzM20Shard125.descent_mod1048576_985295, ⟨CollatzM20Shard125.descent_mod1048576_986223, ⟨CollatzM20Shard125.descent_mod1048576_986319, ⟨CollatzM20Shard125.descent_mod1048576_986655, ⟨CollatzM20Shard125.descent_mod1048576_986815, ⟨CollatzM20Shard125.descent_mod1048576_986911, ⟨CollatzM20Shard125.descent_mod1048576_987207, ⟨CollatzM20Shard125.descent_mod1048576_987391, ⟨CollatzM20Shard125.descent_mod1048576_987551, ⟨CollatzM20Shard125.descent_mod1048576_989031, ⟨CollatzM20Shard125.descent_mod1048576_989343, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
