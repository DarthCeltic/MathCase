import M20Shard123

namespace CollatzM20CompositionV1

theorem chunk123 {R : Prop} (tail : R) :
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 965371) 32 = 531441 * k + 489272 ∧ 531441 * k + 489272 < 1048576 * k + 965371) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 965407) 32 = 531441 * k + 489290 ∧ 531441 * k + 489290 < 1048576 * k + 965407) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 965887) 32 = 531441 * k + 489533 ∧ 531441 * k + 489533 < 1048576 * k + 965887) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 966127) 32 = 531441 * k + 489655 ∧ 531441 * k + 489655 < 1048576 * k + 966127) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 966591) 32 = 531441 * k + 489890 ∧ 531441 * k + 489890 < 1048576 * k + 966591) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 966703) 32 = 531441 * k + 489947 ∧ 531441 * k + 489947 < 1048576 * k + 966703) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 967583) 32 = 531441 * k + 490393 ∧ 531441 * k + 490393 < 1048576 * k + 967583) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 967935) 32 = 531441 * k + 490571 ∧ 531441 * k + 490571 < 1048576 * k + 967935) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 968063) 32 = 531441 * k + 490636 ∧ 531441 * k + 490636 < 1048576 * k + 968063) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 969467) 32 = 531441 * k + 491348 ∧ 531441 * k + 491348 < 1048576 * k + 969467) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 971551) 32 = 531441 * k + 492404 ∧ 531441 * k + 492404 < 1048576 * k + 971551) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 972031) 32 = 531441 * k + 492647 ∧ 531441 * k + 492647 < 1048576 * k + 972031) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 972159) 32 = 531441 * k + 492712 ∧ 531441 * k + 492712 < 1048576 * k + 972159) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 972735) 32 = 531441 * k + 493004 ∧ 531441 * k + 493004 < 1048576 * k + 972735) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 972847) 32 = 531441 * k + 493061 ∧ 531441 * k + 493061 < 1048576 * k + 972847) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 973007) 32 = 531441 * k + 493142 ∧ 531441 * k + 493142 < 1048576 * k + 973007) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 973159) 32 = 531441 * k + 493219 ∧ 531441 * k + 493219 < 1048576 * k + 973159) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 973415) 32 = 531441 * k + 493349 ∧ 531441 * k + 493349 < 1048576 * k + 973415) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 974587) 32 = 531441 * k + 493943 ∧ 531441 * k + 493943 < 1048576 * k + 974587) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 974959) 32 = 531441 * k + 494131 ∧ 531441 * k + 494131 < 1048576 * k + 974959) ∧
  R := by
  exact ⟨CollatzM20Shard123.descent_mod1048576_965371, ⟨CollatzM20Shard123.descent_mod1048576_965407, ⟨CollatzM20Shard123.descent_mod1048576_965887, ⟨CollatzM20Shard123.descent_mod1048576_966127, ⟨CollatzM20Shard123.descent_mod1048576_966591, ⟨CollatzM20Shard123.descent_mod1048576_966703, ⟨CollatzM20Shard123.descent_mod1048576_967583, ⟨CollatzM20Shard123.descent_mod1048576_967935, ⟨CollatzM20Shard123.descent_mod1048576_968063, ⟨CollatzM20Shard123.descent_mod1048576_969467, ⟨CollatzM20Shard123.descent_mod1048576_971551, ⟨CollatzM20Shard123.descent_mod1048576_972031, ⟨CollatzM20Shard123.descent_mod1048576_972159, ⟨CollatzM20Shard123.descent_mod1048576_972735, ⟨CollatzM20Shard123.descent_mod1048576_972847, ⟨CollatzM20Shard123.descent_mod1048576_973007, ⟨CollatzM20Shard123.descent_mod1048576_973159, ⟨CollatzM20Shard123.descent_mod1048576_973415, ⟨CollatzM20Shard123.descent_mod1048576_974587, ⟨CollatzM20Shard123.descent_mod1048576_974959, tail⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20CompositionV1
