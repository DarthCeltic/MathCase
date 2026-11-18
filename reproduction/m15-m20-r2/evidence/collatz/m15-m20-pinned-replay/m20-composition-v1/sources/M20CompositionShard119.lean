import M20Shard119

namespace CollatzM20CompositionV1

theorem chunk119 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 927903) 32 = 531441 * k + 470282 ∧ 531441 * k + 470282 < 1048576 * k + 927903) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 927995) 32 = 531441 * k + 470329 ∧ 531441 * k + 470329 < 1048576 * k + 927995) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 928155) 32 = 531441 * k + 470410 ∧ 531441 * k + 470410 < 1048576 * k + 928155) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 928879) 32 = 531441 * k + 470777 ∧ 531441 * k + 470777 < 1048576 * k + 928879) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 928927) 32 = 531441 * k + 470801 ∧ 531441 * k + 470801 < 1048576 * k + 928927) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 929487) 32 = 531441 * k + 471085 ∧ 531441 * k + 471085 < 1048576 * k + 929487) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 930111) 32 = 531441 * k + 471401 ∧ 531441 * k + 471401 < 1048576 * k + 930111) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 930239) 32 = 531441 * k + 471466 ∧ 531441 * k + 471466 < 1048576 * k + 930239) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 930335) 32 = 531441 * k + 471515 ∧ 531441 * k + 471515 < 1048576 * k + 930335) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 930631) 32 = 531441 * k + 471665 ∧ 531441 * k + 471665 < 1048576 * k + 930631) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 930975) 32 = 531441 * k + 471839 ∧ 531441 * k + 471839 < 1048576 * k + 930975) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 931099) 32 = 531441 * k + 471902 ∧ 531441 * k + 471902 < 1048576 * k + 931099) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 931583) 32 = 531441 * k + 472147 ∧ 531441 * k + 472147 < 1048576 * k + 931583) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 932559) 32 = 531441 * k + 472642 ∧ 531441 * k + 472642 < 1048576 * k + 932559) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 932591) 32 = 531441 * k + 472658 ∧ 531441 * k + 472658 < 1048576 * k + 932591) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 932831) 32 = 531441 * k + 472780 ∧ 531441 * k + 472780 < 1048576 * k + 932831) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 933115) 32 = 531441 * k + 472924 ∧ 531441 * k + 472924 < 1048576 * k + 933115) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 934047) 32 = 531441 * k + 473396 ∧ 531441 * k + 473396 < 1048576 * k + 934047) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 934171) 32 = 531441 * k + 473459 ∧ 531441 * k + 473459 < 1048576 * k + 934171) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 934207) 32 = 531441 * k + 473477 ∧ 531441 * k + 473477 < 1048576 * k + 934207) ∧
  R := by
  exact ⟨CollatzM20Shard119.descent_mod1048576_927903, ⟨CollatzM20Shard119.descent_mod1048576_927995, ⟨CollatzM20Shard119.descent_mod1048576_928155, ⟨CollatzM20Shard119.descent_mod1048576_928879, ⟨CollatzM20Shard119.descent_mod1048576_928927, ⟨CollatzM20Shard119.descent_mod1048576_929487, ⟨CollatzM20Shard119.descent_mod1048576_930111, ⟨CollatzM20Shard119.descent_mod1048576_930239, ⟨CollatzM20Shard119.descent_mod1048576_930335, ⟨CollatzM20Shard119.descent_mod1048576_930631, ⟨CollatzM20Shard119.descent_mod1048576_930975, ⟨CollatzM20Shard119.descent_mod1048576_931099, ⟨CollatzM20Shard119.descent_mod1048576_931583, ⟨CollatzM20Shard119.descent_mod1048576_932559, ⟨CollatzM20Shard119.descent_mod1048576_932591, ⟨CollatzM20Shard119.descent_mod1048576_932831, ⟨CollatzM20Shard119.descent_mod1048576_933115, ⟨CollatzM20Shard119.descent_mod1048576_934047, ⟨CollatzM20Shard119.descent_mod1048576_934171, ⟨CollatzM20Shard119.descent_mod1048576_934207, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
