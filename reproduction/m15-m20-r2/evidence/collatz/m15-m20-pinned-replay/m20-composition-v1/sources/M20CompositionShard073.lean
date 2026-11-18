import M20Shard073

namespace CollatzM20CompositionV1

theorem chunk073 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 564891) 32 = 531441 * k + 286300 ∧ 531441 * k + 286300 < 1048576 * k + 564891) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 564927) 32 = 531441 * k + 286318 ∧ 531441 * k + 286318 < 1048576 * k + 564927) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 564987) 32 = 531441 * k + 286349 ∧ 531441 * k + 286349 < 1048576 * k + 564987) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 565663) 32 = 531441 * k + 286691 ∧ 531441 * k + 286691 < 1048576 * k + 565663) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 566271) 32 = 531441 * k + 286999 ∧ 531441 * k + 286999 < 1048576 * k + 566271) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 566687) 32 = 531441 * k + 287210 ∧ 531441 * k + 287210 < 1048576 * k + 566687) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 567143) 32 = 531441 * k + 287441 ∧ 531441 * k + 287441 < 1048576 * k + 567143) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 567207) 32 = 531441 * k + 287474 ∧ 531441 * k + 287474 < 1048576 * k + 567207) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 567367) 32 = 531441 * k + 287555 ∧ 531441 * k + 287555 < 1048576 * k + 567367) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 567527) 32 = 531441 * k + 287636 ∧ 531441 * k + 287636 < 1048576 * k + 567527) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 567963) 32 = 531441 * k + 287857 ∧ 531441 * k + 287857 < 1048576 * k + 567963) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 567975) 32 = 531441 * k + 287863 ∧ 531441 * k + 287863 < 1048576 * k + 567975) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 568231) 32 = 531441 * k + 287993 ∧ 531441 * k + 287993 < 1048576 * k + 568231) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 568551) 32 = 531441 * k + 288155 ∧ 531441 * k + 288155 < 1048576 * k + 568551) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 568859) 32 = 531441 * k + 288311 ∧ 531441 * k + 288311 < 1048576 * k + 568859) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 569551) 32 = 531441 * k + 288662 ∧ 531441 * k + 288662 < 1048576 * k + 569551) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 569759) 32 = 531441 * k + 288767 ∧ 531441 * k + 288767 < 1048576 * k + 569759) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 570215) 32 = 531441 * k + 288998 ∧ 531441 * k + 288998 < 1048576 * k + 570215) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 570479) 32 = 531441 * k + 289132 ∧ 531441 * k + 289132 < 1048576 * k + 570479) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 570591) 32 = 531441 * k + 289189 ∧ 531441 * k + 289189 < 1048576 * k + 570591) ∧
  R := by
  exact ⟨CollatzM20Shard073.descent_mod1048576_564891, ⟨CollatzM20Shard073.descent_mod1048576_564927, ⟨CollatzM20Shard073.descent_mod1048576_564987, ⟨CollatzM20Shard073.descent_mod1048576_565663, ⟨CollatzM20Shard073.descent_mod1048576_566271, ⟨CollatzM20Shard073.descent_mod1048576_566687, ⟨CollatzM20Shard073.descent_mod1048576_567143, ⟨CollatzM20Shard073.descent_mod1048576_567207, ⟨CollatzM20Shard073.descent_mod1048576_567367, ⟨CollatzM20Shard073.descent_mod1048576_567527, ⟨CollatzM20Shard073.descent_mod1048576_567963, ⟨CollatzM20Shard073.descent_mod1048576_567975, ⟨CollatzM20Shard073.descent_mod1048576_568231, ⟨CollatzM20Shard073.descent_mod1048576_568551, ⟨CollatzM20Shard073.descent_mod1048576_568859, ⟨CollatzM20Shard073.descent_mod1048576_569551, ⟨CollatzM20Shard073.descent_mod1048576_569759, ⟨CollatzM20Shard073.descent_mod1048576_570215, ⟨CollatzM20Shard073.descent_mod1048576_570479, ⟨CollatzM20Shard073.descent_mod1048576_570591, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
