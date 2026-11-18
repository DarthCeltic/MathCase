import M20Shard109

namespace CollatzM20CompositionV1

theorem chunk109 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 852059) 32 = 531441 * k + 431843 ∧ 531441 * k + 431843 < 1048576 * k + 852059) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 852071) 32 = 531441 * k + 431849 ∧ 531441 * k + 431849 < 1048576 * k + 852071) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 852219) 32 = 531441 * k + 431924 ∧ 531441 * k + 431924 < 1048576 * k + 852219) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 852415) 32 = 531441 * k + 432023 ∧ 531441 * k + 432023 < 1048576 * k + 852415) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 852959) 32 = 531441 * k + 432299 ∧ 531441 * k + 432299 < 1048576 * k + 852959) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 853083) 32 = 531441 * k + 432362 ∧ 531441 * k + 432362 < 1048576 * k + 853083) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 854431) 32 = 531441 * k + 433045 ∧ 531441 * k + 433045 < 1048576 * k + 854431) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 854887) 32 = 531441 * k + 433276 ∧ 531441 * k + 433276 < 1048576 * k + 854887) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 855291) 32 = 531441 * k + 433481 ∧ 531441 * k + 433481 < 1048576 * k + 855291) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 855487) 32 = 531441 * k + 433580 ∧ 531441 * k + 433580 < 1048576 * k + 855487) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 855759) 32 = 531441 * k + 433718 ∧ 531441 * k + 433718 < 1048576 * k + 855759) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 856315) 32 = 531441 * k + 434000 ∧ 531441 * k + 434000 < 1048576 * k + 856315) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 856935) 32 = 531441 * k + 434314 ∧ 531441 * k + 434314 < 1048576 * k + 856935) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 857627) 32 = 531441 * k + 434665 ∧ 531441 * k + 434665 < 1048576 * k + 857627) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 857855) 32 = 531441 * k + 434780 ∧ 531441 * k + 434780 < 1048576 * k + 857855) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 858079) 32 = 531441 * k + 434894 ∧ 531441 * k + 434894 < 1048576 * k + 858079) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 858239) 32 = 531441 * k + 434975 ∧ 531441 * k + 434975 < 1048576 * k + 858239) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 858363) 32 = 531441 * k + 435038 ∧ 531441 * k + 435038 < 1048576 * k + 858363) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 858831) 32 = 531441 * k + 435275 ∧ 531441 * k + 435275 < 1048576 * k + 858831) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 859007) 32 = 531441 * k + 435364 ∧ 531441 * k + 435364 < 1048576 * k + 859007) ∧
  R := by
  exact ⟨CollatzM20Shard109.descent_mod1048576_852059, ⟨CollatzM20Shard109.descent_mod1048576_852071, ⟨CollatzM20Shard109.descent_mod1048576_852219, ⟨CollatzM20Shard109.descent_mod1048576_852415, ⟨CollatzM20Shard109.descent_mod1048576_852959, ⟨CollatzM20Shard109.descent_mod1048576_853083, ⟨CollatzM20Shard109.descent_mod1048576_854431, ⟨CollatzM20Shard109.descent_mod1048576_854887, ⟨CollatzM20Shard109.descent_mod1048576_855291, ⟨CollatzM20Shard109.descent_mod1048576_855487, ⟨CollatzM20Shard109.descent_mod1048576_855759, ⟨CollatzM20Shard109.descent_mod1048576_856315, ⟨CollatzM20Shard109.descent_mod1048576_856935, ⟨CollatzM20Shard109.descent_mod1048576_857627, ⟨CollatzM20Shard109.descent_mod1048576_857855, ⟨CollatzM20Shard109.descent_mod1048576_858079, ⟨CollatzM20Shard109.descent_mod1048576_858239, ⟨CollatzM20Shard109.descent_mod1048576_858363, ⟨CollatzM20Shard109.descent_mod1048576_858831, ⟨CollatzM20Shard109.descent_mod1048576_859007, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
