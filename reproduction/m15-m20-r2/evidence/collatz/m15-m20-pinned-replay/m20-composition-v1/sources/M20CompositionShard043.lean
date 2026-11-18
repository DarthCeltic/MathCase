import M20Shard043

namespace CollatzM20CompositionV1

theorem chunk043 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 321263) 32 = 531441 * k + 162824 ∧ 531441 * k + 162824 < 1048576 * k + 321263) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 321351) 32 = 531441 * k + 162869 ∧ 531441 * k + 162869 < 1048576 * k + 321351) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 322587) 32 = 531441 * k + 163495 ∧ 531441 * k + 163495 < 1048576 * k + 322587) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 323439) 32 = 531441 * k + 163927 ∧ 531441 * k + 163927 < 1048576 * k + 323439) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 323487) 32 = 531441 * k + 163951 ∧ 531441 * k + 163951 < 1048576 * k + 323487) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 323611) 32 = 531441 * k + 164014 ∧ 531441 * k + 164014 < 1048576 * k + 323611) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 324063) 32 = 531441 * k + 164243 ∧ 531441 * k + 164243 < 1048576 * k + 324063) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 326111) 32 = 531441 * k + 165281 ∧ 531441 * k + 165281 < 1048576 * k + 326111) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 326271) 32 = 531441 * k + 165362 ∧ 531441 * k + 165362 < 1048576 * k + 326271) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 327727) 32 = 531441 * k + 166100 ∧ 531441 * k + 166100 < 1048576 * k + 327727) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 329023) 32 = 531441 * k + 166757 ∧ 531441 * k + 166757 < 1048576 * k + 329023) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 329183) 32 = 531441 * k + 166838 ∧ 531441 * k + 166838 < 1048576 * k + 329183) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 329631) 32 = 531441 * k + 167065 ∧ 531441 * k + 167065 < 1048576 * k + 329631) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 329791) 32 = 531441 * k + 167146 ∧ 531441 * k + 167146 < 1048576 * k + 329791) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 330223) 32 = 531441 * k + 167365 ∧ 531441 * k + 167365 < 1048576 * k + 330223) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 331803) 32 = 531441 * k + 168166 ∧ 531441 * k + 168166 < 1048576 * k + 331803) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 332379) 32 = 531441 * k + 168458 ∧ 531441 * k + 168458 < 1048576 * k + 332379) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 332735) 32 = 531441 * k + 168638 ∧ 531441 * k + 168638 < 1048576 * k + 332735) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 333871) 32 = 531441 * k + 169214 ∧ 531441 * k + 169214 < 1048576 * k + 333871) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 334623) 32 = 531441 * k + 169595 ∧ 531441 * k + 169595 < 1048576 * k + 334623) ∧
  R := by
  exact ⟨CollatzM20Shard043.descent_mod1048576_321263, ⟨CollatzM20Shard043.descent_mod1048576_321351, ⟨CollatzM20Shard043.descent_mod1048576_322587, ⟨CollatzM20Shard043.descent_mod1048576_323439, ⟨CollatzM20Shard043.descent_mod1048576_323487, ⟨CollatzM20Shard043.descent_mod1048576_323611, ⟨CollatzM20Shard043.descent_mod1048576_324063, ⟨CollatzM20Shard043.descent_mod1048576_326111, ⟨CollatzM20Shard043.descent_mod1048576_326271, ⟨CollatzM20Shard043.descent_mod1048576_327727, ⟨CollatzM20Shard043.descent_mod1048576_329023, ⟨CollatzM20Shard043.descent_mod1048576_329183, ⟨CollatzM20Shard043.descent_mod1048576_329631, ⟨CollatzM20Shard043.descent_mod1048576_329791, ⟨CollatzM20Shard043.descent_mod1048576_330223, ⟨CollatzM20Shard043.descent_mod1048576_331803, ⟨CollatzM20Shard043.descent_mod1048576_332379, ⟨CollatzM20Shard043.descent_mod1048576_332735, ⟨CollatzM20Shard043.descent_mod1048576_333871, ⟨CollatzM20Shard043.descent_mod1048576_334623, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
