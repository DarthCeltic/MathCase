import M20Shard091

namespace CollatzM20CompositionV1

theorem chunk091 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 703871) 32 = 531441 * k + 356738 ∧ 531441 * k + 356738 < 1048576 * k + 703871) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 704031) 32 = 531441 * k + 356819 ∧ 531441 * k + 356819 < 1048576 * k + 704031) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 704191) 32 = 531441 * k + 356900 ∧ 531441 * k + 356900 < 1048576 * k + 704191) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 704603) 32 = 531441 * k + 357109 ∧ 531441 * k + 357109 < 1048576 * k + 704603) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 705639) 32 = 531441 * k + 357634 ∧ 531441 * k + 357634 < 1048576 * k + 705639) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 705983) 32 = 531441 * k + 357808 ∧ 531441 * k + 357808 < 1048576 * k + 705983) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 706095) 32 = 531441 * k + 357865 ∧ 531441 * k + 357865 < 1048576 * k + 706095) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 706651) 32 = 531441 * k + 358147 ∧ 531441 * k + 358147 < 1048576 * k + 706651) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 706671) 32 = 531441 * k + 358157 ∧ 531441 * k + 358157 < 1048576 * k + 706671) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 706687) 32 = 531441 * k + 358165 ∧ 531441 * k + 358165 < 1048576 * k + 706687) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 707227) 32 = 531441 * k + 358439 ∧ 531441 * k + 358439 < 1048576 * k + 707227) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 707263) 32 = 531441 * k + 358457 ∧ 531441 * k + 358457 < 1048576 * k + 707263) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 707583) 32 = 531441 * k + 358619 ∧ 531441 * k + 358619 < 1048576 * k + 707583) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 708031) 32 = 531441 * k + 358846 ∧ 531441 * k + 358846 < 1048576 * k + 708031) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 708127) 32 = 531441 * k + 358895 ∧ 531441 * k + 358895 < 1048576 * k + 708127) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 708143) 32 = 531441 * k + 358903 ∧ 531441 * k + 358903 < 1048576 * k + 708143) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 708287) 32 = 531441 * k + 358976 ∧ 531441 * k + 358976 < 1048576 * k + 708287) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 708719) 32 = 531441 * k + 359195 ∧ 531441 * k + 359195 < 1048576 * k + 708719) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 708859) 32 = 531441 * k + 359266 ∧ 531441 * k + 359266 < 1048576 * k + 708859) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 709287) 32 = 531441 * k + 359483 ∧ 531441 * k + 359483 < 1048576 * k + 709287) ∧
  R := by
  exact ⟨CollatzM20Shard091.descent_mod1048576_703871, ⟨CollatzM20Shard091.descent_mod1048576_704031, ⟨CollatzM20Shard091.descent_mod1048576_704191, ⟨CollatzM20Shard091.descent_mod1048576_704603, ⟨CollatzM20Shard091.descent_mod1048576_705639, ⟨CollatzM20Shard091.descent_mod1048576_705983, ⟨CollatzM20Shard091.descent_mod1048576_706095, ⟨CollatzM20Shard091.descent_mod1048576_706651, ⟨CollatzM20Shard091.descent_mod1048576_706671, ⟨CollatzM20Shard091.descent_mod1048576_706687, ⟨CollatzM20Shard091.descent_mod1048576_707227, ⟨CollatzM20Shard091.descent_mod1048576_707263, ⟨CollatzM20Shard091.descent_mod1048576_707583, ⟨CollatzM20Shard091.descent_mod1048576_708031, ⟨CollatzM20Shard091.descent_mod1048576_708127, ⟨CollatzM20Shard091.descent_mod1048576_708143, ⟨CollatzM20Shard091.descent_mod1048576_708287, ⟨CollatzM20Shard091.descent_mod1048576_708719, ⟨CollatzM20Shard091.descent_mod1048576_708859, ⟨CollatzM20Shard091.descent_mod1048576_709287, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
