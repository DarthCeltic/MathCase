import M20Shard054

namespace CollatzM20CompositionV1

theorem chunk054 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 425087) 32 = 531441 * k + 215444 ∧ 531441 * k + 215444 < 1048576 * k + 425087) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 425723) 32 = 531441 * k + 215767 ∧ 531441 * k + 215767 < 1048576 * k + 425723) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 426055) 32 = 531441 * k + 215935 ∧ 531441 * k + 215935 < 1048576 * k + 426055) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 426087) 32 = 531441 * k + 215951 ∧ 531441 * k + 215951 < 1048576 * k + 426087) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 426975) 32 = 531441 * k + 216401 ∧ 531441 * k + 216401 < 1048576 * k + 426975) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 427099) 32 = 531441 * k + 216464 ∧ 531441 * k + 216464 < 1048576 * k + 427099) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 427111) 32 = 531441 * k + 216470 ∧ 531441 * k + 216470 < 1048576 * k + 427111) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 427879) 32 = 531441 * k + 216859 ∧ 531441 * k + 216859 < 1048576 * k + 427879) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 428123) 32 = 531441 * k + 216983 ∧ 531441 * k + 216983 < 1048576 * k + 428123) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 428159) 32 = 531441 * k + 217001 ∧ 531441 * k + 217001 < 1048576 * k + 428159) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 429039) 32 = 531441 * k + 217447 ∧ 531441 * k + 217447 < 1048576 * k + 429039) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 429471) 32 = 531441 * k + 217666 ∧ 531441 * k + 217666 < 1048576 * k + 429471) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 429503) 32 = 531441 * k + 217682 ∧ 531441 * k + 217682 < 1048576 * k + 429503) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 430331) 32 = 531441 * k + 218102 ∧ 531441 * k + 218102 < 1048576 * k + 430331) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 431195) 32 = 531441 * k + 218540 ∧ 531441 * k + 218540 < 1048576 * k + 431195) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 431663) 32 = 531441 * k + 218777 ∧ 531441 * k + 218777 < 1048576 * k + 431663) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 431975) 32 = 531441 * k + 218935 ∧ 531441 * k + 218935 < 1048576 * k + 431975) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 432231) 32 = 531441 * k + 219065 ∧ 531441 * k + 219065 < 1048576 * k + 432231) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 432379) 32 = 531441 * k + 219140 ∧ 531441 * k + 219140 < 1048576 * k + 432379) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 432959) 32 = 531441 * k + 219434 ∧ 531441 * k + 219434 < 1048576 * k + 432959) ∧
  R := by
  exact ⟨CollatzM20Shard054.descent_mod1048576_425087, ⟨CollatzM20Shard054.descent_mod1048576_425723, ⟨CollatzM20Shard054.descent_mod1048576_426055, ⟨CollatzM20Shard054.descent_mod1048576_426087, ⟨CollatzM20Shard054.descent_mod1048576_426975, ⟨CollatzM20Shard054.descent_mod1048576_427099, ⟨CollatzM20Shard054.descent_mod1048576_427111, ⟨CollatzM20Shard054.descent_mod1048576_427879, ⟨CollatzM20Shard054.descent_mod1048576_428123, ⟨CollatzM20Shard054.descent_mod1048576_428159, ⟨CollatzM20Shard054.descent_mod1048576_429039, ⟨CollatzM20Shard054.descent_mod1048576_429471, ⟨CollatzM20Shard054.descent_mod1048576_429503, ⟨CollatzM20Shard054.descent_mod1048576_430331, ⟨CollatzM20Shard054.descent_mod1048576_431195, ⟨CollatzM20Shard054.descent_mod1048576_431663, ⟨CollatzM20Shard054.descent_mod1048576_431975, ⟨CollatzM20Shard054.descent_mod1048576_432231, ⟨CollatzM20Shard054.descent_mod1048576_432379, ⟨CollatzM20Shard054.descent_mod1048576_432959, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
