import M20Shard036

namespace CollatzM20CompositionV1

theorem chunk036 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 262939) 32 = 531441 * k + 133264 ∧ 531441 * k + 133264 < 1048576 * k + 262939) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 263071) 32 = 531441 * k + 133331 ∧ 531441 * k + 133331 < 1048576 * k + 263071) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 263631) 32 = 531441 * k + 133615 ∧ 531441 * k + 133615 < 1048576 * k + 263631) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 263839) 32 = 531441 * k + 133720 ∧ 531441 * k + 133720 < 1048576 * k + 263839) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 264095) 32 = 531441 * k + 133850 ∧ 531441 * k + 133850 < 1048576 * k + 264095) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 264687) 32 = 531441 * k + 134150 ∧ 531441 * k + 134150 < 1048576 * k + 264687) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 265455) 32 = 531441 * k + 134539 ∧ 531441 * k + 134539 < 1048576 * k + 265455) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 265543) 32 = 531441 * k + 134584 ∧ 531441 * k + 134584 < 1048576 * k + 265543) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 266011) 32 = 531441 * k + 134821 ∧ 531441 * k + 134821 < 1048576 * k + 266011) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 266267) 32 = 531441 * k + 134951 ∧ 531441 * k + 134951 < 1048576 * k + 266267) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 266543) 32 = 531441 * k + 135091 ∧ 531441 * k + 135091 < 1048576 * k + 266543) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 266863) 32 = 531441 * k + 135253 ∧ 531441 * k + 135253 < 1048576 * k + 266863) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 266911) 32 = 531441 * k + 135277 ∧ 531441 * k + 135277 < 1048576 * k + 266911) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 267035) 32 = 531441 * k + 135340 ∧ 531441 * k + 135340 < 1048576 * k + 267035) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 268527) 32 = 531441 * k + 136096 ∧ 531441 * k + 136096 < 1048576 * k + 268527) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 270823) 32 = 531441 * k + 137260 ∧ 531441 * k + 137260 < 1048576 * k + 270823) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 271719) 32 = 531441 * k + 137714 ∧ 531441 * k + 137714 < 1048576 * k + 271719) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 272287) 32 = 531441 * k + 138002 ∧ 531441 * k + 138002 < 1048576 * k + 272287) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 272447) 32 = 531441 * k + 138083 ∧ 531441 * k + 138083 < 1048576 * k + 272447) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 272847) 32 = 531441 * k + 138286 ∧ 531441 * k + 138286 < 1048576 * k + 272847) ∧
  R := by
  exact ⟨CollatzM20Shard036.descent_mod1048576_262939, ⟨CollatzM20Shard036.descent_mod1048576_263071, ⟨CollatzM20Shard036.descent_mod1048576_263631, ⟨CollatzM20Shard036.descent_mod1048576_263839, ⟨CollatzM20Shard036.descent_mod1048576_264095, ⟨CollatzM20Shard036.descent_mod1048576_264687, ⟨CollatzM20Shard036.descent_mod1048576_265455, ⟨CollatzM20Shard036.descent_mod1048576_265543, ⟨CollatzM20Shard036.descent_mod1048576_266011, ⟨CollatzM20Shard036.descent_mod1048576_266267, ⟨CollatzM20Shard036.descent_mod1048576_266543, ⟨CollatzM20Shard036.descent_mod1048576_266863, ⟨CollatzM20Shard036.descent_mod1048576_266911, ⟨CollatzM20Shard036.descent_mod1048576_267035, ⟨CollatzM20Shard036.descent_mod1048576_268527, ⟨CollatzM20Shard036.descent_mod1048576_270823, ⟨CollatzM20Shard036.descent_mod1048576_271719, ⟨CollatzM20Shard036.descent_mod1048576_272287, ⟨CollatzM20Shard036.descent_mod1048576_272447, ⟨CollatzM20Shard036.descent_mod1048576_272847, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
