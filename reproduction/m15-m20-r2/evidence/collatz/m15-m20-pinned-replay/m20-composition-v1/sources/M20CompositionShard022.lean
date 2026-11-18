import M20Shard022

namespace CollatzM20CompositionV1

theorem chunk022 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 157927) 32 = 531441 * k + 80042 ∧ 531441 * k + 80042 < 1048576 * k + 157927) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 158567) 32 = 531441 * k + 80366 ∧ 531441 * k + 80366 < 1048576 * k + 158567) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 158703) 32 = 531441 * k + 80435 ∧ 531441 * k + 80435 < 1048576 * k + 158703) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 159003) 32 = 531441 * k + 80587 ∧ 531441 * k + 80587 < 1048576 * k + 159003) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 159135) 32 = 531441 * k + 80654 ∧ 531441 * k + 80654 < 1048576 * k + 159135) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 159259) 32 = 531441 * k + 80717 ∧ 531441 * k + 80717 < 1048576 * k + 159259) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 160423) 32 = 531441 * k + 81307 ∧ 531441 * k + 81307 < 1048576 * k + 160423) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 160583) 32 = 531441 * k + 81388 ∧ 531441 * k + 81388 < 1048576 * k + 160583) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 161639) 32 = 531441 * k + 81923 ∧ 531441 * k + 81923 < 1048576 * k + 161639) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 162663) 32 = 531441 * k + 82442 ∧ 531441 * k + 82442 < 1048576 * k + 162663) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 162687) 32 = 531441 * k + 82454 ∧ 531441 * k + 82454 < 1048576 * k + 162687) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 163099) 32 = 531441 * k + 82663 ∧ 531441 * k + 82663 < 1048576 * k + 163099) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 163823) 32 = 531441 * k + 83030 ∧ 531441 * k + 83030 < 1048576 * k + 163823) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 164591) 32 = 531441 * k + 83419 ∧ 531441 * k + 83419 < 1048576 * k + 164591) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 164847) 32 = 531441 * k + 83549 ∧ 531441 * k + 83549 < 1048576 * k + 164847) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 164895) 32 = 531441 * k + 83573 ∧ 531441 * k + 83573 < 1048576 * k + 164895) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 165023) 32 = 531441 * k + 83638 ∧ 531441 * k + 83638 < 1048576 * k + 165023) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 165759) 32 = 531441 * k + 84011 ∧ 531441 * k + 84011 < 1048576 * k + 165759) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 166727) 32 = 531441 * k + 84502 ∧ 531441 * k + 84502 < 1048576 * k + 166727) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 167551) 32 = 531441 * k + 84919 ∧ 531441 * k + 84919 < 1048576 * k + 167551) ∧
  R := by
  exact ⟨CollatzM20Shard022.descent_mod1048576_157927, ⟨CollatzM20Shard022.descent_mod1048576_158567, ⟨CollatzM20Shard022.descent_mod1048576_158703, ⟨CollatzM20Shard022.descent_mod1048576_159003, ⟨CollatzM20Shard022.descent_mod1048576_159135, ⟨CollatzM20Shard022.descent_mod1048576_159259, ⟨CollatzM20Shard022.descent_mod1048576_160423, ⟨CollatzM20Shard022.descent_mod1048576_160583, ⟨CollatzM20Shard022.descent_mod1048576_161639, ⟨CollatzM20Shard022.descent_mod1048576_162663, ⟨CollatzM20Shard022.descent_mod1048576_162687, ⟨CollatzM20Shard022.descent_mod1048576_163099, ⟨CollatzM20Shard022.descent_mod1048576_163823, ⟨CollatzM20Shard022.descent_mod1048576_164591, ⟨CollatzM20Shard022.descent_mod1048576_164847, ⟨CollatzM20Shard022.descent_mod1048576_164895, ⟨CollatzM20Shard022.descent_mod1048576_165023, ⟨CollatzM20Shard022.descent_mod1048576_165759, ⟨CollatzM20Shard022.descent_mod1048576_166727, ⟨CollatzM20Shard022.descent_mod1048576_167551, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
