import M20Shard096

namespace CollatzM20CompositionV1

theorem chunk096 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 744475) 32 = 531441 * k + 377317 ∧ 531441 * k + 377317 < 1048576 * k + 744475) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 744767) 32 = 531441 * k + 377465 ∧ 531441 * k + 377465 < 1048576 * k + 744767) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 744807) 32 = 531441 * k + 377485 ∧ 531441 * k + 377485 < 1048576 * k + 744807) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 744927) 32 = 531441 * k + 377546 ∧ 531441 * k + 377546 < 1048576 * k + 744927) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 745375) 32 = 531441 * k + 377773 ∧ 531441 * k + 377773 < 1048576 * k + 745375) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 745519) 32 = 531441 * k + 377846 ∧ 531441 * k + 377846 < 1048576 * k + 745519) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 745951) 32 = 531441 * k + 378065 ∧ 531441 * k + 378065 < 1048576 * k + 745951) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 745967) 32 = 531441 * k + 378073 ∧ 531441 * k + 378073 < 1048576 * k + 745967) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 747111) 32 = 531441 * k + 378653 ∧ 531441 * k + 378653 < 1048576 * k + 747111) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 747879) 32 = 531441 * k + 379042 ∧ 531441 * k + 379042 < 1048576 * k + 747879) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 748123) 32 = 531441 * k + 379166 ∧ 531441 * k + 379166 < 1048576 * k + 748123) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 748399) 32 = 531441 * k + 379306 ∧ 531441 * k + 379306 < 1048576 * k + 748399) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 748479) 32 = 531441 * k + 379346 ∧ 531441 * k + 379346 < 1048576 * k + 748479) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 749039) 32 = 531441 * k + 379630 ∧ 531441 * k + 379630 < 1048576 * k + 749039) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 749615) 32 = 531441 * k + 379922 ∧ 531441 * k + 379922 < 1048576 * k + 749615) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 750951) 32 = 531441 * k + 380599 ∧ 531441 * k + 380599 < 1048576 * k + 750951) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 751071) 32 = 531441 * k + 380660 ∧ 531441 * k + 380660 < 1048576 * k + 751071) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 752999) 32 = 531441 * k + 381637 ∧ 531441 * k + 381637 < 1048576 * k + 752999) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 753255) 32 = 531441 * k + 381767 ∧ 531441 * k + 381767 < 1048576 * k + 753255) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 753567) 32 = 531441 * k + 381925 ∧ 531441 * k + 381925 < 1048576 * k + 753567) ∧
  R := by
  exact ⟨CollatzM20Shard096.descent_mod1048576_744475, ⟨CollatzM20Shard096.descent_mod1048576_744767, ⟨CollatzM20Shard096.descent_mod1048576_744807, ⟨CollatzM20Shard096.descent_mod1048576_744927, ⟨CollatzM20Shard096.descent_mod1048576_745375, ⟨CollatzM20Shard096.descent_mod1048576_745519, ⟨CollatzM20Shard096.descent_mod1048576_745951, ⟨CollatzM20Shard096.descent_mod1048576_745967, ⟨CollatzM20Shard096.descent_mod1048576_747111, ⟨CollatzM20Shard096.descent_mod1048576_747879, ⟨CollatzM20Shard096.descent_mod1048576_748123, ⟨CollatzM20Shard096.descent_mod1048576_748399, ⟨CollatzM20Shard096.descent_mod1048576_748479, ⟨CollatzM20Shard096.descent_mod1048576_749039, ⟨CollatzM20Shard096.descent_mod1048576_749615, ⟨CollatzM20Shard096.descent_mod1048576_750951, ⟨CollatzM20Shard096.descent_mod1048576_751071, ⟨CollatzM20Shard096.descent_mod1048576_752999, ⟨CollatzM20Shard096.descent_mod1048576_753255, ⟨CollatzM20Shard096.descent_mod1048576_753567, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
