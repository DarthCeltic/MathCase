import M20Shard061

namespace CollatzM20CompositionV1

theorem chunk061 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 477247) 32 = 531441 * k + 241880 ∧ 531441 * k + 241880 < 1048576 * k + 477247) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 477543) 32 = 531441 * k + 242030 ∧ 531441 * k + 242030 < 1048576 * k + 477543) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 478535) 32 = 531441 * k + 242533 ∧ 531441 * k + 242533 < 1048576 * k + 478535) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 479423) 32 = 531441 * k + 242983 ∧ 531441 * k + 242983 < 1048576 * k + 479423) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 479471) 32 = 531441 * k + 243007 ∧ 531441 * k + 243007 < 1048576 * k + 479471) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 479899) 32 = 531441 * k + 243224 ∧ 531441 * k + 243224 < 1048576 * k + 479899) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 479903) 32 = 531441 * k + 243226 ∧ 531441 * k + 243226 < 1048576 * k + 479903) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 480027) 32 = 531441 * k + 243289 ∧ 531441 * k + 243289 < 1048576 * k + 480027) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 480639) 32 = 531441 * k + 243599 ∧ 531441 * k + 243599 < 1048576 * k + 480639) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 481343) 32 = 531441 * k + 243956 ∧ 531441 * k + 243956 < 1048576 * k + 481343) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 481519) 32 = 531441 * k + 244045 ∧ 531441 * k + 244045 < 1048576 * k + 481519) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 482299) 32 = 531441 * k + 244441 ∧ 531441 * k + 244441 < 1048576 * k + 482299) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 483551) 32 = 531441 * k + 245075 ∧ 531441 * k + 245075 < 1048576 * k + 483551) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 483687) 32 = 531441 * k + 245144 ∧ 531441 * k + 245144 < 1048576 * k + 483687) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 483995) 32 = 531441 * k + 245300 ∧ 531441 * k + 245300 < 1048576 * k + 483995) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 484031) 32 = 531441 * k + 245318 ∧ 531441 * k + 245318 < 1048576 * k + 484031) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 484735) 32 = 531441 * k + 245675 ∧ 531441 * k + 245675 < 1048576 * k + 484735) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 484847) 32 = 531441 * k + 245732 ∧ 531441 * k + 245732 < 1048576 * k + 484847) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 486047) 32 = 531441 * k + 246340 ∧ 531441 * k + 246340 < 1048576 * k + 486047) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 486079) 32 = 531441 * k + 246356 ∧ 531441 * k + 246356 < 1048576 * k + 486079) ∧
  R := by
  exact ⟨CollatzM20Shard061.descent_mod1048576_477247, ⟨CollatzM20Shard061.descent_mod1048576_477543, ⟨CollatzM20Shard061.descent_mod1048576_478535, ⟨CollatzM20Shard061.descent_mod1048576_479423, ⟨CollatzM20Shard061.descent_mod1048576_479471, ⟨CollatzM20Shard061.descent_mod1048576_479899, ⟨CollatzM20Shard061.descent_mod1048576_479903, ⟨CollatzM20Shard061.descent_mod1048576_480027, ⟨CollatzM20Shard061.descent_mod1048576_480639, ⟨CollatzM20Shard061.descent_mod1048576_481343, ⟨CollatzM20Shard061.descent_mod1048576_481519, ⟨CollatzM20Shard061.descent_mod1048576_482299, ⟨CollatzM20Shard061.descent_mod1048576_483551, ⟨CollatzM20Shard061.descent_mod1048576_483687, ⟨CollatzM20Shard061.descent_mod1048576_483995, ⟨CollatzM20Shard061.descent_mod1048576_484031, ⟨CollatzM20Shard061.descent_mod1048576_484735, ⟨CollatzM20Shard061.descent_mod1048576_484847, ⟨CollatzM20Shard061.descent_mod1048576_486047, ⟨CollatzM20Shard061.descent_mod1048576_486079, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
