import M20Shard115

namespace CollatzM20CompositionV1

theorem chunk115 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 897351) 32 = 531441 * k + 454798 ∧ 531441 * k + 454798 < 1048576 * k + 897351) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 897511) 32 = 531441 * k + 454879 ∧ 531441 * k + 454879 < 1048576 * k + 897511) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 898407) 32 = 531441 * k + 455333 ∧ 531441 * k + 455333 < 1048576 * k + 898407) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 899099) 32 = 531441 * k + 455684 ∧ 531441 * k + 455684 < 1048576 * k + 899099) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 899431) 32 = 531441 * k + 455852 ∧ 531441 * k + 455852 < 1048576 * k + 899431) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 900335) 32 = 531441 * k + 456310 ∧ 531441 * k + 456310 < 1048576 * k + 900335) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 900591) 32 = 531441 * k + 456440 ∧ 531441 * k + 456440 < 1048576 * k + 900591) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 901343) 32 = 531441 * k + 456821 ∧ 531441 * k + 456821 < 1048576 * k + 901343) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 901359) 32 = 531441 * k + 456829 ∧ 531441 * k + 456829 < 1048576 * k + 901359) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 901787) 32 = 531441 * k + 457046 ∧ 531441 * k + 457046 < 1048576 * k + 901787) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 901791) 32 = 531441 * k + 457048 ∧ 531441 * k + 457048 < 1048576 * k + 901791) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 901823) 32 = 531441 * k + 457064 ∧ 531441 * k + 457064 < 1048576 * k + 901823) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 902047) 32 = 531441 * k + 457178 ∧ 531441 * k + 457178 < 1048576 * k + 902047) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 902527) 32 = 531441 * k + 457421 ∧ 531441 * k + 457421 < 1048576 * k + 902527) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 903655) 32 = 531441 * k + 457993 ∧ 531441 * k + 457993 < 1048576 * k + 903655) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 904319) 32 = 531441 * k + 458329 ∧ 531441 * k + 458329 < 1048576 * k + 904319) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 904859) 32 = 531441 * k + 458603 ∧ 531441 * k + 458603 < 1048576 * k + 904859) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 904863) 32 = 531441 * k + 458605 ∧ 531441 * k + 458605 < 1048576 * k + 904863) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 905439) 32 = 531441 * k + 458897 ∧ 531441 * k + 458897 < 1048576 * k + 905439) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 905919) 32 = 531441 * k + 459140 ∧ 531441 * k + 459140 < 1048576 * k + 905919) ∧
  R := by
  exact ⟨CollatzM20Shard115.descent_mod1048576_897351, ⟨CollatzM20Shard115.descent_mod1048576_897511, ⟨CollatzM20Shard115.descent_mod1048576_898407, ⟨CollatzM20Shard115.descent_mod1048576_899099, ⟨CollatzM20Shard115.descent_mod1048576_899431, ⟨CollatzM20Shard115.descent_mod1048576_900335, ⟨CollatzM20Shard115.descent_mod1048576_900591, ⟨CollatzM20Shard115.descent_mod1048576_901343, ⟨CollatzM20Shard115.descent_mod1048576_901359, ⟨CollatzM20Shard115.descent_mod1048576_901787, ⟨CollatzM20Shard115.descent_mod1048576_901791, ⟨CollatzM20Shard115.descent_mod1048576_901823, ⟨CollatzM20Shard115.descent_mod1048576_902047, ⟨CollatzM20Shard115.descent_mod1048576_902527, ⟨CollatzM20Shard115.descent_mod1048576_903655, ⟨CollatzM20Shard115.descent_mod1048576_904319, ⟨CollatzM20Shard115.descent_mod1048576_904859, ⟨CollatzM20Shard115.descent_mod1048576_904863, ⟨CollatzM20Shard115.descent_mod1048576_905439, ⟨CollatzM20Shard115.descent_mod1048576_905919, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
