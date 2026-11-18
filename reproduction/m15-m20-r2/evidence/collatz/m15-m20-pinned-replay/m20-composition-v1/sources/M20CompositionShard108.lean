import M20Shard108

namespace CollatzM20CompositionV1

theorem chunk108 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 843291) 32 = 531441 * k + 427399 ∧ 531441 * k + 427399 < 1048576 * k + 843291) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 844015) 32 = 531441 * k + 427766 ∧ 531441 * k + 427766 < 1048576 * k + 844015) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 844767) 32 = 531441 * k + 428147 ∧ 531441 * k + 428147 < 1048576 * k + 844767) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 845215) 32 = 531441 * k + 428374 ∧ 531441 * k + 428374 < 1048576 * k + 845215) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 845915) 32 = 531441 * k + 428729 ∧ 531441 * k + 428729 < 1048576 * k + 845915) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 845927) 32 = 531441 * k + 428735 ∧ 531441 * k + 428735 < 1048576 * k + 845927) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 845951) 32 = 531441 * k + 428747 ∧ 531441 * k + 428747 < 1048576 * k + 845951) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 846759) 32 = 531441 * k + 429157 ∧ 531441 * k + 429157 < 1048576 * k + 846759) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 847079) 32 = 531441 * k + 429319 ∧ 531441 * k + 429319 < 1048576 * k + 847079) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 847407) 32 = 531441 * k + 429485 ∧ 531441 * k + 429485 < 1048576 * k + 847407) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 847647) 32 = 531441 * k + 429607 ∧ 531441 * k + 429607 < 1048576 * k + 847647) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 848123) 32 = 531441 * k + 429848 ∧ 531441 * k + 429848 < 1048576 * k + 848123) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 848127) 32 = 531441 * k + 429850 ∧ 531441 * k + 429850 < 1048576 * k + 848127) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 848287) 32 = 531441 * k + 429931 ∧ 531441 * k + 429931 < 1048576 * k + 848287) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 848743) 32 = 531441 * k + 430162 ∧ 531441 * k + 430162 < 1048576 * k + 848743) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 848863) 32 = 531441 * k + 430223 ∧ 531441 * k + 430223 < 1048576 * k + 848863) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 848987) 32 = 531441 * k + 430286 ∧ 531441 * k + 430286 < 1048576 * k + 848987) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 849023) 32 = 531441 * k + 430304 ∧ 531441 * k + 430304 < 1048576 * k + 849023) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 850047) 32 = 531441 * k + 430823 ∧ 531441 * k + 430823 < 1048576 * k + 850047) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 851483) 32 = 531441 * k + 431551 ∧ 531441 * k + 431551 < 1048576 * k + 851483) ∧
  R := by
  exact ⟨CollatzM20Shard108.descent_mod1048576_843291, ⟨CollatzM20Shard108.descent_mod1048576_844015, ⟨CollatzM20Shard108.descent_mod1048576_844767, ⟨CollatzM20Shard108.descent_mod1048576_845215, ⟨CollatzM20Shard108.descent_mod1048576_845915, ⟨CollatzM20Shard108.descent_mod1048576_845927, ⟨CollatzM20Shard108.descent_mod1048576_845951, ⟨CollatzM20Shard108.descent_mod1048576_846759, ⟨CollatzM20Shard108.descent_mod1048576_847079, ⟨CollatzM20Shard108.descent_mod1048576_847407, ⟨CollatzM20Shard108.descent_mod1048576_847647, ⟨CollatzM20Shard108.descent_mod1048576_848123, ⟨CollatzM20Shard108.descent_mod1048576_848127, ⟨CollatzM20Shard108.descent_mod1048576_848287, ⟨CollatzM20Shard108.descent_mod1048576_848743, ⟨CollatzM20Shard108.descent_mod1048576_848863, ⟨CollatzM20Shard108.descent_mod1048576_848987, ⟨CollatzM20Shard108.descent_mod1048576_849023, ⟨CollatzM20Shard108.descent_mod1048576_850047, ⟨CollatzM20Shard108.descent_mod1048576_851483, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
