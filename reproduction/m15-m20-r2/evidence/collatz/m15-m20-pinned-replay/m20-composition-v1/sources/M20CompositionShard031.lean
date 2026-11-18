import M20Shard031

namespace CollatzM20CompositionV1

theorem chunk031 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 224127) 32 = 531441 * k + 113593 ∧ 531441 * k + 113593 < 1048576 * k + 224127) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 224239) 32 = 531441 * k + 113650 ∧ 531441 * k + 113650 < 1048576 * k + 224239) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 224507) 32 = 531441 * k + 113786 ∧ 531441 * k + 113786 < 1048576 * k + 224507) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 224671) 32 = 531441 * k + 113869 ∧ 531441 * k + 113869 < 1048576 * k + 224671) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 224795) 32 = 531441 * k + 113932 ∧ 531441 * k + 113932 < 1048576 * k + 224795) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 224815) 32 = 531441 * k + 113942 ∧ 531441 * k + 113942 < 1048576 * k + 224815) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 225371) 32 = 531441 * k + 114224 ∧ 531441 * k + 114224 < 1048576 * k + 225371) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 225727) 32 = 531441 * k + 114404 ∧ 531441 * k + 114404 < 1048576 * k + 225727) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 226175) 32 = 531441 * k + 114631 ∧ 531441 * k + 114631 < 1048576 * k + 226175) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 226271) 32 = 531441 * k + 114680 ∧ 531441 * k + 114680 < 1048576 * k + 226271) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 226863) 32 = 531441 * k + 114980 ∧ 531441 * k + 114980 < 1048576 * k + 226863) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 227175) 32 = 531441 * k + 115138 ∧ 531441 * k + 115138 < 1048576 * k + 227175) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 227431) 32 = 531441 * k + 115268 ∧ 531441 * k + 115268 < 1048576 * k + 227431) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 228199) 32 = 531441 * k + 115657 ∧ 531441 * k + 115657 < 1048576 * k + 228199) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 228223) 32 = 531441 * k + 115669 ∧ 531441 * k + 115669 < 1048576 * k + 228223) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 228603) 32 = 531441 * k + 115862 ∧ 531441 * k + 115862 < 1048576 * k + 228603) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 229627) 32 = 531441 * k + 116381 ∧ 531441 * k + 116381 < 1048576 * k + 229627) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 229823) 32 = 531441 * k + 116480 ∧ 531441 * k + 116480 < 1048576 * k + 229823) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 229935) 32 = 531441 * k + 116537 ∧ 531441 * k + 116537 < 1048576 * k + 229935) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 230383) 32 = 531441 * k + 116764 ∧ 531441 * k + 116764 < 1048576 * k + 230383) ∧
  R := by
  exact ⟨CollatzM20Shard031.descent_mod1048576_224127, ⟨CollatzM20Shard031.descent_mod1048576_224239, ⟨CollatzM20Shard031.descent_mod1048576_224507, ⟨CollatzM20Shard031.descent_mod1048576_224671, ⟨CollatzM20Shard031.descent_mod1048576_224795, ⟨CollatzM20Shard031.descent_mod1048576_224815, ⟨CollatzM20Shard031.descent_mod1048576_225371, ⟨CollatzM20Shard031.descent_mod1048576_225727, ⟨CollatzM20Shard031.descent_mod1048576_226175, ⟨CollatzM20Shard031.descent_mod1048576_226271, ⟨CollatzM20Shard031.descent_mod1048576_226863, ⟨CollatzM20Shard031.descent_mod1048576_227175, ⟨CollatzM20Shard031.descent_mod1048576_227431, ⟨CollatzM20Shard031.descent_mod1048576_228199, ⟨CollatzM20Shard031.descent_mod1048576_228223, ⟨CollatzM20Shard031.descent_mod1048576_228603, ⟨CollatzM20Shard031.descent_mod1048576_229627, ⟨CollatzM20Shard031.descent_mod1048576_229823, ⟨CollatzM20Shard031.descent_mod1048576_229935, ⟨CollatzM20Shard031.descent_mod1048576_230383, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
