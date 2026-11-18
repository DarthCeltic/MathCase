import M20Shard132

namespace CollatzM20CompositionV1

theorem chunk132 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1037503) 32 = 531441 * k + 525830 ∧ 531441 * k + 525830 < 1048576 * k + 1037503) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1037823) 32 = 531441 * k + 525992 ∧ 531441 * k + 525992 < 1048576 * k + 1037823) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1038271) 32 = 531441 * k + 526219 ∧ 531441 * k + 526219 < 1048576 * k + 1038271) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1038383) 32 = 531441 * k + 526276 ∧ 531441 * k + 526276 < 1048576 * k + 1038383) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1038543) 32 = 531441 * k + 526357 ∧ 531441 * k + 526357 < 1048576 * k + 1038543) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1038591) 32 = 531441 * k + 526381 ∧ 531441 * k + 526381 < 1048576 * k + 1038591) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1038951) 32 = 531441 * k + 526564 ∧ 531441 * k + 526564 < 1048576 * k + 1038951) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1039599) 32 = 531441 * k + 526892 ∧ 531441 * k + 526892 < 1048576 * k + 1039599) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1040379) 32 = 531441 * k + 527288 ∧ 531441 * k + 527288 < 1048576 * k + 1040379) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1040539) 32 = 531441 * k + 527369 ∧ 531441 * k + 527369 < 1048576 * k + 1040539) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1040871) 32 = 531441 * k + 527537 ∧ 531441 * k + 527537 < 1048576 * k + 1040871) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1041147) 32 = 531441 * k + 527677 ∧ 531441 * k + 527677 < 1048576 * k + 1041147) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1041179) 32 = 531441 * k + 527693 ∧ 531441 * k + 527693 < 1048576 * k + 1041179) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1041663) 32 = 531441 * k + 527938 ∧ 531441 * k + 527938 < 1048576 * k + 1041663) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1041871) 32 = 531441 * k + 528044 ∧ 531441 * k + 528044 < 1048576 * k + 1041871) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1042639) 32 = 531441 * k + 528433 ∧ 531441 * k + 528433 < 1048576 * k + 1042639) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1042895) 32 = 531441 * k + 528563 ∧ 531441 * k + 528563 < 1048576 * k + 1042895) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1043231) 32 = 531441 * k + 528733 ∧ 531441 * k + 528733 < 1048576 * k + 1043231) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1043263) 32 = 531441 * k + 528749 ∧ 531441 * k + 528749 < 1048576 * k + 1043263) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1043559) 32 = 531441 * k + 528899 ∧ 531441 * k + 528899 < 1048576 * k + 1043559) ∧
  R := by
  exact ⟨CollatzM20Shard132.descent_mod1048576_1037503, ⟨CollatzM20Shard132.descent_mod1048576_1037823, ⟨CollatzM20Shard132.descent_mod1048576_1038271, ⟨CollatzM20Shard132.descent_mod1048576_1038383, ⟨CollatzM20Shard132.descent_mod1048576_1038543, ⟨CollatzM20Shard132.descent_mod1048576_1038591, ⟨CollatzM20Shard132.descent_mod1048576_1038951, ⟨CollatzM20Shard132.descent_mod1048576_1039599, ⟨CollatzM20Shard132.descent_mod1048576_1040379, ⟨CollatzM20Shard132.descent_mod1048576_1040539, ⟨CollatzM20Shard132.descent_mod1048576_1040871, ⟨CollatzM20Shard132.descent_mod1048576_1041147, ⟨CollatzM20Shard132.descent_mod1048576_1041179, ⟨CollatzM20Shard132.descent_mod1048576_1041663, ⟨CollatzM20Shard132.descent_mod1048576_1041871, ⟨CollatzM20Shard132.descent_mod1048576_1042639, ⟨CollatzM20Shard132.descent_mod1048576_1042895, ⟨CollatzM20Shard132.descent_mod1048576_1043231, ⟨CollatzM20Shard132.descent_mod1048576_1043263, ⟨CollatzM20Shard132.descent_mod1048576_1043559, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
