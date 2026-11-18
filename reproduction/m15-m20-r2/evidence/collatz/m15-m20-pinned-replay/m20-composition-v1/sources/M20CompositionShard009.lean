import M20Shard009

namespace CollatzM20CompositionV1

theorem chunk009 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 53019) 32 = 531441 * k + 26872 ∧ 531441 * k + 26872 < 1048576 * k + 53019) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 53575) 32 = 531441 * k + 27154 ∧ 531441 * k + 27154 < 1048576 * k + 53575) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 53735) 32 = 531441 * k + 27235 ∧ 531441 * k + 27235 < 1048576 * k + 53735) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 54463) 32 = 531441 * k + 27604 ∧ 531441 * k + 27604 < 1048576 * k + 54463) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 54631) 32 = 531441 * k + 27689 ∧ 531441 * k + 27689 < 1048576 * k + 54631) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 54783) 32 = 531441 * k + 27766 ∧ 531441 * k + 27766 < 1048576 * k + 54783) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 55323) 32 = 531441 * k + 28040 ∧ 531441 * k + 28040 < 1048576 * k + 55323) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 55359) 32 = 531441 * k + 28058 ∧ 531441 * k + 28058 < 1048576 * k + 55359) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 56559) 32 = 531441 * k + 28666 ∧ 531441 * k + 28666 < 1048576 * k + 56559) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 56815) 32 = 531441 * k + 28796 ∧ 531441 * k + 28796 < 1048576 * k + 56815) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 57339) 32 = 531441 * k + 29062 ∧ 531441 * k + 29062 < 1048576 * k + 57339) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 57499) 32 = 531441 * k + 29143 ∧ 531441 * k + 29143 < 1048576 * k + 57499) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 57703) 32 = 531441 * k + 29246 ∧ 531441 * k + 29246 < 1048576 * k + 57703) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 57831) 32 = 531441 * k + 29311 ∧ 531441 * k + 29311 < 1048576 * k + 57831) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 58139) 32 = 531441 * k + 29467 ∧ 531441 * k + 29467 < 1048576 * k + 58139) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 58727) 32 = 531441 * k + 29765 ∧ 531441 * k + 29765 < 1048576 * k + 58727) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 58751) 32 = 531441 * k + 29777 ∧ 531441 * k + 29777 < 1048576 * k + 58751) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 58831) 32 = 531441 * k + 29818 ∧ 531441 * k + 29818 < 1048576 * k + 58831) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 59455) 32 = 531441 * k + 30134 ∧ 531441 * k + 30134 < 1048576 * k + 59455) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 59855) 32 = 531441 * k + 30337 ∧ 531441 * k + 30337 < 1048576 * k + 59855) ∧
  R := by
  exact ⟨CollatzM20Shard009.descent_mod1048576_53019, ⟨CollatzM20Shard009.descent_mod1048576_53575, ⟨CollatzM20Shard009.descent_mod1048576_53735, ⟨CollatzM20Shard009.descent_mod1048576_54463, ⟨CollatzM20Shard009.descent_mod1048576_54631, ⟨CollatzM20Shard009.descent_mod1048576_54783, ⟨CollatzM20Shard009.descent_mod1048576_55323, ⟨CollatzM20Shard009.descent_mod1048576_55359, ⟨CollatzM20Shard009.descent_mod1048576_56559, ⟨CollatzM20Shard009.descent_mod1048576_56815, ⟨CollatzM20Shard009.descent_mod1048576_57339, ⟨CollatzM20Shard009.descent_mod1048576_57499, ⟨CollatzM20Shard009.descent_mod1048576_57703, ⟨CollatzM20Shard009.descent_mod1048576_57831, ⟨CollatzM20Shard009.descent_mod1048576_58139, ⟨CollatzM20Shard009.descent_mod1048576_58727, ⟨CollatzM20Shard009.descent_mod1048576_58751, ⟨CollatzM20Shard009.descent_mod1048576_58831, ⟨CollatzM20Shard009.descent_mod1048576_59455, ⟨CollatzM20Shard009.descent_mod1048576_59855, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
