import M20Shard110

namespace CollatzM20CompositionV1

theorem chunk110 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 859103) 32 = 531441 * k + 435413 ∧ 531441 * k + 435413 < 1048576 * k + 859103) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 859119) 32 = 531441 * k + 435421 ∧ 531441 * k + 435421 < 1048576 * k + 859119) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 859695) 32 = 531441 * k + 435713 ∧ 531441 * k + 435713 < 1048576 * k + 859695) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 860263) 32 = 531441 * k + 436001 ∧ 531441 * k + 436001 < 1048576 * k + 860263) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 860927) 32 = 531441 * k + 436337 ∧ 531441 * k + 436337 < 1048576 * k + 860927) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 861275) 32 = 531441 * k + 436514 ∧ 531441 * k + 436514 < 1048576 * k + 861275) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 861435) 32 = 531441 * k + 436595 ∧ 531441 * k + 436595 < 1048576 * k + 861435) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 861951) 32 = 531441 * k + 436856 ∧ 531441 * k + 436856 < 1048576 * k + 861951) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 862079) 32 = 531441 * k + 436921 ∧ 531441 * k + 436921 < 1048576 * k + 862079) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 862459) 32 = 531441 * k + 437114 ∧ 531441 * k + 437114 < 1048576 * k + 862459) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 862927) 32 = 531441 * k + 437351 ∧ 531441 * k + 437351 < 1048576 * k + 862927) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 862951) 32 = 531441 * k + 437363 ∧ 531441 * k + 437363 < 1048576 * k + 862951) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 863951) 32 = 531441 * k + 437870 ∧ 531441 * k + 437870 < 1048576 * k + 863951) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 864703) 32 = 531441 * k + 438251 ∧ 531441 * k + 438251 < 1048576 * k + 864703) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 865311) 32 = 531441 * k + 438559 ∧ 531441 * k + 438559 < 1048576 * k + 865311) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 866023) 32 = 531441 * k + 438920 ∧ 531441 * k + 438920 < 1048576 * k + 866023) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 866047) 32 = 531441 * k + 438932 ∧ 531441 * k + 438932 < 1048576 * k + 866047) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 866159) 32 = 531441 * k + 438989 ∧ 531441 * k + 438989 < 1048576 * k + 866159) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 867023) 32 = 531441 * k + 439427 ∧ 531441 * k + 439427 < 1048576 * k + 867023) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 867295) 32 = 531441 * k + 439565 ∧ 531441 * k + 439565 < 1048576 * k + 867295) ∧
  R := by
  exact ⟨CollatzM20Shard110.descent_mod1048576_859103, ⟨CollatzM20Shard110.descent_mod1048576_859119, ⟨CollatzM20Shard110.descent_mod1048576_859695, ⟨CollatzM20Shard110.descent_mod1048576_860263, ⟨CollatzM20Shard110.descent_mod1048576_860927, ⟨CollatzM20Shard110.descent_mod1048576_861275, ⟨CollatzM20Shard110.descent_mod1048576_861435, ⟨CollatzM20Shard110.descent_mod1048576_861951, ⟨CollatzM20Shard110.descent_mod1048576_862079, ⟨CollatzM20Shard110.descent_mod1048576_862459, ⟨CollatzM20Shard110.descent_mod1048576_862927, ⟨CollatzM20Shard110.descent_mod1048576_862951, ⟨CollatzM20Shard110.descent_mod1048576_863951, ⟨CollatzM20Shard110.descent_mod1048576_864703, ⟨CollatzM20Shard110.descent_mod1048576_865311, ⟨CollatzM20Shard110.descent_mod1048576_866023, ⟨CollatzM20Shard110.descent_mod1048576_866047, ⟨CollatzM20Shard110.descent_mod1048576_866159, ⟨CollatzM20Shard110.descent_mod1048576_867023, ⟨CollatzM20Shard110.descent_mod1048576_867295, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
