import M20Shard034

namespace CollatzM20CompositionV1

theorem chunk034 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 247643) 32 = 531441 * k + 125512 ∧ 531441 * k + 125512 < 1048576 * k + 247643) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 247803) 32 = 531441 * k + 125593 ∧ 531441 * k + 125593 < 1048576 * k + 247803) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 248527) 32 = 531441 * k + 125960 ∧ 531441 * k + 125960 < 1048576 * k + 248527) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 248687) 32 = 531441 * k + 126041 ∧ 531441 * k + 126041 < 1048576 * k + 248687) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 249135) 32 = 531441 * k + 126268 ∧ 531441 * k + 126268 < 1048576 * k + 249135) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 249711) 32 = 531441 * k + 126560 ∧ 531441 * k + 126560 < 1048576 * k + 249711) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 249759) 32 = 531441 * k + 126584 ∧ 531441 * k + 126584 < 1048576 * k + 249759) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 249887) 32 = 531441 * k + 126649 ∧ 531441 * k + 126649 < 1048576 * k + 249887) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 250367) 32 = 531441 * k + 126892 ∧ 531441 * k + 126892 < 1048576 * k + 250367) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 250907) 32 = 531441 * k + 127166 ∧ 531441 * k + 127166 < 1048576 * k + 250907) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 252071) 32 = 531441 * k + 127756 ∧ 531441 * k + 127756 < 1048576 * k + 252071) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 252399) 32 = 531441 * k + 127922 ∧ 531441 * k + 127922 < 1048576 * k + 252399) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 252527) 32 = 531441 * k + 127987 ∧ 531441 * k + 127987 < 1048576 * k + 252527) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 252959) 32 = 531441 * k + 128206 ∧ 531441 * k + 128206 < 1048576 * k + 252959) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 253083) 32 = 531441 * k + 128269 ∧ 531441 * k + 128269 < 1048576 * k + 253083) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 253119) 32 = 531441 * k + 128287 ∧ 531441 * k + 128287 < 1048576 * k + 253119) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 253339) 32 = 531441 * k + 128399 ∧ 531441 * k + 128399 < 1048576 * k + 253339) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 253855) 32 = 531441 * k + 128660 ∧ 531441 * k + 128660 < 1048576 * k + 253855) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 253979) 32 = 531441 * k + 128723 ∧ 531441 * k + 128723 < 1048576 * k + 253979) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 255719) 32 = 531441 * k + 129605 ∧ 531441 * k + 129605 < 1048576 * k + 255719) ∧
  R := by
  exact ⟨CollatzM20Shard034.descent_mod1048576_247643, ⟨CollatzM20Shard034.descent_mod1048576_247803, ⟨CollatzM20Shard034.descent_mod1048576_248527, ⟨CollatzM20Shard034.descent_mod1048576_248687, ⟨CollatzM20Shard034.descent_mod1048576_249135, ⟨CollatzM20Shard034.descent_mod1048576_249711, ⟨CollatzM20Shard034.descent_mod1048576_249759, ⟨CollatzM20Shard034.descent_mod1048576_249887, ⟨CollatzM20Shard034.descent_mod1048576_250367, ⟨CollatzM20Shard034.descent_mod1048576_250907, ⟨CollatzM20Shard034.descent_mod1048576_252071, ⟨CollatzM20Shard034.descent_mod1048576_252399, ⟨CollatzM20Shard034.descent_mod1048576_252527, ⟨CollatzM20Shard034.descent_mod1048576_252959, ⟨CollatzM20Shard034.descent_mod1048576_253083, ⟨CollatzM20Shard034.descent_mod1048576_253119, ⟨CollatzM20Shard034.descent_mod1048576_253339, ⟨CollatzM20Shard034.descent_mod1048576_253855, ⟨CollatzM20Shard034.descent_mod1048576_253979, ⟨CollatzM20Shard034.descent_mod1048576_255719, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
