import M20Shard088

namespace CollatzM20CompositionV1

theorem chunk088 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 679839) 32 = 531441 * k + 344558 ∧ 531441 * k + 344558 < 1048576 * k + 679839) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 680263) 32 = 531441 * k + 344773 ∧ 531441 * k + 344773 < 1048576 * k + 680263) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 680431) 32 = 531441 * k + 344858 ∧ 531441 * k + 344858 < 1048576 * k + 680431) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 680795) 32 = 531441 * k + 345043 ∧ 531441 * k + 345043 < 1048576 * k + 680795) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 681115) 32 = 531441 * k + 345205 ∧ 531441 * k + 345205 < 1048576 * k + 681115) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 681199) 32 = 531441 * k + 345247 ∧ 531441 * k + 345247 < 1048576 * k + 681199) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 681287) 32 = 531441 * k + 345292 ∧ 531441 * k + 345292 < 1048576 * k + 681287) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 681319) 32 = 531441 * k + 345308 ∧ 531441 * k + 345308 < 1048576 * k + 681319) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 681631) 32 = 531441 * k + 345466 ∧ 531441 * k + 345466 < 1048576 * k + 681631) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 682047) 32 = 531441 * k + 345677 ∧ 531441 * k + 345677 < 1048576 * k + 682047) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 682223) 32 = 531441 * k + 345766 ∧ 531441 * k + 345766 < 1048576 * k + 682223) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 682607) 32 = 531441 * k + 345961 ∧ 531441 * k + 345961 < 1048576 * k + 682607) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 682779) 32 = 531441 * k + 346048 ∧ 531441 * k + 346048 < 1048576 * k + 682779) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 682863) 32 = 531441 * k + 346091 ∧ 531441 * k + 346091 < 1048576 * k + 682863) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 683471) 32 = 531441 * k + 346399 ∧ 531441 * k + 346399 < 1048576 * k + 683471) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 683503) 32 = 531441 * k + 346415 ∧ 531441 * k + 346415 < 1048576 * k + 683503) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 683631) 32 = 531441 * k + 346480 ∧ 531441 * k + 346480 < 1048576 * k + 683631) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 684223) 32 = 531441 * k + 346780 ∧ 531441 * k + 346780 < 1048576 * k + 684223) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 684271) 32 = 531441 * k + 346804 ∧ 531441 * k + 346804 < 1048576 * k + 684271) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 684519) 32 = 531441 * k + 346930 ∧ 531441 * k + 346930 < 1048576 * k + 684519) ∧
  R := by
  exact ⟨CollatzM20Shard088.descent_mod1048576_679839, ⟨CollatzM20Shard088.descent_mod1048576_680263, ⟨CollatzM20Shard088.descent_mod1048576_680431, ⟨CollatzM20Shard088.descent_mod1048576_680795, ⟨CollatzM20Shard088.descent_mod1048576_681115, ⟨CollatzM20Shard088.descent_mod1048576_681199, ⟨CollatzM20Shard088.descent_mod1048576_681287, ⟨CollatzM20Shard088.descent_mod1048576_681319, ⟨CollatzM20Shard088.descent_mod1048576_681631, ⟨CollatzM20Shard088.descent_mod1048576_682047, ⟨CollatzM20Shard088.descent_mod1048576_682223, ⟨CollatzM20Shard088.descent_mod1048576_682607, ⟨CollatzM20Shard088.descent_mod1048576_682779, ⟨CollatzM20Shard088.descent_mod1048576_682863, ⟨CollatzM20Shard088.descent_mod1048576_683471, ⟨CollatzM20Shard088.descent_mod1048576_683503, ⟨CollatzM20Shard088.descent_mod1048576_683631, ⟨CollatzM20Shard088.descent_mod1048576_684223, ⟨CollatzM20Shard088.descent_mod1048576_684271, ⟨CollatzM20Shard088.descent_mod1048576_684519, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
