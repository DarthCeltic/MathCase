import M20Shard112

namespace CollatzM20CompositionV1

theorem chunk112 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 875687) 32 = 531441 * k + 443818 ∧ 531441 * k + 443818 < 1048576 * k + 875687) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 875823) 32 = 531441 * k + 443887 ∧ 531441 * k + 443887 < 1048576 * k + 875823) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 876031) 32 = 531441 * k + 443992 ∧ 531441 * k + 443992 < 1048576 * k + 876031) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 876379) 32 = 531441 * k + 444169 ∧ 531441 * k + 444169 < 1048576 * k + 876379) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 876415) 32 = 531441 * k + 444187 ∧ 531441 * k + 444187 < 1048576 * k + 876415) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 876571) 32 = 531441 * k + 444266 ∧ 531441 * k + 444266 < 1048576 * k + 876571) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 876575) 32 = 531441 * k + 444268 ∧ 531441 * k + 444268 < 1048576 * k + 876575) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 876955) 32 = 531441 * k + 444461 ∧ 531441 * k + 444461 < 1048576 * k + 876955) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 878079) 32 = 531441 * k + 445030 ∧ 531441 * k + 445030 < 1048576 * k + 878079) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 878447) 32 = 531441 * k + 445217 ∧ 531441 * k + 445217 < 1048576 * k + 878447) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 878759) 32 = 531441 * k + 445375 ∧ 531441 * k + 445375 < 1048576 * k + 878759) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 879771) 32 = 531441 * k + 445888 ∧ 531441 * k + 445888 < 1048576 * k + 879771) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 879783) 32 = 531441 * k + 445894 ∧ 531441 * k + 445894 < 1048576 * k + 879783) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 880127) 32 = 531441 * k + 446068 ∧ 531441 * k + 446068 < 1048576 * k + 880127) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 880359) 32 = 531441 * k + 446186 ∧ 531441 * k + 446186 < 1048576 * k + 880359) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 880543) 32 = 531441 * k + 446279 ∧ 531441 * k + 446279 < 1048576 * k + 880543) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 880667) 32 = 531441 * k + 446342 ∧ 531441 * k + 446342 < 1048576 * k + 880667) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 881151) 32 = 531441 * k + 446587 ∧ 531441 * k + 446587 < 1048576 * k + 881151) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 881359) 32 = 531441 * k + 446693 ∧ 531441 * k + 446693 < 1048576 * k + 881359) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 881691) 32 = 531441 * k + 446861 ∧ 531441 * k + 446861 < 1048576 * k + 881691) ∧
  R := by
  exact ⟨CollatzM20Shard112.descent_mod1048576_875687, ⟨CollatzM20Shard112.descent_mod1048576_875823, ⟨CollatzM20Shard112.descent_mod1048576_876031, ⟨CollatzM20Shard112.descent_mod1048576_876379, ⟨CollatzM20Shard112.descent_mod1048576_876415, ⟨CollatzM20Shard112.descent_mod1048576_876571, ⟨CollatzM20Shard112.descent_mod1048576_876575, ⟨CollatzM20Shard112.descent_mod1048576_876955, ⟨CollatzM20Shard112.descent_mod1048576_878079, ⟨CollatzM20Shard112.descent_mod1048576_878447, ⟨CollatzM20Shard112.descent_mod1048576_878759, ⟨CollatzM20Shard112.descent_mod1048576_879771, ⟨CollatzM20Shard112.descent_mod1048576_879783, ⟨CollatzM20Shard112.descent_mod1048576_880127, ⟨CollatzM20Shard112.descent_mod1048576_880359, ⟨CollatzM20Shard112.descent_mod1048576_880543, ⟨CollatzM20Shard112.descent_mod1048576_880667, ⟨CollatzM20Shard112.descent_mod1048576_881151, ⟨CollatzM20Shard112.descent_mod1048576_881359, ⟨CollatzM20Shard112.descent_mod1048576_881691, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
