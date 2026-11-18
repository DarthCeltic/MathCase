import M20Shard100

namespace CollatzM20CompositionV1

theorem chunk100 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 780967) 32 = 531441 * k + 395812 ∧ 531441 * k + 395812 < 1048576 * k + 780967) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 781159) 32 = 531441 * k + 395909 ∧ 531441 * k + 395909 < 1048576 * k + 781159) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 781223) 32 = 531441 * k + 395942 ∧ 531441 * k + 395942 < 1048576 * k + 781223) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 781295) 32 = 531441 * k + 395978 ∧ 531441 * k + 395978 < 1048576 * k + 781295) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 781471) 32 = 531441 * k + 396067 ∧ 531441 * k + 396067 < 1048576 * k + 781471) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 781543) 32 = 531441 * k + 396104 ∧ 531441 * k + 396104 < 1048576 * k + 781543) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 781855) 32 = 531441 * k + 396262 ∧ 531441 * k + 396262 < 1048576 * k + 781855) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 782015) 32 = 531441 * k + 396343 ∧ 531441 * k + 396343 < 1048576 * k + 782015) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 782111) 32 = 531441 * k + 396392 ∧ 531441 * k + 396392 < 1048576 * k + 782111) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 782591) 32 = 531441 * k + 396635 ∧ 531441 * k + 396635 < 1048576 * k + 782591) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 782751) 32 = 531441 * k + 396716 ∧ 531441 * k + 396716 < 1048576 * k + 782751) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 782879) 32 = 531441 * k + 396781 ∧ 531441 * k + 396781 < 1048576 * k + 782879) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 783471) 32 = 531441 * k + 397081 ∧ 531441 * k + 397081 < 1048576 * k + 783471) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 783519) 32 = 531441 * k + 397105 ∧ 531441 * k + 397105 < 1048576 * k + 783519) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 783643) 32 = 531441 * k + 397168 ∧ 531441 * k + 397168 < 1048576 * k + 783643) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 785255) 32 = 531441 * k + 397985 ∧ 531441 * k + 397985 < 1048576 * k + 785255) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 785279) 32 = 531441 * k + 397997 ∧ 531441 * k + 397997 < 1048576 * k + 785279) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 785567) 32 = 531441 * k + 398143 ∧ 531441 * k + 398143 < 1048576 * k + 785567) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 785947) 32 = 531441 * k + 398336 ∧ 531441 * k + 398336 < 1048576 * k + 785947) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 786591) 32 = 531441 * k + 398662 ∧ 531441 * k + 398662 < 1048576 * k + 786591) ∧
  R := by
  exact ⟨CollatzM20Shard100.descent_mod1048576_780967, ⟨CollatzM20Shard100.descent_mod1048576_781159, ⟨CollatzM20Shard100.descent_mod1048576_781223, ⟨CollatzM20Shard100.descent_mod1048576_781295, ⟨CollatzM20Shard100.descent_mod1048576_781471, ⟨CollatzM20Shard100.descent_mod1048576_781543, ⟨CollatzM20Shard100.descent_mod1048576_781855, ⟨CollatzM20Shard100.descent_mod1048576_782015, ⟨CollatzM20Shard100.descent_mod1048576_782111, ⟨CollatzM20Shard100.descent_mod1048576_782591, ⟨CollatzM20Shard100.descent_mod1048576_782751, ⟨CollatzM20Shard100.descent_mod1048576_782879, ⟨CollatzM20Shard100.descent_mod1048576_783471, ⟨CollatzM20Shard100.descent_mod1048576_783519, ⟨CollatzM20Shard100.descent_mod1048576_783643, ⟨CollatzM20Shard100.descent_mod1048576_785255, ⟨CollatzM20Shard100.descent_mod1048576_785279, ⟨CollatzM20Shard100.descent_mod1048576_785567, ⟨CollatzM20Shard100.descent_mod1048576_785947, ⟨CollatzM20Shard100.descent_mod1048576_786591, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
