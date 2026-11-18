import M20Shard102

namespace CollatzM20CompositionV1

theorem chunk102 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 794943) 32 = 531441 * k + 402895 ∧ 531441 * k + 402895 < 1048576 * k + 794943) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 795679) 32 = 531441 * k + 403268 ∧ 531441 * k + 403268 < 1048576 * k + 795679) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 796543) 32 = 531441 * k + 403706 ∧ 531441 * k + 403706 < 1048576 * k + 796543) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 797423) 32 = 531441 * k + 404152 ∧ 531441 * k + 404152 < 1048576 * k + 797423) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 797727) 32 = 531441 * k + 404306 ∧ 531441 * k + 404306 < 1048576 * k + 797727) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 798015) 32 = 531441 * k + 404452 ∧ 531441 * k + 404452 < 1048576 * k + 798015) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 798555) 32 = 531441 * k + 404726 ∧ 531441 * k + 404726 < 1048576 * k + 798555) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 799359) 32 = 531441 * k + 405133 ∧ 531441 * k + 405133 < 1048576 * k + 799359) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 801051) 32 = 531441 * k + 405991 ∧ 531441 * k + 405991 < 1048576 * k + 801051) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 801087) 32 = 531441 * k + 406009 ∧ 531441 * k + 406009 < 1048576 * k + 801087) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 801823) 32 = 531441 * k + 406382 ∧ 531441 * k + 406382 < 1048576 * k + 801823) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 802095) 32 = 531441 * k + 406520 ∧ 531441 * k + 406520 < 1048576 * k + 802095) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 802111) 32 = 531441 * k + 406528 ∧ 531441 * k + 406528 < 1048576 * k + 802111) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 802543) 32 = 531441 * k + 406747 ∧ 531441 * k + 406747 < 1048576 * k + 802543) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 802687) 32 = 531441 * k + 406820 ∧ 531441 * k + 406820 < 1048576 * k + 802687) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 802799) 32 = 531441 * k + 406877 ∧ 531441 * k + 406877 < 1048576 * k + 802799) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 804455) 32 = 531441 * k + 407716 ∧ 531441 * k + 407716 < 1048576 * k + 804455) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 804699) 32 = 531441 * k + 407840 ∧ 531441 * k + 407840 < 1048576 * k + 804699) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 805343) 32 = 531441 * k + 408166 ∧ 531441 * k + 408166 < 1048576 * k + 805343) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 805503) 32 = 531441 * k + 408247 ∧ 531441 * k + 408247 < 1048576 * k + 805503) ∧
  R := by
  exact ⟨CollatzM20Shard102.descent_mod1048576_794943, ⟨CollatzM20Shard102.descent_mod1048576_795679, ⟨CollatzM20Shard102.descent_mod1048576_796543, ⟨CollatzM20Shard102.descent_mod1048576_797423, ⟨CollatzM20Shard102.descent_mod1048576_797727, ⟨CollatzM20Shard102.descent_mod1048576_798015, ⟨CollatzM20Shard102.descent_mod1048576_798555, ⟨CollatzM20Shard102.descent_mod1048576_799359, ⟨CollatzM20Shard102.descent_mod1048576_801051, ⟨CollatzM20Shard102.descent_mod1048576_801087, ⟨CollatzM20Shard102.descent_mod1048576_801823, ⟨CollatzM20Shard102.descent_mod1048576_802095, ⟨CollatzM20Shard102.descent_mod1048576_802111, ⟨CollatzM20Shard102.descent_mod1048576_802543, ⟨CollatzM20Shard102.descent_mod1048576_802687, ⟨CollatzM20Shard102.descent_mod1048576_802799, ⟨CollatzM20Shard102.descent_mod1048576_804455, ⟨CollatzM20Shard102.descent_mod1048576_804699, ⟨CollatzM20Shard102.descent_mod1048576_805343, ⟨CollatzM20Shard102.descent_mod1048576_805503, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
