import M20Shard104

namespace CollatzM20CompositionV1

theorem chunk104 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 814235) 32 = 531441 * k + 412673 ∧ 531441 * k + 412673 < 1048576 * k + 814235) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 814247) 32 = 531441 * k + 412679 ∧ 531441 * k + 412679 < 1048576 * k + 814247) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 814591) 32 = 531441 * k + 412853 ∧ 531441 * k + 412853 < 1048576 * k + 814591) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 815407) 32 = 531441 * k + 413267 ∧ 531441 * k + 413267 < 1048576 * k + 815407) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 815615) 32 = 531441 * k + 413372 ∧ 531441 * k + 413372 < 1048576 * k + 815615) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 815727) 32 = 531441 * k + 413429 ∧ 531441 * k + 413429 < 1048576 * k + 815727) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 816431) 32 = 531441 * k + 413786 ∧ 531441 * k + 413786 < 1048576 * k + 816431) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 816455) 32 = 531441 * k + 413798 ∧ 531441 * k + 413798 < 1048576 * k + 816455) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 816607) 32 = 531441 * k + 413875 ∧ 531441 * k + 413875 < 1048576 * k + 816607) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 816799) 32 = 531441 * k + 413972 ∧ 531441 * k + 413972 < 1048576 * k + 816799) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 816923) 32 = 531441 * k + 414035 ∧ 531441 * k + 414035 < 1048576 * k + 816923) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 817183) 32 = 531441 * k + 414167 ∧ 531441 * k + 414167 < 1048576 * k + 817183) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 817479) 32 = 531441 * k + 414317 ∧ 531441 * k + 414317 < 1048576 * k + 817479) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 817947) 32 = 531441 * k + 414554 ∧ 531441 * k + 414554 < 1048576 * k + 817947) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 818791) 32 = 531441 * k + 414982 ∧ 531441 * k + 414982 < 1048576 * k + 818791) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 819247) 32 = 531441 * k + 415213 ∧ 531441 * k + 415213 < 1048576 * k + 819247) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 819527) 32 = 531441 * k + 415355 ∧ 531441 * k + 415355 < 1048576 * k + 819527) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 819679) 32 = 531441 * k + 415432 ∧ 531441 * k + 415432 < 1048576 * k + 819679) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 819803) 32 = 531441 * k + 415495 ∧ 531441 * k + 415495 < 1048576 * k + 819803) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 819995) 32 = 531441 * k + 415592 ∧ 531441 * k + 415592 < 1048576 * k + 819995) ∧
  R := by
  exact ⟨CollatzM20Shard104.descent_mod1048576_814235, ⟨CollatzM20Shard104.descent_mod1048576_814247, ⟨CollatzM20Shard104.descent_mod1048576_814591, ⟨CollatzM20Shard104.descent_mod1048576_815407, ⟨CollatzM20Shard104.descent_mod1048576_815615, ⟨CollatzM20Shard104.descent_mod1048576_815727, ⟨CollatzM20Shard104.descent_mod1048576_816431, ⟨CollatzM20Shard104.descent_mod1048576_816455, ⟨CollatzM20Shard104.descent_mod1048576_816607, ⟨CollatzM20Shard104.descent_mod1048576_816799, ⟨CollatzM20Shard104.descent_mod1048576_816923, ⟨CollatzM20Shard104.descent_mod1048576_817183, ⟨CollatzM20Shard104.descent_mod1048576_817479, ⟨CollatzM20Shard104.descent_mod1048576_817947, ⟨CollatzM20Shard104.descent_mod1048576_818791, ⟨CollatzM20Shard104.descent_mod1048576_819247, ⟨CollatzM20Shard104.descent_mod1048576_819527, ⟨CollatzM20Shard104.descent_mod1048576_819679, ⟨CollatzM20Shard104.descent_mod1048576_819803, ⟨CollatzM20Shard104.descent_mod1048576_819995, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
