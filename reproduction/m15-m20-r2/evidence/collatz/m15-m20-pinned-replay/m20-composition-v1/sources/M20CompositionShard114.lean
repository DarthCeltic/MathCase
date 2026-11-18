import M20Shard114

namespace CollatzM20CompositionV1

theorem chunk114 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 890159) 32 = 531441 * k + 451153 ∧ 531441 * k + 451153 < 1048576 * k + 890159) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 890319) 32 = 531441 * k + 451234 ∧ 531441 * k + 451234 < 1048576 * k + 890319) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 890527) 32 = 531441 * k + 451339 ∧ 531441 * k + 451339 < 1048576 * k + 890527) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 890907) 32 = 531441 * k + 451532 ∧ 531441 * k + 451532 < 1048576 * k + 890907) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 891375) 32 = 531441 * k + 451769 ∧ 531441 * k + 451769 < 1048576 * k + 891375) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 892143) 32 = 531441 * k + 452158 ∧ 531441 * k + 452158 < 1048576 * k + 892143) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 892263) 32 = 531441 * k + 452219 ∧ 531441 * k + 452219 < 1048576 * k + 892263) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 892399) 32 = 531441 * k + 452288 ∧ 531441 * k + 452288 < 1048576 * k + 892399) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 892575) 32 = 531441 * k + 452377 ∧ 531441 * k + 452377 < 1048576 * k + 892575) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 892831) 32 = 531441 * k + 452507 ∧ 531441 * k + 452507 < 1048576 * k + 892831) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 893723) 32 = 531441 * k + 452959 ∧ 531441 * k + 452959 < 1048576 * k + 893723) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 894191) 32 = 531441 * k + 453196 ∧ 531441 * k + 453196 < 1048576 * k + 894191) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 894279) 32 = 531441 * k + 453241 ∧ 531441 * k + 453241 < 1048576 * k + 894279) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 895215) 32 = 531441 * k + 453715 ∧ 531441 * k + 453715 < 1048576 * k + 895215) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 895335) 32 = 531441 * k + 453776 ∧ 531441 * k + 453776 < 1048576 * k + 895335) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 895771) 32 = 531441 * k + 453997 ∧ 531441 * k + 453997 < 1048576 * k + 895771) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 896463) 32 = 531441 * k + 454348 ∧ 531441 * k + 454348 < 1048576 * k + 896463) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 896623) 32 = 531441 * k + 454429 ∧ 531441 * k + 454429 < 1048576 * k + 896623) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 896671) 32 = 531441 * k + 454453 ∧ 531441 * k + 454453 < 1048576 * k + 896671) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 897263) 32 = 531441 * k + 454753 ∧ 531441 * k + 454753 < 1048576 * k + 897263) ∧
  R := by
  exact ⟨CollatzM20Shard114.descent_mod1048576_890159, ⟨CollatzM20Shard114.descent_mod1048576_890319, ⟨CollatzM20Shard114.descent_mod1048576_890527, ⟨CollatzM20Shard114.descent_mod1048576_890907, ⟨CollatzM20Shard114.descent_mod1048576_891375, ⟨CollatzM20Shard114.descent_mod1048576_892143, ⟨CollatzM20Shard114.descent_mod1048576_892263, ⟨CollatzM20Shard114.descent_mod1048576_892399, ⟨CollatzM20Shard114.descent_mod1048576_892575, ⟨CollatzM20Shard114.descent_mod1048576_892831, ⟨CollatzM20Shard114.descent_mod1048576_893723, ⟨CollatzM20Shard114.descent_mod1048576_894191, ⟨CollatzM20Shard114.descent_mod1048576_894279, ⟨CollatzM20Shard114.descent_mod1048576_895215, ⟨CollatzM20Shard114.descent_mod1048576_895335, ⟨CollatzM20Shard114.descent_mod1048576_895771, ⟨CollatzM20Shard114.descent_mod1048576_896463, ⟨CollatzM20Shard114.descent_mod1048576_896623, ⟨CollatzM20Shard114.descent_mod1048576_896671, ⟨CollatzM20Shard114.descent_mod1048576_897263, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
