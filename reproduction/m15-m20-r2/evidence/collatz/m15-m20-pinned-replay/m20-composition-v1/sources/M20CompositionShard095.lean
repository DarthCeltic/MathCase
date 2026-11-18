import M20Shard095

namespace CollatzM20CompositionV1

theorem chunk095 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 735515) 32 = 531441 * k + 372776 ∧ 531441 * k + 372776 < 1048576 * k + 735515) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 735551) 32 = 531441 * k + 372794 ∧ 531441 * k + 372794 < 1048576 * k + 735551) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 735711) 32 = 531441 * k + 372875 ∧ 531441 * k + 372875 < 1048576 * k + 735711) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 735871) 32 = 531441 * k + 372956 ∧ 531441 * k + 372956 < 1048576 * k + 735871) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 736575) 32 = 531441 * k + 373313 ∧ 531441 * k + 373313 < 1048576 * k + 736575) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 737007) 32 = 531441 * k + 373532 ∧ 531441 * k + 373532 < 1048576 * k + 737007) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 737691) 32 = 531441 * k + 373879 ∧ 531441 * k + 373879 < 1048576 * k + 737691) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 737775) 32 = 531441 * k + 373921 ∧ 531441 * k + 373921 < 1048576 * k + 737775) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 738783) 32 = 531441 * k + 374432 ∧ 531441 * k + 374432 < 1048576 * k + 738783) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 739183) 32 = 531441 * k + 374635 ∧ 531441 * k + 374635 < 1048576 * k + 739183) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 739807) 32 = 531441 * k + 374951 ∧ 531441 * k + 374951 < 1048576 * k + 739807) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 739967) 32 = 531441 * k + 375032 ∧ 531441 * k + 375032 < 1048576 * k + 739967) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 740079) 32 = 531441 * k + 375089 ∧ 531441 * k + 375089 < 1048576 * k + 740079) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 740207) 32 = 531441 * k + 375154 ∧ 531441 * k + 375154 < 1048576 * k + 740207) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 740847) 32 = 531441 * k + 375478 ∧ 531441 * k + 375478 < 1048576 * k + 740847) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 741279) 32 = 531441 * k + 375697 ∧ 531441 * k + 375697 < 1048576 * k + 741279) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 741855) 32 = 531441 * k + 375989 ∧ 531441 * k + 375989 < 1048576 * k + 741855) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 741979) 32 = 531441 * k + 376052 ∧ 531441 * k + 376052 < 1048576 * k + 741979) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 742015) 32 = 531441 * k + 376070 ∧ 531441 * k + 376070 < 1048576 * k + 742015) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 743919) 32 = 531441 * k + 377035 ∧ 531441 * k + 377035 < 1048576 * k + 743919) ∧
  R := by
  exact ⟨CollatzM20Shard095.descent_mod1048576_735515, ⟨CollatzM20Shard095.descent_mod1048576_735551, ⟨CollatzM20Shard095.descent_mod1048576_735711, ⟨CollatzM20Shard095.descent_mod1048576_735871, ⟨CollatzM20Shard095.descent_mod1048576_736575, ⟨CollatzM20Shard095.descent_mod1048576_737007, ⟨CollatzM20Shard095.descent_mod1048576_737691, ⟨CollatzM20Shard095.descent_mod1048576_737775, ⟨CollatzM20Shard095.descent_mod1048576_738783, ⟨CollatzM20Shard095.descent_mod1048576_739183, ⟨CollatzM20Shard095.descent_mod1048576_739807, ⟨CollatzM20Shard095.descent_mod1048576_739967, ⟨CollatzM20Shard095.descent_mod1048576_740079, ⟨CollatzM20Shard095.descent_mod1048576_740207, ⟨CollatzM20Shard095.descent_mod1048576_740847, ⟨CollatzM20Shard095.descent_mod1048576_741279, ⟨CollatzM20Shard095.descent_mod1048576_741855, ⟨CollatzM20Shard095.descent_mod1048576_741979, ⟨CollatzM20Shard095.descent_mod1048576_742015, ⟨CollatzM20Shard095.descent_mod1048576_743919, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
