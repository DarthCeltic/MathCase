import M20Shard120

namespace CollatzM20CompositionV1

theorem chunk120 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 934655) 32 = 531441 * k + 473704 ∧ 531441 * k + 473704 < 1048576 * k + 934655) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 935071) 32 = 531441 * k + 473915 ∧ 531441 * k + 473915 < 1048576 * k + 935071) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 935751) 32 = 531441 * k + 474260 ∧ 531441 * k + 474260 < 1048576 * k + 935751) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 936187) 32 = 531441 * k + 474481 ∧ 531441 * k + 474481 < 1048576 * k + 936187) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 936347) 32 = 531441 * k + 474562 ∧ 531441 * k + 474562 < 1048576 * k + 936347) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 936679) 32 = 531441 * k + 474730 ∧ 531441 * k + 474730 < 1048576 * k + 936679) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 936775) 32 = 531441 * k + 474779 ∧ 531441 * k + 474779 < 1048576 * k + 936775) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 937243) 32 = 531441 * k + 475016 ∧ 531441 * k + 475016 < 1048576 * k + 937243) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 937279) 32 = 531441 * k + 475034 ∧ 531441 * k + 475034 < 1048576 * k + 937279) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 938267) 32 = 531441 * k + 475535 ∧ 531441 * k + 475535 < 1048576 * k + 938267) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 938303) 32 = 531441 * k + 475553 ∧ 531441 * k + 475553 < 1048576 * k + 938303) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 938703) 32 = 531441 * k + 475756 ∧ 531441 * k + 475756 < 1048576 * k + 938703) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 939647) 32 = 531441 * k + 476234 ∧ 531441 * k + 476234 < 1048576 * k + 939647) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 939751) 32 = 531441 * k + 476287 ∧ 531441 * k + 476287 < 1048576 * k + 939751) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 940351) 32 = 531441 * k + 476591 ∧ 531441 * k + 476591 < 1048576 * k + 940351) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 942491) 32 = 531441 * k + 477676 ∧ 531441 * k + 477676 < 1048576 * k + 942491) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 943263) 32 = 531441 * k + 478067 ∧ 531441 * k + 478067 < 1048576 * k + 943263) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 943423) 32 = 531441 * k + 478148 ∧ 531441 * k + 478148 < 1048576 * k + 943423) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 943983) 32 = 531441 * k + 478432 ∧ 531441 * k + 478432 < 1048576 * k + 943983) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 944447) 32 = 531441 * k + 478667 ∧ 531441 * k + 478667 < 1048576 * k + 944447) ∧
  R := by
  exact ⟨CollatzM20Shard120.descent_mod1048576_934655, ⟨CollatzM20Shard120.descent_mod1048576_935071, ⟨CollatzM20Shard120.descent_mod1048576_935751, ⟨CollatzM20Shard120.descent_mod1048576_936187, ⟨CollatzM20Shard120.descent_mod1048576_936347, ⟨CollatzM20Shard120.descent_mod1048576_936679, ⟨CollatzM20Shard120.descent_mod1048576_936775, ⟨CollatzM20Shard120.descent_mod1048576_937243, ⟨CollatzM20Shard120.descent_mod1048576_937279, ⟨CollatzM20Shard120.descent_mod1048576_938267, ⟨CollatzM20Shard120.descent_mod1048576_938303, ⟨CollatzM20Shard120.descent_mod1048576_938703, ⟨CollatzM20Shard120.descent_mod1048576_939647, ⟨CollatzM20Shard120.descent_mod1048576_939751, ⟨CollatzM20Shard120.descent_mod1048576_940351, ⟨CollatzM20Shard120.descent_mod1048576_942491, ⟨CollatzM20Shard120.descent_mod1048576_943263, ⟨CollatzM20Shard120.descent_mod1048576_943423, ⟨CollatzM20Shard120.descent_mod1048576_943983, ⟨CollatzM20Shard120.descent_mod1048576_944447, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
