import M20Shard101

namespace CollatzM20CompositionV1

theorem chunk101 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 786715) 32 = 531441 * k + 398725 ∧ 531441 * k + 398725 < 1048576 * k + 786715) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 787439) 32 = 531441 * k + 399092 ∧ 531441 * k + 399092 < 1048576 * k + 787439) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 788351) 32 = 531441 * k + 399554 ∧ 531441 * k + 399554 < 1048576 * k + 788351) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 788895) 32 = 531441 * k + 399830 ∧ 531441 * k + 399830 < 1048576 * k + 788895) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 789351) 32 = 531441 * k + 400061 ∧ 531441 * k + 400061 < 1048576 * k + 789351) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 789787) 32 = 531441 * k + 400282 ∧ 531441 * k + 400282 < 1048576 * k + 789787) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 790183) 32 = 531441 * k + 400483 ∧ 531441 * k + 400483 < 1048576 * k + 790183) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 790847) 32 = 531441 * k + 400819 ∧ 531441 * k + 400819 < 1048576 * k + 790847) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 791071) 32 = 531441 * k + 400933 ∧ 531441 * k + 400933 < 1048576 * k + 791071) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 791279) 32 = 531441 * k + 401038 ∧ 531441 * k + 401038 < 1048576 * k + 791279) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 791399) 32 = 531441 * k + 401099 ∧ 531441 * k + 401099 < 1048576 * k + 791399) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 791711) 32 = 531441 * k + 401257 ∧ 531441 * k + 401257 < 1048576 * k + 791711) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 791835) 32 = 531441 * k + 401320 ∧ 531441 * k + 401320 < 1048576 * k + 791835) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 792091) 32 = 531441 * k + 401450 ∧ 531441 * k + 401450 < 1048576 * k + 792091) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 792447) 32 = 531441 * k + 401630 ∧ 531441 * k + 401630 < 1048576 * k + 792447) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 792895) 32 = 531441 * k + 401857 ∧ 531441 * k + 401857 < 1048576 * k + 792895) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 793327) 32 = 531441 * k + 402076 ∧ 531441 * k + 402076 < 1048576 * k + 793327) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 793471) 32 = 531441 * k + 402149 ∧ 531441 * k + 402149 < 1048576 * k + 793471) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 793583) 32 = 531441 * k + 402206 ∧ 531441 * k + 402206 < 1048576 * k + 793583) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 794907) 32 = 531441 * k + 402877 ∧ 531441 * k + 402877 < 1048576 * k + 794907) ∧
  R := by
  exact ⟨CollatzM20Shard101.descent_mod1048576_786715, ⟨CollatzM20Shard101.descent_mod1048576_787439, ⟨CollatzM20Shard101.descent_mod1048576_788351, ⟨CollatzM20Shard101.descent_mod1048576_788895, ⟨CollatzM20Shard101.descent_mod1048576_789351, ⟨CollatzM20Shard101.descent_mod1048576_789787, ⟨CollatzM20Shard101.descent_mod1048576_790183, ⟨CollatzM20Shard101.descent_mod1048576_790847, ⟨CollatzM20Shard101.descent_mod1048576_791071, ⟨CollatzM20Shard101.descent_mod1048576_791279, ⟨CollatzM20Shard101.descent_mod1048576_791399, ⟨CollatzM20Shard101.descent_mod1048576_791711, ⟨CollatzM20Shard101.descent_mod1048576_791835, ⟨CollatzM20Shard101.descent_mod1048576_792091, ⟨CollatzM20Shard101.descent_mod1048576_792447, ⟨CollatzM20Shard101.descent_mod1048576_792895, ⟨CollatzM20Shard101.descent_mod1048576_793327, ⟨CollatzM20Shard101.descent_mod1048576_793471, ⟨CollatzM20Shard101.descent_mod1048576_793583, ⟨CollatzM20Shard101.descent_mod1048576_794907, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
