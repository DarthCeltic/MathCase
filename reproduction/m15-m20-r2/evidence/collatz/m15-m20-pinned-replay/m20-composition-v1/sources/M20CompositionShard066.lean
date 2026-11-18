import M20Shard066

namespace CollatzM20CompositionV1

theorem chunk066 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 509695) 32 = 531441 * k + 258325 ∧ 531441 * k + 258325 < 1048576 * k + 509695) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 510631) 32 = 531441 * k + 258800 ∧ 531441 * k + 258800 < 1048576 * k + 510631) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 510791) 32 = 531441 * k + 258881 ∧ 531441 * k + 258881 < 1048576 * k + 510791) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 511067) 32 = 531441 * k + 259021 ∧ 531441 * k + 259021 < 1048576 * k + 511067) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 511227) 32 = 531441 * k + 259102 ∧ 531441 * k + 259102 < 1048576 * k + 511227) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 511655) 32 = 531441 * k + 259319 ∧ 531441 * k + 259319 < 1048576 * k + 511655) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 511743) 32 = 531441 * k + 259363 ∧ 531441 * k + 259363 < 1048576 * k + 511743) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 512283) 32 = 531441 * k + 259637 ∧ 531441 * k + 259637 < 1048576 * k + 512283) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 512319) 32 = 531441 * k + 259655 ∧ 531441 * k + 259655 < 1048576 * k + 512319) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 512559) 32 = 531441 * k + 259777 ∧ 531441 * k + 259777 < 1048576 * k + 512559) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 512767) 32 = 531441 * k + 259882 ∧ 531441 * k + 259882 < 1048576 * k + 512767) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 513135) 32 = 531441 * k + 260069 ∧ 531441 * k + 260069 < 1048576 * k + 513135) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 513183) 32 = 531441 * k + 260093 ∧ 531441 * k + 260093 < 1048576 * k + 513183) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 513307) 32 = 531441 * k + 260156 ∧ 531441 * k + 260156 < 1048576 * k + 513307) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 513743) 32 = 531441 * k + 260377 ∧ 531441 * k + 260377 < 1048576 * k + 513743) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 513903) 32 = 531441 * k + 260458 ∧ 531441 * k + 260458 < 1048576 * k + 513903) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 514015) 32 = 531441 * k + 260515 ∧ 531441 * k + 260515 < 1048576 * k + 514015) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 514367) 32 = 531441 * k + 260693 ∧ 531441 * k + 260693 < 1048576 * k + 514367) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 514791) 32 = 531441 * k + 260908 ∧ 531441 * k + 260908 < 1048576 * k + 514791) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 514815) 32 = 531441 * k + 260920 ∧ 531441 * k + 260920 < 1048576 * k + 514815) ∧
  R := by
  exact ⟨CollatzM20Shard066.descent_mod1048576_509695, ⟨CollatzM20Shard066.descent_mod1048576_510631, ⟨CollatzM20Shard066.descent_mod1048576_510791, ⟨CollatzM20Shard066.descent_mod1048576_511067, ⟨CollatzM20Shard066.descent_mod1048576_511227, ⟨CollatzM20Shard066.descent_mod1048576_511655, ⟨CollatzM20Shard066.descent_mod1048576_511743, ⟨CollatzM20Shard066.descent_mod1048576_512283, ⟨CollatzM20Shard066.descent_mod1048576_512319, ⟨CollatzM20Shard066.descent_mod1048576_512559, ⟨CollatzM20Shard066.descent_mod1048576_512767, ⟨CollatzM20Shard066.descent_mod1048576_513135, ⟨CollatzM20Shard066.descent_mod1048576_513183, ⟨CollatzM20Shard066.descent_mod1048576_513307, ⟨CollatzM20Shard066.descent_mod1048576_513743, ⟨CollatzM20Shard066.descent_mod1048576_513903, ⟨CollatzM20Shard066.descent_mod1048576_514015, ⟨CollatzM20Shard066.descent_mod1048576_514367, ⟨CollatzM20Shard066.descent_mod1048576_514791, ⟨CollatzM20Shard066.descent_mod1048576_514815, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
