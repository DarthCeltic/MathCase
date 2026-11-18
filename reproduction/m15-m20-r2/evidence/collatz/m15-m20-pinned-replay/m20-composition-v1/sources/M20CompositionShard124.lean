import M20Shard124

namespace CollatzM20CompositionV1

theorem chunk124 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 975071) 32 = 531441 * k + 494188 ∧ 531441 * k + 494188 < 1048576 * k + 975071) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 975515) 32 = 531441 * k + 494413 ∧ 531441 * k + 494413 < 1048576 * k + 975515) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 975551) 32 = 531441 * k + 494431 ∧ 531441 * k + 494431 < 1048576 * k + 975551) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 975611) 32 = 531441 * k + 494462 ∧ 531441 * k + 494462 < 1048576 * k + 975611) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 976127) 32 = 531441 * k + 494723 ∧ 531441 * k + 494723 < 1048576 * k + 976127) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 977007) 32 = 531441 * k + 495169 ∧ 531441 * k + 495169 < 1048576 * k + 977007) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 977103) 32 = 531441 * k + 495218 ∧ 531441 * k + 495218 < 1048576 * k + 977103) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 977599) 32 = 531441 * k + 495469 ∧ 531441 * k + 495469 < 1048576 * k + 977599) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 977695) 32 = 531441 * k + 495518 ∧ 531441 * k + 495518 < 1048576 * k + 977695) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 978175) 32 = 531441 * k + 495761 ∧ 531441 * k + 495761 < 1048576 * k + 978175) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 978587) 32 = 531441 * k + 495970 ∧ 531441 * k + 495970 < 1048576 * k + 978587) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 979015) 32 = 531441 * k + 496187 ∧ 531441 * k + 496187 < 1048576 * k + 979015) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 979055) 32 = 531441 * k + 496207 ∧ 531441 * k + 496207 < 1048576 * k + 979055) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 979967) 32 = 531441 * k + 496669 ∧ 531441 * k + 496669 < 1048576 * k + 979967) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 980199) 32 = 531441 * k + 496787 ∧ 531441 * k + 496787 < 1048576 * k + 980199) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 980351) 32 = 531441 * k + 496864 ∧ 531441 * k + 496864 < 1048576 * k + 980351) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 980927) 32 = 531441 * k + 497156 ∧ 531441 * k + 497156 < 1048576 * k + 980927) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 981215) 32 = 531441 * k + 497302 ∧ 531441 * k + 497302 < 1048576 * k + 981215) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 981247) 32 = 531441 * k + 497318 ∧ 531441 * k + 497318 < 1048576 * k + 981247) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 981375) 32 = 531441 * k + 497383 ∧ 531441 * k + 497383 < 1048576 * k + 981375) ∧
  R := by
  exact ⟨CollatzM20Shard124.descent_mod1048576_975071, ⟨CollatzM20Shard124.descent_mod1048576_975515, ⟨CollatzM20Shard124.descent_mod1048576_975551, ⟨CollatzM20Shard124.descent_mod1048576_975611, ⟨CollatzM20Shard124.descent_mod1048576_976127, ⟨CollatzM20Shard124.descent_mod1048576_977007, ⟨CollatzM20Shard124.descent_mod1048576_977103, ⟨CollatzM20Shard124.descent_mod1048576_977599, ⟨CollatzM20Shard124.descent_mod1048576_977695, ⟨CollatzM20Shard124.descent_mod1048576_978175, ⟨CollatzM20Shard124.descent_mod1048576_978587, ⟨CollatzM20Shard124.descent_mod1048576_979015, ⟨CollatzM20Shard124.descent_mod1048576_979055, ⟨CollatzM20Shard124.descent_mod1048576_979967, ⟨CollatzM20Shard124.descent_mod1048576_980199, ⟨CollatzM20Shard124.descent_mod1048576_980351, ⟨CollatzM20Shard124.descent_mod1048576_980927, ⟨CollatzM20Shard124.descent_mod1048576_981215, ⟨CollatzM20Shard124.descent_mod1048576_981247, ⟨CollatzM20Shard124.descent_mod1048576_981375, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
