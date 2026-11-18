import M20Shard021

namespace CollatzM20CompositionV1

theorem chunk021 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 149919) 32 = 531441 * k + 75983 ∧ 531441 * k + 75983 < 1048576 * k + 149919) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 150511) 32 = 531441 * k + 76283 ∧ 531441 * k + 76283 < 1048576 * k + 150511) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 150639) 32 = 531441 * k + 76348 ∧ 531441 * k + 76348 < 1048576 * k + 150639) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 150735) 32 = 531441 * k + 76397 ∧ 531441 * k + 76397 < 1048576 * k + 150735) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 150943) 32 = 531441 * k + 76502 ∧ 531441 * k + 76502 < 1048576 * k + 150943) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 151463) 32 = 531441 * k + 76766 ∧ 531441 * k + 76766 < 1048576 * k + 151463) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 151623) 32 = 531441 * k + 76847 ∧ 531441 * k + 76847 < 1048576 * k + 151623) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 151711) 32 = 531441 * k + 76891 ∧ 531441 * k + 76891 < 1048576 * k + 151711) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 152231) 32 = 531441 * k + 77155 ∧ 531441 * k + 77155 < 1048576 * k + 152231) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 152391) 32 = 531441 * k + 77236 ∧ 531441 * k + 77236 < 1048576 * k + 152391) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 152423) 32 = 531441 * k + 77252 ∧ 531441 * k + 77252 < 1048576 * k + 152423) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 153115) 32 = 531441 * k + 77603 ∧ 531441 * k + 77603 < 1048576 * k + 153115) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 153711) 32 = 531441 * k + 77905 ∧ 531441 * k + 77905 < 1048576 * k + 153711) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 154607) 32 = 531441 * k + 78359 ∧ 531441 * k + 78359 < 1048576 * k + 154607) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 155495) 32 = 531441 * k + 78809 ∧ 531441 * k + 78809 < 1048576 * k + 155495) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 155807) 32 = 531441 * k + 78967 ∧ 531441 * k + 78967 < 1048576 * k + 155807) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 156063) 32 = 531441 * k + 79097 ∧ 531441 * k + 79097 < 1048576 * k + 156063) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 156519) 32 = 531441 * k + 79328 ∧ 531441 * k + 79328 < 1048576 * k + 156519) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 156955) 32 = 531441 * k + 79549 ∧ 531441 * k + 79549 < 1048576 * k + 156955) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 157767) 32 = 531441 * k + 79961 ∧ 531441 * k + 79961 < 1048576 * k + 157767) ∧
  R := by
  exact ⟨CollatzM20Shard021.descent_mod1048576_149919, ⟨CollatzM20Shard021.descent_mod1048576_150511, ⟨CollatzM20Shard021.descent_mod1048576_150639, ⟨CollatzM20Shard021.descent_mod1048576_150735, ⟨CollatzM20Shard021.descent_mod1048576_150943, ⟨CollatzM20Shard021.descent_mod1048576_151463, ⟨CollatzM20Shard021.descent_mod1048576_151623, ⟨CollatzM20Shard021.descent_mod1048576_151711, ⟨CollatzM20Shard021.descent_mod1048576_152231, ⟨CollatzM20Shard021.descent_mod1048576_152391, ⟨CollatzM20Shard021.descent_mod1048576_152423, ⟨CollatzM20Shard021.descent_mod1048576_153115, ⟨CollatzM20Shard021.descent_mod1048576_153711, ⟨CollatzM20Shard021.descent_mod1048576_154607, ⟨CollatzM20Shard021.descent_mod1048576_155495, ⟨CollatzM20Shard021.descent_mod1048576_155807, ⟨CollatzM20Shard021.descent_mod1048576_156063, ⟨CollatzM20Shard021.descent_mod1048576_156519, ⟨CollatzM20Shard021.descent_mod1048576_156955, ⟨CollatzM20Shard021.descent_mod1048576_157767, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
