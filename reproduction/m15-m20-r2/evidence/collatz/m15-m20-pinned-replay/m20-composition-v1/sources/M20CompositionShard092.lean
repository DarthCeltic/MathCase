import M20Shard092

namespace CollatzM20CompositionV1

theorem chunk092 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 709723) 32 = 531441 * k + 359704 ∧ 531441 * k + 359704 < 1048576 * k + 709723) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 710079) 32 = 531441 * k + 359884 ∧ 531441 * k + 359884 < 1048576 * k + 710079) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 710907) 32 = 531441 * k + 360304 ∧ 531441 * k + 360304 < 1048576 * k + 710907) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 711103) 32 = 531441 * k + 360403 ∧ 531441 * k + 360403 < 1048576 * k + 711103) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 711791) 32 = 531441 * k + 360752 ∧ 531441 * k + 360752 < 1048576 * k + 711791) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 712239) 32 = 531441 * k + 360979 ∧ 531441 * k + 360979 < 1048576 * k + 712239) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 712511) 32 = 531441 * k + 361117 ∧ 531441 * k + 361117 < 1048576 * k + 712511) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 712831) 32 = 531441 * k + 361279 ∧ 531441 * k + 361279 < 1048576 * k + 712831) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 712863) 32 = 531441 * k + 361295 ∧ 531441 * k + 361295 < 1048576 * k + 712863) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 712955) 32 = 531441 * k + 361342 ∧ 531441 * k + 361342 < 1048576 * k + 712955) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 713151) 32 = 531441 * k + 361441 ∧ 531441 * k + 361441 < 1048576 * k + 713151) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 713727) 32 = 531441 * k + 361733 ∧ 531441 * k + 361733 < 1048576 * k + 713727) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 714011) 32 = 531441 * k + 361877 ∧ 531441 * k + 361877 < 1048576 * k + 714011) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 715431) 32 = 531441 * k + 362597 ∧ 531441 * k + 362597 < 1048576 * k + 715431) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 715867) 32 = 531441 * k + 362818 ∧ 531441 * k + 362818 < 1048576 * k + 715867) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 716027) 32 = 531441 * k + 362899 ∧ 531441 * k + 362899 < 1048576 * k + 716027) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 716059) 32 = 531441 * k + 362915 ∧ 531441 * k + 362915 < 1048576 * k + 716059) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 716223) 32 = 531441 * k + 362998 ∧ 531441 * k + 362998 < 1048576 * k + 716223) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 716319) 32 = 531441 * k + 363047 ∧ 531441 * k + 363047 < 1048576 * k + 716319) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 716479) 32 = 531441 * k + 363128 ∧ 531441 * k + 363128 < 1048576 * k + 716479) ∧
  R := by
  exact ⟨CollatzM20Shard092.descent_mod1048576_709723, ⟨CollatzM20Shard092.descent_mod1048576_710079, ⟨CollatzM20Shard092.descent_mod1048576_710907, ⟨CollatzM20Shard092.descent_mod1048576_711103, ⟨CollatzM20Shard092.descent_mod1048576_711791, ⟨CollatzM20Shard092.descent_mod1048576_712239, ⟨CollatzM20Shard092.descent_mod1048576_712511, ⟨CollatzM20Shard092.descent_mod1048576_712831, ⟨CollatzM20Shard092.descent_mod1048576_712863, ⟨CollatzM20Shard092.descent_mod1048576_712955, ⟨CollatzM20Shard092.descent_mod1048576_713151, ⟨CollatzM20Shard092.descent_mod1048576_713727, ⟨CollatzM20Shard092.descent_mod1048576_714011, ⟨CollatzM20Shard092.descent_mod1048576_715431, ⟨CollatzM20Shard092.descent_mod1048576_715867, ⟨CollatzM20Shard092.descent_mod1048576_716027, ⟨CollatzM20Shard092.descent_mod1048576_716059, ⟨CollatzM20Shard092.descent_mod1048576_716223, ⟨CollatzM20Shard092.descent_mod1048576_716319, ⟨CollatzM20Shard092.descent_mod1048576_716479, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
