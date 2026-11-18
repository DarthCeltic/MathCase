import M20Shard030

namespace CollatzM20CompositionV1

theorem chunk030 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 216935) 32 = 531441 * k + 109948 ∧ 531441 * k + 109948 < 1048576 * k + 216935) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 216999) 32 = 531441 * k + 109981 ∧ 531441 * k + 109981 < 1048576 * k + 216999) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 217159) 32 = 531441 * k + 110062 ∧ 531441 * k + 110062 < 1048576 * k + 217159) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 218215) 32 = 531441 * k + 110597 ∧ 531441 * k + 110597 < 1048576 * k + 218215) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 218559) 32 = 531441 * k + 110771 ∧ 531441 * k + 110771 < 1048576 * k + 218559) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 218983) 32 = 531441 * k + 110986 ∧ 531441 * k + 110986 < 1048576 * k + 218983) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 219239) 32 = 531441 * k + 111116 ∧ 531441 * k + 111116 < 1048576 * k + 219239) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 219583) 32 = 531441 * k + 111290 ∧ 531441 * k + 111290 < 1048576 * k + 219583) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 220719) 32 = 531441 * k + 111866 ∧ 531441 * k + 111866 < 1048576 * k + 220719) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 221031) 32 = 531441 * k + 112024 ∧ 531441 * k + 112024 < 1048576 * k + 221031) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 221435) 32 = 531441 * k + 112229 ∧ 531441 * k + 112229 < 1048576 * k + 221435) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 221599) 32 = 531441 * k + 112312 ∧ 531441 * k + 112312 < 1048576 * k + 221599) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 221631) 32 = 531441 * k + 112328 ∧ 531441 * k + 112328 < 1048576 * k + 221631) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 222015) 32 = 531441 * k + 112523 ∧ 531441 * k + 112523 < 1048576 * k + 222015) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 222055) 32 = 531441 * k + 112543 ∧ 531441 * k + 112543 < 1048576 * k + 222055) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 222175) 32 = 531441 * k + 112604 ∧ 531441 * k + 112604 < 1048576 * k + 222175) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 222335) 32 = 531441 * k + 112685 ∧ 531441 * k + 112685 < 1048576 * k + 222335) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 223303) 32 = 531441 * k + 113176 ∧ 531441 * k + 113176 < 1048576 * k + 223303) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 223463) 32 = 531441 * k + 113257 ∧ 531441 * k + 113257 < 1048576 * k + 223463) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 224103) 32 = 531441 * k + 113581 ∧ 531441 * k + 113581 < 1048576 * k + 224103) ∧
  R := by
  exact ⟨CollatzM20Shard030.descent_mod1048576_216935, ⟨CollatzM20Shard030.descent_mod1048576_216999, ⟨CollatzM20Shard030.descent_mod1048576_217159, ⟨CollatzM20Shard030.descent_mod1048576_218215, ⟨CollatzM20Shard030.descent_mod1048576_218559, ⟨CollatzM20Shard030.descent_mod1048576_218983, ⟨CollatzM20Shard030.descent_mod1048576_219239, ⟨CollatzM20Shard030.descent_mod1048576_219583, ⟨CollatzM20Shard030.descent_mod1048576_220719, ⟨CollatzM20Shard030.descent_mod1048576_221031, ⟨CollatzM20Shard030.descent_mod1048576_221435, ⟨CollatzM20Shard030.descent_mod1048576_221599, ⟨CollatzM20Shard030.descent_mod1048576_221631, ⟨CollatzM20Shard030.descent_mod1048576_222015, ⟨CollatzM20Shard030.descent_mod1048576_222055, ⟨CollatzM20Shard030.descent_mod1048576_222175, ⟨CollatzM20Shard030.descent_mod1048576_222335, ⟨CollatzM20Shard030.descent_mod1048576_223303, ⟨CollatzM20Shard030.descent_mod1048576_223463, ⟨CollatzM20Shard030.descent_mod1048576_224103, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
