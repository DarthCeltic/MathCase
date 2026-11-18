import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardO

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_21103 : ∀ k : Nat, iterate (32768 * k + 21103) 24 = 19683 * k + 12677 ∧ 19683 * k + 12677 < 32768 * k + 21103 := by
  intro k
  have h1 : C (32768 * k + 21103) = 98304 * k + 63310 := by
    unfold C
    simp [show (32768 * k + 21103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 63310) = 49152 * k + 31655 := by
    unfold C
    simp [show (98304 * k + 63310) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 31655) = 147456 * k + 94966 := by
    unfold C
    simp [show (49152 * k + 31655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 94966) = 73728 * k + 47483 := by
    unfold C
    simp [show (147456 * k + 94966) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 47483) = 221184 * k + 142450 := by
    unfold C
    simp [show (73728 * k + 47483) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 142450) = 110592 * k + 71225 := by
    unfold C
    simp [show (221184 * k + 142450) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 71225) = 331776 * k + 213676 := by
    unfold C
    simp [show (110592 * k + 71225) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 213676) = 165888 * k + 106838 := by
    unfold C
    simp [show (331776 * k + 213676) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 106838) = 82944 * k + 53419 := by
    unfold C
    simp [show (165888 * k + 106838) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 53419) = 248832 * k + 160258 := by
    unfold C
    simp [show (82944 * k + 53419) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 160258) = 124416 * k + 80129 := by
    unfold C
    simp [show (248832 * k + 160258) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 80129) = 373248 * k + 240388 := by
    unfold C
    simp [show (124416 * k + 80129) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 240388) = 186624 * k + 120194 := by
    unfold C
    simp [show (373248 * k + 240388) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 120194) = 93312 * k + 60097 := by
    unfold C
    simp [show (186624 * k + 120194) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 60097) = 279936 * k + 180292 := by
    unfold C
    simp [show (93312 * k + 60097) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 180292) = 139968 * k + 90146 := by
    unfold C
    simp [show (279936 * k + 180292) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 90146) = 69984 * k + 45073 := by
    unfold C
    simp [show (139968 * k + 90146) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 45073) = 209952 * k + 135220 := by
    unfold C
    simp [show (69984 * k + 45073) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 135220) = 104976 * k + 67610 := by
    unfold C
    simp [show (209952 * k + 135220) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 67610) = 52488 * k + 33805 := by
    unfold C
    simp [show (104976 * k + 67610) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 33805) = 157464 * k + 101416 := by
    unfold C
    simp [show (52488 * k + 33805) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 101416) = 78732 * k + 50708 := by
    unfold C
    simp [show (157464 * k + 101416) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 50708) = 39366 * k + 25354 := by
    unfold C
    simp [show (78732 * k + 50708) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 25354) = 19683 * k + 12677 := by
    unfold C
    simp [show (39366 * k + 25354) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 21103) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 21103)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_21223 : ∀ k : Nat, iterate (32768 * k + 21223) 24 = 19683 * k + 12749 ∧ 19683 * k + 12749 < 32768 * k + 21223 := by
  intro k
  have h1 : C (32768 * k + 21223) = 98304 * k + 63670 := by
    unfold C
    simp [show (32768 * k + 21223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 63670) = 49152 * k + 31835 := by
    unfold C
    simp [show (98304 * k + 63670) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 31835) = 147456 * k + 95506 := by
    unfold C
    simp [show (49152 * k + 31835) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 95506) = 73728 * k + 47753 := by
    unfold C
    simp [show (147456 * k + 95506) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 47753) = 221184 * k + 143260 := by
    unfold C
    simp [show (73728 * k + 47753) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 143260) = 110592 * k + 71630 := by
    unfold C
    simp [show (221184 * k + 143260) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 71630) = 55296 * k + 35815 := by
    unfold C
    simp [show (110592 * k + 71630) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 35815) = 165888 * k + 107446 := by
    unfold C
    simp [show (55296 * k + 35815) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 107446) = 82944 * k + 53723 := by
    unfold C
    simp [show (165888 * k + 107446) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 53723) = 248832 * k + 161170 := by
    unfold C
    simp [show (82944 * k + 53723) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 161170) = 124416 * k + 80585 := by
    unfold C
    simp [show (248832 * k + 161170) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 80585) = 373248 * k + 241756 := by
    unfold C
    simp [show (124416 * k + 80585) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 241756) = 186624 * k + 120878 := by
    unfold C
    simp [show (373248 * k + 241756) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 120878) = 93312 * k + 60439 := by
    unfold C
    simp [show (186624 * k + 120878) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 60439) = 279936 * k + 181318 := by
    unfold C
    simp [show (93312 * k + 60439) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 181318) = 139968 * k + 90659 := by
    unfold C
    simp [show (279936 * k + 181318) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 90659) = 419904 * k + 271978 := by
    unfold C
    simp [show (139968 * k + 90659) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 271978) = 209952 * k + 135989 := by
    unfold C
    simp [show (419904 * k + 271978) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 135989) = 629856 * k + 407968 := by
    unfold C
    simp [show (209952 * k + 135989) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 407968) = 314928 * k + 203984 := by
    unfold C
    simp [show (629856 * k + 407968) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 203984) = 157464 * k + 101992 := by
    unfold C
    simp [show (314928 * k + 203984) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 101992) = 78732 * k + 50996 := by
    unfold C
    simp [show (157464 * k + 101992) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 50996) = 39366 * k + 25498 := by
    unfold C
    simp [show (78732 * k + 50996) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 25498) = 19683 * k + 12749 := by
    unfold C
    simp [show (39366 * k + 25498) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 21223) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 21223)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_21471 : ∀ k : Nat, iterate (32768 * k + 21471) 24 = 19683 * k + 12898 ∧ 19683 * k + 12898 < 32768 * k + 21471 := by
  intro k
  have h1 : C (32768 * k + 21471) = 98304 * k + 64414 := by
    unfold C
    simp [show (32768 * k + 21471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 64414) = 49152 * k + 32207 := by
    unfold C
    simp [show (98304 * k + 64414) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 32207) = 147456 * k + 96622 := by
    unfold C
    simp [show (49152 * k + 32207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 96622) = 73728 * k + 48311 := by
    unfold C
    simp [show (147456 * k + 96622) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 48311) = 221184 * k + 144934 := by
    unfold C
    simp [show (73728 * k + 48311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 144934) = 110592 * k + 72467 := by
    unfold C
    simp [show (221184 * k + 144934) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 72467) = 331776 * k + 217402 := by
    unfold C
    simp [show (110592 * k + 72467) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 217402) = 165888 * k + 108701 := by
    unfold C
    simp [show (331776 * k + 217402) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 108701) = 497664 * k + 326104 := by
    unfold C
    simp [show (165888 * k + 108701) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 326104) = 248832 * k + 163052 := by
    unfold C
    simp [show (497664 * k + 326104) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 163052) = 124416 * k + 81526 := by
    unfold C
    simp [show (248832 * k + 163052) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 81526) = 62208 * k + 40763 := by
    unfold C
    simp [show (124416 * k + 81526) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 40763) = 186624 * k + 122290 := by
    unfold C
    simp [show (62208 * k + 40763) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 122290) = 93312 * k + 61145 := by
    unfold C
    simp [show (186624 * k + 122290) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 61145) = 279936 * k + 183436 := by
    unfold C
    simp [show (93312 * k + 61145) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 183436) = 139968 * k + 91718 := by
    unfold C
    simp [show (279936 * k + 183436) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 91718) = 69984 * k + 45859 := by
    unfold C
    simp [show (139968 * k + 91718) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 45859) = 209952 * k + 137578 := by
    unfold C
    simp [show (69984 * k + 45859) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 137578) = 104976 * k + 68789 := by
    unfold C
    simp [show (209952 * k + 137578) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 68789) = 314928 * k + 206368 := by
    unfold C
    simp [show (104976 * k + 68789) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 206368) = 157464 * k + 103184 := by
    unfold C
    simp [show (314928 * k + 206368) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 103184) = 78732 * k + 51592 := by
    unfold C
    simp [show (157464 * k + 103184) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 51592) = 39366 * k + 25796 := by
    unfold C
    simp [show (78732 * k + 51592) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 25796) = 19683 * k + 12898 := by
    unfold C
    simp [show (39366 * k + 25796) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 21471) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 21471)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_21727 : ∀ k : Nat, iterate (32768 * k + 21727) 24 = 19683 * k + 13052 ∧ 19683 * k + 13052 < 32768 * k + 21727 := by
  intro k
  have h1 : C (32768 * k + 21727) = 98304 * k + 65182 := by
    unfold C
    simp [show (32768 * k + 21727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 65182) = 49152 * k + 32591 := by
    unfold C
    simp [show (98304 * k + 65182) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 32591) = 147456 * k + 97774 := by
    unfold C
    simp [show (49152 * k + 32591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 97774) = 73728 * k + 48887 := by
    unfold C
    simp [show (147456 * k + 97774) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 48887) = 221184 * k + 146662 := by
    unfold C
    simp [show (73728 * k + 48887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 146662) = 110592 * k + 73331 := by
    unfold C
    simp [show (221184 * k + 146662) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 73331) = 331776 * k + 219994 := by
    unfold C
    simp [show (110592 * k + 73331) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 219994) = 165888 * k + 109997 := by
    unfold C
    simp [show (331776 * k + 219994) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 109997) = 497664 * k + 329992 := by
    unfold C
    simp [show (165888 * k + 109997) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 329992) = 248832 * k + 164996 := by
    unfold C
    simp [show (497664 * k + 329992) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 164996) = 124416 * k + 82498 := by
    unfold C
    simp [show (248832 * k + 164996) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 82498) = 62208 * k + 41249 := by
    unfold C
    simp [show (124416 * k + 82498) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 41249) = 186624 * k + 123748 := by
    unfold C
    simp [show (62208 * k + 41249) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 123748) = 93312 * k + 61874 := by
    unfold C
    simp [show (186624 * k + 123748) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 61874) = 46656 * k + 30937 := by
    unfold C
    simp [show (93312 * k + 61874) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 30937) = 139968 * k + 92812 := by
    unfold C
    simp [show (46656 * k + 30937) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 92812) = 69984 * k + 46406 := by
    unfold C
    simp [show (139968 * k + 92812) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 46406) = 34992 * k + 23203 := by
    unfold C
    simp [show (69984 * k + 46406) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 23203) = 104976 * k + 69610 := by
    unfold C
    simp [show (34992 * k + 23203) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 69610) = 52488 * k + 34805 := by
    unfold C
    simp [show (104976 * k + 69610) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 34805) = 157464 * k + 104416 := by
    unfold C
    simp [show (52488 * k + 34805) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 104416) = 78732 * k + 52208 := by
    unfold C
    simp [show (157464 * k + 104416) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 52208) = 39366 * k + 26104 := by
    unfold C
    simp [show (78732 * k + 52208) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 26104) = 19683 * k + 13052 := by
    unfold C
    simp [show (39366 * k + 26104) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 21727) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 21727)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_21807 : ∀ k : Nat, iterate (32768 * k + 21807) 24 = 19683 * k + 13100 ∧ 19683 * k + 13100 < 32768 * k + 21807 := by
  intro k
  have h1 : C (32768 * k + 21807) = 98304 * k + 65422 := by
    unfold C
    simp [show (32768 * k + 21807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 65422) = 49152 * k + 32711 := by
    unfold C
    simp [show (98304 * k + 65422) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 32711) = 147456 * k + 98134 := by
    unfold C
    simp [show (49152 * k + 32711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 98134) = 73728 * k + 49067 := by
    unfold C
    simp [show (147456 * k + 98134) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 49067) = 221184 * k + 147202 := by
    unfold C
    simp [show (73728 * k + 49067) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 147202) = 110592 * k + 73601 := by
    unfold C
    simp [show (221184 * k + 147202) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 73601) = 331776 * k + 220804 := by
    unfold C
    simp [show (110592 * k + 73601) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 220804) = 165888 * k + 110402 := by
    unfold C
    simp [show (331776 * k + 220804) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 110402) = 82944 * k + 55201 := by
    unfold C
    simp [show (165888 * k + 110402) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 55201) = 248832 * k + 165604 := by
    unfold C
    simp [show (82944 * k + 55201) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 165604) = 124416 * k + 82802 := by
    unfold C
    simp [show (248832 * k + 165604) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 82802) = 62208 * k + 41401 := by
    unfold C
    simp [show (124416 * k + 82802) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 41401) = 186624 * k + 124204 := by
    unfold C
    simp [show (62208 * k + 41401) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 124204) = 93312 * k + 62102 := by
    unfold C
    simp [show (186624 * k + 124204) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 62102) = 46656 * k + 31051 := by
    unfold C
    simp [show (93312 * k + 62102) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 31051) = 139968 * k + 93154 := by
    unfold C
    simp [show (46656 * k + 31051) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 93154) = 69984 * k + 46577 := by
    unfold C
    simp [show (139968 * k + 93154) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 46577) = 209952 * k + 139732 := by
    unfold C
    simp [show (69984 * k + 46577) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 139732) = 104976 * k + 69866 := by
    unfold C
    simp [show (209952 * k + 139732) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 69866) = 52488 * k + 34933 := by
    unfold C
    simp [show (104976 * k + 69866) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 34933) = 157464 * k + 104800 := by
    unfold C
    simp [show (52488 * k + 34933) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 104800) = 78732 * k + 52400 := by
    unfold C
    simp [show (157464 * k + 104800) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 52400) = 39366 * k + 26200 := by
    unfold C
    simp [show (78732 * k + 52400) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 26200) = 19683 * k + 13100 := by
    unfold C
    simp [show (39366 * k + 26200) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 21807) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 21807)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_22047 : ∀ k : Nat, iterate (32768 * k + 22047) 24 = 19683 * k + 13244 ∧ 19683 * k + 13244 < 32768 * k + 22047 := by
  intro k
  have h1 : C (32768 * k + 22047) = 98304 * k + 66142 := by
    unfold C
    simp [show (32768 * k + 22047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 66142) = 49152 * k + 33071 := by
    unfold C
    simp [show (98304 * k + 66142) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 33071) = 147456 * k + 99214 := by
    unfold C
    simp [show (49152 * k + 33071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 99214) = 73728 * k + 49607 := by
    unfold C
    simp [show (147456 * k + 99214) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 49607) = 221184 * k + 148822 := by
    unfold C
    simp [show (73728 * k + 49607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 148822) = 110592 * k + 74411 := by
    unfold C
    simp [show (221184 * k + 148822) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 74411) = 331776 * k + 223234 := by
    unfold C
    simp [show (110592 * k + 74411) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 223234) = 165888 * k + 111617 := by
    unfold C
    simp [show (331776 * k + 223234) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 111617) = 497664 * k + 334852 := by
    unfold C
    simp [show (165888 * k + 111617) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 334852) = 248832 * k + 167426 := by
    unfold C
    simp [show (497664 * k + 334852) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 167426) = 124416 * k + 83713 := by
    unfold C
    simp [show (248832 * k + 167426) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 83713) = 373248 * k + 251140 := by
    unfold C
    simp [show (124416 * k + 83713) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 251140) = 186624 * k + 125570 := by
    unfold C
    simp [show (373248 * k + 251140) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 125570) = 93312 * k + 62785 := by
    unfold C
    simp [show (186624 * k + 125570) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 62785) = 279936 * k + 188356 := by
    unfold C
    simp [show (93312 * k + 62785) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 188356) = 139968 * k + 94178 := by
    unfold C
    simp [show (279936 * k + 188356) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 94178) = 69984 * k + 47089 := by
    unfold C
    simp [show (139968 * k + 94178) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 47089) = 209952 * k + 141268 := by
    unfold C
    simp [show (69984 * k + 47089) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 141268) = 104976 * k + 70634 := by
    unfold C
    simp [show (209952 * k + 141268) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 70634) = 52488 * k + 35317 := by
    unfold C
    simp [show (104976 * k + 70634) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 35317) = 157464 * k + 105952 := by
    unfold C
    simp [show (52488 * k + 35317) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 105952) = 78732 * k + 52976 := by
    unfold C
    simp [show (157464 * k + 105952) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 52976) = 39366 * k + 26488 := by
    unfold C
    simp [show (78732 * k + 52976) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 26488) = 19683 * k + 13244 := by
    unfold C
    simp [show (39366 * k + 26488) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 22047) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 22047)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_22207 : ∀ k : Nat, iterate (32768 * k + 22207) 24 = 19683 * k + 13340 ∧ 19683 * k + 13340 < 32768 * k + 22207 := by
  intro k
  have h1 : C (32768 * k + 22207) = 98304 * k + 66622 := by
    unfold C
    simp [show (32768 * k + 22207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 66622) = 49152 * k + 33311 := by
    unfold C
    simp [show (98304 * k + 66622) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 33311) = 147456 * k + 99934 := by
    unfold C
    simp [show (49152 * k + 33311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 99934) = 73728 * k + 49967 := by
    unfold C
    simp [show (147456 * k + 99934) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 49967) = 221184 * k + 149902 := by
    unfold C
    simp [show (73728 * k + 49967) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 149902) = 110592 * k + 74951 := by
    unfold C
    simp [show (221184 * k + 149902) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 74951) = 331776 * k + 224854 := by
    unfold C
    simp [show (110592 * k + 74951) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 224854) = 165888 * k + 112427 := by
    unfold C
    simp [show (331776 * k + 224854) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 112427) = 497664 * k + 337282 := by
    unfold C
    simp [show (165888 * k + 112427) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 337282) = 248832 * k + 168641 := by
    unfold C
    simp [show (497664 * k + 337282) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 168641) = 746496 * k + 505924 := by
    unfold C
    simp [show (248832 * k + 168641) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 505924) = 373248 * k + 252962 := by
    unfold C
    simp [show (746496 * k + 505924) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 252962) = 186624 * k + 126481 := by
    unfold C
    simp [show (373248 * k + 252962) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 126481) = 559872 * k + 379444 := by
    unfold C
    simp [show (186624 * k + 126481) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 379444) = 279936 * k + 189722 := by
    unfold C
    simp [show (559872 * k + 379444) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 189722) = 139968 * k + 94861 := by
    unfold C
    simp [show (279936 * k + 189722) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 94861) = 419904 * k + 284584 := by
    unfold C
    simp [show (139968 * k + 94861) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 284584) = 209952 * k + 142292 := by
    unfold C
    simp [show (419904 * k + 284584) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 142292) = 104976 * k + 71146 := by
    unfold C
    simp [show (209952 * k + 142292) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 71146) = 52488 * k + 35573 := by
    unfold C
    simp [show (104976 * k + 71146) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 35573) = 157464 * k + 106720 := by
    unfold C
    simp [show (52488 * k + 35573) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 106720) = 78732 * k + 53360 := by
    unfold C
    simp [show (157464 * k + 106720) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 53360) = 39366 * k + 26680 := by
    unfold C
    simp [show (78732 * k + 53360) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 26680) = 19683 * k + 13340 := by
    unfold C
    simp [show (39366 * k + 26680) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 22207) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 22207)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_22655 : ∀ k : Nat, iterate (32768 * k + 22655) 24 = 19683 * k + 13609 ∧ 19683 * k + 13609 < 32768 * k + 22655 := by
  intro k
  have h1 : C (32768 * k + 22655) = 98304 * k + 67966 := by
    unfold C
    simp [show (32768 * k + 22655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 67966) = 49152 * k + 33983 := by
    unfold C
    simp [show (98304 * k + 67966) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 33983) = 147456 * k + 101950 := by
    unfold C
    simp [show (49152 * k + 33983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 101950) = 73728 * k + 50975 := by
    unfold C
    simp [show (147456 * k + 101950) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 50975) = 221184 * k + 152926 := by
    unfold C
    simp [show (73728 * k + 50975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 152926) = 110592 * k + 76463 := by
    unfold C
    simp [show (221184 * k + 152926) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 76463) = 331776 * k + 229390 := by
    unfold C
    simp [show (110592 * k + 76463) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 229390) = 165888 * k + 114695 := by
    unfold C
    simp [show (331776 * k + 229390) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 114695) = 497664 * k + 344086 := by
    unfold C
    simp [show (165888 * k + 114695) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 344086) = 248832 * k + 172043 := by
    unfold C
    simp [show (497664 * k + 344086) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 172043) = 746496 * k + 516130 := by
    unfold C
    simp [show (248832 * k + 172043) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 516130) = 373248 * k + 258065 := by
    unfold C
    simp [show (746496 * k + 516130) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 258065) = 1119744 * k + 774196 := by
    unfold C
    simp [show (373248 * k + 258065) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 774196) = 559872 * k + 387098 := by
    unfold C
    simp [show (1119744 * k + 774196) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 387098) = 279936 * k + 193549 := by
    unfold C
    simp [show (559872 * k + 387098) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 193549) = 839808 * k + 580648 := by
    unfold C
    simp [show (279936 * k + 193549) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 580648) = 419904 * k + 290324 := by
    unfold C
    simp [show (839808 * k + 580648) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 290324) = 209952 * k + 145162 := by
    unfold C
    simp [show (419904 * k + 290324) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 145162) = 104976 * k + 72581 := by
    unfold C
    simp [show (209952 * k + 145162) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 72581) = 314928 * k + 217744 := by
    unfold C
    simp [show (104976 * k + 72581) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 217744) = 157464 * k + 108872 := by
    unfold C
    simp [show (314928 * k + 217744) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 108872) = 78732 * k + 54436 := by
    unfold C
    simp [show (157464 * k + 108872) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 54436) = 39366 * k + 27218 := by
    unfold C
    simp [show (78732 * k + 54436) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 27218) = 19683 * k + 13609 := by
    unfold C
    simp [show (39366 * k + 27218) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 22655) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 22655)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_21103
#print axioms descent_mod32768_21223
#print axioms descent_mod32768_21471
#print axioms descent_mod32768_21727
#print axioms descent_mod32768_21807
#print axioms descent_mod32768_22047
#print axioms descent_mod32768_22207
#print axioms descent_mod32768_22655

end CollatzM15ShardO
