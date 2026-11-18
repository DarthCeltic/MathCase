import M20Shard065

namespace CollatzM20CompositionV1

theorem chunk065 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 503343) 32 = 531441 * k + 255106 ∧ 531441 * k + 255106 < 1048576 * k + 503343) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 504367) 32 = 531441 * k + 255625 ∧ 531441 * k + 255625 < 1048576 * k + 504367) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 504647) 32 = 531441 * k + 255767 ∧ 531441 * k + 255767 < 1048576 * k + 504647) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 504799) 32 = 531441 * k + 255844 ∧ 531441 * k + 255844 < 1048576 * k + 504799) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 504943) 32 = 531441 * k + 255917 ∧ 531441 * k + 255917 < 1048576 * k + 504943) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 504991) 32 = 531441 * k + 255941 ∧ 531441 * k + 255941 < 1048576 * k + 504991) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 505055) 32 = 531441 * k + 255974 ∧ 531441 * k + 255974 < 1048576 * k + 505055) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 505115) 32 = 531441 * k + 256004 ∧ 531441 * k + 256004 < 1048576 * k + 505115) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 505375) 32 = 531441 * k + 256136 ∧ 531441 * k + 256136 < 1048576 * k + 505375) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 505535) 32 = 531441 * k + 256217 ∧ 531441 * k + 256217 < 1048576 * k + 505535) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 506107) 32 = 531441 * k + 256507 ∧ 531441 * k + 256507 < 1048576 * k + 506107) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 507599) 32 = 531441 * k + 257263 ∧ 531441 * k + 257263 < 1048576 * k + 507599) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 507647) 32 = 531441 * k + 257287 ∧ 531441 * k + 257287 < 1048576 * k + 507647) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 507711) 32 = 531441 * k + 257320 ∧ 531441 * k + 257320 < 1048576 * k + 507711) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 508031) 32 = 531441 * k + 257482 ∧ 531441 * k + 257482 < 1048576 * k + 508031) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 508155) 32 = 531441 * k + 257545 ∧ 531441 * k + 257545 < 1048576 * k + 508155) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 508187) 32 = 531441 * k + 257561 ∧ 531441 * k + 257561 < 1048576 * k + 508187) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 508351) 32 = 531441 * k + 257644 ∧ 531441 * k + 257644 < 1048576 * k + 508351) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 509087) 32 = 531441 * k + 258017 ∧ 531441 * k + 258017 < 1048576 * k + 509087) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 509647) 32 = 531441 * k + 258301 ∧ 531441 * k + 258301 < 1048576 * k + 509647) ∧
  R := by
  exact ⟨CollatzM20Shard065.descent_mod1048576_503343, ⟨CollatzM20Shard065.descent_mod1048576_504367, ⟨CollatzM20Shard065.descent_mod1048576_504647, ⟨CollatzM20Shard065.descent_mod1048576_504799, ⟨CollatzM20Shard065.descent_mod1048576_504943, ⟨CollatzM20Shard065.descent_mod1048576_504991, ⟨CollatzM20Shard065.descent_mod1048576_505055, ⟨CollatzM20Shard065.descent_mod1048576_505115, ⟨CollatzM20Shard065.descent_mod1048576_505375, ⟨CollatzM20Shard065.descent_mod1048576_505535, ⟨CollatzM20Shard065.descent_mod1048576_506107, ⟨CollatzM20Shard065.descent_mod1048576_507599, ⟨CollatzM20Shard065.descent_mod1048576_507647, ⟨CollatzM20Shard065.descent_mod1048576_507711, ⟨CollatzM20Shard065.descent_mod1048576_508031, ⟨CollatzM20Shard065.descent_mod1048576_508155, ⟨CollatzM20Shard065.descent_mod1048576_508187, ⟨CollatzM20Shard065.descent_mod1048576_508351, ⟨CollatzM20Shard065.descent_mod1048576_509087, ⟨CollatzM20Shard065.descent_mod1048576_509647, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
