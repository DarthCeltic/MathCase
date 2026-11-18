import M20Shard133

namespace CollatzM20CompositionV1

theorem chunk133  :
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1043583) 32 = 531441 * k + 528911 ∧ 531441 * k + 528911 < 1048576 * k + 1043583) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1043711) 32 = 531441 * k + 528976 ∧ 531441 * k + 528976 < 1048576 * k + 1043711) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1044127) 32 = 531441 * k + 529187 ∧ 531441 * k + 529187 < 1048576 * k + 1044127) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1045607) 32 = 531441 * k + 529937 ∧ 531441 * k + 529937 < 1048576 * k + 1045607) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1045735) 32 = 531441 * k + 530002 ∧ 531441 * k + 530002 < 1048576 * k + 1045735) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1045919) 32 = 531441 * k + 530095 ∧ 531441 * k + 530095 < 1048576 * k + 1045919) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1046463) 32 = 531441 * k + 530371 ∧ 531441 * k + 530371 < 1048576 * k + 1046463) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1046619) 32 = 531441 * k + 530450 ∧ 531441 * k + 530450 < 1048576 * k + 1046619) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1046783) 32 = 531441 * k + 530533 ∧ 531441 * k + 530533 < 1048576 * k + 1046783) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1047359) 32 = 531441 * k + 530825 ∧ 531441 * k + 530825 < 1048576 * k + 1047359) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1047679) 32 = 531441 * k + 530987 ∧ 531441 * k + 530987 < 1048576 * k + 1047679) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1047967) 32 = 531441 * k + 531133 ∧ 531441 * k + 531133 < 1048576 * k + 1047967) := by
  exact ⟨CollatzM20Shard133.descent_mod1048576_1043583, ⟨CollatzM20Shard133.descent_mod1048576_1043711, ⟨CollatzM20Shard133.descent_mod1048576_1044127, ⟨CollatzM20Shard133.descent_mod1048576_1045607, ⟨CollatzM20Shard133.descent_mod1048576_1045735, ⟨CollatzM20Shard133.descent_mod1048576_1045919, ⟨CollatzM20Shard133.descent_mod1048576_1046463, ⟨CollatzM20Shard133.descent_mod1048576_1046619, ⟨CollatzM20Shard133.descent_mod1048576_1046783, ⟨CollatzM20Shard133.descent_mod1048576_1047359, ⟨CollatzM20Shard133.descent_mod1048576_1047679, CollatzM20Shard133.descent_mod1048576_1047967⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
