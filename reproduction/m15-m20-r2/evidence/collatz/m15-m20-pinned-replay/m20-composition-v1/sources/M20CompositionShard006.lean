import M20Shard006

namespace CollatzM20CompositionV1

theorem chunk006 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 32799) 32 = 531441 * k + 16624 ∧ 531441 * k + 16624 < 1048576 * k + 32799) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 32935) 32 = 531441 * k + 16693 ∧ 531441 * k + 16693 < 1048576 * k + 32935) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 33511) 32 = 531441 * k + 16985 ∧ 531441 * k + 16985 < 1048576 * k + 33511) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 33535) 32 = 531441 * k + 16997 ∧ 531441 * k + 16997 < 1048576 * k + 33535) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 33819) 32 = 531441 * k + 17141 ∧ 531441 * k + 17141 < 1048576 * k + 33819) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 34983) 32 = 531441 * k + 17731 ∧ 531441 * k + 17731 < 1048576 * k + 34983) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 35327) 32 = 531441 * k + 17905 ∧ 531441 * k + 17905 < 1048576 * k + 35327) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 35559) 32 = 531441 * k + 18023 ∧ 531441 * k + 18023 < 1048576 * k + 35559) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 35867) 32 = 531441 * k + 18179 ∧ 531441 * k + 18179 < 1048576 * k + 35867) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 35871) 32 = 531441 * k + 18181 ∧ 531441 * k + 18181 < 1048576 * k + 35871) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 35995) 32 = 531441 * k + 18244 ∧ 531441 * k + 18244 < 1048576 * k + 35995) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 36895) 32 = 531441 * k + 18700 ∧ 531441 * k + 18700 < 1048576 * k + 36895) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 37359) 32 = 531441 * k + 18935 ∧ 531441 * k + 18935 < 1048576 * k + 37359) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 37375) 32 = 531441 * k + 18943 ∧ 531441 * k + 18943 < 1048576 * k + 37375) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 37583) 32 = 531441 * k + 19049 ∧ 531441 * k + 19049 < 1048576 * k + 37583) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 38631) 32 = 531441 * k + 19580 ∧ 531441 * k + 19580 < 1048576 * k + 38631) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 39079) 32 = 531441 * k + 19807 ∧ 531441 * k + 19807 < 1048576 * k + 39079) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 39323) 32 = 531441 * k + 19931 ∧ 531441 * k + 19931 < 1048576 * k + 39323) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 39423) 32 = 531441 * k + 19981 ∧ 531441 * k + 19981 < 1048576 * k + 39423) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 39963) 32 = 531441 * k + 20255 ∧ 531441 * k + 20255 < 1048576 * k + 39963) ∧
  R := by
  exact ⟨CollatzM20Shard006.descent_mod1048576_32799, ⟨CollatzM20Shard006.descent_mod1048576_32935, ⟨CollatzM20Shard006.descent_mod1048576_33511, ⟨CollatzM20Shard006.descent_mod1048576_33535, ⟨CollatzM20Shard006.descent_mod1048576_33819, ⟨CollatzM20Shard006.descent_mod1048576_34983, ⟨CollatzM20Shard006.descent_mod1048576_35327, ⟨CollatzM20Shard006.descent_mod1048576_35559, ⟨CollatzM20Shard006.descent_mod1048576_35867, ⟨CollatzM20Shard006.descent_mod1048576_35871, ⟨CollatzM20Shard006.descent_mod1048576_35995, ⟨CollatzM20Shard006.descent_mod1048576_36895, ⟨CollatzM20Shard006.descent_mod1048576_37359, ⟨CollatzM20Shard006.descent_mod1048576_37375, ⟨CollatzM20Shard006.descent_mod1048576_37583, ⟨CollatzM20Shard006.descent_mod1048576_38631, ⟨CollatzM20Shard006.descent_mod1048576_39079, ⟨CollatzM20Shard006.descent_mod1048576_39323, ⟨CollatzM20Shard006.descent_mod1048576_39423, ⟨CollatzM20Shard006.descent_mod1048576_39963, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
