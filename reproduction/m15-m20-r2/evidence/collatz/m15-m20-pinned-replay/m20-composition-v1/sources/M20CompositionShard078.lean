import M20Shard078

namespace CollatzM20CompositionV1

theorem chunk078 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 603647) 32 = 531441 * k + 305942 ∧ 531441 * k + 305942 < 1048576 * k + 603647) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 604191) 32 = 531441 * k + 306218 ∧ 531441 * k + 306218 < 1048576 * k + 604191) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 604783) 32 = 531441 * k + 306518 ∧ 531441 * k + 306518 < 1048576 * k + 604783) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 605351) 32 = 531441 * k + 306806 ∧ 531441 * k + 306806 < 1048576 * k + 605351) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 605799) 32 = 531441 * k + 307033 ∧ 531441 * k + 307033 < 1048576 * k + 605799) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 605979) 32 = 531441 * k + 307124 ∧ 531441 * k + 307124 < 1048576 * k + 605979) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 606043) 32 = 531441 * k + 307157 ∧ 531441 * k + 307157 < 1048576 * k + 606043) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 606203) 32 = 531441 * k + 307238 ∧ 531441 * k + 307238 < 1048576 * k + 606203) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 606363) 32 = 531441 * k + 307319 ∧ 531441 * k + 307319 < 1048576 * k + 606363) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 606811) 32 = 531441 * k + 307546 ∧ 531441 * k + 307546 < 1048576 * k + 606811) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 607067) 32 = 531441 * k + 307676 ∧ 531441 * k + 307676 < 1048576 * k + 607067) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 607167) 32 = 531441 * k + 307726 ∧ 531441 * k + 307726 < 1048576 * k + 607167) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 607387) 32 = 531441 * k + 307838 ∧ 531441 * k + 307838 < 1048576 * k + 607387) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 607695) 32 = 531441 * k + 307994 ∧ 531441 * k + 307994 < 1048576 * k + 607695) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 607743) 32 = 531441 * k + 308018 ∧ 531441 * k + 308018 < 1048576 * k + 607743) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 608583) 32 = 531441 * k + 308444 ∧ 531441 * k + 308444 < 1048576 * k + 608583) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 608879) 32 = 531441 * k + 308594 ∧ 531441 * k + 308594 < 1048576 * k + 608879) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 609051) 32 = 531441 * k + 308681 ∧ 531441 * k + 308681 < 1048576 * k + 609051) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 609215) 32 = 531441 * k + 308764 ∧ 531441 * k + 308764 < 1048576 * k + 609215) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 609471) 32 = 531441 * k + 308894 ∧ 531441 * k + 308894 < 1048576 * k + 609471) ∧
  R := by
  exact ⟨CollatzM20Shard078.descent_mod1048576_603647, ⟨CollatzM20Shard078.descent_mod1048576_604191, ⟨CollatzM20Shard078.descent_mod1048576_604783, ⟨CollatzM20Shard078.descent_mod1048576_605351, ⟨CollatzM20Shard078.descent_mod1048576_605799, ⟨CollatzM20Shard078.descent_mod1048576_605979, ⟨CollatzM20Shard078.descent_mod1048576_606043, ⟨CollatzM20Shard078.descent_mod1048576_606203, ⟨CollatzM20Shard078.descent_mod1048576_606363, ⟨CollatzM20Shard078.descent_mod1048576_606811, ⟨CollatzM20Shard078.descent_mod1048576_607067, ⟨CollatzM20Shard078.descent_mod1048576_607167, ⟨CollatzM20Shard078.descent_mod1048576_607387, ⟨CollatzM20Shard078.descent_mod1048576_607695, ⟨CollatzM20Shard078.descent_mod1048576_607743, ⟨CollatzM20Shard078.descent_mod1048576_608583, ⟨CollatzM20Shard078.descent_mod1048576_608879, ⟨CollatzM20Shard078.descent_mod1048576_609051, ⟨CollatzM20Shard078.descent_mod1048576_609215, ⟨CollatzM20Shard078.descent_mod1048576_609471, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
