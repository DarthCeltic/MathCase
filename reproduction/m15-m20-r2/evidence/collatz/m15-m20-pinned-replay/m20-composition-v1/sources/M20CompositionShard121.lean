import M20Shard121

namespace CollatzM20CompositionV1

theorem chunk121 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 944879) 32 = 531441 * k + 478886 ∧ 531441 * k + 478886 < 1048576 * k + 944879) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 944967) 32 = 531441 * k + 478931 ∧ 531441 * k + 478931 < 1048576 * k + 944967) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 945895) 32 = 531441 * k + 479401 ∧ 531441 * k + 479401 < 1048576 * k + 945895) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 946459) 32 = 531441 * k + 479687 ∧ 531441 * k + 479687 < 1048576 * k + 946459) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 946655) 32 = 531441 * k + 479786 ∧ 531441 * k + 479786 < 1048576 * k + 946655) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 946671) 32 = 531441 * k + 479794 ∧ 531441 * k + 479794 < 1048576 * k + 946671) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 946815) 32 = 531441 * k + 479867 ∧ 531441 * k + 479867 < 1048576 * k + 946815) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 946895) 32 = 531441 * k + 479908 ∧ 531441 * k + 479908 < 1048576 * k + 946895) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 947227) 32 = 531441 * k + 480076 ∧ 531441 * k + 480076 < 1048576 * k + 947227) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 947839) 32 = 531441 * k + 480386 ∧ 531441 * k + 480386 < 1048576 * k + 947839) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 948719) 32 = 531441 * k + 480832 ∧ 531441 * k + 480832 < 1048576 * k + 948719) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 949567) 32 = 531441 * k + 481262 ∧ 531441 * k + 481262 < 1048576 * k + 949567) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 950299) 32 = 531441 * k + 481633 ∧ 531441 * k + 481633 < 1048576 * k + 950299) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 950767) 32 = 531441 * k + 481870 ∧ 531441 * k + 481870 < 1048576 * k + 950767) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 951911) 32 = 531441 * k + 482450 ∧ 531441 * k + 482450 < 1048576 * k + 951911) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 952639) 32 = 531441 * k + 482819 ∧ 531441 * k + 482819 < 1048576 * k + 952639) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 952959) 32 = 531441 * k + 482981 ∧ 531441 * k + 482981 < 1048576 * k + 952959) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 953199) 32 = 531441 * k + 483103 ∧ 531441 * k + 483103 < 1048576 * k + 953199) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 953703) 32 = 531441 * k + 483358 ∧ 531441 * k + 483358 < 1048576 * k + 953703) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 953839) 32 = 531441 * k + 483427 ∧ 531441 * k + 483427 < 1048576 * k + 953839) ∧
  R := by
  exact ⟨CollatzM20Shard121.descent_mod1048576_944879, ⟨CollatzM20Shard121.descent_mod1048576_944967, ⟨CollatzM20Shard121.descent_mod1048576_945895, ⟨CollatzM20Shard121.descent_mod1048576_946459, ⟨CollatzM20Shard121.descent_mod1048576_946655, ⟨CollatzM20Shard121.descent_mod1048576_946671, ⟨CollatzM20Shard121.descent_mod1048576_946815, ⟨CollatzM20Shard121.descent_mod1048576_946895, ⟨CollatzM20Shard121.descent_mod1048576_947227, ⟨CollatzM20Shard121.descent_mod1048576_947839, ⟨CollatzM20Shard121.descent_mod1048576_948719, ⟨CollatzM20Shard121.descent_mod1048576_949567, ⟨CollatzM20Shard121.descent_mod1048576_950299, ⟨CollatzM20Shard121.descent_mod1048576_950767, ⟨CollatzM20Shard121.descent_mod1048576_951911, ⟨CollatzM20Shard121.descent_mod1048576_952639, ⟨CollatzM20Shard121.descent_mod1048576_952959, ⟨CollatzM20Shard121.descent_mod1048576_953199, ⟨CollatzM20Shard121.descent_mod1048576_953703, ⟨CollatzM20Shard121.descent_mod1048576_953839, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
