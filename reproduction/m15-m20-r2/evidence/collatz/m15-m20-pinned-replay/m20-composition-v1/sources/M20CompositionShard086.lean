import M20Shard086

namespace CollatzM20CompositionV1

theorem chunk086 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 665455) 32 = 531441 * k + 337268 ∧ 531441 * k + 337268 < 1048576 * k + 665455) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 665767) 32 = 531441 * k + 337426 ∧ 531441 * k + 337426 < 1048576 * k + 665767) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 666367) 32 = 531441 * k + 337730 ∧ 531441 * k + 337730 < 1048576 * k + 666367) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 666651) 32 = 531441 * k + 337874 ∧ 531441 * k + 337874 < 1048576 * k + 666651) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 666779) 32 = 531441 * k + 337939 ∧ 531441 * k + 337939 < 1048576 * k + 666779) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 667135) 32 = 531441 * k + 338119 ∧ 531441 * k + 338119 < 1048576 * k + 667135) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 667815) 32 = 531441 * k + 338464 ∧ 531441 * k + 338464 < 1048576 * k + 667815) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 668143) 32 = 531441 * k + 338630 ∧ 531441 * k + 338630 < 1048576 * k + 668143) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 668391) 32 = 531441 * k + 338756 ∧ 531441 * k + 338756 < 1048576 * k + 668391) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 669727) 32 = 531441 * k + 339433 ∧ 531441 * k + 339433 < 1048576 * k + 669727) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 670023) 32 = 531441 * k + 339583 ∧ 531441 * k + 339583 < 1048576 * k + 670023) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 670191) 32 = 531441 * k + 339668 ∧ 531441 * k + 339668 < 1048576 * k + 670191) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 670319) 32 = 531441 * k + 339733 ∧ 531441 * k + 339733 < 1048576 * k + 670319) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 670887) 32 = 531441 * k + 340021 ∧ 531441 * k + 340021 < 1048576 * k + 670887) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 671579) 32 = 531441 * k + 340372 ∧ 531441 * k + 340372 < 1048576 * k + 671579) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 672071) 32 = 531441 * k + 340621 ∧ 531441 * k + 340621 < 1048576 * k + 672071) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 672155) 32 = 531441 * k + 340664 ∧ 531441 * k + 340664 < 1048576 * k + 672155) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 672603) 32 = 531441 * k + 340891 ∧ 531441 * k + 340891 < 1048576 * k + 672603) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 672923) 32 = 531441 * k + 341053 ∧ 531441 * k + 341053 < 1048576 * k + 672923) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 673279) 32 = 531441 * k + 341233 ∧ 531441 * k + 341233 < 1048576 * k + 673279) ∧
  R := by
  exact ⟨CollatzM20Shard086.descent_mod1048576_665455, ⟨CollatzM20Shard086.descent_mod1048576_665767, ⟨CollatzM20Shard086.descent_mod1048576_666367, ⟨CollatzM20Shard086.descent_mod1048576_666651, ⟨CollatzM20Shard086.descent_mod1048576_666779, ⟨CollatzM20Shard086.descent_mod1048576_667135, ⟨CollatzM20Shard086.descent_mod1048576_667815, ⟨CollatzM20Shard086.descent_mod1048576_668143, ⟨CollatzM20Shard086.descent_mod1048576_668391, ⟨CollatzM20Shard086.descent_mod1048576_669727, ⟨CollatzM20Shard086.descent_mod1048576_670023, ⟨CollatzM20Shard086.descent_mod1048576_670191, ⟨CollatzM20Shard086.descent_mod1048576_670319, ⟨CollatzM20Shard086.descent_mod1048576_670887, ⟨CollatzM20Shard086.descent_mod1048576_671579, ⟨CollatzM20Shard086.descent_mod1048576_672071, ⟨CollatzM20Shard086.descent_mod1048576_672155, ⟨CollatzM20Shard086.descent_mod1048576_672603, ⟨CollatzM20Shard086.descent_mod1048576_672923, ⟨CollatzM20Shard086.descent_mod1048576_673279, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
