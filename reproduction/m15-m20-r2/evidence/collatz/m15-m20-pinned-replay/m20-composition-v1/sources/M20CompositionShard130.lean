import M20Shard130

namespace CollatzM20CompositionV1

theorem chunk130 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1021947) 32 = 531441 * k + 517946 ∧ 531441 * k + 517946 < 1048576 * k + 1021947) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1022119) 32 = 531441 * k + 518033 ∧ 531441 * k + 518033 < 1048576 * k + 1022119) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1022463) 32 = 531441 * k + 518207 ∧ 531441 * k + 518207 < 1048576 * k + 1022463) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1023131) 32 = 531441 * k + 518546 ∧ 531441 * k + 518546 < 1048576 * k + 1023131) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1023167) 32 = 531441 * k + 518564 ∧ 531441 * k + 518564 < 1048576 * k + 1023167) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1023279) 32 = 531441 * k + 518621 ∧ 531441 * k + 518621 < 1048576 * k + 1023279) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1023487) 32 = 531441 * k + 518726 ∧ 531441 * k + 518726 < 1048576 * k + 1023487) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1024047) 32 = 531441 * k + 519010 ∧ 531441 * k + 519010 < 1048576 * k + 1024047) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1024327) 32 = 531441 * k + 519152 ∧ 531441 * k + 519152 < 1048576 * k + 1024327) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1024479) 32 = 531441 * k + 519229 ∧ 531441 * k + 519229 < 1048576 * k + 1024479) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1025535) 32 = 531441 * k + 519764 ∧ 531441 * k + 519764 < 1048576 * k + 1025535) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1026043) 32 = 531441 * k + 520022 ∧ 531441 * k + 520022 < 1048576 * k + 1026043) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1027239) 32 = 531441 * k + 520628 ∧ 531441 * k + 520628 < 1048576 * k + 1027239) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1027867) 32 = 531441 * k + 520946 ∧ 531441 * k + 520946 < 1048576 * k + 1027867) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1028127) 32 = 531441 * k + 521078 ∧ 531441 * k + 521078 < 1048576 * k + 1028127) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1028287) 32 = 531441 * k + 521159 ∧ 531441 * k + 521159 < 1048576 * k + 1028287) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1028607) 32 = 531441 * k + 521321 ∧ 531441 * k + 521321 < 1048576 * k + 1028607) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1029055) 32 = 531441 * k + 521548 ∧ 531441 * k + 521548 < 1048576 * k + 1029055) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1029311) 32 = 531441 * k + 521678 ∧ 531441 * k + 521678 < 1048576 * k + 1029311) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1029423) 32 = 531441 * k + 521735 ∧ 531441 * k + 521735 < 1048576 * k + 1029423) ∧
  R := by
  exact ⟨CollatzM20Shard130.descent_mod1048576_1021947, ⟨CollatzM20Shard130.descent_mod1048576_1022119, ⟨CollatzM20Shard130.descent_mod1048576_1022463, ⟨CollatzM20Shard130.descent_mod1048576_1023131, ⟨CollatzM20Shard130.descent_mod1048576_1023167, ⟨CollatzM20Shard130.descent_mod1048576_1023279, ⟨CollatzM20Shard130.descent_mod1048576_1023487, ⟨CollatzM20Shard130.descent_mod1048576_1024047, ⟨CollatzM20Shard130.descent_mod1048576_1024327, ⟨CollatzM20Shard130.descent_mod1048576_1024479, ⟨CollatzM20Shard130.descent_mod1048576_1025535, ⟨CollatzM20Shard130.descent_mod1048576_1026043, ⟨CollatzM20Shard130.descent_mod1048576_1027239, ⟨CollatzM20Shard130.descent_mod1048576_1027867, ⟨CollatzM20Shard130.descent_mod1048576_1028127, ⟨CollatzM20Shard130.descent_mod1048576_1028287, ⟨CollatzM20Shard130.descent_mod1048576_1028607, ⟨CollatzM20Shard130.descent_mod1048576_1029055, ⟨CollatzM20Shard130.descent_mod1048576_1029311, ⟨CollatzM20Shard130.descent_mod1048576_1029423, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
