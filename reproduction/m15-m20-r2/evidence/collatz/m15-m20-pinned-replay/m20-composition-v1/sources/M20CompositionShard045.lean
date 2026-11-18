import M20Shard045

namespace CollatzM20CompositionV1

theorem chunk045 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 344287) 32 = 531441 * k + 174493 ∧ 531441 * k + 174493 < 1048576 * k + 344287) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 344731) 32 = 531441 * k + 174718 ∧ 531441 * k + 174718 < 1048576 * k + 344731) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 345343) 32 = 531441 * k + 175028 ∧ 531441 * k + 175028 < 1048576 * k + 345343) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 347803) 32 = 531441 * k + 176275 ∧ 531441 * k + 176275 < 1048576 * k + 347803) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 347935) 32 = 531441 * k + 176342 ∧ 531441 * k + 176342 < 1048576 * k + 347935) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 348095) 32 = 531441 * k + 176423 ∧ 531441 * k + 176423 < 1048576 * k + 348095) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 348383) 32 = 531441 * k + 176569 ∧ 531441 * k + 176569 < 1048576 * k + 348383) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 348415) 32 = 531441 * k + 176585 ∧ 531441 * k + 176585 < 1048576 * k + 348415) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 348863) 32 = 531441 * k + 176812 ∧ 531441 * k + 176812 < 1048576 * k + 348863) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 348959) 32 = 531441 * k + 176861 ∧ 531441 * k + 176861 < 1048576 * k + 348959) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 349231) 32 = 531441 * k + 176999 ∧ 531441 * k + 176999 < 1048576 * k + 349231) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 349439) 32 = 531441 * k + 177104 ∧ 531441 * k + 177104 < 1048576 * k + 349439) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 350119) 32 = 531441 * k + 177449 ∧ 531441 * k + 177449 < 1048576 * k + 350119) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 350207) 32 = 531441 * k + 177493 ∧ 531441 * k + 177493 < 1048576 * k + 350207) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 350875) 32 = 531441 * k + 177832 ∧ 531441 * k + 177832 < 1048576 * k + 350875) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 350887) 32 = 531441 * k + 177838 ∧ 531441 * k + 177838 < 1048576 * k + 350887) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 350971) 32 = 531441 * k + 177881 ∧ 531441 * k + 177881 < 1048576 * k + 350971) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 351647) 32 = 531441 * k + 178223 ∧ 531441 * k + 178223 < 1048576 * k + 351647) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 351775) 32 = 531441 * k + 178288 ∧ 531441 * k + 178288 < 1048576 * k + 351775) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 351899) 32 = 531441 * k + 178351 ∧ 531441 * k + 178351 < 1048576 * k + 351899) ∧
  R := by
  exact ⟨CollatzM20Shard045.descent_mod1048576_344287, ⟨CollatzM20Shard045.descent_mod1048576_344731, ⟨CollatzM20Shard045.descent_mod1048576_345343, ⟨CollatzM20Shard045.descent_mod1048576_347803, ⟨CollatzM20Shard045.descent_mod1048576_347935, ⟨CollatzM20Shard045.descent_mod1048576_348095, ⟨CollatzM20Shard045.descent_mod1048576_348383, ⟨CollatzM20Shard045.descent_mod1048576_348415, ⟨CollatzM20Shard045.descent_mod1048576_348863, ⟨CollatzM20Shard045.descent_mod1048576_348959, ⟨CollatzM20Shard045.descent_mod1048576_349231, ⟨CollatzM20Shard045.descent_mod1048576_349439, ⟨CollatzM20Shard045.descent_mod1048576_350119, ⟨CollatzM20Shard045.descent_mod1048576_350207, ⟨CollatzM20Shard045.descent_mod1048576_350875, ⟨CollatzM20Shard045.descent_mod1048576_350887, ⟨CollatzM20Shard045.descent_mod1048576_350971, ⟨CollatzM20Shard045.descent_mod1048576_351647, ⟨CollatzM20Shard045.descent_mod1048576_351775, ⟨CollatzM20Shard045.descent_mod1048576_351899, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
