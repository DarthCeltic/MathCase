import M20Shard050

namespace CollatzM20CompositionV1

theorem chunk050 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 394175) 32 = 531441 * k + 199777 ∧ 531441 * k + 199777 < 1048576 * k + 394175) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 394559) 32 = 531441 * k + 199972 ∧ 531441 * k + 199972 < 1048576 * k + 394559) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 394719) 32 = 531441 * k + 200053 ∧ 531441 * k + 200053 < 1048576 * k + 394719) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 395099) 32 = 531441 * k + 200246 ∧ 531441 * k + 200246 < 1048576 * k + 395099) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 395259) 32 = 531441 * k + 200327 ∧ 531441 * k + 200327 < 1048576 * k + 395259) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 396223) 32 = 531441 * k + 200815 ∧ 531441 * k + 200815 < 1048576 * k + 396223) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 396479) 32 = 531441 * k + 200945 ∧ 531441 * k + 200945 < 1048576 * k + 396479) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 396591) 32 = 531441 * k + 201002 ∧ 531441 * k + 201002 < 1048576 * k + 396591) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 396799) 32 = 531441 * k + 201107 ∧ 531441 * k + 201107 < 1048576 * k + 396799) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 397639) 32 = 531441 * k + 201533 ∧ 531441 * k + 201533 < 1048576 * k + 397639) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 397915) 32 = 531441 * k + 201673 ∧ 531441 * k + 201673 < 1048576 * k + 397915) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 398271) 32 = 531441 * k + 201853 ∧ 531441 * k + 201853 < 1048576 * k + 398271) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 398503) 32 = 531441 * k + 201971 ∧ 531441 * k + 201971 < 1048576 * k + 398503) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 399007) 32 = 531441 * k + 202226 ∧ 531441 * k + 202226 < 1048576 * k + 399007) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 399355) 32 = 531441 * k + 202403 ∧ 531441 * k + 202403 < 1048576 * k + 399355) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 399983) 32 = 531441 * k + 202721 ∧ 531441 * k + 202721 < 1048576 * k + 399983) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 400863) 32 = 531441 * k + 203167 ∧ 531441 * k + 203167 < 1048576 * k + 400863) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 401055) 32 = 531441 * k + 203264 ∧ 531441 * k + 203264 < 1048576 * k + 401055) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 401343) 32 = 531441 * k + 203410 ∧ 531441 * k + 203410 < 1048576 * k + 401343) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 401735) 32 = 531441 * k + 203609 ∧ 531441 * k + 203609 < 1048576 * k + 401735) ∧
  R := by
  exact ⟨CollatzM20Shard050.descent_mod1048576_394175, ⟨CollatzM20Shard050.descent_mod1048576_394559, ⟨CollatzM20Shard050.descent_mod1048576_394719, ⟨CollatzM20Shard050.descent_mod1048576_395099, ⟨CollatzM20Shard050.descent_mod1048576_395259, ⟨CollatzM20Shard050.descent_mod1048576_396223, ⟨CollatzM20Shard050.descent_mod1048576_396479, ⟨CollatzM20Shard050.descent_mod1048576_396591, ⟨CollatzM20Shard050.descent_mod1048576_396799, ⟨CollatzM20Shard050.descent_mod1048576_397639, ⟨CollatzM20Shard050.descent_mod1048576_397915, ⟨CollatzM20Shard050.descent_mod1048576_398271, ⟨CollatzM20Shard050.descent_mod1048576_398503, ⟨CollatzM20Shard050.descent_mod1048576_399007, ⟨CollatzM20Shard050.descent_mod1048576_399355, ⟨CollatzM20Shard050.descent_mod1048576_399983, ⟨CollatzM20Shard050.descent_mod1048576_400863, ⟨CollatzM20Shard050.descent_mod1048576_401055, ⟨CollatzM20Shard050.descent_mod1048576_401343, ⟨CollatzM20Shard050.descent_mod1048576_401735, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
