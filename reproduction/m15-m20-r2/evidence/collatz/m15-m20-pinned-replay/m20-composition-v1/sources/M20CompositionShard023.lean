import M20Shard023

namespace CollatzM20CompositionV1

theorem chunk023 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 167663) 32 = 531441 * k + 84976 ∧ 531441 * k + 84976 < 1048576 * k + 167663) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 167771) 32 = 531441 * k + 85031 ∧ 531441 * k + 85031 < 1048576 * k + 167771) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 168219) 32 = 531441 * k + 85258 ∧ 531441 * k + 85258 < 1048576 * k + 168219) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 168475) 32 = 531441 * k + 85388 ∧ 531441 * k + 85388 < 1048576 * k + 168475) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 168831) 32 = 531441 * k + 85568 ∧ 531441 * k + 85568 < 1048576 * k + 168831) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 168991) 32 = 531441 * k + 85649 ∧ 531441 * k + 85649 < 1048576 * k + 168991) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 169599) 32 = 531441 * k + 85957 ∧ 531441 * k + 85957 < 1048576 * k + 169599) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 169855) 32 = 531441 * k + 86087 ∧ 531441 * k + 86087 < 1048576 * k + 169855) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 170855) 32 = 531441 * k + 86594 ∧ 531441 * k + 86594 < 1048576 * k + 170855) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 171291) 32 = 531441 * k + 86815 ∧ 531441 * k + 86815 < 1048576 * k + 171291) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 171647) 32 = 531441 * k + 86995 ∧ 531441 * k + 86995 < 1048576 * k + 171647) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 171867) 32 = 531441 * k + 87107 ∧ 531441 * k + 87107 < 1048576 * k + 171867) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 172063) 32 = 531441 * k + 87206 ∧ 531441 * k + 87206 < 1048576 * k + 172063) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 172671) 32 = 531441 * k + 87514 ∧ 531441 * k + 87514 < 1048576 * k + 172671) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 173039) 32 = 531441 * k + 87701 ∧ 531441 * k + 87701 < 1048576 * k + 173039) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 173087) 32 = 531441 * k + 87725 ∧ 531441 * k + 87725 < 1048576 * k + 173087) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 173807) 32 = 531441 * k + 88090 ∧ 531441 * k + 88090 < 1048576 * k + 173807) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 174247) 32 = 531441 * k + 88313 ∧ 531441 * k + 88313 < 1048576 * k + 174247) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 174399) 32 = 531441 * k + 88390 ∧ 531441 * k + 88390 < 1048576 * k + 174399) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 174719) 32 = 531441 * k + 88552 ∧ 531441 * k + 88552 < 1048576 * k + 174719) ∧
  R := by
  exact ⟨CollatzM20Shard023.descent_mod1048576_167663, ⟨CollatzM20Shard023.descent_mod1048576_167771, ⟨CollatzM20Shard023.descent_mod1048576_168219, ⟨CollatzM20Shard023.descent_mod1048576_168475, ⟨CollatzM20Shard023.descent_mod1048576_168831, ⟨CollatzM20Shard023.descent_mod1048576_168991, ⟨CollatzM20Shard023.descent_mod1048576_169599, ⟨CollatzM20Shard023.descent_mod1048576_169855, ⟨CollatzM20Shard023.descent_mod1048576_170855, ⟨CollatzM20Shard023.descent_mod1048576_171291, ⟨CollatzM20Shard023.descent_mod1048576_171647, ⟨CollatzM20Shard023.descent_mod1048576_171867, ⟨CollatzM20Shard023.descent_mod1048576_172063, ⟨CollatzM20Shard023.descent_mod1048576_172671, ⟨CollatzM20Shard023.descent_mod1048576_173039, ⟨CollatzM20Shard023.descent_mod1048576_173087, ⟨CollatzM20Shard023.descent_mod1048576_173807, ⟨CollatzM20Shard023.descent_mod1048576_174247, ⟨CollatzM20Shard023.descent_mod1048576_174399, ⟨CollatzM20Shard023.descent_mod1048576_174719, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
