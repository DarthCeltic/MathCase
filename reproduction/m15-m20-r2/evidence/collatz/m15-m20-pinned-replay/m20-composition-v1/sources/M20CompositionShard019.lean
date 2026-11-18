import M20Shard019

namespace CollatzM20CompositionV1

theorem chunk019 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 135375) 32 = 531441 * k + 68612 ∧ 531441 * k + 68612 < 1048576 * k + 135375) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 136239) 32 = 531441 * k + 69050 ∧ 531441 * k + 69050 < 1048576 * k + 136239) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 136423) 32 = 531441 * k + 69143 ∧ 531441 * k + 69143 < 1048576 * k + 136423) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 136575) 32 = 531441 * k + 69220 ∧ 531441 * k + 69220 < 1048576 * k + 136575) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 136607) 32 = 531441 * k + 69236 ∧ 531441 * k + 69236 < 1048576 * k + 136607) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 137127) 32 = 531441 * k + 69500 ∧ 531441 * k + 69500 < 1048576 * k + 137127) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 137151) 32 = 531441 * k + 69512 ∧ 531441 * k + 69512 < 1048576 * k + 137151) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 137471) 32 = 531441 * k + 69674 ∧ 531441 * k + 69674 < 1048576 * k + 137471) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 137883) 32 = 531441 * k + 69883 ∧ 531441 * k + 69883 < 1048576 * k + 137883) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 139327) 32 = 531441 * k + 70615 ∧ 531441 * k + 70615 < 1048576 * k + 139327) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 139375) 32 = 531441 * k + 70639 ∧ 531441 * k + 70639 < 1048576 * k + 139375) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 139487) 32 = 531441 * k + 70696 ∧ 531441 * k + 70696 < 1048576 * k + 139487) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 139931) 32 = 531441 * k + 70921 ∧ 531441 * k + 70921 < 1048576 * k + 139931) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 140027) 32 = 531441 * k + 70970 ∧ 531441 * k + 70970 < 1048576 * k + 140027) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 140543) 32 = 531441 * k + 71231 ∧ 531441 * k + 71231 < 1048576 * k + 140543) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 140703) 32 = 531441 * k + 71312 ∧ 531441 * k + 71312 < 1048576 * k + 140703) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 141423) 32 = 531441 * k + 71677 ∧ 531441 * k + 71677 < 1048576 * k + 141423) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 141519) 32 = 531441 * k + 71726 ∧ 531441 * k + 71726 < 1048576 * k + 141519) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 141567) 32 = 531441 * k + 71750 ∧ 531441 * k + 71750 < 1048576 * k + 141567) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 142247) 32 = 531441 * k + 72095 ∧ 531441 * k + 72095 < 1048576 * k + 142247) ∧
  R := by
  exact ⟨CollatzM20Shard019.descent_mod1048576_135375, ⟨CollatzM20Shard019.descent_mod1048576_136239, ⟨CollatzM20Shard019.descent_mod1048576_136423, ⟨CollatzM20Shard019.descent_mod1048576_136575, ⟨CollatzM20Shard019.descent_mod1048576_136607, ⟨CollatzM20Shard019.descent_mod1048576_137127, ⟨CollatzM20Shard019.descent_mod1048576_137151, ⟨CollatzM20Shard019.descent_mod1048576_137471, ⟨CollatzM20Shard019.descent_mod1048576_137883, ⟨CollatzM20Shard019.descent_mod1048576_139327, ⟨CollatzM20Shard019.descent_mod1048576_139375, ⟨CollatzM20Shard019.descent_mod1048576_139487, ⟨CollatzM20Shard019.descent_mod1048576_139931, ⟨CollatzM20Shard019.descent_mod1048576_140027, ⟨CollatzM20Shard019.descent_mod1048576_140543, ⟨CollatzM20Shard019.descent_mod1048576_140703, ⟨CollatzM20Shard019.descent_mod1048576_141423, ⟨CollatzM20Shard019.descent_mod1048576_141519, ⟨CollatzM20Shard019.descent_mod1048576_141567, ⟨CollatzM20Shard019.descent_mod1048576_142247, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
