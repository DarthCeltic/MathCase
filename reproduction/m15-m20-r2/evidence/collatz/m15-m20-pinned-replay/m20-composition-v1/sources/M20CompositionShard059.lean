import M20Shard059

namespace CollatzM20CompositionV1

theorem chunk059 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 462319) 32 = 531441 * k + 234314 ∧ 531441 * k + 234314 < 1048576 * k + 462319) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 462335) 32 = 531441 * k + 234322 ∧ 531441 * k + 234322 < 1048576 * k + 462335) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 462703) 32 = 531441 * k + 234509 ∧ 531441 * k + 234509 < 1048576 * k + 462703) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 463591) 32 = 531441 * k + 234959 ∧ 531441 * k + 234959 < 1048576 * k + 463591) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 464039) 32 = 531441 * k + 235186 ∧ 531441 * k + 235186 < 1048576 * k + 464039) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 464199) 32 = 531441 * k + 235267 ∧ 531441 * k + 235267 < 1048576 * k + 464199) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 464891) 32 = 531441 * k + 235618 ∧ 531441 * k + 235618 < 1048576 * k + 464891) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 464923) 32 = 531441 * k + 235634 ∧ 531441 * k + 235634 < 1048576 * k + 464923) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 465519) 32 = 531441 * k + 235936 ∧ 531441 * k + 235936 < 1048576 * k + 465519) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 465947) 32 = 531441 * k + 236153 ∧ 531441 * k + 236153 < 1048576 * k + 465947) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 466279) 32 = 531441 * k + 236321 ∧ 531441 * k + 236321 < 1048576 * k + 466279) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 466415) 32 = 531441 * k + 236390 ∧ 531441 * k + 236390 < 1048576 * k + 466415) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 466715) 32 = 531441 * k + 236542 ∧ 531441 * k + 236542 < 1048576 * k + 466715) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 467271) 32 = 531441 * k + 236824 ∧ 531441 * k + 236824 < 1048576 * k + 467271) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 467439) 32 = 531441 * k + 236909 ∧ 531441 * k + 236909 < 1048576 * k + 467439) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 468639) 32 = 531441 * k + 237517 ∧ 531441 * k + 237517 < 1048576 * k + 468639) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 469319) 32 = 531441 * k + 237862 ∧ 531441 * k + 237862 < 1048576 * k + 469319) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 469351) 32 = 531441 * k + 237878 ∧ 531441 * k + 237878 < 1048576 * k + 469351) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 470207) 32 = 531441 * k + 238312 ∧ 531441 * k + 238312 < 1048576 * k + 470207) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 470511) 32 = 531441 * k + 238466 ∧ 531441 * k + 238466 < 1048576 * k + 470511) ∧
  R := by
  exact ⟨CollatzM20Shard059.descent_mod1048576_462319, ⟨CollatzM20Shard059.descent_mod1048576_462335, ⟨CollatzM20Shard059.descent_mod1048576_462703, ⟨CollatzM20Shard059.descent_mod1048576_463591, ⟨CollatzM20Shard059.descent_mod1048576_464039, ⟨CollatzM20Shard059.descent_mod1048576_464199, ⟨CollatzM20Shard059.descent_mod1048576_464891, ⟨CollatzM20Shard059.descent_mod1048576_464923, ⟨CollatzM20Shard059.descent_mod1048576_465519, ⟨CollatzM20Shard059.descent_mod1048576_465947, ⟨CollatzM20Shard059.descent_mod1048576_466279, ⟨CollatzM20Shard059.descent_mod1048576_466415, ⟨CollatzM20Shard059.descent_mod1048576_466715, ⟨CollatzM20Shard059.descent_mod1048576_467271, ⟨CollatzM20Shard059.descent_mod1048576_467439, ⟨CollatzM20Shard059.descent_mod1048576_468639, ⟨CollatzM20Shard059.descent_mod1048576_469319, ⟨CollatzM20Shard059.descent_mod1048576_469351, ⟨CollatzM20Shard059.descent_mod1048576_470207, ⟨CollatzM20Shard059.descent_mod1048576_470511, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
