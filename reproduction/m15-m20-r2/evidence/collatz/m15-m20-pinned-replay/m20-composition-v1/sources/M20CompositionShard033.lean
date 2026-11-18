import M20Shard033

namespace CollatzM20CompositionV1

theorem chunk033 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 239311) 32 = 531441 * k + 121289 ∧ 531441 * k + 121289 < 1048576 * k + 239311) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 239359) 32 = 531441 * k + 121313 ∧ 531441 * k + 121313 < 1048576 * k + 239359) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 239471) 32 = 531441 * k + 121370 ∧ 531441 * k + 121370 < 1048576 * k + 239471) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 240335) 32 = 531441 * k + 121808 ∧ 531441 * k + 121808 < 1048576 * k + 240335) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 240359) 32 = 531441 * k + 121820 ∧ 531441 * k + 121820 < 1048576 * k + 240359) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 240671) 32 = 531441 * k + 121978 ∧ 531441 * k + 121978 < 1048576 * k + 240671) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 241499) 32 = 531441 * k + 122398 ∧ 531441 * k + 122398 < 1048576 * k + 241499) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 243431) 32 = 531441 * k + 123377 ∧ 531441 * k + 123377 < 1048576 * k + 243431) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 243567) 32 = 531441 * k + 123446 ∧ 531441 * k + 123446 < 1048576 * k + 243567) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 243583) 32 = 531441 * k + 123454 ∧ 531441 * k + 123454 < 1048576 * k + 243583) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 243679) 32 = 531441 * k + 123503 ∧ 531441 * k + 123503 < 1048576 * k + 243679) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 244123) 32 = 531441 * k + 123728 ∧ 531441 * k + 123728 < 1048576 * k + 244123) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 244479) 32 = 531441 * k + 123908 ∧ 531441 * k + 123908 < 1048576 * k + 244479) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 244767) 32 = 531441 * k + 124054 ∧ 531441 * k + 124054 < 1048576 * k + 244767) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 244927) 32 = 531441 * k + 124135 ∧ 531441 * k + 124135 < 1048576 * k + 244927) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 245039) 32 = 531441 * k + 124192 ∧ 531441 * k + 124192 < 1048576 * k + 245039) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 246271) 32 = 531441 * k + 124816 ∧ 531441 * k + 124816 < 1048576 * k + 246271) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 246503) 32 = 531441 * k + 124934 ∧ 531441 * k + 124934 < 1048576 * k + 246503) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 247035) 32 = 531441 * k + 125204 ∧ 531441 * k + 125204 < 1048576 * k + 247035) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 247527) 32 = 531441 * k + 125453 ∧ 531441 * k + 125453 < 1048576 * k + 247527) ∧
  R := by
  exact ⟨CollatzM20Shard033.descent_mod1048576_239311, ⟨CollatzM20Shard033.descent_mod1048576_239359, ⟨CollatzM20Shard033.descent_mod1048576_239471, ⟨CollatzM20Shard033.descent_mod1048576_240335, ⟨CollatzM20Shard033.descent_mod1048576_240359, ⟨CollatzM20Shard033.descent_mod1048576_240671, ⟨CollatzM20Shard033.descent_mod1048576_241499, ⟨CollatzM20Shard033.descent_mod1048576_243431, ⟨CollatzM20Shard033.descent_mod1048576_243567, ⟨CollatzM20Shard033.descent_mod1048576_243583, ⟨CollatzM20Shard033.descent_mod1048576_243679, ⟨CollatzM20Shard033.descent_mod1048576_244123, ⟨CollatzM20Shard033.descent_mod1048576_244479, ⟨CollatzM20Shard033.descent_mod1048576_244767, ⟨CollatzM20Shard033.descent_mod1048576_244927, ⟨CollatzM20Shard033.descent_mod1048576_245039, ⟨CollatzM20Shard033.descent_mod1048576_246271, ⟨CollatzM20Shard033.descent_mod1048576_246503, ⟨CollatzM20Shard033.descent_mod1048576_247035, ⟨CollatzM20Shard033.descent_mod1048576_247527, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
