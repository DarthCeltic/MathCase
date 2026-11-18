import M20Shard098

namespace CollatzM20CompositionV1

theorem chunk098 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 764159) 32 = 531441 * k + 387293 ∧ 531441 * k + 387293 < 1048576 * k + 764159) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 764607) 32 = 531441 * k + 387520 ∧ 531441 * k + 387520 < 1048576 * k + 764607) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 764703) 32 = 531441 * k + 387569 ∧ 531441 * k + 387569 < 1048576 * k + 764703) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 765183) 32 = 531441 * k + 387812 ∧ 531441 * k + 387812 < 1048576 * k + 765183) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 765863) 32 = 531441 * k + 388157 ∧ 531441 * k + 388157 < 1048576 * k + 765863) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 766063) 32 = 531441 * k + 388258 ∧ 531441 * k + 388258 < 1048576 * k + 766063) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 766655) 32 = 531441 * k + 388558 ∧ 531441 * k + 388558 < 1048576 * k + 766655) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 767391) 32 = 531441 * k + 388931 ∧ 531441 * k + 388931 < 1048576 * k + 767391) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 768047) 32 = 531441 * k + 389264 ∧ 531441 * k + 389264 < 1048576 * k + 768047) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 768207) 32 = 531441 * k + 389345 ∧ 531441 * k + 389345 < 1048576 * k + 768207) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 768255) 32 = 531441 * k + 389369 ∧ 531441 * k + 389369 < 1048576 * k + 768255) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769023) 32 = 531441 * k + 389758 ∧ 531441 * k + 389758 < 1048576 * k + 769023) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769087) 32 = 531441 * k + 389791 ∧ 531441 * k + 389791 < 1048576 * k + 769087) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769135) 32 = 531441 * k + 389815 ∧ 531441 * k + 389815 < 1048576 * k + 769135) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769407) 32 = 531441 * k + 389953 ∧ 531441 * k + 389953 < 1048576 * k + 769407) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769439) 32 = 531441 * k + 389969 ∧ 531441 * k + 389969 < 1048576 * k + 769439) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769567) 32 = 531441 * k + 390034 ∧ 531441 * k + 390034 < 1048576 * k + 769567) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769727) 32 = 531441 * k + 390115 ∧ 531441 * k + 390115 < 1048576 * k + 769727) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 771071) 32 = 531441 * k + 390796 ∧ 531441 * k + 390796 < 1048576 * k + 771071) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 772007) 32 = 531441 * k + 391271 ∧ 531441 * k + 391271 < 1048576 * k + 772007) ∧
  R := by
  exact ⟨CollatzM20Shard098.descent_mod1048576_764159, ⟨CollatzM20Shard098.descent_mod1048576_764607, ⟨CollatzM20Shard098.descent_mod1048576_764703, ⟨CollatzM20Shard098.descent_mod1048576_765183, ⟨CollatzM20Shard098.descent_mod1048576_765863, ⟨CollatzM20Shard098.descent_mod1048576_766063, ⟨CollatzM20Shard098.descent_mod1048576_766655, ⟨CollatzM20Shard098.descent_mod1048576_767391, ⟨CollatzM20Shard098.descent_mod1048576_768047, ⟨CollatzM20Shard098.descent_mod1048576_768207, ⟨CollatzM20Shard098.descent_mod1048576_768255, ⟨CollatzM20Shard098.descent_mod1048576_769023, ⟨CollatzM20Shard098.descent_mod1048576_769087, ⟨CollatzM20Shard098.descent_mod1048576_769135, ⟨CollatzM20Shard098.descent_mod1048576_769407, ⟨CollatzM20Shard098.descent_mod1048576_769439, ⟨CollatzM20Shard098.descent_mod1048576_769567, ⟨CollatzM20Shard098.descent_mod1048576_769727, ⟨CollatzM20Shard098.descent_mod1048576_771071, ⟨CollatzM20Shard098.descent_mod1048576_772007, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
