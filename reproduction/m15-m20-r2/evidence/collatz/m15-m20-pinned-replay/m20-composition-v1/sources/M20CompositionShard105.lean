import M20Shard105

namespace CollatzM20CompositionV1

theorem chunk105 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 820059) 32 = 531441 * k + 415625 ∧ 531441 * k + 415625 < 1048576 * k + 820059) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 820379) 32 = 531441 * k + 415787 ∧ 531441 * k + 415787 < 1048576 * k + 820379) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 820463) 32 = 531441 * k + 415829 ∧ 531441 * k + 415829 < 1048576 * k + 820463) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 820735) 32 = 531441 * k + 415967 ∧ 531441 * k + 415967 < 1048576 * k + 820735) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 820895) 32 = 531441 * k + 416048 ∧ 531441 * k + 416048 < 1048576 * k + 820895) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 821487) 32 = 531441 * k + 416348 ∧ 531441 * k + 416348 < 1048576 * k + 821487) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 821871) 32 = 531441 * k + 416543 ∧ 531441 * k + 416543 < 1048576 * k + 821871) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 822439) 32 = 531441 * k + 416831 ∧ 531441 * k + 416831 < 1048576 * k + 822439) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 822511) 32 = 531441 * k + 416867 ∧ 531441 * k + 416867 < 1048576 * k + 822511) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 822599) 32 = 531441 * k + 416912 ∧ 531441 * k + 416912 < 1048576 * k + 822599) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 823623) 32 = 531441 * k + 417431 ∧ 531441 * k + 417431 < 1048576 * k + 823623) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 823967) 32 = 531441 * k + 417605 ∧ 531441 * k + 417605 < 1048576 * k + 823967) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 824091) 32 = 531441 * k + 417668 ∧ 531441 * k + 417668 < 1048576 * k + 824091) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 824623) 32 = 531441 * k + 417938 ∧ 531441 * k + 417938 < 1048576 * k + 824623) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 824783) 32 = 531441 * k + 418019 ∧ 531441 * k + 418019 < 1048576 * k + 824783) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 824991) 32 = 531441 * k + 418124 ∧ 531441 * k + 418124 < 1048576 * k + 824991) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 825391) 32 = 531441 * k + 418327 ∧ 531441 * k + 418327 < 1048576 * k + 825391) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 825551) 32 = 531441 * k + 418408 ∧ 531441 * k + 418408 < 1048576 * k + 825551) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 825583) 32 = 531441 * k + 418424 ∧ 531441 * k + 418424 < 1048576 * k + 825583) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 826143) 32 = 531441 * k + 418708 ∧ 531441 * k + 418708 < 1048576 * k + 826143) ∧
  R := by
  exact ⟨CollatzM20Shard105.descent_mod1048576_820059, ⟨CollatzM20Shard105.descent_mod1048576_820379, ⟨CollatzM20Shard105.descent_mod1048576_820463, ⟨CollatzM20Shard105.descent_mod1048576_820735, ⟨CollatzM20Shard105.descent_mod1048576_820895, ⟨CollatzM20Shard105.descent_mod1048576_821487, ⟨CollatzM20Shard105.descent_mod1048576_821871, ⟨CollatzM20Shard105.descent_mod1048576_822439, ⟨CollatzM20Shard105.descent_mod1048576_822511, ⟨CollatzM20Shard105.descent_mod1048576_822599, ⟨CollatzM20Shard105.descent_mod1048576_823623, ⟨CollatzM20Shard105.descent_mod1048576_823967, ⟨CollatzM20Shard105.descent_mod1048576_824091, ⟨CollatzM20Shard105.descent_mod1048576_824623, ⟨CollatzM20Shard105.descent_mod1048576_824783, ⟨CollatzM20Shard105.descent_mod1048576_824991, ⟨CollatzM20Shard105.descent_mod1048576_825391, ⟨CollatzM20Shard105.descent_mod1048576_825551, ⟨CollatzM20Shard105.descent_mod1048576_825583, ⟨CollatzM20Shard105.descent_mod1048576_826143, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
