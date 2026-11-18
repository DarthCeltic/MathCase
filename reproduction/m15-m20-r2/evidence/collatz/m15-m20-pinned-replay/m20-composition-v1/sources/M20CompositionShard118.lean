import M20Shard118

namespace CollatzM20CompositionV1

theorem chunk118 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 920687) 32 = 531441 * k + 466625 ∧ 531441 * k + 466625 < 1048576 * k + 920687) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 920735) 32 = 531441 * k + 466649 ∧ 531441 * k + 466649 < 1048576 * k + 920735) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 921023) 32 = 531441 * k + 466795 ∧ 531441 * k + 466795 < 1048576 * k + 921023) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 921119) 32 = 531441 * k + 466844 ∧ 531441 * k + 466844 < 1048576 * k + 921119) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 921279) 32 = 531441 * k + 466925 ∧ 531441 * k + 466925 < 1048576 * k + 921279) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 921759) 32 = 531441 * k + 467168 ∧ 531441 * k + 467168 < 1048576 * k + 921759) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 921851) 32 = 531441 * k + 467215 ∧ 531441 * k + 467215 < 1048576 * k + 921851) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 922439) 32 = 531441 * k + 467513 ∧ 531441 * k + 467513 < 1048576 * k + 922439) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 923775) 32 = 531441 * k + 468190 ∧ 531441 * k + 468190 < 1048576 * k + 923775) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 923871) 32 = 531441 * k + 468239 ∧ 531441 * k + 468239 < 1048576 * k + 923871) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 923899) 32 = 531441 * k + 468253 ∧ 531441 * k + 468253 < 1048576 * k + 923899) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 924031) 32 = 531441 * k + 468320 ∧ 531441 * k + 468320 < 1048576 * k + 924031) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 924351) 32 = 531441 * k + 468482 ∧ 531441 * k + 468482 < 1048576 * k + 924351) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 924639) 32 = 531441 * k + 468628 ∧ 531441 * k + 468628 < 1048576 * k + 924639) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 924831) 32 = 531441 * k + 468725 ∧ 531441 * k + 468725 < 1048576 * k + 924831) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 925231) 32 = 531441 * k + 468928 ∧ 531441 * k + 468928 < 1048576 * k + 925231) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 925799) 32 = 531441 * k + 469216 ∧ 531441 * k + 469216 < 1048576 * k + 925799) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 926535) 32 = 531441 * k + 469589 ∧ 531441 * k + 469589 < 1048576 * k + 926535) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 926811) 32 = 531441 * k + 469729 ∧ 531441 * k + 469729 < 1048576 * k + 926811) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 927387) 32 = 531441 * k + 470021 ∧ 531441 * k + 470021 < 1048576 * k + 927387) ∧
  R := by
  exact ⟨CollatzM20Shard118.descent_mod1048576_920687, ⟨CollatzM20Shard118.descent_mod1048576_920735, ⟨CollatzM20Shard118.descent_mod1048576_921023, ⟨CollatzM20Shard118.descent_mod1048576_921119, ⟨CollatzM20Shard118.descent_mod1048576_921279, ⟨CollatzM20Shard118.descent_mod1048576_921759, ⟨CollatzM20Shard118.descent_mod1048576_921851, ⟨CollatzM20Shard118.descent_mod1048576_922439, ⟨CollatzM20Shard118.descent_mod1048576_923775, ⟨CollatzM20Shard118.descent_mod1048576_923871, ⟨CollatzM20Shard118.descent_mod1048576_923899, ⟨CollatzM20Shard118.descent_mod1048576_924031, ⟨CollatzM20Shard118.descent_mod1048576_924351, ⟨CollatzM20Shard118.descent_mod1048576_924639, ⟨CollatzM20Shard118.descent_mod1048576_924831, ⟨CollatzM20Shard118.descent_mod1048576_925231, ⟨CollatzM20Shard118.descent_mod1048576_925799, ⟨CollatzM20Shard118.descent_mod1048576_926535, ⟨CollatzM20Shard118.descent_mod1048576_926811, ⟨CollatzM20Shard118.descent_mod1048576_927387, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
