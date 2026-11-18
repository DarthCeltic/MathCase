import M20Shard015

namespace CollatzM20CompositionV1

theorem chunk015 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 98031) 32 = 531441 * k + 49685 ∧ 531441 * k + 49685 < 1048576 * k + 98031) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 98943) 32 = 531441 * k + 50147 ∧ 531441 * k + 50147 < 1048576 * k + 98943) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 99047) 32 = 531441 * k + 50200 ∧ 531441 * k + 50200 < 1048576 * k + 99047) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 99055) 32 = 531441 * k + 50204 ∧ 531441 * k + 50204 < 1048576 * k + 99055) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 99071) 32 = 531441 * k + 50212 ∧ 531441 * k + 50212 < 1048576 * k + 99071) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 99487) 32 = 531441 * k + 50423 ∧ 531441 * k + 50423 < 1048576 * k + 99487) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 99967) 32 = 531441 * k + 50666 ∧ 531441 * k + 50666 < 1048576 * k + 99967) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 101095) 32 = 531441 * k + 51238 ∧ 531441 * k + 51238 < 1048576 * k + 101095) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 101191) 32 = 531441 * k + 51287 ∧ 531441 * k + 51287 < 1048576 * k + 101191) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 102127) 32 = 531441 * k + 51761 ∧ 531441 * k + 51761 < 1048576 * k + 102127) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 102683) 32 = 531441 * k + 52043 ∧ 531441 * k + 52043 < 1048576 * k + 102683) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 103039) 32 = 531441 * k + 52223 ∧ 531441 * k + 52223 < 1048576 * k + 103039) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 103119) 32 = 531441 * k + 52264 ∧ 531441 * k + 52264 < 1048576 * k + 103119) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 103451) 32 = 531441 * k + 52432 ∧ 531441 * k + 52432 < 1048576 * k + 103451) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 104167) 32 = 531441 * k + 52795 ∧ 531441 * k + 52795 < 1048576 * k + 104167) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 104859) 32 = 531441 * k + 53146 ∧ 531441 * k + 53146 < 1048576 * k + 104859) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 104927) 32 = 531441 * k + 53180 ∧ 531441 * k + 53180 < 1048576 * k + 104927) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 105755) 32 = 531441 * k + 53600 ∧ 531441 * k + 53600 < 1048576 * k + 105755) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 105883) 32 = 531441 * k + 53665 ∧ 531441 * k + 53665 < 1048576 * k + 105883) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 106111) 32 = 531441 * k + 53780 ∧ 531441 * k + 53780 < 1048576 * k + 106111) ∧
  R := by
  exact ⟨CollatzM20Shard015.descent_mod1048576_98031, ⟨CollatzM20Shard015.descent_mod1048576_98943, ⟨CollatzM20Shard015.descent_mod1048576_99047, ⟨CollatzM20Shard015.descent_mod1048576_99055, ⟨CollatzM20Shard015.descent_mod1048576_99071, ⟨CollatzM20Shard015.descent_mod1048576_99487, ⟨CollatzM20Shard015.descent_mod1048576_99967, ⟨CollatzM20Shard015.descent_mod1048576_101095, ⟨CollatzM20Shard015.descent_mod1048576_101191, ⟨CollatzM20Shard015.descent_mod1048576_102127, ⟨CollatzM20Shard015.descent_mod1048576_102683, ⟨CollatzM20Shard015.descent_mod1048576_103039, ⟨CollatzM20Shard015.descent_mod1048576_103119, ⟨CollatzM20Shard015.descent_mod1048576_103451, ⟨CollatzM20Shard015.descent_mod1048576_104167, ⟨CollatzM20Shard015.descent_mod1048576_104859, ⟨CollatzM20Shard015.descent_mod1048576_104927, ⟨CollatzM20Shard015.descent_mod1048576_105755, ⟨CollatzM20Shard015.descent_mod1048576_105883, ⟨CollatzM20Shard015.descent_mod1048576_106111, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
