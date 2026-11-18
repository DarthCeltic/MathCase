import M20Shard103

namespace CollatzM20CompositionV1

theorem chunk103 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 805615) 32 = 531441 * k + 408304 ∧ 531441 * k + 408304 < 1048576 * k + 805615) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 805919) 32 = 531441 * k + 408458 ∧ 531441 * k + 408458 < 1048576 * k + 805919) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 806191) 32 = 531441 * k + 408596 ∧ 531441 * k + 408596 < 1048576 * k + 806191) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 807079) 32 = 531441 * k + 409046 ∧ 531441 * k + 409046 < 1048576 * k + 807079) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 807391) 32 = 531441 * k + 409204 ∧ 531441 * k + 409204 < 1048576 * k + 807391) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 807423) 32 = 531441 * k + 409220 ∧ 531441 * k + 409220 < 1048576 * k + 807423) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 807551) 32 = 531441 * k + 409285 ∧ 531441 * k + 409285 < 1048576 * k + 807551) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 807967) 32 = 531441 * k + 409496 ∧ 531441 * k + 409496 < 1048576 * k + 807967) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 809287) 32 = 531441 * k + 410165 ∧ 531441 * k + 410165 < 1048576 * k + 809287) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 809583) 32 = 531441 * k + 410315 ∧ 531441 * k + 410315 < 1048576 * k + 809583) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 810151) 32 = 531441 * k + 410603 ∧ 531441 * k + 410603 < 1048576 * k + 810151) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 810287) 32 = 531441 * k + 410672 ∧ 531441 * k + 410672 < 1048576 * k + 810287) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 810303) 32 = 531441 * k + 410680 ∧ 531441 * k + 410680 < 1048576 * k + 810303) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 810843) 32 = 531441 * k + 410954 ∧ 531441 * k + 410954 < 1048576 * k + 810843) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 810879) 32 = 531441 * k + 410972 ∧ 531441 * k + 410972 < 1048576 * k + 810879) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 811039) 32 = 531441 * k + 411053 ∧ 531441 * k + 411053 < 1048576 * k + 811039) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 811487) 32 = 531441 * k + 411280 ∧ 531441 * k + 411280 < 1048576 * k + 811487) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 812647) 32 = 531441 * k + 411868 ∧ 531441 * k + 411868 < 1048576 * k + 812647) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 813223) 32 = 531441 * k + 412160 ∧ 531441 * k + 412160 < 1048576 * k + 813223) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 813383) 32 = 531441 * k + 412241 ∧ 531441 * k + 412241 < 1048576 * k + 813383) ∧
  R := by
  exact ⟨CollatzM20Shard103.descent_mod1048576_805615, ⟨CollatzM20Shard103.descent_mod1048576_805919, ⟨CollatzM20Shard103.descent_mod1048576_806191, ⟨CollatzM20Shard103.descent_mod1048576_807079, ⟨CollatzM20Shard103.descent_mod1048576_807391, ⟨CollatzM20Shard103.descent_mod1048576_807423, ⟨CollatzM20Shard103.descent_mod1048576_807551, ⟨CollatzM20Shard103.descent_mod1048576_807967, ⟨CollatzM20Shard103.descent_mod1048576_809287, ⟨CollatzM20Shard103.descent_mod1048576_809583, ⟨CollatzM20Shard103.descent_mod1048576_810151, ⟨CollatzM20Shard103.descent_mod1048576_810287, ⟨CollatzM20Shard103.descent_mod1048576_810303, ⟨CollatzM20Shard103.descent_mod1048576_810843, ⟨CollatzM20Shard103.descent_mod1048576_810879, ⟨CollatzM20Shard103.descent_mod1048576_811039, ⟨CollatzM20Shard103.descent_mod1048576_811487, ⟨CollatzM20Shard103.descent_mod1048576_812647, ⟨CollatzM20Shard103.descent_mod1048576_813223, ⟨CollatzM20Shard103.descent_mod1048576_813383, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
