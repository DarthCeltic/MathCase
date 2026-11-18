import M20Shard089

namespace CollatzM20CompositionV1

theorem chunk089 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 684703) 32 = 531441 * k + 347023 ∧ 531441 * k + 347023 < 1048576 * k + 684703) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 685415) 32 = 531441 * k + 347384 ∧ 531441 * k + 347384 < 1048576 * k + 685415) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 686319) 32 = 531441 * k + 347842 ∧ 531441 * k + 347842 < 1048576 * k + 686319) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 687099) 32 = 531441 * k + 348238 ∧ 531441 * k + 348238 < 1048576 * k + 687099) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 687343) 32 = 531441 * k + 348361 ∧ 531441 * k + 348361 < 1048576 * k + 687343) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 687463) 32 = 531441 * k + 348422 ∧ 531441 * k + 348422 < 1048576 * k + 687463) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 687775) 32 = 531441 * k + 348580 ∧ 531441 * k + 348580 < 1048576 * k + 687775) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 688031) 32 = 531441 * k + 348710 ∧ 531441 * k + 348710 < 1048576 * k + 688031) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 688191) 32 = 531441 * k + 348791 ∧ 531441 * k + 348791 < 1048576 * k + 688191) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 688799) 32 = 531441 * k + 349099 ∧ 531441 * k + 349099 < 1048576 * k + 688799) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 689055) 32 = 531441 * k + 349229 ∧ 531441 * k + 349229 < 1048576 * k + 689055) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 689479) 32 = 531441 * k + 349444 ∧ 531441 * k + 349444 < 1048576 * k + 689479) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 689647) 32 = 531441 * k + 349529 ∧ 531441 * k + 349529 < 1048576 * k + 689647) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 690535) 32 = 531441 * k + 349979 ∧ 531441 * k + 349979 < 1048576 * k + 690535) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 690663) 32 = 531441 * k + 350044 ∧ 531441 * k + 350044 < 1048576 * k + 690663) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 691663) 32 = 531441 * k + 350551 ∧ 531441 * k + 350551 < 1048576 * k + 691663) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 691823) 32 = 531441 * k + 350632 ∧ 531441 * k + 350632 < 1048576 * k + 691823) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 692463) 32 = 531441 * k + 350956 ∧ 531441 * k + 350956 < 1048576 * k + 692463) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 694335) 32 = 531441 * k + 351905 ∧ 531441 * k + 351905 < 1048576 * k + 694335) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 694939) 32 = 531441 * k + 352211 ∧ 531441 * k + 352211 < 1048576 * k + 694939) ∧
  R := by
  exact ⟨CollatzM20Shard089.descent_mod1048576_684703, ⟨CollatzM20Shard089.descent_mod1048576_685415, ⟨CollatzM20Shard089.descent_mod1048576_686319, ⟨CollatzM20Shard089.descent_mod1048576_687099, ⟨CollatzM20Shard089.descent_mod1048576_687343, ⟨CollatzM20Shard089.descent_mod1048576_687463, ⟨CollatzM20Shard089.descent_mod1048576_687775, ⟨CollatzM20Shard089.descent_mod1048576_688031, ⟨CollatzM20Shard089.descent_mod1048576_688191, ⟨CollatzM20Shard089.descent_mod1048576_688799, ⟨CollatzM20Shard089.descent_mod1048576_689055, ⟨CollatzM20Shard089.descent_mod1048576_689479, ⟨CollatzM20Shard089.descent_mod1048576_689647, ⟨CollatzM20Shard089.descent_mod1048576_690535, ⟨CollatzM20Shard089.descent_mod1048576_690663, ⟨CollatzM20Shard089.descent_mod1048576_691663, ⟨CollatzM20Shard089.descent_mod1048576_691823, ⟨CollatzM20Shard089.descent_mod1048576_692463, ⟨CollatzM20Shard089.descent_mod1048576_694335, ⟨CollatzM20Shard089.descent_mod1048576_694939, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
