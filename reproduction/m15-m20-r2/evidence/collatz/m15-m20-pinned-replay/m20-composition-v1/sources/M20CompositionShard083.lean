import M20Shard083

namespace CollatzM20CompositionV1

theorem chunk083 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 639047) 32 = 531441 * k + 323884 ∧ 531441 * k + 323884 < 1048576 * k + 639047) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 639067) 32 = 531441 * k + 323894 ∧ 531441 * k + 323894 < 1048576 * k + 639067) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 639535) 32 = 531441 * k + 324131 ∧ 531441 * k + 324131 < 1048576 * k + 639535) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 640103) 32 = 531441 * k + 324419 ∧ 531441 * k + 324419 < 1048576 * k + 640103) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 640559) 32 = 531441 * k + 324650 ∧ 531441 * k + 324650 < 1048576 * k + 640559) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 640871) 32 = 531441 * k + 324808 ∧ 531441 * k + 324808 < 1048576 * k + 640871) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 641115) 32 = 531441 * k + 324932 ∧ 531441 * k + 324932 < 1048576 * k + 641115) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 641151) 32 = 531441 * k + 324950 ∧ 531441 * k + 324950 < 1048576 * k + 641151) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 641439) 32 = 531441 * k + 325096 ∧ 531441 * k + 325096 < 1048576 * k + 641439) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 641471) 32 = 531441 * k + 325112 ∧ 531441 * k + 325112 < 1048576 * k + 641471) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 641959) 32 = 531441 * k + 325360 ∧ 531441 * k + 325360 < 1048576 * k + 641959) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 642031) 32 = 531441 * k + 325396 ∧ 531441 * k + 325396 < 1048576 * k + 642031) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 642279) 32 = 531441 * k + 325522 ∧ 531441 * k + 325522 < 1048576 * k + 642279) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 642607) 32 = 531441 * k + 325688 ∧ 531441 * k + 325688 < 1048576 * k + 642607) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 643943) 32 = 531441 * k + 326365 ∧ 531441 * k + 326365 < 1048576 * k + 643943) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 644187) 32 = 531441 * k + 326489 ∧ 531441 * k + 326489 < 1048576 * k + 644187) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 644543) 32 = 531441 * k + 326669 ∧ 531441 * k + 326669 < 1048576 * k + 644543) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 644635) 32 = 531441 * k + 326716 ∧ 531441 * k + 326716 < 1048576 * k + 644635) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 645567) 32 = 531441 * k + 327188 ∧ 531441 * k + 327188 < 1048576 * k + 645567) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 645679) 32 = 531441 * k + 327245 ∧ 531441 * k + 327245 < 1048576 * k + 645679) ∧
  R := by
  exact ⟨CollatzM20Shard083.descent_mod1048576_639047, ⟨CollatzM20Shard083.descent_mod1048576_639067, ⟨CollatzM20Shard083.descent_mod1048576_639535, ⟨CollatzM20Shard083.descent_mod1048576_640103, ⟨CollatzM20Shard083.descent_mod1048576_640559, ⟨CollatzM20Shard083.descent_mod1048576_640871, ⟨CollatzM20Shard083.descent_mod1048576_641115, ⟨CollatzM20Shard083.descent_mod1048576_641151, ⟨CollatzM20Shard083.descent_mod1048576_641439, ⟨CollatzM20Shard083.descent_mod1048576_641471, ⟨CollatzM20Shard083.descent_mod1048576_641959, ⟨CollatzM20Shard083.descent_mod1048576_642031, ⟨CollatzM20Shard083.descent_mod1048576_642279, ⟨CollatzM20Shard083.descent_mod1048576_642607, ⟨CollatzM20Shard083.descent_mod1048576_643943, ⟨CollatzM20Shard083.descent_mod1048576_644187, ⟨CollatzM20Shard083.descent_mod1048576_644543, ⟨CollatzM20Shard083.descent_mod1048576_644635, ⟨CollatzM20Shard083.descent_mod1048576_645567, ⟨CollatzM20Shard083.descent_mod1048576_645679, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
