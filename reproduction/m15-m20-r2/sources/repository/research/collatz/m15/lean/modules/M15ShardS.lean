import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardS

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_26527 : ∀ k : Nat, iterate (32768 * k + 26527) 24 = 19683 * k + 15935 ∧ 19683 * k + 15935 < 32768 * k + 26527 := by
  intro k
  have h1 : C (32768 * k + 26527) = 98304 * k + 79582 := by
    unfold C
    simp [show (32768 * k + 26527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 79582) = 49152 * k + 39791 := by
    unfold C
    simp [show (98304 * k + 79582) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 39791) = 147456 * k + 119374 := by
    unfold C
    simp [show (49152 * k + 39791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 119374) = 73728 * k + 59687 := by
    unfold C
    simp [show (147456 * k + 119374) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 59687) = 221184 * k + 179062 := by
    unfold C
    simp [show (73728 * k + 59687) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 179062) = 110592 * k + 89531 := by
    unfold C
    simp [show (221184 * k + 179062) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 89531) = 331776 * k + 268594 := by
    unfold C
    simp [show (110592 * k + 89531) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 268594) = 165888 * k + 134297 := by
    unfold C
    simp [show (331776 * k + 268594) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 134297) = 497664 * k + 402892 := by
    unfold C
    simp [show (165888 * k + 134297) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 402892) = 248832 * k + 201446 := by
    unfold C
    simp [show (497664 * k + 402892) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 201446) = 124416 * k + 100723 := by
    unfold C
    simp [show (248832 * k + 201446) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 100723) = 373248 * k + 302170 := by
    unfold C
    simp [show (124416 * k + 100723) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 302170) = 186624 * k + 151085 := by
    unfold C
    simp [show (373248 * k + 302170) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 151085) = 559872 * k + 453256 := by
    unfold C
    simp [show (186624 * k + 151085) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 453256) = 279936 * k + 226628 := by
    unfold C
    simp [show (559872 * k + 453256) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 226628) = 139968 * k + 113314 := by
    unfold C
    simp [show (279936 * k + 226628) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 113314) = 69984 * k + 56657 := by
    unfold C
    simp [show (139968 * k + 113314) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 56657) = 209952 * k + 169972 := by
    unfold C
    simp [show (69984 * k + 56657) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 169972) = 104976 * k + 84986 := by
    unfold C
    simp [show (209952 * k + 169972) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 84986) = 52488 * k + 42493 := by
    unfold C
    simp [show (104976 * k + 84986) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 42493) = 157464 * k + 127480 := by
    unfold C
    simp [show (52488 * k + 42493) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 127480) = 78732 * k + 63740 := by
    unfold C
    simp [show (157464 * k + 127480) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 63740) = 39366 * k + 31870 := by
    unfold C
    simp [show (78732 * k + 63740) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 31870) = 19683 * k + 15935 := by
    unfold C
    simp [show (39366 * k + 31870) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 26527) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 26527)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_26535 : ∀ k : Nat, iterate (32768 * k + 26535) 24 = 19683 * k + 15940 ∧ 19683 * k + 15940 < 32768 * k + 26535 := by
  intro k
  have h1 : C (32768 * k + 26535) = 98304 * k + 79606 := by
    unfold C
    simp [show (32768 * k + 26535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 79606) = 49152 * k + 39803 := by
    unfold C
    simp [show (98304 * k + 79606) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 39803) = 147456 * k + 119410 := by
    unfold C
    simp [show (49152 * k + 39803) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 119410) = 73728 * k + 59705 := by
    unfold C
    simp [show (147456 * k + 119410) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 59705) = 221184 * k + 179116 := by
    unfold C
    simp [show (73728 * k + 59705) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 179116) = 110592 * k + 89558 := by
    unfold C
    simp [show (221184 * k + 179116) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 89558) = 55296 * k + 44779 := by
    unfold C
    simp [show (110592 * k + 89558) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 44779) = 165888 * k + 134338 := by
    unfold C
    simp [show (55296 * k + 44779) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 134338) = 82944 * k + 67169 := by
    unfold C
    simp [show (165888 * k + 134338) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 67169) = 248832 * k + 201508 := by
    unfold C
    simp [show (82944 * k + 67169) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 201508) = 124416 * k + 100754 := by
    unfold C
    simp [show (248832 * k + 201508) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 100754) = 62208 * k + 50377 := by
    unfold C
    simp [show (124416 * k + 100754) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 50377) = 186624 * k + 151132 := by
    unfold C
    simp [show (62208 * k + 50377) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 151132) = 93312 * k + 75566 := by
    unfold C
    simp [show (186624 * k + 151132) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 75566) = 46656 * k + 37783 := by
    unfold C
    simp [show (93312 * k + 75566) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 37783) = 139968 * k + 113350 := by
    unfold C
    simp [show (46656 * k + 37783) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 113350) = 69984 * k + 56675 := by
    unfold C
    simp [show (139968 * k + 113350) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 56675) = 209952 * k + 170026 := by
    unfold C
    simp [show (69984 * k + 56675) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 170026) = 104976 * k + 85013 := by
    unfold C
    simp [show (209952 * k + 170026) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 85013) = 314928 * k + 255040 := by
    unfold C
    simp [show (104976 * k + 85013) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 255040) = 157464 * k + 127520 := by
    unfold C
    simp [show (314928 * k + 255040) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 127520) = 78732 * k + 63760 := by
    unfold C
    simp [show (157464 * k + 127520) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 63760) = 39366 * k + 31880 := by
    unfold C
    simp [show (78732 * k + 63760) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 31880) = 19683 * k + 15940 := by
    unfold C
    simp [show (39366 * k + 31880) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 26535) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 26535)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_27111 : ∀ k : Nat, iterate (32768 * k + 27111) 24 = 19683 * k + 16286 ∧ 19683 * k + 16286 < 32768 * k + 27111 := by
  intro k
  have h1 : C (32768 * k + 27111) = 98304 * k + 81334 := by
    unfold C
    simp [show (32768 * k + 27111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 81334) = 49152 * k + 40667 := by
    unfold C
    simp [show (98304 * k + 81334) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 40667) = 147456 * k + 122002 := by
    unfold C
    simp [show (49152 * k + 40667) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 122002) = 73728 * k + 61001 := by
    unfold C
    simp [show (147456 * k + 122002) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 61001) = 221184 * k + 183004 := by
    unfold C
    simp [show (73728 * k + 61001) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 183004) = 110592 * k + 91502 := by
    unfold C
    simp [show (221184 * k + 183004) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 91502) = 55296 * k + 45751 := by
    unfold C
    simp [show (110592 * k + 91502) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 45751) = 165888 * k + 137254 := by
    unfold C
    simp [show (55296 * k + 45751) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 137254) = 82944 * k + 68627 := by
    unfold C
    simp [show (165888 * k + 137254) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 68627) = 248832 * k + 205882 := by
    unfold C
    simp [show (82944 * k + 68627) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 205882) = 124416 * k + 102941 := by
    unfold C
    simp [show (248832 * k + 205882) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 102941) = 373248 * k + 308824 := by
    unfold C
    simp [show (124416 * k + 102941) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 308824) = 186624 * k + 154412 := by
    unfold C
    simp [show (373248 * k + 308824) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 154412) = 93312 * k + 77206 := by
    unfold C
    simp [show (186624 * k + 154412) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 77206) = 46656 * k + 38603 := by
    unfold C
    simp [show (93312 * k + 77206) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 38603) = 139968 * k + 115810 := by
    unfold C
    simp [show (46656 * k + 38603) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 115810) = 69984 * k + 57905 := by
    unfold C
    simp [show (139968 * k + 115810) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 57905) = 209952 * k + 173716 := by
    unfold C
    simp [show (69984 * k + 57905) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 173716) = 104976 * k + 86858 := by
    unfold C
    simp [show (209952 * k + 173716) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 86858) = 52488 * k + 43429 := by
    unfold C
    simp [show (104976 * k + 86858) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 43429) = 157464 * k + 130288 := by
    unfold C
    simp [show (52488 * k + 43429) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 130288) = 78732 * k + 65144 := by
    unfold C
    simp [show (157464 * k + 130288) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 65144) = 39366 * k + 32572 := by
    unfold C
    simp [show (78732 * k + 65144) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 32572) = 19683 * k + 16286 := by
    unfold C
    simp [show (39366 * k + 32572) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 27111) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 27111)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_27291 : ∀ k : Nat, iterate (32768 * k + 27291) 24 = 19683 * k + 16394 ∧ 19683 * k + 16394 < 32768 * k + 27291 := by
  intro k
  have h1 : C (32768 * k + 27291) = 98304 * k + 81874 := by
    unfold C
    simp [show (32768 * k + 27291) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 81874) = 49152 * k + 40937 := by
    unfold C
    simp [show (98304 * k + 81874) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 40937) = 147456 * k + 122812 := by
    unfold C
    simp [show (49152 * k + 40937) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 122812) = 73728 * k + 61406 := by
    unfold C
    simp [show (147456 * k + 122812) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 61406) = 36864 * k + 30703 := by
    unfold C
    simp [show (73728 * k + 61406) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 30703) = 110592 * k + 92110 := by
    unfold C
    simp [show (36864 * k + 30703) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 92110) = 55296 * k + 46055 := by
    unfold C
    simp [show (110592 * k + 92110) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 46055) = 165888 * k + 138166 := by
    unfold C
    simp [show (55296 * k + 46055) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 138166) = 82944 * k + 69083 := by
    unfold C
    simp [show (165888 * k + 138166) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 69083) = 248832 * k + 207250 := by
    unfold C
    simp [show (82944 * k + 69083) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 207250) = 124416 * k + 103625 := by
    unfold C
    simp [show (248832 * k + 207250) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 103625) = 373248 * k + 310876 := by
    unfold C
    simp [show (124416 * k + 103625) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 310876) = 186624 * k + 155438 := by
    unfold C
    simp [show (373248 * k + 310876) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 155438) = 93312 * k + 77719 := by
    unfold C
    simp [show (186624 * k + 155438) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 77719) = 279936 * k + 233158 := by
    unfold C
    simp [show (93312 * k + 77719) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 233158) = 139968 * k + 116579 := by
    unfold C
    simp [show (279936 * k + 233158) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 116579) = 419904 * k + 349738 := by
    unfold C
    simp [show (139968 * k + 116579) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 349738) = 209952 * k + 174869 := by
    unfold C
    simp [show (419904 * k + 349738) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 174869) = 629856 * k + 524608 := by
    unfold C
    simp [show (209952 * k + 174869) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 524608) = 314928 * k + 262304 := by
    unfold C
    simp [show (629856 * k + 524608) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 262304) = 157464 * k + 131152 := by
    unfold C
    simp [show (314928 * k + 262304) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 131152) = 78732 * k + 65576 := by
    unfold C
    simp [show (157464 * k + 131152) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 65576) = 39366 * k + 32788 := by
    unfold C
    simp [show (78732 * k + 65576) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 32788) = 19683 * k + 16394 := by
    unfold C
    simp [show (39366 * k + 32788) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 27291) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 27291)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_27759 : ∀ k : Nat, iterate (32768 * k + 27759) 24 = 19683 * k + 16675 ∧ 19683 * k + 16675 < 32768 * k + 27759 := by
  intro k
  have h1 : C (32768 * k + 27759) = 98304 * k + 83278 := by
    unfold C
    simp [show (32768 * k + 27759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 83278) = 49152 * k + 41639 := by
    unfold C
    simp [show (98304 * k + 83278) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 41639) = 147456 * k + 124918 := by
    unfold C
    simp [show (49152 * k + 41639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 124918) = 73728 * k + 62459 := by
    unfold C
    simp [show (147456 * k + 124918) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 62459) = 221184 * k + 187378 := by
    unfold C
    simp [show (73728 * k + 62459) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 187378) = 110592 * k + 93689 := by
    unfold C
    simp [show (221184 * k + 187378) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 93689) = 331776 * k + 281068 := by
    unfold C
    simp [show (110592 * k + 93689) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 281068) = 165888 * k + 140534 := by
    unfold C
    simp [show (331776 * k + 281068) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 140534) = 82944 * k + 70267 := by
    unfold C
    simp [show (165888 * k + 140534) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 70267) = 248832 * k + 210802 := by
    unfold C
    simp [show (82944 * k + 70267) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 210802) = 124416 * k + 105401 := by
    unfold C
    simp [show (248832 * k + 210802) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 105401) = 373248 * k + 316204 := by
    unfold C
    simp [show (124416 * k + 105401) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 316204) = 186624 * k + 158102 := by
    unfold C
    simp [show (373248 * k + 316204) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 158102) = 93312 * k + 79051 := by
    unfold C
    simp [show (186624 * k + 158102) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 79051) = 279936 * k + 237154 := by
    unfold C
    simp [show (93312 * k + 79051) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 237154) = 139968 * k + 118577 := by
    unfold C
    simp [show (279936 * k + 237154) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 118577) = 419904 * k + 355732 := by
    unfold C
    simp [show (139968 * k + 118577) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 355732) = 209952 * k + 177866 := by
    unfold C
    simp [show (419904 * k + 355732) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 177866) = 104976 * k + 88933 := by
    unfold C
    simp [show (209952 * k + 177866) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 88933) = 314928 * k + 266800 := by
    unfold C
    simp [show (104976 * k + 88933) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 266800) = 157464 * k + 133400 := by
    unfold C
    simp [show (314928 * k + 266800) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 133400) = 78732 * k + 66700 := by
    unfold C
    simp [show (157464 * k + 133400) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 66700) = 39366 * k + 33350 := by
    unfold C
    simp [show (78732 * k + 66700) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 33350) = 19683 * k + 16675 := by
    unfold C
    simp [show (39366 * k + 33350) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 27759) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 27759)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_27839 : ∀ k : Nat, iterate (32768 * k + 27839) 24 = 19683 * k + 16723 ∧ 19683 * k + 16723 < 32768 * k + 27839 := by
  intro k
  have h1 : C (32768 * k + 27839) = 98304 * k + 83518 := by
    unfold C
    simp [show (32768 * k + 27839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 83518) = 49152 * k + 41759 := by
    unfold C
    simp [show (98304 * k + 83518) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 41759) = 147456 * k + 125278 := by
    unfold C
    simp [show (49152 * k + 41759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 125278) = 73728 * k + 62639 := by
    unfold C
    simp [show (147456 * k + 125278) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 62639) = 221184 * k + 187918 := by
    unfold C
    simp [show (73728 * k + 62639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 187918) = 110592 * k + 93959 := by
    unfold C
    simp [show (221184 * k + 187918) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 93959) = 331776 * k + 281878 := by
    unfold C
    simp [show (110592 * k + 93959) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 281878) = 165888 * k + 140939 := by
    unfold C
    simp [show (331776 * k + 281878) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 140939) = 497664 * k + 422818 := by
    unfold C
    simp [show (165888 * k + 140939) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 422818) = 248832 * k + 211409 := by
    unfold C
    simp [show (497664 * k + 422818) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 211409) = 746496 * k + 634228 := by
    unfold C
    simp [show (248832 * k + 211409) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 634228) = 373248 * k + 317114 := by
    unfold C
    simp [show (746496 * k + 634228) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 317114) = 186624 * k + 158557 := by
    unfold C
    simp [show (373248 * k + 317114) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 158557) = 559872 * k + 475672 := by
    unfold C
    simp [show (186624 * k + 158557) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 475672) = 279936 * k + 237836 := by
    unfold C
    simp [show (559872 * k + 475672) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 237836) = 139968 * k + 118918 := by
    unfold C
    simp [show (279936 * k + 237836) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 118918) = 69984 * k + 59459 := by
    unfold C
    simp [show (139968 * k + 118918) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 59459) = 209952 * k + 178378 := by
    unfold C
    simp [show (69984 * k + 59459) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 178378) = 104976 * k + 89189 := by
    unfold C
    simp [show (209952 * k + 178378) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 89189) = 314928 * k + 267568 := by
    unfold C
    simp [show (104976 * k + 89189) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 267568) = 157464 * k + 133784 := by
    unfold C
    simp [show (314928 * k + 267568) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 133784) = 78732 * k + 66892 := by
    unfold C
    simp [show (157464 * k + 133784) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 66892) = 39366 * k + 33446 := by
    unfold C
    simp [show (78732 * k + 66892) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 33446) = 19683 * k + 16723 := by
    unfold C
    simp [show (39366 * k + 33446) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 27839) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 27839)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_27855 : ∀ k : Nat, iterate (32768 * k + 27855) 24 = 19683 * k + 16733 ∧ 19683 * k + 16733 < 32768 * k + 27855 := by
  intro k
  have h1 : C (32768 * k + 27855) = 98304 * k + 83566 := by
    unfold C
    simp [show (32768 * k + 27855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 83566) = 49152 * k + 41783 := by
    unfold C
    simp [show (98304 * k + 83566) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 41783) = 147456 * k + 125350 := by
    unfold C
    simp [show (49152 * k + 41783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 125350) = 73728 * k + 62675 := by
    unfold C
    simp [show (147456 * k + 125350) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 62675) = 221184 * k + 188026 := by
    unfold C
    simp [show (73728 * k + 62675) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 188026) = 110592 * k + 94013 := by
    unfold C
    simp [show (221184 * k + 188026) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 94013) = 331776 * k + 282040 := by
    unfold C
    simp [show (110592 * k + 94013) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 282040) = 165888 * k + 141020 := by
    unfold C
    simp [show (331776 * k + 282040) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 141020) = 82944 * k + 70510 := by
    unfold C
    simp [show (165888 * k + 141020) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 70510) = 41472 * k + 35255 := by
    unfold C
    simp [show (82944 * k + 70510) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 35255) = 124416 * k + 105766 := by
    unfold C
    simp [show (41472 * k + 35255) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 105766) = 62208 * k + 52883 := by
    unfold C
    simp [show (124416 * k + 105766) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 52883) = 186624 * k + 158650 := by
    unfold C
    simp [show (62208 * k + 52883) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 158650) = 93312 * k + 79325 := by
    unfold C
    simp [show (186624 * k + 158650) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 79325) = 279936 * k + 237976 := by
    unfold C
    simp [show (93312 * k + 79325) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 237976) = 139968 * k + 118988 := by
    unfold C
    simp [show (279936 * k + 237976) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 118988) = 69984 * k + 59494 := by
    unfold C
    simp [show (139968 * k + 118988) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 59494) = 34992 * k + 29747 := by
    unfold C
    simp [show (69984 * k + 59494) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 29747) = 104976 * k + 89242 := by
    unfold C
    simp [show (34992 * k + 29747) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 89242) = 52488 * k + 44621 := by
    unfold C
    simp [show (104976 * k + 89242) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 44621) = 157464 * k + 133864 := by
    unfold C
    simp [show (52488 * k + 44621) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 133864) = 78732 * k + 66932 := by
    unfold C
    simp [show (157464 * k + 133864) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 66932) = 39366 * k + 33466 := by
    unfold C
    simp [show (78732 * k + 66932) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 33466) = 19683 * k + 16733 := by
    unfold C
    simp [show (39366 * k + 33466) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 27855) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 27855)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_27975 : ∀ k : Nat, iterate (32768 * k + 27975) 24 = 19683 * k + 16805 ∧ 19683 * k + 16805 < 32768 * k + 27975 := by
  intro k
  have h1 : C (32768 * k + 27975) = 98304 * k + 83926 := by
    unfold C
    simp [show (32768 * k + 27975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 83926) = 49152 * k + 41963 := by
    unfold C
    simp [show (98304 * k + 83926) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 41963) = 147456 * k + 125890 := by
    unfold C
    simp [show (49152 * k + 41963) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 125890) = 73728 * k + 62945 := by
    unfold C
    simp [show (147456 * k + 125890) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 62945) = 221184 * k + 188836 := by
    unfold C
    simp [show (73728 * k + 62945) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 188836) = 110592 * k + 94418 := by
    unfold C
    simp [show (221184 * k + 188836) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 94418) = 55296 * k + 47209 := by
    unfold C
    simp [show (110592 * k + 94418) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 47209) = 165888 * k + 141628 := by
    unfold C
    simp [show (55296 * k + 47209) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 141628) = 82944 * k + 70814 := by
    unfold C
    simp [show (165888 * k + 141628) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 70814) = 41472 * k + 35407 := by
    unfold C
    simp [show (82944 * k + 70814) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 35407) = 124416 * k + 106222 := by
    unfold C
    simp [show (41472 * k + 35407) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 106222) = 62208 * k + 53111 := by
    unfold C
    simp [show (124416 * k + 106222) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 53111) = 186624 * k + 159334 := by
    unfold C
    simp [show (62208 * k + 53111) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 159334) = 93312 * k + 79667 := by
    unfold C
    simp [show (186624 * k + 159334) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 79667) = 279936 * k + 239002 := by
    unfold C
    simp [show (93312 * k + 79667) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 239002) = 139968 * k + 119501 := by
    unfold C
    simp [show (279936 * k + 239002) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 119501) = 419904 * k + 358504 := by
    unfold C
    simp [show (139968 * k + 119501) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 358504) = 209952 * k + 179252 := by
    unfold C
    simp [show (419904 * k + 358504) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 179252) = 104976 * k + 89626 := by
    unfold C
    simp [show (209952 * k + 179252) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 89626) = 52488 * k + 44813 := by
    unfold C
    simp [show (104976 * k + 89626) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 44813) = 157464 * k + 134440 := by
    unfold C
    simp [show (52488 * k + 44813) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 134440) = 78732 * k + 67220 := by
    unfold C
    simp [show (157464 * k + 134440) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 67220) = 39366 * k + 33610 := by
    unfold C
    simp [show (78732 * k + 67220) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 33610) = 19683 * k + 16805 := by
    unfold C
    simp [show (39366 * k + 33610) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 27975) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 27975)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_26527
#print axioms descent_mod32768_26535
#print axioms descent_mod32768_27111
#print axioms descent_mod32768_27291
#print axioms descent_mod32768_27759
#print axioms descent_mod32768_27839
#print axioms descent_mod32768_27855
#print axioms descent_mod32768_27975

end CollatzM15ShardS
