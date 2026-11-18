import M20Shard093

namespace CollatzM20CompositionV1

theorem chunk093 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 717247) 32 = 531441 * k + 363517 ∧ 531441 * k + 363517 < 1048576 * k + 717247) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 717343) 32 = 531441 * k + 363566 ∧ 531441 * k + 363566 < 1048576 * k + 717343) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 717359) 32 = 531441 * k + 363574 ∧ 531441 * k + 363574 < 1048576 * k + 717359) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 717551) 32 = 531441 * k + 363671 ∧ 531441 * k + 363671 < 1048576 * k + 717551) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 717935) 32 = 531441 * k + 363866 ∧ 531441 * k + 363866 < 1048576 * k + 717935) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 718591) 32 = 531441 * k + 364198 ∧ 531441 * k + 364198 < 1048576 * k + 718591) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 719099) 32 = 531441 * k + 364456 ∧ 531441 * k + 364456 < 1048576 * k + 719099) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 720031) 32 = 531441 * k + 364928 ∧ 531441 * k + 364928 < 1048576 * k + 720031) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 720123) 32 = 531441 * k + 364975 ∧ 531441 * k + 364975 < 1048576 * k + 720123) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 720155) 32 = 531441 * k + 364991 ∧ 531441 * k + 364991 < 1048576 * k + 720155) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 720431) 32 = 531441 * k + 365131 ∧ 531441 * k + 365131 < 1048576 * k + 720431) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 721055) 32 = 531441 * k + 365447 ∧ 531441 * k + 365447 < 1048576 * k + 721055) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 721647) 32 = 531441 * k + 365747 ∧ 531441 * k + 365747 < 1048576 * k + 721647) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 722687) 32 = 531441 * k + 366274 ∧ 531441 * k + 366274 < 1048576 * k + 722687) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 723355) 32 = 531441 * k + 366613 ∧ 531441 * k + 366613 < 1048576 * k + 723355) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 724251) 32 = 531441 * k + 367067 ∧ 531441 * k + 367067 < 1048576 * k + 724251) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 724647) 32 = 531441 * k + 367268 ∧ 531441 * k + 367268 < 1048576 * k + 724647) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 724719) 32 = 531441 * k + 367304 ∧ 531441 * k + 367304 < 1048576 * k + 724719) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 725439) 32 = 531441 * k + 367669 ∧ 531441 * k + 367669 < 1048576 * k + 725439) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 725535) 32 = 531441 * k + 367718 ∧ 531441 * k + 367718 < 1048576 * k + 725535) ∧
  R := by
  exact ⟨CollatzM20Shard093.descent_mod1048576_717247, ⟨CollatzM20Shard093.descent_mod1048576_717343, ⟨CollatzM20Shard093.descent_mod1048576_717359, ⟨CollatzM20Shard093.descent_mod1048576_717551, ⟨CollatzM20Shard093.descent_mod1048576_717935, ⟨CollatzM20Shard093.descent_mod1048576_718591, ⟨CollatzM20Shard093.descent_mod1048576_719099, ⟨CollatzM20Shard093.descent_mod1048576_720031, ⟨CollatzM20Shard093.descent_mod1048576_720123, ⟨CollatzM20Shard093.descent_mod1048576_720155, ⟨CollatzM20Shard093.descent_mod1048576_720431, ⟨CollatzM20Shard093.descent_mod1048576_721055, ⟨CollatzM20Shard093.descent_mod1048576_721647, ⟨CollatzM20Shard093.descent_mod1048576_722687, ⟨CollatzM20Shard093.descent_mod1048576_723355, ⟨CollatzM20Shard093.descent_mod1048576_724251, ⟨CollatzM20Shard093.descent_mod1048576_724647, ⟨CollatzM20Shard093.descent_mod1048576_724719, ⟨CollatzM20Shard093.descent_mod1048576_725439, ⟨CollatzM20Shard093.descent_mod1048576_725535, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
