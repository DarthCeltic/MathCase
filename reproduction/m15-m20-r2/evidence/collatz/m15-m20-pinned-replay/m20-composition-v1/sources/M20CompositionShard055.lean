import M20Shard055

namespace CollatzM20CompositionV1

theorem chunk055 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 433119) 32 = 531441 * k + 219515 ∧ 531441 * k + 219515 < 1048576 * k + 433119) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 433871) 32 = 531441 * k + 219896 ∧ 531441 * k + 219896 < 1048576 * k + 433871) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 433983) 32 = 531441 * k + 219953 ∧ 531441 * k + 219953 < 1048576 * k + 433983) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 434247) 32 = 531441 * k + 220087 ∧ 531441 * k + 220087 < 1048576 * k + 434247) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 434303) 32 = 531441 * k + 220115 ∧ 531441 * k + 220115 < 1048576 * k + 434303) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 434735) 32 = 531441 * k + 220334 ∧ 531441 * k + 220334 < 1048576 * k + 434735) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 435271) 32 = 531441 * k + 220606 ∧ 531441 * k + 220606 < 1048576 * k + 435271) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 435303) 32 = 531441 * k + 220622 ∧ 531441 * k + 220622 < 1048576 * k + 435303) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 436475) 32 = 531441 * k + 221216 ∧ 531441 * k + 221216 < 1048576 * k + 436475) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 436671) 32 = 531441 * k + 221315 ∧ 531441 * k + 221315 < 1048576 * k + 436671) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 437119) 32 = 531441 * k + 221542 ∧ 531441 * k + 221542 < 1048576 * k + 437119) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 437231) 32 = 531441 * k + 221599 ∧ 531441 * k + 221599 < 1048576 * k + 437231) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 437339) 32 = 531441 * k + 221654 ∧ 531441 * k + 221654 < 1048576 * k + 437339) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 437695) 32 = 531441 * k + 221834 ∧ 531441 * k + 221834 < 1048576 * k + 437695) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 437807) 32 = 531441 * k + 221891 ∧ 531441 * k + 221891 < 1048576 * k + 437807) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 437967) 32 = 531441 * k + 221972 ∧ 531441 * k + 221972 < 1048576 * k + 437967) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 438015) 32 = 531441 * k + 221996 ∧ 531441 * k + 221996 < 1048576 * k + 438015) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 438831) 32 = 531441 * k + 222410 ∧ 531441 * k + 222410 < 1048576 * k + 438831) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 439039) 32 = 531441 * k + 222515 ∧ 531441 * k + 222515 < 1048576 * k + 439039) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 439167) 32 = 531441 * k + 222580 ∧ 531441 * k + 222580 < 1048576 * k + 439167) ∧
  R := by
  exact ⟨CollatzM20Shard055.descent_mod1048576_433119, ⟨CollatzM20Shard055.descent_mod1048576_433871, ⟨CollatzM20Shard055.descent_mod1048576_433983, ⟨CollatzM20Shard055.descent_mod1048576_434247, ⟨CollatzM20Shard055.descent_mod1048576_434303, ⟨CollatzM20Shard055.descent_mod1048576_434735, ⟨CollatzM20Shard055.descent_mod1048576_435271, ⟨CollatzM20Shard055.descent_mod1048576_435303, ⟨CollatzM20Shard055.descent_mod1048576_436475, ⟨CollatzM20Shard055.descent_mod1048576_436671, ⟨CollatzM20Shard055.descent_mod1048576_437119, ⟨CollatzM20Shard055.descent_mod1048576_437231, ⟨CollatzM20Shard055.descent_mod1048576_437339, ⟨CollatzM20Shard055.descent_mod1048576_437695, ⟨CollatzM20Shard055.descent_mod1048576_437807, ⟨CollatzM20Shard055.descent_mod1048576_437967, ⟨CollatzM20Shard055.descent_mod1048576_438015, ⟨CollatzM20Shard055.descent_mod1048576_438831, ⟨CollatzM20Shard055.descent_mod1048576_439039, ⟨CollatzM20Shard055.descent_mod1048576_439167, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
