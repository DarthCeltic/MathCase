import M20Shard058

namespace CollatzM20CompositionV1

theorem chunk058 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 455399) 32 = 531441 * k + 230807 ∧ 531441 * k + 230807 < 1048576 * k + 455399) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 455707) 32 = 531441 * k + 230963 ∧ 531441 * k + 230963 < 1048576 * k + 455707) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 456399) 32 = 531441 * k + 231314 ∧ 531441 * k + 231314 < 1048576 * k + 456399) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 456559) 32 = 531441 * k + 231395 ∧ 531441 * k + 231395 < 1048576 * k + 456559) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 457327) 32 = 531441 * k + 231784 ∧ 531441 * k + 231784 < 1048576 * k + 457327) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 457759) 32 = 531441 * k + 232003 ∧ 531441 * k + 232003 < 1048576 * k + 457759) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 457895) 32 = 531441 * k + 232072 ∧ 531441 * k + 232072 < 1048576 * k + 457895) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 457919) 32 = 531441 * k + 232084 ∧ 531441 * k + 232084 < 1048576 * k + 457919) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 458779) 32 = 531441 * k + 232520 ∧ 531441 * k + 232520 < 1048576 * k + 458779) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 459247) 32 = 531441 * k + 232757 ∧ 531441 * k + 232757 < 1048576 * k + 459247) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 459263) 32 = 531441 * k + 232765 ∧ 531441 * k + 232765 < 1048576 * k + 459263) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 459803) 32 = 531441 * k + 233039 ∧ 531441 * k + 233039 < 1048576 * k + 459803) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 460519) 32 = 531441 * k + 233402 ∧ 531441 * k + 233402 < 1048576 * k + 460519) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 460635) 32 = 531441 * k + 233461 ∧ 531441 * k + 233461 < 1048576 * k + 460635) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 460795) 32 = 531441 * k + 233542 ∧ 531441 * k + 233542 < 1048576 * k + 460795) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 461127) 32 = 531441 * k + 233710 ∧ 531441 * k + 233710 < 1048576 * k + 461127) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 461567) 32 = 531441 * k + 233933 ∧ 531441 * k + 233933 < 1048576 * k + 461567) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 461851) 32 = 531441 * k + 234077 ∧ 531441 * k + 234077 < 1048576 * k + 461851) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 462015) 32 = 531441 * k + 234160 ∧ 531441 * k + 234160 < 1048576 * k + 462015) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 462127) 32 = 531441 * k + 234217 ∧ 531441 * k + 234217 < 1048576 * k + 462127) ∧
  R := by
  exact ⟨CollatzM20Shard058.descent_mod1048576_455399, ⟨CollatzM20Shard058.descent_mod1048576_455707, ⟨CollatzM20Shard058.descent_mod1048576_456399, ⟨CollatzM20Shard058.descent_mod1048576_456559, ⟨CollatzM20Shard058.descent_mod1048576_457327, ⟨CollatzM20Shard058.descent_mod1048576_457759, ⟨CollatzM20Shard058.descent_mod1048576_457895, ⟨CollatzM20Shard058.descent_mod1048576_457919, ⟨CollatzM20Shard058.descent_mod1048576_458779, ⟨CollatzM20Shard058.descent_mod1048576_459247, ⟨CollatzM20Shard058.descent_mod1048576_459263, ⟨CollatzM20Shard058.descent_mod1048576_459803, ⟨CollatzM20Shard058.descent_mod1048576_460519, ⟨CollatzM20Shard058.descent_mod1048576_460635, ⟨CollatzM20Shard058.descent_mod1048576_460795, ⟨CollatzM20Shard058.descent_mod1048576_461127, ⟨CollatzM20Shard058.descent_mod1048576_461567, ⟨CollatzM20Shard058.descent_mod1048576_461851, ⟨CollatzM20Shard058.descent_mod1048576_462015, ⟨CollatzM20Shard058.descent_mod1048576_462127, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
