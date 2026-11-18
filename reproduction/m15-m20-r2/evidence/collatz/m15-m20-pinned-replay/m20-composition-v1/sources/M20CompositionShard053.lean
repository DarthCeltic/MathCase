import M20Shard053

namespace CollatzM20CompositionV1

theorem chunk053 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 416507) 32 = 531441 * k + 211096 ∧ 531441 * k + 211096 < 1048576 * k + 416507) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 416763) 32 = 531441 * k + 211226 ∧ 531441 * k + 211226 < 1048576 * k + 416763) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 416871) 32 = 531441 * k + 211280 ∧ 531441 * k + 211280 < 1048576 * k + 416871) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 416895) 32 = 531441 * k + 211292 ∧ 531441 * k + 211292 < 1048576 * k + 416895) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 417531) 32 = 531441 * k + 211615 ∧ 531441 * k + 211615 < 1048576 * k + 417531) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 419931) 32 = 531441 * k + 212831 ∧ 531441 * k + 212831 < 1048576 * k + 419931) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 419943) 32 = 531441 * k + 212837 ∧ 531441 * k + 212837 < 1048576 * k + 419943) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 419967) 32 = 531441 * k + 212849 ∧ 531441 * k + 212849 < 1048576 * k + 419967) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 420095) 32 = 531441 * k + 212914 ∧ 531441 * k + 212914 < 1048576 * k + 420095) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 420511) 32 = 531441 * k + 213125 ∧ 531441 * k + 213125 < 1048576 * k + 420511) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 420671) 32 = 531441 * k + 213206 ∧ 531441 * k + 213206 < 1048576 * k + 420671) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 420967) 32 = 531441 * k + 213356 ∧ 531441 * k + 213356 < 1048576 * k + 420967) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 421799) 32 = 531441 * k + 213778 ∧ 531441 * k + 213778 < 1048576 * k + 421799) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 421959) 32 = 531441 * k + 213859 ∧ 531441 * k + 213859 < 1048576 * k + 421959) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 422687) 32 = 531441 * k + 214228 ∧ 531441 * k + 214228 < 1048576 * k + 422687) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 423003) 32 = 531441 * k + 214388 ∧ 531441 * k + 214388 < 1048576 * k + 423003) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 423015) 32 = 531441 * k + 214394 ∧ 531441 * k + 214394 < 1048576 * k + 423015) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 423167) 32 = 531441 * k + 214471 ∧ 531441 * k + 214471 < 1048576 * k + 423167) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 424063) 32 = 531441 * k + 214925 ∧ 531441 * k + 214925 < 1048576 * k + 424063) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 424767) 32 = 531441 * k + 215282 ∧ 531441 * k + 215282 < 1048576 * k + 424767) ∧
  R := by
  exact ⟨CollatzM20Shard053.descent_mod1048576_416507, ⟨CollatzM20Shard053.descent_mod1048576_416763, ⟨CollatzM20Shard053.descent_mod1048576_416871, ⟨CollatzM20Shard053.descent_mod1048576_416895, ⟨CollatzM20Shard053.descent_mod1048576_417531, ⟨CollatzM20Shard053.descent_mod1048576_419931, ⟨CollatzM20Shard053.descent_mod1048576_419943, ⟨CollatzM20Shard053.descent_mod1048576_419967, ⟨CollatzM20Shard053.descent_mod1048576_420095, ⟨CollatzM20Shard053.descent_mod1048576_420511, ⟨CollatzM20Shard053.descent_mod1048576_420671, ⟨CollatzM20Shard053.descent_mod1048576_420967, ⟨CollatzM20Shard053.descent_mod1048576_421799, ⟨CollatzM20Shard053.descent_mod1048576_421959, ⟨CollatzM20Shard053.descent_mod1048576_422687, ⟨CollatzM20Shard053.descent_mod1048576_423003, ⟨CollatzM20Shard053.descent_mod1048576_423015, ⟨CollatzM20Shard053.descent_mod1048576_423167, ⟨CollatzM20Shard053.descent_mod1048576_424063, ⟨CollatzM20Shard053.descent_mod1048576_424767, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
