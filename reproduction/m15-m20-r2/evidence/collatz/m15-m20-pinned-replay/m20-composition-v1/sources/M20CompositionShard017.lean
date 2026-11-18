import M20Shard017

namespace CollatzM20CompositionV1

theorem chunk017 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 115291) 32 = 531441 * k + 58433 ∧ 531441 * k + 58433 < 1048576 * k + 115291) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 115647) 32 = 531441 * k + 58613 ∧ 531441 * k + 58613 < 1048576 * k + 115647) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 116191) 32 = 531441 * k + 58889 ∧ 531441 * k + 58889 < 1048576 * k + 116191) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 116463) 32 = 531441 * k + 59027 ∧ 531441 * k + 59027 < 1048576 * k + 116463) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 117231) 32 = 531441 * k + 59416 ∧ 531441 * k + 59416 < 1048576 * k + 117231) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 117695) 32 = 531441 * k + 59651 ∧ 531441 * k + 59651 < 1048576 * k + 117695) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 118119) 32 = 531441 * k + 59866 ∧ 531441 * k + 59866 < 1048576 * k + 118119) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 119387) 32 = 531441 * k + 60509 ∧ 531441 * k + 60509 < 1048576 * k + 119387) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 120167) 32 = 531441 * k + 60904 ∧ 531441 * k + 60904 < 1048576 * k + 120167) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 120423) 32 = 531441 * k + 61034 ∧ 531441 * k + 61034 < 1048576 * k + 120423) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 120859) 32 = 531441 * k + 61255 ∧ 531441 * k + 61255 < 1048576 * k + 120859) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 121471) 32 = 531441 * k + 61565 ∧ 531441 * k + 61565 < 1048576 * k + 121471) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 121791) 32 = 531441 * k + 61727 ∧ 531441 * k + 61727 < 1048576 * k + 121791) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 122335) 32 = 531441 * k + 62003 ∧ 531441 * k + 62003 < 1048576 * k + 122335) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 122351) 32 = 531441 * k + 62011 ∧ 531441 * k + 62011 < 1048576 * k + 122351) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 122927) 32 = 531441 * k + 62303 ∧ 531441 * k + 62303 < 1048576 * k + 122927) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 124263) 32 = 531441 * k + 62980 ∧ 531441 * k + 62980 < 1048576 * k + 124263) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 124507) 32 = 531441 * k + 63104 ∧ 531441 * k + 63104 < 1048576 * k + 124507) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 124991) 32 = 531441 * k + 63349 ∧ 531441 * k + 63349 < 1048576 * k + 124991) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 125423) 32 = 531441 * k + 63568 ∧ 531441 * k + 63568 < 1048576 * k + 125423) ∧
  R := by
  exact ⟨CollatzM20Shard017.descent_mod1048576_115291, ⟨CollatzM20Shard017.descent_mod1048576_115647, ⟨CollatzM20Shard017.descent_mod1048576_116191, ⟨CollatzM20Shard017.descent_mod1048576_116463, ⟨CollatzM20Shard017.descent_mod1048576_117231, ⟨CollatzM20Shard017.descent_mod1048576_117695, ⟨CollatzM20Shard017.descent_mod1048576_118119, ⟨CollatzM20Shard017.descent_mod1048576_119387, ⟨CollatzM20Shard017.descent_mod1048576_120167, ⟨CollatzM20Shard017.descent_mod1048576_120423, ⟨CollatzM20Shard017.descent_mod1048576_120859, ⟨CollatzM20Shard017.descent_mod1048576_121471, ⟨CollatzM20Shard017.descent_mod1048576_121791, ⟨CollatzM20Shard017.descent_mod1048576_122335, ⟨CollatzM20Shard017.descent_mod1048576_122351, ⟨CollatzM20Shard017.descent_mod1048576_122927, ⟨CollatzM20Shard017.descent_mod1048576_124263, ⟨CollatzM20Shard017.descent_mod1048576_124507, ⟨CollatzM20Shard017.descent_mod1048576_124991, ⟨CollatzM20Shard017.descent_mod1048576_125423, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
