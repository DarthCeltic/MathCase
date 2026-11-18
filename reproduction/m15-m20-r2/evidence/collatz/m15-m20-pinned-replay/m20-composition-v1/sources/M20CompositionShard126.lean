import M20Shard126

namespace CollatzM20CompositionV1

theorem chunk126 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 989407) 32 = 531441 * k + 501454 ∧ 531441 * k + 501454 < 1048576 * k + 989407) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 989567) 32 = 531441 * k + 501535 ∧ 531441 * k + 501535 < 1048576 * k + 989567) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 989887) 32 = 531441 * k + 501697 ∧ 531441 * k + 501697 < 1048576 * k + 989887) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 990623) 32 = 531441 * k + 502070 ∧ 531441 * k + 502070 < 1048576 * k + 990623) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 990747) 32 = 531441 * k + 502133 ∧ 531441 * k + 502133 < 1048576 * k + 990747) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 991391) 32 = 531441 * k + 502459 ∧ 531441 * k + 502459 < 1048576 * k + 991391) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 991647) 32 = 531441 * k + 502589 ∧ 531441 * k + 502589 < 1048576 * k + 991647) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 992327) 32 = 531441 * k + 502934 ∧ 531441 * k + 502934 < 1048576 * k + 992327) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 992487) 32 = 531441 * k + 503015 ∧ 531441 * k + 503015 < 1048576 * k + 992487) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 992539) 32 = 531441 * k + 503041 ∧ 531441 * k + 503041 < 1048576 * k + 992539) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 992923) 32 = 531441 * k + 503236 ∧ 531441 * k + 503236 < 1048576 * k + 992923) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 993351) 32 = 531441 * k + 503453 ∧ 531441 * k + 503453 < 1048576 * k + 993351) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 993439) 32 = 531441 * k + 503497 ∧ 531441 * k + 503497 < 1048576 * k + 993439) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 993511) 32 = 531441 * k + 503534 ∧ 531441 * k + 503534 < 1048576 * k + 993511) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 994175) 32 = 531441 * k + 503870 ∧ 531441 * k + 503870 < 1048576 * k + 994175) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 994415) 32 = 531441 * k + 503992 ∧ 531441 * k + 503992 < 1048576 * k + 994415) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 994463) 32 = 531441 * k + 504016 ∧ 531441 * k + 504016 < 1048576 * k + 994463) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 994511) 32 = 531441 * k + 504041 ∧ 531441 * k + 504041 < 1048576 * k + 994511) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 994587) 32 = 531441 * k + 504079 ∧ 531441 * k + 504079 < 1048576 * k + 994587) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 994843) 32 = 531441 * k + 504209 ∧ 531441 * k + 504209 < 1048576 * k + 994843) ∧
  R := by
  exact ⟨CollatzM20Shard126.descent_mod1048576_989407, ⟨CollatzM20Shard126.descent_mod1048576_989567, ⟨CollatzM20Shard126.descent_mod1048576_989887, ⟨CollatzM20Shard126.descent_mod1048576_990623, ⟨CollatzM20Shard126.descent_mod1048576_990747, ⟨CollatzM20Shard126.descent_mod1048576_991391, ⟨CollatzM20Shard126.descent_mod1048576_991647, ⟨CollatzM20Shard126.descent_mod1048576_992327, ⟨CollatzM20Shard126.descent_mod1048576_992487, ⟨CollatzM20Shard126.descent_mod1048576_992539, ⟨CollatzM20Shard126.descent_mod1048576_992923, ⟨CollatzM20Shard126.descent_mod1048576_993351, ⟨CollatzM20Shard126.descent_mod1048576_993439, ⟨CollatzM20Shard126.descent_mod1048576_993511, ⟨CollatzM20Shard126.descent_mod1048576_994175, ⟨CollatzM20Shard126.descent_mod1048576_994415, ⟨CollatzM20Shard126.descent_mod1048576_994463, ⟨CollatzM20Shard126.descent_mod1048576_994511, ⟨CollatzM20Shard126.descent_mod1048576_994587, ⟨CollatzM20Shard126.descent_mod1048576_994843, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
