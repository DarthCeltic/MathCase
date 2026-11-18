import M20Shard056

namespace CollatzM20CompositionV1

theorem chunk056 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 439263) 32 = 531441 * k + 222629 ∧ 531441 * k + 222629 < 1048576 * k + 439263) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 440063) 32 = 531441 * k + 223034 ∧ 531441 * k + 223034 < 1048576 * k + 440063) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 440571) 32 = 531441 * k + 223292 ∧ 531441 * k + 223292 < 1048576 * k + 440571) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 441039) 32 = 531441 * k + 223529 ∧ 531441 * k + 223529 < 1048576 * k + 441039) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 441063) 32 = 531441 * k + 223541 ∧ 531441 * k + 223541 < 1048576 * k + 441063) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 441191) 32 = 531441 * k + 223606 ∧ 531441 * k + 223606 < 1048576 * k + 441191) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 442063) 32 = 531441 * k + 224048 ∧ 531441 * k + 224048 < 1048576 * k + 442063) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 442175) 32 = 531441 * k + 224105 ∧ 531441 * k + 224105 < 1048576 * k + 442175) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 442495) 32 = 531441 * k + 224267 ∧ 531441 * k + 224267 < 1048576 * k + 442495) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 442619) 32 = 531441 * k + 224330 ∧ 531441 * k + 224330 < 1048576 * k + 442619) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 442815) 32 = 531441 * k + 224429 ∧ 531441 * k + 224429 < 1048576 * k + 442815) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 443135) 32 = 531441 * k + 224591 ∧ 531441 * k + 224591 < 1048576 * k + 443135) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 443263) 32 = 531441 * k + 224656 ∧ 531441 * k + 224656 < 1048576 * k + 443263) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 443375) 32 = 531441 * k + 224713 ∧ 531441 * k + 224713 < 1048576 * k + 443375) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 443463) 32 = 531441 * k + 224758 ∧ 531441 * k + 224758 < 1048576 * k + 443463) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 444111) 32 = 531441 * k + 225086 ∧ 531441 * k + 225086 < 1048576 * k + 444111) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 445159) 32 = 531441 * k + 225617 ∧ 531441 * k + 225617 < 1048576 * k + 445159) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 445531) 32 = 531441 * k + 225806 ∧ 531441 * k + 225806 < 1048576 * k + 445531) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 445691) 32 = 531441 * k + 225887 ∧ 531441 * k + 225887 < 1048576 * k + 445691) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 446207) 32 = 531441 * k + 226148 ∧ 531441 * k + 226148 < 1048576 * k + 446207) ∧
  R := by
  exact ⟨CollatzM20Shard056.descent_mod1048576_439263, ⟨CollatzM20Shard056.descent_mod1048576_440063, ⟨CollatzM20Shard056.descent_mod1048576_440571, ⟨CollatzM20Shard056.descent_mod1048576_441039, ⟨CollatzM20Shard056.descent_mod1048576_441063, ⟨CollatzM20Shard056.descent_mod1048576_441191, ⟨CollatzM20Shard056.descent_mod1048576_442063, ⟨CollatzM20Shard056.descent_mod1048576_442175, ⟨CollatzM20Shard056.descent_mod1048576_442495, ⟨CollatzM20Shard056.descent_mod1048576_442619, ⟨CollatzM20Shard056.descent_mod1048576_442815, ⟨CollatzM20Shard056.descent_mod1048576_443135, ⟨CollatzM20Shard056.descent_mod1048576_443263, ⟨CollatzM20Shard056.descent_mod1048576_443375, ⟨CollatzM20Shard056.descent_mod1048576_443463, ⟨CollatzM20Shard056.descent_mod1048576_444111, ⟨CollatzM20Shard056.descent_mod1048576_445159, ⟨CollatzM20Shard056.descent_mod1048576_445531, ⟨CollatzM20Shard056.descent_mod1048576_445691, ⟨CollatzM20Shard056.descent_mod1048576_446207, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
