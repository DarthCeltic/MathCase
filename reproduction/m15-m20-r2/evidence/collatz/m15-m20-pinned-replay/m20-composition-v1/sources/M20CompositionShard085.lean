import M20Shard085

namespace CollatzM20CompositionV1

theorem chunk085 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 654587) 32 = 531441 * k + 331760 ∧ 531441 * k + 331760 < 1048576 * k + 654587) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 654895) 32 = 531441 * k + 331916 ∧ 531441 * k + 331916 < 1048576 * k + 654895) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 655343) 32 = 531441 * k + 332143 ∧ 531441 * k + 332143 < 1048576 * k + 655343) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 656103) 32 = 531441 * k + 332528 ∧ 531441 * k + 332528 < 1048576 * k + 656103) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 656255) 32 = 531441 * k + 332605 ∧ 531441 * k + 332605 < 1048576 * k + 656255) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 657151) 32 = 531441 * k + 333059 ∧ 531441 * k + 333059 < 1048576 * k + 657151) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 657819) 32 = 531441 * k + 333398 ∧ 531441 * k + 333398 < 1048576 * k + 657819) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 659291) 32 = 531441 * k + 334144 ∧ 531441 * k + 334144 < 1048576 * k + 659291) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 659623) 32 = 531441 * k + 334312 ∧ 531441 * k + 334312 < 1048576 * k + 659623) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 659903) 32 = 531441 * k + 334454 ∧ 531441 * k + 334454 < 1048576 * k + 659903) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 660511) 32 = 531441 * k + 334762 ∧ 531441 * k + 334762 < 1048576 * k + 660511) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 661199) 32 = 531441 * k + 335111 ∧ 531441 * k + 335111 < 1048576 * k + 661199) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 661359) 32 = 531441 * k + 335192 ∧ 531441 * k + 335192 < 1048576 * k + 661359) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 662695) 32 = 531441 * k + 335869 ∧ 531441 * k + 335869 < 1048576 * k + 662695) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 662779) 32 = 531441 * k + 335912 ∧ 531441 * k + 335912 < 1048576 * k + 662779) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 662939) 32 = 531441 * k + 335993 ∧ 531441 * k + 335993 < 1048576 * k + 662939) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 663387) 32 = 531441 * k + 336220 ∧ 531441 * k + 336220 < 1048576 * k + 663387) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 663535) 32 = 531441 * k + 336295 ∧ 531441 * k + 336295 < 1048576 * k + 663535) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 663583) 32 = 531441 * k + 336319 ∧ 531441 * k + 336319 < 1048576 * k + 663583) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 663963) 32 = 531441 * k + 336512 ∧ 531441 * k + 336512 < 1048576 * k + 663963) ∧
  R := by
  exact ⟨CollatzM20Shard085.descent_mod1048576_654587, ⟨CollatzM20Shard085.descent_mod1048576_654895, ⟨CollatzM20Shard085.descent_mod1048576_655343, ⟨CollatzM20Shard085.descent_mod1048576_656103, ⟨CollatzM20Shard085.descent_mod1048576_656255, ⟨CollatzM20Shard085.descent_mod1048576_657151, ⟨CollatzM20Shard085.descent_mod1048576_657819, ⟨CollatzM20Shard085.descent_mod1048576_659291, ⟨CollatzM20Shard085.descent_mod1048576_659623, ⟨CollatzM20Shard085.descent_mod1048576_659903, ⟨CollatzM20Shard085.descent_mod1048576_660511, ⟨CollatzM20Shard085.descent_mod1048576_661199, ⟨CollatzM20Shard085.descent_mod1048576_661359, ⟨CollatzM20Shard085.descent_mod1048576_662695, ⟨CollatzM20Shard085.descent_mod1048576_662779, ⟨CollatzM20Shard085.descent_mod1048576_662939, ⟨CollatzM20Shard085.descent_mod1048576_663387, ⟨CollatzM20Shard085.descent_mod1048576_663535, ⟨CollatzM20Shard085.descent_mod1048576_663583, ⟨CollatzM20Shard085.descent_mod1048576_663963, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
