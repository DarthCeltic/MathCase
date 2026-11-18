import M20Shard070

namespace CollatzM20CompositionV1

theorem chunk070 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 542623) 32 = 531441 * k + 275014 ∧ 531441 * k + 275014 < 1048576 * k + 542623) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 542783) 32 = 531441 * k + 275095 ∧ 531441 * k + 275095 < 1048576 * k + 542783) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 543079) 32 = 531441 * k + 275245 ∧ 531441 * k + 275245 < 1048576 * k + 543079) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 543483) 32 = 531441 * k + 275450 ∧ 531441 * k + 275450 < 1048576 * k + 543483) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 543679) 32 = 531441 * k + 275549 ∧ 531441 * k + 275549 < 1048576 * k + 543679) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 546271) 32 = 531441 * k + 276863 ∧ 531441 * k + 276863 < 1048576 * k + 546271) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 546751) 32 = 531441 * k + 277106 ∧ 531441 * k + 277106 < 1048576 * k + 546751) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 546879) 32 = 531441 * k + 277171 ∧ 531441 * k + 277171 < 1048576 * k + 546879) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 547023) 32 = 531441 * k + 277244 ∧ 531441 * k + 277244 < 1048576 * k + 547023) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 547775) 32 = 531441 * k + 277625 ∧ 531441 * k + 277625 < 1048576 * k + 547775) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 548455) 32 = 531441 * k + 277970 ∧ 531441 * k + 277970 < 1048576 * k + 548455) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 549223) 32 = 531441 * k + 278359 ∧ 531441 * k + 278359 < 1048576 * k + 549223) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 549467) 32 = 531441 * k + 278483 ∧ 531441 * k + 278483 < 1048576 * k + 549467) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 549627) 32 = 531441 * k + 278564 ∧ 531441 * k + 278564 < 1048576 * k + 549627) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 550143) 32 = 531441 * k + 278825 ∧ 531441 * k + 278825 < 1048576 * k + 550143) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 550271) 32 = 531441 * k + 278890 ∧ 531441 * k + 278890 < 1048576 * k + 550271) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 550383) 32 = 531441 * k + 278947 ∧ 531441 * k + 278947 < 1048576 * k + 550383) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 550491) 32 = 531441 * k + 279002 ∧ 531441 * k + 279002 < 1048576 * k + 550491) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 551119) 32 = 531441 * k + 279320 ∧ 531441 * k + 279320 < 1048576 * k + 551119) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 552895) 32 = 531441 * k + 280220 ∧ 531441 * k + 280220 < 1048576 * k + 552895) ∧
  R := by
  exact ⟨CollatzM20Shard070.descent_mod1048576_542623, ⟨CollatzM20Shard070.descent_mod1048576_542783, ⟨CollatzM20Shard070.descent_mod1048576_543079, ⟨CollatzM20Shard070.descent_mod1048576_543483, ⟨CollatzM20Shard070.descent_mod1048576_543679, ⟨CollatzM20Shard070.descent_mod1048576_546271, ⟨CollatzM20Shard070.descent_mod1048576_546751, ⟨CollatzM20Shard070.descent_mod1048576_546879, ⟨CollatzM20Shard070.descent_mod1048576_547023, ⟨CollatzM20Shard070.descent_mod1048576_547775, ⟨CollatzM20Shard070.descent_mod1048576_548455, ⟨CollatzM20Shard070.descent_mod1048576_549223, ⟨CollatzM20Shard070.descent_mod1048576_549467, ⟨CollatzM20Shard070.descent_mod1048576_549627, ⟨CollatzM20Shard070.descent_mod1048576_550143, ⟨CollatzM20Shard070.descent_mod1048576_550271, ⟨CollatzM20Shard070.descent_mod1048576_550383, ⟨CollatzM20Shard070.descent_mod1048576_550491, ⟨CollatzM20Shard070.descent_mod1048576_551119, ⟨CollatzM20Shard070.descent_mod1048576_552895, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
