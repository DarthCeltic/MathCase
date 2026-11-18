import M20Shard032

namespace CollatzM20CompositionV1

theorem chunk032 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 231167) 32 = 531441 * k + 117161 ∧ 531441 * k + 117161 < 1048576 * k + 231167) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 231295) 32 = 531441 * k + 117226 ∧ 531441 * k + 117226 < 1048576 * k + 231295) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 231835) 32 = 531441 * k + 117500 ∧ 531441 * k + 117500 < 1048576 * k + 231835) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 231871) 32 = 531441 * k + 117518 ∧ 531441 * k + 117518 < 1048576 * k + 231871) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 232699) 32 = 531441 * k + 117938 ∧ 531441 * k + 117938 < 1048576 * k + 232699) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 233167) 32 = 531441 * k + 118175 ∧ 531441 * k + 118175 < 1048576 * k + 233167) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 234011) 32 = 531441 * k + 118603 ∧ 531441 * k + 118603 < 1048576 * k + 234011) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 234367) 32 = 531441 * k + 118783 ∧ 531441 * k + 118783 < 1048576 * k + 234367) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 234463) 32 = 531441 * k + 118832 ∧ 531441 * k + 118832 < 1048576 * k + 234463) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 235375) 32 = 531441 * k + 119294 ∧ 531441 * k + 119294 < 1048576 * k + 235375) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 235391) 32 = 531441 * k + 119302 ∧ 531441 * k + 119302 < 1048576 * k + 235391) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 235487) 32 = 531441 * k + 119351 ∧ 531441 * k + 119351 < 1048576 * k + 235487) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 236079) 32 = 531441 * k + 119651 ∧ 531441 * k + 119651 < 1048576 * k + 236079) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 236239) 32 = 531441 * k + 119732 ∧ 531441 * k + 119732 < 1048576 * k + 236239) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 236391) 32 = 531441 * k + 119809 ∧ 531441 * k + 119809 < 1048576 * k + 236391) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 237979) 32 = 531441 * k + 120614 ∧ 531441 * k + 120614 < 1048576 * k + 237979) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 238335) 32 = 531441 * k + 120794 ∧ 531441 * k + 120794 < 1048576 * k + 238335) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 238575) 32 = 531441 * k + 120916 ∧ 531441 * k + 120916 < 1048576 * k + 238575) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 238623) 32 = 531441 * k + 120940 ∧ 531441 * k + 120940 < 1048576 * k + 238623) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 238843) 32 = 531441 * k + 121052 ∧ 531441 * k + 121052 < 1048576 * k + 238843) ∧
  R := by
  exact ⟨CollatzM20Shard032.descent_mod1048576_231167, ⟨CollatzM20Shard032.descent_mod1048576_231295, ⟨CollatzM20Shard032.descent_mod1048576_231835, ⟨CollatzM20Shard032.descent_mod1048576_231871, ⟨CollatzM20Shard032.descent_mod1048576_232699, ⟨CollatzM20Shard032.descent_mod1048576_233167, ⟨CollatzM20Shard032.descent_mod1048576_234011, ⟨CollatzM20Shard032.descent_mod1048576_234367, ⟨CollatzM20Shard032.descent_mod1048576_234463, ⟨CollatzM20Shard032.descent_mod1048576_235375, ⟨CollatzM20Shard032.descent_mod1048576_235391, ⟨CollatzM20Shard032.descent_mod1048576_235487, ⟨CollatzM20Shard032.descent_mod1048576_236079, ⟨CollatzM20Shard032.descent_mod1048576_236239, ⟨CollatzM20Shard032.descent_mod1048576_236391, ⟨CollatzM20Shard032.descent_mod1048576_237979, ⟨CollatzM20Shard032.descent_mod1048576_238335, ⟨CollatzM20Shard032.descent_mod1048576_238575, ⟨CollatzM20Shard032.descent_mod1048576_238623, ⟨CollatzM20Shard032.descent_mod1048576_238843, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
