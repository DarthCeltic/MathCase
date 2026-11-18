import M20Shard052

namespace CollatzM20CompositionV1

theorem chunk052 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 408315) 32 = 531441 * k + 206944 ∧ 531441 * k + 206944 < 1048576 * k + 408315) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 408351) 32 = 531441 * k + 206962 ∧ 531441 * k + 206962 < 1048576 * k + 408351) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 408571) 32 = 531441 * k + 207074 ∧ 531441 * k + 207074 < 1048576 * k + 408571) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 408831) 32 = 531441 * k + 207205 ∧ 531441 * k + 207205 < 1048576 * k + 408831) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 409247) 32 = 531441 * k + 207416 ∧ 531441 * k + 207416 < 1048576 * k + 409247) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 409839) 32 = 531441 * k + 207716 ∧ 531441 * k + 207716 < 1048576 * k + 409839) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 410879) 32 = 531441 * k + 208243 ∧ 531441 * k + 208243 < 1048576 * k + 410879) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 411295) 32 = 531441 * k + 208454 ∧ 531441 * k + 208454 < 1048576 * k + 411295) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 412775) 32 = 531441 * k + 209204 ∧ 531441 * k + 209204 < 1048576 * k + 412775) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 412999) 32 = 531441 * k + 209318 ∧ 531441 * k + 209318 < 1048576 * k + 412999) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 413631) 32 = 531441 * k + 209638 ∧ 531441 * k + 209638 < 1048576 * k + 413631) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 413887) 32 = 531441 * k + 209768 ∧ 531441 * k + 209768 < 1048576 * k + 413887) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 413935) 32 = 531441 * k + 209792 ∧ 531441 * k + 209792 < 1048576 * k + 413935) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 414367) 32 = 531441 * k + 210011 ∧ 531441 * k + 210011 < 1048576 * k + 414367) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 414491) 32 = 531441 * k + 210074 ∧ 531441 * k + 210074 < 1048576 * k + 414491) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 414495) 32 = 531441 * k + 210076 ∧ 531441 * k + 210076 < 1048576 * k + 414495) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 414767) 32 = 531441 * k + 210214 ∧ 531441 * k + 210214 < 1048576 * k + 414767) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 414975) 32 = 531441 * k + 210319 ∧ 531441 * k + 210319 < 1048576 * k + 414975) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 415655) 32 = 531441 * k + 210664 ∧ 531441 * k + 210664 < 1048576 * k + 415655) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 415983) 32 = 531441 * k + 210830 ∧ 531441 * k + 210830 < 1048576 * k + 415983) ∧
  R := by
  exact ⟨CollatzM20Shard052.descent_mod1048576_408315, ⟨CollatzM20Shard052.descent_mod1048576_408351, ⟨CollatzM20Shard052.descent_mod1048576_408571, ⟨CollatzM20Shard052.descent_mod1048576_408831, ⟨CollatzM20Shard052.descent_mod1048576_409247, ⟨CollatzM20Shard052.descent_mod1048576_409839, ⟨CollatzM20Shard052.descent_mod1048576_410879, ⟨CollatzM20Shard052.descent_mod1048576_411295, ⟨CollatzM20Shard052.descent_mod1048576_412775, ⟨CollatzM20Shard052.descent_mod1048576_412999, ⟨CollatzM20Shard052.descent_mod1048576_413631, ⟨CollatzM20Shard052.descent_mod1048576_413887, ⟨CollatzM20Shard052.descent_mod1048576_413935, ⟨CollatzM20Shard052.descent_mod1048576_414367, ⟨CollatzM20Shard052.descent_mod1048576_414491, ⟨CollatzM20Shard052.descent_mod1048576_414495, ⟨CollatzM20Shard052.descent_mod1048576_414767, ⟨CollatzM20Shard052.descent_mod1048576_414975, ⟨CollatzM20Shard052.descent_mod1048576_415655, ⟨CollatzM20Shard052.descent_mod1048576_415983, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
