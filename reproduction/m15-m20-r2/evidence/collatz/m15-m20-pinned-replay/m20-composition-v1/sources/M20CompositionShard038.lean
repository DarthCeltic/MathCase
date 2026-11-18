import M20Shard038

namespace CollatzM20CompositionV1

theorem chunk038 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 282267) 32 = 531441 * k + 143060 ∧ 531441 * k + 143060 < 1048576 * k + 282267) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 282303) 32 = 531441 * k + 143078 ∧ 531441 * k + 143078 < 1048576 * k + 282303) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 282847) 32 = 531441 * k + 143354 ∧ 531441 * k + 143354 < 1048576 * k + 282847) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 283327) 32 = 531441 * k + 143597 ∧ 531441 * k + 143597 < 1048576 * k + 283327) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 283751) 32 = 531441 * k + 143812 ∧ 531441 * k + 143812 < 1048576 * k + 283751) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 284207) 32 = 531441 * k + 144043 ∧ 531441 * k + 144043 < 1048576 * k + 284207) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 284775) 32 = 531441 * k + 144331 ∧ 531441 * k + 144331 < 1048576 * k + 284775) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 285339) 32 = 531441 * k + 144617 ∧ 531441 * k + 144617 < 1048576 * k + 285339) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 286239) 32 = 531441 * k + 145073 ∧ 531441 * k + 145073 < 1048576 * k + 286239) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 286363) 32 = 531441 * k + 145136 ∧ 531441 * k + 145136 < 1048576 * k + 286363) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 286399) 32 = 531441 * k + 145154 ∧ 531441 * k + 145154 < 1048576 * k + 286399) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 287279) 32 = 531441 * k + 145600 ∧ 531441 * k + 145600 < 1048576 * k + 287279) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 287551) 32 = 531441 * k + 145738 ∧ 531441 * k + 145738 < 1048576 * k + 287551) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 287711) 32 = 531441 * k + 145819 ∧ 531441 * k + 145819 < 1048576 * k + 287711) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 287871) 32 = 531441 * k + 145900 ∧ 531441 * k + 145900 < 1048576 * k + 287871) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 289215) 32 = 531441 * k + 146581 ∧ 531441 * k + 146581 < 1048576 * k + 289215) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 290351) 32 = 531441 * k + 147157 ∧ 531441 * k + 147157 < 1048576 * k + 290351) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 290907) 32 = 531441 * k + 147439 ∧ 531441 * k + 147439 < 1048576 * k + 290907) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 290975) 32 = 531441 * k + 147473 ∧ 531441 * k + 147473 < 1048576 * k + 290975) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 291039) 32 = 531441 * k + 147506 ∧ 531441 * k + 147506 < 1048576 * k + 291039) ∧
  R := by
  exact ⟨CollatzM20Shard038.descent_mod1048576_282267, ⟨CollatzM20Shard038.descent_mod1048576_282303, ⟨CollatzM20Shard038.descent_mod1048576_282847, ⟨CollatzM20Shard038.descent_mod1048576_283327, ⟨CollatzM20Shard038.descent_mod1048576_283751, ⟨CollatzM20Shard038.descent_mod1048576_284207, ⟨CollatzM20Shard038.descent_mod1048576_284775, ⟨CollatzM20Shard038.descent_mod1048576_285339, ⟨CollatzM20Shard038.descent_mod1048576_286239, ⟨CollatzM20Shard038.descent_mod1048576_286363, ⟨CollatzM20Shard038.descent_mod1048576_286399, ⟨CollatzM20Shard038.descent_mod1048576_287279, ⟨CollatzM20Shard038.descent_mod1048576_287551, ⟨CollatzM20Shard038.descent_mod1048576_287711, ⟨CollatzM20Shard038.descent_mod1048576_287871, ⟨CollatzM20Shard038.descent_mod1048576_289215, ⟨CollatzM20Shard038.descent_mod1048576_290351, ⟨CollatzM20Shard038.descent_mod1048576_290907, ⟨CollatzM20Shard038.descent_mod1048576_290975, ⟨CollatzM20Shard038.descent_mod1048576_291039, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
