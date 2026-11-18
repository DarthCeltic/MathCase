import M20Shard106

namespace CollatzM20CompositionV1

theorem chunk106 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 826303) 32 = 531441 * k + 418789 ∧ 531441 * k + 418789 < 1048576 * k + 826303) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 827039) 32 = 531441 * k + 419162 ∧ 531441 * k + 419162 < 1048576 * k + 827039) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 828187) 32 = 531441 * k + 419744 ∧ 531441 * k + 419744 < 1048576 * k + 828187) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 828655) 32 = 531441 * k + 419981 ∧ 531441 * k + 419981 < 1048576 * k + 828655) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 828743) 32 = 531441 * k + 420026 ∧ 531441 * k + 420026 < 1048576 * k + 828743) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 829019) 32 = 531441 * k + 420166 ∧ 531441 * k + 420166 < 1048576 * k + 829019) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 829679) 32 = 531441 * k + 420500 ∧ 531441 * k + 420500 < 1048576 * k + 829679) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 830111) 32 = 531441 * k + 420719 ∧ 531441 * k + 420719 < 1048576 * k + 830111) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 830235) 32 = 531441 * k + 420782 ∧ 531441 * k + 420782 < 1048576 * k + 830235) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 830239) 32 = 531441 * k + 420784 ∧ 531441 * k + 420784 < 1048576 * k + 830239) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 830719) 32 = 531441 * k + 421027 ∧ 531441 * k + 421027 < 1048576 * k + 830719) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 830927) 32 = 531441 * k + 421133 ∧ 531441 * k + 421133 < 1048576 * k + 830927) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 831087) 32 = 531441 * k + 421214 ∧ 531441 * k + 421214 < 1048576 * k + 831087) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 831135) 32 = 531441 * k + 421238 ∧ 531441 * k + 421238 < 1048576 * k + 831135) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 831727) 32 = 531441 * k + 421538 ∧ 531441 * k + 421538 < 1048576 * k + 831727) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 831815) 32 = 531441 * k + 421583 ∧ 531441 * k + 421583 < 1048576 * k + 831815) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 831975) 32 = 531441 * k + 421664 ∧ 531441 * k + 421664 < 1048576 * k + 831975) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 832743) 32 = 531441 * k + 422053 ∧ 531441 * k + 422053 < 1048576 * k + 832743) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 833583) 32 = 531441 * k + 422479 ∧ 531441 * k + 422479 < 1048576 * k + 833583) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 833743) 32 = 531441 * k + 422560 ∧ 531441 * k + 422560 < 1048576 * k + 833743) ∧
  R := by
  exact ⟨CollatzM20Shard106.descent_mod1048576_826303, ⟨CollatzM20Shard106.descent_mod1048576_827039, ⟨CollatzM20Shard106.descent_mod1048576_828187, ⟨CollatzM20Shard106.descent_mod1048576_828655, ⟨CollatzM20Shard106.descent_mod1048576_828743, ⟨CollatzM20Shard106.descent_mod1048576_829019, ⟨CollatzM20Shard106.descent_mod1048576_829679, ⟨CollatzM20Shard106.descent_mod1048576_830111, ⟨CollatzM20Shard106.descent_mod1048576_830235, ⟨CollatzM20Shard106.descent_mod1048576_830239, ⟨CollatzM20Shard106.descent_mod1048576_830719, ⟨CollatzM20Shard106.descent_mod1048576_830927, ⟨CollatzM20Shard106.descent_mod1048576_831087, ⟨CollatzM20Shard106.descent_mod1048576_831135, ⟨CollatzM20Shard106.descent_mod1048576_831727, ⟨CollatzM20Shard106.descent_mod1048576_831815, ⟨CollatzM20Shard106.descent_mod1048576_831975, ⟨CollatzM20Shard106.descent_mod1048576_832743, ⟨CollatzM20Shard106.descent_mod1048576_833583, ⟨CollatzM20Shard106.descent_mod1048576_833743, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
