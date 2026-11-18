import M20Shard013

namespace CollatzM20CompositionV1

theorem chunk013 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 82911) 32 = 531441 * k + 42022 ∧ 531441 * k + 42022 < 1048576 * k + 82911) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 83035) 32 = 531441 * k + 42085 ∧ 531441 * k + 42085 < 1048576 * k + 83035) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 83071) 32 = 531441 * k + 42103 ∧ 531441 * k + 42103 < 1048576 * k + 83071) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 83227) 32 = 531441 * k + 42182 ∧ 531441 * k + 42182 < 1048576 * k + 83227) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 83611) 32 = 531441 * k + 42377 ∧ 531441 * k + 42377 < 1048576 * k + 83611) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 84415) 32 = 531441 * k + 42784 ∧ 531441 * k + 42784 < 1048576 * k + 84415) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 85103) 32 = 531441 * k + 43133 ∧ 531441 * k + 43133 < 1048576 * k + 85103) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 85671) 32 = 531441 * k + 43421 ∧ 531441 * k + 43421 < 1048576 * k + 85671) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 85711) 32 = 531441 * k + 43441 ∧ 531441 * k + 43441 < 1048576 * k + 85711) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 86107) 32 = 531441 * k + 43642 ∧ 531441 * k + 43642 < 1048576 * k + 86107) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 86695) 32 = 531441 * k + 43940 ∧ 531441 * k + 43940 < 1048576 * k + 86695) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 87199) 32 = 531441 * k + 44195 ∧ 531441 * k + 44195 < 1048576 * k + 87199) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 87323) 32 = 531441 * k + 44258 ∧ 531441 * k + 44258 < 1048576 * k + 87323) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 88175) 32 = 531441 * k + 44690 ∧ 531441 * k + 44690 < 1048576 * k + 88175) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 88623) 32 = 531441 * k + 44917 ∧ 531441 * k + 44917 < 1048576 * k + 88623) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 88783) 32 = 531441 * k + 44998 ∧ 531441 * k + 44998 < 1048576 * k + 88783) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 89055) 32 = 531441 * k + 45136 ∧ 531441 * k + 45136 < 1048576 * k + 89055) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 90271) 32 = 531441 * k + 45752 ∧ 531441 * k + 45752 < 1048576 * k + 90271) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 90395) 32 = 531441 * k + 45815 ∧ 531441 * k + 45815 < 1048576 * k + 90395) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 90863) 32 = 531441 * k + 46052 ∧ 531441 * k + 46052 < 1048576 * k + 90863) ∧
  R := by
  exact ⟨CollatzM20Shard013.descent_mod1048576_82911, ⟨CollatzM20Shard013.descent_mod1048576_83035, ⟨CollatzM20Shard013.descent_mod1048576_83071, ⟨CollatzM20Shard013.descent_mod1048576_83227, ⟨CollatzM20Shard013.descent_mod1048576_83611, ⟨CollatzM20Shard013.descent_mod1048576_84415, ⟨CollatzM20Shard013.descent_mod1048576_85103, ⟨CollatzM20Shard013.descent_mod1048576_85671, ⟨CollatzM20Shard013.descent_mod1048576_85711, ⟨CollatzM20Shard013.descent_mod1048576_86107, ⟨CollatzM20Shard013.descent_mod1048576_86695, ⟨CollatzM20Shard013.descent_mod1048576_87199, ⟨CollatzM20Shard013.descent_mod1048576_87323, ⟨CollatzM20Shard013.descent_mod1048576_88175, ⟨CollatzM20Shard013.descent_mod1048576_88623, ⟨CollatzM20Shard013.descent_mod1048576_88783, ⟨CollatzM20Shard013.descent_mod1048576_89055, ⟨CollatzM20Shard013.descent_mod1048576_90271, ⟨CollatzM20Shard013.descent_mod1048576_90395, ⟨CollatzM20Shard013.descent_mod1048576_90863, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
