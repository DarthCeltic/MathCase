import M20Shard075

namespace CollatzM20CompositionV1

theorem chunk075 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 579099) 32 = 531441 * k + 293501 ∧ 531441 * k + 293501 < 1048576 * k + 579099) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 580335) 32 = 531441 * k + 294127 ∧ 531441 * k + 294127 < 1048576 * k + 580335) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 580591) 32 = 531441 * k + 294257 ∧ 531441 * k + 294257 < 1048576 * k + 580591) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 580767) 32 = 531441 * k + 294346 ∧ 531441 * k + 294346 < 1048576 * k + 580767) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 581915) 32 = 531441 * k + 294928 ∧ 531441 * k + 294928 < 1048576 * k + 581915) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 581951) 32 = 531441 * k + 294946 ∧ 531441 * k + 294946 < 1048576 * k + 581951) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 582383) 32 = 531441 * k + 295165 ∧ 531441 * k + 295165 < 1048576 * k + 582383) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 582471) 32 = 531441 * k + 295210 ∧ 531441 * k + 295210 < 1048576 * k + 582471) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 582727) 32 = 531441 * k + 295340 ∧ 531441 * k + 295340 < 1048576 * k + 582727) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 584095) 32 = 531441 * k + 296033 ∧ 531441 * k + 296033 < 1048576 * k + 584095) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 585023) 32 = 531441 * k + 296503 ∧ 531441 * k + 296503 < 1048576 * k + 585023) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 585383) 32 = 531441 * k + 296686 ∧ 531441 * k + 296686 < 1048576 * k + 585383) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 585455) 32 = 531441 * k + 296722 ∧ 531441 * k + 296722 < 1048576 * k + 585455) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 586783) 32 = 531441 * k + 297395 ∧ 531441 * k + 297395 < 1048576 * k + 586783) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 587291) 32 = 531441 * k + 297653 ∧ 531441 * k + 297653 < 1048576 * k + 587291) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 588059) 32 = 531441 * k + 298042 ∧ 531441 * k + 298042 < 1048576 * k + 588059) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 588095) 32 = 531441 * k + 298060 ∧ 531441 * k + 298060 < 1048576 * k + 588095) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 588527) 32 = 531441 * k + 298279 ∧ 531441 * k + 298279 < 1048576 * k + 588527) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 588783) 32 = 531441 * k + 298409 ∧ 531441 * k + 298409 < 1048576 * k + 588783) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 589551) 32 = 531441 * k + 298798 ∧ 531441 * k + 298798 < 1048576 * k + 589551) ∧
  R := by
  exact ⟨CollatzM20Shard075.descent_mod1048576_579099, ⟨CollatzM20Shard075.descent_mod1048576_580335, ⟨CollatzM20Shard075.descent_mod1048576_580591, ⟨CollatzM20Shard075.descent_mod1048576_580767, ⟨CollatzM20Shard075.descent_mod1048576_581915, ⟨CollatzM20Shard075.descent_mod1048576_581951, ⟨CollatzM20Shard075.descent_mod1048576_582383, ⟨CollatzM20Shard075.descent_mod1048576_582471, ⟨CollatzM20Shard075.descent_mod1048576_582727, ⟨CollatzM20Shard075.descent_mod1048576_584095, ⟨CollatzM20Shard075.descent_mod1048576_585023, ⟨CollatzM20Shard075.descent_mod1048576_585383, ⟨CollatzM20Shard075.descent_mod1048576_585455, ⟨CollatzM20Shard075.descent_mod1048576_586783, ⟨CollatzM20Shard075.descent_mod1048576_587291, ⟨CollatzM20Shard075.descent_mod1048576_588059, ⟨CollatzM20Shard075.descent_mod1048576_588095, ⟨CollatzM20Shard075.descent_mod1048576_588527, ⟨CollatzM20Shard075.descent_mod1048576_588783, ⟨CollatzM20Shard075.descent_mod1048576_589551, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
