import M20Shard020

namespace CollatzM20CompositionV1

theorem chunk020 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 142567) 32 = 531441 * k + 72257 ∧ 531441 * k + 72257 < 1048576 * k + 142567) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 143003) 32 = 531441 * k + 72478 ∧ 531441 * k + 72478 < 1048576 * k + 143003) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 143271) 32 = 531441 * k + 72614 ∧ 531441 * k + 72614 < 1048576 * k + 143271) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 143775) 32 = 531441 * k + 72869 ∧ 531441 * k + 72869 < 1048576 * k + 143775) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 144383) 32 = 531441 * k + 73177 ∧ 531441 * k + 73177 < 1048576 * k + 144383) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 144431) 32 = 531441 * k + 73202 ∧ 531441 * k + 73202 < 1048576 * k + 144431) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 144799) 32 = 531441 * k + 73388 ∧ 531441 * k + 73388 < 1048576 * k + 144799) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 145519) 32 = 531441 * k + 73753 ∧ 531441 * k + 73753 < 1048576 * k + 145519) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 145631) 32 = 531441 * k + 73810 ∧ 531441 * k + 73810 < 1048576 * k + 145631) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 145791) 32 = 531441 * k + 73891 ∧ 531441 * k + 73891 < 1048576 * k + 145791) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 146087) 32 = 531441 * k + 74041 ∧ 531441 * k + 74041 < 1048576 * k + 146087) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 146111) 32 = 531441 * k + 74053 ∧ 531441 * k + 74053 < 1048576 * k + 146111) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 146847) 32 = 531441 * k + 74426 ∧ 531441 * k + 74426 < 1048576 * k + 146847) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 146971) 32 = 531441 * k + 74489 ∧ 531441 * k + 74489 < 1048576 * k + 146971) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 147303) 32 = 531441 * k + 74657 ∧ 531441 * k + 74657 < 1048576 * k + 147303) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 148327) 32 = 531441 * k + 75176 ∧ 531441 * k + 75176 < 1048576 * k + 148327) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 148711) 32 = 531441 * k + 75371 ∧ 531441 * k + 75371 < 1048576 * k + 148711) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 149147) 32 = 531441 * k + 75592 ∧ 531441 * k + 75592 < 1048576 * k + 149147) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 149351) 32 = 531441 * k + 75695 ∧ 531441 * k + 75695 < 1048576 * k + 149351) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 149759) 32 = 531441 * k + 75902 ∧ 531441 * k + 75902 < 1048576 * k + 149759) ∧
  R := by
  exact ⟨CollatzM20Shard020.descent_mod1048576_142567, ⟨CollatzM20Shard020.descent_mod1048576_143003, ⟨CollatzM20Shard020.descent_mod1048576_143271, ⟨CollatzM20Shard020.descent_mod1048576_143775, ⟨CollatzM20Shard020.descent_mod1048576_144383, ⟨CollatzM20Shard020.descent_mod1048576_144431, ⟨CollatzM20Shard020.descent_mod1048576_144799, ⟨CollatzM20Shard020.descent_mod1048576_145519, ⟨CollatzM20Shard020.descent_mod1048576_145631, ⟨CollatzM20Shard020.descent_mod1048576_145791, ⟨CollatzM20Shard020.descent_mod1048576_146087, ⟨CollatzM20Shard020.descent_mod1048576_146111, ⟨CollatzM20Shard020.descent_mod1048576_146847, ⟨CollatzM20Shard020.descent_mod1048576_146971, ⟨CollatzM20Shard020.descent_mod1048576_147303, ⟨CollatzM20Shard020.descent_mod1048576_148327, ⟨CollatzM20Shard020.descent_mod1048576_148711, ⟨CollatzM20Shard020.descent_mod1048576_149147, ⟨CollatzM20Shard020.descent_mod1048576_149351, ⟨CollatzM20Shard020.descent_mod1048576_149759, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
