import M20Shard082

namespace CollatzM20CompositionV1

theorem chunk082 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 631455) 32 = 531441 * k + 320036 ∧ 531441 * k + 320036 < 1048576 * k + 631455) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 631615) 32 = 531441 * k + 320117 ∧ 531441 * k + 320117 < 1048576 * k + 631615) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 631935) 32 = 531441 * k + 320279 ∧ 531441 * k + 320279 < 1048576 * k + 631935) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 632223) 32 = 531441 * k + 320425 ∧ 531441 * k + 320425 < 1048576 * k + 632223) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 632367) 32 = 531441 * k + 320498 ∧ 531441 * k + 320498 < 1048576 * k + 632367) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 632743) 32 = 531441 * k + 320689 ∧ 531441 * k + 320689 < 1048576 * k + 632743) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 633319) 32 = 531441 * k + 320981 ∧ 531441 * k + 320981 < 1048576 * k + 633319) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 633767) 32 = 531441 * k + 321208 ∧ 531441 * k + 321208 < 1048576 * k + 633767) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 634087) 32 = 531441 * k + 321370 ∧ 531441 * k + 321370 < 1048576 * k + 634087) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 634971) 32 = 531441 * k + 321818 ∧ 531441 * k + 321818 < 1048576 * k + 634971) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 635087) 32 = 531441 * k + 321877 ∧ 531441 * k + 321877 < 1048576 * k + 635087) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 635295) 32 = 531441 * k + 321982 ∧ 531441 * k + 321982 < 1048576 * k + 635295) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 636031) 32 = 531441 * k + 322355 ∧ 531441 * k + 322355 < 1048576 * k + 636031) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 636351) 32 = 531441 * k + 322517 ∧ 531441 * k + 322517 < 1048576 * k + 636351) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 636463) 32 = 531441 * k + 322574 ∧ 531441 * k + 322574 < 1048576 * k + 636463) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 637375) 32 = 531441 * k + 323036 ∧ 531441 * k + 323036 < 1048576 * k + 637375) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 637759) 32 = 531441 * k + 323231 ∧ 531441 * k + 323231 < 1048576 * k + 637759) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 638079) 32 = 531441 * k + 323393 ∧ 531441 * k + 323393 < 1048576 * k + 638079) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 638399) 32 = 531441 * k + 323555 ∧ 531441 * k + 323555 < 1048576 * k + 638399) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 638491) 32 = 531441 * k + 323602 ∧ 531441 * k + 323602 < 1048576 * k + 638491) ∧
  R := by
  exact ⟨CollatzM20Shard082.descent_mod1048576_631455, ⟨CollatzM20Shard082.descent_mod1048576_631615, ⟨CollatzM20Shard082.descent_mod1048576_631935, ⟨CollatzM20Shard082.descent_mod1048576_632223, ⟨CollatzM20Shard082.descent_mod1048576_632367, ⟨CollatzM20Shard082.descent_mod1048576_632743, ⟨CollatzM20Shard082.descent_mod1048576_633319, ⟨CollatzM20Shard082.descent_mod1048576_633767, ⟨CollatzM20Shard082.descent_mod1048576_634087, ⟨CollatzM20Shard082.descent_mod1048576_634971, ⟨CollatzM20Shard082.descent_mod1048576_635087, ⟨CollatzM20Shard082.descent_mod1048576_635295, ⟨CollatzM20Shard082.descent_mod1048576_636031, ⟨CollatzM20Shard082.descent_mod1048576_636351, ⟨CollatzM20Shard082.descent_mod1048576_636463, ⟨CollatzM20Shard082.descent_mod1048576_637375, ⟨CollatzM20Shard082.descent_mod1048576_637759, ⟨CollatzM20Shard082.descent_mod1048576_638079, ⟨CollatzM20Shard082.descent_mod1048576_638399, ⟨CollatzM20Shard082.descent_mod1048576_638491, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
