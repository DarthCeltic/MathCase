import M20Shard007

namespace CollatzM20CompositionV1

theorem chunk007 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 40091) 32 = 531441 * k + 20320 ∧ 531441 * k + 20320 < 1048576 * k + 40091) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 40127) 32 = 531441 * k + 20338 ∧ 531441 * k + 20338 < 1048576 * k + 40127) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 40239) 32 = 531441 * k + 20395 ∧ 531441 * k + 20395 < 1048576 * k + 40239) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 40347) 32 = 531441 * k + 20450 ∧ 531441 * k + 20450 < 1048576 * k + 40347) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 40447) 32 = 531441 * k + 20500 ∧ 531441 * k + 20500 < 1048576 * k + 40447) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 41455) 32 = 531441 * k + 21011 ∧ 531441 * k + 21011 < 1048576 * k + 41455) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 42495) 32 = 531441 * k + 21538 ∧ 531441 * k + 21538 < 1048576 * k + 42495) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 43003) 32 = 531441 * k + 21796 ∧ 531441 * k + 21796 < 1048576 * k + 43003) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 44059) 32 = 531441 * k + 22331 ∧ 531441 * k + 22331 < 1048576 * k + 44059) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 44199) 32 = 531441 * k + 22402 ∧ 531441 * k + 22402 < 1048576 * k + 44199) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 44391) 32 = 531441 * k + 22499 ∧ 531441 * k + 22499 < 1048576 * k + 44391) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 44527) 32 = 531441 * k + 22568 ∧ 531441 * k + 22568 < 1048576 * k + 44527) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 44775) 32 = 531441 * k + 22694 ∧ 531441 * k + 22694 < 1048576 * k + 44775) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 45087) 32 = 531441 * k + 22852 ∧ 531441 * k + 22852 < 1048576 * k + 45087) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 45551) 32 = 531441 * k + 23087 ∧ 531441 * k + 23087 < 1048576 * k + 45551) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 45567) 32 = 531441 * k + 23095 ∧ 531441 * k + 23095 < 1048576 * k + 45567) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 46107) 32 = 531441 * k + 23369 ∧ 531441 * k + 23369 < 1048576 * k + 46107) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 46271) 32 = 531441 * k + 23452 ∧ 531441 * k + 23452 < 1048576 * k + 46271) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 46383) 32 = 531441 * k + 23509 ∧ 531441 * k + 23509 < 1048576 * k + 46383) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 46543) 32 = 531441 * k + 23590 ∧ 531441 * k + 23590 < 1048576 * k + 46543) ∧
  R := by
  exact ⟨CollatzM20Shard007.descent_mod1048576_40091, ⟨CollatzM20Shard007.descent_mod1048576_40127, ⟨CollatzM20Shard007.descent_mod1048576_40239, ⟨CollatzM20Shard007.descent_mod1048576_40347, ⟨CollatzM20Shard007.descent_mod1048576_40447, ⟨CollatzM20Shard007.descent_mod1048576_41455, ⟨CollatzM20Shard007.descent_mod1048576_42495, ⟨CollatzM20Shard007.descent_mod1048576_43003, ⟨CollatzM20Shard007.descent_mod1048576_44059, ⟨CollatzM20Shard007.descent_mod1048576_44199, ⟨CollatzM20Shard007.descent_mod1048576_44391, ⟨CollatzM20Shard007.descent_mod1048576_44527, ⟨CollatzM20Shard007.descent_mod1048576_44775, ⟨CollatzM20Shard007.descent_mod1048576_45087, ⟨CollatzM20Shard007.descent_mod1048576_45551, ⟨CollatzM20Shard007.descent_mod1048576_45567, ⟨CollatzM20Shard007.descent_mod1048576_46107, ⟨CollatzM20Shard007.descent_mod1048576_46271, ⟨CollatzM20Shard007.descent_mod1048576_46383, ⟨CollatzM20Shard007.descent_mod1048576_46543, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
