import M20Shard027

namespace CollatzM20CompositionV1

theorem chunk027 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 194047) 32 = 531441 * k + 98348 ∧ 531441 * k + 98348 < 1048576 * k + 194047) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 194331) 32 = 531441 * k + 98492 ∧ 531441 * k + 98492 < 1048576 * k + 194331) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 194799) 32 = 531441 * k + 98729 ∧ 531441 * k + 98729 < 1048576 * k + 194799) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 195175) 32 = 531441 * k + 98920 ∧ 531441 * k + 98920 < 1048576 * k + 195175) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 195355) 32 = 531441 * k + 99011 ∧ 531441 * k + 99011 < 1048576 * k + 195355) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 195823) 32 = 531441 * k + 99248 ∧ 531441 * k + 99248 < 1048576 * k + 195823) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 195839) 32 = 531441 * k + 99256 ∧ 531441 * k + 99256 < 1048576 * k + 195839) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 196063) 32 = 531441 * k + 99370 ∧ 531441 * k + 99370 < 1048576 * k + 196063) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 196543) 32 = 531441 * k + 99613 ∧ 531441 * k + 99613 < 1048576 * k + 196543) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 196603) 32 = 531441 * k + 99644 ∧ 531441 * k + 99644 < 1048576 * k + 196603) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 196763) 32 = 531441 * k + 99725 ∧ 531441 * k + 99725 < 1048576 * k + 196763) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 197279) 32 = 531441 * k + 99986 ∧ 531441 * k + 99986 < 1048576 * k + 197279) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 197403) 32 = 531441 * k + 100049 ∧ 531441 * k + 100049 < 1048576 * k + 197403) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 197887) 32 = 531441 * k + 100294 ∧ 531441 * k + 100294 < 1048576 * k + 197887) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 198095) 32 = 531441 * k + 100400 ∧ 531441 * k + 100400 < 1048576 * k + 198095) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 198303) 32 = 531441 * k + 100505 ∧ 531441 * k + 100505 < 1048576 * k + 198303) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 199143) 32 = 531441 * k + 100931 ∧ 531441 * k + 100931 < 1048576 * k + 199143) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 199259) 32 = 531441 * k + 100990 ∧ 531441 * k + 100990 < 1048576 * k + 199259) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 199419) 32 = 531441 * k + 101071 ∧ 531441 * k + 101071 < 1048576 * k + 199419) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 199919) 32 = 531441 * k + 101324 ∧ 531441 * k + 101324 < 1048576 * k + 199919) ∧
  R := by
  exact ⟨CollatzM20Shard027.descent_mod1048576_194047, ⟨CollatzM20Shard027.descent_mod1048576_194331, ⟨CollatzM20Shard027.descent_mod1048576_194799, ⟨CollatzM20Shard027.descent_mod1048576_195175, ⟨CollatzM20Shard027.descent_mod1048576_195355, ⟨CollatzM20Shard027.descent_mod1048576_195823, ⟨CollatzM20Shard027.descent_mod1048576_195839, ⟨CollatzM20Shard027.descent_mod1048576_196063, ⟨CollatzM20Shard027.descent_mod1048576_196543, ⟨CollatzM20Shard027.descent_mod1048576_196603, ⟨CollatzM20Shard027.descent_mod1048576_196763, ⟨CollatzM20Shard027.descent_mod1048576_197279, ⟨CollatzM20Shard027.descent_mod1048576_197403, ⟨CollatzM20Shard027.descent_mod1048576_197887, ⟨CollatzM20Shard027.descent_mod1048576_198095, ⟨CollatzM20Shard027.descent_mod1048576_198303, ⟨CollatzM20Shard027.descent_mod1048576_199143, ⟨CollatzM20Shard027.descent_mod1048576_199259, ⟨CollatzM20Shard027.descent_mod1048576_199419, ⟨CollatzM20Shard027.descent_mod1048576_199919, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
