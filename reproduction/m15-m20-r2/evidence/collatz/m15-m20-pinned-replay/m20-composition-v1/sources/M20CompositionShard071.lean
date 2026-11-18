import M20Shard071

namespace CollatzM20CompositionV1

theorem chunk071 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 553627) 32 = 531441 * k + 280591 ∧ 531441 * k + 280591 < 1048576 * k + 553627) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 553663) 32 = 531441 * k + 280609 ∧ 531441 * k + 280609 < 1048576 * k + 553663) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 554215) 32 = 531441 * k + 280889 ∧ 531441 * k + 280889 < 1048576 * k + 554215) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 554919) 32 = 531441 * k + 281246 ∧ 531441 * k + 281246 < 1048576 * k + 554919) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 555071) 32 = 531441 * k + 281323 ∧ 531441 * k + 281323 < 1048576 * k + 555071) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 555215) 32 = 531441 * k + 281396 ∧ 531441 * k + 281396 < 1048576 * k + 555215) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 555675) 32 = 531441 * k + 281629 ∧ 531441 * k + 281629 < 1048576 * k + 555675) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 555771) 32 = 531441 * k + 281678 ∧ 531441 * k + 281678 < 1048576 * k + 555771) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 555807) 32 = 531441 * k + 281696 ∧ 531441 * k + 281696 < 1048576 * k + 555807) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 555967) 32 = 531441 * k + 281777 ∧ 531441 * k + 281777 < 1048576 * k + 555967) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 556095) 32 = 531441 * k + 281842 ∧ 531441 * k + 281842 < 1048576 * k + 556095) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 556415) 32 = 531441 * k + 282004 ∧ 531441 * k + 282004 < 1048576 * k + 556415) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 556575) 32 = 531441 * k + 282085 ∧ 531441 * k + 282085 < 1048576 * k + 556575) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 556735) 32 = 531441 * k + 282166 ∧ 531441 * k + 282166 < 1048576 * k + 556735) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 557415) 32 = 531441 * k + 282511 ∧ 531441 * k + 282511 < 1048576 * k + 557415) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 558311) 32 = 531441 * k + 282965 ∧ 531441 * k + 282965 < 1048576 * k + 558311) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 558495) 32 = 531441 * k + 283058 ∧ 531441 * k + 283058 < 1048576 * k + 558495) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 558683) 32 = 531441 * k + 283154 ∧ 531441 * k + 283154 < 1048576 * k + 558683) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 559015) 32 = 531441 * k + 283322 ∧ 531441 * k + 283322 < 1048576 * k + 559015) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 559103) 32 = 531441 * k + 283366 ∧ 531441 * k + 283366 < 1048576 * k + 559103) ∧
  R := by
  exact ⟨CollatzM20Shard071.descent_mod1048576_553627, ⟨CollatzM20Shard071.descent_mod1048576_553663, ⟨CollatzM20Shard071.descent_mod1048576_554215, ⟨CollatzM20Shard071.descent_mod1048576_554919, ⟨CollatzM20Shard071.descent_mod1048576_555071, ⟨CollatzM20Shard071.descent_mod1048576_555215, ⟨CollatzM20Shard071.descent_mod1048576_555675, ⟨CollatzM20Shard071.descent_mod1048576_555771, ⟨CollatzM20Shard071.descent_mod1048576_555807, ⟨CollatzM20Shard071.descent_mod1048576_555967, ⟨CollatzM20Shard071.descent_mod1048576_556095, ⟨CollatzM20Shard071.descent_mod1048576_556415, ⟨CollatzM20Shard071.descent_mod1048576_556575, ⟨CollatzM20Shard071.descent_mod1048576_556735, ⟨CollatzM20Shard071.descent_mod1048576_557415, ⟨CollatzM20Shard071.descent_mod1048576_558311, ⟨CollatzM20Shard071.descent_mod1048576_558495, ⟨CollatzM20Shard071.descent_mod1048576_558683, ⟨CollatzM20Shard071.descent_mod1048576_559015, ⟨CollatzM20Shard071.descent_mod1048576_559103, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
