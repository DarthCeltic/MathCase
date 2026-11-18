import M20Shard012

namespace CollatzM20CompositionV1

theorem chunk012 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 74879) 32 = 531441 * k + 37951 ∧ 531441 * k + 37951 < 1048576 * k + 74879) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 75239) 32 = 531441 * k + 38134 ∧ 531441 * k + 38134 < 1048576 * k + 75239) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 75879) 32 = 531441 * k + 38458 ∧ 531441 * k + 38458 < 1048576 * k + 75879) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 75887) 32 = 531441 * k + 38462 ∧ 531441 * k + 38462 < 1048576 * k + 75887) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 76455) 32 = 531441 * k + 38750 ∧ 531441 * k + 38750 < 1048576 * k + 76455) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 77467) 32 = 531441 * k + 39263 ∧ 531441 * k + 39263 < 1048576 * k + 77467) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 77915) 32 = 531441 * k + 39490 ∧ 531441 * k + 39490 < 1048576 * k + 77915) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 78847) 32 = 531441 * k + 39962 ∧ 531441 * k + 39962 < 1048576 * k + 78847) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 78959) 32 = 531441 * k + 40019 ∧ 531441 * k + 40019 < 1048576 * k + 78959) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 79407) 32 = 531441 * k + 40246 ∧ 531441 * k + 40246 < 1048576 * k + 79407) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 79983) 32 = 531441 * k + 40538 ∧ 531441 * k + 40538 < 1048576 * k + 79983) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 79999) 32 = 531441 * k + 40546 ∧ 531441 * k + 40546 < 1048576 * k + 79999) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 80095) 32 = 531441 * k + 40595 ∧ 531441 * k + 40595 < 1048576 * k + 80095) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 80255) 32 = 531441 * k + 40676 ∧ 531441 * k + 40676 < 1048576 * k + 80255) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 80551) 32 = 531441 * k + 40826 ∧ 531441 * k + 40826 < 1048576 * k + 80551) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 80575) 32 = 531441 * k + 40838 ∧ 531441 * k + 40838 < 1048576 * k + 80575) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 81343) 32 = 531441 * k + 41227 ∧ 531441 * k + 41227 < 1048576 * k + 81343) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 82023) 32 = 531441 * k + 41572 ∧ 531441 * k + 41572 < 1048576 * k + 82023) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 82479) 32 = 531441 * k + 41803 ∧ 531441 * k + 41803 < 1048576 * k + 82479) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 82751) 32 = 531441 * k + 41941 ∧ 531441 * k + 41941 < 1048576 * k + 82751) ∧
  R := by
  exact ⟨CollatzM20Shard012.descent_mod1048576_74879, ⟨CollatzM20Shard012.descent_mod1048576_75239, ⟨CollatzM20Shard012.descent_mod1048576_75879, ⟨CollatzM20Shard012.descent_mod1048576_75887, ⟨CollatzM20Shard012.descent_mod1048576_76455, ⟨CollatzM20Shard012.descent_mod1048576_77467, ⟨CollatzM20Shard012.descent_mod1048576_77915, ⟨CollatzM20Shard012.descent_mod1048576_78847, ⟨CollatzM20Shard012.descent_mod1048576_78959, ⟨CollatzM20Shard012.descent_mod1048576_79407, ⟨CollatzM20Shard012.descent_mod1048576_79983, ⟨CollatzM20Shard012.descent_mod1048576_79999, ⟨CollatzM20Shard012.descent_mod1048576_80095, ⟨CollatzM20Shard012.descent_mod1048576_80255, ⟨CollatzM20Shard012.descent_mod1048576_80551, ⟨CollatzM20Shard012.descent_mod1048576_80575, ⟨CollatzM20Shard012.descent_mod1048576_81343, ⟨CollatzM20Shard012.descent_mod1048576_82023, ⟨CollatzM20Shard012.descent_mod1048576_82479, ⟨CollatzM20Shard012.descent_mod1048576_82751, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
