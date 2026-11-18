import M20Shard040

namespace CollatzM20CompositionV1

theorem chunk040 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 298703) 32 = 531441 * k + 151390 ∧ 531441 * k + 151390 < 1048576 * k + 298703) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 298751) 32 = 531441 * k + 151414 ∧ 531441 * k + 151414 < 1048576 * k + 298751) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 299167) 32 = 531441 * k + 151625 ∧ 531441 * k + 151625 < 1048576 * k + 299167) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 299687) 32 = 531441 * k + 151889 ∧ 531441 * k + 151889 < 1048576 * k + 299687) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 299759) 32 = 531441 * k + 151925 ∧ 531441 * k + 151925 < 1048576 * k + 299759) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 299775) 32 = 531441 * k + 151933 ∧ 531441 * k + 151933 < 1048576 * k + 299775) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 299847) 32 = 531441 * k + 151970 ∧ 531441 * k + 151970 < 1048576 * k + 299847) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 299999) 32 = 531441 * k + 152047 ∧ 531441 * k + 152047 < 1048576 * k + 299999) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 300255) 32 = 531441 * k + 152177 ∧ 531441 * k + 152177 < 1048576 * k + 300255) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 300575) 32 = 531441 * k + 152339 ∧ 531441 * k + 152339 < 1048576 * k + 300575) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 300735) 32 = 531441 * k + 152420 ∧ 531441 * k + 152420 < 1048576 * k + 300735) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 301023) 32 = 531441 * k + 152566 ∧ 531441 * k + 152566 < 1048576 * k + 301023) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 301615) 32 = 531441 * k + 152866 ∧ 531441 * k + 152866 < 1048576 * k + 301615) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 301775) 32 = 531441 * k + 152947 ∧ 531441 * k + 152947 < 1048576 * k + 301775) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 301799) 32 = 531441 * k + 152959 ∧ 531441 * k + 152959 < 1048576 * k + 301799) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 301807) 32 = 531441 * k + 152963 ∧ 531441 * k + 152963 < 1048576 * k + 301807) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 301823) 32 = 531441 * k + 152971 ∧ 531441 * k + 152971 < 1048576 * k + 301823) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 302239) 32 = 531441 * k + 153182 ∧ 531441 * k + 153182 < 1048576 * k + 302239) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 303423) 32 = 531441 * k + 153782 ∧ 531441 * k + 153782 < 1048576 * k + 303423) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 303847) 32 = 531441 * k + 153997 ∧ 531441 * k + 153997 < 1048576 * k + 303847) ∧
  R := by
  exact ⟨CollatzM20Shard040.descent_mod1048576_298703, ⟨CollatzM20Shard040.descent_mod1048576_298751, ⟨CollatzM20Shard040.descent_mod1048576_299167, ⟨CollatzM20Shard040.descent_mod1048576_299687, ⟨CollatzM20Shard040.descent_mod1048576_299759, ⟨CollatzM20Shard040.descent_mod1048576_299775, ⟨CollatzM20Shard040.descent_mod1048576_299847, ⟨CollatzM20Shard040.descent_mod1048576_299999, ⟨CollatzM20Shard040.descent_mod1048576_300255, ⟨CollatzM20Shard040.descent_mod1048576_300575, ⟨CollatzM20Shard040.descent_mod1048576_300735, ⟨CollatzM20Shard040.descent_mod1048576_301023, ⟨CollatzM20Shard040.descent_mod1048576_301615, ⟨CollatzM20Shard040.descent_mod1048576_301775, ⟨CollatzM20Shard040.descent_mod1048576_301799, ⟨CollatzM20Shard040.descent_mod1048576_301807, ⟨CollatzM20Shard040.descent_mod1048576_301823, ⟨CollatzM20Shard040.descent_mod1048576_302239, ⟨CollatzM20Shard040.descent_mod1048576_303423, ⟨CollatzM20Shard040.descent_mod1048576_303847, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
