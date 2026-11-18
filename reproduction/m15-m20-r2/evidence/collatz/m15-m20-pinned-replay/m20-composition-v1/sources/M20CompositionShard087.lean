import M20Shard087

namespace CollatzM20CompositionV1

theorem chunk087 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 673647) 32 = 531441 * k + 341420 ∧ 531441 * k + 341420 < 1048576 * k + 673647) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 674119) 32 = 531441 * k + 341659 ∧ 531441 * k + 341659 < 1048576 * k + 674119) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 674287) 32 = 531441 * k + 341744 ∧ 531441 * k + 341744 < 1048576 * k + 674287) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 674415) 32 = 531441 * k + 341809 ∧ 531441 * k + 341809 < 1048576 * k + 674415) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 674671) 32 = 531441 * k + 341939 ∧ 531441 * k + 341939 < 1048576 * k + 674671) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 675007) 32 = 531441 * k + 342109 ∧ 531441 * k + 342109 < 1048576 * k + 675007) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 675175) 32 = 531441 * k + 342194 ∧ 531441 * k + 342194 < 1048576 * k + 675175) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 675327) 32 = 531441 * k + 342271 ∧ 531441 * k + 342271 < 1048576 * k + 675327) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 675743) 32 = 531441 * k + 342482 ∧ 531441 * k + 342482 < 1048576 * k + 675743) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677031) 32 = 531441 * k + 343135 ∧ 531441 * k + 343135 < 1048576 * k + 677031) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677191) 32 = 531441 * k + 343216 ∧ 531441 * k + 343216 < 1048576 * k + 677191) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677223) 32 = 531441 * k + 343232 ∧ 531441 * k + 343232 < 1048576 * k + 677223) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677327) 32 = 531441 * k + 343285 ∧ 531441 * k + 343285 < 1048576 * k + 677327) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677535) 32 = 531441 * k + 343390 ∧ 531441 * k + 343390 < 1048576 * k + 677535) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677883) 32 = 531441 * k + 343567 ∧ 531441 * k + 343567 < 1048576 * k + 677883) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677919) 32 = 531441 * k + 343585 ∧ 531441 * k + 343585 < 1048576 * k + 677919) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 678383) 32 = 531441 * k + 343820 ∧ 531441 * k + 343820 < 1048576 * k + 678383) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 678939) 32 = 531441 * k + 344102 ∧ 531441 * k + 344102 < 1048576 * k + 678939) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 679583) 32 = 531441 * k + 344428 ∧ 531441 * k + 344428 < 1048576 * k + 679583) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 679707) 32 = 531441 * k + 344491 ∧ 531441 * k + 344491 < 1048576 * k + 679707) ∧
  R := by
  exact ⟨CollatzM20Shard087.descent_mod1048576_673647, ⟨CollatzM20Shard087.descent_mod1048576_674119, ⟨CollatzM20Shard087.descent_mod1048576_674287, ⟨CollatzM20Shard087.descent_mod1048576_674415, ⟨CollatzM20Shard087.descent_mod1048576_674671, ⟨CollatzM20Shard087.descent_mod1048576_675007, ⟨CollatzM20Shard087.descent_mod1048576_675175, ⟨CollatzM20Shard087.descent_mod1048576_675327, ⟨CollatzM20Shard087.descent_mod1048576_675743, ⟨CollatzM20Shard087.descent_mod1048576_677031, ⟨CollatzM20Shard087.descent_mod1048576_677191, ⟨CollatzM20Shard087.descent_mod1048576_677223, ⟨CollatzM20Shard087.descent_mod1048576_677327, ⟨CollatzM20Shard087.descent_mod1048576_677535, ⟨CollatzM20Shard087.descent_mod1048576_677883, ⟨CollatzM20Shard087.descent_mod1048576_677919, ⟨CollatzM20Shard087.descent_mod1048576_678383, ⟨CollatzM20Shard087.descent_mod1048576_678939, ⟨CollatzM20Shard087.descent_mod1048576_679583, ⟨CollatzM20Shard087.descent_mod1048576_679707, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
