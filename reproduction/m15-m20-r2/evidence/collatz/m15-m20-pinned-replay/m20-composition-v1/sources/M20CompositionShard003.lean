import M20Shard003

namespace CollatzM20CompositionV1

theorem chunk003 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 10471) 32 = 531441 * k + 5308 ∧ 531441 * k + 5308 < 1048576 * k + 10471) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 10687) 32 = 531441 * k + 5417 ∧ 531441 * k + 5417 < 1048576 * k + 10687) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 11111) 32 = 531441 * k + 5632 ∧ 531441 * k + 5632 < 1048576 * k + 11111) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 11355) 32 = 531441 * k + 5756 ∧ 531441 * k + 5756 < 1048576 * k + 11355) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 11471) 32 = 531441 * k + 5815 ∧ 531441 * k + 5815 < 1048576 * k + 11471) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 11711) 32 = 531441 * k + 5936 ∧ 531441 * k + 5936 < 1048576 * k + 11711) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 11803) 32 = 531441 * k + 5983 ∧ 531441 * k + 5983 < 1048576 * k + 11803) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 12379) 32 = 531441 * k + 6275 ∧ 531441 * k + 6275 < 1048576 * k + 12379) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 12847) 32 = 531441 * k + 6512 ∧ 531441 * k + 6512 < 1048576 * k + 12847) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 13159) 32 = 531441 * k + 6670 ∧ 531441 * k + 6670 < 1048576 * k + 13159) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 13871) 32 = 531441 * k + 7031 ∧ 531441 * k + 7031 < 1048576 * k + 13871) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 14183) 32 = 531441 * k + 7189 ∧ 531441 * k + 7189 < 1048576 * k + 14183) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 14463) 32 = 531441 * k + 7331 ∧ 531441 * k + 7331 < 1048576 * k + 14463) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 14587) 32 = 531441 * k + 7394 ∧ 531441 * k + 7394 < 1048576 * k + 14587) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 15231) 32 = 531441 * k + 7720 ∧ 531441 * k + 7720 < 1048576 * k + 15231) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 15807) 32 = 531441 * k + 8012 ∧ 531441 * k + 8012 < 1048576 * k + 15807) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 16079) 32 = 531441 * k + 8150 ∧ 531441 * k + 8150 < 1048576 * k + 16079) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 16487) 32 = 531441 * k + 8357 ∧ 531441 * k + 8357 < 1048576 * k + 16487) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 16799) 32 = 531441 * k + 8515 ∧ 531441 * k + 8515 < 1048576 * k + 16799) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 16943) 32 = 531441 * k + 8588 ∧ 531441 * k + 8588 < 1048576 * k + 16943) ∧
  R := by
  exact ⟨CollatzM20Shard003.descent_mod1048576_10471, ⟨CollatzM20Shard003.descent_mod1048576_10687, ⟨CollatzM20Shard003.descent_mod1048576_11111, ⟨CollatzM20Shard003.descent_mod1048576_11355, ⟨CollatzM20Shard003.descent_mod1048576_11471, ⟨CollatzM20Shard003.descent_mod1048576_11711, ⟨CollatzM20Shard003.descent_mod1048576_11803, ⟨CollatzM20Shard003.descent_mod1048576_12379, ⟨CollatzM20Shard003.descent_mod1048576_12847, ⟨CollatzM20Shard003.descent_mod1048576_13159, ⟨CollatzM20Shard003.descent_mod1048576_13871, ⟨CollatzM20Shard003.descent_mod1048576_14183, ⟨CollatzM20Shard003.descent_mod1048576_14463, ⟨CollatzM20Shard003.descent_mod1048576_14587, ⟨CollatzM20Shard003.descent_mod1048576_15231, ⟨CollatzM20Shard003.descent_mod1048576_15807, ⟨CollatzM20Shard003.descent_mod1048576_16079, ⟨CollatzM20Shard003.descent_mod1048576_16487, ⟨CollatzM20Shard003.descent_mod1048576_16799, ⟨CollatzM20Shard003.descent_mod1048576_16943, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
