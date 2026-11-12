import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardB

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_1903 : ∀ k : Nat, iterate (32768 * k + 1903) 24 = 19683 * k + 1144 ∧ 19683 * k + 1144 < 32768 * k + 1903 := by
  intro k
  have h1 : C (32768 * k + 1903) = 98304 * k + 5710 := by
    unfold C
    simp [show (32768 * k + 1903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 5710) = 49152 * k + 2855 := by
    unfold C
    simp [show (98304 * k + 5710) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 2855) = 147456 * k + 8566 := by
    unfold C
    simp [show (49152 * k + 2855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 8566) = 73728 * k + 4283 := by
    unfold C
    simp [show (147456 * k + 8566) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 4283) = 221184 * k + 12850 := by
    unfold C
    simp [show (73728 * k + 4283) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 12850) = 110592 * k + 6425 := by
    unfold C
    simp [show (221184 * k + 12850) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 6425) = 331776 * k + 19276 := by
    unfold C
    simp [show (110592 * k + 6425) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 19276) = 165888 * k + 9638 := by
    unfold C
    simp [show (331776 * k + 19276) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 9638) = 82944 * k + 4819 := by
    unfold C
    simp [show (165888 * k + 9638) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 4819) = 248832 * k + 14458 := by
    unfold C
    simp [show (82944 * k + 4819) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 14458) = 124416 * k + 7229 := by
    unfold C
    simp [show (248832 * k + 14458) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 7229) = 373248 * k + 21688 := by
    unfold C
    simp [show (124416 * k + 7229) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 21688) = 186624 * k + 10844 := by
    unfold C
    simp [show (373248 * k + 21688) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 10844) = 93312 * k + 5422 := by
    unfold C
    simp [show (186624 * k + 10844) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 5422) = 46656 * k + 2711 := by
    unfold C
    simp [show (93312 * k + 5422) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 2711) = 139968 * k + 8134 := by
    unfold C
    simp [show (46656 * k + 2711) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 8134) = 69984 * k + 4067 := by
    unfold C
    simp [show (139968 * k + 8134) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 4067) = 209952 * k + 12202 := by
    unfold C
    simp [show (69984 * k + 4067) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 12202) = 104976 * k + 6101 := by
    unfold C
    simp [show (209952 * k + 12202) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 6101) = 314928 * k + 18304 := by
    unfold C
    simp [show (104976 * k + 6101) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 18304) = 157464 * k + 9152 := by
    unfold C
    simp [show (314928 * k + 18304) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 9152) = 78732 * k + 4576 := by
    unfold C
    simp [show (157464 * k + 9152) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 4576) = 39366 * k + 2288 := by
    unfold C
    simp [show (78732 * k + 4576) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 2288) = 19683 * k + 1144 := by
    unfold C
    simp [show (39366 * k + 2288) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 1903) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 1903)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_2119 : ∀ k : Nat, iterate (32768 * k + 2119) 24 = 19683 * k + 1274 ∧ 19683 * k + 1274 < 32768 * k + 2119 := by
  intro k
  have h1 : C (32768 * k + 2119) = 98304 * k + 6358 := by
    unfold C
    simp [show (32768 * k + 2119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 6358) = 49152 * k + 3179 := by
    unfold C
    simp [show (98304 * k + 6358) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 3179) = 147456 * k + 9538 := by
    unfold C
    simp [show (49152 * k + 3179) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 9538) = 73728 * k + 4769 := by
    unfold C
    simp [show (147456 * k + 9538) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 4769) = 221184 * k + 14308 := by
    unfold C
    simp [show (73728 * k + 4769) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 14308) = 110592 * k + 7154 := by
    unfold C
    simp [show (221184 * k + 14308) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 7154) = 55296 * k + 3577 := by
    unfold C
    simp [show (110592 * k + 7154) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 3577) = 165888 * k + 10732 := by
    unfold C
    simp [show (55296 * k + 3577) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 10732) = 82944 * k + 5366 := by
    unfold C
    simp [show (165888 * k + 10732) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 5366) = 41472 * k + 2683 := by
    unfold C
    simp [show (82944 * k + 5366) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 2683) = 124416 * k + 8050 := by
    unfold C
    simp [show (41472 * k + 2683) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 8050) = 62208 * k + 4025 := by
    unfold C
    simp [show (124416 * k + 8050) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 4025) = 186624 * k + 12076 := by
    unfold C
    simp [show (62208 * k + 4025) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 12076) = 93312 * k + 6038 := by
    unfold C
    simp [show (186624 * k + 12076) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 6038) = 46656 * k + 3019 := by
    unfold C
    simp [show (93312 * k + 6038) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 3019) = 139968 * k + 9058 := by
    unfold C
    simp [show (46656 * k + 3019) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 9058) = 69984 * k + 4529 := by
    unfold C
    simp [show (139968 * k + 9058) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 4529) = 209952 * k + 13588 := by
    unfold C
    simp [show (69984 * k + 4529) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 13588) = 104976 * k + 6794 := by
    unfold C
    simp [show (209952 * k + 13588) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 6794) = 52488 * k + 3397 := by
    unfold C
    simp [show (104976 * k + 6794) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 3397) = 157464 * k + 10192 := by
    unfold C
    simp [show (52488 * k + 3397) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 10192) = 78732 * k + 5096 := by
    unfold C
    simp [show (157464 * k + 10192) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 5096) = 39366 * k + 2548 := by
    unfold C
    simp [show (78732 * k + 5096) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 2548) = 19683 * k + 1274 := by
    unfold C
    simp [show (39366 * k + 2548) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 2119) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 2119)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_2279 : ∀ k : Nat, iterate (32768 * k + 2279) 24 = 19683 * k + 1370 ∧ 19683 * k + 1370 < 32768 * k + 2279 := by
  intro k
  have h1 : C (32768 * k + 2279) = 98304 * k + 6838 := by
    unfold C
    simp [show (32768 * k + 2279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 6838) = 49152 * k + 3419 := by
    unfold C
    simp [show (98304 * k + 6838) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 3419) = 147456 * k + 10258 := by
    unfold C
    simp [show (49152 * k + 3419) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 10258) = 73728 * k + 5129 := by
    unfold C
    simp [show (147456 * k + 10258) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 5129) = 221184 * k + 15388 := by
    unfold C
    simp [show (73728 * k + 5129) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 15388) = 110592 * k + 7694 := by
    unfold C
    simp [show (221184 * k + 15388) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 7694) = 55296 * k + 3847 := by
    unfold C
    simp [show (110592 * k + 7694) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 3847) = 165888 * k + 11542 := by
    unfold C
    simp [show (55296 * k + 3847) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 11542) = 82944 * k + 5771 := by
    unfold C
    simp [show (165888 * k + 11542) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 5771) = 248832 * k + 17314 := by
    unfold C
    simp [show (82944 * k + 5771) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 17314) = 124416 * k + 8657 := by
    unfold C
    simp [show (248832 * k + 17314) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 8657) = 373248 * k + 25972 := by
    unfold C
    simp [show (124416 * k + 8657) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 25972) = 186624 * k + 12986 := by
    unfold C
    simp [show (373248 * k + 25972) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 12986) = 93312 * k + 6493 := by
    unfold C
    simp [show (186624 * k + 12986) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 6493) = 279936 * k + 19480 := by
    unfold C
    simp [show (93312 * k + 6493) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 19480) = 139968 * k + 9740 := by
    unfold C
    simp [show (279936 * k + 19480) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 9740) = 69984 * k + 4870 := by
    unfold C
    simp [show (139968 * k + 9740) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 4870) = 34992 * k + 2435 := by
    unfold C
    simp [show (69984 * k + 4870) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 2435) = 104976 * k + 7306 := by
    unfold C
    simp [show (34992 * k + 2435) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 7306) = 52488 * k + 3653 := by
    unfold C
    simp [show (104976 * k + 7306) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 3653) = 157464 * k + 10960 := by
    unfold C
    simp [show (52488 * k + 3653) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 10960) = 78732 * k + 5480 := by
    unfold C
    simp [show (157464 * k + 10960) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 5480) = 39366 * k + 2740 := by
    unfold C
    simp [show (78732 * k + 5480) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 2740) = 19683 * k + 1370 := by
    unfold C
    simp [show (39366 * k + 2740) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 2279) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 2279)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_2299 : ∀ k : Nat, iterate (32768 * k + 2299) 24 = 19683 * k + 1382 ∧ 19683 * k + 1382 < 32768 * k + 2299 := by
  intro k
  have h1 : C (32768 * k + 2299) = 98304 * k + 6898 := by
    unfold C
    simp [show (32768 * k + 2299) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 6898) = 49152 * k + 3449 := by
    unfold C
    simp [show (98304 * k + 6898) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 3449) = 147456 * k + 10348 := by
    unfold C
    simp [show (49152 * k + 3449) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 10348) = 73728 * k + 5174 := by
    unfold C
    simp [show (147456 * k + 10348) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 5174) = 36864 * k + 2587 := by
    unfold C
    simp [show (73728 * k + 5174) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 2587) = 110592 * k + 7762 := by
    unfold C
    simp [show (36864 * k + 2587) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 7762) = 55296 * k + 3881 := by
    unfold C
    simp [show (110592 * k + 7762) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 3881) = 165888 * k + 11644 := by
    unfold C
    simp [show (55296 * k + 3881) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 11644) = 82944 * k + 5822 := by
    unfold C
    simp [show (165888 * k + 11644) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 5822) = 41472 * k + 2911 := by
    unfold C
    simp [show (82944 * k + 5822) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 2911) = 124416 * k + 8734 := by
    unfold C
    simp [show (41472 * k + 2911) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 8734) = 62208 * k + 4367 := by
    unfold C
    simp [show (124416 * k + 8734) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 4367) = 186624 * k + 13102 := by
    unfold C
    simp [show (62208 * k + 4367) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 13102) = 93312 * k + 6551 := by
    unfold C
    simp [show (186624 * k + 13102) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 6551) = 279936 * k + 19654 := by
    unfold C
    simp [show (93312 * k + 6551) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 19654) = 139968 * k + 9827 := by
    unfold C
    simp [show (279936 * k + 19654) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 9827) = 419904 * k + 29482 := by
    unfold C
    simp [show (139968 * k + 9827) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 29482) = 209952 * k + 14741 := by
    unfold C
    simp [show (419904 * k + 29482) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 14741) = 629856 * k + 44224 := by
    unfold C
    simp [show (209952 * k + 14741) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 44224) = 314928 * k + 22112 := by
    unfold C
    simp [show (629856 * k + 44224) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 22112) = 157464 * k + 11056 := by
    unfold C
    simp [show (314928 * k + 22112) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 11056) = 78732 * k + 5528 := by
    unfold C
    simp [show (157464 * k + 11056) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 5528) = 39366 * k + 2764 := by
    unfold C
    simp [show (78732 * k + 5528) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 2764) = 19683 * k + 1382 := by
    unfold C
    simp [show (39366 * k + 2764) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 2299) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 2299)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_2303 : ∀ k : Nat, iterate (32768 * k + 2303) 24 = 19683 * k + 1384 ∧ 19683 * k + 1384 < 32768 * k + 2303 := by
  intro k
  have h1 : C (32768 * k + 2303) = 98304 * k + 6910 := by
    unfold C
    simp [show (32768 * k + 2303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 6910) = 49152 * k + 3455 := by
    unfold C
    simp [show (98304 * k + 6910) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 3455) = 147456 * k + 10366 := by
    unfold C
    simp [show (49152 * k + 3455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 10366) = 73728 * k + 5183 := by
    unfold C
    simp [show (147456 * k + 10366) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 5183) = 221184 * k + 15550 := by
    unfold C
    simp [show (73728 * k + 5183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 15550) = 110592 * k + 7775 := by
    unfold C
    simp [show (221184 * k + 15550) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 7775) = 331776 * k + 23326 := by
    unfold C
    simp [show (110592 * k + 7775) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 23326) = 165888 * k + 11663 := by
    unfold C
    simp [show (331776 * k + 23326) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 11663) = 497664 * k + 34990 := by
    unfold C
    simp [show (165888 * k + 11663) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 34990) = 248832 * k + 17495 := by
    unfold C
    simp [show (497664 * k + 34990) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 17495) = 746496 * k + 52486 := by
    unfold C
    simp [show (248832 * k + 17495) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 52486) = 373248 * k + 26243 := by
    unfold C
    simp [show (746496 * k + 52486) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 26243) = 1119744 * k + 78730 := by
    unfold C
    simp [show (373248 * k + 26243) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 78730) = 559872 * k + 39365 := by
    unfold C
    simp [show (1119744 * k + 78730) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 39365) = 1679616 * k + 118096 := by
    unfold C
    simp [show (559872 * k + 39365) % 2 ≠ 0 by omega]
    omega
  have h16 : C (1679616 * k + 118096) = 839808 * k + 59048 := by
    unfold C
    simp [show (1679616 * k + 118096) % 2 = 0 by omega]
    omega
  have h17 : C (839808 * k + 59048) = 419904 * k + 29524 := by
    unfold C
    simp [show (839808 * k + 59048) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 29524) = 209952 * k + 14762 := by
    unfold C
    simp [show (419904 * k + 29524) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 14762) = 104976 * k + 7381 := by
    unfold C
    simp [show (209952 * k + 14762) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 7381) = 314928 * k + 22144 := by
    unfold C
    simp [show (104976 * k + 7381) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 22144) = 157464 * k + 11072 := by
    unfold C
    simp [show (314928 * k + 22144) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 11072) = 78732 * k + 5536 := by
    unfold C
    simp [show (157464 * k + 11072) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 5536) = 39366 * k + 2768 := by
    unfold C
    simp [show (78732 * k + 5536) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 2768) = 19683 * k + 1384 := by
    unfold C
    simp [show (39366 * k + 2768) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 2303) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 2303)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_2719 : ∀ k : Nat, iterate (32768 * k + 2719) 24 = 19683 * k + 1634 ∧ 19683 * k + 1634 < 32768 * k + 2719 := by
  intro k
  have h1 : C (32768 * k + 2719) = 98304 * k + 8158 := by
    unfold C
    simp [show (32768 * k + 2719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 8158) = 49152 * k + 4079 := by
    unfold C
    simp [show (98304 * k + 8158) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 4079) = 147456 * k + 12238 := by
    unfold C
    simp [show (49152 * k + 4079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 12238) = 73728 * k + 6119 := by
    unfold C
    simp [show (147456 * k + 12238) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 6119) = 221184 * k + 18358 := by
    unfold C
    simp [show (73728 * k + 6119) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 18358) = 110592 * k + 9179 := by
    unfold C
    simp [show (221184 * k + 18358) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 9179) = 331776 * k + 27538 := by
    unfold C
    simp [show (110592 * k + 9179) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 27538) = 165888 * k + 13769 := by
    unfold C
    simp [show (331776 * k + 27538) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 13769) = 497664 * k + 41308 := by
    unfold C
    simp [show (165888 * k + 13769) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 41308) = 248832 * k + 20654 := by
    unfold C
    simp [show (497664 * k + 41308) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 20654) = 124416 * k + 10327 := by
    unfold C
    simp [show (248832 * k + 20654) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 10327) = 373248 * k + 30982 := by
    unfold C
    simp [show (124416 * k + 10327) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 30982) = 186624 * k + 15491 := by
    unfold C
    simp [show (373248 * k + 30982) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 15491) = 559872 * k + 46474 := by
    unfold C
    simp [show (186624 * k + 15491) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 46474) = 279936 * k + 23237 := by
    unfold C
    simp [show (559872 * k + 46474) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 23237) = 839808 * k + 69712 := by
    unfold C
    simp [show (279936 * k + 23237) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 69712) = 419904 * k + 34856 := by
    unfold C
    simp [show (839808 * k + 69712) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 34856) = 209952 * k + 17428 := by
    unfold C
    simp [show (419904 * k + 34856) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 17428) = 104976 * k + 8714 := by
    unfold C
    simp [show (209952 * k + 17428) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 8714) = 52488 * k + 4357 := by
    unfold C
    simp [show (104976 * k + 8714) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 4357) = 157464 * k + 13072 := by
    unfold C
    simp [show (52488 * k + 4357) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 13072) = 78732 * k + 6536 := by
    unfold C
    simp [show (157464 * k + 13072) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 6536) = 39366 * k + 3268 := by
    unfold C
    simp [show (78732 * k + 6536) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 3268) = 19683 * k + 1634 := by
    unfold C
    simp [show (39366 * k + 3268) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 2719) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 2719)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_2727 : ∀ k : Nat, iterate (32768 * k + 2727) 24 = 19683 * k + 1639 ∧ 19683 * k + 1639 < 32768 * k + 2727 := by
  intro k
  have h1 : C (32768 * k + 2727) = 98304 * k + 8182 := by
    unfold C
    simp [show (32768 * k + 2727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 8182) = 49152 * k + 4091 := by
    unfold C
    simp [show (98304 * k + 8182) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 4091) = 147456 * k + 12274 := by
    unfold C
    simp [show (49152 * k + 4091) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 12274) = 73728 * k + 6137 := by
    unfold C
    simp [show (147456 * k + 12274) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 6137) = 221184 * k + 18412 := by
    unfold C
    simp [show (73728 * k + 6137) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 18412) = 110592 * k + 9206 := by
    unfold C
    simp [show (221184 * k + 18412) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 9206) = 55296 * k + 4603 := by
    unfold C
    simp [show (110592 * k + 9206) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 4603) = 165888 * k + 13810 := by
    unfold C
    simp [show (55296 * k + 4603) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 13810) = 82944 * k + 6905 := by
    unfold C
    simp [show (165888 * k + 13810) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 6905) = 248832 * k + 20716 := by
    unfold C
    simp [show (82944 * k + 6905) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 20716) = 124416 * k + 10358 := by
    unfold C
    simp [show (248832 * k + 20716) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 10358) = 62208 * k + 5179 := by
    unfold C
    simp [show (124416 * k + 10358) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 5179) = 186624 * k + 15538 := by
    unfold C
    simp [show (62208 * k + 5179) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 15538) = 93312 * k + 7769 := by
    unfold C
    simp [show (186624 * k + 15538) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 7769) = 279936 * k + 23308 := by
    unfold C
    simp [show (93312 * k + 7769) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 23308) = 139968 * k + 11654 := by
    unfold C
    simp [show (279936 * k + 23308) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 11654) = 69984 * k + 5827 := by
    unfold C
    simp [show (139968 * k + 11654) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 5827) = 209952 * k + 17482 := by
    unfold C
    simp [show (69984 * k + 5827) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 17482) = 104976 * k + 8741 := by
    unfold C
    simp [show (209952 * k + 17482) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 8741) = 314928 * k + 26224 := by
    unfold C
    simp [show (104976 * k + 8741) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 26224) = 157464 * k + 13112 := by
    unfold C
    simp [show (314928 * k + 26224) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 13112) = 78732 * k + 6556 := by
    unfold C
    simp [show (157464 * k + 13112) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 6556) = 39366 * k + 3278 := by
    unfold C
    simp [show (78732 * k + 6556) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 3278) = 19683 * k + 1639 := by
    unfold C
    simp [show (39366 * k + 3278) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 2727) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 2727)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_2767 : ∀ k : Nat, iterate (32768 * k + 2767) 24 = 19683 * k + 1663 ∧ 19683 * k + 1663 < 32768 * k + 2767 := by
  intro k
  have h1 : C (32768 * k + 2767) = 98304 * k + 8302 := by
    unfold C
    simp [show (32768 * k + 2767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 8302) = 49152 * k + 4151 := by
    unfold C
    simp [show (98304 * k + 8302) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 4151) = 147456 * k + 12454 := by
    unfold C
    simp [show (49152 * k + 4151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 12454) = 73728 * k + 6227 := by
    unfold C
    simp [show (147456 * k + 12454) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 6227) = 221184 * k + 18682 := by
    unfold C
    simp [show (73728 * k + 6227) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 18682) = 110592 * k + 9341 := by
    unfold C
    simp [show (221184 * k + 18682) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 9341) = 331776 * k + 28024 := by
    unfold C
    simp [show (110592 * k + 9341) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 28024) = 165888 * k + 14012 := by
    unfold C
    simp [show (331776 * k + 28024) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 14012) = 82944 * k + 7006 := by
    unfold C
    simp [show (165888 * k + 14012) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 7006) = 41472 * k + 3503 := by
    unfold C
    simp [show (82944 * k + 7006) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 3503) = 124416 * k + 10510 := by
    unfold C
    simp [show (41472 * k + 3503) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 10510) = 62208 * k + 5255 := by
    unfold C
    simp [show (124416 * k + 10510) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 5255) = 186624 * k + 15766 := by
    unfold C
    simp [show (62208 * k + 5255) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 15766) = 93312 * k + 7883 := by
    unfold C
    simp [show (186624 * k + 15766) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 7883) = 279936 * k + 23650 := by
    unfold C
    simp [show (93312 * k + 7883) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 23650) = 139968 * k + 11825 := by
    unfold C
    simp [show (279936 * k + 23650) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 11825) = 419904 * k + 35476 := by
    unfold C
    simp [show (139968 * k + 11825) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 35476) = 209952 * k + 17738 := by
    unfold C
    simp [show (419904 * k + 35476) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 17738) = 104976 * k + 8869 := by
    unfold C
    simp [show (209952 * k + 17738) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 8869) = 314928 * k + 26608 := by
    unfold C
    simp [show (104976 * k + 8869) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 26608) = 157464 * k + 13304 := by
    unfold C
    simp [show (314928 * k + 26608) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 13304) = 78732 * k + 6652 := by
    unfold C
    simp [show (157464 * k + 13304) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 6652) = 39366 * k + 3326 := by
    unfold C
    simp [show (78732 * k + 6652) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 3326) = 19683 * k + 1663 := by
    unfold C
    simp [show (39366 * k + 3326) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 2767) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 2767)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_1903
#print axioms descent_mod32768_2119
#print axioms descent_mod32768_2279
#print axioms descent_mod32768_2299
#print axioms descent_mod32768_2303
#print axioms descent_mod32768_2719
#print axioms descent_mod32768_2727
#print axioms descent_mod32768_2767

end CollatzM15ShardB
