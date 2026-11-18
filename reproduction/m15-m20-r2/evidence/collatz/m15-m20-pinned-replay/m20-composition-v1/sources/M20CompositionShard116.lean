import M20Shard116

namespace CollatzM20CompositionV1

theorem chunk116 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 906367) 32 = 531441 * k + 459367 ∧ 531441 * k + 459367 < 1048576 * k + 906367) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 906623) 32 = 531441 * k + 459497 ∧ 531441 * k + 459497 < 1048576 * k + 906623) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 907355) 32 = 531441 * k + 459868 ∧ 531441 * k + 459868 < 1048576 * k + 907355) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 907623) 32 = 531441 * k + 460004 ∧ 531441 * k + 460004 < 1048576 * k + 907623) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 908391) 32 = 531441 * k + 460393 ∧ 531441 * k + 460393 < 1048576 * k + 908391) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 908415) 32 = 531441 * k + 460405 ∧ 531441 * k + 460405 < 1048576 * k + 908415) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 908831) 32 = 531441 * k + 460616 ∧ 531441 * k + 460616 < 1048576 * k + 908831) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 908955) 32 = 531441 * k + 460679 ∧ 531441 * k + 460679 < 1048576 * k + 908955) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 908991) 32 = 531441 * k + 460697 ∧ 531441 * k + 460697 < 1048576 * k + 908991) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 909403) 32 = 531441 * k + 460906 ∧ 531441 * k + 460906 < 1048576 * k + 909403) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 909535) 32 = 531441 * k + 460973 ∧ 531441 * k + 460973 < 1048576 * k + 909535) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 909551) 32 = 531441 * k + 460981 ∧ 531441 * k + 460981 < 1048576 * k + 909551) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 909979) 32 = 531441 * k + 461198 ∧ 531441 * k + 461198 < 1048576 * k + 909979) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 910015) 32 = 531441 * k + 461216 ∧ 531441 * k + 461216 < 1048576 * k + 910015) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 911451) 32 = 531441 * k + 461944 ∧ 531441 * k + 461944 < 1048576 * k + 911451) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 911463) 32 = 531441 * k + 461950 ∧ 531441 * k + 461950 < 1048576 * k + 911463) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 911487) 32 = 531441 * k + 461962 ∧ 531441 * k + 461962 < 1048576 * k + 911487) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 912063) 32 = 531441 * k + 462254 ∧ 531441 * k + 462254 < 1048576 * k + 912063) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 913051) 32 = 531441 * k + 462755 ∧ 531441 * k + 462755 < 1048576 * k + 913051) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 913519) 32 = 531441 * k + 462992 ∧ 531441 * k + 462992 < 1048576 * k + 913519) ∧
  R := by
  exact ⟨CollatzM20Shard116.descent_mod1048576_906367, ⟨CollatzM20Shard116.descent_mod1048576_906623, ⟨CollatzM20Shard116.descent_mod1048576_907355, ⟨CollatzM20Shard116.descent_mod1048576_907623, ⟨CollatzM20Shard116.descent_mod1048576_908391, ⟨CollatzM20Shard116.descent_mod1048576_908415, ⟨CollatzM20Shard116.descent_mod1048576_908831, ⟨CollatzM20Shard116.descent_mod1048576_908955, ⟨CollatzM20Shard116.descent_mod1048576_908991, ⟨CollatzM20Shard116.descent_mod1048576_909403, ⟨CollatzM20Shard116.descent_mod1048576_909535, ⟨CollatzM20Shard116.descent_mod1048576_909551, ⟨CollatzM20Shard116.descent_mod1048576_909979, ⟨CollatzM20Shard116.descent_mod1048576_910015, ⟨CollatzM20Shard116.descent_mod1048576_911451, ⟨CollatzM20Shard116.descent_mod1048576_911463, ⟨CollatzM20Shard116.descent_mod1048576_911487, ⟨CollatzM20Shard116.descent_mod1048576_912063, ⟨CollatzM20Shard116.descent_mod1048576_913051, ⟨CollatzM20Shard116.descent_mod1048576_913519, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
