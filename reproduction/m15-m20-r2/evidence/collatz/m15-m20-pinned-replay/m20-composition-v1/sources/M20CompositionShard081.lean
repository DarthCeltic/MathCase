import M20Shard081

namespace CollatzM20CompositionV1

theorem chunk081 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 623263) 32 = 531441 * k + 315884 ∧ 531441 * k + 315884 < 1048576 * k + 623263) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 623943) 32 = 531441 * k + 316229 ∧ 531441 * k + 316229 < 1048576 * k + 623943) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 624103) 32 = 531441 * k + 316310 ∧ 531441 * k + 316310 < 1048576 * k + 624103) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 624219) 32 = 531441 * k + 316369 ∧ 531441 * k + 316369 < 1048576 * k + 624219) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 624551) 32 = 531441 * k + 316537 ∧ 531441 * k + 316537 < 1048576 * k + 624551) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 625127) 32 = 531441 * k + 316829 ∧ 531441 * k + 316829 < 1048576 * k + 625127) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 625471) 32 = 531441 * k + 317003 ∧ 531441 * k + 317003 < 1048576 * k + 625471) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 625791) 32 = 531441 * k + 317165 ∧ 531441 * k + 317165 < 1048576 * k + 625791) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 626127) 32 = 531441 * k + 317336 ∧ 531441 * k + 317336 < 1048576 * k + 626127) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 626287) 32 = 531441 * k + 317417 ∧ 531441 * k + 317417 < 1048576 * k + 626287) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 626895) 32 = 531441 * k + 317725 ∧ 531441 * k + 317725 < 1048576 * k + 626895) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 626927) 32 = 531441 * k + 317741 ∧ 531441 * k + 317741 < 1048576 * k + 626927) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 627487) 32 = 531441 * k + 318025 ∧ 531441 * k + 318025 < 1048576 * k + 627487) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 627815) 32 = 531441 * k + 318191 ∧ 531441 * k + 318191 < 1048576 * k + 627815) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 627839) 32 = 531441 * k + 318203 ∧ 531441 * k + 318203 < 1048576 * k + 627839) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 627943) 32 = 531441 * k + 318256 ∧ 531441 * k + 318256 < 1048576 * k + 627943) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 627967) 32 = 531441 * k + 318268 ∧ 531441 * k + 318268 < 1048576 * k + 627967) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 628827) 32 = 531441 * k + 318704 ∧ 531441 * k + 318704 < 1048576 * k + 628827) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 630523) 32 = 531441 * k + 319564 ∧ 531441 * k + 319564 < 1048576 * k + 630523) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 630875) 32 = 531441 * k + 319742 ∧ 531441 * k + 319742 < 1048576 * k + 630875) ∧
  R := by
  exact ⟨CollatzM20Shard081.descent_mod1048576_623263, ⟨CollatzM20Shard081.descent_mod1048576_623943, ⟨CollatzM20Shard081.descent_mod1048576_624103, ⟨CollatzM20Shard081.descent_mod1048576_624219, ⟨CollatzM20Shard081.descent_mod1048576_624551, ⟨CollatzM20Shard081.descent_mod1048576_625127, ⟨CollatzM20Shard081.descent_mod1048576_625471, ⟨CollatzM20Shard081.descent_mod1048576_625791, ⟨CollatzM20Shard081.descent_mod1048576_626127, ⟨CollatzM20Shard081.descent_mod1048576_626287, ⟨CollatzM20Shard081.descent_mod1048576_626895, ⟨CollatzM20Shard081.descent_mod1048576_626927, ⟨CollatzM20Shard081.descent_mod1048576_627487, ⟨CollatzM20Shard081.descent_mod1048576_627815, ⟨CollatzM20Shard081.descent_mod1048576_627839, ⟨CollatzM20Shard081.descent_mod1048576_627943, ⟨CollatzM20Shard081.descent_mod1048576_627967, ⟨CollatzM20Shard081.descent_mod1048576_628827, ⟨CollatzM20Shard081.descent_mod1048576_630523, ⟨CollatzM20Shard081.descent_mod1048576_630875, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
