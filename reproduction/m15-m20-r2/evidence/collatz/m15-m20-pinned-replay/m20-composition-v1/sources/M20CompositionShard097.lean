import M20Shard097

namespace CollatzM20CompositionV1

theorem chunk097 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 753711) 32 = 531441 * k + 381998 ∧ 531441 * k + 381998 < 1048576 * k + 753711) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 754143) 32 = 531441 * k + 382217 ∧ 531441 * k + 382217 < 1048576 * k + 754143) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 754267) 32 = 531441 * k + 382280 ∧ 531441 * k + 382280 < 1048576 * k + 754267) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 754591) 32 = 531441 * k + 382444 ∧ 531441 * k + 382444 < 1048576 * k + 754591) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 755071) 32 = 531441 * k + 382687 ∧ 531441 * k + 382687 < 1048576 * k + 755071) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 755183) 32 = 531441 * k + 382744 ∧ 531441 * k + 382744 < 1048576 * k + 755183) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 756071) 32 = 531441 * k + 383194 ∧ 531441 * k + 383194 < 1048576 * k + 756071) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 756991) 32 = 531441 * k + 383660 ∧ 531441 * k + 383660 < 1048576 * k + 756991) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 758831) 32 = 531441 * k + 384593 ∧ 531441 * k + 384593 < 1048576 * k + 758831) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 759719) 32 = 531441 * k + 385043 ∧ 531441 * k + 385043 < 1048576 * k + 759719) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 759855) 32 = 531441 * k + 385112 ∧ 531441 * k + 385112 < 1048576 * k + 759855) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 759871) 32 = 531441 * k + 385120 ∧ 531441 * k + 385120 < 1048576 * k + 759871) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 760063) 32 = 531441 * k + 385217 ∧ 531441 * k + 385217 < 1048576 * k + 760063) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 760607) 32 = 531441 * k + 385493 ∧ 531441 * k + 385493 < 1048576 * k + 760607) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 760767) 32 = 531441 * k + 385574 ∧ 531441 * k + 385574 < 1048576 * k + 760767) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 762215) 32 = 531441 * k + 386308 ∧ 531441 * k + 386308 < 1048576 * k + 762215) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 762559) 32 = 531441 * k + 386482 ∧ 531441 * k + 386482 < 1048576 * k + 762559) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 762783) 32 = 531441 * k + 386596 ∧ 531441 * k + 386596 < 1048576 * k + 762783) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 763263) 32 = 531441 * k + 386839 ∧ 531441 * k + 386839 < 1048576 * k + 763263) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 763483) 32 = 531441 * k + 386951 ∧ 531441 * k + 386951 < 1048576 * k + 763483) ∧
  R := by
  exact ⟨CollatzM20Shard097.descent_mod1048576_753711, ⟨CollatzM20Shard097.descent_mod1048576_754143, ⟨CollatzM20Shard097.descent_mod1048576_754267, ⟨CollatzM20Shard097.descent_mod1048576_754591, ⟨CollatzM20Shard097.descent_mod1048576_755071, ⟨CollatzM20Shard097.descent_mod1048576_755183, ⟨CollatzM20Shard097.descent_mod1048576_756071, ⟨CollatzM20Shard097.descent_mod1048576_756991, ⟨CollatzM20Shard097.descent_mod1048576_758831, ⟨CollatzM20Shard097.descent_mod1048576_759719, ⟨CollatzM20Shard097.descent_mod1048576_759855, ⟨CollatzM20Shard097.descent_mod1048576_759871, ⟨CollatzM20Shard097.descent_mod1048576_760063, ⟨CollatzM20Shard097.descent_mod1048576_760607, ⟨CollatzM20Shard097.descent_mod1048576_760767, ⟨CollatzM20Shard097.descent_mod1048576_762215, ⟨CollatzM20Shard097.descent_mod1048576_762559, ⟨CollatzM20Shard097.descent_mod1048576_762783, ⟨CollatzM20Shard097.descent_mod1048576_763263, ⟨CollatzM20Shard097.descent_mod1048576_763483, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
