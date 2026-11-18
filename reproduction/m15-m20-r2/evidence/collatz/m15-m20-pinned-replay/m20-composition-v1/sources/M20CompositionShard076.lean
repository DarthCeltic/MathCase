import M20Shard076

namespace CollatzM20CompositionV1

theorem chunk076 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 589807) 32 = 531441 * k + 298928 ∧ 531441 * k + 298928 < 1048576 * k + 589807) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 589855) 32 = 531441 * k + 298952 ∧ 531441 * k + 298952 < 1048576 * k + 589855) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 589991) 32 = 531441 * k + 299021 ∧ 531441 * k + 299021 < 1048576 * k + 589991) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 590143) 32 = 531441 * k + 299098 ∧ 531441 * k + 299098 < 1048576 * k + 590143) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 590719) 32 = 531441 * k + 299390 ∧ 531441 * k + 299390 < 1048576 * k + 590719) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 591487) 32 = 531441 * k + 299779 ∧ 531441 * k + 299779 < 1048576 * k + 591487) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 591687) 32 = 531441 * k + 299881 ∧ 531441 * k + 299881 < 1048576 * k + 591687) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 592039) 32 = 531441 * k + 300059 ∧ 531441 * k + 300059 < 1048576 * k + 592039) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 592351) 32 = 531441 * k + 300217 ∧ 531441 * k + 300217 < 1048576 * k + 592351) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 593051) 32 = 531441 * k + 300572 ∧ 531441 * k + 300572 < 1048576 * k + 593051) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 593215) 32 = 531441 * k + 300655 ∧ 531441 * k + 300655 < 1048576 * k + 593215) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 593755) 32 = 531441 * k + 300929 ∧ 531441 * k + 300929 < 1048576 * k + 593755) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 593951) 32 = 531441 * k + 301028 ∧ 531441 * k + 301028 < 1048576 * k + 593951) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 594399) 32 = 531441 * k + 301255 ∧ 531441 * k + 301255 < 1048576 * k + 594399) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 594559) 32 = 531441 * k + 301336 ∧ 531441 * k + 301336 < 1048576 * k + 594559) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 594975) 32 = 531441 * k + 301547 ∧ 531441 * k + 301547 < 1048576 * k + 594975) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 596135) 32 = 531441 * k + 302135 ∧ 531441 * k + 302135 < 1048576 * k + 596135) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 596251) 32 = 531441 * k + 302194 ∧ 531441 * k + 302194 < 1048576 * k + 596251) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 596447) 32 = 531441 * k + 302293 ∧ 531441 * k + 302293 < 1048576 * k + 596447) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 596479) 32 = 531441 * k + 302309 ∧ 531441 * k + 302309 < 1048576 * k + 596479) ∧
  R := by
  exact ⟨CollatzM20Shard076.descent_mod1048576_589807, ⟨CollatzM20Shard076.descent_mod1048576_589855, ⟨CollatzM20Shard076.descent_mod1048576_589991, ⟨CollatzM20Shard076.descent_mod1048576_590143, ⟨CollatzM20Shard076.descent_mod1048576_590719, ⟨CollatzM20Shard076.descent_mod1048576_591487, ⟨CollatzM20Shard076.descent_mod1048576_591687, ⟨CollatzM20Shard076.descent_mod1048576_592039, ⟨CollatzM20Shard076.descent_mod1048576_592351, ⟨CollatzM20Shard076.descent_mod1048576_593051, ⟨CollatzM20Shard076.descent_mod1048576_593215, ⟨CollatzM20Shard076.descent_mod1048576_593755, ⟨CollatzM20Shard076.descent_mod1048576_593951, ⟨CollatzM20Shard076.descent_mod1048576_594399, ⟨CollatzM20Shard076.descent_mod1048576_594559, ⟨CollatzM20Shard076.descent_mod1048576_594975, ⟨CollatzM20Shard076.descent_mod1048576_596135, ⟨CollatzM20Shard076.descent_mod1048576_596251, ⟨CollatzM20Shard076.descent_mod1048576_596447, ⟨CollatzM20Shard076.descent_mod1048576_596479, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
