import M20Shard016

namespace CollatzM20CompositionV1

theorem chunk016 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 106523) 32 = 531441 * k + 53989 ∧ 531441 * k + 53989 < 1048576 * k + 106523) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 107135) 32 = 531441 * k + 54299 ∧ 531441 * k + 54299 < 1048576 * k + 107135) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 107999) 32 = 531441 * k + 54737 ∧ 531441 * k + 54737 < 1048576 * k + 107999) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 108135) 32 = 531441 * k + 54806 ∧ 531441 * k + 54806 < 1048576 * k + 108135) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 108271) 32 = 531441 * k + 54875 ∧ 531441 * k + 54875 < 1048576 * k + 108271) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 108863) 32 = 531441 * k + 55175 ∧ 531441 * k + 55175 < 1048576 * k + 108863) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 109183) 32 = 531441 * k + 55337 ∧ 531441 * k + 55337 < 1048576 * k + 109183) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 109595) 32 = 531441 * k + 55546 ∧ 531441 * k + 55546 < 1048576 * k + 109595) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 110311) 32 = 531441 * k + 55909 ∧ 531441 * k + 55909 < 1048576 * k + 110311) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 111087) 32 = 531441 * k + 56302 ∧ 531441 * k + 56302 < 1048576 * k + 111087) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 111195) 32 = 531441 * k + 56357 ∧ 531441 * k + 56357 < 1048576 * k + 111195) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 111643) 32 = 531441 * k + 56584 ∧ 531441 * k + 56584 < 1048576 * k + 111643) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 112095) 32 = 531441 * k + 56813 ∧ 531441 * k + 56813 < 1048576 * k + 112095) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 112255) 32 = 531441 * k + 56894 ∧ 531441 * k + 56894 < 1048576 * k + 112255) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 113119) 32 = 531441 * k + 57332 ∧ 531441 * k + 57332 < 1048576 * k + 113119) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 113135) 32 = 531441 * k + 57340 ∧ 531441 * k + 57340 < 1048576 * k + 113135) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 113279) 32 = 531441 * k + 57413 ∧ 531441 * k + 57413 < 1048576 * k + 113279) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 114075) 32 = 531441 * k + 57817 ∧ 531441 * k + 57817 < 1048576 * k + 114075) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 114279) 32 = 531441 * k + 57920 ∧ 531441 * k + 57920 < 1048576 * k + 114279) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 114715) 32 = 531441 * k + 58141 ∧ 531441 * k + 58141 < 1048576 * k + 114715) ∧
  R := by
  exact ⟨CollatzM20Shard016.descent_mod1048576_106523, ⟨CollatzM20Shard016.descent_mod1048576_107135, ⟨CollatzM20Shard016.descent_mod1048576_107999, ⟨CollatzM20Shard016.descent_mod1048576_108135, ⟨CollatzM20Shard016.descent_mod1048576_108271, ⟨CollatzM20Shard016.descent_mod1048576_108863, ⟨CollatzM20Shard016.descent_mod1048576_109183, ⟨CollatzM20Shard016.descent_mod1048576_109595, ⟨CollatzM20Shard016.descent_mod1048576_110311, ⟨CollatzM20Shard016.descent_mod1048576_111087, ⟨CollatzM20Shard016.descent_mod1048576_111195, ⟨CollatzM20Shard016.descent_mod1048576_111643, ⟨CollatzM20Shard016.descent_mod1048576_112095, ⟨CollatzM20Shard016.descent_mod1048576_112255, ⟨CollatzM20Shard016.descent_mod1048576_113119, ⟨CollatzM20Shard016.descent_mod1048576_113135, ⟨CollatzM20Shard016.descent_mod1048576_113279, ⟨CollatzM20Shard016.descent_mod1048576_114075, ⟨CollatzM20Shard016.descent_mod1048576_114279, ⟨CollatzM20Shard016.descent_mod1048576_114715, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
