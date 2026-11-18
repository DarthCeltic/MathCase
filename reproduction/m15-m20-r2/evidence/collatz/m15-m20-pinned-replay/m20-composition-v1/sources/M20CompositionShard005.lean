import M20Shard005

namespace CollatzM20CompositionV1

theorem chunk005 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 23423) 32 = 531441 * k + 11872 ∧ 531441 * k + 11872 < 1048576 * k + 23423) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 23519) 32 = 531441 * k + 11921 ∧ 531441 * k + 11921 < 1048576 * k + 23519) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 25319) 32 = 531441 * k + 12833 ∧ 531441 * k + 12833 < 1048576 * k + 25319) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 25631) 32 = 531441 * k + 12991 ∧ 531441 * k + 12991 < 1048576 * k + 25631) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 26319) 32 = 531441 * k + 13340 ∧ 531441 * k + 13340 < 1048576 * k + 26319) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 26495) 32 = 531441 * k + 13429 ∧ 531441 * k + 13429 < 1048576 * k + 26495) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 26875) 32 = 531441 * k + 13622 ∧ 531441 * k + 13622 < 1048576 * k + 26875) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 27035) 32 = 531441 * k + 13703 ∧ 531441 * k + 13703 < 1048576 * k + 27035) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 27391) 32 = 531441 * k + 13883 ∧ 531441 * k + 13883 < 1048576 * k + 27391) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 27679) 32 = 531441 * k + 14029 ∧ 531441 * k + 14029 < 1048576 * k + 27679) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 28367) 32 = 531441 * k + 14378 ∧ 531441 * k + 14378 < 1048576 * k + 28367) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 29211) 32 = 531441 * k + 14806 ∧ 531441 * k + 14806 < 1048576 * k + 29211) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 29415) 32 = 531441 * k + 14909 ∧ 531441 * k + 14909 < 1048576 * k + 29415) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 29727) 32 = 531441 * k + 15067 ∧ 531441 * k + 15067 < 1048576 * k + 29727) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 31131) 32 = 531441 * k + 15779 ∧ 531441 * k + 15779 < 1048576 * k + 31131) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 31279) 32 = 531441 * k + 15854 ∧ 531441 * k + 15854 < 1048576 * k + 31279) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 31439) 32 = 531441 * k + 15935 ∧ 531441 * k + 15935 < 1048576 * k + 31439) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 31487) 32 = 531441 * k + 15959 ∧ 531441 * k + 15959 < 1048576 * k + 31487) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 32047) 32 = 531441 * k + 16243 ∧ 531441 * k + 16243 < 1048576 * k + 32047) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 32639) 32 = 531441 * k + 16543 ∧ 531441 * k + 16543 < 1048576 * k + 32639) ∧
  R := by
  exact ⟨CollatzM20Shard005.descent_mod1048576_23423, ⟨CollatzM20Shard005.descent_mod1048576_23519, ⟨CollatzM20Shard005.descent_mod1048576_25319, ⟨CollatzM20Shard005.descent_mod1048576_25631, ⟨CollatzM20Shard005.descent_mod1048576_26319, ⟨CollatzM20Shard005.descent_mod1048576_26495, ⟨CollatzM20Shard005.descent_mod1048576_26875, ⟨CollatzM20Shard005.descent_mod1048576_27035, ⟨CollatzM20Shard005.descent_mod1048576_27391, ⟨CollatzM20Shard005.descent_mod1048576_27679, ⟨CollatzM20Shard005.descent_mod1048576_28367, ⟨CollatzM20Shard005.descent_mod1048576_29211, ⟨CollatzM20Shard005.descent_mod1048576_29415, ⟨CollatzM20Shard005.descent_mod1048576_29727, ⟨CollatzM20Shard005.descent_mod1048576_31131, ⟨CollatzM20Shard005.descent_mod1048576_31279, ⟨CollatzM20Shard005.descent_mod1048576_31439, ⟨CollatzM20Shard005.descent_mod1048576_31487, ⟨CollatzM20Shard005.descent_mod1048576_32047, ⟨CollatzM20Shard005.descent_mod1048576_32639, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
