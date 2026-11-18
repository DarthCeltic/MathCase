import M20Shard010

namespace CollatzM20CompositionV1

theorem chunk010 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 59887) 32 = 531441 * k + 30353 ∧ 531441 * k + 30353 < 1048576 * k + 59887) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 61087) 32 = 531441 * k + 30961 ∧ 531441 * k + 30961 < 1048576 * k + 61087) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 62107) 32 = 531441 * k + 31478 ∧ 531441 * k + 31478 < 1048576 * k + 62107) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 63847) 32 = 531441 * k + 32360 ∧ 531441 * k + 32360 < 1048576 * k + 63847) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 64155) 32 = 531441 * k + 32516 ∧ 531441 * k + 32516 < 1048576 * k + 64155) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 64575) 32 = 531441 * k + 32729 ∧ 531441 * k + 32729 < 1048576 * k + 64575) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 64615) 32 = 531441 * k + 32749 ∧ 531441 * k + 32749 < 1048576 * k + 64615) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 64895) 32 = 531441 * k + 32891 ∧ 531441 * k + 32891 < 1048576 * k + 64895) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 65599) 32 = 531441 * k + 33248 ∧ 531441 * k + 33248 < 1048576 * k + 65599) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 65647) 32 = 531441 * k + 33272 ∧ 531441 * k + 33272 < 1048576 * k + 65647) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 65775) 32 = 531441 * k + 33337 ∧ 531441 * k + 33337 < 1048576 * k + 65775) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 66023) 32 = 531441 * k + 33463 ∧ 531441 * k + 33463 < 1048576 * k + 66023) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 66919) 32 = 531441 * k + 33917 ∧ 531441 * k + 33917 < 1048576 * k + 66919) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 67047) 32 = 531441 * k + 33982 ∧ 531441 * k + 33982 < 1048576 * k + 67047) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 67687) 32 = 531441 * k + 34306 ∧ 531441 * k + 34306 < 1048576 * k + 67687) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 68047) 32 = 531441 * k + 34489 ∧ 531441 * k + 34489 < 1048576 * k + 68047) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 68251) 32 = 531441 * k + 34592 ∧ 531441 * k + 34592 < 1048576 * k + 68251) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 68287) 32 = 531441 * k + 34610 ∧ 531441 * k + 34610 < 1048576 * k + 68287) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 68415) 32 = 531441 * k + 34675 ∧ 531441 * k + 34675 < 1048576 * k + 68415) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 68735) 32 = 531441 * k + 34837 ∧ 531441 * k + 34837 < 1048576 * k + 68735) ∧
  R := by
  exact ⟨CollatzM20Shard010.descent_mod1048576_59887, ⟨CollatzM20Shard010.descent_mod1048576_61087, ⟨CollatzM20Shard010.descent_mod1048576_62107, ⟨CollatzM20Shard010.descent_mod1048576_63847, ⟨CollatzM20Shard010.descent_mod1048576_64155, ⟨CollatzM20Shard010.descent_mod1048576_64575, ⟨CollatzM20Shard010.descent_mod1048576_64615, ⟨CollatzM20Shard010.descent_mod1048576_64895, ⟨CollatzM20Shard010.descent_mod1048576_65599, ⟨CollatzM20Shard010.descent_mod1048576_65647, ⟨CollatzM20Shard010.descent_mod1048576_65775, ⟨CollatzM20Shard010.descent_mod1048576_66023, ⟨CollatzM20Shard010.descent_mod1048576_66919, ⟨CollatzM20Shard010.descent_mod1048576_67047, ⟨CollatzM20Shard010.descent_mod1048576_67687, ⟨CollatzM20Shard010.descent_mod1048576_68047, ⟨CollatzM20Shard010.descent_mod1048576_68251, ⟨CollatzM20Shard010.descent_mod1048576_68287, ⟨CollatzM20Shard010.descent_mod1048576_68415, ⟨CollatzM20Shard010.descent_mod1048576_68735, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
