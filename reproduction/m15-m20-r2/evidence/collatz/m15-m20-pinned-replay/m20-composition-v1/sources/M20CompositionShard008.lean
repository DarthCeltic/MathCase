import M20Shard008

namespace CollatzM20CompositionV1

theorem chunk008 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 46591) 32 = 531441 * k + 23614 ∧ 531441 * k + 23614 < 1048576 * k + 46591) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 46875) 32 = 531441 * k + 23758 ∧ 531441 * k + 23758 < 1048576 * k + 46875) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 47271) 32 = 531441 * k + 23959 ∧ 531441 * k + 23959 < 1048576 * k + 47271) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 47599) 32 = 531441 * k + 24125 ∧ 531441 * k + 24125 < 1048576 * k + 47599) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 47899) 32 = 531441 * k + 24277 ∧ 531441 * k + 24277 < 1048576 * k + 47899) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 48283) 32 = 531441 * k + 24472 ∧ 531441 * k + 24472 < 1048576 * k + 48283) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 48487) 32 = 531441 * k + 24575 ∧ 531441 * k + 24575 < 1048576 * k + 48487) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 48539) 32 = 531441 * k + 24602 ∧ 531441 * k + 24602 < 1048576 * k + 48539) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 49147) 32 = 531441 * k + 24910 ∧ 531441 * k + 24910 < 1048576 * k + 49147) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 49179) 32 = 531441 * k + 24926 ∧ 531441 * k + 24926 < 1048576 * k + 49179) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 49307) 32 = 531441 * k + 24991 ∧ 531441 * k + 24991 < 1048576 * k + 49307) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 49947) 32 = 531441 * k + 25315 ∧ 531441 * k + 25315 < 1048576 * k + 49947) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 50639) 32 = 531441 * k + 25666 ∧ 531441 * k + 25666 < 1048576 * k + 50639) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 50671) 32 = 531441 * k + 25682 ∧ 531441 * k + 25682 < 1048576 * k + 50671) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 51263) 32 = 531441 * k + 25982 ∧ 531441 * k + 25982 < 1048576 * k + 51263) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 51559) 32 = 531441 * k + 26132 ∧ 531441 * k + 26132 < 1048576 * k + 51559) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 51695) 32 = 531441 * k + 26201 ∧ 531441 * k + 26201 < 1048576 * k + 51695) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 51995) 32 = 531441 * k + 26353 ∧ 531441 * k + 26353 < 1048576 * k + 51995) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 52463) 32 = 531441 * k + 26590 ∧ 531441 * k + 26590 < 1048576 * k + 52463) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 52583) 32 = 531441 * k + 26651 ∧ 531441 * k + 26651 < 1048576 * k + 52583) ∧
  R := by
  exact ⟨CollatzM20Shard008.descent_mod1048576_46591, ⟨CollatzM20Shard008.descent_mod1048576_46875, ⟨CollatzM20Shard008.descent_mod1048576_47271, ⟨CollatzM20Shard008.descent_mod1048576_47599, ⟨CollatzM20Shard008.descent_mod1048576_47899, ⟨CollatzM20Shard008.descent_mod1048576_48283, ⟨CollatzM20Shard008.descent_mod1048576_48487, ⟨CollatzM20Shard008.descent_mod1048576_48539, ⟨CollatzM20Shard008.descent_mod1048576_49147, ⟨CollatzM20Shard008.descent_mod1048576_49179, ⟨CollatzM20Shard008.descent_mod1048576_49307, ⟨CollatzM20Shard008.descent_mod1048576_49947, ⟨CollatzM20Shard008.descent_mod1048576_50639, ⟨CollatzM20Shard008.descent_mod1048576_50671, ⟨CollatzM20Shard008.descent_mod1048576_51263, ⟨CollatzM20Shard008.descent_mod1048576_51559, ⟨CollatzM20Shard008.descent_mod1048576_51695, ⟨CollatzM20Shard008.descent_mod1048576_51995, ⟨CollatzM20Shard008.descent_mod1048576_52463, ⟨CollatzM20Shard008.descent_mod1048576_52583, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
