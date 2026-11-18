import M20Shard037

namespace CollatzM20CompositionV1

theorem chunk037 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 273055) 32 = 531441 * k + 138391 ∧ 531441 * k + 138391 < 1048576 * k + 273055) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 273215) 32 = 531441 * k + 138472 ∧ 531441 * k + 138472 < 1048576 * k + 273215) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 273511) 32 = 531441 * k + 138622 ∧ 531441 * k + 138622 < 1048576 * k + 273511) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 273735) 32 = 531441 * k + 138736 ∧ 531441 * k + 138736 < 1048576 * k + 273735) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 275135) 32 = 531441 * k + 139445 ∧ 531441 * k + 139445 < 1048576 * k + 275135) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 275227) 32 = 531441 * k + 139492 ∧ 531441 * k + 139492 < 1048576 * k + 275227) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 275559) 32 = 531441 * k + 139660 ∧ 531441 * k + 139660 < 1048576 * k + 275559) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 277607) 32 = 531441 * k + 140698 ∧ 531441 * k + 140698 < 1048576 * k + 277607) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 278047) 32 = 531441 * k + 140921 ∧ 531441 * k + 140921 < 1048576 * k + 278047) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 278207) 32 = 531441 * k + 141002 ∧ 531441 * k + 141002 < 1048576 * k + 278207) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 278591) 32 = 531441 * k + 141197 ∧ 531441 * k + 141197 < 1048576 * k + 278591) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 278751) 32 = 531441 * k + 141278 ∧ 531441 * k + 141278 < 1048576 * k + 278751) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 279195) 32 = 531441 * k + 141503 ∧ 531441 * k + 141503 < 1048576 * k + 279195) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 280039) 32 = 531441 * k + 141931 ∧ 531441 * k + 141931 < 1048576 * k + 280039) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 280679) 32 = 531441 * k + 142255 ∧ 531441 * k + 142255 < 1048576 * k + 280679) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 280687) 32 = 531441 * k + 142259 ∧ 531441 * k + 142259 < 1048576 * k + 280687) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 281247) 32 = 531441 * k + 142543 ∧ 531441 * k + 142543 < 1048576 * k + 281247) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 281407) 32 = 531441 * k + 142624 ∧ 531441 * k + 142624 < 1048576 * k + 281407) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 281599) 32 = 531441 * k + 142721 ∧ 531441 * k + 142721 < 1048576 * k + 281599) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 282143) 32 = 531441 * k + 142997 ∧ 531441 * k + 142997 < 1048576 * k + 282143) ∧
  R := by
  exact ⟨CollatzM20Shard037.descent_mod1048576_273055, ⟨CollatzM20Shard037.descent_mod1048576_273215, ⟨CollatzM20Shard037.descent_mod1048576_273511, ⟨CollatzM20Shard037.descent_mod1048576_273735, ⟨CollatzM20Shard037.descent_mod1048576_275135, ⟨CollatzM20Shard037.descent_mod1048576_275227, ⟨CollatzM20Shard037.descent_mod1048576_275559, ⟨CollatzM20Shard037.descent_mod1048576_277607, ⟨CollatzM20Shard037.descent_mod1048576_278047, ⟨CollatzM20Shard037.descent_mod1048576_278207, ⟨CollatzM20Shard037.descent_mod1048576_278591, ⟨CollatzM20Shard037.descent_mod1048576_278751, ⟨CollatzM20Shard037.descent_mod1048576_279195, ⟨CollatzM20Shard037.descent_mod1048576_280039, ⟨CollatzM20Shard037.descent_mod1048576_280679, ⟨CollatzM20Shard037.descent_mod1048576_280687, ⟨CollatzM20Shard037.descent_mod1048576_281247, ⟨CollatzM20Shard037.descent_mod1048576_281407, ⟨CollatzM20Shard037.descent_mod1048576_281599, ⟨CollatzM20Shard037.descent_mod1048576_282143, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
