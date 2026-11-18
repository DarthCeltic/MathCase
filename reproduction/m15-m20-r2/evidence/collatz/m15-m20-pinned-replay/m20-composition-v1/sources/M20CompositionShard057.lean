import M20Shard057

namespace CollatzM20CompositionV1

theorem chunk057 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 446299) 32 = 531441 * k + 226195 ∧ 531441 * k + 226195 < 1048576 * k + 446299) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 447023) 32 = 531441 * k + 226562 ∧ 531441 * k + 226562 < 1048576 * k + 447023) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 447183) 32 = 531441 * k + 226643 ∧ 531441 * k + 226643 < 1048576 * k + 447183) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 447231) 32 = 531441 * k + 226667 ∧ 531441 * k + 226667 < 1048576 * k + 447231) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 448207) 32 = 531441 * k + 227162 ∧ 531441 * k + 227162 < 1048576 * k + 448207) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 448231) 32 = 531441 * k + 227174 ∧ 531441 * k + 227174 < 1048576 * k + 448231) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 448383) 32 = 531441 * k + 227251 ∧ 531441 * k + 227251 < 1048576 * k + 448383) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 448479) 32 = 531441 * k + 227300 ∧ 531441 * k + 227300 < 1048576 * k + 448479) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 449255) 32 = 531441 * k + 227693 ∧ 531441 * k + 227693 < 1048576 * k + 449255) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 449279) 32 = 531441 * k + 227705 ∧ 531441 * k + 227705 < 1048576 * k + 449279) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 451303) 32 = 531441 * k + 228731 ∧ 531441 * k + 228731 < 1048576 * k + 451303) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 451455) 32 = 531441 * k + 228808 ∧ 531441 * k + 228808 < 1048576 * k + 451455) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 451611) 32 = 531441 * k + 228887 ∧ 531441 * k + 228887 < 1048576 * k + 451611) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 451835) 32 = 531441 * k + 229001 ∧ 531441 * k + 229001 < 1048576 * k + 451835) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 452351) 32 = 531441 * k + 229262 ∧ 531441 * k + 229262 < 1048576 * k + 452351) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 453327) 32 = 531441 * k + 229757 ∧ 531441 * k + 229757 < 1048576 * k + 453327) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 453375) 32 = 531441 * k + 229781 ∧ 531441 * k + 229781 < 1048576 * k + 453375) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 454375) 32 = 531441 * k + 230288 ∧ 531441 * k + 230288 < 1048576 * k + 454375) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 454491) 32 = 531441 * k + 230347 ∧ 531441 * k + 230347 < 1048576 * k + 454491) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 454823) 32 = 531441 * k + 230515 ∧ 531441 * k + 230515 < 1048576 * k + 454823) ∧
  R := by
  exact ⟨CollatzM20Shard057.descent_mod1048576_446299, ⟨CollatzM20Shard057.descent_mod1048576_447023, ⟨CollatzM20Shard057.descent_mod1048576_447183, ⟨CollatzM20Shard057.descent_mod1048576_447231, ⟨CollatzM20Shard057.descent_mod1048576_448207, ⟨CollatzM20Shard057.descent_mod1048576_448231, ⟨CollatzM20Shard057.descent_mod1048576_448383, ⟨CollatzM20Shard057.descent_mod1048576_448479, ⟨CollatzM20Shard057.descent_mod1048576_449255, ⟨CollatzM20Shard057.descent_mod1048576_449279, ⟨CollatzM20Shard057.descent_mod1048576_451303, ⟨CollatzM20Shard057.descent_mod1048576_451455, ⟨CollatzM20Shard057.descent_mod1048576_451611, ⟨CollatzM20Shard057.descent_mod1048576_451835, ⟨CollatzM20Shard057.descent_mod1048576_452351, ⟨CollatzM20Shard057.descent_mod1048576_453327, ⟨CollatzM20Shard057.descent_mod1048576_453375, ⟨CollatzM20Shard057.descent_mod1048576_454375, ⟨CollatzM20Shard057.descent_mod1048576_454491, ⟨CollatzM20Shard057.descent_mod1048576_454823, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
