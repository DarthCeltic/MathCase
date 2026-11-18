import M20Shard047

namespace CollatzM20CompositionV1

theorem chunk047 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 365223) 32 = 531441 * k + 185104 ∧ 531441 * k + 185104 < 1048576 * k + 365223) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 365383) 32 = 531441 * k + 185185 ∧ 531441 * k + 185185 < 1048576 * k + 365383) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 365791) 32 = 531441 * k + 185392 ∧ 531441 * k + 185392 < 1048576 * k + 365791) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 366111) 32 = 531441 * k + 185554 ∧ 531441 * k + 185554 < 1048576 * k + 366111) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 366271) 32 = 531441 * k + 185635 ∧ 531441 * k + 185635 < 1048576 * k + 366271) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 366439) 32 = 531441 * k + 185720 ∧ 531441 * k + 185720 < 1048576 * k + 366439) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 367487) 32 = 531441 * k + 186251 ∧ 531441 * k + 186251 < 1048576 * k + 367487) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 367775) 32 = 531441 * k + 186397 ∧ 531441 * k + 186397 < 1048576 * k + 367775) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 368711) 32 = 531441 * k + 186872 ∧ 531441 * k + 186872 < 1048576 * k + 368711) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 369391) 32 = 531441 * k + 187216 ∧ 531441 * k + 187216 < 1048576 * k + 369391) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 369479) 32 = 531441 * k + 187261 ∧ 531441 * k + 187261 < 1048576 * k + 369479) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 369735) 32 = 531441 * k + 187391 ∧ 531441 * k + 187391 < 1048576 * k + 369735) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 370559) 32 = 531441 * k + 187808 ∧ 531441 * k + 187808 < 1048576 * k + 370559) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 371583) 32 = 531441 * k + 188327 ∧ 531441 * k + 188327 < 1048576 * k + 371583) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 371695) 32 = 531441 * k + 188384 ∧ 531441 * k + 188384 < 1048576 * k + 371695) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 372463) 32 = 531441 * k + 188773 ∧ 531441 * k + 188773 < 1048576 * k + 372463) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 373631) 32 = 531441 * k + 189365 ∧ 531441 * k + 189365 < 1048576 * k + 373631) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 375535) 32 = 531441 * k + 190330 ∧ 531441 * k + 190330 < 1048576 * k + 375535) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 375655) 32 = 531441 * k + 190391 ∧ 531441 * k + 190391 < 1048576 * k + 375655) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 376091) 32 = 531441 * k + 190612 ∧ 531441 * k + 190612 < 1048576 * k + 376091) ∧
  R := by
  exact ⟨CollatzM20Shard047.descent_mod1048576_365223, ⟨CollatzM20Shard047.descent_mod1048576_365383, ⟨CollatzM20Shard047.descent_mod1048576_365791, ⟨CollatzM20Shard047.descent_mod1048576_366111, ⟨CollatzM20Shard047.descent_mod1048576_366271, ⟨CollatzM20Shard047.descent_mod1048576_366439, ⟨CollatzM20Shard047.descent_mod1048576_367487, ⟨CollatzM20Shard047.descent_mod1048576_367775, ⟨CollatzM20Shard047.descent_mod1048576_368711, ⟨CollatzM20Shard047.descent_mod1048576_369391, ⟨CollatzM20Shard047.descent_mod1048576_369479, ⟨CollatzM20Shard047.descent_mod1048576_369735, ⟨CollatzM20Shard047.descent_mod1048576_370559, ⟨CollatzM20Shard047.descent_mod1048576_371583, ⟨CollatzM20Shard047.descent_mod1048576_371695, ⟨CollatzM20Shard047.descent_mod1048576_372463, ⟨CollatzM20Shard047.descent_mod1048576_373631, ⟨CollatzM20Shard047.descent_mod1048576_375535, ⟨CollatzM20Shard047.descent_mod1048576_375655, ⟨CollatzM20Shard047.descent_mod1048576_376091, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
