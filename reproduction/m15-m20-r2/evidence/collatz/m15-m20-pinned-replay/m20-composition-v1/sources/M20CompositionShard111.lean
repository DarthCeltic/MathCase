import M20Shard111

namespace CollatzM20CompositionV1

theorem chunk111 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 867579) 32 = 531441 * k + 439709 ∧ 531441 * k + 439709 < 1048576 * k + 867579) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 868223) 32 = 531441 * k + 440035 ∧ 531441 * k + 440035 < 1048576 * k + 868223) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 868335) 32 = 531441 * k + 440092 ∧ 531441 * k + 440092 < 1048576 * k + 868335) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 868383) 32 = 531441 * k + 440116 ∧ 531441 * k + 440116 < 1048576 * k + 868383) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 868519) 32 = 531441 * k + 440185 ∧ 531441 * k + 440185 < 1048576 * k + 868519) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 869119) 32 = 531441 * k + 440489 ∧ 531441 * k + 440489 < 1048576 * k + 869119) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 870119) 32 = 531441 * k + 440996 ∧ 531441 * k + 440996 < 1048576 * k + 870119) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 870567) 32 = 531441 * k + 441223 ∧ 531441 * k + 441223 < 1048576 * k + 870567) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 870651) 32 = 531441 * k + 441266 ∧ 531441 * k + 441266 < 1048576 * k + 870651) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 870811) 32 = 531441 * k + 441347 ∧ 531441 * k + 441347 < 1048576 * k + 870811) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 871143) 32 = 531441 * k + 441515 ∧ 531441 * k + 441515 < 1048576 * k + 871143) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 871455) 32 = 531441 * k + 441673 ∧ 531441 * k + 441673 < 1048576 * k + 871455) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 871579) 32 = 531441 * k + 441736 ∧ 531441 * k + 441736 < 1048576 * k + 871579) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 872303) 32 = 531441 * k + 442103 ∧ 531441 * k + 442103 < 1048576 * k + 872303) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 872615) 32 = 531441 * k + 442261 ∧ 531441 * k + 442261 < 1048576 * k + 872615) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 873167) 32 = 531441 * k + 442541 ∧ 531441 * k + 442541 < 1048576 * k + 873167) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 873499) 32 = 531441 * k + 442709 ∧ 531441 * k + 442709 < 1048576 * k + 873499) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 873503) 32 = 531441 * k + 442711 ∧ 531441 * k + 442711 < 1048576 * k + 873503) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 874215) 32 = 531441 * k + 443072 ∧ 531441 * k + 443072 < 1048576 * k + 874215) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 875007) 32 = 531441 * k + 443473 ∧ 531441 * k + 443473 < 1048576 * k + 875007) ∧
  R := by
  exact ⟨CollatzM20Shard111.descent_mod1048576_867579, ⟨CollatzM20Shard111.descent_mod1048576_868223, ⟨CollatzM20Shard111.descent_mod1048576_868335, ⟨CollatzM20Shard111.descent_mod1048576_868383, ⟨CollatzM20Shard111.descent_mod1048576_868519, ⟨CollatzM20Shard111.descent_mod1048576_869119, ⟨CollatzM20Shard111.descent_mod1048576_870119, ⟨CollatzM20Shard111.descent_mod1048576_870567, ⟨CollatzM20Shard111.descent_mod1048576_870651, ⟨CollatzM20Shard111.descent_mod1048576_870811, ⟨CollatzM20Shard111.descent_mod1048576_871143, ⟨CollatzM20Shard111.descent_mod1048576_871455, ⟨CollatzM20Shard111.descent_mod1048576_871579, ⟨CollatzM20Shard111.descent_mod1048576_872303, ⟨CollatzM20Shard111.descent_mod1048576_872615, ⟨CollatzM20Shard111.descent_mod1048576_873167, ⟨CollatzM20Shard111.descent_mod1048576_873499, ⟨CollatzM20Shard111.descent_mod1048576_873503, ⟨CollatzM20Shard111.descent_mod1048576_874215, ⟨CollatzM20Shard111.descent_mod1048576_875007, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
