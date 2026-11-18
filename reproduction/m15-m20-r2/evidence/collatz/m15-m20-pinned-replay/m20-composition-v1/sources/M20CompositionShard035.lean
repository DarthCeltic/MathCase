import M20Shard035

namespace CollatzM20CompositionV1

theorem chunk035 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 255771) 32 = 531441 * k + 129631 ∧ 531441 * k + 129631 < 1048576 * k + 255771) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 255835) 32 = 531441 * k + 129664 ∧ 531441 * k + 129664 < 1048576 * k + 255835) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 255995) 32 = 531441 * k + 129745 ∧ 531441 * k + 129745 < 1048576 * k + 255995) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 256327) 32 = 531441 * k + 129913 ∧ 531441 * k + 129913 < 1048576 * k + 256327) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 257051) 32 = 531441 * k + 130280 ∧ 531441 * k + 130280 < 1048576 * k + 257051) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 257327) 32 = 531441 * k + 130420 ∧ 531441 * k + 130420 < 1048576 * k + 257327) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 257819) 32 = 531441 * k + 130669 ∧ 531441 * k + 130669 < 1048576 * k + 257819) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 257903) 32 = 531441 * k + 130712 ∧ 531441 * k + 130712 < 1048576 * k + 257903) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 257951) 32 = 531441 * k + 130736 ∧ 531441 * k + 130736 < 1048576 * k + 257951) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 258075) 32 = 531441 * k + 130799 ∧ 531441 * k + 130799 < 1048576 * k + 258075) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 258351) 32 = 531441 * k + 130939 ∧ 531441 * k + 130939 < 1048576 * k + 258351) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 258671) 32 = 531441 * k + 131101 ∧ 531441 * k + 131101 < 1048576 * k + 258671) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 259263) 32 = 531441 * k + 131401 ∧ 531441 * k + 131401 < 1048576 * k + 259263) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 259399) 32 = 531441 * k + 131470 ∧ 531441 * k + 131470 < 1048576 * k + 259399) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 259431) 32 = 531441 * k + 131486 ∧ 531441 * k + 131486 < 1048576 * k + 259431) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 259583) 32 = 531441 * k + 131563 ∧ 531441 * k + 131563 < 1048576 * k + 259583) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 259867) 32 = 531441 * k + 131707 ∧ 531441 * k + 131707 < 1048576 * k + 259867) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 260891) 32 = 531441 * k + 132226 ∧ 531441 * k + 132226 < 1048576 * k + 260891) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 262139) 32 = 531441 * k + 132859 ∧ 531441 * k + 132859 < 1048576 * k + 262139) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 262299) 32 = 531441 * k + 132940 ∧ 531441 * k + 132940 < 1048576 * k + 262299) ∧
  R := by
  exact ⟨CollatzM20Shard035.descent_mod1048576_255771, ⟨CollatzM20Shard035.descent_mod1048576_255835, ⟨CollatzM20Shard035.descent_mod1048576_255995, ⟨CollatzM20Shard035.descent_mod1048576_256327, ⟨CollatzM20Shard035.descent_mod1048576_257051, ⟨CollatzM20Shard035.descent_mod1048576_257327, ⟨CollatzM20Shard035.descent_mod1048576_257819, ⟨CollatzM20Shard035.descent_mod1048576_257903, ⟨CollatzM20Shard035.descent_mod1048576_257951, ⟨CollatzM20Shard035.descent_mod1048576_258075, ⟨CollatzM20Shard035.descent_mod1048576_258351, ⟨CollatzM20Shard035.descent_mod1048576_258671, ⟨CollatzM20Shard035.descent_mod1048576_259263, ⟨CollatzM20Shard035.descent_mod1048576_259399, ⟨CollatzM20Shard035.descent_mod1048576_259431, ⟨CollatzM20Shard035.descent_mod1048576_259583, ⟨CollatzM20Shard035.descent_mod1048576_259867, ⟨CollatzM20Shard035.descent_mod1048576_260891, ⟨CollatzM20Shard035.descent_mod1048576_262139, ⟨CollatzM20Shard035.descent_mod1048576_262299, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
