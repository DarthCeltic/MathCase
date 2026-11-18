import M20Shard064

namespace CollatzM20CompositionV1

theorem chunk064 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 498799) 32 = 531441 * k + 252803 ∧ 531441 * k + 252803 < 1048576 * k + 498799) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499071) 32 = 531441 * k + 252941 ∧ 531441 * k + 252941 < 1048576 * k + 499071) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499231) 32 = 531441 * k + 253022 ∧ 531441 * k + 253022 < 1048576 * k + 499231) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499355) 32 = 531441 * k + 253085 ∧ 531441 * k + 253085 < 1048576 * k + 499355) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499391) 32 = 531441 * k + 253103 ∧ 531441 * k + 253103 < 1048576 * k + 499391) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499519) 32 = 531441 * k + 253168 ∧ 531441 * k + 253168 < 1048576 * k + 499519) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499839) 32 = 531441 * k + 253330 ∧ 531441 * k + 253330 < 1048576 * k + 499839) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499963) 32 = 531441 * k + 253393 ∧ 531441 * k + 253393 < 1048576 * k + 499963) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 500159) 32 = 531441 * k + 253492 ∧ 531441 * k + 253492 < 1048576 * k + 500159) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 500271) 32 = 531441 * k + 253549 ∧ 531441 * k + 253549 < 1048576 * k + 500271) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 500735) 32 = 531441 * k + 253784 ∧ 531441 * k + 253784 < 1048576 * k + 500735) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 500839) 32 = 531441 * k + 253837 ∧ 531441 * k + 253837 < 1048576 * k + 500839) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 501919) 32 = 531441 * k + 254384 ∧ 531441 * k + 254384 < 1048576 * k + 501919) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 502207) 32 = 531441 * k + 254530 ∧ 531441 * k + 254530 < 1048576 * k + 502207) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 502427) 32 = 531441 * k + 254642 ∧ 531441 * k + 254642 < 1048576 * k + 502427) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 502439) 32 = 531441 * k + 254648 ∧ 531441 * k + 254648 < 1048576 * k + 502439) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 502875) 32 = 531441 * k + 254869 ∧ 531441 * k + 254869 < 1048576 * k + 502875) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 502943) 32 = 531441 * k + 254903 ∧ 531441 * k + 254903 < 1048576 * k + 502943) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 503035) 32 = 531441 * k + 254950 ∧ 531441 * k + 254950 < 1048576 * k + 503035) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 503231) 32 = 531441 * k + 255049 ∧ 531441 * k + 255049 < 1048576 * k + 503231) ∧
  R := by
  exact ⟨CollatzM20Shard064.descent_mod1048576_498799, ⟨CollatzM20Shard064.descent_mod1048576_499071, ⟨CollatzM20Shard064.descent_mod1048576_499231, ⟨CollatzM20Shard064.descent_mod1048576_499355, ⟨CollatzM20Shard064.descent_mod1048576_499391, ⟨CollatzM20Shard064.descent_mod1048576_499519, ⟨CollatzM20Shard064.descent_mod1048576_499839, ⟨CollatzM20Shard064.descent_mod1048576_499963, ⟨CollatzM20Shard064.descent_mod1048576_500159, ⟨CollatzM20Shard064.descent_mod1048576_500271, ⟨CollatzM20Shard064.descent_mod1048576_500735, ⟨CollatzM20Shard064.descent_mod1048576_500839, ⟨CollatzM20Shard064.descent_mod1048576_501919, ⟨CollatzM20Shard064.descent_mod1048576_502207, ⟨CollatzM20Shard064.descent_mod1048576_502427, ⟨CollatzM20Shard064.descent_mod1048576_502439, ⟨CollatzM20Shard064.descent_mod1048576_502875, ⟨CollatzM20Shard064.descent_mod1048576_502943, ⟨CollatzM20Shard064.descent_mod1048576_503035, ⟨CollatzM20Shard064.descent_mod1048576_503231, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
