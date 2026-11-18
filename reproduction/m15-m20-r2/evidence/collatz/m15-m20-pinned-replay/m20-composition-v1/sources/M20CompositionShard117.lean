import M20Shard117

namespace CollatzM20CompositionV1

theorem chunk117 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 914523) 32 = 531441 * k + 463501 ∧ 531441 * k + 463501 < 1048576 * k + 914523) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 914559) 32 = 531441 * k + 463519 ∧ 531441 * k + 463519 < 1048576 * k + 914559) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 914655) 32 = 531441 * k + 463568 ∧ 531441 * k + 463568 < 1048576 * k + 914655) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 914815) 32 = 531441 * k + 463649 ∧ 531441 * k + 463649 < 1048576 * k + 914815) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 914975) 32 = 531441 * k + 463730 ∧ 531441 * k + 463730 < 1048576 * k + 914975) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 915135) 32 = 531441 * k + 463811 ∧ 531441 * k + 463811 < 1048576 * k + 915135) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 915583) 32 = 531441 * k + 464038 ∧ 531441 * k + 464038 < 1048576 * k + 915583) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 915679) 32 = 531441 * k + 464087 ∧ 531441 * k + 464087 < 1048576 * k + 915679) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 915839) 32 = 531441 * k + 464168 ∧ 531441 * k + 464168 < 1048576 * k + 915839) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 916159) 32 = 531441 * k + 464330 ∧ 531441 * k + 464330 < 1048576 * k + 916159) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 916591) 32 = 531441 * k + 464549 ∧ 531441 * k + 464549 < 1048576 * k + 916591) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 916927) 32 = 531441 * k + 464719 ∧ 531441 * k + 464719 < 1048576 * k + 916927) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 917595) 32 = 531441 * k + 465058 ∧ 531441 * k + 465058 < 1048576 * k + 917595) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 917607) 32 = 531441 * k + 465064 ∧ 531441 * k + 465064 < 1048576 * k + 917607) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 918495) 32 = 531441 * k + 465514 ∧ 531441 * k + 465514 < 1048576 * k + 918495) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 918527) 32 = 531441 * k + 465530 ∧ 531441 * k + 465530 < 1048576 * k + 918527) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 918619) 32 = 531441 * k + 465577 ∧ 531441 * k + 465577 < 1048576 * k + 918619) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 919195) 32 = 531441 * k + 465869 ∧ 531441 * k + 465869 < 1048576 * k + 919195) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 919663) 32 = 531441 * k + 466106 ∧ 531441 * k + 466106 < 1048576 * k + 919663) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 919711) 32 = 531441 * k + 466130 ∧ 531441 * k + 466130 < 1048576 * k + 919711) ∧
  R := by
  exact ⟨CollatzM20Shard117.descent_mod1048576_914523, ⟨CollatzM20Shard117.descent_mod1048576_914559, ⟨CollatzM20Shard117.descent_mod1048576_914655, ⟨CollatzM20Shard117.descent_mod1048576_914815, ⟨CollatzM20Shard117.descent_mod1048576_914975, ⟨CollatzM20Shard117.descent_mod1048576_915135, ⟨CollatzM20Shard117.descent_mod1048576_915583, ⟨CollatzM20Shard117.descent_mod1048576_915679, ⟨CollatzM20Shard117.descent_mod1048576_915839, ⟨CollatzM20Shard117.descent_mod1048576_916159, ⟨CollatzM20Shard117.descent_mod1048576_916591, ⟨CollatzM20Shard117.descent_mod1048576_916927, ⟨CollatzM20Shard117.descent_mod1048576_917595, ⟨CollatzM20Shard117.descent_mod1048576_917607, ⟨CollatzM20Shard117.descent_mod1048576_918495, ⟨CollatzM20Shard117.descent_mod1048576_918527, ⟨CollatzM20Shard117.descent_mod1048576_918619, ⟨CollatzM20Shard117.descent_mod1048576_919195, ⟨CollatzM20Shard117.descent_mod1048576_919663, ⟨CollatzM20Shard117.descent_mod1048576_919711, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
