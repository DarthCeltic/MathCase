import M20Shard014

namespace CollatzM20CompositionV1

theorem chunk014 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 90879) 32 = 531441 * k + 46060 ∧ 531441 * k + 46060 < 1048576 * k + 90879) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 91419) 32 = 531441 * k + 46334 ∧ 531441 * k + 46334 < 1048576 * k + 91419) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 91855) 32 = 531441 * k + 46555 ∧ 531441 * k + 46555 < 1048576 * k + 91855) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 92411) 32 = 531441 * k + 46837 ∧ 531441 * k + 46837 < 1048576 * k + 92411) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 92571) 32 = 531441 * k + 46918 ∧ 531441 * k + 46918 < 1048576 * k + 92571) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 92903) 32 = 531441 * k + 47086 ∧ 531441 * k + 47086 < 1048576 * k + 92903) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 93467) 32 = 531441 * k + 47372 ∧ 531441 * k + 47372 < 1048576 * k + 93467) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 93903) 32 = 531441 * k + 47593 ∧ 531441 * k + 47593 < 1048576 * k + 93903) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 93935) 32 = 531441 * k + 47609 ∧ 531441 * k + 47609 < 1048576 * k + 93935) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 94887) 32 = 531441 * k + 48092 ∧ 531441 * k + 48092 < 1048576 * k + 94887) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 95047) 32 = 531441 * k + 48173 ∧ 531441 * k + 48173 < 1048576 * k + 95047) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 95975) 32 = 531441 * k + 48643 ∧ 531441 * k + 48643 < 1048576 * k + 95975) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 96539) 32 = 531441 * k + 48929 ∧ 531441 * k + 48929 < 1048576 * k + 96539) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 96575) 32 = 531441 * k + 48947 ∧ 531441 * k + 48947 < 1048576 * k + 96575) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 96667) 32 = 531441 * k + 48994 ∧ 531441 * k + 48994 < 1048576 * k + 96667) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 96815) 32 = 531441 * k + 49069 ∧ 531441 * k + 49069 < 1048576 * k + 96815) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 96975) 32 = 531441 * k + 49150 ∧ 531441 * k + 49150 < 1048576 * k + 96975) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 97023) 32 = 531441 * k + 49174 ∧ 531441 * k + 49174 < 1048576 * k + 97023) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 97563) 32 = 531441 * k + 49448 ∧ 531441 * k + 49448 < 1048576 * k + 97563) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 97919) 32 = 531441 * k + 49628 ∧ 531441 * k + 49628 < 1048576 * k + 97919) ∧
  R := by
  exact ⟨CollatzM20Shard014.descent_mod1048576_90879, ⟨CollatzM20Shard014.descent_mod1048576_91419, ⟨CollatzM20Shard014.descent_mod1048576_91855, ⟨CollatzM20Shard014.descent_mod1048576_92411, ⟨CollatzM20Shard014.descent_mod1048576_92571, ⟨CollatzM20Shard014.descent_mod1048576_92903, ⟨CollatzM20Shard014.descent_mod1048576_93467, ⟨CollatzM20Shard014.descent_mod1048576_93903, ⟨CollatzM20Shard014.descent_mod1048576_93935, ⟨CollatzM20Shard014.descent_mod1048576_94887, ⟨CollatzM20Shard014.descent_mod1048576_95047, ⟨CollatzM20Shard014.descent_mod1048576_95975, ⟨CollatzM20Shard014.descent_mod1048576_96539, ⟨CollatzM20Shard014.descent_mod1048576_96575, ⟨CollatzM20Shard014.descent_mod1048576_96667, ⟨CollatzM20Shard014.descent_mod1048576_96815, ⟨CollatzM20Shard014.descent_mod1048576_96975, ⟨CollatzM20Shard014.descent_mod1048576_97023, ⟨CollatzM20Shard014.descent_mod1048576_97563, ⟨CollatzM20Shard014.descent_mod1048576_97919, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
