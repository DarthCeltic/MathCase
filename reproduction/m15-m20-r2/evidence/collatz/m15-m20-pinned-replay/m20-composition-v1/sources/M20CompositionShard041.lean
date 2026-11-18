import M20Shard041

namespace CollatzM20CompositionV1

theorem chunk041 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 303871) 32 = 531441 * k + 154009 ∧ 531441 * k + 154009 < 1048576 * k + 303871) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 303943) 32 = 531441 * k + 154046 ∧ 531441 * k + 154046 < 1048576 * k + 303943) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 304379) 32 = 531441 * k + 154267 ∧ 531441 * k + 154267 < 1048576 * k + 304379) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 304847) 32 = 531441 * k + 154504 ∧ 531441 * k + 154504 < 1048576 * k + 304847) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 304895) 32 = 531441 * k + 154528 ∧ 531441 * k + 154528 < 1048576 * k + 304895) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 305871) 32 = 531441 * k + 155023 ∧ 531441 * k + 155023 < 1048576 * k + 305871) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 305895) 32 = 531441 * k + 155035 ∧ 531441 * k + 155035 < 1048576 * k + 305895) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 305903) 32 = 531441 * k + 155039 ∧ 531441 * k + 155039 < 1048576 * k + 305903) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 306495) 32 = 531441 * k + 155339 ∧ 531441 * k + 155339 < 1048576 * k + 306495) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 308967) 32 = 531441 * k + 156592 ∧ 531441 * k + 156592 < 1048576 * k + 308967) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 309103) 32 = 531441 * k + 156661 ∧ 531441 * k + 156661 < 1048576 * k + 309103) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 309215) 32 = 531441 * k + 156718 ∧ 531441 * k + 156718 < 1048576 * k + 309215) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 309659) 32 = 531441 * k + 156943 ∧ 531441 * k + 156943 < 1048576 * k + 309659) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 309999) 32 = 531441 * k + 157115 ∧ 531441 * k + 157115 < 1048576 * k + 309999) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 310015) 32 = 531441 * k + 157123 ∧ 531441 * k + 157123 < 1048576 * k + 310015) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 310555) 32 = 531441 * k + 157397 ∧ 531441 * k + 157397 < 1048576 * k + 310555) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 310591) 32 = 531441 * k + 157415 ∧ 531441 * k + 157415 < 1048576 * k + 310591) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 311615) 32 = 531441 * k + 157934 ∧ 531441 * k + 157934 < 1048576 * k + 311615) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 312039) 32 = 531441 * k + 158149 ∧ 531441 * k + 158149 < 1048576 * k + 312039) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 312047) 32 = 531441 * k + 158153 ∧ 531441 * k + 158153 < 1048576 * k + 312047) ∧
  R := by
  exact ⟨CollatzM20Shard041.descent_mod1048576_303871, ⟨CollatzM20Shard041.descent_mod1048576_303943, ⟨CollatzM20Shard041.descent_mod1048576_304379, ⟨CollatzM20Shard041.descent_mod1048576_304847, ⟨CollatzM20Shard041.descent_mod1048576_304895, ⟨CollatzM20Shard041.descent_mod1048576_305871, ⟨CollatzM20Shard041.descent_mod1048576_305895, ⟨CollatzM20Shard041.descent_mod1048576_305903, ⟨CollatzM20Shard041.descent_mod1048576_306495, ⟨CollatzM20Shard041.descent_mod1048576_308967, ⟨CollatzM20Shard041.descent_mod1048576_309103, ⟨CollatzM20Shard041.descent_mod1048576_309215, ⟨CollatzM20Shard041.descent_mod1048576_309659, ⟨CollatzM20Shard041.descent_mod1048576_309999, ⟨CollatzM20Shard041.descent_mod1048576_310015, ⟨CollatzM20Shard041.descent_mod1048576_310555, ⟨CollatzM20Shard041.descent_mod1048576_310591, ⟨CollatzM20Shard041.descent_mod1048576_311615, ⟨CollatzM20Shard041.descent_mod1048576_312039, ⟨CollatzM20Shard041.descent_mod1048576_312047, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
