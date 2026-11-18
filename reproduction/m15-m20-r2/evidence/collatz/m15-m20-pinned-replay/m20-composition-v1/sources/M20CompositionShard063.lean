import M20Shard063

namespace CollatzM20CompositionV1

theorem chunk063 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 493103) 32 = 531441 * k + 249916 ∧ 531441 * k + 249916 < 1048576 * k + 493103) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 493211) 32 = 531441 * k + 249971 ∧ 531441 * k + 249971 < 1048576 * k + 493211) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 493659) 32 = 531441 * k + 250198 ∧ 531441 * k + 250198 < 1048576 * k + 493659) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 493695) 32 = 531441 * k + 250216 ∧ 531441 * k + 250216 < 1048576 * k + 493695) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 494235) 32 = 531441 * k + 250490 ∧ 531441 * k + 250490 < 1048576 * k + 494235) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 494271) 32 = 531441 * k + 250508 ∧ 531441 * k + 250508 < 1048576 * k + 494271) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 494703) 32 = 531441 * k + 250727 ∧ 531441 * k + 250727 < 1048576 * k + 494703) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 495151) 32 = 531441 * k + 250954 ∧ 531441 * k + 250954 < 1048576 * k + 495151) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 495727) 32 = 531441 * k + 251246 ∧ 531441 * k + 251246 < 1048576 * k + 495727) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 495839) 32 = 531441 * k + 251303 ∧ 531441 * k + 251303 < 1048576 * k + 495839) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 496319) 32 = 531441 * k + 251546 ∧ 531441 * k + 251546 < 1048576 * k + 496319) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 496731) 32 = 531441 * k + 251755 ∧ 531441 * k + 251755 < 1048576 * k + 496731) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 497087) 32 = 531441 * k + 251935 ∧ 531441 * k + 251935 < 1048576 * k + 497087) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 497199) 32 = 531441 * k + 251992 ∧ 531441 * k + 251992 < 1048576 * k + 497199) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 497663) 32 = 531441 * k + 252227 ∧ 531441 * k + 252227 < 1048576 * k + 497663) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 497767) 32 = 531441 * k + 252280 ∧ 531441 * k + 252280 < 1048576 * k + 497767) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 498111) 32 = 531441 * k + 252454 ∧ 531441 * k + 252454 < 1048576 * k + 498111) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 498343) 32 = 531441 * k + 252572 ∧ 531441 * k + 252572 < 1048576 * k + 498343) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 498495) 32 = 531441 * k + 252649 ∧ 531441 * k + 252649 < 1048576 * k + 498495) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 498751) 32 = 531441 * k + 252779 ∧ 531441 * k + 252779 < 1048576 * k + 498751) ∧
  R := by
  exact ⟨CollatzM20Shard063.descent_mod1048576_493103, ⟨CollatzM20Shard063.descent_mod1048576_493211, ⟨CollatzM20Shard063.descent_mod1048576_493659, ⟨CollatzM20Shard063.descent_mod1048576_493695, ⟨CollatzM20Shard063.descent_mod1048576_494235, ⟨CollatzM20Shard063.descent_mod1048576_494271, ⟨CollatzM20Shard063.descent_mod1048576_494703, ⟨CollatzM20Shard063.descent_mod1048576_495151, ⟨CollatzM20Shard063.descent_mod1048576_495727, ⟨CollatzM20Shard063.descent_mod1048576_495839, ⟨CollatzM20Shard063.descent_mod1048576_496319, ⟨CollatzM20Shard063.descent_mod1048576_496731, ⟨CollatzM20Shard063.descent_mod1048576_497087, ⟨CollatzM20Shard063.descent_mod1048576_497199, ⟨CollatzM20Shard063.descent_mod1048576_497663, ⟨CollatzM20Shard063.descent_mod1048576_497767, ⟨CollatzM20Shard063.descent_mod1048576_498111, ⟨CollatzM20Shard063.descent_mod1048576_498343, ⟨CollatzM20Shard063.descent_mod1048576_498495, ⟨CollatzM20Shard063.descent_mod1048576_498751, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
