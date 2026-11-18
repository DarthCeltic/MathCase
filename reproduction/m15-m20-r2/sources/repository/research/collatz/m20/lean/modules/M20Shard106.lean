import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard106

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_826303 : ∀ k : Nat,
    iterate (1048576 * k + 826303) 32 = 531441 * k + 418789 ∧
      531441 * k + 418789 < 1048576 * k + 826303 := by
  intro k
  have h1 : C (1048576 * k + 826303) = 3145728 * k + 2478910 := by
    unfold C
    simp [show (1048576 * k + 826303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2478910) = 1572864 * k + 1239455 := by
    unfold C
    simp [show (3145728 * k + 2478910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1239455) = 4718592 * k + 3718366 := by
    unfold C
    simp [show (1572864 * k + 1239455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3718366) = 2359296 * k + 1859183 := by
    unfold C
    simp [show (4718592 * k + 3718366) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1859183) = 7077888 * k + 5577550 := by
    unfold C
    simp [show (2359296 * k + 1859183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5577550) = 3538944 * k + 2788775 := by
    unfold C
    simp [show (7077888 * k + 5577550) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2788775) = 10616832 * k + 8366326 := by
    unfold C
    simp [show (3538944 * k + 2788775) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8366326) = 5308416 * k + 4183163 := by
    unfold C
    simp [show (10616832 * k + 8366326) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4183163) = 15925248 * k + 12549490 := by
    unfold C
    simp [show (5308416 * k + 4183163) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12549490) = 7962624 * k + 6274745 := by
    unfold C
    simp [show (15925248 * k + 12549490) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6274745) = 23887872 * k + 18824236 := by
    unfold C
    simp [show (7962624 * k + 6274745) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18824236) = 11943936 * k + 9412118 := by
    unfold C
    simp [show (23887872 * k + 18824236) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9412118) = 5971968 * k + 4706059 := by
    unfold C
    simp [show (11943936 * k + 9412118) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4706059) = 17915904 * k + 14118178 := by
    unfold C
    simp [show (5971968 * k + 4706059) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14118178) = 8957952 * k + 7059089 := by
    unfold C
    simp [show (17915904 * k + 14118178) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7059089) = 26873856 * k + 21177268 := by
    unfold C
    simp [show (8957952 * k + 7059089) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21177268) = 13436928 * k + 10588634 := by
    unfold C
    simp [show (26873856 * k + 21177268) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10588634) = 6718464 * k + 5294317 := by
    unfold C
    simp [show (13436928 * k + 10588634) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5294317) = 20155392 * k + 15882952 := by
    unfold C
    simp [show (6718464 * k + 5294317) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15882952) = 10077696 * k + 7941476 := by
    unfold C
    simp [show (20155392 * k + 15882952) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7941476) = 5038848 * k + 3970738 := by
    unfold C
    simp [show (10077696 * k + 7941476) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3970738) = 2519424 * k + 1985369 := by
    unfold C
    simp [show (5038848 * k + 3970738) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1985369) = 7558272 * k + 5956108 := by
    unfold C
    simp [show (2519424 * k + 1985369) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5956108) = 3779136 * k + 2978054 := by
    unfold C
    simp [show (7558272 * k + 5956108) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2978054) = 1889568 * k + 1489027 := by
    unfold C
    simp [show (3779136 * k + 2978054) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1489027) = 5668704 * k + 4467082 := by
    unfold C
    simp [show (1889568 * k + 1489027) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4467082) = 2834352 * k + 2233541 := by
    unfold C
    simp [show (5668704 * k + 4467082) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2233541) = 8503056 * k + 6700624 := by
    unfold C
    simp [show (2834352 * k + 2233541) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6700624) = 4251528 * k + 3350312 := by
    unfold C
    simp [show (8503056 * k + 6700624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3350312) = 2125764 * k + 1675156 := by
    unfold C
    simp [show (4251528 * k + 3350312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1675156) = 1062882 * k + 837578 := by
    unfold C
    simp [show (2125764 * k + 1675156) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 837578) = 531441 * k + 418789 := by
    unfold C
    simp [show (1062882 * k + 837578) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 826303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 826303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_827039 : ∀ k : Nat,
    iterate (1048576 * k + 827039) 32 = 531441 * k + 419162 ∧
      531441 * k + 419162 < 1048576 * k + 827039 := by
  intro k
  have h1 : C (1048576 * k + 827039) = 3145728 * k + 2481118 := by
    unfold C
    simp [show (1048576 * k + 827039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2481118) = 1572864 * k + 1240559 := by
    unfold C
    simp [show (3145728 * k + 2481118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1240559) = 4718592 * k + 3721678 := by
    unfold C
    simp [show (1572864 * k + 1240559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3721678) = 2359296 * k + 1860839 := by
    unfold C
    simp [show (4718592 * k + 3721678) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1860839) = 7077888 * k + 5582518 := by
    unfold C
    simp [show (2359296 * k + 1860839) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5582518) = 3538944 * k + 2791259 := by
    unfold C
    simp [show (7077888 * k + 5582518) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2791259) = 10616832 * k + 8373778 := by
    unfold C
    simp [show (3538944 * k + 2791259) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8373778) = 5308416 * k + 4186889 := by
    unfold C
    simp [show (10616832 * k + 8373778) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4186889) = 15925248 * k + 12560668 := by
    unfold C
    simp [show (5308416 * k + 4186889) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12560668) = 7962624 * k + 6280334 := by
    unfold C
    simp [show (15925248 * k + 12560668) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6280334) = 3981312 * k + 3140167 := by
    unfold C
    simp [show (7962624 * k + 6280334) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3140167) = 11943936 * k + 9420502 := by
    unfold C
    simp [show (3981312 * k + 3140167) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9420502) = 5971968 * k + 4710251 := by
    unfold C
    simp [show (11943936 * k + 9420502) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4710251) = 17915904 * k + 14130754 := by
    unfold C
    simp [show (5971968 * k + 4710251) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14130754) = 8957952 * k + 7065377 := by
    unfold C
    simp [show (17915904 * k + 14130754) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7065377) = 26873856 * k + 21196132 := by
    unfold C
    simp [show (8957952 * k + 7065377) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21196132) = 13436928 * k + 10598066 := by
    unfold C
    simp [show (26873856 * k + 21196132) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10598066) = 6718464 * k + 5299033 := by
    unfold C
    simp [show (13436928 * k + 10598066) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5299033) = 20155392 * k + 15897100 := by
    unfold C
    simp [show (6718464 * k + 5299033) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15897100) = 10077696 * k + 7948550 := by
    unfold C
    simp [show (20155392 * k + 15897100) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7948550) = 5038848 * k + 3974275 := by
    unfold C
    simp [show (10077696 * k + 7948550) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3974275) = 15116544 * k + 11922826 := by
    unfold C
    simp [show (5038848 * k + 3974275) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11922826) = 7558272 * k + 5961413 := by
    unfold C
    simp [show (15116544 * k + 11922826) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5961413) = 22674816 * k + 17884240 := by
    unfold C
    simp [show (7558272 * k + 5961413) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17884240) = 11337408 * k + 8942120 := by
    unfold C
    simp [show (22674816 * k + 17884240) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8942120) = 5668704 * k + 4471060 := by
    unfold C
    simp [show (11337408 * k + 8942120) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4471060) = 2834352 * k + 2235530 := by
    unfold C
    simp [show (5668704 * k + 4471060) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2235530) = 1417176 * k + 1117765 := by
    unfold C
    simp [show (2834352 * k + 2235530) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1117765) = 4251528 * k + 3353296 := by
    unfold C
    simp [show (1417176 * k + 1117765) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3353296) = 2125764 * k + 1676648 := by
    unfold C
    simp [show (4251528 * k + 3353296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1676648) = 1062882 * k + 838324 := by
    unfold C
    simp [show (2125764 * k + 1676648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 838324) = 531441 * k + 419162 := by
    unfold C
    simp [show (1062882 * k + 838324) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 827039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 827039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_828187 : ∀ k : Nat,
    iterate (1048576 * k + 828187) 32 = 531441 * k + 419744 ∧
      531441 * k + 419744 < 1048576 * k + 828187 := by
  intro k
  have h1 : C (1048576 * k + 828187) = 3145728 * k + 2484562 := by
    unfold C
    simp [show (1048576 * k + 828187) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2484562) = 1572864 * k + 1242281 := by
    unfold C
    simp [show (3145728 * k + 2484562) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1242281) = 4718592 * k + 3726844 := by
    unfold C
    simp [show (1572864 * k + 1242281) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3726844) = 2359296 * k + 1863422 := by
    unfold C
    simp [show (4718592 * k + 3726844) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1863422) = 1179648 * k + 931711 := by
    unfold C
    simp [show (2359296 * k + 1863422) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 931711) = 3538944 * k + 2795134 := by
    unfold C
    simp [show (1179648 * k + 931711) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2795134) = 1769472 * k + 1397567 := by
    unfold C
    simp [show (3538944 * k + 2795134) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1397567) = 5308416 * k + 4192702 := by
    unfold C
    simp [show (1769472 * k + 1397567) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4192702) = 2654208 * k + 2096351 := by
    unfold C
    simp [show (5308416 * k + 4192702) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2096351) = 7962624 * k + 6289054 := by
    unfold C
    simp [show (2654208 * k + 2096351) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6289054) = 3981312 * k + 3144527 := by
    unfold C
    simp [show (7962624 * k + 6289054) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3144527) = 11943936 * k + 9433582 := by
    unfold C
    simp [show (3981312 * k + 3144527) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9433582) = 5971968 * k + 4716791 := by
    unfold C
    simp [show (11943936 * k + 9433582) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4716791) = 17915904 * k + 14150374 := by
    unfold C
    simp [show (5971968 * k + 4716791) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14150374) = 8957952 * k + 7075187 := by
    unfold C
    simp [show (17915904 * k + 14150374) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7075187) = 26873856 * k + 21225562 := by
    unfold C
    simp [show (8957952 * k + 7075187) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21225562) = 13436928 * k + 10612781 := by
    unfold C
    simp [show (26873856 * k + 21225562) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10612781) = 40310784 * k + 31838344 := by
    unfold C
    simp [show (13436928 * k + 10612781) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31838344) = 20155392 * k + 15919172 := by
    unfold C
    simp [show (40310784 * k + 31838344) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15919172) = 10077696 * k + 7959586 := by
    unfold C
    simp [show (20155392 * k + 15919172) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7959586) = 5038848 * k + 3979793 := by
    unfold C
    simp [show (10077696 * k + 7959586) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3979793) = 15116544 * k + 11939380 := by
    unfold C
    simp [show (5038848 * k + 3979793) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11939380) = 7558272 * k + 5969690 := by
    unfold C
    simp [show (15116544 * k + 11939380) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5969690) = 3779136 * k + 2984845 := by
    unfold C
    simp [show (7558272 * k + 5969690) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2984845) = 11337408 * k + 8954536 := by
    unfold C
    simp [show (3779136 * k + 2984845) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8954536) = 5668704 * k + 4477268 := by
    unfold C
    simp [show (11337408 * k + 8954536) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4477268) = 2834352 * k + 2238634 := by
    unfold C
    simp [show (5668704 * k + 4477268) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2238634) = 1417176 * k + 1119317 := by
    unfold C
    simp [show (2834352 * k + 2238634) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1119317) = 4251528 * k + 3357952 := by
    unfold C
    simp [show (1417176 * k + 1119317) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3357952) = 2125764 * k + 1678976 := by
    unfold C
    simp [show (4251528 * k + 3357952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1678976) = 1062882 * k + 839488 := by
    unfold C
    simp [show (2125764 * k + 1678976) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 839488) = 531441 * k + 419744 := by
    unfold C
    simp [show (1062882 * k + 839488) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 828187) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 828187)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_828655 : ∀ k : Nat,
    iterate (1048576 * k + 828655) 32 = 531441 * k + 419981 ∧
      531441 * k + 419981 < 1048576 * k + 828655 := by
  intro k
  have h1 : C (1048576 * k + 828655) = 3145728 * k + 2485966 := by
    unfold C
    simp [show (1048576 * k + 828655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2485966) = 1572864 * k + 1242983 := by
    unfold C
    simp [show (3145728 * k + 2485966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1242983) = 4718592 * k + 3728950 := by
    unfold C
    simp [show (1572864 * k + 1242983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3728950) = 2359296 * k + 1864475 := by
    unfold C
    simp [show (4718592 * k + 3728950) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1864475) = 7077888 * k + 5593426 := by
    unfold C
    simp [show (2359296 * k + 1864475) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5593426) = 3538944 * k + 2796713 := by
    unfold C
    simp [show (7077888 * k + 5593426) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2796713) = 10616832 * k + 8390140 := by
    unfold C
    simp [show (3538944 * k + 2796713) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8390140) = 5308416 * k + 4195070 := by
    unfold C
    simp [show (10616832 * k + 8390140) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4195070) = 2654208 * k + 2097535 := by
    unfold C
    simp [show (5308416 * k + 4195070) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2097535) = 7962624 * k + 6292606 := by
    unfold C
    simp [show (2654208 * k + 2097535) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6292606) = 3981312 * k + 3146303 := by
    unfold C
    simp [show (7962624 * k + 6292606) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3146303) = 11943936 * k + 9438910 := by
    unfold C
    simp [show (3981312 * k + 3146303) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9438910) = 5971968 * k + 4719455 := by
    unfold C
    simp [show (11943936 * k + 9438910) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4719455) = 17915904 * k + 14158366 := by
    unfold C
    simp [show (5971968 * k + 4719455) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14158366) = 8957952 * k + 7079183 := by
    unfold C
    simp [show (17915904 * k + 14158366) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7079183) = 26873856 * k + 21237550 := by
    unfold C
    simp [show (8957952 * k + 7079183) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21237550) = 13436928 * k + 10618775 := by
    unfold C
    simp [show (26873856 * k + 21237550) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10618775) = 40310784 * k + 31856326 := by
    unfold C
    simp [show (13436928 * k + 10618775) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31856326) = 20155392 * k + 15928163 := by
    unfold C
    simp [show (40310784 * k + 31856326) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15928163) = 60466176 * k + 47784490 := by
    unfold C
    simp [show (20155392 * k + 15928163) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 47784490) = 30233088 * k + 23892245 := by
    unfold C
    simp [show (60466176 * k + 47784490) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 23892245) = 90699264 * k + 71676736 := by
    unfold C
    simp [show (30233088 * k + 23892245) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 71676736) = 45349632 * k + 35838368 := by
    unfold C
    simp [show (90699264 * k + 71676736) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 35838368) = 22674816 * k + 17919184 := by
    unfold C
    simp [show (45349632 * k + 35838368) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17919184) = 11337408 * k + 8959592 := by
    unfold C
    simp [show (22674816 * k + 17919184) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8959592) = 5668704 * k + 4479796 := by
    unfold C
    simp [show (11337408 * k + 8959592) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4479796) = 2834352 * k + 2239898 := by
    unfold C
    simp [show (5668704 * k + 4479796) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2239898) = 1417176 * k + 1119949 := by
    unfold C
    simp [show (2834352 * k + 2239898) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1119949) = 4251528 * k + 3359848 := by
    unfold C
    simp [show (1417176 * k + 1119949) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3359848) = 2125764 * k + 1679924 := by
    unfold C
    simp [show (4251528 * k + 3359848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1679924) = 1062882 * k + 839962 := by
    unfold C
    simp [show (2125764 * k + 1679924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 839962) = 531441 * k + 419981 := by
    unfold C
    simp [show (1062882 * k + 839962) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 828655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 828655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_828743 : ∀ k : Nat,
    iterate (1048576 * k + 828743) 32 = 531441 * k + 420026 ∧
      531441 * k + 420026 < 1048576 * k + 828743 := by
  intro k
  have h1 : C (1048576 * k + 828743) = 3145728 * k + 2486230 := by
    unfold C
    simp [show (1048576 * k + 828743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2486230) = 1572864 * k + 1243115 := by
    unfold C
    simp [show (3145728 * k + 2486230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1243115) = 4718592 * k + 3729346 := by
    unfold C
    simp [show (1572864 * k + 1243115) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3729346) = 2359296 * k + 1864673 := by
    unfold C
    simp [show (4718592 * k + 3729346) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1864673) = 7077888 * k + 5594020 := by
    unfold C
    simp [show (2359296 * k + 1864673) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5594020) = 3538944 * k + 2797010 := by
    unfold C
    simp [show (7077888 * k + 5594020) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2797010) = 1769472 * k + 1398505 := by
    unfold C
    simp [show (3538944 * k + 2797010) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1398505) = 5308416 * k + 4195516 := by
    unfold C
    simp [show (1769472 * k + 1398505) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4195516) = 2654208 * k + 2097758 := by
    unfold C
    simp [show (5308416 * k + 4195516) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2097758) = 1327104 * k + 1048879 := by
    unfold C
    simp [show (2654208 * k + 2097758) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1048879) = 3981312 * k + 3146638 := by
    unfold C
    simp [show (1327104 * k + 1048879) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3146638) = 1990656 * k + 1573319 := by
    unfold C
    simp [show (3981312 * k + 3146638) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1573319) = 5971968 * k + 4719958 := by
    unfold C
    simp [show (1990656 * k + 1573319) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4719958) = 2985984 * k + 2359979 := by
    unfold C
    simp [show (5971968 * k + 4719958) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2359979) = 8957952 * k + 7079938 := by
    unfold C
    simp [show (2985984 * k + 2359979) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7079938) = 4478976 * k + 3539969 := by
    unfold C
    simp [show (8957952 * k + 7079938) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3539969) = 13436928 * k + 10619908 := by
    unfold C
    simp [show (4478976 * k + 3539969) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10619908) = 6718464 * k + 5309954 := by
    unfold C
    simp [show (13436928 * k + 10619908) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5309954) = 3359232 * k + 2654977 := by
    unfold C
    simp [show (6718464 * k + 5309954) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2654977) = 10077696 * k + 7964932 := by
    unfold C
    simp [show (3359232 * k + 2654977) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7964932) = 5038848 * k + 3982466 := by
    unfold C
    simp [show (10077696 * k + 7964932) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3982466) = 2519424 * k + 1991233 := by
    unfold C
    simp [show (5038848 * k + 3982466) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1991233) = 7558272 * k + 5973700 := by
    unfold C
    simp [show (2519424 * k + 1991233) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5973700) = 3779136 * k + 2986850 := by
    unfold C
    simp [show (7558272 * k + 5973700) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2986850) = 1889568 * k + 1493425 := by
    unfold C
    simp [show (3779136 * k + 2986850) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1493425) = 5668704 * k + 4480276 := by
    unfold C
    simp [show (1889568 * k + 1493425) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4480276) = 2834352 * k + 2240138 := by
    unfold C
    simp [show (5668704 * k + 4480276) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2240138) = 1417176 * k + 1120069 := by
    unfold C
    simp [show (2834352 * k + 2240138) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1120069) = 4251528 * k + 3360208 := by
    unfold C
    simp [show (1417176 * k + 1120069) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3360208) = 2125764 * k + 1680104 := by
    unfold C
    simp [show (4251528 * k + 3360208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1680104) = 1062882 * k + 840052 := by
    unfold C
    simp [show (2125764 * k + 1680104) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 840052) = 531441 * k + 420026 := by
    unfold C
    simp [show (1062882 * k + 840052) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 828743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 828743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_829019 : ∀ k : Nat,
    iterate (1048576 * k + 829019) 32 = 531441 * k + 420166 ∧
      531441 * k + 420166 < 1048576 * k + 829019 := by
  intro k
  have h1 : C (1048576 * k + 829019) = 3145728 * k + 2487058 := by
    unfold C
    simp [show (1048576 * k + 829019) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2487058) = 1572864 * k + 1243529 := by
    unfold C
    simp [show (3145728 * k + 2487058) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1243529) = 4718592 * k + 3730588 := by
    unfold C
    simp [show (1572864 * k + 1243529) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3730588) = 2359296 * k + 1865294 := by
    unfold C
    simp [show (4718592 * k + 3730588) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1865294) = 1179648 * k + 932647 := by
    unfold C
    simp [show (2359296 * k + 1865294) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 932647) = 3538944 * k + 2797942 := by
    unfold C
    simp [show (1179648 * k + 932647) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2797942) = 1769472 * k + 1398971 := by
    unfold C
    simp [show (3538944 * k + 2797942) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1398971) = 5308416 * k + 4196914 := by
    unfold C
    simp [show (1769472 * k + 1398971) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4196914) = 2654208 * k + 2098457 := by
    unfold C
    simp [show (5308416 * k + 4196914) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2098457) = 7962624 * k + 6295372 := by
    unfold C
    simp [show (2654208 * k + 2098457) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6295372) = 3981312 * k + 3147686 := by
    unfold C
    simp [show (7962624 * k + 6295372) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3147686) = 1990656 * k + 1573843 := by
    unfold C
    simp [show (3981312 * k + 3147686) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1573843) = 5971968 * k + 4721530 := by
    unfold C
    simp [show (1990656 * k + 1573843) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4721530) = 2985984 * k + 2360765 := by
    unfold C
    simp [show (5971968 * k + 4721530) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2360765) = 8957952 * k + 7082296 := by
    unfold C
    simp [show (2985984 * k + 2360765) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7082296) = 4478976 * k + 3541148 := by
    unfold C
    simp [show (8957952 * k + 7082296) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3541148) = 2239488 * k + 1770574 := by
    unfold C
    simp [show (4478976 * k + 3541148) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1770574) = 1119744 * k + 885287 := by
    unfold C
    simp [show (2239488 * k + 1770574) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 885287) = 3359232 * k + 2655862 := by
    unfold C
    simp [show (1119744 * k + 885287) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2655862) = 1679616 * k + 1327931 := by
    unfold C
    simp [show (3359232 * k + 2655862) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1327931) = 5038848 * k + 3983794 := by
    unfold C
    simp [show (1679616 * k + 1327931) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3983794) = 2519424 * k + 1991897 := by
    unfold C
    simp [show (5038848 * k + 3983794) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1991897) = 7558272 * k + 5975692 := by
    unfold C
    simp [show (2519424 * k + 1991897) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5975692) = 3779136 * k + 2987846 := by
    unfold C
    simp [show (7558272 * k + 5975692) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2987846) = 1889568 * k + 1493923 := by
    unfold C
    simp [show (3779136 * k + 2987846) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1493923) = 5668704 * k + 4481770 := by
    unfold C
    simp [show (1889568 * k + 1493923) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4481770) = 2834352 * k + 2240885 := by
    unfold C
    simp [show (5668704 * k + 4481770) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2240885) = 8503056 * k + 6722656 := by
    unfold C
    simp [show (2834352 * k + 2240885) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6722656) = 4251528 * k + 3361328 := by
    unfold C
    simp [show (8503056 * k + 6722656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3361328) = 2125764 * k + 1680664 := by
    unfold C
    simp [show (4251528 * k + 3361328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1680664) = 1062882 * k + 840332 := by
    unfold C
    simp [show (2125764 * k + 1680664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 840332) = 531441 * k + 420166 := by
    unfold C
    simp [show (1062882 * k + 840332) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 829019) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 829019)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_829679 : ∀ k : Nat,
    iterate (1048576 * k + 829679) 32 = 531441 * k + 420500 ∧
      531441 * k + 420500 < 1048576 * k + 829679 := by
  intro k
  have h1 : C (1048576 * k + 829679) = 3145728 * k + 2489038 := by
    unfold C
    simp [show (1048576 * k + 829679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2489038) = 1572864 * k + 1244519 := by
    unfold C
    simp [show (3145728 * k + 2489038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1244519) = 4718592 * k + 3733558 := by
    unfold C
    simp [show (1572864 * k + 1244519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3733558) = 2359296 * k + 1866779 := by
    unfold C
    simp [show (4718592 * k + 3733558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1866779) = 7077888 * k + 5600338 := by
    unfold C
    simp [show (2359296 * k + 1866779) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5600338) = 3538944 * k + 2800169 := by
    unfold C
    simp [show (7077888 * k + 5600338) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2800169) = 10616832 * k + 8400508 := by
    unfold C
    simp [show (3538944 * k + 2800169) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8400508) = 5308416 * k + 4200254 := by
    unfold C
    simp [show (10616832 * k + 8400508) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4200254) = 2654208 * k + 2100127 := by
    unfold C
    simp [show (5308416 * k + 4200254) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2100127) = 7962624 * k + 6300382 := by
    unfold C
    simp [show (2654208 * k + 2100127) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6300382) = 3981312 * k + 3150191 := by
    unfold C
    simp [show (7962624 * k + 6300382) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3150191) = 11943936 * k + 9450574 := by
    unfold C
    simp [show (3981312 * k + 3150191) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9450574) = 5971968 * k + 4725287 := by
    unfold C
    simp [show (11943936 * k + 9450574) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4725287) = 17915904 * k + 14175862 := by
    unfold C
    simp [show (5971968 * k + 4725287) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14175862) = 8957952 * k + 7087931 := by
    unfold C
    simp [show (17915904 * k + 14175862) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7087931) = 26873856 * k + 21263794 := by
    unfold C
    simp [show (8957952 * k + 7087931) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21263794) = 13436928 * k + 10631897 := by
    unfold C
    simp [show (26873856 * k + 21263794) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10631897) = 40310784 * k + 31895692 := by
    unfold C
    simp [show (13436928 * k + 10631897) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31895692) = 20155392 * k + 15947846 := by
    unfold C
    simp [show (40310784 * k + 31895692) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15947846) = 10077696 * k + 7973923 := by
    unfold C
    simp [show (20155392 * k + 15947846) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7973923) = 30233088 * k + 23921770 := by
    unfold C
    simp [show (10077696 * k + 7973923) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23921770) = 15116544 * k + 11960885 := by
    unfold C
    simp [show (30233088 * k + 23921770) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11960885) = 45349632 * k + 35882656 := by
    unfold C
    simp [show (15116544 * k + 11960885) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 35882656) = 22674816 * k + 17941328 := by
    unfold C
    simp [show (45349632 * k + 35882656) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17941328) = 11337408 * k + 8970664 := by
    unfold C
    simp [show (22674816 * k + 17941328) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8970664) = 5668704 * k + 4485332 := by
    unfold C
    simp [show (11337408 * k + 8970664) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4485332) = 2834352 * k + 2242666 := by
    unfold C
    simp [show (5668704 * k + 4485332) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2242666) = 1417176 * k + 1121333 := by
    unfold C
    simp [show (2834352 * k + 2242666) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1121333) = 4251528 * k + 3364000 := by
    unfold C
    simp [show (1417176 * k + 1121333) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3364000) = 2125764 * k + 1682000 := by
    unfold C
    simp [show (4251528 * k + 3364000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1682000) = 1062882 * k + 841000 := by
    unfold C
    simp [show (2125764 * k + 1682000) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 841000) = 531441 * k + 420500 := by
    unfold C
    simp [show (1062882 * k + 841000) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 829679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 829679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_830111 : ∀ k : Nat,
    iterate (1048576 * k + 830111) 32 = 531441 * k + 420719 ∧
      531441 * k + 420719 < 1048576 * k + 830111 := by
  intro k
  have h1 : C (1048576 * k + 830111) = 3145728 * k + 2490334 := by
    unfold C
    simp [show (1048576 * k + 830111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2490334) = 1572864 * k + 1245167 := by
    unfold C
    simp [show (3145728 * k + 2490334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1245167) = 4718592 * k + 3735502 := by
    unfold C
    simp [show (1572864 * k + 1245167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3735502) = 2359296 * k + 1867751 := by
    unfold C
    simp [show (4718592 * k + 3735502) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1867751) = 7077888 * k + 5603254 := by
    unfold C
    simp [show (2359296 * k + 1867751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5603254) = 3538944 * k + 2801627 := by
    unfold C
    simp [show (7077888 * k + 5603254) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2801627) = 10616832 * k + 8404882 := by
    unfold C
    simp [show (3538944 * k + 2801627) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8404882) = 5308416 * k + 4202441 := by
    unfold C
    simp [show (10616832 * k + 8404882) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4202441) = 15925248 * k + 12607324 := by
    unfold C
    simp [show (5308416 * k + 4202441) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12607324) = 7962624 * k + 6303662 := by
    unfold C
    simp [show (15925248 * k + 12607324) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6303662) = 3981312 * k + 3151831 := by
    unfold C
    simp [show (7962624 * k + 6303662) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3151831) = 11943936 * k + 9455494 := by
    unfold C
    simp [show (3981312 * k + 3151831) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9455494) = 5971968 * k + 4727747 := by
    unfold C
    simp [show (11943936 * k + 9455494) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4727747) = 17915904 * k + 14183242 := by
    unfold C
    simp [show (5971968 * k + 4727747) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14183242) = 8957952 * k + 7091621 := by
    unfold C
    simp [show (17915904 * k + 14183242) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7091621) = 26873856 * k + 21274864 := by
    unfold C
    simp [show (8957952 * k + 7091621) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21274864) = 13436928 * k + 10637432 := by
    unfold C
    simp [show (26873856 * k + 21274864) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10637432) = 6718464 * k + 5318716 := by
    unfold C
    simp [show (13436928 * k + 10637432) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5318716) = 3359232 * k + 2659358 := by
    unfold C
    simp [show (6718464 * k + 5318716) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2659358) = 1679616 * k + 1329679 := by
    unfold C
    simp [show (3359232 * k + 2659358) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1329679) = 5038848 * k + 3989038 := by
    unfold C
    simp [show (1679616 * k + 1329679) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3989038) = 2519424 * k + 1994519 := by
    unfold C
    simp [show (5038848 * k + 3989038) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1994519) = 7558272 * k + 5983558 := by
    unfold C
    simp [show (2519424 * k + 1994519) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5983558) = 3779136 * k + 2991779 := by
    unfold C
    simp [show (7558272 * k + 5983558) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2991779) = 11337408 * k + 8975338 := by
    unfold C
    simp [show (3779136 * k + 2991779) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8975338) = 5668704 * k + 4487669 := by
    unfold C
    simp [show (11337408 * k + 8975338) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4487669) = 17006112 * k + 13463008 := by
    unfold C
    simp [show (5668704 * k + 4487669) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13463008) = 8503056 * k + 6731504 := by
    unfold C
    simp [show (17006112 * k + 13463008) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6731504) = 4251528 * k + 3365752 := by
    unfold C
    simp [show (8503056 * k + 6731504) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3365752) = 2125764 * k + 1682876 := by
    unfold C
    simp [show (4251528 * k + 3365752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1682876) = 1062882 * k + 841438 := by
    unfold C
    simp [show (2125764 * k + 1682876) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 841438) = 531441 * k + 420719 := by
    unfold C
    simp [show (1062882 * k + 841438) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 830111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 830111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_830235 : ∀ k : Nat,
    iterate (1048576 * k + 830235) 32 = 531441 * k + 420782 ∧
      531441 * k + 420782 < 1048576 * k + 830235 := by
  intro k
  have h1 : C (1048576 * k + 830235) = 3145728 * k + 2490706 := by
    unfold C
    simp [show (1048576 * k + 830235) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2490706) = 1572864 * k + 1245353 := by
    unfold C
    simp [show (3145728 * k + 2490706) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1245353) = 4718592 * k + 3736060 := by
    unfold C
    simp [show (1572864 * k + 1245353) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3736060) = 2359296 * k + 1868030 := by
    unfold C
    simp [show (4718592 * k + 3736060) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1868030) = 1179648 * k + 934015 := by
    unfold C
    simp [show (2359296 * k + 1868030) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 934015) = 3538944 * k + 2802046 := by
    unfold C
    simp [show (1179648 * k + 934015) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2802046) = 1769472 * k + 1401023 := by
    unfold C
    simp [show (3538944 * k + 2802046) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1401023) = 5308416 * k + 4203070 := by
    unfold C
    simp [show (1769472 * k + 1401023) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4203070) = 2654208 * k + 2101535 := by
    unfold C
    simp [show (5308416 * k + 4203070) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2101535) = 7962624 * k + 6304606 := by
    unfold C
    simp [show (2654208 * k + 2101535) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6304606) = 3981312 * k + 3152303 := by
    unfold C
    simp [show (7962624 * k + 6304606) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3152303) = 11943936 * k + 9456910 := by
    unfold C
    simp [show (3981312 * k + 3152303) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9456910) = 5971968 * k + 4728455 := by
    unfold C
    simp [show (11943936 * k + 9456910) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4728455) = 17915904 * k + 14185366 := by
    unfold C
    simp [show (5971968 * k + 4728455) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14185366) = 8957952 * k + 7092683 := by
    unfold C
    simp [show (17915904 * k + 14185366) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7092683) = 26873856 * k + 21278050 := by
    unfold C
    simp [show (8957952 * k + 7092683) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21278050) = 13436928 * k + 10639025 := by
    unfold C
    simp [show (26873856 * k + 21278050) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10639025) = 40310784 * k + 31917076 := by
    unfold C
    simp [show (13436928 * k + 10639025) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31917076) = 20155392 * k + 15958538 := by
    unfold C
    simp [show (40310784 * k + 31917076) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15958538) = 10077696 * k + 7979269 := by
    unfold C
    simp [show (20155392 * k + 15958538) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7979269) = 30233088 * k + 23937808 := by
    unfold C
    simp [show (10077696 * k + 7979269) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23937808) = 15116544 * k + 11968904 := by
    unfold C
    simp [show (30233088 * k + 23937808) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11968904) = 7558272 * k + 5984452 := by
    unfold C
    simp [show (15116544 * k + 11968904) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5984452) = 3779136 * k + 2992226 := by
    unfold C
    simp [show (7558272 * k + 5984452) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2992226) = 1889568 * k + 1496113 := by
    unfold C
    simp [show (3779136 * k + 2992226) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1496113) = 5668704 * k + 4488340 := by
    unfold C
    simp [show (1889568 * k + 1496113) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4488340) = 2834352 * k + 2244170 := by
    unfold C
    simp [show (5668704 * k + 4488340) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2244170) = 1417176 * k + 1122085 := by
    unfold C
    simp [show (2834352 * k + 2244170) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1122085) = 4251528 * k + 3366256 := by
    unfold C
    simp [show (1417176 * k + 1122085) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3366256) = 2125764 * k + 1683128 := by
    unfold C
    simp [show (4251528 * k + 3366256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1683128) = 1062882 * k + 841564 := by
    unfold C
    simp [show (2125764 * k + 1683128) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 841564) = 531441 * k + 420782 := by
    unfold C
    simp [show (1062882 * k + 841564) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 830235) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 830235)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_830239 : ∀ k : Nat,
    iterate (1048576 * k + 830239) 32 = 531441 * k + 420784 ∧
      531441 * k + 420784 < 1048576 * k + 830239 := by
  intro k
  have h1 : C (1048576 * k + 830239) = 3145728 * k + 2490718 := by
    unfold C
    simp [show (1048576 * k + 830239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2490718) = 1572864 * k + 1245359 := by
    unfold C
    simp [show (3145728 * k + 2490718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1245359) = 4718592 * k + 3736078 := by
    unfold C
    simp [show (1572864 * k + 1245359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3736078) = 2359296 * k + 1868039 := by
    unfold C
    simp [show (4718592 * k + 3736078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1868039) = 7077888 * k + 5604118 := by
    unfold C
    simp [show (2359296 * k + 1868039) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5604118) = 3538944 * k + 2802059 := by
    unfold C
    simp [show (7077888 * k + 5604118) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2802059) = 10616832 * k + 8406178 := by
    unfold C
    simp [show (3538944 * k + 2802059) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8406178) = 5308416 * k + 4203089 := by
    unfold C
    simp [show (10616832 * k + 8406178) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4203089) = 15925248 * k + 12609268 := by
    unfold C
    simp [show (5308416 * k + 4203089) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12609268) = 7962624 * k + 6304634 := by
    unfold C
    simp [show (15925248 * k + 12609268) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6304634) = 3981312 * k + 3152317 := by
    unfold C
    simp [show (7962624 * k + 6304634) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3152317) = 11943936 * k + 9456952 := by
    unfold C
    simp [show (3981312 * k + 3152317) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9456952) = 5971968 * k + 4728476 := by
    unfold C
    simp [show (11943936 * k + 9456952) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4728476) = 2985984 * k + 2364238 := by
    unfold C
    simp [show (5971968 * k + 4728476) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2364238) = 1492992 * k + 1182119 := by
    unfold C
    simp [show (2985984 * k + 2364238) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1182119) = 4478976 * k + 3546358 := by
    unfold C
    simp [show (1492992 * k + 1182119) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3546358) = 2239488 * k + 1773179 := by
    unfold C
    simp [show (4478976 * k + 3546358) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1773179) = 6718464 * k + 5319538 := by
    unfold C
    simp [show (2239488 * k + 1773179) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5319538) = 3359232 * k + 2659769 := by
    unfold C
    simp [show (6718464 * k + 5319538) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2659769) = 10077696 * k + 7979308 := by
    unfold C
    simp [show (3359232 * k + 2659769) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7979308) = 5038848 * k + 3989654 := by
    unfold C
    simp [show (10077696 * k + 7979308) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3989654) = 2519424 * k + 1994827 := by
    unfold C
    simp [show (5038848 * k + 3989654) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1994827) = 7558272 * k + 5984482 := by
    unfold C
    simp [show (2519424 * k + 1994827) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5984482) = 3779136 * k + 2992241 := by
    unfold C
    simp [show (7558272 * k + 5984482) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2992241) = 11337408 * k + 8976724 := by
    unfold C
    simp [show (3779136 * k + 2992241) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8976724) = 5668704 * k + 4488362 := by
    unfold C
    simp [show (11337408 * k + 8976724) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4488362) = 2834352 * k + 2244181 := by
    unfold C
    simp [show (5668704 * k + 4488362) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2244181) = 8503056 * k + 6732544 := by
    unfold C
    simp [show (2834352 * k + 2244181) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6732544) = 4251528 * k + 3366272 := by
    unfold C
    simp [show (8503056 * k + 6732544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3366272) = 2125764 * k + 1683136 := by
    unfold C
    simp [show (4251528 * k + 3366272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1683136) = 1062882 * k + 841568 := by
    unfold C
    simp [show (2125764 * k + 1683136) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 841568) = 531441 * k + 420784 := by
    unfold C
    simp [show (1062882 * k + 841568) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 830239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 830239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_830719 : ∀ k : Nat,
    iterate (1048576 * k + 830719) 32 = 531441 * k + 421027 ∧
      531441 * k + 421027 < 1048576 * k + 830719 := by
  intro k
  have h1 : C (1048576 * k + 830719) = 3145728 * k + 2492158 := by
    unfold C
    simp [show (1048576 * k + 830719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2492158) = 1572864 * k + 1246079 := by
    unfold C
    simp [show (3145728 * k + 2492158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1246079) = 4718592 * k + 3738238 := by
    unfold C
    simp [show (1572864 * k + 1246079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3738238) = 2359296 * k + 1869119 := by
    unfold C
    simp [show (4718592 * k + 3738238) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1869119) = 7077888 * k + 5607358 := by
    unfold C
    simp [show (2359296 * k + 1869119) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5607358) = 3538944 * k + 2803679 := by
    unfold C
    simp [show (7077888 * k + 5607358) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2803679) = 10616832 * k + 8411038 := by
    unfold C
    simp [show (3538944 * k + 2803679) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8411038) = 5308416 * k + 4205519 := by
    unfold C
    simp [show (10616832 * k + 8411038) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4205519) = 15925248 * k + 12616558 := by
    unfold C
    simp [show (5308416 * k + 4205519) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12616558) = 7962624 * k + 6308279 := by
    unfold C
    simp [show (15925248 * k + 12616558) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6308279) = 23887872 * k + 18924838 := by
    unfold C
    simp [show (7962624 * k + 6308279) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18924838) = 11943936 * k + 9462419 := by
    unfold C
    simp [show (23887872 * k + 18924838) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9462419) = 35831808 * k + 28387258 := by
    unfold C
    simp [show (11943936 * k + 9462419) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 28387258) = 17915904 * k + 14193629 := by
    unfold C
    simp [show (35831808 * k + 28387258) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14193629) = 53747712 * k + 42580888 := by
    unfold C
    simp [show (17915904 * k + 14193629) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 42580888) = 26873856 * k + 21290444 := by
    unfold C
    simp [show (53747712 * k + 42580888) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 21290444) = 13436928 * k + 10645222 := by
    unfold C
    simp [show (26873856 * k + 21290444) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10645222) = 6718464 * k + 5322611 := by
    unfold C
    simp [show (13436928 * k + 10645222) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5322611) = 20155392 * k + 15967834 := by
    unfold C
    simp [show (6718464 * k + 5322611) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15967834) = 10077696 * k + 7983917 := by
    unfold C
    simp [show (20155392 * k + 15967834) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7983917) = 30233088 * k + 23951752 := by
    unfold C
    simp [show (10077696 * k + 7983917) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23951752) = 15116544 * k + 11975876 := by
    unfold C
    simp [show (30233088 * k + 23951752) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11975876) = 7558272 * k + 5987938 := by
    unfold C
    simp [show (15116544 * k + 11975876) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5987938) = 3779136 * k + 2993969 := by
    unfold C
    simp [show (7558272 * k + 5987938) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2993969) = 11337408 * k + 8981908 := by
    unfold C
    simp [show (3779136 * k + 2993969) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8981908) = 5668704 * k + 4490954 := by
    unfold C
    simp [show (11337408 * k + 8981908) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4490954) = 2834352 * k + 2245477 := by
    unfold C
    simp [show (5668704 * k + 4490954) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2245477) = 8503056 * k + 6736432 := by
    unfold C
    simp [show (2834352 * k + 2245477) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6736432) = 4251528 * k + 3368216 := by
    unfold C
    simp [show (8503056 * k + 6736432) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3368216) = 2125764 * k + 1684108 := by
    unfold C
    simp [show (4251528 * k + 3368216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1684108) = 1062882 * k + 842054 := by
    unfold C
    simp [show (2125764 * k + 1684108) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 842054) = 531441 * k + 421027 := by
    unfold C
    simp [show (1062882 * k + 842054) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 830719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 830719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_830927 : ∀ k : Nat,
    iterate (1048576 * k + 830927) 32 = 531441 * k + 421133 ∧
      531441 * k + 421133 < 1048576 * k + 830927 := by
  intro k
  have h1 : C (1048576 * k + 830927) = 3145728 * k + 2492782 := by
    unfold C
    simp [show (1048576 * k + 830927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2492782) = 1572864 * k + 1246391 := by
    unfold C
    simp [show (3145728 * k + 2492782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1246391) = 4718592 * k + 3739174 := by
    unfold C
    simp [show (1572864 * k + 1246391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3739174) = 2359296 * k + 1869587 := by
    unfold C
    simp [show (4718592 * k + 3739174) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1869587) = 7077888 * k + 5608762 := by
    unfold C
    simp [show (2359296 * k + 1869587) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5608762) = 3538944 * k + 2804381 := by
    unfold C
    simp [show (7077888 * k + 5608762) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2804381) = 10616832 * k + 8413144 := by
    unfold C
    simp [show (3538944 * k + 2804381) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8413144) = 5308416 * k + 4206572 := by
    unfold C
    simp [show (10616832 * k + 8413144) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4206572) = 2654208 * k + 2103286 := by
    unfold C
    simp [show (5308416 * k + 4206572) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2103286) = 1327104 * k + 1051643 := by
    unfold C
    simp [show (2654208 * k + 2103286) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1051643) = 3981312 * k + 3154930 := by
    unfold C
    simp [show (1327104 * k + 1051643) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3154930) = 1990656 * k + 1577465 := by
    unfold C
    simp [show (3981312 * k + 3154930) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1577465) = 5971968 * k + 4732396 := by
    unfold C
    simp [show (1990656 * k + 1577465) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4732396) = 2985984 * k + 2366198 := by
    unfold C
    simp [show (5971968 * k + 4732396) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2366198) = 1492992 * k + 1183099 := by
    unfold C
    simp [show (2985984 * k + 2366198) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1183099) = 4478976 * k + 3549298 := by
    unfold C
    simp [show (1492992 * k + 1183099) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3549298) = 2239488 * k + 1774649 := by
    unfold C
    simp [show (4478976 * k + 3549298) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1774649) = 6718464 * k + 5323948 := by
    unfold C
    simp [show (2239488 * k + 1774649) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5323948) = 3359232 * k + 2661974 := by
    unfold C
    simp [show (6718464 * k + 5323948) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2661974) = 1679616 * k + 1330987 := by
    unfold C
    simp [show (3359232 * k + 2661974) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1330987) = 5038848 * k + 3992962 := by
    unfold C
    simp [show (1679616 * k + 1330987) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3992962) = 2519424 * k + 1996481 := by
    unfold C
    simp [show (5038848 * k + 3992962) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1996481) = 7558272 * k + 5989444 := by
    unfold C
    simp [show (2519424 * k + 1996481) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5989444) = 3779136 * k + 2994722 := by
    unfold C
    simp [show (7558272 * k + 5989444) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2994722) = 1889568 * k + 1497361 := by
    unfold C
    simp [show (3779136 * k + 2994722) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1497361) = 5668704 * k + 4492084 := by
    unfold C
    simp [show (1889568 * k + 1497361) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4492084) = 2834352 * k + 2246042 := by
    unfold C
    simp [show (5668704 * k + 4492084) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2246042) = 1417176 * k + 1123021 := by
    unfold C
    simp [show (2834352 * k + 2246042) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1123021) = 4251528 * k + 3369064 := by
    unfold C
    simp [show (1417176 * k + 1123021) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3369064) = 2125764 * k + 1684532 := by
    unfold C
    simp [show (4251528 * k + 3369064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1684532) = 1062882 * k + 842266 := by
    unfold C
    simp [show (2125764 * k + 1684532) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 842266) = 531441 * k + 421133 := by
    unfold C
    simp [show (1062882 * k + 842266) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 830927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 830927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_831087 : ∀ k : Nat,
    iterate (1048576 * k + 831087) 32 = 531441 * k + 421214 ∧
      531441 * k + 421214 < 1048576 * k + 831087 := by
  intro k
  have h1 : C (1048576 * k + 831087) = 3145728 * k + 2493262 := by
    unfold C
    simp [show (1048576 * k + 831087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2493262) = 1572864 * k + 1246631 := by
    unfold C
    simp [show (3145728 * k + 2493262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1246631) = 4718592 * k + 3739894 := by
    unfold C
    simp [show (1572864 * k + 1246631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3739894) = 2359296 * k + 1869947 := by
    unfold C
    simp [show (4718592 * k + 3739894) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1869947) = 7077888 * k + 5609842 := by
    unfold C
    simp [show (2359296 * k + 1869947) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5609842) = 3538944 * k + 2804921 := by
    unfold C
    simp [show (7077888 * k + 5609842) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2804921) = 10616832 * k + 8414764 := by
    unfold C
    simp [show (3538944 * k + 2804921) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8414764) = 5308416 * k + 4207382 := by
    unfold C
    simp [show (10616832 * k + 8414764) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4207382) = 2654208 * k + 2103691 := by
    unfold C
    simp [show (5308416 * k + 4207382) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2103691) = 7962624 * k + 6311074 := by
    unfold C
    simp [show (2654208 * k + 2103691) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6311074) = 3981312 * k + 3155537 := by
    unfold C
    simp [show (7962624 * k + 6311074) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3155537) = 11943936 * k + 9466612 := by
    unfold C
    simp [show (3981312 * k + 3155537) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9466612) = 5971968 * k + 4733306 := by
    unfold C
    simp [show (11943936 * k + 9466612) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4733306) = 2985984 * k + 2366653 := by
    unfold C
    simp [show (5971968 * k + 4733306) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2366653) = 8957952 * k + 7099960 := by
    unfold C
    simp [show (2985984 * k + 2366653) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7099960) = 4478976 * k + 3549980 := by
    unfold C
    simp [show (8957952 * k + 7099960) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3549980) = 2239488 * k + 1774990 := by
    unfold C
    simp [show (4478976 * k + 3549980) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1774990) = 1119744 * k + 887495 := by
    unfold C
    simp [show (2239488 * k + 1774990) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 887495) = 3359232 * k + 2662486 := by
    unfold C
    simp [show (1119744 * k + 887495) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2662486) = 1679616 * k + 1331243 := by
    unfold C
    simp [show (3359232 * k + 2662486) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1331243) = 5038848 * k + 3993730 := by
    unfold C
    simp [show (1679616 * k + 1331243) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3993730) = 2519424 * k + 1996865 := by
    unfold C
    simp [show (5038848 * k + 3993730) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1996865) = 7558272 * k + 5990596 := by
    unfold C
    simp [show (2519424 * k + 1996865) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5990596) = 3779136 * k + 2995298 := by
    unfold C
    simp [show (7558272 * k + 5990596) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2995298) = 1889568 * k + 1497649 := by
    unfold C
    simp [show (3779136 * k + 2995298) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1497649) = 5668704 * k + 4492948 := by
    unfold C
    simp [show (1889568 * k + 1497649) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4492948) = 2834352 * k + 2246474 := by
    unfold C
    simp [show (5668704 * k + 4492948) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2246474) = 1417176 * k + 1123237 := by
    unfold C
    simp [show (2834352 * k + 2246474) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1123237) = 4251528 * k + 3369712 := by
    unfold C
    simp [show (1417176 * k + 1123237) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3369712) = 2125764 * k + 1684856 := by
    unfold C
    simp [show (4251528 * k + 3369712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1684856) = 1062882 * k + 842428 := by
    unfold C
    simp [show (2125764 * k + 1684856) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 842428) = 531441 * k + 421214 := by
    unfold C
    simp [show (1062882 * k + 842428) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 831087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 831087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_831135 : ∀ k : Nat,
    iterate (1048576 * k + 831135) 32 = 531441 * k + 421238 ∧
      531441 * k + 421238 < 1048576 * k + 831135 := by
  intro k
  have h1 : C (1048576 * k + 831135) = 3145728 * k + 2493406 := by
    unfold C
    simp [show (1048576 * k + 831135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2493406) = 1572864 * k + 1246703 := by
    unfold C
    simp [show (3145728 * k + 2493406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1246703) = 4718592 * k + 3740110 := by
    unfold C
    simp [show (1572864 * k + 1246703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3740110) = 2359296 * k + 1870055 := by
    unfold C
    simp [show (4718592 * k + 3740110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1870055) = 7077888 * k + 5610166 := by
    unfold C
    simp [show (2359296 * k + 1870055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5610166) = 3538944 * k + 2805083 := by
    unfold C
    simp [show (7077888 * k + 5610166) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2805083) = 10616832 * k + 8415250 := by
    unfold C
    simp [show (3538944 * k + 2805083) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8415250) = 5308416 * k + 4207625 := by
    unfold C
    simp [show (10616832 * k + 8415250) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4207625) = 15925248 * k + 12622876 := by
    unfold C
    simp [show (5308416 * k + 4207625) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12622876) = 7962624 * k + 6311438 := by
    unfold C
    simp [show (15925248 * k + 12622876) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6311438) = 3981312 * k + 3155719 := by
    unfold C
    simp [show (7962624 * k + 6311438) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3155719) = 11943936 * k + 9467158 := by
    unfold C
    simp [show (3981312 * k + 3155719) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9467158) = 5971968 * k + 4733579 := by
    unfold C
    simp [show (11943936 * k + 9467158) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4733579) = 17915904 * k + 14200738 := by
    unfold C
    simp [show (5971968 * k + 4733579) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14200738) = 8957952 * k + 7100369 := by
    unfold C
    simp [show (17915904 * k + 14200738) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7100369) = 26873856 * k + 21301108 := by
    unfold C
    simp [show (8957952 * k + 7100369) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21301108) = 13436928 * k + 10650554 := by
    unfold C
    simp [show (26873856 * k + 21301108) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10650554) = 6718464 * k + 5325277 := by
    unfold C
    simp [show (13436928 * k + 10650554) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5325277) = 20155392 * k + 15975832 := by
    unfold C
    simp [show (6718464 * k + 5325277) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15975832) = 10077696 * k + 7987916 := by
    unfold C
    simp [show (20155392 * k + 15975832) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7987916) = 5038848 * k + 3993958 := by
    unfold C
    simp [show (10077696 * k + 7987916) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3993958) = 2519424 * k + 1996979 := by
    unfold C
    simp [show (5038848 * k + 3993958) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1996979) = 7558272 * k + 5990938 := by
    unfold C
    simp [show (2519424 * k + 1996979) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5990938) = 3779136 * k + 2995469 := by
    unfold C
    simp [show (7558272 * k + 5990938) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2995469) = 11337408 * k + 8986408 := by
    unfold C
    simp [show (3779136 * k + 2995469) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8986408) = 5668704 * k + 4493204 := by
    unfold C
    simp [show (11337408 * k + 8986408) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4493204) = 2834352 * k + 2246602 := by
    unfold C
    simp [show (5668704 * k + 4493204) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2246602) = 1417176 * k + 1123301 := by
    unfold C
    simp [show (2834352 * k + 2246602) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1123301) = 4251528 * k + 3369904 := by
    unfold C
    simp [show (1417176 * k + 1123301) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3369904) = 2125764 * k + 1684952 := by
    unfold C
    simp [show (4251528 * k + 3369904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1684952) = 1062882 * k + 842476 := by
    unfold C
    simp [show (2125764 * k + 1684952) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 842476) = 531441 * k + 421238 := by
    unfold C
    simp [show (1062882 * k + 842476) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 831135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 831135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_831727 : ∀ k : Nat,
    iterate (1048576 * k + 831727) 32 = 531441 * k + 421538 ∧
      531441 * k + 421538 < 1048576 * k + 831727 := by
  intro k
  have h1 : C (1048576 * k + 831727) = 3145728 * k + 2495182 := by
    unfold C
    simp [show (1048576 * k + 831727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2495182) = 1572864 * k + 1247591 := by
    unfold C
    simp [show (3145728 * k + 2495182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1247591) = 4718592 * k + 3742774 := by
    unfold C
    simp [show (1572864 * k + 1247591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3742774) = 2359296 * k + 1871387 := by
    unfold C
    simp [show (4718592 * k + 3742774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1871387) = 7077888 * k + 5614162 := by
    unfold C
    simp [show (2359296 * k + 1871387) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5614162) = 3538944 * k + 2807081 := by
    unfold C
    simp [show (7077888 * k + 5614162) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2807081) = 10616832 * k + 8421244 := by
    unfold C
    simp [show (3538944 * k + 2807081) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8421244) = 5308416 * k + 4210622 := by
    unfold C
    simp [show (10616832 * k + 8421244) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4210622) = 2654208 * k + 2105311 := by
    unfold C
    simp [show (5308416 * k + 4210622) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2105311) = 7962624 * k + 6315934 := by
    unfold C
    simp [show (2654208 * k + 2105311) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6315934) = 3981312 * k + 3157967 := by
    unfold C
    simp [show (7962624 * k + 6315934) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3157967) = 11943936 * k + 9473902 := by
    unfold C
    simp [show (3981312 * k + 3157967) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9473902) = 5971968 * k + 4736951 := by
    unfold C
    simp [show (11943936 * k + 9473902) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4736951) = 17915904 * k + 14210854 := by
    unfold C
    simp [show (5971968 * k + 4736951) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14210854) = 8957952 * k + 7105427 := by
    unfold C
    simp [show (17915904 * k + 14210854) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7105427) = 26873856 * k + 21316282 := by
    unfold C
    simp [show (8957952 * k + 7105427) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21316282) = 13436928 * k + 10658141 := by
    unfold C
    simp [show (26873856 * k + 21316282) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10658141) = 40310784 * k + 31974424 := by
    unfold C
    simp [show (13436928 * k + 10658141) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31974424) = 20155392 * k + 15987212 := by
    unfold C
    simp [show (40310784 * k + 31974424) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15987212) = 10077696 * k + 7993606 := by
    unfold C
    simp [show (20155392 * k + 15987212) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7993606) = 5038848 * k + 3996803 := by
    unfold C
    simp [show (10077696 * k + 7993606) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3996803) = 15116544 * k + 11990410 := by
    unfold C
    simp [show (5038848 * k + 3996803) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11990410) = 7558272 * k + 5995205 := by
    unfold C
    simp [show (15116544 * k + 11990410) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5995205) = 22674816 * k + 17985616 := by
    unfold C
    simp [show (7558272 * k + 5995205) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17985616) = 11337408 * k + 8992808 := by
    unfold C
    simp [show (22674816 * k + 17985616) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8992808) = 5668704 * k + 4496404 := by
    unfold C
    simp [show (11337408 * k + 8992808) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4496404) = 2834352 * k + 2248202 := by
    unfold C
    simp [show (5668704 * k + 4496404) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2248202) = 1417176 * k + 1124101 := by
    unfold C
    simp [show (2834352 * k + 2248202) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1124101) = 4251528 * k + 3372304 := by
    unfold C
    simp [show (1417176 * k + 1124101) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3372304) = 2125764 * k + 1686152 := by
    unfold C
    simp [show (4251528 * k + 3372304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1686152) = 1062882 * k + 843076 := by
    unfold C
    simp [show (2125764 * k + 1686152) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 843076) = 531441 * k + 421538 := by
    unfold C
    simp [show (1062882 * k + 843076) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 831727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 831727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_831815 : ∀ k : Nat,
    iterate (1048576 * k + 831815) 32 = 531441 * k + 421583 ∧
      531441 * k + 421583 < 1048576 * k + 831815 := by
  intro k
  have h1 : C (1048576 * k + 831815) = 3145728 * k + 2495446 := by
    unfold C
    simp [show (1048576 * k + 831815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2495446) = 1572864 * k + 1247723 := by
    unfold C
    simp [show (3145728 * k + 2495446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1247723) = 4718592 * k + 3743170 := by
    unfold C
    simp [show (1572864 * k + 1247723) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3743170) = 2359296 * k + 1871585 := by
    unfold C
    simp [show (4718592 * k + 3743170) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1871585) = 7077888 * k + 5614756 := by
    unfold C
    simp [show (2359296 * k + 1871585) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5614756) = 3538944 * k + 2807378 := by
    unfold C
    simp [show (7077888 * k + 5614756) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2807378) = 1769472 * k + 1403689 := by
    unfold C
    simp [show (3538944 * k + 2807378) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1403689) = 5308416 * k + 4211068 := by
    unfold C
    simp [show (1769472 * k + 1403689) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4211068) = 2654208 * k + 2105534 := by
    unfold C
    simp [show (5308416 * k + 4211068) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2105534) = 1327104 * k + 1052767 := by
    unfold C
    simp [show (2654208 * k + 2105534) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1052767) = 3981312 * k + 3158302 := by
    unfold C
    simp [show (1327104 * k + 1052767) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3158302) = 1990656 * k + 1579151 := by
    unfold C
    simp [show (3981312 * k + 3158302) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1579151) = 5971968 * k + 4737454 := by
    unfold C
    simp [show (1990656 * k + 1579151) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4737454) = 2985984 * k + 2368727 := by
    unfold C
    simp [show (5971968 * k + 4737454) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2368727) = 8957952 * k + 7106182 := by
    unfold C
    simp [show (2985984 * k + 2368727) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7106182) = 4478976 * k + 3553091 := by
    unfold C
    simp [show (8957952 * k + 7106182) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3553091) = 13436928 * k + 10659274 := by
    unfold C
    simp [show (4478976 * k + 3553091) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10659274) = 6718464 * k + 5329637 := by
    unfold C
    simp [show (13436928 * k + 10659274) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5329637) = 20155392 * k + 15988912 := by
    unfold C
    simp [show (6718464 * k + 5329637) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15988912) = 10077696 * k + 7994456 := by
    unfold C
    simp [show (20155392 * k + 15988912) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7994456) = 5038848 * k + 3997228 := by
    unfold C
    simp [show (10077696 * k + 7994456) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3997228) = 2519424 * k + 1998614 := by
    unfold C
    simp [show (5038848 * k + 3997228) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1998614) = 1259712 * k + 999307 := by
    unfold C
    simp [show (2519424 * k + 1998614) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 999307) = 3779136 * k + 2997922 := by
    unfold C
    simp [show (1259712 * k + 999307) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2997922) = 1889568 * k + 1498961 := by
    unfold C
    simp [show (3779136 * k + 2997922) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1498961) = 5668704 * k + 4496884 := by
    unfold C
    simp [show (1889568 * k + 1498961) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4496884) = 2834352 * k + 2248442 := by
    unfold C
    simp [show (5668704 * k + 4496884) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2248442) = 1417176 * k + 1124221 := by
    unfold C
    simp [show (2834352 * k + 2248442) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1124221) = 4251528 * k + 3372664 := by
    unfold C
    simp [show (1417176 * k + 1124221) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3372664) = 2125764 * k + 1686332 := by
    unfold C
    simp [show (4251528 * k + 3372664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1686332) = 1062882 * k + 843166 := by
    unfold C
    simp [show (2125764 * k + 1686332) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 843166) = 531441 * k + 421583 := by
    unfold C
    simp [show (1062882 * k + 843166) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 831815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 831815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_831975 : ∀ k : Nat,
    iterate (1048576 * k + 831975) 32 = 531441 * k + 421664 ∧
      531441 * k + 421664 < 1048576 * k + 831975 := by
  intro k
  have h1 : C (1048576 * k + 831975) = 3145728 * k + 2495926 := by
    unfold C
    simp [show (1048576 * k + 831975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2495926) = 1572864 * k + 1247963 := by
    unfold C
    simp [show (3145728 * k + 2495926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1247963) = 4718592 * k + 3743890 := by
    unfold C
    simp [show (1572864 * k + 1247963) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3743890) = 2359296 * k + 1871945 := by
    unfold C
    simp [show (4718592 * k + 3743890) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1871945) = 7077888 * k + 5615836 := by
    unfold C
    simp [show (2359296 * k + 1871945) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5615836) = 3538944 * k + 2807918 := by
    unfold C
    simp [show (7077888 * k + 5615836) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2807918) = 1769472 * k + 1403959 := by
    unfold C
    simp [show (3538944 * k + 2807918) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1403959) = 5308416 * k + 4211878 := by
    unfold C
    simp [show (1769472 * k + 1403959) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4211878) = 2654208 * k + 2105939 := by
    unfold C
    simp [show (5308416 * k + 4211878) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2105939) = 7962624 * k + 6317818 := by
    unfold C
    simp [show (2654208 * k + 2105939) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6317818) = 3981312 * k + 3158909 := by
    unfold C
    simp [show (7962624 * k + 6317818) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3158909) = 11943936 * k + 9476728 := by
    unfold C
    simp [show (3981312 * k + 3158909) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9476728) = 5971968 * k + 4738364 := by
    unfold C
    simp [show (11943936 * k + 9476728) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4738364) = 2985984 * k + 2369182 := by
    unfold C
    simp [show (5971968 * k + 4738364) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2369182) = 1492992 * k + 1184591 := by
    unfold C
    simp [show (2985984 * k + 2369182) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1184591) = 4478976 * k + 3553774 := by
    unfold C
    simp [show (1492992 * k + 1184591) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3553774) = 2239488 * k + 1776887 := by
    unfold C
    simp [show (4478976 * k + 3553774) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1776887) = 6718464 * k + 5330662 := by
    unfold C
    simp [show (2239488 * k + 1776887) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5330662) = 3359232 * k + 2665331 := by
    unfold C
    simp [show (6718464 * k + 5330662) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2665331) = 10077696 * k + 7995994 := by
    unfold C
    simp [show (3359232 * k + 2665331) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7995994) = 5038848 * k + 3997997 := by
    unfold C
    simp [show (10077696 * k + 7995994) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3997997) = 15116544 * k + 11993992 := by
    unfold C
    simp [show (5038848 * k + 3997997) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11993992) = 7558272 * k + 5996996 := by
    unfold C
    simp [show (15116544 * k + 11993992) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5996996) = 3779136 * k + 2998498 := by
    unfold C
    simp [show (7558272 * k + 5996996) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2998498) = 1889568 * k + 1499249 := by
    unfold C
    simp [show (3779136 * k + 2998498) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1499249) = 5668704 * k + 4497748 := by
    unfold C
    simp [show (1889568 * k + 1499249) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4497748) = 2834352 * k + 2248874 := by
    unfold C
    simp [show (5668704 * k + 4497748) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2248874) = 1417176 * k + 1124437 := by
    unfold C
    simp [show (2834352 * k + 2248874) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1124437) = 4251528 * k + 3373312 := by
    unfold C
    simp [show (1417176 * k + 1124437) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3373312) = 2125764 * k + 1686656 := by
    unfold C
    simp [show (4251528 * k + 3373312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1686656) = 1062882 * k + 843328 := by
    unfold C
    simp [show (2125764 * k + 1686656) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 843328) = 531441 * k + 421664 := by
    unfold C
    simp [show (1062882 * k + 843328) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 831975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 831975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_832743 : ∀ k : Nat,
    iterate (1048576 * k + 832743) 32 = 531441 * k + 422053 ∧
      531441 * k + 422053 < 1048576 * k + 832743 := by
  intro k
  have h1 : C (1048576 * k + 832743) = 3145728 * k + 2498230 := by
    unfold C
    simp [show (1048576 * k + 832743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2498230) = 1572864 * k + 1249115 := by
    unfold C
    simp [show (3145728 * k + 2498230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1249115) = 4718592 * k + 3747346 := by
    unfold C
    simp [show (1572864 * k + 1249115) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3747346) = 2359296 * k + 1873673 := by
    unfold C
    simp [show (4718592 * k + 3747346) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1873673) = 7077888 * k + 5621020 := by
    unfold C
    simp [show (2359296 * k + 1873673) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5621020) = 3538944 * k + 2810510 := by
    unfold C
    simp [show (7077888 * k + 5621020) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2810510) = 1769472 * k + 1405255 := by
    unfold C
    simp [show (3538944 * k + 2810510) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1405255) = 5308416 * k + 4215766 := by
    unfold C
    simp [show (1769472 * k + 1405255) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4215766) = 2654208 * k + 2107883 := by
    unfold C
    simp [show (5308416 * k + 4215766) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2107883) = 7962624 * k + 6323650 := by
    unfold C
    simp [show (2654208 * k + 2107883) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6323650) = 3981312 * k + 3161825 := by
    unfold C
    simp [show (7962624 * k + 6323650) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3161825) = 11943936 * k + 9485476 := by
    unfold C
    simp [show (3981312 * k + 3161825) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9485476) = 5971968 * k + 4742738 := by
    unfold C
    simp [show (11943936 * k + 9485476) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4742738) = 2985984 * k + 2371369 := by
    unfold C
    simp [show (5971968 * k + 4742738) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2371369) = 8957952 * k + 7114108 := by
    unfold C
    simp [show (2985984 * k + 2371369) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7114108) = 4478976 * k + 3557054 := by
    unfold C
    simp [show (8957952 * k + 7114108) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3557054) = 2239488 * k + 1778527 := by
    unfold C
    simp [show (4478976 * k + 3557054) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1778527) = 6718464 * k + 5335582 := by
    unfold C
    simp [show (2239488 * k + 1778527) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5335582) = 3359232 * k + 2667791 := by
    unfold C
    simp [show (6718464 * k + 5335582) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2667791) = 10077696 * k + 8003374 := by
    unfold C
    simp [show (3359232 * k + 2667791) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8003374) = 5038848 * k + 4001687 := by
    unfold C
    simp [show (10077696 * k + 8003374) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4001687) = 15116544 * k + 12005062 := by
    unfold C
    simp [show (5038848 * k + 4001687) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12005062) = 7558272 * k + 6002531 := by
    unfold C
    simp [show (15116544 * k + 12005062) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6002531) = 22674816 * k + 18007594 := by
    unfold C
    simp [show (7558272 * k + 6002531) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18007594) = 11337408 * k + 9003797 := by
    unfold C
    simp [show (22674816 * k + 18007594) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9003797) = 34012224 * k + 27011392 := by
    unfold C
    simp [show (11337408 * k + 9003797) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 27011392) = 17006112 * k + 13505696 := by
    unfold C
    simp [show (34012224 * k + 27011392) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 13505696) = 8503056 * k + 6752848 := by
    unfold C
    simp [show (17006112 * k + 13505696) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6752848) = 4251528 * k + 3376424 := by
    unfold C
    simp [show (8503056 * k + 6752848) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3376424) = 2125764 * k + 1688212 := by
    unfold C
    simp [show (4251528 * k + 3376424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1688212) = 1062882 * k + 844106 := by
    unfold C
    simp [show (2125764 * k + 1688212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 844106) = 531441 * k + 422053 := by
    unfold C
    simp [show (1062882 * k + 844106) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 832743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 832743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_833583 : ∀ k : Nat,
    iterate (1048576 * k + 833583) 32 = 531441 * k + 422479 ∧
      531441 * k + 422479 < 1048576 * k + 833583 := by
  intro k
  have h1 : C (1048576 * k + 833583) = 3145728 * k + 2500750 := by
    unfold C
    simp [show (1048576 * k + 833583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2500750) = 1572864 * k + 1250375 := by
    unfold C
    simp [show (3145728 * k + 2500750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1250375) = 4718592 * k + 3751126 := by
    unfold C
    simp [show (1572864 * k + 1250375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3751126) = 2359296 * k + 1875563 := by
    unfold C
    simp [show (4718592 * k + 3751126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1875563) = 7077888 * k + 5626690 := by
    unfold C
    simp [show (2359296 * k + 1875563) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5626690) = 3538944 * k + 2813345 := by
    unfold C
    simp [show (7077888 * k + 5626690) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2813345) = 10616832 * k + 8440036 := by
    unfold C
    simp [show (3538944 * k + 2813345) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8440036) = 5308416 * k + 4220018 := by
    unfold C
    simp [show (10616832 * k + 8440036) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4220018) = 2654208 * k + 2110009 := by
    unfold C
    simp [show (5308416 * k + 4220018) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2110009) = 7962624 * k + 6330028 := by
    unfold C
    simp [show (2654208 * k + 2110009) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6330028) = 3981312 * k + 3165014 := by
    unfold C
    simp [show (7962624 * k + 6330028) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3165014) = 1990656 * k + 1582507 := by
    unfold C
    simp [show (3981312 * k + 3165014) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1582507) = 5971968 * k + 4747522 := by
    unfold C
    simp [show (1990656 * k + 1582507) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4747522) = 2985984 * k + 2373761 := by
    unfold C
    simp [show (5971968 * k + 4747522) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2373761) = 8957952 * k + 7121284 := by
    unfold C
    simp [show (2985984 * k + 2373761) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7121284) = 4478976 * k + 3560642 := by
    unfold C
    simp [show (8957952 * k + 7121284) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3560642) = 2239488 * k + 1780321 := by
    unfold C
    simp [show (4478976 * k + 3560642) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1780321) = 6718464 * k + 5340964 := by
    unfold C
    simp [show (2239488 * k + 1780321) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5340964) = 3359232 * k + 2670482 := by
    unfold C
    simp [show (6718464 * k + 5340964) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2670482) = 1679616 * k + 1335241 := by
    unfold C
    simp [show (3359232 * k + 2670482) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1335241) = 5038848 * k + 4005724 := by
    unfold C
    simp [show (1679616 * k + 1335241) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4005724) = 2519424 * k + 2002862 := by
    unfold C
    simp [show (5038848 * k + 4005724) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2002862) = 1259712 * k + 1001431 := by
    unfold C
    simp [show (2519424 * k + 2002862) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1001431) = 3779136 * k + 3004294 := by
    unfold C
    simp [show (1259712 * k + 1001431) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3004294) = 1889568 * k + 1502147 := by
    unfold C
    simp [show (3779136 * k + 3004294) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1502147) = 5668704 * k + 4506442 := by
    unfold C
    simp [show (1889568 * k + 1502147) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4506442) = 2834352 * k + 2253221 := by
    unfold C
    simp [show (5668704 * k + 4506442) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2253221) = 8503056 * k + 6759664 := by
    unfold C
    simp [show (2834352 * k + 2253221) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6759664) = 4251528 * k + 3379832 := by
    unfold C
    simp [show (8503056 * k + 6759664) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3379832) = 2125764 * k + 1689916 := by
    unfold C
    simp [show (4251528 * k + 3379832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1689916) = 1062882 * k + 844958 := by
    unfold C
    simp [show (2125764 * k + 1689916) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 844958) = 531441 * k + 422479 := by
    unfold C
    simp [show (1062882 * k + 844958) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 833583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 833583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_833743 : ∀ k : Nat,
    iterate (1048576 * k + 833743) 32 = 531441 * k + 422560 ∧
      531441 * k + 422560 < 1048576 * k + 833743 := by
  intro k
  have h1 : C (1048576 * k + 833743) = 3145728 * k + 2501230 := by
    unfold C
    simp [show (1048576 * k + 833743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2501230) = 1572864 * k + 1250615 := by
    unfold C
    simp [show (3145728 * k + 2501230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1250615) = 4718592 * k + 3751846 := by
    unfold C
    simp [show (1572864 * k + 1250615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3751846) = 2359296 * k + 1875923 := by
    unfold C
    simp [show (4718592 * k + 3751846) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1875923) = 7077888 * k + 5627770 := by
    unfold C
    simp [show (2359296 * k + 1875923) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5627770) = 3538944 * k + 2813885 := by
    unfold C
    simp [show (7077888 * k + 5627770) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2813885) = 10616832 * k + 8441656 := by
    unfold C
    simp [show (3538944 * k + 2813885) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8441656) = 5308416 * k + 4220828 := by
    unfold C
    simp [show (10616832 * k + 8441656) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4220828) = 2654208 * k + 2110414 := by
    unfold C
    simp [show (5308416 * k + 4220828) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2110414) = 1327104 * k + 1055207 := by
    unfold C
    simp [show (2654208 * k + 2110414) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1055207) = 3981312 * k + 3165622 := by
    unfold C
    simp [show (1327104 * k + 1055207) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3165622) = 1990656 * k + 1582811 := by
    unfold C
    simp [show (3981312 * k + 3165622) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1582811) = 5971968 * k + 4748434 := by
    unfold C
    simp [show (1990656 * k + 1582811) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4748434) = 2985984 * k + 2374217 := by
    unfold C
    simp [show (5971968 * k + 4748434) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2374217) = 8957952 * k + 7122652 := by
    unfold C
    simp [show (2985984 * k + 2374217) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7122652) = 4478976 * k + 3561326 := by
    unfold C
    simp [show (8957952 * k + 7122652) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3561326) = 2239488 * k + 1780663 := by
    unfold C
    simp [show (4478976 * k + 3561326) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1780663) = 6718464 * k + 5341990 := by
    unfold C
    simp [show (2239488 * k + 1780663) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5341990) = 3359232 * k + 2670995 := by
    unfold C
    simp [show (6718464 * k + 5341990) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2670995) = 10077696 * k + 8012986 := by
    unfold C
    simp [show (3359232 * k + 2670995) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8012986) = 5038848 * k + 4006493 := by
    unfold C
    simp [show (10077696 * k + 8012986) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4006493) = 15116544 * k + 12019480 := by
    unfold C
    simp [show (5038848 * k + 4006493) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12019480) = 7558272 * k + 6009740 := by
    unfold C
    simp [show (15116544 * k + 12019480) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6009740) = 3779136 * k + 3004870 := by
    unfold C
    simp [show (7558272 * k + 6009740) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3004870) = 1889568 * k + 1502435 := by
    unfold C
    simp [show (3779136 * k + 3004870) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1502435) = 5668704 * k + 4507306 := by
    unfold C
    simp [show (1889568 * k + 1502435) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4507306) = 2834352 * k + 2253653 := by
    unfold C
    simp [show (5668704 * k + 4507306) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2253653) = 8503056 * k + 6760960 := by
    unfold C
    simp [show (2834352 * k + 2253653) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6760960) = 4251528 * k + 3380480 := by
    unfold C
    simp [show (8503056 * k + 6760960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3380480) = 2125764 * k + 1690240 := by
    unfold C
    simp [show (4251528 * k + 3380480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1690240) = 1062882 * k + 845120 := by
    unfold C
    simp [show (2125764 * k + 1690240) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 845120) = 531441 * k + 422560 := by
    unfold C
    simp [show (1062882 * k + 845120) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 833743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 833743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard106
