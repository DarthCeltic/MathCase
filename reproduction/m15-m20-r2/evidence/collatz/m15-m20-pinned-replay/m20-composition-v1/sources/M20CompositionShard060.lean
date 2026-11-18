import M20Shard060

namespace CollatzM20CompositionV1

theorem chunk060 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 470811) 32 = 531441 * k + 238618 ∧ 531441 * k + 238618 < 1048576 * k + 470811) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 470943) 32 = 531441 * k + 238685 ∧ 531441 * k + 238685 < 1048576 * k + 470943) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 471067) 32 = 531441 * k + 238748 ∧ 531441 * k + 238748 < 1048576 * k + 471067) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 471231) 32 = 531441 * k + 238831 ∧ 531441 * k + 238831 < 1048576 * k + 471231) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 471343) 32 = 531441 * k + 238888 ∧ 531441 * k + 238888 < 1048576 * k + 471343) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 471663) 32 = 531441 * k + 239050 ∧ 531441 * k + 239050 < 1048576 * k + 471663) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 471711) 32 = 531441 * k + 239074 ∧ 531441 * k + 239074 < 1048576 * k + 471711) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 472231) 32 = 531441 * k + 239338 ∧ 531441 * k + 239338 < 1048576 * k + 472231) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 472391) 32 = 531441 * k + 239419 ∧ 531441 * k + 239419 < 1048576 * k + 472391) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 473083) 32 = 531441 * k + 239770 ∧ 531441 * k + 239770 < 1048576 * k + 473083) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 473327) 32 = 531441 * k + 239893 ∧ 531441 * k + 239893 < 1048576 * k + 473327) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 473447) 32 = 531441 * k + 239954 ∧ 531441 * k + 239954 < 1048576 * k + 473447) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 474107) 32 = 531441 * k + 240289 ∧ 531441 * k + 240289 < 1048576 * k + 474107) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 474139) 32 = 531441 * k + 240305 ∧ 531441 * k + 240305 < 1048576 * k + 474139) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 474471) 32 = 531441 * k + 240473 ∧ 531441 * k + 240473 < 1048576 * k + 474471) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 474783) 32 = 531441 * k + 240631 ∧ 531441 * k + 240631 < 1048576 * k + 474783) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 476543) 32 = 531441 * k + 241523 ∧ 531441 * k + 241523 < 1048576 * k + 476543) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 476655) 32 = 531441 * k + 241580 ∧ 531441 * k + 241580 < 1048576 * k + 476655) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 476831) 32 = 531441 * k + 241669 ∧ 531441 * k + 241669 < 1048576 * k + 476831) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 477087) 32 = 531441 * k + 241799 ∧ 531441 * k + 241799 < 1048576 * k + 477087) ∧
  R := by
  exact ⟨CollatzM20Shard060.descent_mod1048576_470811, ⟨CollatzM20Shard060.descent_mod1048576_470943, ⟨CollatzM20Shard060.descent_mod1048576_471067, ⟨CollatzM20Shard060.descent_mod1048576_471231, ⟨CollatzM20Shard060.descent_mod1048576_471343, ⟨CollatzM20Shard060.descent_mod1048576_471663, ⟨CollatzM20Shard060.descent_mod1048576_471711, ⟨CollatzM20Shard060.descent_mod1048576_472231, ⟨CollatzM20Shard060.descent_mod1048576_472391, ⟨CollatzM20Shard060.descent_mod1048576_473083, ⟨CollatzM20Shard060.descent_mod1048576_473327, ⟨CollatzM20Shard060.descent_mod1048576_473447, ⟨CollatzM20Shard060.descent_mod1048576_474107, ⟨CollatzM20Shard060.descent_mod1048576_474139, ⟨CollatzM20Shard060.descent_mod1048576_474471, ⟨CollatzM20Shard060.descent_mod1048576_474783, ⟨CollatzM20Shard060.descent_mod1048576_476543, ⟨CollatzM20Shard060.descent_mod1048576_476655, ⟨CollatzM20Shard060.descent_mod1048576_476831, ⟨CollatzM20Shard060.descent_mod1048576_477087, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
