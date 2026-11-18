import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardH

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_10655 : ∀ k : Nat, iterate (32768 * k + 10655) 24 = 19683 * k + 6401 ∧ 19683 * k + 6401 < 32768 * k + 10655 := by
  intro k
  have h1 : C (32768 * k + 10655) = 98304 * k + 31966 := by
    unfold C
    simp [show (32768 * k + 10655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 31966) = 49152 * k + 15983 := by
    unfold C
    simp [show (98304 * k + 31966) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 15983) = 147456 * k + 47950 := by
    unfold C
    simp [show (49152 * k + 15983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 47950) = 73728 * k + 23975 := by
    unfold C
    simp [show (147456 * k + 47950) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 23975) = 221184 * k + 71926 := by
    unfold C
    simp [show (73728 * k + 23975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 71926) = 110592 * k + 35963 := by
    unfold C
    simp [show (221184 * k + 71926) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 35963) = 331776 * k + 107890 := by
    unfold C
    simp [show (110592 * k + 35963) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 107890) = 165888 * k + 53945 := by
    unfold C
    simp [show (331776 * k + 107890) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 53945) = 497664 * k + 161836 := by
    unfold C
    simp [show (165888 * k + 53945) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 161836) = 248832 * k + 80918 := by
    unfold C
    simp [show (497664 * k + 161836) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 80918) = 124416 * k + 40459 := by
    unfold C
    simp [show (248832 * k + 80918) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 40459) = 373248 * k + 121378 := by
    unfold C
    simp [show (124416 * k + 40459) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 121378) = 186624 * k + 60689 := by
    unfold C
    simp [show (373248 * k + 121378) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 60689) = 559872 * k + 182068 := by
    unfold C
    simp [show (186624 * k + 60689) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 182068) = 279936 * k + 91034 := by
    unfold C
    simp [show (559872 * k + 182068) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 91034) = 139968 * k + 45517 := by
    unfold C
    simp [show (279936 * k + 91034) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 45517) = 419904 * k + 136552 := by
    unfold C
    simp [show (139968 * k + 45517) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 136552) = 209952 * k + 68276 := by
    unfold C
    simp [show (419904 * k + 136552) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 68276) = 104976 * k + 34138 := by
    unfold C
    simp [show (209952 * k + 68276) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 34138) = 52488 * k + 17069 := by
    unfold C
    simp [show (104976 * k + 34138) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 17069) = 157464 * k + 51208 := by
    unfold C
    simp [show (52488 * k + 17069) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 51208) = 78732 * k + 25604 := by
    unfold C
    simp [show (157464 * k + 51208) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 25604) = 39366 * k + 12802 := by
    unfold C
    simp [show (78732 * k + 25604) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 12802) = 19683 * k + 6401 := by
    unfold C
    simp [show (39366 * k + 12802) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 10655) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 10655)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_10735 : ∀ k : Nat, iterate (32768 * k + 10735) 24 = 19683 * k + 6449 ∧ 19683 * k + 6449 < 32768 * k + 10735 := by
  intro k
  have h1 : C (32768 * k + 10735) = 98304 * k + 32206 := by
    unfold C
    simp [show (32768 * k + 10735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 32206) = 49152 * k + 16103 := by
    unfold C
    simp [show (98304 * k + 32206) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 16103) = 147456 * k + 48310 := by
    unfold C
    simp [show (49152 * k + 16103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 48310) = 73728 * k + 24155 := by
    unfold C
    simp [show (147456 * k + 48310) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 24155) = 221184 * k + 72466 := by
    unfold C
    simp [show (73728 * k + 24155) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 72466) = 110592 * k + 36233 := by
    unfold C
    simp [show (221184 * k + 72466) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 36233) = 331776 * k + 108700 := by
    unfold C
    simp [show (110592 * k + 36233) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 108700) = 165888 * k + 54350 := by
    unfold C
    simp [show (331776 * k + 108700) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 54350) = 82944 * k + 27175 := by
    unfold C
    simp [show (165888 * k + 54350) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 27175) = 248832 * k + 81526 := by
    unfold C
    simp [show (82944 * k + 27175) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 81526) = 124416 * k + 40763 := by
    unfold C
    simp [show (248832 * k + 81526) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 40763) = 373248 * k + 122290 := by
    unfold C
    simp [show (124416 * k + 40763) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 122290) = 186624 * k + 61145 := by
    unfold C
    simp [show (373248 * k + 122290) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 61145) = 559872 * k + 183436 := by
    unfold C
    simp [show (186624 * k + 61145) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 183436) = 279936 * k + 91718 := by
    unfold C
    simp [show (559872 * k + 183436) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 91718) = 139968 * k + 45859 := by
    unfold C
    simp [show (279936 * k + 91718) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 45859) = 419904 * k + 137578 := by
    unfold C
    simp [show (139968 * k + 45859) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 137578) = 209952 * k + 68789 := by
    unfold C
    simp [show (419904 * k + 137578) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 68789) = 629856 * k + 206368 := by
    unfold C
    simp [show (209952 * k + 68789) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 206368) = 314928 * k + 103184 := by
    unfold C
    simp [show (629856 * k + 206368) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 103184) = 157464 * k + 51592 := by
    unfold C
    simp [show (314928 * k + 103184) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 51592) = 78732 * k + 25796 := by
    unfold C
    simp [show (157464 * k + 51592) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 25796) = 39366 * k + 12898 := by
    unfold C
    simp [show (78732 * k + 25796) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 12898) = 19683 * k + 6449 := by
    unfold C
    simp [show (39366 * k + 12898) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 10735) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 10735)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_10863 : ∀ k : Nat, iterate (32768 * k + 10863) 24 = 19683 * k + 6526 ∧ 19683 * k + 6526 < 32768 * k + 10863 := by
  intro k
  have h1 : C (32768 * k + 10863) = 98304 * k + 32590 := by
    unfold C
    simp [show (32768 * k + 10863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 32590) = 49152 * k + 16295 := by
    unfold C
    simp [show (98304 * k + 32590) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 16295) = 147456 * k + 48886 := by
    unfold C
    simp [show (49152 * k + 16295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 48886) = 73728 * k + 24443 := by
    unfold C
    simp [show (147456 * k + 48886) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 24443) = 221184 * k + 73330 := by
    unfold C
    simp [show (73728 * k + 24443) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 73330) = 110592 * k + 36665 := by
    unfold C
    simp [show (221184 * k + 73330) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 36665) = 331776 * k + 109996 := by
    unfold C
    simp [show (110592 * k + 36665) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 109996) = 165888 * k + 54998 := by
    unfold C
    simp [show (331776 * k + 109996) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 54998) = 82944 * k + 27499 := by
    unfold C
    simp [show (165888 * k + 54998) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 27499) = 248832 * k + 82498 := by
    unfold C
    simp [show (82944 * k + 27499) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 82498) = 124416 * k + 41249 := by
    unfold C
    simp [show (248832 * k + 82498) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 41249) = 373248 * k + 123748 := by
    unfold C
    simp [show (124416 * k + 41249) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 123748) = 186624 * k + 61874 := by
    unfold C
    simp [show (373248 * k + 123748) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 61874) = 93312 * k + 30937 := by
    unfold C
    simp [show (186624 * k + 61874) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 30937) = 279936 * k + 92812 := by
    unfold C
    simp [show (93312 * k + 30937) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 92812) = 139968 * k + 46406 := by
    unfold C
    simp [show (279936 * k + 92812) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 46406) = 69984 * k + 23203 := by
    unfold C
    simp [show (139968 * k + 46406) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 23203) = 209952 * k + 69610 := by
    unfold C
    simp [show (69984 * k + 23203) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 69610) = 104976 * k + 34805 := by
    unfold C
    simp [show (209952 * k + 69610) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 34805) = 314928 * k + 104416 := by
    unfold C
    simp [show (104976 * k + 34805) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 104416) = 157464 * k + 52208 := by
    unfold C
    simp [show (314928 * k + 104416) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 52208) = 78732 * k + 26104 := by
    unfold C
    simp [show (157464 * k + 52208) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 26104) = 39366 * k + 13052 := by
    unfold C
    simp [show (78732 * k + 26104) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 13052) = 19683 * k + 6526 := by
    unfold C
    simp [show (39366 * k + 13052) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 10863) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 10863)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_11079 : ∀ k : Nat, iterate (32768 * k + 11079) 24 = 19683 * k + 6656 ∧ 19683 * k + 6656 < 32768 * k + 11079 := by
  intro k
  have h1 : C (32768 * k + 11079) = 98304 * k + 33238 := by
    unfold C
    simp [show (32768 * k + 11079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 33238) = 49152 * k + 16619 := by
    unfold C
    simp [show (98304 * k + 33238) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 16619) = 147456 * k + 49858 := by
    unfold C
    simp [show (49152 * k + 16619) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 49858) = 73728 * k + 24929 := by
    unfold C
    simp [show (147456 * k + 49858) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 24929) = 221184 * k + 74788 := by
    unfold C
    simp [show (73728 * k + 24929) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 74788) = 110592 * k + 37394 := by
    unfold C
    simp [show (221184 * k + 74788) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 37394) = 55296 * k + 18697 := by
    unfold C
    simp [show (110592 * k + 37394) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 18697) = 165888 * k + 56092 := by
    unfold C
    simp [show (55296 * k + 18697) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 56092) = 82944 * k + 28046 := by
    unfold C
    simp [show (165888 * k + 56092) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 28046) = 41472 * k + 14023 := by
    unfold C
    simp [show (82944 * k + 28046) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 14023) = 124416 * k + 42070 := by
    unfold C
    simp [show (41472 * k + 14023) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 42070) = 62208 * k + 21035 := by
    unfold C
    simp [show (124416 * k + 42070) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 21035) = 186624 * k + 63106 := by
    unfold C
    simp [show (62208 * k + 21035) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 63106) = 93312 * k + 31553 := by
    unfold C
    simp [show (186624 * k + 63106) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 31553) = 279936 * k + 94660 := by
    unfold C
    simp [show (93312 * k + 31553) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 94660) = 139968 * k + 47330 := by
    unfold C
    simp [show (279936 * k + 94660) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 47330) = 69984 * k + 23665 := by
    unfold C
    simp [show (139968 * k + 47330) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 23665) = 209952 * k + 70996 := by
    unfold C
    simp [show (69984 * k + 23665) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 70996) = 104976 * k + 35498 := by
    unfold C
    simp [show (209952 * k + 70996) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 35498) = 52488 * k + 17749 := by
    unfold C
    simp [show (104976 * k + 35498) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 17749) = 157464 * k + 53248 := by
    unfold C
    simp [show (52488 * k + 17749) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 53248) = 78732 * k + 26624 := by
    unfold C
    simp [show (157464 * k + 53248) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 26624) = 39366 * k + 13312 := by
    unfold C
    simp [show (78732 * k + 26624) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 13312) = 19683 * k + 6656 := by
    unfold C
    simp [show (39366 * k + 13312) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 11079) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 11079)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_11119 : ∀ k : Nat, iterate (32768 * k + 11119) 24 = 19683 * k + 6680 ∧ 19683 * k + 6680 < 32768 * k + 11119 := by
  intro k
  have h1 : C (32768 * k + 11119) = 98304 * k + 33358 := by
    unfold C
    simp [show (32768 * k + 11119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 33358) = 49152 * k + 16679 := by
    unfold C
    simp [show (98304 * k + 33358) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 16679) = 147456 * k + 50038 := by
    unfold C
    simp [show (49152 * k + 16679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 50038) = 73728 * k + 25019 := by
    unfold C
    simp [show (147456 * k + 50038) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 25019) = 221184 * k + 75058 := by
    unfold C
    simp [show (73728 * k + 25019) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 75058) = 110592 * k + 37529 := by
    unfold C
    simp [show (221184 * k + 75058) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 37529) = 331776 * k + 112588 := by
    unfold C
    simp [show (110592 * k + 37529) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 112588) = 165888 * k + 56294 := by
    unfold C
    simp [show (331776 * k + 112588) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 56294) = 82944 * k + 28147 := by
    unfold C
    simp [show (165888 * k + 56294) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 28147) = 248832 * k + 84442 := by
    unfold C
    simp [show (82944 * k + 28147) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 84442) = 124416 * k + 42221 := by
    unfold C
    simp [show (248832 * k + 84442) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 42221) = 373248 * k + 126664 := by
    unfold C
    simp [show (124416 * k + 42221) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 126664) = 186624 * k + 63332 := by
    unfold C
    simp [show (373248 * k + 126664) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 63332) = 93312 * k + 31666 := by
    unfold C
    simp [show (186624 * k + 63332) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 31666) = 46656 * k + 15833 := by
    unfold C
    simp [show (93312 * k + 31666) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 15833) = 139968 * k + 47500 := by
    unfold C
    simp [show (46656 * k + 15833) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 47500) = 69984 * k + 23750 := by
    unfold C
    simp [show (139968 * k + 47500) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 23750) = 34992 * k + 11875 := by
    unfold C
    simp [show (69984 * k + 23750) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 11875) = 104976 * k + 35626 := by
    unfold C
    simp [show (34992 * k + 11875) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 35626) = 52488 * k + 17813 := by
    unfold C
    simp [show (104976 * k + 35626) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 17813) = 157464 * k + 53440 := by
    unfold C
    simp [show (52488 * k + 17813) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 53440) = 78732 * k + 26720 := by
    unfold C
    simp [show (157464 * k + 53440) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 26720) = 39366 * k + 13360 := by
    unfold C
    simp [show (78732 * k + 26720) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 13360) = 19683 * k + 6680 := by
    unfold C
    simp [show (39366 * k + 13360) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 11119) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 11119)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_11567 : ∀ k : Nat, iterate (32768 * k + 11567) 24 = 19683 * k + 6949 ∧ 19683 * k + 6949 < 32768 * k + 11567 := by
  intro k
  have h1 : C (32768 * k + 11567) = 98304 * k + 34702 := by
    unfold C
    simp [show (32768 * k + 11567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 34702) = 49152 * k + 17351 := by
    unfold C
    simp [show (98304 * k + 34702) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 17351) = 147456 * k + 52054 := by
    unfold C
    simp [show (49152 * k + 17351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 52054) = 73728 * k + 26027 := by
    unfold C
    simp [show (147456 * k + 52054) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 26027) = 221184 * k + 78082 := by
    unfold C
    simp [show (73728 * k + 26027) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 78082) = 110592 * k + 39041 := by
    unfold C
    simp [show (221184 * k + 78082) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 39041) = 331776 * k + 117124 := by
    unfold C
    simp [show (110592 * k + 39041) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 117124) = 165888 * k + 58562 := by
    unfold C
    simp [show (331776 * k + 117124) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 58562) = 82944 * k + 29281 := by
    unfold C
    simp [show (165888 * k + 58562) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 29281) = 248832 * k + 87844 := by
    unfold C
    simp [show (82944 * k + 29281) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 87844) = 124416 * k + 43922 := by
    unfold C
    simp [show (248832 * k + 87844) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 43922) = 62208 * k + 21961 := by
    unfold C
    simp [show (124416 * k + 43922) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 21961) = 186624 * k + 65884 := by
    unfold C
    simp [show (62208 * k + 21961) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 65884) = 93312 * k + 32942 := by
    unfold C
    simp [show (186624 * k + 65884) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 32942) = 46656 * k + 16471 := by
    unfold C
    simp [show (93312 * k + 32942) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 16471) = 139968 * k + 49414 := by
    unfold C
    simp [show (46656 * k + 16471) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 49414) = 69984 * k + 24707 := by
    unfold C
    simp [show (139968 * k + 49414) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 24707) = 209952 * k + 74122 := by
    unfold C
    simp [show (69984 * k + 24707) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 74122) = 104976 * k + 37061 := by
    unfold C
    simp [show (209952 * k + 74122) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 37061) = 314928 * k + 111184 := by
    unfold C
    simp [show (104976 * k + 37061) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 111184) = 157464 * k + 55592 := by
    unfold C
    simp [show (314928 * k + 111184) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 55592) = 78732 * k + 27796 := by
    unfold C
    simp [show (157464 * k + 55592) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 27796) = 39366 * k + 13898 := by
    unfold C
    simp [show (78732 * k + 27796) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 13898) = 19683 * k + 6949 := by
    unfold C
    simp [show (39366 * k + 13898) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 11567) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 11567)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_11679 : ∀ k : Nat, iterate (32768 * k + 11679) 24 = 19683 * k + 7016 ∧ 19683 * k + 7016 < 32768 * k + 11679 := by
  intro k
  have h1 : C (32768 * k + 11679) = 98304 * k + 35038 := by
    unfold C
    simp [show (32768 * k + 11679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 35038) = 49152 * k + 17519 := by
    unfold C
    simp [show (98304 * k + 35038) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 17519) = 147456 * k + 52558 := by
    unfold C
    simp [show (49152 * k + 17519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 52558) = 73728 * k + 26279 := by
    unfold C
    simp [show (147456 * k + 52558) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 26279) = 221184 * k + 78838 := by
    unfold C
    simp [show (73728 * k + 26279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 78838) = 110592 * k + 39419 := by
    unfold C
    simp [show (221184 * k + 78838) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 39419) = 331776 * k + 118258 := by
    unfold C
    simp [show (110592 * k + 39419) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 118258) = 165888 * k + 59129 := by
    unfold C
    simp [show (331776 * k + 118258) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 59129) = 497664 * k + 177388 := by
    unfold C
    simp [show (165888 * k + 59129) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 177388) = 248832 * k + 88694 := by
    unfold C
    simp [show (497664 * k + 177388) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 88694) = 124416 * k + 44347 := by
    unfold C
    simp [show (248832 * k + 88694) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 44347) = 373248 * k + 133042 := by
    unfold C
    simp [show (124416 * k + 44347) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 133042) = 186624 * k + 66521 := by
    unfold C
    simp [show (373248 * k + 133042) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 66521) = 559872 * k + 199564 := by
    unfold C
    simp [show (186624 * k + 66521) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 199564) = 279936 * k + 99782 := by
    unfold C
    simp [show (559872 * k + 199564) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 99782) = 139968 * k + 49891 := by
    unfold C
    simp [show (279936 * k + 99782) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 49891) = 419904 * k + 149674 := by
    unfold C
    simp [show (139968 * k + 49891) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 149674) = 209952 * k + 74837 := by
    unfold C
    simp [show (419904 * k + 149674) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 74837) = 629856 * k + 224512 := by
    unfold C
    simp [show (209952 * k + 74837) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 224512) = 314928 * k + 112256 := by
    unfold C
    simp [show (629856 * k + 224512) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 112256) = 157464 * k + 56128 := by
    unfold C
    simp [show (314928 * k + 112256) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 56128) = 78732 * k + 28064 := by
    unfold C
    simp [show (157464 * k + 56128) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 28064) = 39366 * k + 14032 := by
    unfold C
    simp [show (78732 * k + 28064) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 14032) = 19683 * k + 7016 := by
    unfold C
    simp [show (39366 * k + 14032) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 11679) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 11679)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_11807 : ∀ k : Nat, iterate (32768 * k + 11807) 24 = 19683 * k + 7093 ∧ 19683 * k + 7093 < 32768 * k + 11807 := by
  intro k
  have h1 : C (32768 * k + 11807) = 98304 * k + 35422 := by
    unfold C
    simp [show (32768 * k + 11807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 35422) = 49152 * k + 17711 := by
    unfold C
    simp [show (98304 * k + 35422) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 17711) = 147456 * k + 53134 := by
    unfold C
    simp [show (49152 * k + 17711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 53134) = 73728 * k + 26567 := by
    unfold C
    simp [show (147456 * k + 53134) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 26567) = 221184 * k + 79702 := by
    unfold C
    simp [show (73728 * k + 26567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 79702) = 110592 * k + 39851 := by
    unfold C
    simp [show (221184 * k + 79702) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 39851) = 331776 * k + 119554 := by
    unfold C
    simp [show (110592 * k + 39851) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 119554) = 165888 * k + 59777 := by
    unfold C
    simp [show (331776 * k + 119554) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 59777) = 497664 * k + 179332 := by
    unfold C
    simp [show (165888 * k + 59777) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 179332) = 248832 * k + 89666 := by
    unfold C
    simp [show (497664 * k + 179332) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 89666) = 124416 * k + 44833 := by
    unfold C
    simp [show (248832 * k + 89666) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 44833) = 373248 * k + 134500 := by
    unfold C
    simp [show (124416 * k + 44833) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 134500) = 186624 * k + 67250 := by
    unfold C
    simp [show (373248 * k + 134500) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 67250) = 93312 * k + 33625 := by
    unfold C
    simp [show (186624 * k + 67250) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 33625) = 279936 * k + 100876 := by
    unfold C
    simp [show (93312 * k + 33625) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 100876) = 139968 * k + 50438 := by
    unfold C
    simp [show (279936 * k + 100876) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 50438) = 69984 * k + 25219 := by
    unfold C
    simp [show (139968 * k + 50438) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 25219) = 209952 * k + 75658 := by
    unfold C
    simp [show (69984 * k + 25219) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 75658) = 104976 * k + 37829 := by
    unfold C
    simp [show (209952 * k + 75658) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 37829) = 314928 * k + 113488 := by
    unfold C
    simp [show (104976 * k + 37829) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 113488) = 157464 * k + 56744 := by
    unfold C
    simp [show (314928 * k + 113488) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 56744) = 78732 * k + 28372 := by
    unfold C
    simp [show (157464 * k + 56744) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 28372) = 39366 * k + 14186 := by
    unfold C
    simp [show (78732 * k + 28372) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 14186) = 19683 * k + 7093 := by
    unfold C
    simp [show (39366 * k + 14186) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 11807) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 11807)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_10655
#print axioms descent_mod32768_10735
#print axioms descent_mod32768_10863
#print axioms descent_mod32768_11079
#print axioms descent_mod32768_11119
#print axioms descent_mod32768_11567
#print axioms descent_mod32768_11679
#print axioms descent_mod32768_11807

end CollatzM15ShardH
