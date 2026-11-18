import M20Shard090

namespace CollatzM20CompositionV1

theorem chunk090 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 695423) 32 = 531441 * k + 352456 ∧ 531441 * k + 352456 < 1048576 * k + 695423) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 696431) 32 = 531441 * k + 352967 ∧ 531441 * k + 352967 < 1048576 * k + 696431) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 696679) 32 = 531441 * k + 353093 ∧ 531441 * k + 353093 < 1048576 * k + 696679) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 696991) 32 = 531441 * k + 353251 ∧ 531441 * k + 353251 < 1048576 * k + 696991) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 697247) 32 = 531441 * k + 353381 ∧ 531441 * k + 353381 < 1048576 * k + 697247) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 697727) 32 = 531441 * k + 353624 ∧ 531441 * k + 353624 < 1048576 * k + 697727) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 698459) 32 = 531441 * k + 353995 ∧ 531441 * k + 353995 < 1048576 * k + 698459) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 698479) 32 = 531441 * k + 354005 ∧ 531441 * k + 354005 < 1048576 * k + 698479) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 698495) 32 = 531441 * k + 354013 ∧ 531441 * k + 354013 < 1048576 * k + 698495) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 698855) 32 = 531441 * k + 354196 ∧ 531441 * k + 354196 < 1048576 * k + 698855) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 699391) 32 = 531441 * k + 354467 ∧ 531441 * k + 354467 < 1048576 * k + 699391) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 701119) 32 = 531441 * k + 355343 ∧ 531441 * k + 355343 < 1048576 * k + 701119) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 701439) 32 = 531441 * k + 355505 ∧ 531441 * k + 355505 < 1048576 * k + 701439) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 701531) 32 = 531441 * k + 355552 ∧ 531441 * k + 355552 < 1048576 * k + 701531) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 701567) 32 = 531441 * k + 355570 ∧ 531441 * k + 355570 < 1048576 * k + 701567) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 702575) 32 = 531441 * k + 356081 ∧ 531441 * k + 356081 < 1048576 * k + 702575) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 703143) 32 = 531441 * k + 356369 ∧ 531441 * k + 356369 < 1048576 * k + 703143) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 703295) 32 = 531441 * k + 356446 ∧ 531441 * k + 356446 < 1048576 * k + 703295) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 703551) 32 = 531441 * k + 356576 ∧ 531441 * k + 356576 < 1048576 * k + 703551) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 703615) 32 = 531441 * k + 356608 ∧ 531441 * k + 356608 < 1048576 * k + 703615) ∧
  R := by
  exact ⟨CollatzM20Shard090.descent_mod1048576_695423, ⟨CollatzM20Shard090.descent_mod1048576_696431, ⟨CollatzM20Shard090.descent_mod1048576_696679, ⟨CollatzM20Shard090.descent_mod1048576_696991, ⟨CollatzM20Shard090.descent_mod1048576_697247, ⟨CollatzM20Shard090.descent_mod1048576_697727, ⟨CollatzM20Shard090.descent_mod1048576_698459, ⟨CollatzM20Shard090.descent_mod1048576_698479, ⟨CollatzM20Shard090.descent_mod1048576_698495, ⟨CollatzM20Shard090.descent_mod1048576_698855, ⟨CollatzM20Shard090.descent_mod1048576_699391, ⟨CollatzM20Shard090.descent_mod1048576_701119, ⟨CollatzM20Shard090.descent_mod1048576_701439, ⟨CollatzM20Shard090.descent_mod1048576_701531, ⟨CollatzM20Shard090.descent_mod1048576_701567, ⟨CollatzM20Shard090.descent_mod1048576_702575, ⟨CollatzM20Shard090.descent_mod1048576_703143, ⟨CollatzM20Shard090.descent_mod1048576_703295, ⟨CollatzM20Shard090.descent_mod1048576_703551, ⟨CollatzM20Shard090.descent_mod1048576_703615, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
