import M20Shard024

namespace CollatzM20CompositionV1

theorem chunk024 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 175135) 32 = 531441 * k + 88763 ∧ 531441 * k + 88763 < 1048576 * k + 175135) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 175259) 32 = 531441 * k + 88826 ∧ 531441 * k + 88826 < 1048576 * k + 175259) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 175963) 32 = 531441 * k + 89183 ∧ 531441 * k + 89183 < 1048576 * k + 175963) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 177791) 32 = 531441 * k + 90109 ∧ 531441 * k + 90109 < 1048576 * k + 177791) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 178047) 32 = 531441 * k + 90239 ∧ 531441 * k + 90239 < 1048576 * k + 178047) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 178207) 32 = 531441 * k + 90320 ∧ 531441 * k + 90320 < 1048576 * k + 178207) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 178655) 32 = 531441 * k + 90547 ∧ 531441 * k + 90547 < 1048576 * k + 178655) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 178799) 32 = 531441 * k + 90620 ∧ 531441 * k + 90620 < 1048576 * k + 178799) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 178815) 32 = 531441 * k + 90628 ∧ 531441 * k + 90628 < 1048576 * k + 178815) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 179231) 32 = 531441 * k + 90839 ∧ 531441 * k + 90839 < 1048576 * k + 179231) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 179503) 32 = 531441 * k + 90977 ∧ 531441 * k + 90977 < 1048576 * k + 179503) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 181083) 32 = 531441 * k + 91778 ∧ 531441 * k + 91778 < 1048576 * k + 181083) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 181403) 32 = 531441 * k + 91940 ∧ 531441 * k + 91940 < 1048576 * k + 181403) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 181727) 32 = 531441 * k + 92104 ∧ 531441 * k + 92104 < 1048576 * k + 181727) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 181759) 32 = 531441 * k + 92120 ∧ 531441 * k + 92120 < 1048576 * k + 181759) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 181999) 32 = 531441 * k + 92242 ∧ 531441 * k + 92242 < 1048576 * k + 181999) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 182107) 32 = 531441 * k + 92297 ∧ 531441 * k + 92297 < 1048576 * k + 182107) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 182599) 32 = 531441 * k + 92546 ∧ 531441 * k + 92546 < 1048576 * k + 182599) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 182895) 32 = 531441 * k + 92696 ∧ 531441 * k + 92696 < 1048576 * k + 182895) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 183599) 32 = 531441 * k + 93053 ∧ 531441 * k + 93053 < 1048576 * k + 183599) ∧
  R := by
  exact ⟨CollatzM20Shard024.descent_mod1048576_175135, ⟨CollatzM20Shard024.descent_mod1048576_175259, ⟨CollatzM20Shard024.descent_mod1048576_175963, ⟨CollatzM20Shard024.descent_mod1048576_177791, ⟨CollatzM20Shard024.descent_mod1048576_178047, ⟨CollatzM20Shard024.descent_mod1048576_178207, ⟨CollatzM20Shard024.descent_mod1048576_178655, ⟨CollatzM20Shard024.descent_mod1048576_178799, ⟨CollatzM20Shard024.descent_mod1048576_178815, ⟨CollatzM20Shard024.descent_mod1048576_179231, ⟨CollatzM20Shard024.descent_mod1048576_179503, ⟨CollatzM20Shard024.descent_mod1048576_181083, ⟨CollatzM20Shard024.descent_mod1048576_181403, ⟨CollatzM20Shard024.descent_mod1048576_181727, ⟨CollatzM20Shard024.descent_mod1048576_181759, ⟨CollatzM20Shard024.descent_mod1048576_181999, ⟨CollatzM20Shard024.descent_mod1048576_182107, ⟨CollatzM20Shard024.descent_mod1048576_182599, ⟨CollatzM20Shard024.descent_mod1048576_182895, ⟨CollatzM20Shard024.descent_mod1048576_183599, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
