import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard038

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_282267 : ∀ k : Nat,
    iterate (1048576 * k + 282267) 32 = 531441 * k + 143060 ∧
      531441 * k + 143060 < 1048576 * k + 282267 := by
  intro k
  have h1 : C (1048576 * k + 282267) = 3145728 * k + 846802 := by
    unfold C
    simp [show (1048576 * k + 282267) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 846802) = 1572864 * k + 423401 := by
    unfold C
    simp [show (3145728 * k + 846802) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 423401) = 4718592 * k + 1270204 := by
    unfold C
    simp [show (1572864 * k + 423401) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1270204) = 2359296 * k + 635102 := by
    unfold C
    simp [show (4718592 * k + 1270204) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 635102) = 1179648 * k + 317551 := by
    unfold C
    simp [show (2359296 * k + 635102) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 317551) = 3538944 * k + 952654 := by
    unfold C
    simp [show (1179648 * k + 317551) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 952654) = 1769472 * k + 476327 := by
    unfold C
    simp [show (3538944 * k + 952654) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 476327) = 5308416 * k + 1428982 := by
    unfold C
    simp [show (1769472 * k + 476327) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1428982) = 2654208 * k + 714491 := by
    unfold C
    simp [show (5308416 * k + 1428982) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 714491) = 7962624 * k + 2143474 := by
    unfold C
    simp [show (2654208 * k + 714491) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2143474) = 3981312 * k + 1071737 := by
    unfold C
    simp [show (7962624 * k + 2143474) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1071737) = 11943936 * k + 3215212 := by
    unfold C
    simp [show (3981312 * k + 1071737) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3215212) = 5971968 * k + 1607606 := by
    unfold C
    simp [show (11943936 * k + 3215212) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1607606) = 2985984 * k + 803803 := by
    unfold C
    simp [show (5971968 * k + 1607606) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 803803) = 8957952 * k + 2411410 := by
    unfold C
    simp [show (2985984 * k + 803803) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2411410) = 4478976 * k + 1205705 := by
    unfold C
    simp [show (8957952 * k + 2411410) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1205705) = 13436928 * k + 3617116 := by
    unfold C
    simp [show (4478976 * k + 1205705) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3617116) = 6718464 * k + 1808558 := by
    unfold C
    simp [show (13436928 * k + 3617116) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1808558) = 3359232 * k + 904279 := by
    unfold C
    simp [show (6718464 * k + 1808558) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 904279) = 10077696 * k + 2712838 := by
    unfold C
    simp [show (3359232 * k + 904279) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2712838) = 5038848 * k + 1356419 := by
    unfold C
    simp [show (10077696 * k + 2712838) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1356419) = 15116544 * k + 4069258 := by
    unfold C
    simp [show (5038848 * k + 1356419) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4069258) = 7558272 * k + 2034629 := by
    unfold C
    simp [show (15116544 * k + 4069258) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2034629) = 22674816 * k + 6103888 := by
    unfold C
    simp [show (7558272 * k + 2034629) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6103888) = 11337408 * k + 3051944 := by
    unfold C
    simp [show (22674816 * k + 6103888) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3051944) = 5668704 * k + 1525972 := by
    unfold C
    simp [show (11337408 * k + 3051944) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1525972) = 2834352 * k + 762986 := by
    unfold C
    simp [show (5668704 * k + 1525972) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 762986) = 1417176 * k + 381493 := by
    unfold C
    simp [show (2834352 * k + 762986) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 381493) = 4251528 * k + 1144480 := by
    unfold C
    simp [show (1417176 * k + 381493) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1144480) = 2125764 * k + 572240 := by
    unfold C
    simp [show (4251528 * k + 1144480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 572240) = 1062882 * k + 286120 := by
    unfold C
    simp [show (2125764 * k + 572240) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 286120) = 531441 * k + 143060 := by
    unfold C
    simp [show (1062882 * k + 286120) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 282267) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 282267)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_282303 : ∀ k : Nat,
    iterate (1048576 * k + 282303) 32 = 531441 * k + 143078 ∧
      531441 * k + 143078 < 1048576 * k + 282303 := by
  intro k
  have h1 : C (1048576 * k + 282303) = 3145728 * k + 846910 := by
    unfold C
    simp [show (1048576 * k + 282303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 846910) = 1572864 * k + 423455 := by
    unfold C
    simp [show (3145728 * k + 846910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 423455) = 4718592 * k + 1270366 := by
    unfold C
    simp [show (1572864 * k + 423455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1270366) = 2359296 * k + 635183 := by
    unfold C
    simp [show (4718592 * k + 1270366) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 635183) = 7077888 * k + 1905550 := by
    unfold C
    simp [show (2359296 * k + 635183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1905550) = 3538944 * k + 952775 := by
    unfold C
    simp [show (7077888 * k + 1905550) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 952775) = 10616832 * k + 2858326 := by
    unfold C
    simp [show (3538944 * k + 952775) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2858326) = 5308416 * k + 1429163 := by
    unfold C
    simp [show (10616832 * k + 2858326) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1429163) = 15925248 * k + 4287490 := by
    unfold C
    simp [show (5308416 * k + 1429163) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4287490) = 7962624 * k + 2143745 := by
    unfold C
    simp [show (15925248 * k + 4287490) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2143745) = 23887872 * k + 6431236 := by
    unfold C
    simp [show (7962624 * k + 2143745) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6431236) = 11943936 * k + 3215618 := by
    unfold C
    simp [show (23887872 * k + 6431236) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3215618) = 5971968 * k + 1607809 := by
    unfold C
    simp [show (11943936 * k + 3215618) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1607809) = 17915904 * k + 4823428 := by
    unfold C
    simp [show (5971968 * k + 1607809) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4823428) = 8957952 * k + 2411714 := by
    unfold C
    simp [show (17915904 * k + 4823428) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2411714) = 4478976 * k + 1205857 := by
    unfold C
    simp [show (8957952 * k + 2411714) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1205857) = 13436928 * k + 3617572 := by
    unfold C
    simp [show (4478976 * k + 1205857) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3617572) = 6718464 * k + 1808786 := by
    unfold C
    simp [show (13436928 * k + 3617572) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1808786) = 3359232 * k + 904393 := by
    unfold C
    simp [show (6718464 * k + 1808786) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 904393) = 10077696 * k + 2713180 := by
    unfold C
    simp [show (3359232 * k + 904393) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2713180) = 5038848 * k + 1356590 := by
    unfold C
    simp [show (10077696 * k + 2713180) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1356590) = 2519424 * k + 678295 := by
    unfold C
    simp [show (5038848 * k + 1356590) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 678295) = 7558272 * k + 2034886 := by
    unfold C
    simp [show (2519424 * k + 678295) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2034886) = 3779136 * k + 1017443 := by
    unfold C
    simp [show (7558272 * k + 2034886) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1017443) = 11337408 * k + 3052330 := by
    unfold C
    simp [show (3779136 * k + 1017443) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3052330) = 5668704 * k + 1526165 := by
    unfold C
    simp [show (11337408 * k + 3052330) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1526165) = 17006112 * k + 4578496 := by
    unfold C
    simp [show (5668704 * k + 1526165) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4578496) = 8503056 * k + 2289248 := by
    unfold C
    simp [show (17006112 * k + 4578496) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2289248) = 4251528 * k + 1144624 := by
    unfold C
    simp [show (8503056 * k + 2289248) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1144624) = 2125764 * k + 572312 := by
    unfold C
    simp [show (4251528 * k + 1144624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 572312) = 1062882 * k + 286156 := by
    unfold C
    simp [show (2125764 * k + 572312) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 286156) = 531441 * k + 143078 := by
    unfold C
    simp [show (1062882 * k + 286156) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 282303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 282303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_282847 : ∀ k : Nat,
    iterate (1048576 * k + 282847) 32 = 531441 * k + 143354 ∧
      531441 * k + 143354 < 1048576 * k + 282847 := by
  intro k
  have h1 : C (1048576 * k + 282847) = 3145728 * k + 848542 := by
    unfold C
    simp [show (1048576 * k + 282847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 848542) = 1572864 * k + 424271 := by
    unfold C
    simp [show (3145728 * k + 848542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 424271) = 4718592 * k + 1272814 := by
    unfold C
    simp [show (1572864 * k + 424271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1272814) = 2359296 * k + 636407 := by
    unfold C
    simp [show (4718592 * k + 1272814) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 636407) = 7077888 * k + 1909222 := by
    unfold C
    simp [show (2359296 * k + 636407) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1909222) = 3538944 * k + 954611 := by
    unfold C
    simp [show (7077888 * k + 1909222) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 954611) = 10616832 * k + 2863834 := by
    unfold C
    simp [show (3538944 * k + 954611) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2863834) = 5308416 * k + 1431917 := by
    unfold C
    simp [show (10616832 * k + 2863834) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1431917) = 15925248 * k + 4295752 := by
    unfold C
    simp [show (5308416 * k + 1431917) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4295752) = 7962624 * k + 2147876 := by
    unfold C
    simp [show (15925248 * k + 4295752) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2147876) = 3981312 * k + 1073938 := by
    unfold C
    simp [show (7962624 * k + 2147876) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1073938) = 1990656 * k + 536969 := by
    unfold C
    simp [show (3981312 * k + 1073938) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 536969) = 5971968 * k + 1610908 := by
    unfold C
    simp [show (1990656 * k + 536969) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1610908) = 2985984 * k + 805454 := by
    unfold C
    simp [show (5971968 * k + 1610908) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 805454) = 1492992 * k + 402727 := by
    unfold C
    simp [show (2985984 * k + 805454) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 402727) = 4478976 * k + 1208182 := by
    unfold C
    simp [show (1492992 * k + 402727) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1208182) = 2239488 * k + 604091 := by
    unfold C
    simp [show (4478976 * k + 1208182) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 604091) = 6718464 * k + 1812274 := by
    unfold C
    simp [show (2239488 * k + 604091) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1812274) = 3359232 * k + 906137 := by
    unfold C
    simp [show (6718464 * k + 1812274) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 906137) = 10077696 * k + 2718412 := by
    unfold C
    simp [show (3359232 * k + 906137) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2718412) = 5038848 * k + 1359206 := by
    unfold C
    simp [show (10077696 * k + 2718412) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1359206) = 2519424 * k + 679603 := by
    unfold C
    simp [show (5038848 * k + 1359206) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 679603) = 7558272 * k + 2038810 := by
    unfold C
    simp [show (2519424 * k + 679603) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2038810) = 3779136 * k + 1019405 := by
    unfold C
    simp [show (7558272 * k + 2038810) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1019405) = 11337408 * k + 3058216 := by
    unfold C
    simp [show (3779136 * k + 1019405) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3058216) = 5668704 * k + 1529108 := by
    unfold C
    simp [show (11337408 * k + 3058216) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1529108) = 2834352 * k + 764554 := by
    unfold C
    simp [show (5668704 * k + 1529108) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 764554) = 1417176 * k + 382277 := by
    unfold C
    simp [show (2834352 * k + 764554) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 382277) = 4251528 * k + 1146832 := by
    unfold C
    simp [show (1417176 * k + 382277) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1146832) = 2125764 * k + 573416 := by
    unfold C
    simp [show (4251528 * k + 1146832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 573416) = 1062882 * k + 286708 := by
    unfold C
    simp [show (2125764 * k + 573416) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 286708) = 531441 * k + 143354 := by
    unfold C
    simp [show (1062882 * k + 286708) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 282847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 282847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_283327 : ∀ k : Nat,
    iterate (1048576 * k + 283327) 32 = 531441 * k + 143597 ∧
      531441 * k + 143597 < 1048576 * k + 283327 := by
  intro k
  have h1 : C (1048576 * k + 283327) = 3145728 * k + 849982 := by
    unfold C
    simp [show (1048576 * k + 283327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 849982) = 1572864 * k + 424991 := by
    unfold C
    simp [show (3145728 * k + 849982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 424991) = 4718592 * k + 1274974 := by
    unfold C
    simp [show (1572864 * k + 424991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1274974) = 2359296 * k + 637487 := by
    unfold C
    simp [show (4718592 * k + 1274974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 637487) = 7077888 * k + 1912462 := by
    unfold C
    simp [show (2359296 * k + 637487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1912462) = 3538944 * k + 956231 := by
    unfold C
    simp [show (7077888 * k + 1912462) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 956231) = 10616832 * k + 2868694 := by
    unfold C
    simp [show (3538944 * k + 956231) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2868694) = 5308416 * k + 1434347 := by
    unfold C
    simp [show (10616832 * k + 2868694) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1434347) = 15925248 * k + 4303042 := by
    unfold C
    simp [show (5308416 * k + 1434347) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4303042) = 7962624 * k + 2151521 := by
    unfold C
    simp [show (15925248 * k + 4303042) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2151521) = 23887872 * k + 6454564 := by
    unfold C
    simp [show (7962624 * k + 2151521) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6454564) = 11943936 * k + 3227282 := by
    unfold C
    simp [show (23887872 * k + 6454564) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3227282) = 5971968 * k + 1613641 := by
    unfold C
    simp [show (11943936 * k + 3227282) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1613641) = 17915904 * k + 4840924 := by
    unfold C
    simp [show (5971968 * k + 1613641) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4840924) = 8957952 * k + 2420462 := by
    unfold C
    simp [show (17915904 * k + 4840924) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2420462) = 4478976 * k + 1210231 := by
    unfold C
    simp [show (8957952 * k + 2420462) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1210231) = 13436928 * k + 3630694 := by
    unfold C
    simp [show (4478976 * k + 1210231) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3630694) = 6718464 * k + 1815347 := by
    unfold C
    simp [show (13436928 * k + 3630694) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1815347) = 20155392 * k + 5446042 := by
    unfold C
    simp [show (6718464 * k + 1815347) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5446042) = 10077696 * k + 2723021 := by
    unfold C
    simp [show (20155392 * k + 5446042) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2723021) = 30233088 * k + 8169064 := by
    unfold C
    simp [show (10077696 * k + 2723021) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8169064) = 15116544 * k + 4084532 := by
    unfold C
    simp [show (30233088 * k + 8169064) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4084532) = 7558272 * k + 2042266 := by
    unfold C
    simp [show (15116544 * k + 4084532) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2042266) = 3779136 * k + 1021133 := by
    unfold C
    simp [show (7558272 * k + 2042266) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1021133) = 11337408 * k + 3063400 := by
    unfold C
    simp [show (3779136 * k + 1021133) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3063400) = 5668704 * k + 1531700 := by
    unfold C
    simp [show (11337408 * k + 3063400) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1531700) = 2834352 * k + 765850 := by
    unfold C
    simp [show (5668704 * k + 1531700) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 765850) = 1417176 * k + 382925 := by
    unfold C
    simp [show (2834352 * k + 765850) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 382925) = 4251528 * k + 1148776 := by
    unfold C
    simp [show (1417176 * k + 382925) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1148776) = 2125764 * k + 574388 := by
    unfold C
    simp [show (4251528 * k + 1148776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 574388) = 1062882 * k + 287194 := by
    unfold C
    simp [show (2125764 * k + 574388) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 287194) = 531441 * k + 143597 := by
    unfold C
    simp [show (1062882 * k + 287194) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 283327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 283327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_283751 : ∀ k : Nat,
    iterate (1048576 * k + 283751) 32 = 531441 * k + 143812 ∧
      531441 * k + 143812 < 1048576 * k + 283751 := by
  intro k
  have h1 : C (1048576 * k + 283751) = 3145728 * k + 851254 := by
    unfold C
    simp [show (1048576 * k + 283751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 851254) = 1572864 * k + 425627 := by
    unfold C
    simp [show (3145728 * k + 851254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 425627) = 4718592 * k + 1276882 := by
    unfold C
    simp [show (1572864 * k + 425627) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1276882) = 2359296 * k + 638441 := by
    unfold C
    simp [show (4718592 * k + 1276882) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 638441) = 7077888 * k + 1915324 := by
    unfold C
    simp [show (2359296 * k + 638441) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1915324) = 3538944 * k + 957662 := by
    unfold C
    simp [show (7077888 * k + 1915324) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 957662) = 1769472 * k + 478831 := by
    unfold C
    simp [show (3538944 * k + 957662) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 478831) = 5308416 * k + 1436494 := by
    unfold C
    simp [show (1769472 * k + 478831) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1436494) = 2654208 * k + 718247 := by
    unfold C
    simp [show (5308416 * k + 1436494) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 718247) = 7962624 * k + 2154742 := by
    unfold C
    simp [show (2654208 * k + 718247) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2154742) = 3981312 * k + 1077371 := by
    unfold C
    simp [show (7962624 * k + 2154742) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1077371) = 11943936 * k + 3232114 := by
    unfold C
    simp [show (3981312 * k + 1077371) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3232114) = 5971968 * k + 1616057 := by
    unfold C
    simp [show (11943936 * k + 3232114) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1616057) = 17915904 * k + 4848172 := by
    unfold C
    simp [show (5971968 * k + 1616057) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4848172) = 8957952 * k + 2424086 := by
    unfold C
    simp [show (17915904 * k + 4848172) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2424086) = 4478976 * k + 1212043 := by
    unfold C
    simp [show (8957952 * k + 2424086) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1212043) = 13436928 * k + 3636130 := by
    unfold C
    simp [show (4478976 * k + 1212043) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3636130) = 6718464 * k + 1818065 := by
    unfold C
    simp [show (13436928 * k + 3636130) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1818065) = 20155392 * k + 5454196 := by
    unfold C
    simp [show (6718464 * k + 1818065) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5454196) = 10077696 * k + 2727098 := by
    unfold C
    simp [show (20155392 * k + 5454196) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2727098) = 5038848 * k + 1363549 := by
    unfold C
    simp [show (10077696 * k + 2727098) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1363549) = 15116544 * k + 4090648 := by
    unfold C
    simp [show (5038848 * k + 1363549) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4090648) = 7558272 * k + 2045324 := by
    unfold C
    simp [show (15116544 * k + 4090648) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2045324) = 3779136 * k + 1022662 := by
    unfold C
    simp [show (7558272 * k + 2045324) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1022662) = 1889568 * k + 511331 := by
    unfold C
    simp [show (3779136 * k + 1022662) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 511331) = 5668704 * k + 1533994 := by
    unfold C
    simp [show (1889568 * k + 511331) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1533994) = 2834352 * k + 766997 := by
    unfold C
    simp [show (5668704 * k + 1533994) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 766997) = 8503056 * k + 2300992 := by
    unfold C
    simp [show (2834352 * k + 766997) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2300992) = 4251528 * k + 1150496 := by
    unfold C
    simp [show (8503056 * k + 2300992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1150496) = 2125764 * k + 575248 := by
    unfold C
    simp [show (4251528 * k + 1150496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 575248) = 1062882 * k + 287624 := by
    unfold C
    simp [show (2125764 * k + 575248) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 287624) = 531441 * k + 143812 := by
    unfold C
    simp [show (1062882 * k + 287624) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 283751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 283751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_284207 : ∀ k : Nat,
    iterate (1048576 * k + 284207) 32 = 531441 * k + 144043 ∧
      531441 * k + 144043 < 1048576 * k + 284207 := by
  intro k
  have h1 : C (1048576 * k + 284207) = 3145728 * k + 852622 := by
    unfold C
    simp [show (1048576 * k + 284207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 852622) = 1572864 * k + 426311 := by
    unfold C
    simp [show (3145728 * k + 852622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 426311) = 4718592 * k + 1278934 := by
    unfold C
    simp [show (1572864 * k + 426311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1278934) = 2359296 * k + 639467 := by
    unfold C
    simp [show (4718592 * k + 1278934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 639467) = 7077888 * k + 1918402 := by
    unfold C
    simp [show (2359296 * k + 639467) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1918402) = 3538944 * k + 959201 := by
    unfold C
    simp [show (7077888 * k + 1918402) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 959201) = 10616832 * k + 2877604 := by
    unfold C
    simp [show (3538944 * k + 959201) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2877604) = 5308416 * k + 1438802 := by
    unfold C
    simp [show (10616832 * k + 2877604) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1438802) = 2654208 * k + 719401 := by
    unfold C
    simp [show (5308416 * k + 1438802) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 719401) = 7962624 * k + 2158204 := by
    unfold C
    simp [show (2654208 * k + 719401) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2158204) = 3981312 * k + 1079102 := by
    unfold C
    simp [show (7962624 * k + 2158204) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1079102) = 1990656 * k + 539551 := by
    unfold C
    simp [show (3981312 * k + 1079102) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 539551) = 5971968 * k + 1618654 := by
    unfold C
    simp [show (1990656 * k + 539551) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1618654) = 2985984 * k + 809327 := by
    unfold C
    simp [show (5971968 * k + 1618654) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 809327) = 8957952 * k + 2427982 := by
    unfold C
    simp [show (2985984 * k + 809327) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2427982) = 4478976 * k + 1213991 := by
    unfold C
    simp [show (8957952 * k + 2427982) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1213991) = 13436928 * k + 3641974 := by
    unfold C
    simp [show (4478976 * k + 1213991) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3641974) = 6718464 * k + 1820987 := by
    unfold C
    simp [show (13436928 * k + 3641974) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1820987) = 20155392 * k + 5462962 := by
    unfold C
    simp [show (6718464 * k + 1820987) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5462962) = 10077696 * k + 2731481 := by
    unfold C
    simp [show (20155392 * k + 5462962) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2731481) = 30233088 * k + 8194444 := by
    unfold C
    simp [show (10077696 * k + 2731481) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8194444) = 15116544 * k + 4097222 := by
    unfold C
    simp [show (30233088 * k + 8194444) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4097222) = 7558272 * k + 2048611 := by
    unfold C
    simp [show (15116544 * k + 4097222) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2048611) = 22674816 * k + 6145834 := by
    unfold C
    simp [show (7558272 * k + 2048611) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6145834) = 11337408 * k + 3072917 := by
    unfold C
    simp [show (22674816 * k + 6145834) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3072917) = 34012224 * k + 9218752 := by
    unfold C
    simp [show (11337408 * k + 3072917) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 9218752) = 17006112 * k + 4609376 := by
    unfold C
    simp [show (34012224 * k + 9218752) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4609376) = 8503056 * k + 2304688 := by
    unfold C
    simp [show (17006112 * k + 4609376) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2304688) = 4251528 * k + 1152344 := by
    unfold C
    simp [show (8503056 * k + 2304688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1152344) = 2125764 * k + 576172 := by
    unfold C
    simp [show (4251528 * k + 1152344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 576172) = 1062882 * k + 288086 := by
    unfold C
    simp [show (2125764 * k + 576172) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 288086) = 531441 * k + 144043 := by
    unfold C
    simp [show (1062882 * k + 288086) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 284207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 284207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_284775 : ∀ k : Nat,
    iterate (1048576 * k + 284775) 32 = 531441 * k + 144331 ∧
      531441 * k + 144331 < 1048576 * k + 284775 := by
  intro k
  have h1 : C (1048576 * k + 284775) = 3145728 * k + 854326 := by
    unfold C
    simp [show (1048576 * k + 284775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 854326) = 1572864 * k + 427163 := by
    unfold C
    simp [show (3145728 * k + 854326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 427163) = 4718592 * k + 1281490 := by
    unfold C
    simp [show (1572864 * k + 427163) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1281490) = 2359296 * k + 640745 := by
    unfold C
    simp [show (4718592 * k + 1281490) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 640745) = 7077888 * k + 1922236 := by
    unfold C
    simp [show (2359296 * k + 640745) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1922236) = 3538944 * k + 961118 := by
    unfold C
    simp [show (7077888 * k + 1922236) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 961118) = 1769472 * k + 480559 := by
    unfold C
    simp [show (3538944 * k + 961118) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 480559) = 5308416 * k + 1441678 := by
    unfold C
    simp [show (1769472 * k + 480559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1441678) = 2654208 * k + 720839 := by
    unfold C
    simp [show (5308416 * k + 1441678) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 720839) = 7962624 * k + 2162518 := by
    unfold C
    simp [show (2654208 * k + 720839) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2162518) = 3981312 * k + 1081259 := by
    unfold C
    simp [show (7962624 * k + 2162518) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1081259) = 11943936 * k + 3243778 := by
    unfold C
    simp [show (3981312 * k + 1081259) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3243778) = 5971968 * k + 1621889 := by
    unfold C
    simp [show (11943936 * k + 3243778) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1621889) = 17915904 * k + 4865668 := by
    unfold C
    simp [show (5971968 * k + 1621889) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4865668) = 8957952 * k + 2432834 := by
    unfold C
    simp [show (17915904 * k + 4865668) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2432834) = 4478976 * k + 1216417 := by
    unfold C
    simp [show (8957952 * k + 2432834) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1216417) = 13436928 * k + 3649252 := by
    unfold C
    simp [show (4478976 * k + 1216417) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3649252) = 6718464 * k + 1824626 := by
    unfold C
    simp [show (13436928 * k + 3649252) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1824626) = 3359232 * k + 912313 := by
    unfold C
    simp [show (6718464 * k + 1824626) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 912313) = 10077696 * k + 2736940 := by
    unfold C
    simp [show (3359232 * k + 912313) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2736940) = 5038848 * k + 1368470 := by
    unfold C
    simp [show (10077696 * k + 2736940) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1368470) = 2519424 * k + 684235 := by
    unfold C
    simp [show (5038848 * k + 1368470) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 684235) = 7558272 * k + 2052706 := by
    unfold C
    simp [show (2519424 * k + 684235) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2052706) = 3779136 * k + 1026353 := by
    unfold C
    simp [show (7558272 * k + 2052706) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1026353) = 11337408 * k + 3079060 := by
    unfold C
    simp [show (3779136 * k + 1026353) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3079060) = 5668704 * k + 1539530 := by
    unfold C
    simp [show (11337408 * k + 3079060) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1539530) = 2834352 * k + 769765 := by
    unfold C
    simp [show (5668704 * k + 1539530) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 769765) = 8503056 * k + 2309296 := by
    unfold C
    simp [show (2834352 * k + 769765) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2309296) = 4251528 * k + 1154648 := by
    unfold C
    simp [show (8503056 * k + 2309296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1154648) = 2125764 * k + 577324 := by
    unfold C
    simp [show (4251528 * k + 1154648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 577324) = 1062882 * k + 288662 := by
    unfold C
    simp [show (2125764 * k + 577324) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 288662) = 531441 * k + 144331 := by
    unfold C
    simp [show (1062882 * k + 288662) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 284775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 284775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_285339 : ∀ k : Nat,
    iterate (1048576 * k + 285339) 32 = 531441 * k + 144617 ∧
      531441 * k + 144617 < 1048576 * k + 285339 := by
  intro k
  have h1 : C (1048576 * k + 285339) = 3145728 * k + 856018 := by
    unfold C
    simp [show (1048576 * k + 285339) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 856018) = 1572864 * k + 428009 := by
    unfold C
    simp [show (3145728 * k + 856018) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 428009) = 4718592 * k + 1284028 := by
    unfold C
    simp [show (1572864 * k + 428009) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1284028) = 2359296 * k + 642014 := by
    unfold C
    simp [show (4718592 * k + 1284028) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 642014) = 1179648 * k + 321007 := by
    unfold C
    simp [show (2359296 * k + 642014) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 321007) = 3538944 * k + 963022 := by
    unfold C
    simp [show (1179648 * k + 321007) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 963022) = 1769472 * k + 481511 := by
    unfold C
    simp [show (3538944 * k + 963022) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 481511) = 5308416 * k + 1444534 := by
    unfold C
    simp [show (1769472 * k + 481511) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1444534) = 2654208 * k + 722267 := by
    unfold C
    simp [show (5308416 * k + 1444534) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 722267) = 7962624 * k + 2166802 := by
    unfold C
    simp [show (2654208 * k + 722267) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2166802) = 3981312 * k + 1083401 := by
    unfold C
    simp [show (7962624 * k + 2166802) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1083401) = 11943936 * k + 3250204 := by
    unfold C
    simp [show (3981312 * k + 1083401) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3250204) = 5971968 * k + 1625102 := by
    unfold C
    simp [show (11943936 * k + 3250204) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1625102) = 2985984 * k + 812551 := by
    unfold C
    simp [show (5971968 * k + 1625102) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 812551) = 8957952 * k + 2437654 := by
    unfold C
    simp [show (2985984 * k + 812551) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2437654) = 4478976 * k + 1218827 := by
    unfold C
    simp [show (8957952 * k + 2437654) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1218827) = 13436928 * k + 3656482 := by
    unfold C
    simp [show (4478976 * k + 1218827) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3656482) = 6718464 * k + 1828241 := by
    unfold C
    simp [show (13436928 * k + 3656482) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1828241) = 20155392 * k + 5484724 := by
    unfold C
    simp [show (6718464 * k + 1828241) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5484724) = 10077696 * k + 2742362 := by
    unfold C
    simp [show (20155392 * k + 5484724) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2742362) = 5038848 * k + 1371181 := by
    unfold C
    simp [show (10077696 * k + 2742362) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1371181) = 15116544 * k + 4113544 := by
    unfold C
    simp [show (5038848 * k + 1371181) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4113544) = 7558272 * k + 2056772 := by
    unfold C
    simp [show (15116544 * k + 4113544) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2056772) = 3779136 * k + 1028386 := by
    unfold C
    simp [show (7558272 * k + 2056772) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1028386) = 1889568 * k + 514193 := by
    unfold C
    simp [show (3779136 * k + 1028386) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 514193) = 5668704 * k + 1542580 := by
    unfold C
    simp [show (1889568 * k + 514193) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1542580) = 2834352 * k + 771290 := by
    unfold C
    simp [show (5668704 * k + 1542580) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 771290) = 1417176 * k + 385645 := by
    unfold C
    simp [show (2834352 * k + 771290) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 385645) = 4251528 * k + 1156936 := by
    unfold C
    simp [show (1417176 * k + 385645) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1156936) = 2125764 * k + 578468 := by
    unfold C
    simp [show (4251528 * k + 1156936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 578468) = 1062882 * k + 289234 := by
    unfold C
    simp [show (2125764 * k + 578468) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 289234) = 531441 * k + 144617 := by
    unfold C
    simp [show (1062882 * k + 289234) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 285339) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 285339)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_286239 : ∀ k : Nat,
    iterate (1048576 * k + 286239) 32 = 531441 * k + 145073 ∧
      531441 * k + 145073 < 1048576 * k + 286239 := by
  intro k
  have h1 : C (1048576 * k + 286239) = 3145728 * k + 858718 := by
    unfold C
    simp [show (1048576 * k + 286239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 858718) = 1572864 * k + 429359 := by
    unfold C
    simp [show (3145728 * k + 858718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 429359) = 4718592 * k + 1288078 := by
    unfold C
    simp [show (1572864 * k + 429359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1288078) = 2359296 * k + 644039 := by
    unfold C
    simp [show (4718592 * k + 1288078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 644039) = 7077888 * k + 1932118 := by
    unfold C
    simp [show (2359296 * k + 644039) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1932118) = 3538944 * k + 966059 := by
    unfold C
    simp [show (7077888 * k + 1932118) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 966059) = 10616832 * k + 2898178 := by
    unfold C
    simp [show (3538944 * k + 966059) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2898178) = 5308416 * k + 1449089 := by
    unfold C
    simp [show (10616832 * k + 2898178) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1449089) = 15925248 * k + 4347268 := by
    unfold C
    simp [show (5308416 * k + 1449089) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4347268) = 7962624 * k + 2173634 := by
    unfold C
    simp [show (15925248 * k + 4347268) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2173634) = 3981312 * k + 1086817 := by
    unfold C
    simp [show (7962624 * k + 2173634) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1086817) = 11943936 * k + 3260452 := by
    unfold C
    simp [show (3981312 * k + 1086817) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3260452) = 5971968 * k + 1630226 := by
    unfold C
    simp [show (11943936 * k + 3260452) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1630226) = 2985984 * k + 815113 := by
    unfold C
    simp [show (5971968 * k + 1630226) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 815113) = 8957952 * k + 2445340 := by
    unfold C
    simp [show (2985984 * k + 815113) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2445340) = 4478976 * k + 1222670 := by
    unfold C
    simp [show (8957952 * k + 2445340) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1222670) = 2239488 * k + 611335 := by
    unfold C
    simp [show (4478976 * k + 1222670) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 611335) = 6718464 * k + 1834006 := by
    unfold C
    simp [show (2239488 * k + 611335) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1834006) = 3359232 * k + 917003 := by
    unfold C
    simp [show (6718464 * k + 1834006) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 917003) = 10077696 * k + 2751010 := by
    unfold C
    simp [show (3359232 * k + 917003) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2751010) = 5038848 * k + 1375505 := by
    unfold C
    simp [show (10077696 * k + 2751010) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1375505) = 15116544 * k + 4126516 := by
    unfold C
    simp [show (5038848 * k + 1375505) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4126516) = 7558272 * k + 2063258 := by
    unfold C
    simp [show (15116544 * k + 4126516) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2063258) = 3779136 * k + 1031629 := by
    unfold C
    simp [show (7558272 * k + 2063258) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1031629) = 11337408 * k + 3094888 := by
    unfold C
    simp [show (3779136 * k + 1031629) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3094888) = 5668704 * k + 1547444 := by
    unfold C
    simp [show (11337408 * k + 3094888) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1547444) = 2834352 * k + 773722 := by
    unfold C
    simp [show (5668704 * k + 1547444) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 773722) = 1417176 * k + 386861 := by
    unfold C
    simp [show (2834352 * k + 773722) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 386861) = 4251528 * k + 1160584 := by
    unfold C
    simp [show (1417176 * k + 386861) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1160584) = 2125764 * k + 580292 := by
    unfold C
    simp [show (4251528 * k + 1160584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 580292) = 1062882 * k + 290146 := by
    unfold C
    simp [show (2125764 * k + 580292) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 290146) = 531441 * k + 145073 := by
    unfold C
    simp [show (1062882 * k + 290146) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 286239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 286239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_286363 : ∀ k : Nat,
    iterate (1048576 * k + 286363) 32 = 531441 * k + 145136 ∧
      531441 * k + 145136 < 1048576 * k + 286363 := by
  intro k
  have h1 : C (1048576 * k + 286363) = 3145728 * k + 859090 := by
    unfold C
    simp [show (1048576 * k + 286363) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 859090) = 1572864 * k + 429545 := by
    unfold C
    simp [show (3145728 * k + 859090) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 429545) = 4718592 * k + 1288636 := by
    unfold C
    simp [show (1572864 * k + 429545) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1288636) = 2359296 * k + 644318 := by
    unfold C
    simp [show (4718592 * k + 1288636) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 644318) = 1179648 * k + 322159 := by
    unfold C
    simp [show (2359296 * k + 644318) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 322159) = 3538944 * k + 966478 := by
    unfold C
    simp [show (1179648 * k + 322159) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 966478) = 1769472 * k + 483239 := by
    unfold C
    simp [show (3538944 * k + 966478) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 483239) = 5308416 * k + 1449718 := by
    unfold C
    simp [show (1769472 * k + 483239) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1449718) = 2654208 * k + 724859 := by
    unfold C
    simp [show (5308416 * k + 1449718) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 724859) = 7962624 * k + 2174578 := by
    unfold C
    simp [show (2654208 * k + 724859) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2174578) = 3981312 * k + 1087289 := by
    unfold C
    simp [show (7962624 * k + 2174578) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1087289) = 11943936 * k + 3261868 := by
    unfold C
    simp [show (3981312 * k + 1087289) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3261868) = 5971968 * k + 1630934 := by
    unfold C
    simp [show (11943936 * k + 3261868) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1630934) = 2985984 * k + 815467 := by
    unfold C
    simp [show (5971968 * k + 1630934) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 815467) = 8957952 * k + 2446402 := by
    unfold C
    simp [show (2985984 * k + 815467) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2446402) = 4478976 * k + 1223201 := by
    unfold C
    simp [show (8957952 * k + 2446402) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1223201) = 13436928 * k + 3669604 := by
    unfold C
    simp [show (4478976 * k + 1223201) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3669604) = 6718464 * k + 1834802 := by
    unfold C
    simp [show (13436928 * k + 3669604) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1834802) = 3359232 * k + 917401 := by
    unfold C
    simp [show (6718464 * k + 1834802) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 917401) = 10077696 * k + 2752204 := by
    unfold C
    simp [show (3359232 * k + 917401) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2752204) = 5038848 * k + 1376102 := by
    unfold C
    simp [show (10077696 * k + 2752204) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1376102) = 2519424 * k + 688051 := by
    unfold C
    simp [show (5038848 * k + 1376102) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 688051) = 7558272 * k + 2064154 := by
    unfold C
    simp [show (2519424 * k + 688051) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2064154) = 3779136 * k + 1032077 := by
    unfold C
    simp [show (7558272 * k + 2064154) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1032077) = 11337408 * k + 3096232 := by
    unfold C
    simp [show (3779136 * k + 1032077) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3096232) = 5668704 * k + 1548116 := by
    unfold C
    simp [show (11337408 * k + 3096232) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1548116) = 2834352 * k + 774058 := by
    unfold C
    simp [show (5668704 * k + 1548116) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 774058) = 1417176 * k + 387029 := by
    unfold C
    simp [show (2834352 * k + 774058) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 387029) = 4251528 * k + 1161088 := by
    unfold C
    simp [show (1417176 * k + 387029) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1161088) = 2125764 * k + 580544 := by
    unfold C
    simp [show (4251528 * k + 1161088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 580544) = 1062882 * k + 290272 := by
    unfold C
    simp [show (2125764 * k + 580544) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 290272) = 531441 * k + 145136 := by
    unfold C
    simp [show (1062882 * k + 290272) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 286363) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 286363)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_286399 : ∀ k : Nat,
    iterate (1048576 * k + 286399) 32 = 531441 * k + 145154 ∧
      531441 * k + 145154 < 1048576 * k + 286399 := by
  intro k
  have h1 : C (1048576 * k + 286399) = 3145728 * k + 859198 := by
    unfold C
    simp [show (1048576 * k + 286399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 859198) = 1572864 * k + 429599 := by
    unfold C
    simp [show (3145728 * k + 859198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 429599) = 4718592 * k + 1288798 := by
    unfold C
    simp [show (1572864 * k + 429599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1288798) = 2359296 * k + 644399 := by
    unfold C
    simp [show (4718592 * k + 1288798) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 644399) = 7077888 * k + 1933198 := by
    unfold C
    simp [show (2359296 * k + 644399) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1933198) = 3538944 * k + 966599 := by
    unfold C
    simp [show (7077888 * k + 1933198) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 966599) = 10616832 * k + 2899798 := by
    unfold C
    simp [show (3538944 * k + 966599) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2899798) = 5308416 * k + 1449899 := by
    unfold C
    simp [show (10616832 * k + 2899798) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1449899) = 15925248 * k + 4349698 := by
    unfold C
    simp [show (5308416 * k + 1449899) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4349698) = 7962624 * k + 2174849 := by
    unfold C
    simp [show (15925248 * k + 4349698) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2174849) = 23887872 * k + 6524548 := by
    unfold C
    simp [show (7962624 * k + 2174849) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6524548) = 11943936 * k + 3262274 := by
    unfold C
    simp [show (23887872 * k + 6524548) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3262274) = 5971968 * k + 1631137 := by
    unfold C
    simp [show (11943936 * k + 3262274) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1631137) = 17915904 * k + 4893412 := by
    unfold C
    simp [show (5971968 * k + 1631137) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4893412) = 8957952 * k + 2446706 := by
    unfold C
    simp [show (17915904 * k + 4893412) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2446706) = 4478976 * k + 1223353 := by
    unfold C
    simp [show (8957952 * k + 2446706) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1223353) = 13436928 * k + 3670060 := by
    unfold C
    simp [show (4478976 * k + 1223353) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3670060) = 6718464 * k + 1835030 := by
    unfold C
    simp [show (13436928 * k + 3670060) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1835030) = 3359232 * k + 917515 := by
    unfold C
    simp [show (6718464 * k + 1835030) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 917515) = 10077696 * k + 2752546 := by
    unfold C
    simp [show (3359232 * k + 917515) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2752546) = 5038848 * k + 1376273 := by
    unfold C
    simp [show (10077696 * k + 2752546) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1376273) = 15116544 * k + 4128820 := by
    unfold C
    simp [show (5038848 * k + 1376273) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4128820) = 7558272 * k + 2064410 := by
    unfold C
    simp [show (15116544 * k + 4128820) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2064410) = 3779136 * k + 1032205 := by
    unfold C
    simp [show (7558272 * k + 2064410) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1032205) = 11337408 * k + 3096616 := by
    unfold C
    simp [show (3779136 * k + 1032205) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3096616) = 5668704 * k + 1548308 := by
    unfold C
    simp [show (11337408 * k + 3096616) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1548308) = 2834352 * k + 774154 := by
    unfold C
    simp [show (5668704 * k + 1548308) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 774154) = 1417176 * k + 387077 := by
    unfold C
    simp [show (2834352 * k + 774154) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 387077) = 4251528 * k + 1161232 := by
    unfold C
    simp [show (1417176 * k + 387077) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1161232) = 2125764 * k + 580616 := by
    unfold C
    simp [show (4251528 * k + 1161232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 580616) = 1062882 * k + 290308 := by
    unfold C
    simp [show (2125764 * k + 580616) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 290308) = 531441 * k + 145154 := by
    unfold C
    simp [show (1062882 * k + 290308) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 286399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 286399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_287279 : ∀ k : Nat,
    iterate (1048576 * k + 287279) 32 = 531441 * k + 145600 ∧
      531441 * k + 145600 < 1048576 * k + 287279 := by
  intro k
  have h1 : C (1048576 * k + 287279) = 3145728 * k + 861838 := by
    unfold C
    simp [show (1048576 * k + 287279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 861838) = 1572864 * k + 430919 := by
    unfold C
    simp [show (3145728 * k + 861838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 430919) = 4718592 * k + 1292758 := by
    unfold C
    simp [show (1572864 * k + 430919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1292758) = 2359296 * k + 646379 := by
    unfold C
    simp [show (4718592 * k + 1292758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 646379) = 7077888 * k + 1939138 := by
    unfold C
    simp [show (2359296 * k + 646379) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1939138) = 3538944 * k + 969569 := by
    unfold C
    simp [show (7077888 * k + 1939138) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 969569) = 10616832 * k + 2908708 := by
    unfold C
    simp [show (3538944 * k + 969569) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2908708) = 5308416 * k + 1454354 := by
    unfold C
    simp [show (10616832 * k + 2908708) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1454354) = 2654208 * k + 727177 := by
    unfold C
    simp [show (5308416 * k + 1454354) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 727177) = 7962624 * k + 2181532 := by
    unfold C
    simp [show (2654208 * k + 727177) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2181532) = 3981312 * k + 1090766 := by
    unfold C
    simp [show (7962624 * k + 2181532) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1090766) = 1990656 * k + 545383 := by
    unfold C
    simp [show (3981312 * k + 1090766) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 545383) = 5971968 * k + 1636150 := by
    unfold C
    simp [show (1990656 * k + 545383) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1636150) = 2985984 * k + 818075 := by
    unfold C
    simp [show (5971968 * k + 1636150) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 818075) = 8957952 * k + 2454226 := by
    unfold C
    simp [show (2985984 * k + 818075) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2454226) = 4478976 * k + 1227113 := by
    unfold C
    simp [show (8957952 * k + 2454226) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1227113) = 13436928 * k + 3681340 := by
    unfold C
    simp [show (4478976 * k + 1227113) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3681340) = 6718464 * k + 1840670 := by
    unfold C
    simp [show (13436928 * k + 3681340) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1840670) = 3359232 * k + 920335 := by
    unfold C
    simp [show (6718464 * k + 1840670) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 920335) = 10077696 * k + 2761006 := by
    unfold C
    simp [show (3359232 * k + 920335) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2761006) = 5038848 * k + 1380503 := by
    unfold C
    simp [show (10077696 * k + 2761006) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1380503) = 15116544 * k + 4141510 := by
    unfold C
    simp [show (5038848 * k + 1380503) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4141510) = 7558272 * k + 2070755 := by
    unfold C
    simp [show (15116544 * k + 4141510) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2070755) = 22674816 * k + 6212266 := by
    unfold C
    simp [show (7558272 * k + 2070755) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6212266) = 11337408 * k + 3106133 := by
    unfold C
    simp [show (22674816 * k + 6212266) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3106133) = 34012224 * k + 9318400 := by
    unfold C
    simp [show (11337408 * k + 3106133) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 9318400) = 17006112 * k + 4659200 := by
    unfold C
    simp [show (34012224 * k + 9318400) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4659200) = 8503056 * k + 2329600 := by
    unfold C
    simp [show (17006112 * k + 4659200) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2329600) = 4251528 * k + 1164800 := by
    unfold C
    simp [show (8503056 * k + 2329600) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1164800) = 2125764 * k + 582400 := by
    unfold C
    simp [show (4251528 * k + 1164800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 582400) = 1062882 * k + 291200 := by
    unfold C
    simp [show (2125764 * k + 582400) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 291200) = 531441 * k + 145600 := by
    unfold C
    simp [show (1062882 * k + 291200) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 287279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 287279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_287551 : ∀ k : Nat,
    iterate (1048576 * k + 287551) 32 = 531441 * k + 145738 ∧
      531441 * k + 145738 < 1048576 * k + 287551 := by
  intro k
  have h1 : C (1048576 * k + 287551) = 3145728 * k + 862654 := by
    unfold C
    simp [show (1048576 * k + 287551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 862654) = 1572864 * k + 431327 := by
    unfold C
    simp [show (3145728 * k + 862654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 431327) = 4718592 * k + 1293982 := by
    unfold C
    simp [show (1572864 * k + 431327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1293982) = 2359296 * k + 646991 := by
    unfold C
    simp [show (4718592 * k + 1293982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 646991) = 7077888 * k + 1940974 := by
    unfold C
    simp [show (2359296 * k + 646991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1940974) = 3538944 * k + 970487 := by
    unfold C
    simp [show (7077888 * k + 1940974) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 970487) = 10616832 * k + 2911462 := by
    unfold C
    simp [show (3538944 * k + 970487) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2911462) = 5308416 * k + 1455731 := by
    unfold C
    simp [show (10616832 * k + 2911462) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1455731) = 15925248 * k + 4367194 := by
    unfold C
    simp [show (5308416 * k + 1455731) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4367194) = 7962624 * k + 2183597 := by
    unfold C
    simp [show (15925248 * k + 4367194) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2183597) = 23887872 * k + 6550792 := by
    unfold C
    simp [show (7962624 * k + 2183597) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6550792) = 11943936 * k + 3275396 := by
    unfold C
    simp [show (23887872 * k + 6550792) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3275396) = 5971968 * k + 1637698 := by
    unfold C
    simp [show (11943936 * k + 3275396) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1637698) = 2985984 * k + 818849 := by
    unfold C
    simp [show (5971968 * k + 1637698) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 818849) = 8957952 * k + 2456548 := by
    unfold C
    simp [show (2985984 * k + 818849) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2456548) = 4478976 * k + 1228274 := by
    unfold C
    simp [show (8957952 * k + 2456548) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1228274) = 2239488 * k + 614137 := by
    unfold C
    simp [show (4478976 * k + 1228274) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 614137) = 6718464 * k + 1842412 := by
    unfold C
    simp [show (2239488 * k + 614137) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1842412) = 3359232 * k + 921206 := by
    unfold C
    simp [show (6718464 * k + 1842412) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 921206) = 1679616 * k + 460603 := by
    unfold C
    simp [show (3359232 * k + 921206) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 460603) = 5038848 * k + 1381810 := by
    unfold C
    simp [show (1679616 * k + 460603) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1381810) = 2519424 * k + 690905 := by
    unfold C
    simp [show (5038848 * k + 1381810) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 690905) = 7558272 * k + 2072716 := by
    unfold C
    simp [show (2519424 * k + 690905) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2072716) = 3779136 * k + 1036358 := by
    unfold C
    simp [show (7558272 * k + 2072716) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1036358) = 1889568 * k + 518179 := by
    unfold C
    simp [show (3779136 * k + 1036358) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 518179) = 5668704 * k + 1554538 := by
    unfold C
    simp [show (1889568 * k + 518179) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1554538) = 2834352 * k + 777269 := by
    unfold C
    simp [show (5668704 * k + 1554538) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 777269) = 8503056 * k + 2331808 := by
    unfold C
    simp [show (2834352 * k + 777269) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2331808) = 4251528 * k + 1165904 := by
    unfold C
    simp [show (8503056 * k + 2331808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1165904) = 2125764 * k + 582952 := by
    unfold C
    simp [show (4251528 * k + 1165904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 582952) = 1062882 * k + 291476 := by
    unfold C
    simp [show (2125764 * k + 582952) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 291476) = 531441 * k + 145738 := by
    unfold C
    simp [show (1062882 * k + 291476) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 287551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 287551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_287711 : ∀ k : Nat,
    iterate (1048576 * k + 287711) 32 = 531441 * k + 145819 ∧
      531441 * k + 145819 < 1048576 * k + 287711 := by
  intro k
  have h1 : C (1048576 * k + 287711) = 3145728 * k + 863134 := by
    unfold C
    simp [show (1048576 * k + 287711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 863134) = 1572864 * k + 431567 := by
    unfold C
    simp [show (3145728 * k + 863134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 431567) = 4718592 * k + 1294702 := by
    unfold C
    simp [show (1572864 * k + 431567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1294702) = 2359296 * k + 647351 := by
    unfold C
    simp [show (4718592 * k + 1294702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 647351) = 7077888 * k + 1942054 := by
    unfold C
    simp [show (2359296 * k + 647351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1942054) = 3538944 * k + 971027 := by
    unfold C
    simp [show (7077888 * k + 1942054) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 971027) = 10616832 * k + 2913082 := by
    unfold C
    simp [show (3538944 * k + 971027) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2913082) = 5308416 * k + 1456541 := by
    unfold C
    simp [show (10616832 * k + 2913082) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1456541) = 15925248 * k + 4369624 := by
    unfold C
    simp [show (5308416 * k + 1456541) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4369624) = 7962624 * k + 2184812 := by
    unfold C
    simp [show (15925248 * k + 4369624) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2184812) = 3981312 * k + 1092406 := by
    unfold C
    simp [show (7962624 * k + 2184812) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1092406) = 1990656 * k + 546203 := by
    unfold C
    simp [show (3981312 * k + 1092406) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 546203) = 5971968 * k + 1638610 := by
    unfold C
    simp [show (1990656 * k + 546203) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1638610) = 2985984 * k + 819305 := by
    unfold C
    simp [show (5971968 * k + 1638610) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 819305) = 8957952 * k + 2457916 := by
    unfold C
    simp [show (2985984 * k + 819305) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2457916) = 4478976 * k + 1228958 := by
    unfold C
    simp [show (8957952 * k + 2457916) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1228958) = 2239488 * k + 614479 := by
    unfold C
    simp [show (4478976 * k + 1228958) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 614479) = 6718464 * k + 1843438 := by
    unfold C
    simp [show (2239488 * k + 614479) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1843438) = 3359232 * k + 921719 := by
    unfold C
    simp [show (6718464 * k + 1843438) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 921719) = 10077696 * k + 2765158 := by
    unfold C
    simp [show (3359232 * k + 921719) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2765158) = 5038848 * k + 1382579 := by
    unfold C
    simp [show (10077696 * k + 2765158) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1382579) = 15116544 * k + 4147738 := by
    unfold C
    simp [show (5038848 * k + 1382579) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4147738) = 7558272 * k + 2073869 := by
    unfold C
    simp [show (15116544 * k + 4147738) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2073869) = 22674816 * k + 6221608 := by
    unfold C
    simp [show (7558272 * k + 2073869) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6221608) = 11337408 * k + 3110804 := by
    unfold C
    simp [show (22674816 * k + 6221608) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3110804) = 5668704 * k + 1555402 := by
    unfold C
    simp [show (11337408 * k + 3110804) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1555402) = 2834352 * k + 777701 := by
    unfold C
    simp [show (5668704 * k + 1555402) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 777701) = 8503056 * k + 2333104 := by
    unfold C
    simp [show (2834352 * k + 777701) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2333104) = 4251528 * k + 1166552 := by
    unfold C
    simp [show (8503056 * k + 2333104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1166552) = 2125764 * k + 583276 := by
    unfold C
    simp [show (4251528 * k + 1166552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 583276) = 1062882 * k + 291638 := by
    unfold C
    simp [show (2125764 * k + 583276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 291638) = 531441 * k + 145819 := by
    unfold C
    simp [show (1062882 * k + 291638) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 287711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 287711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_287871 : ∀ k : Nat,
    iterate (1048576 * k + 287871) 32 = 531441 * k + 145900 ∧
      531441 * k + 145900 < 1048576 * k + 287871 := by
  intro k
  have h1 : C (1048576 * k + 287871) = 3145728 * k + 863614 := by
    unfold C
    simp [show (1048576 * k + 287871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 863614) = 1572864 * k + 431807 := by
    unfold C
    simp [show (3145728 * k + 863614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 431807) = 4718592 * k + 1295422 := by
    unfold C
    simp [show (1572864 * k + 431807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1295422) = 2359296 * k + 647711 := by
    unfold C
    simp [show (4718592 * k + 1295422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 647711) = 7077888 * k + 1943134 := by
    unfold C
    simp [show (2359296 * k + 647711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1943134) = 3538944 * k + 971567 := by
    unfold C
    simp [show (7077888 * k + 1943134) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 971567) = 10616832 * k + 2914702 := by
    unfold C
    simp [show (3538944 * k + 971567) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2914702) = 5308416 * k + 1457351 := by
    unfold C
    simp [show (10616832 * k + 2914702) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1457351) = 15925248 * k + 4372054 := by
    unfold C
    simp [show (5308416 * k + 1457351) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4372054) = 7962624 * k + 2186027 := by
    unfold C
    simp [show (15925248 * k + 4372054) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2186027) = 23887872 * k + 6558082 := by
    unfold C
    simp [show (7962624 * k + 2186027) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6558082) = 11943936 * k + 3279041 := by
    unfold C
    simp [show (23887872 * k + 6558082) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3279041) = 35831808 * k + 9837124 := by
    unfold C
    simp [show (11943936 * k + 3279041) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 9837124) = 17915904 * k + 4918562 := by
    unfold C
    simp [show (35831808 * k + 9837124) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 4918562) = 8957952 * k + 2459281 := by
    unfold C
    simp [show (17915904 * k + 4918562) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2459281) = 26873856 * k + 7377844 := by
    unfold C
    simp [show (8957952 * k + 2459281) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7377844) = 13436928 * k + 3688922 := by
    unfold C
    simp [show (26873856 * k + 7377844) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3688922) = 6718464 * k + 1844461 := by
    unfold C
    simp [show (13436928 * k + 3688922) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1844461) = 20155392 * k + 5533384 := by
    unfold C
    simp [show (6718464 * k + 1844461) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5533384) = 10077696 * k + 2766692 := by
    unfold C
    simp [show (20155392 * k + 5533384) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2766692) = 5038848 * k + 1383346 := by
    unfold C
    simp [show (10077696 * k + 2766692) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1383346) = 2519424 * k + 691673 := by
    unfold C
    simp [show (5038848 * k + 1383346) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 691673) = 7558272 * k + 2075020 := by
    unfold C
    simp [show (2519424 * k + 691673) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2075020) = 3779136 * k + 1037510 := by
    unfold C
    simp [show (7558272 * k + 2075020) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1037510) = 1889568 * k + 518755 := by
    unfold C
    simp [show (3779136 * k + 1037510) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 518755) = 5668704 * k + 1556266 := by
    unfold C
    simp [show (1889568 * k + 518755) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1556266) = 2834352 * k + 778133 := by
    unfold C
    simp [show (5668704 * k + 1556266) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 778133) = 8503056 * k + 2334400 := by
    unfold C
    simp [show (2834352 * k + 778133) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2334400) = 4251528 * k + 1167200 := by
    unfold C
    simp [show (8503056 * k + 2334400) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1167200) = 2125764 * k + 583600 := by
    unfold C
    simp [show (4251528 * k + 1167200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 583600) = 1062882 * k + 291800 := by
    unfold C
    simp [show (2125764 * k + 583600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 291800) = 531441 * k + 145900 := by
    unfold C
    simp [show (1062882 * k + 291800) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 287871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 287871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_289215 : ∀ k : Nat,
    iterate (1048576 * k + 289215) 32 = 531441 * k + 146581 ∧
      531441 * k + 146581 < 1048576 * k + 289215 := by
  intro k
  have h1 : C (1048576 * k + 289215) = 3145728 * k + 867646 := by
    unfold C
    simp [show (1048576 * k + 289215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 867646) = 1572864 * k + 433823 := by
    unfold C
    simp [show (3145728 * k + 867646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 433823) = 4718592 * k + 1301470 := by
    unfold C
    simp [show (1572864 * k + 433823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1301470) = 2359296 * k + 650735 := by
    unfold C
    simp [show (4718592 * k + 1301470) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 650735) = 7077888 * k + 1952206 := by
    unfold C
    simp [show (2359296 * k + 650735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1952206) = 3538944 * k + 976103 := by
    unfold C
    simp [show (7077888 * k + 1952206) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 976103) = 10616832 * k + 2928310 := by
    unfold C
    simp [show (3538944 * k + 976103) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2928310) = 5308416 * k + 1464155 := by
    unfold C
    simp [show (10616832 * k + 2928310) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1464155) = 15925248 * k + 4392466 := by
    unfold C
    simp [show (5308416 * k + 1464155) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4392466) = 7962624 * k + 2196233 := by
    unfold C
    simp [show (15925248 * k + 4392466) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2196233) = 23887872 * k + 6588700 := by
    unfold C
    simp [show (7962624 * k + 2196233) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6588700) = 11943936 * k + 3294350 := by
    unfold C
    simp [show (23887872 * k + 6588700) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3294350) = 5971968 * k + 1647175 := by
    unfold C
    simp [show (11943936 * k + 3294350) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1647175) = 17915904 * k + 4941526 := by
    unfold C
    simp [show (5971968 * k + 1647175) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4941526) = 8957952 * k + 2470763 := by
    unfold C
    simp [show (17915904 * k + 4941526) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2470763) = 26873856 * k + 7412290 := by
    unfold C
    simp [show (8957952 * k + 2470763) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7412290) = 13436928 * k + 3706145 := by
    unfold C
    simp [show (26873856 * k + 7412290) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3706145) = 40310784 * k + 11118436 := by
    unfold C
    simp [show (13436928 * k + 3706145) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11118436) = 20155392 * k + 5559218 := by
    unfold C
    simp [show (40310784 * k + 11118436) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5559218) = 10077696 * k + 2779609 := by
    unfold C
    simp [show (20155392 * k + 5559218) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2779609) = 30233088 * k + 8338828 := by
    unfold C
    simp [show (10077696 * k + 2779609) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8338828) = 15116544 * k + 4169414 := by
    unfold C
    simp [show (30233088 * k + 8338828) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4169414) = 7558272 * k + 2084707 := by
    unfold C
    simp [show (15116544 * k + 4169414) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2084707) = 22674816 * k + 6254122 := by
    unfold C
    simp [show (7558272 * k + 2084707) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6254122) = 11337408 * k + 3127061 := by
    unfold C
    simp [show (22674816 * k + 6254122) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3127061) = 34012224 * k + 9381184 := by
    unfold C
    simp [show (11337408 * k + 3127061) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 9381184) = 17006112 * k + 4690592 := by
    unfold C
    simp [show (34012224 * k + 9381184) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4690592) = 8503056 * k + 2345296 := by
    unfold C
    simp [show (17006112 * k + 4690592) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2345296) = 4251528 * k + 1172648 := by
    unfold C
    simp [show (8503056 * k + 2345296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1172648) = 2125764 * k + 586324 := by
    unfold C
    simp [show (4251528 * k + 1172648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 586324) = 1062882 * k + 293162 := by
    unfold C
    simp [show (2125764 * k + 586324) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 293162) = 531441 * k + 146581 := by
    unfold C
    simp [show (1062882 * k + 293162) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 289215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 289215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_290351 : ∀ k : Nat,
    iterate (1048576 * k + 290351) 32 = 531441 * k + 147157 ∧
      531441 * k + 147157 < 1048576 * k + 290351 := by
  intro k
  have h1 : C (1048576 * k + 290351) = 3145728 * k + 871054 := by
    unfold C
    simp [show (1048576 * k + 290351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 871054) = 1572864 * k + 435527 := by
    unfold C
    simp [show (3145728 * k + 871054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 435527) = 4718592 * k + 1306582 := by
    unfold C
    simp [show (1572864 * k + 435527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1306582) = 2359296 * k + 653291 := by
    unfold C
    simp [show (4718592 * k + 1306582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 653291) = 7077888 * k + 1959874 := by
    unfold C
    simp [show (2359296 * k + 653291) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1959874) = 3538944 * k + 979937 := by
    unfold C
    simp [show (7077888 * k + 1959874) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 979937) = 10616832 * k + 2939812 := by
    unfold C
    simp [show (3538944 * k + 979937) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2939812) = 5308416 * k + 1469906 := by
    unfold C
    simp [show (10616832 * k + 2939812) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1469906) = 2654208 * k + 734953 := by
    unfold C
    simp [show (5308416 * k + 1469906) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 734953) = 7962624 * k + 2204860 := by
    unfold C
    simp [show (2654208 * k + 734953) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2204860) = 3981312 * k + 1102430 := by
    unfold C
    simp [show (7962624 * k + 2204860) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1102430) = 1990656 * k + 551215 := by
    unfold C
    simp [show (3981312 * k + 1102430) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 551215) = 5971968 * k + 1653646 := by
    unfold C
    simp [show (1990656 * k + 551215) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1653646) = 2985984 * k + 826823 := by
    unfold C
    simp [show (5971968 * k + 1653646) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 826823) = 8957952 * k + 2480470 := by
    unfold C
    simp [show (2985984 * k + 826823) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2480470) = 4478976 * k + 1240235 := by
    unfold C
    simp [show (8957952 * k + 2480470) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1240235) = 13436928 * k + 3720706 := by
    unfold C
    simp [show (4478976 * k + 1240235) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3720706) = 6718464 * k + 1860353 := by
    unfold C
    simp [show (13436928 * k + 3720706) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1860353) = 20155392 * k + 5581060 := by
    unfold C
    simp [show (6718464 * k + 1860353) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5581060) = 10077696 * k + 2790530 := by
    unfold C
    simp [show (20155392 * k + 5581060) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2790530) = 5038848 * k + 1395265 := by
    unfold C
    simp [show (10077696 * k + 2790530) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1395265) = 15116544 * k + 4185796 := by
    unfold C
    simp [show (5038848 * k + 1395265) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4185796) = 7558272 * k + 2092898 := by
    unfold C
    simp [show (15116544 * k + 4185796) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2092898) = 3779136 * k + 1046449 := by
    unfold C
    simp [show (7558272 * k + 2092898) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1046449) = 11337408 * k + 3139348 := by
    unfold C
    simp [show (3779136 * k + 1046449) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3139348) = 5668704 * k + 1569674 := by
    unfold C
    simp [show (11337408 * k + 3139348) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1569674) = 2834352 * k + 784837 := by
    unfold C
    simp [show (5668704 * k + 1569674) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 784837) = 8503056 * k + 2354512 := by
    unfold C
    simp [show (2834352 * k + 784837) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2354512) = 4251528 * k + 1177256 := by
    unfold C
    simp [show (8503056 * k + 2354512) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1177256) = 2125764 * k + 588628 := by
    unfold C
    simp [show (4251528 * k + 1177256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 588628) = 1062882 * k + 294314 := by
    unfold C
    simp [show (2125764 * k + 588628) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 294314) = 531441 * k + 147157 := by
    unfold C
    simp [show (1062882 * k + 294314) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 290351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 290351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_290907 : ∀ k : Nat,
    iterate (1048576 * k + 290907) 32 = 531441 * k + 147439 ∧
      531441 * k + 147439 < 1048576 * k + 290907 := by
  intro k
  have h1 : C (1048576 * k + 290907) = 3145728 * k + 872722 := by
    unfold C
    simp [show (1048576 * k + 290907) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 872722) = 1572864 * k + 436361 := by
    unfold C
    simp [show (3145728 * k + 872722) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 436361) = 4718592 * k + 1309084 := by
    unfold C
    simp [show (1572864 * k + 436361) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1309084) = 2359296 * k + 654542 := by
    unfold C
    simp [show (4718592 * k + 1309084) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 654542) = 1179648 * k + 327271 := by
    unfold C
    simp [show (2359296 * k + 654542) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 327271) = 3538944 * k + 981814 := by
    unfold C
    simp [show (1179648 * k + 327271) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 981814) = 1769472 * k + 490907 := by
    unfold C
    simp [show (3538944 * k + 981814) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 490907) = 5308416 * k + 1472722 := by
    unfold C
    simp [show (1769472 * k + 490907) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1472722) = 2654208 * k + 736361 := by
    unfold C
    simp [show (5308416 * k + 1472722) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 736361) = 7962624 * k + 2209084 := by
    unfold C
    simp [show (2654208 * k + 736361) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2209084) = 3981312 * k + 1104542 := by
    unfold C
    simp [show (7962624 * k + 2209084) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1104542) = 1990656 * k + 552271 := by
    unfold C
    simp [show (3981312 * k + 1104542) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 552271) = 5971968 * k + 1656814 := by
    unfold C
    simp [show (1990656 * k + 552271) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1656814) = 2985984 * k + 828407 := by
    unfold C
    simp [show (5971968 * k + 1656814) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 828407) = 8957952 * k + 2485222 := by
    unfold C
    simp [show (2985984 * k + 828407) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2485222) = 4478976 * k + 1242611 := by
    unfold C
    simp [show (8957952 * k + 2485222) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1242611) = 13436928 * k + 3727834 := by
    unfold C
    simp [show (4478976 * k + 1242611) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3727834) = 6718464 * k + 1863917 := by
    unfold C
    simp [show (13436928 * k + 3727834) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1863917) = 20155392 * k + 5591752 := by
    unfold C
    simp [show (6718464 * k + 1863917) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5591752) = 10077696 * k + 2795876 := by
    unfold C
    simp [show (20155392 * k + 5591752) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2795876) = 5038848 * k + 1397938 := by
    unfold C
    simp [show (10077696 * k + 2795876) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1397938) = 2519424 * k + 698969 := by
    unfold C
    simp [show (5038848 * k + 1397938) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 698969) = 7558272 * k + 2096908 := by
    unfold C
    simp [show (2519424 * k + 698969) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2096908) = 3779136 * k + 1048454 := by
    unfold C
    simp [show (7558272 * k + 2096908) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1048454) = 1889568 * k + 524227 := by
    unfold C
    simp [show (3779136 * k + 1048454) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 524227) = 5668704 * k + 1572682 := by
    unfold C
    simp [show (1889568 * k + 524227) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1572682) = 2834352 * k + 786341 := by
    unfold C
    simp [show (5668704 * k + 1572682) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 786341) = 8503056 * k + 2359024 := by
    unfold C
    simp [show (2834352 * k + 786341) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2359024) = 4251528 * k + 1179512 := by
    unfold C
    simp [show (8503056 * k + 2359024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1179512) = 2125764 * k + 589756 := by
    unfold C
    simp [show (4251528 * k + 1179512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 589756) = 1062882 * k + 294878 := by
    unfold C
    simp [show (2125764 * k + 589756) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 294878) = 531441 * k + 147439 := by
    unfold C
    simp [show (1062882 * k + 294878) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 290907) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 290907)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_290975 : ∀ k : Nat,
    iterate (1048576 * k + 290975) 32 = 531441 * k + 147473 ∧
      531441 * k + 147473 < 1048576 * k + 290975 := by
  intro k
  have h1 : C (1048576 * k + 290975) = 3145728 * k + 872926 := by
    unfold C
    simp [show (1048576 * k + 290975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 872926) = 1572864 * k + 436463 := by
    unfold C
    simp [show (3145728 * k + 872926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 436463) = 4718592 * k + 1309390 := by
    unfold C
    simp [show (1572864 * k + 436463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1309390) = 2359296 * k + 654695 := by
    unfold C
    simp [show (4718592 * k + 1309390) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 654695) = 7077888 * k + 1964086 := by
    unfold C
    simp [show (2359296 * k + 654695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1964086) = 3538944 * k + 982043 := by
    unfold C
    simp [show (7077888 * k + 1964086) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 982043) = 10616832 * k + 2946130 := by
    unfold C
    simp [show (3538944 * k + 982043) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2946130) = 5308416 * k + 1473065 := by
    unfold C
    simp [show (10616832 * k + 2946130) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1473065) = 15925248 * k + 4419196 := by
    unfold C
    simp [show (5308416 * k + 1473065) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4419196) = 7962624 * k + 2209598 := by
    unfold C
    simp [show (15925248 * k + 4419196) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2209598) = 3981312 * k + 1104799 := by
    unfold C
    simp [show (7962624 * k + 2209598) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1104799) = 11943936 * k + 3314398 := by
    unfold C
    simp [show (3981312 * k + 1104799) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3314398) = 5971968 * k + 1657199 := by
    unfold C
    simp [show (11943936 * k + 3314398) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1657199) = 17915904 * k + 4971598 := by
    unfold C
    simp [show (5971968 * k + 1657199) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4971598) = 8957952 * k + 2485799 := by
    unfold C
    simp [show (17915904 * k + 4971598) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2485799) = 26873856 * k + 7457398 := by
    unfold C
    simp [show (8957952 * k + 2485799) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7457398) = 13436928 * k + 3728699 := by
    unfold C
    simp [show (26873856 * k + 7457398) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3728699) = 40310784 * k + 11186098 := by
    unfold C
    simp [show (13436928 * k + 3728699) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11186098) = 20155392 * k + 5593049 := by
    unfold C
    simp [show (40310784 * k + 11186098) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5593049) = 60466176 * k + 16779148 := by
    unfold C
    simp [show (20155392 * k + 5593049) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 16779148) = 30233088 * k + 8389574 := by
    unfold C
    simp [show (60466176 * k + 16779148) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 8389574) = 15116544 * k + 4194787 := by
    unfold C
    simp [show (30233088 * k + 8389574) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4194787) = 45349632 * k + 12584362 := by
    unfold C
    simp [show (15116544 * k + 4194787) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 12584362) = 22674816 * k + 6292181 := by
    unfold C
    simp [show (45349632 * k + 12584362) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 6292181) = 68024448 * k + 18876544 := by
    unfold C
    simp [show (22674816 * k + 6292181) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 18876544) = 34012224 * k + 9438272 := by
    unfold C
    simp [show (68024448 * k + 18876544) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 9438272) = 17006112 * k + 4719136 := by
    unfold C
    simp [show (34012224 * k + 9438272) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4719136) = 8503056 * k + 2359568 := by
    unfold C
    simp [show (17006112 * k + 4719136) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2359568) = 4251528 * k + 1179784 := by
    unfold C
    simp [show (8503056 * k + 2359568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1179784) = 2125764 * k + 589892 := by
    unfold C
    simp [show (4251528 * k + 1179784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 589892) = 1062882 * k + 294946 := by
    unfold C
    simp [show (2125764 * k + 589892) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 294946) = 531441 * k + 147473 := by
    unfold C
    simp [show (1062882 * k + 294946) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 290975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 290975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_291039 : ∀ k : Nat,
    iterate (1048576 * k + 291039) 32 = 531441 * k + 147506 ∧
      531441 * k + 147506 < 1048576 * k + 291039 := by
  intro k
  have h1 : C (1048576 * k + 291039) = 3145728 * k + 873118 := by
    unfold C
    simp [show (1048576 * k + 291039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 873118) = 1572864 * k + 436559 := by
    unfold C
    simp [show (3145728 * k + 873118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 436559) = 4718592 * k + 1309678 := by
    unfold C
    simp [show (1572864 * k + 436559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1309678) = 2359296 * k + 654839 := by
    unfold C
    simp [show (4718592 * k + 1309678) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 654839) = 7077888 * k + 1964518 := by
    unfold C
    simp [show (2359296 * k + 654839) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1964518) = 3538944 * k + 982259 := by
    unfold C
    simp [show (7077888 * k + 1964518) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 982259) = 10616832 * k + 2946778 := by
    unfold C
    simp [show (3538944 * k + 982259) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2946778) = 5308416 * k + 1473389 := by
    unfold C
    simp [show (10616832 * k + 2946778) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1473389) = 15925248 * k + 4420168 := by
    unfold C
    simp [show (5308416 * k + 1473389) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4420168) = 7962624 * k + 2210084 := by
    unfold C
    simp [show (15925248 * k + 4420168) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2210084) = 3981312 * k + 1105042 := by
    unfold C
    simp [show (7962624 * k + 2210084) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1105042) = 1990656 * k + 552521 := by
    unfold C
    simp [show (3981312 * k + 1105042) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 552521) = 5971968 * k + 1657564 := by
    unfold C
    simp [show (1990656 * k + 552521) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1657564) = 2985984 * k + 828782 := by
    unfold C
    simp [show (5971968 * k + 1657564) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 828782) = 1492992 * k + 414391 := by
    unfold C
    simp [show (2985984 * k + 828782) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 414391) = 4478976 * k + 1243174 := by
    unfold C
    simp [show (1492992 * k + 414391) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1243174) = 2239488 * k + 621587 := by
    unfold C
    simp [show (4478976 * k + 1243174) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 621587) = 6718464 * k + 1864762 := by
    unfold C
    simp [show (2239488 * k + 621587) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1864762) = 3359232 * k + 932381 := by
    unfold C
    simp [show (6718464 * k + 1864762) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 932381) = 10077696 * k + 2797144 := by
    unfold C
    simp [show (3359232 * k + 932381) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2797144) = 5038848 * k + 1398572 := by
    unfold C
    simp [show (10077696 * k + 2797144) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1398572) = 2519424 * k + 699286 := by
    unfold C
    simp [show (5038848 * k + 1398572) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 699286) = 1259712 * k + 349643 := by
    unfold C
    simp [show (2519424 * k + 699286) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 349643) = 3779136 * k + 1048930 := by
    unfold C
    simp [show (1259712 * k + 349643) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1048930) = 1889568 * k + 524465 := by
    unfold C
    simp [show (3779136 * k + 1048930) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 524465) = 5668704 * k + 1573396 := by
    unfold C
    simp [show (1889568 * k + 524465) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1573396) = 2834352 * k + 786698 := by
    unfold C
    simp [show (5668704 * k + 1573396) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 786698) = 1417176 * k + 393349 := by
    unfold C
    simp [show (2834352 * k + 786698) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 393349) = 4251528 * k + 1180048 := by
    unfold C
    simp [show (1417176 * k + 393349) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1180048) = 2125764 * k + 590024 := by
    unfold C
    simp [show (4251528 * k + 1180048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 590024) = 1062882 * k + 295012 := by
    unfold C
    simp [show (2125764 * k + 590024) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 295012) = 531441 * k + 147506 := by
    unfold C
    simp [show (1062882 * k + 295012) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 291039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 291039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard038
