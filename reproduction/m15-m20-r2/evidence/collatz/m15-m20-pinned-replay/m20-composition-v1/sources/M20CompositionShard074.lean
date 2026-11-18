import M20Shard074

namespace CollatzM20CompositionV1

theorem chunk074 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 570911) 32 = 531441 * k + 289351 ∧ 531441 * k + 289351 < 1048576 * k + 570911) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 571071) 32 = 531441 * k + 289432 ∧ 531441 * k + 289432 < 1048576 * k + 571071) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 571239) 32 = 531441 * k + 289517 ∧ 531441 * k + 289517 < 1048576 * k + 571239) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 572575) 32 = 531441 * k + 290194 ∧ 531441 * k + 290194 < 1048576 * k + 572575) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 572955) 32 = 531441 * k + 290387 ∧ 531441 * k + 290387 < 1048576 * k + 572955) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 573511) 32 = 531441 * k + 290669 ∧ 531441 * k + 290669 < 1048576 * k + 573511) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 575335) 32 = 531441 * k + 291593 ∧ 531441 * k + 291593 < 1048576 * k + 575335) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 575903) 32 = 531441 * k + 291881 ∧ 531441 * k + 291881 < 1048576 * k + 575903) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 576167) 32 = 531441 * k + 292015 ∧ 531441 * k + 292015 < 1048576 * k + 576167) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 576423) 32 = 531441 * k + 292145 ∧ 531441 * k + 292145 < 1048576 * k + 576423) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 576495) 32 = 531441 * k + 292181 ∧ 531441 * k + 292181 < 1048576 * k + 576495) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 576743) 32 = 531441 * k + 292307 ∧ 531441 * k + 292307 < 1048576 * k + 576743) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 577191) 32 = 531441 * k + 292534 ∧ 531441 * k + 292534 < 1048576 * k + 577191) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578075) 32 = 531441 * k + 292982 ∧ 531441 * k + 292982 < 1048576 * k + 578075) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578287) 32 = 531441 * k + 293089 ∧ 531441 * k + 293089 < 1048576 * k + 578287) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578407) 32 = 531441 * k + 293150 ∧ 531441 * k + 293150 < 1048576 * k + 578407) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578431) 32 = 531441 * k + 293162 ∧ 531441 * k + 293162 < 1048576 * k + 578431) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578671) 32 = 531441 * k + 293284 ∧ 531441 * k + 293284 < 1048576 * k + 578671) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578719) 32 = 531441 * k + 293308 ∧ 531441 * k + 293308 < 1048576 * k + 578719) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578843) 32 = 531441 * k + 293371 ∧ 531441 * k + 293371 < 1048576 * k + 578843) ∧
  R := by
  exact ⟨CollatzM20Shard074.descent_mod1048576_570911, ⟨CollatzM20Shard074.descent_mod1048576_571071, ⟨CollatzM20Shard074.descent_mod1048576_571239, ⟨CollatzM20Shard074.descent_mod1048576_572575, ⟨CollatzM20Shard074.descent_mod1048576_572955, ⟨CollatzM20Shard074.descent_mod1048576_573511, ⟨CollatzM20Shard074.descent_mod1048576_575335, ⟨CollatzM20Shard074.descent_mod1048576_575903, ⟨CollatzM20Shard074.descent_mod1048576_576167, ⟨CollatzM20Shard074.descent_mod1048576_576423, ⟨CollatzM20Shard074.descent_mod1048576_576495, ⟨CollatzM20Shard074.descent_mod1048576_576743, ⟨CollatzM20Shard074.descent_mod1048576_577191, ⟨CollatzM20Shard074.descent_mod1048576_578075, ⟨CollatzM20Shard074.descent_mod1048576_578287, ⟨CollatzM20Shard074.descent_mod1048576_578407, ⟨CollatzM20Shard074.descent_mod1048576_578431, ⟨CollatzM20Shard074.descent_mod1048576_578671, ⟨CollatzM20Shard074.descent_mod1048576_578719, ⟨CollatzM20Shard074.descent_mod1048576_578843, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
