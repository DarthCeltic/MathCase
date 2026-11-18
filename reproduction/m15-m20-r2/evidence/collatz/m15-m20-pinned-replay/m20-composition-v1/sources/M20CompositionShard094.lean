import M20Shard094

namespace CollatzM20CompositionV1

theorem chunk094 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 725743) 32 = 531441 * k + 367823 ∧ 531441 * k + 367823 < 1048576 * k + 725743) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 726175) 32 = 531441 * k + 368042 ∧ 531441 * k + 368042 < 1048576 * k + 726175) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 726299) 32 = 531441 * k + 368105 ∧ 531441 * k + 368105 < 1048576 * k + 726299) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 726735) 32 = 531441 * k + 368326 ∧ 531441 * k + 368326 < 1048576 * k + 726735) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 726895) 32 = 531441 * k + 368407 ∧ 531441 * k + 368407 < 1048576 * k + 726895) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 727791) 32 = 531441 * k + 368861 ∧ 531441 * k + 368861 < 1048576 * k + 727791) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 728315) 32 = 531441 * k + 369127 ∧ 531441 * k + 369127 < 1048576 * k + 728315) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 728703) 32 = 531441 * k + 369323 ∧ 531441 * k + 369323 < 1048576 * k + 728703) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 729371) 32 = 531441 * k + 369662 ∧ 531441 * k + 369662 < 1048576 * k + 729371) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 729407) 32 = 531441 * k + 369680 ∧ 531441 * k + 369680 < 1048576 * k + 729407) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 729499) 32 = 531441 * k + 369727 ∧ 531441 * k + 369727 < 1048576 * k + 729499) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 729727) 32 = 531441 * k + 369842 ∧ 531441 * k + 369842 < 1048576 * k + 729727) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 730863) 32 = 531441 * k + 370418 ∧ 531441 * k + 370418 < 1048576 * k + 730863) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 730991) 32 = 531441 * k + 370483 ∧ 531441 * k + 370483 < 1048576 * k + 730991) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 731615) 32 = 531441 * k + 370799 ∧ 531441 * k + 370799 < 1048576 * k + 731615) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 731775) 32 = 531441 * k + 370880 ∧ 531441 * k + 370880 < 1048576 * k + 731775) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 731887) 32 = 531441 * k + 370937 ∧ 531441 * k + 370937 < 1048576 * k + 731887) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 731903) 32 = 531441 * k + 370945 ∧ 531441 * k + 370945 < 1048576 * k + 731903) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 732479) 32 = 531441 * k + 371237 ∧ 531441 * k + 371237 < 1048576 * k + 732479) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 733927) 32 = 531441 * k + 371971 ∧ 531441 * k + 371971 < 1048576 * k + 733927) ∧
  R := by
  exact ⟨CollatzM20Shard094.descent_mod1048576_725743, ⟨CollatzM20Shard094.descent_mod1048576_726175, ⟨CollatzM20Shard094.descent_mod1048576_726299, ⟨CollatzM20Shard094.descent_mod1048576_726735, ⟨CollatzM20Shard094.descent_mod1048576_726895, ⟨CollatzM20Shard094.descent_mod1048576_727791, ⟨CollatzM20Shard094.descent_mod1048576_728315, ⟨CollatzM20Shard094.descent_mod1048576_728703, ⟨CollatzM20Shard094.descent_mod1048576_729371, ⟨CollatzM20Shard094.descent_mod1048576_729407, ⟨CollatzM20Shard094.descent_mod1048576_729499, ⟨CollatzM20Shard094.descent_mod1048576_729727, ⟨CollatzM20Shard094.descent_mod1048576_730863, ⟨CollatzM20Shard094.descent_mod1048576_730991, ⟨CollatzM20Shard094.descent_mod1048576_731615, ⟨CollatzM20Shard094.descent_mod1048576_731775, ⟨CollatzM20Shard094.descent_mod1048576_731887, ⟨CollatzM20Shard094.descent_mod1048576_731903, ⟨CollatzM20Shard094.descent_mod1048576_732479, ⟨CollatzM20Shard094.descent_mod1048576_733927, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
