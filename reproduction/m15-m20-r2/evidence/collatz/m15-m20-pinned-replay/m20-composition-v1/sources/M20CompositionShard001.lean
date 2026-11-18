import M20Shard001

namespace CollatzM20CompositionV1

theorem chunk001 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 239) 32 = 531441 * k + 122 ∧ 531441 * k + 122 < 1048576 * k + 239) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 487) 32 = 531441 * k + 248 ∧ 531441 * k + 248 < 1048576 * k + 487) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 763) 32 = 531441 * k + 388 ∧ 531441 * k + 388 < 1048576 * k + 763) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 1127) 32 = 531441 * k + 572 ∧ 531441 * k + 572 < 1048576 * k + 1127) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 1255) 32 = 531441 * k + 637 ∧ 531441 * k + 637 < 1048576 * k + 1255) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 1439) 32 = 531441 * k + 730 ∧ 531441 * k + 730 < 1048576 * k + 1439) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 1511) 32 = 531441 * k + 767 ∧ 531441 * k + 767 < 1048576 * k + 1511) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 2139) 32 = 531441 * k + 1085 ∧ 531441 * k + 1085 < 1048576 * k + 2139) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 2175) 32 = 531441 * k + 1103 ∧ 531441 * k + 1103 < 1048576 * k + 2175) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 2255) 32 = 531441 * k + 1144 ∧ 531441 * k + 1144 < 1048576 * k + 2255) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 2511) 32 = 531441 * k + 1274 ∧ 531441 * k + 1274 < 1048576 * k + 2511) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 2879) 32 = 531441 * k + 1460 ∧ 531441 * k + 1460 < 1048576 * k + 2879) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 3199) 32 = 531441 * k + 1622 ∧ 531441 * k + 1622 < 1048576 * k + 3199) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 3279) 32 = 531441 * k + 1663 ∧ 531441 * k + 1663 < 1048576 * k + 3279) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 3871) 32 = 531441 * k + 1963 ∧ 531441 * k + 1963 < 1048576 * k + 3871) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 4167) 32 = 531441 * k + 2113 ∧ 531441 * k + 2113 < 1048576 * k + 4167) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 4351) 32 = 531441 * k + 2206 ∧ 531441 * k + 2206 < 1048576 * k + 4351) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 4511) 32 = 531441 * k + 2287 ∧ 531441 * k + 2287 < 1048576 * k + 4511) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 5211) 32 = 531441 * k + 2642 ∧ 531441 * k + 2642 < 1048576 * k + 5211) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 5223) 32 = 531441 * k + 2648 ∧ 531441 * k + 2648 < 1048576 * k + 5223) ∧
  R := by
  exact ⟨CollatzM20Shard001.descent_mod1048576_239, ⟨CollatzM20Shard001.descent_mod1048576_487, ⟨CollatzM20Shard001.descent_mod1048576_763, ⟨CollatzM20Shard001.descent_mod1048576_1127, ⟨CollatzM20Shard001.descent_mod1048576_1255, ⟨CollatzM20Shard001.descent_mod1048576_1439, ⟨CollatzM20Shard001.descent_mod1048576_1511, ⟨CollatzM20Shard001.descent_mod1048576_2139, ⟨CollatzM20Shard001.descent_mod1048576_2175, ⟨CollatzM20Shard001.descent_mod1048576_2255, ⟨CollatzM20Shard001.descent_mod1048576_2511, ⟨CollatzM20Shard001.descent_mod1048576_2879, ⟨CollatzM20Shard001.descent_mod1048576_3199, ⟨CollatzM20Shard001.descent_mod1048576_3279, ⟨CollatzM20Shard001.descent_mod1048576_3871, ⟨CollatzM20Shard001.descent_mod1048576_4167, ⟨CollatzM20Shard001.descent_mod1048576_4351, ⟨CollatzM20Shard001.descent_mod1048576_4511, ⟨CollatzM20Shard001.descent_mod1048576_5211, ⟨CollatzM20Shard001.descent_mod1048576_5223, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
