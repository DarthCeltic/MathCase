import M20Shard080

namespace CollatzM20CompositionV1

theorem chunk080 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 616027) 32 = 531441 * k + 312217 ∧ 531441 * k + 312217 < 1048576 * k + 616027) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 616095) 32 = 531441 * k + 312251 ∧ 531441 * k + 312251 < 1048576 * k + 616095) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 616911) 32 = 531441 * k + 312665 ∧ 531441 * k + 312665 < 1048576 * k + 616911) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 617071) 32 = 531441 * k + 312746 ∧ 531441 * k + 312746 < 1048576 * k + 617071) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 617243) 32 = 531441 * k + 312833 ∧ 531441 * k + 312833 < 1048576 * k + 617243) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 617935) 32 = 531441 * k + 313184 ∧ 531441 * k + 313184 < 1048576 * k + 617935) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 618095) 32 = 531441 * k + 313265 ∧ 531441 * k + 313265 < 1048576 * k + 618095) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 618431) 32 = 531441 * k + 313435 ∧ 531441 * k + 313435 < 1048576 * k + 618431) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 618687) 32 = 531441 * k + 313565 ∧ 531441 * k + 313565 < 1048576 * k + 618687) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 618983) 32 = 531441 * k + 313715 ∧ 531441 * k + 313715 < 1048576 * k + 618983) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 619167) 32 = 531441 * k + 313808 ∧ 531441 * k + 313808 < 1048576 * k + 619167) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 620455) 32 = 531441 * k + 314461 ∧ 531441 * k + 314461 < 1048576 * k + 620455) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 620751) 32 = 531441 * k + 314611 ∧ 531441 * k + 314611 < 1048576 * k + 620751) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 620783) 32 = 531441 * k + 314627 ∧ 531441 * k + 314627 < 1048576 * k + 620783) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 621307) 32 = 531441 * k + 314893 ∧ 531441 * k + 314893 < 1048576 * k + 621307) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 621343) 32 = 531441 * k + 314911 ∧ 531441 * k + 314911 < 1048576 * k + 621343) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 621503) 32 = 531441 * k + 314992 ∧ 531441 * k + 314992 < 1048576 * k + 621503) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 621563) 32 = 531441 * k + 315023 ∧ 531441 * k + 315023 < 1048576 * k + 621563) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 621807) 32 = 531441 * k + 315146 ∧ 531441 * k + 315146 < 1048576 * k + 621807) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 622239) 32 = 531441 * k + 315365 ∧ 531441 * k + 315365 < 1048576 * k + 622239) ∧
  R := by
  exact ⟨CollatzM20Shard080.descent_mod1048576_616027, ⟨CollatzM20Shard080.descent_mod1048576_616095, ⟨CollatzM20Shard080.descent_mod1048576_616911, ⟨CollatzM20Shard080.descent_mod1048576_617071, ⟨CollatzM20Shard080.descent_mod1048576_617243, ⟨CollatzM20Shard080.descent_mod1048576_617935, ⟨CollatzM20Shard080.descent_mod1048576_618095, ⟨CollatzM20Shard080.descent_mod1048576_618431, ⟨CollatzM20Shard080.descent_mod1048576_618687, ⟨CollatzM20Shard080.descent_mod1048576_618983, ⟨CollatzM20Shard080.descent_mod1048576_619167, ⟨CollatzM20Shard080.descent_mod1048576_620455, ⟨CollatzM20Shard080.descent_mod1048576_620751, ⟨CollatzM20Shard080.descent_mod1048576_620783, ⟨CollatzM20Shard080.descent_mod1048576_621307, ⟨CollatzM20Shard080.descent_mod1048576_621343, ⟨CollatzM20Shard080.descent_mod1048576_621503, ⟨CollatzM20Shard080.descent_mod1048576_621563, ⟨CollatzM20Shard080.descent_mod1048576_621807, ⟨CollatzM20Shard080.descent_mod1048576_622239, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
