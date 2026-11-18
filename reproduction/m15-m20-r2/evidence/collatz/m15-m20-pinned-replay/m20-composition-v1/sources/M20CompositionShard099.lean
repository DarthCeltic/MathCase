import M20Shard099

namespace CollatzM20CompositionV1

theorem chunk099 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 772207) 32 = 531441 * k + 391372 ∧ 531441 * k + 391372 < 1048576 * k + 772207) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 772763) 32 = 531441 * k + 391654 ∧ 531441 * k + 391654 < 1048576 * k + 772763) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 772799) 32 = 531441 * k + 391672 ∧ 531441 * k + 391672 < 1048576 * k + 772799) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 772895) 32 = 531441 * k + 391721 ∧ 531441 * k + 391721 < 1048576 * k + 772895) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 773119) 32 = 531441 * k + 391834 ∧ 531441 * k + 391834 < 1048576 * k + 773119) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 773535) 32 = 531441 * k + 392045 ∧ 531441 * k + 392045 < 1048576 * k + 773535) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 773663) 32 = 531441 * k + 392110 ∧ 531441 * k + 392110 < 1048576 * k + 773663) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 773823) 32 = 531441 * k + 392191 ∧ 531441 * k + 392191 < 1048576 * k + 773823) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 773919) 32 = 531441 * k + 392240 ∧ 531441 * k + 392240 < 1048576 * k + 773919) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 774255) 32 = 531441 * k + 392410 ∧ 531441 * k + 392410 < 1048576 * k + 774255) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 774351) 32 = 531441 * k + 392459 ∧ 531441 * k + 392459 < 1048576 * k + 774351) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 774399) 32 = 531441 * k + 392483 ∧ 531441 * k + 392483 < 1048576 * k + 774399) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 775399) 32 = 531441 * k + 392990 ∧ 531441 * k + 392990 < 1048576 * k + 775399) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 777327) 32 = 531441 * k + 393967 ∧ 531441 * k + 393967 < 1048576 * k + 777327) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 777631) 32 = 531441 * k + 394121 ∧ 531441 * k + 394121 < 1048576 * k + 777631) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 778087) 32 = 531441 * k + 394352 ∧ 531441 * k + 394352 < 1048576 * k + 778087) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 779111) 32 = 531441 * k + 394871 ∧ 531441 * k + 394871 < 1048576 * k + 779111) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 779263) 32 = 531441 * k + 394948 ∧ 531441 * k + 394948 < 1048576 * k + 779263) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 779679) 32 = 531441 * k + 395159 ∧ 531441 * k + 395159 < 1048576 * k + 779679) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 780447) 32 = 531441 * k + 395548 ∧ 531441 * k + 395548 < 1048576 * k + 780447) ∧
  R := by
  exact ⟨CollatzM20Shard099.descent_mod1048576_772207, ⟨CollatzM20Shard099.descent_mod1048576_772763, ⟨CollatzM20Shard099.descent_mod1048576_772799, ⟨CollatzM20Shard099.descent_mod1048576_772895, ⟨CollatzM20Shard099.descent_mod1048576_773119, ⟨CollatzM20Shard099.descent_mod1048576_773535, ⟨CollatzM20Shard099.descent_mod1048576_773663, ⟨CollatzM20Shard099.descent_mod1048576_773823, ⟨CollatzM20Shard099.descent_mod1048576_773919, ⟨CollatzM20Shard099.descent_mod1048576_774255, ⟨CollatzM20Shard099.descent_mod1048576_774351, ⟨CollatzM20Shard099.descent_mod1048576_774399, ⟨CollatzM20Shard099.descent_mod1048576_775399, ⟨CollatzM20Shard099.descent_mod1048576_777327, ⟨CollatzM20Shard099.descent_mod1048576_777631, ⟨CollatzM20Shard099.descent_mod1048576_778087, ⟨CollatzM20Shard099.descent_mod1048576_779111, ⟨CollatzM20Shard099.descent_mod1048576_779263, ⟨CollatzM20Shard099.descent_mod1048576_779679, ⟨CollatzM20Shard099.descent_mod1048576_780447, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
