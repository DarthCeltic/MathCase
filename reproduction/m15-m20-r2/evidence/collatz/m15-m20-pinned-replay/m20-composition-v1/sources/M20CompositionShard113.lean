import M20Shard113

namespace CollatzM20CompositionV1

theorem chunk113 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 881967) 32 = 531441 * k + 447001 ∧ 531441 * k + 447001 < 1048576 * k + 881967) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 882127) 32 = 531441 * k + 447082 ∧ 531441 * k + 447082 < 1048576 * k + 882127) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 882719) 32 = 531441 * k + 447382 ∧ 531441 * k + 447382 < 1048576 * k + 882719) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 883015) 32 = 531441 * k + 447532 ∧ 531441 * k + 447532 < 1048576 * k + 883015) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 884763) 32 = 531441 * k + 448418 ∧ 531441 * k + 448418 < 1048576 * k + 884763) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 885063) 32 = 531441 * k + 448570 ∧ 531441 * k + 448570 < 1048576 * k + 885063) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 885231) 32 = 531441 * k + 448655 ∧ 531441 * k + 448655 < 1048576 * k + 885231) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 885595) 32 = 531441 * k + 448840 ∧ 531441 * k + 448840 < 1048576 * k + 885595) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 885915) 32 = 531441 * k + 449002 ∧ 531441 * k + 449002 < 1048576 * k + 885915) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 886271) 32 = 531441 * k + 449182 ∧ 531441 * k + 449182 < 1048576 * k + 886271) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 886687) 32 = 531441 * k + 449393 ∧ 531441 * k + 449393 < 1048576 * k + 886687) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 887407) 32 = 531441 * k + 449758 ∧ 531441 * k + 449758 < 1048576 * k + 887407) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 887579) 32 = 531441 * k + 449845 ∧ 531441 * k + 449845 < 1048576 * k + 887579) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 887663) 32 = 531441 * k + 449888 ∧ 531441 * k + 449888 < 1048576 * k + 887663) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 887975) 32 = 531441 * k + 450046 ∧ 531441 * k + 450046 < 1048576 * k + 887975) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 888303) 32 = 531441 * k + 450212 ∧ 531441 * k + 450212 < 1048576 * k + 888303) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 888551) 32 = 531441 * k + 450338 ∧ 531441 * k + 450338 < 1048576 * k + 888551) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 889159) 32 = 531441 * k + 450646 ∧ 531441 * k + 450646 < 1048576 * k + 889159) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 889319) 32 = 531441 * k + 450727 ∧ 531441 * k + 450727 < 1048576 * k + 889319) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 890095) 32 = 531441 * k + 451120 ∧ 531441 * k + 451120 < 1048576 * k + 890095) ∧
  R := by
  exact ⟨CollatzM20Shard113.descent_mod1048576_881967, ⟨CollatzM20Shard113.descent_mod1048576_882127, ⟨CollatzM20Shard113.descent_mod1048576_882719, ⟨CollatzM20Shard113.descent_mod1048576_883015, ⟨CollatzM20Shard113.descent_mod1048576_884763, ⟨CollatzM20Shard113.descent_mod1048576_885063, ⟨CollatzM20Shard113.descent_mod1048576_885231, ⟨CollatzM20Shard113.descent_mod1048576_885595, ⟨CollatzM20Shard113.descent_mod1048576_885915, ⟨CollatzM20Shard113.descent_mod1048576_886271, ⟨CollatzM20Shard113.descent_mod1048576_886687, ⟨CollatzM20Shard113.descent_mod1048576_887407, ⟨CollatzM20Shard113.descent_mod1048576_887579, ⟨CollatzM20Shard113.descent_mod1048576_887663, ⟨CollatzM20Shard113.descent_mod1048576_887975, ⟨CollatzM20Shard113.descent_mod1048576_888303, ⟨CollatzM20Shard113.descent_mod1048576_888551, ⟨CollatzM20Shard113.descent_mod1048576_889159, ⟨CollatzM20Shard113.descent_mod1048576_889319, ⟨CollatzM20Shard113.descent_mod1048576_890095, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
