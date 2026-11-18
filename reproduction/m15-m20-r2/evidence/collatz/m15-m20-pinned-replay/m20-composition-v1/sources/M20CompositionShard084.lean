import M20Shard084

namespace CollatzM20CompositionV1

theorem chunk084 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 646127) 32 = 531441 * k + 327472 ∧ 531441 * k + 327472 < 1048576 * k + 646127) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 646703) 32 = 531441 * k + 327764 ∧ 531441 * k + 327764 < 1048576 * k + 646703) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 646975) 32 = 531441 * k + 327902 ∧ 531441 * k + 327902 < 1048576 * k + 646975) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 647295) 32 = 531441 * k + 328064 ∧ 531441 * k + 328064 < 1048576 * k + 647295) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 647419) 32 = 531441 * k + 328127 ∧ 531441 * k + 328127 < 1048576 * k + 647419) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 647615) 32 = 531441 * k + 328226 ∧ 531441 * k + 328226 < 1048576 * k + 647615) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 648263) 32 = 531441 * k + 328555 ∧ 531441 * k + 328555 < 1048576 * k + 648263) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 648911) 32 = 531441 * k + 328883 ∧ 531441 * k + 328883 < 1048576 * k + 648911) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 649627) 32 = 531441 * k + 329246 ∧ 531441 * k + 329246 < 1048576 * k + 649627) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 649631) 32 = 531441 * k + 329248 ∧ 531441 * k + 329248 < 1048576 * k + 649631) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 650331) 32 = 531441 * k + 329603 ∧ 531441 * k + 329603 < 1048576 * k + 650331) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 650491) 32 = 531441 * k + 329684 ∧ 531441 * k + 329684 < 1048576 * k + 650491) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 650687) 32 = 531441 * k + 329783 ∧ 531441 * k + 329783 < 1048576 * k + 650687) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 651711) 32 = 531441 * k + 330302 ∧ 531441 * k + 330302 < 1048576 * k + 651711) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 651823) 32 = 531441 * k + 330359 ∧ 531441 * k + 330359 < 1048576 * k + 651823) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 652827) 32 = 531441 * k + 330868 ∧ 531441 * k + 330868 < 1048576 * k + 652827) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 653563) 32 = 531441 * k + 331241 ∧ 531441 * k + 331241 < 1048576 * k + 653563) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 653723) 32 = 531441 * k + 331322 ∧ 531441 * k + 331322 < 1048576 * k + 653723) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 654079) 32 = 531441 * k + 331502 ∧ 531441 * k + 331502 < 1048576 * k + 654079) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 654319) 32 = 531441 * k + 331624 ∧ 531441 * k + 331624 < 1048576 * k + 654319) ∧
  R := by
  exact ⟨CollatzM20Shard084.descent_mod1048576_646127, ⟨CollatzM20Shard084.descent_mod1048576_646703, ⟨CollatzM20Shard084.descent_mod1048576_646975, ⟨CollatzM20Shard084.descent_mod1048576_647295, ⟨CollatzM20Shard084.descent_mod1048576_647419, ⟨CollatzM20Shard084.descent_mod1048576_647615, ⟨CollatzM20Shard084.descent_mod1048576_648263, ⟨CollatzM20Shard084.descent_mod1048576_648911, ⟨CollatzM20Shard084.descent_mod1048576_649627, ⟨CollatzM20Shard084.descent_mod1048576_649631, ⟨CollatzM20Shard084.descent_mod1048576_650331, ⟨CollatzM20Shard084.descent_mod1048576_650491, ⟨CollatzM20Shard084.descent_mod1048576_650687, ⟨CollatzM20Shard084.descent_mod1048576_651711, ⟨CollatzM20Shard084.descent_mod1048576_651823, ⟨CollatzM20Shard084.descent_mod1048576_652827, ⟨CollatzM20Shard084.descent_mod1048576_653563, ⟨CollatzM20Shard084.descent_mod1048576_653723, ⟨CollatzM20Shard084.descent_mod1048576_654079, ⟨CollatzM20Shard084.descent_mod1048576_654319, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
