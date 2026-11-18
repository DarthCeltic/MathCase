import M20Shard068

namespace CollatzM20CompositionV1

theorem chunk068 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 522991) 32 = 531441 * k + 265064 ∧ 531441 * k + 265064 < 1048576 * k + 522991) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 524015) 32 = 531441 * k + 265583 ∧ 531441 * k + 265583 < 1048576 * k + 524015) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 524607) 32 = 531441 * k + 265883 ∧ 531441 * k + 265883 < 1048576 * k + 524607) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 525339) 32 = 531441 * k + 266254 ∧ 531441 * k + 266254 < 1048576 * k + 525339) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 525927) 32 = 531441 * k + 266552 ∧ 531441 * k + 266552 < 1048576 * k + 525927) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 525951) 32 = 531441 * k + 266564 ∧ 531441 * k + 266564 < 1048576 * k + 525951) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 526055) 32 = 531441 * k + 266617 ∧ 531441 * k + 266617 < 1048576 * k + 526055) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 526151) 32 = 531441 * k + 266666 ∧ 531441 * k + 266666 < 1048576 * k + 526151) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 527103) 32 = 531441 * k + 267148 ∧ 531441 * k + 267148 < 1048576 * k + 527103) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 527387) 32 = 531441 * k + 267292 ∧ 531441 * k + 267292 < 1048576 * k + 527387) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 527679) 32 = 531441 * k + 267440 ∧ 531441 * k + 267440 < 1048576 * k + 527679) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 528239) 32 = 531441 * k + 267724 ∧ 531441 * k + 267724 < 1048576 * k + 528239) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 528287) 32 = 531441 * k + 267748 ∧ 531441 * k + 267748 < 1048576 * k + 528287) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 529023) 32 = 531441 * k + 268121 ∧ 531441 * k + 268121 < 1048576 * k + 529023) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 529127) 32 = 531441 * k + 268174 ∧ 531441 * k + 268174 < 1048576 * k + 529127) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 530023) 32 = 531441 * k + 268628 ∧ 531441 * k + 268628 < 1048576 * k + 530023) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 530715) 32 = 531441 * k + 268979 ∧ 531441 * k + 268979 < 1048576 * k + 530715) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 530911) 32 = 531441 * k + 269078 ∧ 531441 * k + 269078 < 1048576 * k + 530911) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 531483) 32 = 531441 * k + 269368 ∧ 531441 * k + 269368 < 1048576 * k + 531483) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 532207) 32 = 531441 * k + 269735 ∧ 531441 * k + 269735 < 1048576 * k + 532207) ∧
  R := by
  exact ⟨CollatzM20Shard068.descent_mod1048576_522991, ⟨CollatzM20Shard068.descent_mod1048576_524015, ⟨CollatzM20Shard068.descent_mod1048576_524607, ⟨CollatzM20Shard068.descent_mod1048576_525339, ⟨CollatzM20Shard068.descent_mod1048576_525927, ⟨CollatzM20Shard068.descent_mod1048576_525951, ⟨CollatzM20Shard068.descent_mod1048576_526055, ⟨CollatzM20Shard068.descent_mod1048576_526151, ⟨CollatzM20Shard068.descent_mod1048576_527103, ⟨CollatzM20Shard068.descent_mod1048576_527387, ⟨CollatzM20Shard068.descent_mod1048576_527679, ⟨CollatzM20Shard068.descent_mod1048576_528239, ⟨CollatzM20Shard068.descent_mod1048576_528287, ⟨CollatzM20Shard068.descent_mod1048576_529023, ⟨CollatzM20Shard068.descent_mod1048576_529127, ⟨CollatzM20Shard068.descent_mod1048576_530023, ⟨CollatzM20Shard068.descent_mod1048576_530715, ⟨CollatzM20Shard068.descent_mod1048576_530911, ⟨CollatzM20Shard068.descent_mod1048576_531483, ⟨CollatzM20Shard068.descent_mod1048576_532207, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
