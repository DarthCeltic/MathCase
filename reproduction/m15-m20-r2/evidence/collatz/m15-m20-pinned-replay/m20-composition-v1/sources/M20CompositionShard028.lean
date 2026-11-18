import M20Shard028

namespace CollatzM20CompositionV1

theorem chunk028 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 199935) 32 = 531441 * k + 101332 ∧ 531441 * k + 101332 < 1048576 * k + 199935) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 200007) 32 = 531441 * k + 101369 ∧ 531441 * k + 101369 < 1048576 * k + 200007) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 200475) 32 = 531441 * k + 101606 ∧ 531441 * k + 101606 < 1048576 * k + 200475) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 200751) 32 = 531441 * k + 101746 ∧ 531441 * k + 101746 < 1048576 * k + 200751) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 201007) 32 = 531441 * k + 101876 ∧ 531441 * k + 101876 < 1048576 * k + 201007) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 201327) 32 = 531441 * k + 102038 ∧ 531441 * k + 102038 < 1048576 * k + 201327) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 201375) 32 = 531441 * k + 102062 ∧ 531441 * k + 102062 < 1048576 * k + 201375) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 201499) 32 = 531441 * k + 102125 ∧ 531441 * k + 102125 < 1048576 * k + 201499) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 201775) 32 = 531441 * k + 102265 ∧ 531441 * k + 102265 < 1048576 * k + 201775) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 202663) 32 = 531441 * k + 102715 ∧ 531441 * k + 102715 < 1048576 * k + 202663) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 202687) 32 = 531441 * k + 102727 ∧ 531441 * k + 102727 < 1048576 * k + 202687) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 202991) 32 = 531441 * k + 102881 ∧ 531441 * k + 102881 < 1048576 * k + 202991) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 203007) 32 = 531441 * k + 102889 ∧ 531441 * k + 102889 < 1048576 * k + 203007) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 205287) 32 = 531441 * k + 104045 ∧ 531441 * k + 104045 < 1048576 * k + 205287) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 205563) 32 = 531441 * k + 104185 ∧ 531441 * k + 104185 < 1048576 * k + 205563) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 206079) 32 = 531441 * k + 104446 ∧ 531441 * k + 104446 < 1048576 * k + 206079) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 207055) 32 = 531441 * k + 104941 ∧ 531441 * k + 104941 < 1048576 * k + 207055) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 207103) 32 = 531441 * k + 104965 ∧ 531441 * k + 104965 < 1048576 * k + 207103) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 207311) 32 = 531441 * k + 105071 ∧ 531441 * k + 105071 < 1048576 * k + 207311) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 207519) 32 = 531441 * k + 105176 ∧ 531441 * k + 105176 < 1048576 * k + 207519) ∧
  R := by
  exact ⟨CollatzM20Shard028.descent_mod1048576_199935, ⟨CollatzM20Shard028.descent_mod1048576_200007, ⟨CollatzM20Shard028.descent_mod1048576_200475, ⟨CollatzM20Shard028.descent_mod1048576_200751, ⟨CollatzM20Shard028.descent_mod1048576_201007, ⟨CollatzM20Shard028.descent_mod1048576_201327, ⟨CollatzM20Shard028.descent_mod1048576_201375, ⟨CollatzM20Shard028.descent_mod1048576_201499, ⟨CollatzM20Shard028.descent_mod1048576_201775, ⟨CollatzM20Shard028.descent_mod1048576_202663, ⟨CollatzM20Shard028.descent_mod1048576_202687, ⟨CollatzM20Shard028.descent_mod1048576_202991, ⟨CollatzM20Shard028.descent_mod1048576_203007, ⟨CollatzM20Shard028.descent_mod1048576_205287, ⟨CollatzM20Shard028.descent_mod1048576_205563, ⟨CollatzM20Shard028.descent_mod1048576_206079, ⟨CollatzM20Shard028.descent_mod1048576_207055, ⟨CollatzM20Shard028.descent_mod1048576_207103, ⟨CollatzM20Shard028.descent_mod1048576_207311, ⟨CollatzM20Shard028.descent_mod1048576_207519, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
