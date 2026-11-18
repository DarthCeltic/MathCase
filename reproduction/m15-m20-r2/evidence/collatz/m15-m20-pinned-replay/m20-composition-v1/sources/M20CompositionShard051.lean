import M20Shard051

namespace CollatzM20CompositionV1

theorem chunk051 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 402203) 32 = 531441 * k + 203846 ∧ 531441 * k + 203846 < 1048576 * k + 402203) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 402671) 32 = 531441 * k + 204083 ∧ 531441 * k + 204083 < 1048576 * k + 402671) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 403695) 32 = 531441 * k + 204602 ∧ 531441 * k + 204602 < 1048576 * k + 403695) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 403783) 32 = 531441 * k + 204647 ∧ 531441 * k + 204647 < 1048576 * k + 403783) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 404059) 32 = 531441 * k + 204787 ∧ 531441 * k + 204787 < 1048576 * k + 404059) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 404219) 32 = 531441 * k + 204868 ∧ 531441 * k + 204868 < 1048576 * k + 404219) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 404415) 32 = 531441 * k + 204967 ∧ 531441 * k + 204967 < 1048576 * k + 404415) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 404671) 32 = 531441 * k + 205097 ∧ 531441 * k + 205097 < 1048576 * k + 404671) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405151) 32 = 531441 * k + 205340 ∧ 531441 * k + 205340 < 1048576 * k + 405151) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405275) 32 = 531441 * k + 205403 ∧ 531441 * k + 205403 < 1048576 * k + 405275) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405439) 32 = 531441 * k + 205486 ∧ 531441 * k + 205486 < 1048576 * k + 405439) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405551) 32 = 531441 * k + 205543 ∧ 531441 * k + 205543 < 1048576 * k + 405551) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405695) 32 = 531441 * k + 205616 ∧ 531441 * k + 205616 < 1048576 * k + 405695) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405743) 32 = 531441 * k + 205640 ∧ 531441 * k + 205640 < 1048576 * k + 405743) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405807) 32 = 531441 * k + 205673 ∧ 531441 * k + 205673 < 1048576 * k + 405807) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 406127) 32 = 531441 * k + 205835 ∧ 531441 * k + 205835 < 1048576 * k + 406127) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 406695) 32 = 531441 * k + 206123 ∧ 531441 * k + 206123 < 1048576 * k + 406695) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 406855) 32 = 531441 * k + 206204 ∧ 531441 * k + 206204 < 1048576 * k + 406855) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 407463) 32 = 531441 * k + 206512 ∧ 531441 * k + 206512 < 1048576 * k + 407463) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 407547) 32 = 531441 * k + 206555 ∧ 531441 * k + 206555 < 1048576 * k + 407547) ∧
  R := by
  exact ⟨CollatzM20Shard051.descent_mod1048576_402203, ⟨CollatzM20Shard051.descent_mod1048576_402671, ⟨CollatzM20Shard051.descent_mod1048576_403695, ⟨CollatzM20Shard051.descent_mod1048576_403783, ⟨CollatzM20Shard051.descent_mod1048576_404059, ⟨CollatzM20Shard051.descent_mod1048576_404219, ⟨CollatzM20Shard051.descent_mod1048576_404415, ⟨CollatzM20Shard051.descent_mod1048576_404671, ⟨CollatzM20Shard051.descent_mod1048576_405151, ⟨CollatzM20Shard051.descent_mod1048576_405275, ⟨CollatzM20Shard051.descent_mod1048576_405439, ⟨CollatzM20Shard051.descent_mod1048576_405551, ⟨CollatzM20Shard051.descent_mod1048576_405695, ⟨CollatzM20Shard051.descent_mod1048576_405743, ⟨CollatzM20Shard051.descent_mod1048576_405807, ⟨CollatzM20Shard051.descent_mod1048576_406127, ⟨CollatzM20Shard051.descent_mod1048576_406695, ⟨CollatzM20Shard051.descent_mod1048576_406855, ⟨CollatzM20Shard051.descent_mod1048576_407463, ⟨CollatzM20Shard051.descent_mod1048576_407547, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
