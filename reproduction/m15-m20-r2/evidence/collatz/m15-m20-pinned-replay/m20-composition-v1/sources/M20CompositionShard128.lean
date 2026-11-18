import M20Shard128

namespace CollatzM20CompositionV1

theorem chunk128 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1004059) 32 = 531441 * k + 508880 ∧ 531441 * k + 508880 < 1048576 * k + 1004059) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1004415) 32 = 531441 * k + 509060 ∧ 531441 * k + 509060 < 1048576 * k + 1004415) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1005887) 32 = 531441 * k + 509806 ∧ 531441 * k + 509806 < 1048576 * k + 1005887) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1006463) 32 = 531441 * k + 510098 ∧ 531441 * k + 510098 < 1048576 * k + 1006463) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1007231) 32 = 531441 * k + 510487 ∧ 531441 * k + 510487 < 1048576 * k + 1007231) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1007783) 32 = 531441 * k + 510767 ∧ 531441 * k + 510767 < 1048576 * k + 1007783) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1008255) 32 = 531441 * k + 511006 ∧ 531441 * k + 511006 < 1048576 * k + 1008255) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1008799) 32 = 531441 * k + 511282 ∧ 531441 * k + 511282 < 1048576 * k + 1008799) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1009535) 32 = 531441 * k + 511655 ∧ 531441 * k + 511655 < 1048576 * k + 1009535) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1009983) 32 = 531441 * k + 511882 ∧ 531441 * k + 511882 < 1048576 * k + 1009983) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1010303) 32 = 531441 * k + 512044 ∧ 531441 * k + 512044 < 1048576 * k + 1010303) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1010415) 32 = 531441 * k + 512101 ∧ 531441 * k + 512101 < 1048576 * k + 1010415) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1010503) 32 = 531441 * k + 512146 ∧ 531441 * k + 512146 < 1048576 * k + 1010503) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1011879) 32 = 531441 * k + 512843 ∧ 531441 * k + 512843 < 1048576 * k + 1011879) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1011995) 32 = 531441 * k + 512902 ∧ 531441 * k + 512902 < 1048576 * k + 1011995) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1012251) 32 = 531441 * k + 513032 ∧ 531441 * k + 513032 < 1048576 * k + 1012251) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1012351) 32 = 531441 * k + 513082 ∧ 531441 * k + 513082 < 1048576 * k + 1012351) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1012767) 32 = 531441 * k + 513293 ∧ 531441 * k + 513293 < 1048576 * k + 1012767) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1013375) 32 = 531441 * k + 513601 ∧ 531441 * k + 513601 < 1048576 * k + 1013375) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1014271) 32 = 531441 * k + 514055 ∧ 531441 * k + 514055 < 1048576 * k + 1014271) ∧
  R := by
  exact ⟨CollatzM20Shard128.descent_mod1048576_1004059, ⟨CollatzM20Shard128.descent_mod1048576_1004415, ⟨CollatzM20Shard128.descent_mod1048576_1005887, ⟨CollatzM20Shard128.descent_mod1048576_1006463, ⟨CollatzM20Shard128.descent_mod1048576_1007231, ⟨CollatzM20Shard128.descent_mod1048576_1007783, ⟨CollatzM20Shard128.descent_mod1048576_1008255, ⟨CollatzM20Shard128.descent_mod1048576_1008799, ⟨CollatzM20Shard128.descent_mod1048576_1009535, ⟨CollatzM20Shard128.descent_mod1048576_1009983, ⟨CollatzM20Shard128.descent_mod1048576_1010303, ⟨CollatzM20Shard128.descent_mod1048576_1010415, ⟨CollatzM20Shard128.descent_mod1048576_1010503, ⟨CollatzM20Shard128.descent_mod1048576_1011879, ⟨CollatzM20Shard128.descent_mod1048576_1011995, ⟨CollatzM20Shard128.descent_mod1048576_1012251, ⟨CollatzM20Shard128.descent_mod1048576_1012351, ⟨CollatzM20Shard128.descent_mod1048576_1012767, ⟨CollatzM20Shard128.descent_mod1048576_1013375, ⟨CollatzM20Shard128.descent_mod1048576_1014271, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
