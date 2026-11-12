import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardG

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_9087 : ∀ k : Nat, iterate (32768 * k + 9087) 24 = 19683 * k + 5459 ∧ 19683 * k + 5459 < 32768 * k + 9087 := by
  intro k
  have h1 : C (32768 * k + 9087) = 98304 * k + 27262 := by
    unfold C
    simp [show (32768 * k + 9087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 27262) = 49152 * k + 13631 := by
    unfold C
    simp [show (98304 * k + 27262) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 13631) = 147456 * k + 40894 := by
    unfold C
    simp [show (49152 * k + 13631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 40894) = 73728 * k + 20447 := by
    unfold C
    simp [show (147456 * k + 40894) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 20447) = 221184 * k + 61342 := by
    unfold C
    simp [show (73728 * k + 20447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 61342) = 110592 * k + 30671 := by
    unfold C
    simp [show (221184 * k + 61342) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 30671) = 331776 * k + 92014 := by
    unfold C
    simp [show (110592 * k + 30671) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 92014) = 165888 * k + 46007 := by
    unfold C
    simp [show (331776 * k + 92014) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 46007) = 497664 * k + 138022 := by
    unfold C
    simp [show (165888 * k + 46007) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 138022) = 248832 * k + 69011 := by
    unfold C
    simp [show (497664 * k + 138022) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 69011) = 746496 * k + 207034 := by
    unfold C
    simp [show (248832 * k + 69011) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 207034) = 373248 * k + 103517 := by
    unfold C
    simp [show (746496 * k + 207034) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 103517) = 1119744 * k + 310552 := by
    unfold C
    simp [show (373248 * k + 103517) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 310552) = 559872 * k + 155276 := by
    unfold C
    simp [show (1119744 * k + 310552) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 155276) = 279936 * k + 77638 := by
    unfold C
    simp [show (559872 * k + 155276) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 77638) = 139968 * k + 38819 := by
    unfold C
    simp [show (279936 * k + 77638) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 38819) = 419904 * k + 116458 := by
    unfold C
    simp [show (139968 * k + 38819) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 116458) = 209952 * k + 58229 := by
    unfold C
    simp [show (419904 * k + 116458) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 58229) = 629856 * k + 174688 := by
    unfold C
    simp [show (209952 * k + 58229) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 174688) = 314928 * k + 87344 := by
    unfold C
    simp [show (629856 * k + 174688) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 87344) = 157464 * k + 43672 := by
    unfold C
    simp [show (314928 * k + 87344) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 43672) = 78732 * k + 21836 := by
    unfold C
    simp [show (157464 * k + 43672) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 21836) = 39366 * k + 10918 := by
    unfold C
    simp [show (78732 * k + 21836) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 10918) = 19683 * k + 5459 := by
    unfold C
    simp [show (39366 * k + 10918) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 9087) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 9087)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_9371 : ∀ k : Nat, iterate (32768 * k + 9371) 24 = 19683 * k + 5630 ∧ 19683 * k + 5630 < 32768 * k + 9371 := by
  intro k
  have h1 : C (32768 * k + 9371) = 98304 * k + 28114 := by
    unfold C
    simp [show (32768 * k + 9371) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 28114) = 49152 * k + 14057 := by
    unfold C
    simp [show (98304 * k + 28114) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 14057) = 147456 * k + 42172 := by
    unfold C
    simp [show (49152 * k + 14057) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 42172) = 73728 * k + 21086 := by
    unfold C
    simp [show (147456 * k + 42172) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 21086) = 36864 * k + 10543 := by
    unfold C
    simp [show (73728 * k + 21086) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 10543) = 110592 * k + 31630 := by
    unfold C
    simp [show (36864 * k + 10543) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 31630) = 55296 * k + 15815 := by
    unfold C
    simp [show (110592 * k + 31630) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 15815) = 165888 * k + 47446 := by
    unfold C
    simp [show (55296 * k + 15815) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 47446) = 82944 * k + 23723 := by
    unfold C
    simp [show (165888 * k + 47446) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 23723) = 248832 * k + 71170 := by
    unfold C
    simp [show (82944 * k + 23723) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 71170) = 124416 * k + 35585 := by
    unfold C
    simp [show (248832 * k + 71170) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 35585) = 373248 * k + 106756 := by
    unfold C
    simp [show (124416 * k + 35585) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 106756) = 186624 * k + 53378 := by
    unfold C
    simp [show (373248 * k + 106756) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 53378) = 93312 * k + 26689 := by
    unfold C
    simp [show (186624 * k + 53378) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 26689) = 279936 * k + 80068 := by
    unfold C
    simp [show (93312 * k + 26689) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 80068) = 139968 * k + 40034 := by
    unfold C
    simp [show (279936 * k + 80068) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 40034) = 69984 * k + 20017 := by
    unfold C
    simp [show (139968 * k + 40034) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 20017) = 209952 * k + 60052 := by
    unfold C
    simp [show (69984 * k + 20017) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 60052) = 104976 * k + 30026 := by
    unfold C
    simp [show (209952 * k + 60052) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 30026) = 52488 * k + 15013 := by
    unfold C
    simp [show (104976 * k + 30026) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 15013) = 157464 * k + 45040 := by
    unfold C
    simp [show (52488 * k + 15013) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 45040) = 78732 * k + 22520 := by
    unfold C
    simp [show (157464 * k + 45040) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 22520) = 39366 * k + 11260 := by
    unfold C
    simp [show (78732 * k + 22520) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 11260) = 19683 * k + 5630 := by
    unfold C
    simp [show (39366 * k + 11260) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 9371) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 9371)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_9375 : ∀ k : Nat, iterate (32768 * k + 9375) 24 = 19683 * k + 5632 ∧ 19683 * k + 5632 < 32768 * k + 9375 := by
  intro k
  have h1 : C (32768 * k + 9375) = 98304 * k + 28126 := by
    unfold C
    simp [show (32768 * k + 9375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 28126) = 49152 * k + 14063 := by
    unfold C
    simp [show (98304 * k + 28126) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 14063) = 147456 * k + 42190 := by
    unfold C
    simp [show (49152 * k + 14063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 42190) = 73728 * k + 21095 := by
    unfold C
    simp [show (147456 * k + 42190) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 21095) = 221184 * k + 63286 := by
    unfold C
    simp [show (73728 * k + 21095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 63286) = 110592 * k + 31643 := by
    unfold C
    simp [show (221184 * k + 63286) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 31643) = 331776 * k + 94930 := by
    unfold C
    simp [show (110592 * k + 31643) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 94930) = 165888 * k + 47465 := by
    unfold C
    simp [show (331776 * k + 94930) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 47465) = 497664 * k + 142396 := by
    unfold C
    simp [show (165888 * k + 47465) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 142396) = 248832 * k + 71198 := by
    unfold C
    simp [show (497664 * k + 142396) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 71198) = 124416 * k + 35599 := by
    unfold C
    simp [show (248832 * k + 71198) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 35599) = 373248 * k + 106798 := by
    unfold C
    simp [show (124416 * k + 35599) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 106798) = 186624 * k + 53399 := by
    unfold C
    simp [show (373248 * k + 106798) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 53399) = 559872 * k + 160198 := by
    unfold C
    simp [show (186624 * k + 53399) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 160198) = 279936 * k + 80099 := by
    unfold C
    simp [show (559872 * k + 160198) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 80099) = 839808 * k + 240298 := by
    unfold C
    simp [show (279936 * k + 80099) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 240298) = 419904 * k + 120149 := by
    unfold C
    simp [show (839808 * k + 240298) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 120149) = 1259712 * k + 360448 := by
    unfold C
    simp [show (419904 * k + 120149) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1259712 * k + 360448) = 629856 * k + 180224 := by
    unfold C
    simp [show (1259712 * k + 360448) % 2 = 0 by omega]
    omega
  have h20 : C (629856 * k + 180224) = 314928 * k + 90112 := by
    unfold C
    simp [show (629856 * k + 180224) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 90112) = 157464 * k + 45056 := by
    unfold C
    simp [show (314928 * k + 90112) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 45056) = 78732 * k + 22528 := by
    unfold C
    simp [show (157464 * k + 45056) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 22528) = 39366 * k + 11264 := by
    unfold C
    simp [show (78732 * k + 22528) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 11264) = 19683 * k + 5632 := by
    unfold C
    simp [show (39366 * k + 11264) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 9375) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 9375)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_9679 : ∀ k : Nat, iterate (32768 * k + 9679) 24 = 19683 * k + 5815 ∧ 19683 * k + 5815 < 32768 * k + 9679 := by
  intro k
  have h1 : C (32768 * k + 9679) = 98304 * k + 29038 := by
    unfold C
    simp [show (32768 * k + 9679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 29038) = 49152 * k + 14519 := by
    unfold C
    simp [show (98304 * k + 29038) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 14519) = 147456 * k + 43558 := by
    unfold C
    simp [show (49152 * k + 14519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 43558) = 73728 * k + 21779 := by
    unfold C
    simp [show (147456 * k + 43558) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 21779) = 221184 * k + 65338 := by
    unfold C
    simp [show (73728 * k + 21779) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 65338) = 110592 * k + 32669 := by
    unfold C
    simp [show (221184 * k + 65338) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 32669) = 331776 * k + 98008 := by
    unfold C
    simp [show (110592 * k + 32669) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 98008) = 165888 * k + 49004 := by
    unfold C
    simp [show (331776 * k + 98008) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 49004) = 82944 * k + 24502 := by
    unfold C
    simp [show (165888 * k + 49004) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 24502) = 41472 * k + 12251 := by
    unfold C
    simp [show (82944 * k + 24502) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 12251) = 124416 * k + 36754 := by
    unfold C
    simp [show (41472 * k + 12251) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 36754) = 62208 * k + 18377 := by
    unfold C
    simp [show (124416 * k + 36754) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 18377) = 186624 * k + 55132 := by
    unfold C
    simp [show (62208 * k + 18377) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 55132) = 93312 * k + 27566 := by
    unfold C
    simp [show (186624 * k + 55132) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 27566) = 46656 * k + 13783 := by
    unfold C
    simp [show (93312 * k + 27566) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 13783) = 139968 * k + 41350 := by
    unfold C
    simp [show (46656 * k + 13783) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 41350) = 69984 * k + 20675 := by
    unfold C
    simp [show (139968 * k + 41350) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 20675) = 209952 * k + 62026 := by
    unfold C
    simp [show (69984 * k + 20675) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 62026) = 104976 * k + 31013 := by
    unfold C
    simp [show (209952 * k + 62026) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 31013) = 314928 * k + 93040 := by
    unfold C
    simp [show (104976 * k + 31013) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 93040) = 157464 * k + 46520 := by
    unfold C
    simp [show (314928 * k + 93040) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 46520) = 78732 * k + 23260 := by
    unfold C
    simp [show (157464 * k + 46520) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 23260) = 39366 * k + 11630 := by
    unfold C
    simp [show (78732 * k + 23260) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 11630) = 19683 * k + 5815 := by
    unfold C
    simp [show (39366 * k + 11630) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 9679) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 9679)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_9711 : ∀ k : Nat, iterate (32768 * k + 9711) 24 = 19683 * k + 5834 ∧ 19683 * k + 5834 < 32768 * k + 9711 := by
  intro k
  have h1 : C (32768 * k + 9711) = 98304 * k + 29134 := by
    unfold C
    simp [show (32768 * k + 9711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 29134) = 49152 * k + 14567 := by
    unfold C
    simp [show (98304 * k + 29134) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 14567) = 147456 * k + 43702 := by
    unfold C
    simp [show (49152 * k + 14567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 43702) = 73728 * k + 21851 := by
    unfold C
    simp [show (147456 * k + 43702) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 21851) = 221184 * k + 65554 := by
    unfold C
    simp [show (73728 * k + 21851) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 65554) = 110592 * k + 32777 := by
    unfold C
    simp [show (221184 * k + 65554) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 32777) = 331776 * k + 98332 := by
    unfold C
    simp [show (110592 * k + 32777) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 98332) = 165888 * k + 49166 := by
    unfold C
    simp [show (331776 * k + 98332) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 49166) = 82944 * k + 24583 := by
    unfold C
    simp [show (165888 * k + 49166) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 24583) = 248832 * k + 73750 := by
    unfold C
    simp [show (82944 * k + 24583) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 73750) = 124416 * k + 36875 := by
    unfold C
    simp [show (248832 * k + 73750) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 36875) = 373248 * k + 110626 := by
    unfold C
    simp [show (124416 * k + 36875) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 110626) = 186624 * k + 55313 := by
    unfold C
    simp [show (373248 * k + 110626) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 55313) = 559872 * k + 165940 := by
    unfold C
    simp [show (186624 * k + 55313) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 165940) = 279936 * k + 82970 := by
    unfold C
    simp [show (559872 * k + 165940) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 82970) = 139968 * k + 41485 := by
    unfold C
    simp [show (279936 * k + 82970) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 41485) = 419904 * k + 124456 := by
    unfold C
    simp [show (139968 * k + 41485) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 124456) = 209952 * k + 62228 := by
    unfold C
    simp [show (419904 * k + 124456) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 62228) = 104976 * k + 31114 := by
    unfold C
    simp [show (209952 * k + 62228) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 31114) = 52488 * k + 15557 := by
    unfold C
    simp [show (104976 * k + 31114) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 15557) = 157464 * k + 46672 := by
    unfold C
    simp [show (52488 * k + 15557) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 46672) = 78732 * k + 23336 := by
    unfold C
    simp [show (157464 * k + 46672) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 23336) = 39366 * k + 11668 := by
    unfold C
    simp [show (78732 * k + 23336) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 11668) = 19683 * k + 5834 := by
    unfold C
    simp [show (39366 * k + 11668) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 9711) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 9711)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_9959 : ∀ k : Nat, iterate (32768 * k + 9959) 24 = 19683 * k + 5983 ∧ 19683 * k + 5983 < 32768 * k + 9959 := by
  intro k
  have h1 : C (32768 * k + 9959) = 98304 * k + 29878 := by
    unfold C
    simp [show (32768 * k + 9959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 29878) = 49152 * k + 14939 := by
    unfold C
    simp [show (98304 * k + 29878) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 14939) = 147456 * k + 44818 := by
    unfold C
    simp [show (49152 * k + 14939) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 44818) = 73728 * k + 22409 := by
    unfold C
    simp [show (147456 * k + 44818) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 22409) = 221184 * k + 67228 := by
    unfold C
    simp [show (73728 * k + 22409) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 67228) = 110592 * k + 33614 := by
    unfold C
    simp [show (221184 * k + 67228) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 33614) = 55296 * k + 16807 := by
    unfold C
    simp [show (110592 * k + 33614) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 16807) = 165888 * k + 50422 := by
    unfold C
    simp [show (55296 * k + 16807) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 50422) = 82944 * k + 25211 := by
    unfold C
    simp [show (165888 * k + 50422) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 25211) = 248832 * k + 75634 := by
    unfold C
    simp [show (82944 * k + 25211) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 75634) = 124416 * k + 37817 := by
    unfold C
    simp [show (248832 * k + 75634) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 37817) = 373248 * k + 113452 := by
    unfold C
    simp [show (124416 * k + 37817) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 113452) = 186624 * k + 56726 := by
    unfold C
    simp [show (373248 * k + 113452) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 56726) = 93312 * k + 28363 := by
    unfold C
    simp [show (186624 * k + 56726) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 28363) = 279936 * k + 85090 := by
    unfold C
    simp [show (93312 * k + 28363) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 85090) = 139968 * k + 42545 := by
    unfold C
    simp [show (279936 * k + 85090) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 42545) = 419904 * k + 127636 := by
    unfold C
    simp [show (139968 * k + 42545) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 127636) = 209952 * k + 63818 := by
    unfold C
    simp [show (419904 * k + 127636) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 63818) = 104976 * k + 31909 := by
    unfold C
    simp [show (209952 * k + 63818) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 31909) = 314928 * k + 95728 := by
    unfold C
    simp [show (104976 * k + 31909) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 95728) = 157464 * k + 47864 := by
    unfold C
    simp [show (314928 * k + 95728) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 47864) = 78732 * k + 23932 := by
    unfold C
    simp [show (157464 * k + 47864) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 23932) = 39366 * k + 11966 := by
    unfold C
    simp [show (78732 * k + 23932) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 11966) = 19683 * k + 5983 := by
    unfold C
    simp [show (39366 * k + 11966) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 9959) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 9959)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_10055 : ∀ k : Nat, iterate (32768 * k + 10055) 24 = 19683 * k + 6041 ∧ 19683 * k + 6041 < 32768 * k + 10055 := by
  intro k
  have h1 : C (32768 * k + 10055) = 98304 * k + 30166 := by
    unfold C
    simp [show (32768 * k + 10055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 30166) = 49152 * k + 15083 := by
    unfold C
    simp [show (98304 * k + 30166) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 15083) = 147456 * k + 45250 := by
    unfold C
    simp [show (49152 * k + 15083) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 45250) = 73728 * k + 22625 := by
    unfold C
    simp [show (147456 * k + 45250) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 22625) = 221184 * k + 67876 := by
    unfold C
    simp [show (73728 * k + 22625) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 67876) = 110592 * k + 33938 := by
    unfold C
    simp [show (221184 * k + 67876) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 33938) = 55296 * k + 16969 := by
    unfold C
    simp [show (110592 * k + 33938) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 16969) = 165888 * k + 50908 := by
    unfold C
    simp [show (55296 * k + 16969) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 50908) = 82944 * k + 25454 := by
    unfold C
    simp [show (165888 * k + 50908) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 25454) = 41472 * k + 12727 := by
    unfold C
    simp [show (82944 * k + 25454) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 12727) = 124416 * k + 38182 := by
    unfold C
    simp [show (41472 * k + 12727) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 38182) = 62208 * k + 19091 := by
    unfold C
    simp [show (124416 * k + 38182) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 19091) = 186624 * k + 57274 := by
    unfold C
    simp [show (62208 * k + 19091) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 57274) = 93312 * k + 28637 := by
    unfold C
    simp [show (186624 * k + 57274) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 28637) = 279936 * k + 85912 := by
    unfold C
    simp [show (93312 * k + 28637) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 85912) = 139968 * k + 42956 := by
    unfold C
    simp [show (279936 * k + 85912) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 42956) = 69984 * k + 21478 := by
    unfold C
    simp [show (139968 * k + 42956) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 21478) = 34992 * k + 10739 := by
    unfold C
    simp [show (69984 * k + 21478) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 10739) = 104976 * k + 32218 := by
    unfold C
    simp [show (34992 * k + 10739) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 32218) = 52488 * k + 16109 := by
    unfold C
    simp [show (104976 * k + 32218) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 16109) = 157464 * k + 48328 := by
    unfold C
    simp [show (52488 * k + 16109) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 48328) = 78732 * k + 24164 := by
    unfold C
    simp [show (157464 * k + 48328) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 24164) = 39366 * k + 12082 := by
    unfold C
    simp [show (78732 * k + 24164) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 12082) = 19683 * k + 6041 := by
    unfold C
    simp [show (39366 * k + 12082) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 10055) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 10055)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_10075 : ∀ k : Nat, iterate (32768 * k + 10075) 24 = 19683 * k + 6053 ∧ 19683 * k + 6053 < 32768 * k + 10075 := by
  intro k
  have h1 : C (32768 * k + 10075) = 98304 * k + 30226 := by
    unfold C
    simp [show (32768 * k + 10075) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 30226) = 49152 * k + 15113 := by
    unfold C
    simp [show (98304 * k + 30226) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 15113) = 147456 * k + 45340 := by
    unfold C
    simp [show (49152 * k + 15113) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 45340) = 73728 * k + 22670 := by
    unfold C
    simp [show (147456 * k + 45340) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 22670) = 36864 * k + 11335 := by
    unfold C
    simp [show (73728 * k + 22670) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 11335) = 110592 * k + 34006 := by
    unfold C
    simp [show (36864 * k + 11335) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 34006) = 55296 * k + 17003 := by
    unfold C
    simp [show (110592 * k + 34006) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 17003) = 165888 * k + 51010 := by
    unfold C
    simp [show (55296 * k + 17003) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 51010) = 82944 * k + 25505 := by
    unfold C
    simp [show (165888 * k + 51010) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 25505) = 248832 * k + 76516 := by
    unfold C
    simp [show (82944 * k + 25505) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 76516) = 124416 * k + 38258 := by
    unfold C
    simp [show (248832 * k + 76516) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 38258) = 62208 * k + 19129 := by
    unfold C
    simp [show (124416 * k + 38258) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 19129) = 186624 * k + 57388 := by
    unfold C
    simp [show (62208 * k + 19129) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 57388) = 93312 * k + 28694 := by
    unfold C
    simp [show (186624 * k + 57388) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 28694) = 46656 * k + 14347 := by
    unfold C
    simp [show (93312 * k + 28694) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 14347) = 139968 * k + 43042 := by
    unfold C
    simp [show (46656 * k + 14347) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 43042) = 69984 * k + 21521 := by
    unfold C
    simp [show (139968 * k + 43042) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 21521) = 209952 * k + 64564 := by
    unfold C
    simp [show (69984 * k + 21521) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 64564) = 104976 * k + 32282 := by
    unfold C
    simp [show (209952 * k + 64564) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 32282) = 52488 * k + 16141 := by
    unfold C
    simp [show (104976 * k + 32282) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 16141) = 157464 * k + 48424 := by
    unfold C
    simp [show (52488 * k + 16141) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 48424) = 78732 * k + 24212 := by
    unfold C
    simp [show (157464 * k + 48424) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 24212) = 39366 * k + 12106 := by
    unfold C
    simp [show (78732 * k + 24212) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 12106) = 19683 * k + 6053 := by
    unfold C
    simp [show (39366 * k + 12106) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 10075) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 10075)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_9087
#print axioms descent_mod32768_9371
#print axioms descent_mod32768_9375
#print axioms descent_mod32768_9679
#print axioms descent_mod32768_9711
#print axioms descent_mod32768_9959
#print axioms descent_mod32768_10055
#print axioms descent_mod32768_10075

end CollatzM15ShardG
