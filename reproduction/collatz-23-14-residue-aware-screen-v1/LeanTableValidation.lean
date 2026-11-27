import Init

def threePow (h : Nat) : Nat :=
  match h with
  | 0 => 1 | 1 => 3 | 2 => 9 | 3 => 27 | 4 => 81
  | 5 => 243 | 6 => 729 | 7 => 2187 | 8 => 6561
  | 9 => 19683 | 10 => 59049 | 11 => 177147 | 12 => 531441
  | 13 => 1594323 | 14 => 4782969 | _ => 0

def invThreePow (h : Nat) : Nat :=
  match h with
  | 0 => 1 | 1 => 2796203 | 2 => 6524473 | 3 => 4971027 | 4 => 1657009
  | 5 => 3348539 | 6 => 6708585 | 7 => 2236195 | 8 => 3541601
  | 9 => 6772939 | 10 => 5053849 | 11 => 4480819 | 12 => 4289809
  | 13 => 4226139 | 14 => 1408713 | _ => 0

theorem three_pow_table_valid : ∀ h, h ≤ 14 → threePow h = 3 ^ h := by decide

theorem inverse_table_valid : ∀ h, h ≤ 14 → (3 ^ h * invThreePow h) % (2 ^ 23) = 1 := by decide

#print axioms three_pow_table_valid
#print axioms inverse_table_valid
