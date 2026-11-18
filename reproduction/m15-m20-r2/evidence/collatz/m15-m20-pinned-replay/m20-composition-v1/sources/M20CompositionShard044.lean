import M20Shard044

namespace CollatzM20CompositionV1

theorem chunk044 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 335103) 32 = 531441 * k + 169838 ∧ 531441 * k + 169838 < 1048576 * k + 335103) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 335327) 32 = 531441 * k + 169952 ∧ 531441 * k + 169952 < 1048576 * k + 335327) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 335807) 32 = 531441 * k + 170195 ∧ 531441 * k + 170195 < 1048576 * k + 335807) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 337255) 32 = 531441 * k + 170929 ∧ 531441 * k + 170929 < 1048576 * k + 337255) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 337823) 32 = 531441 * k + 171217 ∧ 531441 * k + 171217 < 1048576 * k + 337823) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 337983) 32 = 531441 * k + 171298 ∧ 531441 * k + 171298 < 1048576 * k + 337983) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 338523) 32 = 531441 * k + 171572 ∧ 531441 * k + 171572 < 1048576 * k + 338523) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 338683) 32 = 531441 * k + 171653 ∧ 531441 * k + 171653 < 1048576 * k + 338683) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 338719) 32 = 531441 * k + 171671 ∧ 531441 * k + 171671 < 1048576 * k + 338719) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 338879) 32 = 531441 * k + 171752 ∧ 531441 * k + 171752 < 1048576 * k + 338879) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 339199) 32 = 531441 * k + 171914 ∧ 531441 * k + 171914 < 1048576 * k + 339199) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 339903) 32 = 531441 * k + 172271 ∧ 531441 * k + 172271 < 1048576 * k + 339903) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 340015) 32 = 531441 * k + 172328 ∧ 531441 * k + 172328 < 1048576 * k + 340015) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 340635) 32 = 531441 * k + 172642 ∧ 531441 * k + 172642 < 1048576 * k + 340635) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 342271) 32 = 531441 * k + 173471 ∧ 531441 * k + 173471 < 1048576 * k + 342271) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 342683) 32 = 531441 * k + 173680 ∧ 531441 * k + 173680 < 1048576 * k + 342683) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 342779) 32 = 531441 * k + 173729 ∧ 531441 * k + 173729 < 1048576 * k + 342779) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 342815) 32 = 531441 * k + 173747 ∧ 531441 * k + 173747 < 1048576 * k + 342815) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 343295) 32 = 531441 * k + 173990 ∧ 531441 * k + 173990 < 1048576 * k + 343295) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 344127) 32 = 531441 * k + 174412 ∧ 531441 * k + 174412 < 1048576 * k + 344127) ∧
  R := by
  exact ⟨CollatzM20Shard044.descent_mod1048576_335103, ⟨CollatzM20Shard044.descent_mod1048576_335327, ⟨CollatzM20Shard044.descent_mod1048576_335807, ⟨CollatzM20Shard044.descent_mod1048576_337255, ⟨CollatzM20Shard044.descent_mod1048576_337823, ⟨CollatzM20Shard044.descent_mod1048576_337983, ⟨CollatzM20Shard044.descent_mod1048576_338523, ⟨CollatzM20Shard044.descent_mod1048576_338683, ⟨CollatzM20Shard044.descent_mod1048576_338719, ⟨CollatzM20Shard044.descent_mod1048576_338879, ⟨CollatzM20Shard044.descent_mod1048576_339199, ⟨CollatzM20Shard044.descent_mod1048576_339903, ⟨CollatzM20Shard044.descent_mod1048576_340015, ⟨CollatzM20Shard044.descent_mod1048576_340635, ⟨CollatzM20Shard044.descent_mod1048576_342271, ⟨CollatzM20Shard044.descent_mod1048576_342683, ⟨CollatzM20Shard044.descent_mod1048576_342779, ⟨CollatzM20Shard044.descent_mod1048576_342815, ⟨CollatzM20Shard044.descent_mod1048576_343295, ⟨CollatzM20Shard044.descent_mod1048576_344127, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
