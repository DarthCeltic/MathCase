import M20Shard039

namespace CollatzM20CompositionV1

theorem chunk039 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 291359) 32 = 531441 * k + 147668 ∧ 531441 * k + 147668 < 1048576 * k + 291359) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 291807) 32 = 531441 * k + 147895 ∧ 531441 * k + 147895 < 1048576 * k + 291807) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 292063) 32 = 531441 * k + 148025 ∧ 531441 * k + 148025 < 1048576 * k + 292063) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 292383) 32 = 531441 * k + 148187 ∧ 531441 * k + 148187 < 1048576 * k + 292383) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 292399) 32 = 531441 * k + 148195 ∧ 531441 * k + 148195 < 1048576 * k + 292399) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 292543) 32 = 531441 * k + 148268 ∧ 531441 * k + 148268 < 1048576 * k + 292543) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 292967) 32 = 531441 * k + 148483 ∧ 531441 * k + 148483 < 1048576 * k + 292967) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 292975) 32 = 531441 * k + 148487 ∧ 531441 * k + 148487 < 1048576 * k + 292975) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 293543) 32 = 531441 * k + 148775 ∧ 531441 * k + 148775 < 1048576 * k + 293543) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 294047) 32 = 531441 * k + 149030 ∧ 531441 * k + 149030 < 1048576 * k + 294047) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 294555) 32 = 531441 * k + 149288 ∧ 531441 * k + 149288 < 1048576 * k + 294555) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 294607) 32 = 531441 * k + 149314 ∧ 531441 * k + 149314 < 1048576 * k + 294607) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 295071) 32 = 531441 * k + 149549 ∧ 531441 * k + 149549 < 1048576 * k + 295071) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 295163) 32 = 531441 * k + 149596 ∧ 531441 * k + 149596 < 1048576 * k + 295163) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 295359) 32 = 531441 * k + 149695 ∧ 531441 * k + 149695 < 1048576 * k + 295359) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 295471) 32 = 531441 * k + 149752 ∧ 531441 * k + 149752 < 1048576 * k + 295471) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 296655) 32 = 531441 * k + 150352 ∧ 531441 * k + 150352 < 1048576 * k + 296655) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 297407) 32 = 531441 * k + 150733 ∧ 531441 * k + 150733 < 1048576 * k + 297407) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 298235) 32 = 531441 * k + 151153 ∧ 531441 * k + 151153 < 1048576 * k + 298235) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 298267) 32 = 531441 * k + 151169 ∧ 531441 * k + 151169 < 1048576 * k + 298267) ∧
  R := by
  exact ⟨CollatzM20Shard039.descent_mod1048576_291359, ⟨CollatzM20Shard039.descent_mod1048576_291807, ⟨CollatzM20Shard039.descent_mod1048576_292063, ⟨CollatzM20Shard039.descent_mod1048576_292383, ⟨CollatzM20Shard039.descent_mod1048576_292399, ⟨CollatzM20Shard039.descent_mod1048576_292543, ⟨CollatzM20Shard039.descent_mod1048576_292967, ⟨CollatzM20Shard039.descent_mod1048576_292975, ⟨CollatzM20Shard039.descent_mod1048576_293543, ⟨CollatzM20Shard039.descent_mod1048576_294047, ⟨CollatzM20Shard039.descent_mod1048576_294555, ⟨CollatzM20Shard039.descent_mod1048576_294607, ⟨CollatzM20Shard039.descent_mod1048576_295071, ⟨CollatzM20Shard039.descent_mod1048576_295163, ⟨CollatzM20Shard039.descent_mod1048576_295359, ⟨CollatzM20Shard039.descent_mod1048576_295471, ⟨CollatzM20Shard039.descent_mod1048576_296655, ⟨CollatzM20Shard039.descent_mod1048576_297407, ⟨CollatzM20Shard039.descent_mod1048576_298235, ⟨CollatzM20Shard039.descent_mod1048576_298267, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
