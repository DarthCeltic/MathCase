import M20Shard077

namespace CollatzM20CompositionV1

theorem chunk077 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 597147) 32 = 531441 * k + 302648 ∧ 531441 * k + 302648 < 1048576 * k + 597147) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 597183) 32 = 531441 * k + 302666 ∧ 531441 * k + 302666 < 1048576 * k + 597183) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 597503) 32 = 531441 * k + 302828 ∧ 531441 * k + 302828 < 1048576 * k + 597503) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 597743) 32 = 531441 * k + 302950 ∧ 531441 * k + 302950 < 1048576 * k + 597743) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 597851) 32 = 531441 * k + 303005 ∧ 531441 * k + 303005 < 1048576 * k + 597851) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 597999) 32 = 531441 * k + 303080 ∧ 531441 * k + 303080 < 1048576 * k + 597999) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 598047) 32 = 531441 * k + 303104 ∧ 531441 * k + 303104 < 1048576 * k + 598047) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 599359) 32 = 531441 * k + 303769 ∧ 531441 * k + 303769 < 1048576 * k + 599359) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 599519) 32 = 531441 * k + 303850 ∧ 531441 * k + 303850 < 1048576 * k + 599519) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 599551) 32 = 531441 * k + 303866 ∧ 531441 * k + 303866 < 1048576 * k + 599551) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 599655) 32 = 531441 * k + 303919 ∧ 531441 * k + 303919 < 1048576 * k + 599655) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 600059) 32 = 531441 * k + 304124 ∧ 531441 * k + 304124 < 1048576 * k + 600059) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 600231) 32 = 531441 * k + 304211 ∧ 531441 * k + 304211 < 1048576 * k + 600231) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 601243) 32 = 531441 * k + 304724 ∧ 531441 * k + 304724 < 1048576 * k + 601243) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 602279) 32 = 531441 * k + 305249 ∧ 531441 * k + 305249 < 1048576 * k + 602279) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 602591) 32 = 531441 * k + 305407 ∧ 531441 * k + 305407 < 1048576 * k + 602591) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 602715) 32 = 531441 * k + 305470 ∧ 531441 * k + 305470 < 1048576 * k + 602715) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 603327) 32 = 531441 * k + 305780 ∧ 531441 * k + 305780 < 1048576 * k + 603327) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 603599) 32 = 531441 * k + 305918 ∧ 531441 * k + 305918 < 1048576 * k + 603599) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 603615) 32 = 531441 * k + 305926 ∧ 531441 * k + 305926 < 1048576 * k + 603615) ∧
  R := by
  exact ⟨CollatzM20Shard077.descent_mod1048576_597147, ⟨CollatzM20Shard077.descent_mod1048576_597183, ⟨CollatzM20Shard077.descent_mod1048576_597503, ⟨CollatzM20Shard077.descent_mod1048576_597743, ⟨CollatzM20Shard077.descent_mod1048576_597851, ⟨CollatzM20Shard077.descent_mod1048576_597999, ⟨CollatzM20Shard077.descent_mod1048576_598047, ⟨CollatzM20Shard077.descent_mod1048576_599359, ⟨CollatzM20Shard077.descent_mod1048576_599519, ⟨CollatzM20Shard077.descent_mod1048576_599551, ⟨CollatzM20Shard077.descent_mod1048576_599655, ⟨CollatzM20Shard077.descent_mod1048576_600059, ⟨CollatzM20Shard077.descent_mod1048576_600231, ⟨CollatzM20Shard077.descent_mod1048576_601243, ⟨CollatzM20Shard077.descent_mod1048576_602279, ⟨CollatzM20Shard077.descent_mod1048576_602591, ⟨CollatzM20Shard077.descent_mod1048576_602715, ⟨CollatzM20Shard077.descent_mod1048576_603327, ⟨CollatzM20Shard077.descent_mod1048576_603599, ⟨CollatzM20Shard077.descent_mod1048576_603615, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
