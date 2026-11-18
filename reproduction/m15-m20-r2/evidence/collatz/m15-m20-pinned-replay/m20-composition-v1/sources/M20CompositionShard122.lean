import M20Shard122

namespace CollatzM20CompositionV1

theorem chunk122 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 954087) 32 = 531441 * k + 483553 ∧ 531441 * k + 483553 < 1048576 * k + 954087) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 955327) 32 = 531441 * k + 484181 ∧ 531441 * k + 484181 < 1048576 * k + 955327) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 955751) 32 = 531441 * k + 484396 ∧ 531441 * k + 484396 < 1048576 * k + 955751) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 956007) 32 = 531441 * k + 484526 ∧ 531441 * k + 484526 < 1048576 * k + 956007) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 956443) 32 = 531441 * k + 484747 ∧ 531441 * k + 484747 < 1048576 * k + 956443) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 956911) 32 = 531441 * k + 484984 ∧ 531441 * k + 484984 < 1048576 * k + 956911) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 957799) 32 = 531441 * k + 485434 ∧ 531441 * k + 485434 < 1048576 * k + 957799) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 957935) 32 = 531441 * k + 485503 ∧ 531441 * k + 485503 < 1048576 * k + 957935) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 958367) 32 = 531441 * k + 485722 ∧ 531441 * k + 485722 < 1048576 * k + 958367) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 958399) 32 = 531441 * k + 485738 ∧ 531441 * k + 485738 < 1048576 * k + 958399) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 958943) 32 = 531441 * k + 486014 ∧ 531441 * k + 486014 < 1048576 * k + 958943) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 960871) 32 = 531441 * k + 486991 ∧ 531441 * k + 486991 < 1048576 * k + 960871) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 961275) 32 = 531441 * k + 487196 ∧ 531441 * k + 487196 < 1048576 * k + 961275) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 962495) 32 = 531441 * k + 487814 ∧ 531441 * k + 487814 < 1048576 * k + 962495) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 963519) 32 = 531441 * k + 488333 ∧ 531441 * k + 488333 < 1048576 * k + 963519) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 963943) 32 = 531441 * k + 488548 ∧ 531441 * k + 488548 < 1048576 * k + 963943) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 964199) 32 = 531441 * k + 488678 ∧ 531441 * k + 488678 < 1048576 * k + 964199) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 964635) 32 = 531441 * k + 488899 ∧ 531441 * k + 488899 < 1048576 * k + 964635) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 964967) 32 = 531441 * k + 489067 ∧ 531441 * k + 489067 < 1048576 * k + 964967) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 965223) 32 = 531441 * k + 489197 ∧ 531441 * k + 489197 < 1048576 * k + 965223) ∧
  R := by
  exact ⟨CollatzM20Shard122.descent_mod1048576_954087, ⟨CollatzM20Shard122.descent_mod1048576_955327, ⟨CollatzM20Shard122.descent_mod1048576_955751, ⟨CollatzM20Shard122.descent_mod1048576_956007, ⟨CollatzM20Shard122.descent_mod1048576_956443, ⟨CollatzM20Shard122.descent_mod1048576_956911, ⟨CollatzM20Shard122.descent_mod1048576_957799, ⟨CollatzM20Shard122.descent_mod1048576_957935, ⟨CollatzM20Shard122.descent_mod1048576_958367, ⟨CollatzM20Shard122.descent_mod1048576_958399, ⟨CollatzM20Shard122.descent_mod1048576_958943, ⟨CollatzM20Shard122.descent_mod1048576_960871, ⟨CollatzM20Shard122.descent_mod1048576_961275, ⟨CollatzM20Shard122.descent_mod1048576_962495, ⟨CollatzM20Shard122.descent_mod1048576_963519, ⟨CollatzM20Shard122.descent_mod1048576_963943, ⟨CollatzM20Shard122.descent_mod1048576_964199, ⟨CollatzM20Shard122.descent_mod1048576_964635, ⟨CollatzM20Shard122.descent_mod1048576_964967, ⟨CollatzM20Shard122.descent_mod1048576_965223, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
