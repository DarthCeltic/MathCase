import M20Shard079

namespace CollatzM20CompositionV1

theorem chunk079 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 609791) 32 = 531441 * k + 309056 ∧ 531441 * k + 309056 < 1048576 * k + 609791) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 610075) 32 = 531441 * k + 309200 ∧ 531441 * k + 309200 < 1048576 * k + 610075) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 610791) 32 = 531441 * k + 309563 ∧ 531441 * k + 309563 < 1048576 * k + 610791) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 611495) 32 = 531441 * k + 309920 ∧ 531441 * k + 309920 < 1048576 * k + 611495) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 611655) 32 = 531441 * k + 310001 ∧ 531441 * k + 310001 < 1048576 * k + 611655) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 611791) 32 = 531441 * k + 310070 ∧ 531441 * k + 310070 < 1048576 * k + 611791) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 611807) 32 = 531441 * k + 310078 ∧ 531441 * k + 310078 < 1048576 * k + 611807) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 612347) 32 = 531441 * k + 310352 ∧ 531441 * k + 310352 < 1048576 * k + 612347) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 612383) 32 = 531441 * k + 310370 ∧ 531441 * k + 310370 < 1048576 * k + 612383) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 613151) 32 = 531441 * k + 310759 ∧ 531441 * k + 310759 < 1048576 * k + 613151) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 613311) 32 = 531441 * k + 310840 ∧ 531441 * k + 310840 < 1048576 * k + 613311) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 613615) 32 = 531441 * k + 310994 ∧ 531441 * k + 310994 < 1048576 * k + 613615) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 613991) 32 = 531441 * k + 311185 ∧ 531441 * k + 311185 < 1048576 * k + 613991) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 614171) 32 = 531441 * k + 311276 ∧ 531441 * k + 311276 < 1048576 * k + 614171) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 614727) 32 = 531441 * k + 311558 ∧ 531441 * k + 311558 < 1048576 * k + 614727) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 614887) 32 = 531441 * k + 311639 ∧ 531441 * k + 311639 < 1048576 * k + 614887) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 615003) 32 = 531441 * k + 311698 ∧ 531441 * k + 311698 < 1048576 * k + 615003) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 615259) 32 = 531441 * k + 311828 ∧ 531441 * k + 311828 < 1048576 * k + 615259) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 615579) 32 = 531441 * k + 311990 ∧ 531441 * k + 311990 < 1048576 * k + 615579) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 615751) 32 = 531441 * k + 312077 ∧ 531441 * k + 312077 < 1048576 * k + 615751) ∧
  R := by
  exact ⟨CollatzM20Shard079.descent_mod1048576_609791, ⟨CollatzM20Shard079.descent_mod1048576_610075, ⟨CollatzM20Shard079.descent_mod1048576_610791, ⟨CollatzM20Shard079.descent_mod1048576_611495, ⟨CollatzM20Shard079.descent_mod1048576_611655, ⟨CollatzM20Shard079.descent_mod1048576_611791, ⟨CollatzM20Shard079.descent_mod1048576_611807, ⟨CollatzM20Shard079.descent_mod1048576_612347, ⟨CollatzM20Shard079.descent_mod1048576_612383, ⟨CollatzM20Shard079.descent_mod1048576_613151, ⟨CollatzM20Shard079.descent_mod1048576_613311, ⟨CollatzM20Shard079.descent_mod1048576_613615, ⟨CollatzM20Shard079.descent_mod1048576_613991, ⟨CollatzM20Shard079.descent_mod1048576_614171, ⟨CollatzM20Shard079.descent_mod1048576_614727, ⟨CollatzM20Shard079.descent_mod1048576_614887, ⟨CollatzM20Shard079.descent_mod1048576_615003, ⟨CollatzM20Shard079.descent_mod1048576_615259, ⟨CollatzM20Shard079.descent_mod1048576_615579, ⟨CollatzM20Shard079.descent_mod1048576_615751, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
