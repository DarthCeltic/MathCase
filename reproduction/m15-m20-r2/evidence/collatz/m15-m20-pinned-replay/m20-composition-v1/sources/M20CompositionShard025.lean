import M20Shard025

namespace CollatzM20CompositionV1

theorem chunk025 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 184351) 32 = 531441 * k + 93434 ∧ 531441 * k + 93434 < 1048576 * k + 184351) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 184831) 32 = 531441 * k + 93677 ∧ 531441 * k + 93677 < 1048576 * k + 184831) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 184923) 32 = 531441 * k + 93724 ∧ 531441 * k + 93724 < 1048576 * k + 184923) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 185279) 32 = 531441 * k + 93904 ∧ 531441 * k + 93904 < 1048576 * k + 185279) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 185671) 32 = 531441 * k + 94103 ∧ 531441 * k + 94103 < 1048576 * k + 185671) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 185807) 32 = 531441 * k + 94172 ∧ 531441 * k + 94172 < 1048576 * k + 185807) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 185959) 32 = 531441 * k + 94249 ∧ 531441 * k + 94249 < 1048576 * k + 185959) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 186139) 32 = 531441 * k + 94340 ∧ 531441 * k + 94340 < 1048576 * k + 186139) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 186535) 32 = 531441 * k + 94541 ∧ 531441 * k + 94541 < 1048576 * k + 186535) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 186991) 32 = 531441 * k + 94772 ∧ 531441 * k + 94772 < 1048576 * k + 186991) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 187007) 32 = 531441 * k + 94780 ∧ 531441 * k + 94780 < 1048576 * k + 187007) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 187163) 32 = 531441 * k + 94859 ∧ 531441 * k + 94859 < 1048576 * k + 187163) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 187423) 32 = 531441 * k + 94991 ∧ 531441 * k + 94991 < 1048576 * k + 187423) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 187547) 32 = 531441 * k + 95054 ∧ 531441 * k + 95054 < 1048576 * k + 187547) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 187583) 32 = 531441 * k + 95072 ∧ 531441 * k + 95072 < 1048576 * k + 187583) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 187871) 32 = 531441 * k + 95218 ∧ 531441 * k + 95218 < 1048576 * k + 187871) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 188187) 32 = 531441 * k + 95378 ∧ 531441 * k + 95378 < 1048576 * k + 188187) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 188351) 32 = 531441 * k + 95461 ∧ 531441 * k + 95461 < 1048576 * k + 188351) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 188463) 32 = 531441 * k + 95518 ∧ 531441 * k + 95518 < 1048576 * k + 188463) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 189767) 32 = 531441 * k + 96179 ∧ 531441 * k + 96179 < 1048576 * k + 189767) ∧
  R := by
  exact ⟨CollatzM20Shard025.descent_mod1048576_184351, ⟨CollatzM20Shard025.descent_mod1048576_184831, ⟨CollatzM20Shard025.descent_mod1048576_184923, ⟨CollatzM20Shard025.descent_mod1048576_185279, ⟨CollatzM20Shard025.descent_mod1048576_185671, ⟨CollatzM20Shard025.descent_mod1048576_185807, ⟨CollatzM20Shard025.descent_mod1048576_185959, ⟨CollatzM20Shard025.descent_mod1048576_186139, ⟨CollatzM20Shard025.descent_mod1048576_186535, ⟨CollatzM20Shard025.descent_mod1048576_186991, ⟨CollatzM20Shard025.descent_mod1048576_187007, ⟨CollatzM20Shard025.descent_mod1048576_187163, ⟨CollatzM20Shard025.descent_mod1048576_187423, ⟨CollatzM20Shard025.descent_mod1048576_187547, ⟨CollatzM20Shard025.descent_mod1048576_187583, ⟨CollatzM20Shard025.descent_mod1048576_187871, ⟨CollatzM20Shard025.descent_mod1048576_188187, ⟨CollatzM20Shard025.descent_mod1048576_188351, ⟨CollatzM20Shard025.descent_mod1048576_188463, ⟨CollatzM20Shard025.descent_mod1048576_189767, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
