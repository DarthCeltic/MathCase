import M20Shard072

namespace CollatzM20CompositionV1

theorem chunk072 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 559771) 32 = 531441 * k + 283705 ∧ 531441 * k + 283705 < 1048576 * k + 559771) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 559807) 32 = 531441 * k + 283723 ∧ 531441 * k + 283723 < 1048576 * k + 559807) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 560127) 32 = 531441 * k + 283885 ∧ 531441 * k + 283885 < 1048576 * k + 560127) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 560335) 32 = 531441 * k + 283991 ∧ 531441 * k + 283991 < 1048576 * k + 560335) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561223) 32 = 531441 * k + 284441 ∧ 531441 * k + 284441 < 1048576 * k + 561223) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561263) 32 = 531441 * k + 284461 ∧ 531441 * k + 284461 < 1048576 * k + 561263) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561359) 32 = 531441 * k + 284510 ∧ 531441 * k + 284510 < 1048576 * k + 561359) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561375) 32 = 531441 * k + 284518 ∧ 531441 * k + 284518 < 1048576 * k + 561375) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561567) 32 = 531441 * k + 284615 ∧ 531441 * k + 284615 < 1048576 * k + 561567) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561855) 32 = 531441 * k + 284761 ∧ 531441 * k + 284761 < 1048576 * k + 561855) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561951) 32 = 531441 * k + 284810 ∧ 531441 * k + 284810 < 1048576 * k + 561951) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 562407) 32 = 531441 * k + 285041 ∧ 531441 * k + 285041 < 1048576 * k + 562407) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 562431) 32 = 531441 * k + 285053 ∧ 531441 * k + 285053 < 1048576 * k + 562431) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 563199) 32 = 531441 * k + 285442 ∧ 531441 * k + 285442 < 1048576 * k + 563199) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 563879) 32 = 531441 * k + 285787 ∧ 531441 * k + 285787 < 1048576 * k + 563879) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 564287) 32 = 531441 * k + 285994 ∧ 531441 * k + 285994 < 1048576 * k + 564287) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 564335) 32 = 531441 * k + 286018 ∧ 531441 * k + 286018 < 1048576 * k + 564335) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 564607) 32 = 531441 * k + 286156 ∧ 531441 * k + 286156 < 1048576 * k + 564607) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 564763) 32 = 531441 * k + 286235 ∧ 531441 * k + 286235 < 1048576 * k + 564763) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 564767) 32 = 531441 * k + 286237 ∧ 531441 * k + 286237 < 1048576 * k + 564767) ∧
  R := by
  exact ⟨CollatzM20Shard072.descent_mod1048576_559771, ⟨CollatzM20Shard072.descent_mod1048576_559807, ⟨CollatzM20Shard072.descent_mod1048576_560127, ⟨CollatzM20Shard072.descent_mod1048576_560335, ⟨CollatzM20Shard072.descent_mod1048576_561223, ⟨CollatzM20Shard072.descent_mod1048576_561263, ⟨CollatzM20Shard072.descent_mod1048576_561359, ⟨CollatzM20Shard072.descent_mod1048576_561375, ⟨CollatzM20Shard072.descent_mod1048576_561567, ⟨CollatzM20Shard072.descent_mod1048576_561855, ⟨CollatzM20Shard072.descent_mod1048576_561951, ⟨CollatzM20Shard072.descent_mod1048576_562407, ⟨CollatzM20Shard072.descent_mod1048576_562431, ⟨CollatzM20Shard072.descent_mod1048576_563199, ⟨CollatzM20Shard072.descent_mod1048576_563879, ⟨CollatzM20Shard072.descent_mod1048576_564287, ⟨CollatzM20Shard072.descent_mod1048576_564335, ⟨CollatzM20Shard072.descent_mod1048576_564607, ⟨CollatzM20Shard072.descent_mod1048576_564763, ⟨CollatzM20Shard072.descent_mod1048576_564767, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
