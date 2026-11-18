import M20Shard069

namespace CollatzM20CompositionV1

theorem chunk069 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 532975) 32 = 531441 * k + 270124 ∧ 531441 * k + 270124 < 1048576 * k + 532975) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 533439) 32 = 531441 * k + 270359 ∧ 531441 * k + 270359 < 1048576 * k + 533439) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 533823) 32 = 531441 * k + 270554 ∧ 531441 * k + 270554 < 1048576 * k + 533823) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 533983) 32 = 531441 * k + 270635 ∧ 531441 * k + 270635 < 1048576 * k + 533983) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 534119) 32 = 531441 * k + 270704 ∧ 531441 * k + 270704 < 1048576 * k + 534119) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 536047) 32 = 531441 * k + 271681 ∧ 531441 * k + 271681 < 1048576 * k + 536047) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 536479) 32 = 531441 * k + 271900 ∧ 531441 * k + 271900 < 1048576 * k + 536479) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 536603) 32 = 531441 * k + 271963 ∧ 531441 * k + 271963 < 1048576 * k + 536603) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 537055) 32 = 531441 * k + 272192 ∧ 531441 * k + 272192 < 1048576 * k + 537055) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 537179) 32 = 531441 * k + 272255 ∧ 531441 * k + 272255 < 1048576 * k + 537179) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 537535) 32 = 531441 * k + 272435 ∧ 531441 * k + 272435 < 1048576 * k + 537535) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 538079) 32 = 531441 * k + 272711 ∧ 531441 * k + 272711 < 1048576 * k + 538079) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 539239) 32 = 531441 * k + 273299 ∧ 531441 * k + 273299 < 1048576 * k + 539239) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 539675) 32 = 531441 * k + 273520 ∧ 531441 * k + 273520 < 1048576 * k + 539675) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 540007) 32 = 531441 * k + 273688 ∧ 531441 * k + 273688 < 1048576 * k + 540007) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 540263) 32 = 531441 * k + 273818 ∧ 531441 * k + 273818 < 1048576 * k + 540263) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 540607) 32 = 531441 * k + 273992 ∧ 531441 * k + 273992 < 1048576 * k + 540607) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 541275) 32 = 531441 * k + 274331 ∧ 531441 * k + 274331 < 1048576 * k + 541275) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 541631) 32 = 531441 * k + 274511 ∧ 531441 * k + 274511 < 1048576 * k + 541631) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 542191) 32 = 531441 * k + 274795 ∧ 531441 * k + 274795 < 1048576 * k + 542191) ∧
  R := by
  exact ⟨CollatzM20Shard069.descent_mod1048576_532975, ⟨CollatzM20Shard069.descent_mod1048576_533439, ⟨CollatzM20Shard069.descent_mod1048576_533823, ⟨CollatzM20Shard069.descent_mod1048576_533983, ⟨CollatzM20Shard069.descent_mod1048576_534119, ⟨CollatzM20Shard069.descent_mod1048576_536047, ⟨CollatzM20Shard069.descent_mod1048576_536479, ⟨CollatzM20Shard069.descent_mod1048576_536603, ⟨CollatzM20Shard069.descent_mod1048576_537055, ⟨CollatzM20Shard069.descent_mod1048576_537179, ⟨CollatzM20Shard069.descent_mod1048576_537535, ⟨CollatzM20Shard069.descent_mod1048576_538079, ⟨CollatzM20Shard069.descent_mod1048576_539239, ⟨CollatzM20Shard069.descent_mod1048576_539675, ⟨CollatzM20Shard069.descent_mod1048576_540007, ⟨CollatzM20Shard069.descent_mod1048576_540263, ⟨CollatzM20Shard069.descent_mod1048576_540607, ⟨CollatzM20Shard069.descent_mod1048576_541275, ⟨CollatzM20Shard069.descent_mod1048576_541631, ⟨CollatzM20Shard069.descent_mod1048576_542191, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
