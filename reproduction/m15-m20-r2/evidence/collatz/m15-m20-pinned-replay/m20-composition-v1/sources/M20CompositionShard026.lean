import M20Shard026

namespace CollatzM20CompositionV1

theorem chunk026 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 190111) 32 = 531441 * k + 96353 ∧ 531441 * k + 96353 < 1048576 * k + 190111) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 190299) 32 = 531441 * k + 96449 ∧ 531441 * k + 96449 < 1048576 * k + 190299) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 190459) 32 = 531441 * k + 96530 ∧ 531441 * k + 96530 < 1048576 * k + 190459) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 190791) 32 = 531441 * k + 96698 ∧ 531441 * k + 96698 < 1048576 * k + 190791) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191067) 32 = 531441 * k + 96838 ∧ 531441 * k + 96838 < 1048576 * k + 191067) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191227) 32 = 531441 * k + 96919 ∧ 531441 * k + 96919 < 1048576 * k + 191227) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191259) 32 = 531441 * k + 96935 ∧ 531441 * k + 96935 < 1048576 * k + 191259) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191423) 32 = 531441 * k + 97018 ∧ 531441 * k + 97018 < 1048576 * k + 191423) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191727) 32 = 531441 * k + 97172 ∧ 531441 * k + 97172 < 1048576 * k + 191727) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191791) 32 = 531441 * k + 97205 ∧ 531441 * k + 97205 < 1048576 * k + 191791) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191951) 32 = 531441 * k + 97286 ∧ 531441 * k + 97286 < 1048576 * k + 191951) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 192111) 32 = 531441 * k + 97367 ∧ 531441 * k + 97367 < 1048576 * k + 192111) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 192559) 32 = 531441 * k + 97594 ∧ 531441 * k + 97594 < 1048576 * k + 192559) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 192815) 32 = 531441 * k + 97724 ∧ 531441 * k + 97724 < 1048576 * k + 192815) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 192999) 32 = 531441 * k + 97817 ∧ 531441 * k + 97817 < 1048576 * k + 192999) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 193135) 32 = 531441 * k + 97886 ∧ 531441 * k + 97886 < 1048576 * k + 193135) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 193183) 32 = 531441 * k + 97910 ∧ 531441 * k + 97910 < 1048576 * k + 193183) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 193471) 32 = 531441 * k + 98056 ∧ 531441 * k + 98056 < 1048576 * k + 193471) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 193727) 32 = 531441 * k + 98186 ∧ 531441 * k + 98186 < 1048576 * k + 193727) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 193863) 32 = 531441 * k + 98255 ∧ 531441 * k + 98255 < 1048576 * k + 193863) ∧
  R := by
  exact ⟨CollatzM20Shard026.descent_mod1048576_190111, ⟨CollatzM20Shard026.descent_mod1048576_190299, ⟨CollatzM20Shard026.descent_mod1048576_190459, ⟨CollatzM20Shard026.descent_mod1048576_190791, ⟨CollatzM20Shard026.descent_mod1048576_191067, ⟨CollatzM20Shard026.descent_mod1048576_191227, ⟨CollatzM20Shard026.descent_mod1048576_191259, ⟨CollatzM20Shard026.descent_mod1048576_191423, ⟨CollatzM20Shard026.descent_mod1048576_191727, ⟨CollatzM20Shard026.descent_mod1048576_191791, ⟨CollatzM20Shard026.descent_mod1048576_191951, ⟨CollatzM20Shard026.descent_mod1048576_192111, ⟨CollatzM20Shard026.descent_mod1048576_192559, ⟨CollatzM20Shard026.descent_mod1048576_192815, ⟨CollatzM20Shard026.descent_mod1048576_192999, ⟨CollatzM20Shard026.descent_mod1048576_193135, ⟨CollatzM20Shard026.descent_mod1048576_193183, ⟨CollatzM20Shard026.descent_mod1048576_193471, ⟨CollatzM20Shard026.descent_mod1048576_193727, ⟨CollatzM20Shard026.descent_mod1048576_193863, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
