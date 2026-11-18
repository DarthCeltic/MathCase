import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard127

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_995871 : ∀ k : Nat,
    iterate (1048576 * k + 995871) 32 = 531441 * k + 504730 ∧
      531441 * k + 504730 < 1048576 * k + 995871 := by
  intro k
  have h1 : C (1048576 * k + 995871) = 3145728 * k + 2987614 := by
    unfold C
    simp [show (1048576 * k + 995871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2987614) = 1572864 * k + 1493807 := by
    unfold C
    simp [show (3145728 * k + 2987614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1493807) = 4718592 * k + 4481422 := by
    unfold C
    simp [show (1572864 * k + 1493807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4481422) = 2359296 * k + 2240711 := by
    unfold C
    simp [show (4718592 * k + 4481422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2240711) = 7077888 * k + 6722134 := by
    unfold C
    simp [show (2359296 * k + 2240711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6722134) = 3538944 * k + 3361067 := by
    unfold C
    simp [show (7077888 * k + 6722134) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3361067) = 10616832 * k + 10083202 := by
    unfold C
    simp [show (3538944 * k + 3361067) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10083202) = 5308416 * k + 5041601 := by
    unfold C
    simp [show (10616832 * k + 10083202) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5041601) = 15925248 * k + 15124804 := by
    unfold C
    simp [show (5308416 * k + 5041601) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15124804) = 7962624 * k + 7562402 := by
    unfold C
    simp [show (15925248 * k + 15124804) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7562402) = 3981312 * k + 3781201 := by
    unfold C
    simp [show (7962624 * k + 7562402) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3781201) = 11943936 * k + 11343604 := by
    unfold C
    simp [show (3981312 * k + 3781201) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11343604) = 5971968 * k + 5671802 := by
    unfold C
    simp [show (11943936 * k + 11343604) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5671802) = 2985984 * k + 2835901 := by
    unfold C
    simp [show (5971968 * k + 5671802) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2835901) = 8957952 * k + 8507704 := by
    unfold C
    simp [show (2985984 * k + 2835901) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8507704) = 4478976 * k + 4253852 := by
    unfold C
    simp [show (8957952 * k + 8507704) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4253852) = 2239488 * k + 2126926 := by
    unfold C
    simp [show (4478976 * k + 4253852) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2126926) = 1119744 * k + 1063463 := by
    unfold C
    simp [show (2239488 * k + 2126926) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1063463) = 3359232 * k + 3190390 := by
    unfold C
    simp [show (1119744 * k + 1063463) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3190390) = 1679616 * k + 1595195 := by
    unfold C
    simp [show (3359232 * k + 3190390) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1595195) = 5038848 * k + 4785586 := by
    unfold C
    simp [show (1679616 * k + 1595195) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4785586) = 2519424 * k + 2392793 := by
    unfold C
    simp [show (5038848 * k + 4785586) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2392793) = 7558272 * k + 7178380 := by
    unfold C
    simp [show (2519424 * k + 2392793) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7178380) = 3779136 * k + 3589190 := by
    unfold C
    simp [show (7558272 * k + 7178380) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3589190) = 1889568 * k + 1794595 := by
    unfold C
    simp [show (3779136 * k + 3589190) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1794595) = 5668704 * k + 5383786 := by
    unfold C
    simp [show (1889568 * k + 1794595) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5383786) = 2834352 * k + 2691893 := by
    unfold C
    simp [show (5668704 * k + 5383786) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2691893) = 8503056 * k + 8075680 := by
    unfold C
    simp [show (2834352 * k + 2691893) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8075680) = 4251528 * k + 4037840 := by
    unfold C
    simp [show (8503056 * k + 8075680) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4037840) = 2125764 * k + 2018920 := by
    unfold C
    simp [show (4251528 * k + 4037840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2018920) = 1062882 * k + 1009460 := by
    unfold C
    simp [show (2125764 * k + 2018920) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1009460) = 531441 * k + 504730 := by
    unfold C
    simp [show (1062882 * k + 1009460) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 995871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 995871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_996167 : ∀ k : Nat,
    iterate (1048576 * k + 996167) 32 = 531441 * k + 504880 ∧
      531441 * k + 504880 < 1048576 * k + 996167 := by
  intro k
  have h1 : C (1048576 * k + 996167) = 3145728 * k + 2988502 := by
    unfold C
    simp [show (1048576 * k + 996167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2988502) = 1572864 * k + 1494251 := by
    unfold C
    simp [show (3145728 * k + 2988502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1494251) = 4718592 * k + 4482754 := by
    unfold C
    simp [show (1572864 * k + 1494251) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4482754) = 2359296 * k + 2241377 := by
    unfold C
    simp [show (4718592 * k + 4482754) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2241377) = 7077888 * k + 6724132 := by
    unfold C
    simp [show (2359296 * k + 2241377) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6724132) = 3538944 * k + 3362066 := by
    unfold C
    simp [show (7077888 * k + 6724132) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3362066) = 1769472 * k + 1681033 := by
    unfold C
    simp [show (3538944 * k + 3362066) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1681033) = 5308416 * k + 5043100 := by
    unfold C
    simp [show (1769472 * k + 1681033) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5043100) = 2654208 * k + 2521550 := by
    unfold C
    simp [show (5308416 * k + 5043100) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2521550) = 1327104 * k + 1260775 := by
    unfold C
    simp [show (2654208 * k + 2521550) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1260775) = 3981312 * k + 3782326 := by
    unfold C
    simp [show (1327104 * k + 1260775) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3782326) = 1990656 * k + 1891163 := by
    unfold C
    simp [show (3981312 * k + 3782326) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1891163) = 5971968 * k + 5673490 := by
    unfold C
    simp [show (1990656 * k + 1891163) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5673490) = 2985984 * k + 2836745 := by
    unfold C
    simp [show (5971968 * k + 5673490) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2836745) = 8957952 * k + 8510236 := by
    unfold C
    simp [show (2985984 * k + 2836745) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8510236) = 4478976 * k + 4255118 := by
    unfold C
    simp [show (8957952 * k + 8510236) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4255118) = 2239488 * k + 2127559 := by
    unfold C
    simp [show (4478976 * k + 4255118) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2127559) = 6718464 * k + 6382678 := by
    unfold C
    simp [show (2239488 * k + 2127559) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6382678) = 3359232 * k + 3191339 := by
    unfold C
    simp [show (6718464 * k + 6382678) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3191339) = 10077696 * k + 9574018 := by
    unfold C
    simp [show (3359232 * k + 3191339) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9574018) = 5038848 * k + 4787009 := by
    unfold C
    simp [show (10077696 * k + 9574018) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4787009) = 15116544 * k + 14361028 := by
    unfold C
    simp [show (5038848 * k + 4787009) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14361028) = 7558272 * k + 7180514 := by
    unfold C
    simp [show (15116544 * k + 14361028) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7180514) = 3779136 * k + 3590257 := by
    unfold C
    simp [show (7558272 * k + 7180514) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3590257) = 11337408 * k + 10770772 := by
    unfold C
    simp [show (3779136 * k + 3590257) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10770772) = 5668704 * k + 5385386 := by
    unfold C
    simp [show (11337408 * k + 10770772) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5385386) = 2834352 * k + 2692693 := by
    unfold C
    simp [show (5668704 * k + 5385386) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2692693) = 8503056 * k + 8078080 := by
    unfold C
    simp [show (2834352 * k + 2692693) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8078080) = 4251528 * k + 4039040 := by
    unfold C
    simp [show (8503056 * k + 8078080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4039040) = 2125764 * k + 2019520 := by
    unfold C
    simp [show (4251528 * k + 4039040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2019520) = 1062882 * k + 1009760 := by
    unfold C
    simp [show (2125764 * k + 2019520) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1009760) = 531441 * k + 504880 := by
    unfold C
    simp [show (1062882 * k + 1009760) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 996167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 996167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_996199 : ∀ k : Nat,
    iterate (1048576 * k + 996199) 32 = 531441 * k + 504896 ∧
      531441 * k + 504896 < 1048576 * k + 996199 := by
  intro k
  have h1 : C (1048576 * k + 996199) = 3145728 * k + 2988598 := by
    unfold C
    simp [show (1048576 * k + 996199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2988598) = 1572864 * k + 1494299 := by
    unfold C
    simp [show (3145728 * k + 2988598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1494299) = 4718592 * k + 4482898 := by
    unfold C
    simp [show (1572864 * k + 1494299) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4482898) = 2359296 * k + 2241449 := by
    unfold C
    simp [show (4718592 * k + 4482898) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2241449) = 7077888 * k + 6724348 := by
    unfold C
    simp [show (2359296 * k + 2241449) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6724348) = 3538944 * k + 3362174 := by
    unfold C
    simp [show (7077888 * k + 6724348) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3362174) = 1769472 * k + 1681087 := by
    unfold C
    simp [show (3538944 * k + 3362174) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1681087) = 5308416 * k + 5043262 := by
    unfold C
    simp [show (1769472 * k + 1681087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5043262) = 2654208 * k + 2521631 := by
    unfold C
    simp [show (5308416 * k + 5043262) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2521631) = 7962624 * k + 7564894 := by
    unfold C
    simp [show (2654208 * k + 2521631) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7564894) = 3981312 * k + 3782447 := by
    unfold C
    simp [show (7962624 * k + 7564894) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3782447) = 11943936 * k + 11347342 := by
    unfold C
    simp [show (3981312 * k + 3782447) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11347342) = 5971968 * k + 5673671 := by
    unfold C
    simp [show (11943936 * k + 11347342) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5673671) = 17915904 * k + 17021014 := by
    unfold C
    simp [show (5971968 * k + 5673671) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17021014) = 8957952 * k + 8510507 := by
    unfold C
    simp [show (17915904 * k + 17021014) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8510507) = 26873856 * k + 25531522 := by
    unfold C
    simp [show (8957952 * k + 8510507) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25531522) = 13436928 * k + 12765761 := by
    unfold C
    simp [show (26873856 * k + 25531522) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12765761) = 40310784 * k + 38297284 := by
    unfold C
    simp [show (13436928 * k + 12765761) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38297284) = 20155392 * k + 19148642 := by
    unfold C
    simp [show (40310784 * k + 38297284) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19148642) = 10077696 * k + 9574321 := by
    unfold C
    simp [show (20155392 * k + 19148642) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9574321) = 30233088 * k + 28722964 := by
    unfold C
    simp [show (10077696 * k + 9574321) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 28722964) = 15116544 * k + 14361482 := by
    unfold C
    simp [show (30233088 * k + 28722964) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14361482) = 7558272 * k + 7180741 := by
    unfold C
    simp [show (15116544 * k + 14361482) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7180741) = 22674816 * k + 21542224 := by
    unfold C
    simp [show (7558272 * k + 7180741) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21542224) = 11337408 * k + 10771112 := by
    unfold C
    simp [show (22674816 * k + 21542224) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10771112) = 5668704 * k + 5385556 := by
    unfold C
    simp [show (11337408 * k + 10771112) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5385556) = 2834352 * k + 2692778 := by
    unfold C
    simp [show (5668704 * k + 5385556) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2692778) = 1417176 * k + 1346389 := by
    unfold C
    simp [show (2834352 * k + 2692778) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1346389) = 4251528 * k + 4039168 := by
    unfold C
    simp [show (1417176 * k + 1346389) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4039168) = 2125764 * k + 2019584 := by
    unfold C
    simp [show (4251528 * k + 4039168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2019584) = 1062882 * k + 1009792 := by
    unfold C
    simp [show (2125764 * k + 2019584) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1009792) = 531441 * k + 504896 := by
    unfold C
    simp [show (1062882 * k + 1009792) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 996199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 996199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_996223 : ∀ k : Nat,
    iterate (1048576 * k + 996223) 32 = 531441 * k + 504908 ∧
      531441 * k + 504908 < 1048576 * k + 996223 := by
  intro k
  have h1 : C (1048576 * k + 996223) = 3145728 * k + 2988670 := by
    unfold C
    simp [show (1048576 * k + 996223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2988670) = 1572864 * k + 1494335 := by
    unfold C
    simp [show (3145728 * k + 2988670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1494335) = 4718592 * k + 4483006 := by
    unfold C
    simp [show (1572864 * k + 1494335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4483006) = 2359296 * k + 2241503 := by
    unfold C
    simp [show (4718592 * k + 4483006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2241503) = 7077888 * k + 6724510 := by
    unfold C
    simp [show (2359296 * k + 2241503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6724510) = 3538944 * k + 3362255 := by
    unfold C
    simp [show (7077888 * k + 6724510) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3362255) = 10616832 * k + 10086766 := by
    unfold C
    simp [show (3538944 * k + 3362255) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10086766) = 5308416 * k + 5043383 := by
    unfold C
    simp [show (10616832 * k + 10086766) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5043383) = 15925248 * k + 15130150 := by
    unfold C
    simp [show (5308416 * k + 5043383) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15130150) = 7962624 * k + 7565075 := by
    unfold C
    simp [show (15925248 * k + 15130150) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7565075) = 23887872 * k + 22695226 := by
    unfold C
    simp [show (7962624 * k + 7565075) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22695226) = 11943936 * k + 11347613 := by
    unfold C
    simp [show (23887872 * k + 22695226) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11347613) = 35831808 * k + 34042840 := by
    unfold C
    simp [show (11943936 * k + 11347613) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34042840) = 17915904 * k + 17021420 := by
    unfold C
    simp [show (35831808 * k + 34042840) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17021420) = 8957952 * k + 8510710 := by
    unfold C
    simp [show (17915904 * k + 17021420) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8510710) = 4478976 * k + 4255355 := by
    unfold C
    simp [show (8957952 * k + 8510710) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4255355) = 13436928 * k + 12766066 := by
    unfold C
    simp [show (4478976 * k + 4255355) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12766066) = 6718464 * k + 6383033 := by
    unfold C
    simp [show (13436928 * k + 12766066) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6383033) = 20155392 * k + 19149100 := by
    unfold C
    simp [show (6718464 * k + 6383033) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19149100) = 10077696 * k + 9574550 := by
    unfold C
    simp [show (20155392 * k + 19149100) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9574550) = 5038848 * k + 4787275 := by
    unfold C
    simp [show (10077696 * k + 9574550) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4787275) = 15116544 * k + 14361826 := by
    unfold C
    simp [show (5038848 * k + 4787275) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14361826) = 7558272 * k + 7180913 := by
    unfold C
    simp [show (15116544 * k + 14361826) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7180913) = 22674816 * k + 21542740 := by
    unfold C
    simp [show (7558272 * k + 7180913) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21542740) = 11337408 * k + 10771370 := by
    unfold C
    simp [show (22674816 * k + 21542740) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10771370) = 5668704 * k + 5385685 := by
    unfold C
    simp [show (11337408 * k + 10771370) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5385685) = 17006112 * k + 16157056 := by
    unfold C
    simp [show (5668704 * k + 5385685) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16157056) = 8503056 * k + 8078528 := by
    unfold C
    simp [show (17006112 * k + 16157056) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8078528) = 4251528 * k + 4039264 := by
    unfold C
    simp [show (8503056 * k + 8078528) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4039264) = 2125764 * k + 2019632 := by
    unfold C
    simp [show (4251528 * k + 4039264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2019632) = 1062882 * k + 1009816 := by
    unfold C
    simp [show (2125764 * k + 2019632) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1009816) = 531441 * k + 504908 := by
    unfold C
    simp [show (1062882 * k + 1009816) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 996223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 996223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_996511 : ∀ k : Nat,
    iterate (1048576 * k + 996511) 32 = 531441 * k + 505054 ∧
      531441 * k + 505054 < 1048576 * k + 996511 := by
  intro k
  have h1 : C (1048576 * k + 996511) = 3145728 * k + 2989534 := by
    unfold C
    simp [show (1048576 * k + 996511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2989534) = 1572864 * k + 1494767 := by
    unfold C
    simp [show (3145728 * k + 2989534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1494767) = 4718592 * k + 4484302 := by
    unfold C
    simp [show (1572864 * k + 1494767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4484302) = 2359296 * k + 2242151 := by
    unfold C
    simp [show (4718592 * k + 4484302) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2242151) = 7077888 * k + 6726454 := by
    unfold C
    simp [show (2359296 * k + 2242151) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6726454) = 3538944 * k + 3363227 := by
    unfold C
    simp [show (7077888 * k + 6726454) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3363227) = 10616832 * k + 10089682 := by
    unfold C
    simp [show (3538944 * k + 3363227) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10089682) = 5308416 * k + 5044841 := by
    unfold C
    simp [show (10616832 * k + 10089682) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5044841) = 15925248 * k + 15134524 := by
    unfold C
    simp [show (5308416 * k + 5044841) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15134524) = 7962624 * k + 7567262 := by
    unfold C
    simp [show (15925248 * k + 15134524) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7567262) = 3981312 * k + 3783631 := by
    unfold C
    simp [show (7962624 * k + 7567262) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3783631) = 11943936 * k + 11350894 := by
    unfold C
    simp [show (3981312 * k + 3783631) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11350894) = 5971968 * k + 5675447 := by
    unfold C
    simp [show (11943936 * k + 11350894) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5675447) = 17915904 * k + 17026342 := by
    unfold C
    simp [show (5971968 * k + 5675447) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17026342) = 8957952 * k + 8513171 := by
    unfold C
    simp [show (17915904 * k + 17026342) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8513171) = 26873856 * k + 25539514 := by
    unfold C
    simp [show (8957952 * k + 8513171) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25539514) = 13436928 * k + 12769757 := by
    unfold C
    simp [show (26873856 * k + 25539514) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12769757) = 40310784 * k + 38309272 := by
    unfold C
    simp [show (13436928 * k + 12769757) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38309272) = 20155392 * k + 19154636 := by
    unfold C
    simp [show (40310784 * k + 38309272) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19154636) = 10077696 * k + 9577318 := by
    unfold C
    simp [show (20155392 * k + 19154636) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9577318) = 5038848 * k + 4788659 := by
    unfold C
    simp [show (10077696 * k + 9577318) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4788659) = 15116544 * k + 14365978 := by
    unfold C
    simp [show (5038848 * k + 4788659) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14365978) = 7558272 * k + 7182989 := by
    unfold C
    simp [show (15116544 * k + 14365978) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7182989) = 22674816 * k + 21548968 := by
    unfold C
    simp [show (7558272 * k + 7182989) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21548968) = 11337408 * k + 10774484 := by
    unfold C
    simp [show (22674816 * k + 21548968) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10774484) = 5668704 * k + 5387242 := by
    unfold C
    simp [show (11337408 * k + 10774484) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5387242) = 2834352 * k + 2693621 := by
    unfold C
    simp [show (5668704 * k + 5387242) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2693621) = 8503056 * k + 8080864 := by
    unfold C
    simp [show (2834352 * k + 2693621) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8080864) = 4251528 * k + 4040432 := by
    unfold C
    simp [show (8503056 * k + 8080864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4040432) = 2125764 * k + 2020216 := by
    unfold C
    simp [show (4251528 * k + 4040432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2020216) = 1062882 * k + 1010108 := by
    unfold C
    simp [show (2125764 * k + 2020216) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1010108) = 531441 * k + 505054 := by
    unfold C
    simp [show (1062882 * k + 1010108) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 996511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 996511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_996635 : ∀ k : Nat,
    iterate (1048576 * k + 996635) 32 = 531441 * k + 505117 ∧
      531441 * k + 505117 < 1048576 * k + 996635 := by
  intro k
  have h1 : C (1048576 * k + 996635) = 3145728 * k + 2989906 := by
    unfold C
    simp [show (1048576 * k + 996635) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2989906) = 1572864 * k + 1494953 := by
    unfold C
    simp [show (3145728 * k + 2989906) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1494953) = 4718592 * k + 4484860 := by
    unfold C
    simp [show (1572864 * k + 1494953) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4484860) = 2359296 * k + 2242430 := by
    unfold C
    simp [show (4718592 * k + 4484860) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2242430) = 1179648 * k + 1121215 := by
    unfold C
    simp [show (2359296 * k + 2242430) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1121215) = 3538944 * k + 3363646 := by
    unfold C
    simp [show (1179648 * k + 1121215) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3363646) = 1769472 * k + 1681823 := by
    unfold C
    simp [show (3538944 * k + 3363646) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1681823) = 5308416 * k + 5045470 := by
    unfold C
    simp [show (1769472 * k + 1681823) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5045470) = 2654208 * k + 2522735 := by
    unfold C
    simp [show (5308416 * k + 5045470) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2522735) = 7962624 * k + 7568206 := by
    unfold C
    simp [show (2654208 * k + 2522735) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7568206) = 3981312 * k + 3784103 := by
    unfold C
    simp [show (7962624 * k + 7568206) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3784103) = 11943936 * k + 11352310 := by
    unfold C
    simp [show (3981312 * k + 3784103) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11352310) = 5971968 * k + 5676155 := by
    unfold C
    simp [show (11943936 * k + 11352310) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5676155) = 17915904 * k + 17028466 := by
    unfold C
    simp [show (5971968 * k + 5676155) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17028466) = 8957952 * k + 8514233 := by
    unfold C
    simp [show (17915904 * k + 17028466) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8514233) = 26873856 * k + 25542700 := by
    unfold C
    simp [show (8957952 * k + 8514233) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25542700) = 13436928 * k + 12771350 := by
    unfold C
    simp [show (26873856 * k + 25542700) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12771350) = 6718464 * k + 6385675 := by
    unfold C
    simp [show (13436928 * k + 12771350) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6385675) = 20155392 * k + 19157026 := by
    unfold C
    simp [show (6718464 * k + 6385675) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19157026) = 10077696 * k + 9578513 := by
    unfold C
    simp [show (20155392 * k + 19157026) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9578513) = 30233088 * k + 28735540 := by
    unfold C
    simp [show (10077696 * k + 9578513) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 28735540) = 15116544 * k + 14367770 := by
    unfold C
    simp [show (30233088 * k + 28735540) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14367770) = 7558272 * k + 7183885 := by
    unfold C
    simp [show (15116544 * k + 14367770) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7183885) = 22674816 * k + 21551656 := by
    unfold C
    simp [show (7558272 * k + 7183885) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21551656) = 11337408 * k + 10775828 := by
    unfold C
    simp [show (22674816 * k + 21551656) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10775828) = 5668704 * k + 5387914 := by
    unfold C
    simp [show (11337408 * k + 10775828) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5387914) = 2834352 * k + 2693957 := by
    unfold C
    simp [show (5668704 * k + 5387914) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2693957) = 8503056 * k + 8081872 := by
    unfold C
    simp [show (2834352 * k + 2693957) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8081872) = 4251528 * k + 4040936 := by
    unfold C
    simp [show (8503056 * k + 8081872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4040936) = 2125764 * k + 2020468 := by
    unfold C
    simp [show (4251528 * k + 4040936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2020468) = 1062882 * k + 1010234 := by
    unfold C
    simp [show (2125764 * k + 2020468) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1010234) = 531441 * k + 505117 := by
    unfold C
    simp [show (1062882 * k + 1010234) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 996635) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 996635)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_997223 : ∀ k : Nat,
    iterate (1048576 * k + 997223) 32 = 531441 * k + 505415 ∧
      531441 * k + 505415 < 1048576 * k + 997223 := by
  intro k
  have h1 : C (1048576 * k + 997223) = 3145728 * k + 2991670 := by
    unfold C
    simp [show (1048576 * k + 997223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2991670) = 1572864 * k + 1495835 := by
    unfold C
    simp [show (3145728 * k + 2991670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1495835) = 4718592 * k + 4487506 := by
    unfold C
    simp [show (1572864 * k + 1495835) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4487506) = 2359296 * k + 2243753 := by
    unfold C
    simp [show (4718592 * k + 4487506) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2243753) = 7077888 * k + 6731260 := by
    unfold C
    simp [show (2359296 * k + 2243753) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6731260) = 3538944 * k + 3365630 := by
    unfold C
    simp [show (7077888 * k + 6731260) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3365630) = 1769472 * k + 1682815 := by
    unfold C
    simp [show (3538944 * k + 3365630) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1682815) = 5308416 * k + 5048446 := by
    unfold C
    simp [show (1769472 * k + 1682815) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5048446) = 2654208 * k + 2524223 := by
    unfold C
    simp [show (5308416 * k + 5048446) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2524223) = 7962624 * k + 7572670 := by
    unfold C
    simp [show (2654208 * k + 2524223) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7572670) = 3981312 * k + 3786335 := by
    unfold C
    simp [show (7962624 * k + 7572670) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3786335) = 11943936 * k + 11359006 := by
    unfold C
    simp [show (3981312 * k + 3786335) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11359006) = 5971968 * k + 5679503 := by
    unfold C
    simp [show (11943936 * k + 11359006) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5679503) = 17915904 * k + 17038510 := by
    unfold C
    simp [show (5971968 * k + 5679503) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17038510) = 8957952 * k + 8519255 := by
    unfold C
    simp [show (17915904 * k + 17038510) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8519255) = 26873856 * k + 25557766 := by
    unfold C
    simp [show (8957952 * k + 8519255) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25557766) = 13436928 * k + 12778883 := by
    unfold C
    simp [show (26873856 * k + 25557766) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12778883) = 40310784 * k + 38336650 := by
    unfold C
    simp [show (13436928 * k + 12778883) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38336650) = 20155392 * k + 19168325 := by
    unfold C
    simp [show (40310784 * k + 38336650) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19168325) = 60466176 * k + 57504976 := by
    unfold C
    simp [show (20155392 * k + 19168325) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 57504976) = 30233088 * k + 28752488 := by
    unfold C
    simp [show (60466176 * k + 57504976) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 28752488) = 15116544 * k + 14376244 := by
    unfold C
    simp [show (30233088 * k + 28752488) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14376244) = 7558272 * k + 7188122 := by
    unfold C
    simp [show (15116544 * k + 14376244) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7188122) = 3779136 * k + 3594061 := by
    unfold C
    simp [show (7558272 * k + 7188122) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3594061) = 11337408 * k + 10782184 := by
    unfold C
    simp [show (3779136 * k + 3594061) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10782184) = 5668704 * k + 5391092 := by
    unfold C
    simp [show (11337408 * k + 10782184) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5391092) = 2834352 * k + 2695546 := by
    unfold C
    simp [show (5668704 * k + 5391092) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2695546) = 1417176 * k + 1347773 := by
    unfold C
    simp [show (2834352 * k + 2695546) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1347773) = 4251528 * k + 4043320 := by
    unfold C
    simp [show (1417176 * k + 1347773) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4043320) = 2125764 * k + 2021660 := by
    unfold C
    simp [show (4251528 * k + 4043320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2021660) = 1062882 * k + 1010830 := by
    unfold C
    simp [show (2125764 * k + 2021660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1010830) = 531441 * k + 505415 := by
    unfold C
    simp [show (1062882 * k + 1010830) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 997223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 997223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_999583 : ∀ k : Nat,
    iterate (1048576 * k + 999583) 32 = 531441 * k + 506611 ∧
      531441 * k + 506611 < 1048576 * k + 999583 := by
  intro k
  have h1 : C (1048576 * k + 999583) = 3145728 * k + 2998750 := by
    unfold C
    simp [show (1048576 * k + 999583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2998750) = 1572864 * k + 1499375 := by
    unfold C
    simp [show (3145728 * k + 2998750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1499375) = 4718592 * k + 4498126 := by
    unfold C
    simp [show (1572864 * k + 1499375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4498126) = 2359296 * k + 2249063 := by
    unfold C
    simp [show (4718592 * k + 4498126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2249063) = 7077888 * k + 6747190 := by
    unfold C
    simp [show (2359296 * k + 2249063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6747190) = 3538944 * k + 3373595 := by
    unfold C
    simp [show (7077888 * k + 6747190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3373595) = 10616832 * k + 10120786 := by
    unfold C
    simp [show (3538944 * k + 3373595) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10120786) = 5308416 * k + 5060393 := by
    unfold C
    simp [show (10616832 * k + 10120786) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5060393) = 15925248 * k + 15181180 := by
    unfold C
    simp [show (5308416 * k + 5060393) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15181180) = 7962624 * k + 7590590 := by
    unfold C
    simp [show (15925248 * k + 15181180) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7590590) = 3981312 * k + 3795295 := by
    unfold C
    simp [show (7962624 * k + 7590590) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3795295) = 11943936 * k + 11385886 := by
    unfold C
    simp [show (3981312 * k + 3795295) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11385886) = 5971968 * k + 5692943 := by
    unfold C
    simp [show (11943936 * k + 11385886) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5692943) = 17915904 * k + 17078830 := by
    unfold C
    simp [show (5971968 * k + 5692943) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17078830) = 8957952 * k + 8539415 := by
    unfold C
    simp [show (17915904 * k + 17078830) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8539415) = 26873856 * k + 25618246 := by
    unfold C
    simp [show (8957952 * k + 8539415) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25618246) = 13436928 * k + 12809123 := by
    unfold C
    simp [show (26873856 * k + 25618246) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12809123) = 40310784 * k + 38427370 := by
    unfold C
    simp [show (13436928 * k + 12809123) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38427370) = 20155392 * k + 19213685 := by
    unfold C
    simp [show (40310784 * k + 38427370) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19213685) = 60466176 * k + 57641056 := by
    unfold C
    simp [show (20155392 * k + 19213685) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 57641056) = 30233088 * k + 28820528 := by
    unfold C
    simp [show (60466176 * k + 57641056) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 28820528) = 15116544 * k + 14410264 := by
    unfold C
    simp [show (30233088 * k + 28820528) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14410264) = 7558272 * k + 7205132 := by
    unfold C
    simp [show (15116544 * k + 14410264) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7205132) = 3779136 * k + 3602566 := by
    unfold C
    simp [show (7558272 * k + 7205132) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3602566) = 1889568 * k + 1801283 := by
    unfold C
    simp [show (3779136 * k + 3602566) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1801283) = 5668704 * k + 5403850 := by
    unfold C
    simp [show (1889568 * k + 1801283) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5403850) = 2834352 * k + 2701925 := by
    unfold C
    simp [show (5668704 * k + 5403850) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2701925) = 8503056 * k + 8105776 := by
    unfold C
    simp [show (2834352 * k + 2701925) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8105776) = 4251528 * k + 4052888 := by
    unfold C
    simp [show (8503056 * k + 8105776) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4052888) = 2125764 * k + 2026444 := by
    unfold C
    simp [show (4251528 * k + 4052888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2026444) = 1062882 * k + 1013222 := by
    unfold C
    simp [show (2125764 * k + 2026444) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1013222) = 531441 * k + 506611 := by
    unfold C
    simp [show (1062882 * k + 1013222) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 999583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 999583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_999707 : ∀ k : Nat,
    iterate (1048576 * k + 999707) 32 = 531441 * k + 506674 ∧
      531441 * k + 506674 < 1048576 * k + 999707 := by
  intro k
  have h1 : C (1048576 * k + 999707) = 3145728 * k + 2999122 := by
    unfold C
    simp [show (1048576 * k + 999707) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2999122) = 1572864 * k + 1499561 := by
    unfold C
    simp [show (3145728 * k + 2999122) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1499561) = 4718592 * k + 4498684 := by
    unfold C
    simp [show (1572864 * k + 1499561) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4498684) = 2359296 * k + 2249342 := by
    unfold C
    simp [show (4718592 * k + 4498684) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2249342) = 1179648 * k + 1124671 := by
    unfold C
    simp [show (2359296 * k + 2249342) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1124671) = 3538944 * k + 3374014 := by
    unfold C
    simp [show (1179648 * k + 1124671) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3374014) = 1769472 * k + 1687007 := by
    unfold C
    simp [show (3538944 * k + 3374014) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1687007) = 5308416 * k + 5061022 := by
    unfold C
    simp [show (1769472 * k + 1687007) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5061022) = 2654208 * k + 2530511 := by
    unfold C
    simp [show (5308416 * k + 5061022) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2530511) = 7962624 * k + 7591534 := by
    unfold C
    simp [show (2654208 * k + 2530511) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7591534) = 3981312 * k + 3795767 := by
    unfold C
    simp [show (7962624 * k + 7591534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3795767) = 11943936 * k + 11387302 := by
    unfold C
    simp [show (3981312 * k + 3795767) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11387302) = 5971968 * k + 5693651 := by
    unfold C
    simp [show (11943936 * k + 11387302) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5693651) = 17915904 * k + 17080954 := by
    unfold C
    simp [show (5971968 * k + 5693651) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17080954) = 8957952 * k + 8540477 := by
    unfold C
    simp [show (17915904 * k + 17080954) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8540477) = 26873856 * k + 25621432 := by
    unfold C
    simp [show (8957952 * k + 8540477) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25621432) = 13436928 * k + 12810716 := by
    unfold C
    simp [show (26873856 * k + 25621432) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12810716) = 6718464 * k + 6405358 := by
    unfold C
    simp [show (13436928 * k + 12810716) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6405358) = 3359232 * k + 3202679 := by
    unfold C
    simp [show (6718464 * k + 6405358) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3202679) = 10077696 * k + 9608038 := by
    unfold C
    simp [show (3359232 * k + 3202679) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9608038) = 5038848 * k + 4804019 := by
    unfold C
    simp [show (10077696 * k + 9608038) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4804019) = 15116544 * k + 14412058 := by
    unfold C
    simp [show (5038848 * k + 4804019) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14412058) = 7558272 * k + 7206029 := by
    unfold C
    simp [show (15116544 * k + 14412058) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7206029) = 22674816 * k + 21618088 := by
    unfold C
    simp [show (7558272 * k + 7206029) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21618088) = 11337408 * k + 10809044 := by
    unfold C
    simp [show (22674816 * k + 21618088) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10809044) = 5668704 * k + 5404522 := by
    unfold C
    simp [show (11337408 * k + 10809044) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5404522) = 2834352 * k + 2702261 := by
    unfold C
    simp [show (5668704 * k + 5404522) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2702261) = 8503056 * k + 8106784 := by
    unfold C
    simp [show (2834352 * k + 2702261) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8106784) = 4251528 * k + 4053392 := by
    unfold C
    simp [show (8503056 * k + 8106784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4053392) = 2125764 * k + 2026696 := by
    unfold C
    simp [show (4251528 * k + 4053392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2026696) = 1062882 * k + 1013348 := by
    unfold C
    simp [show (2125764 * k + 2026696) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1013348) = 531441 * k + 506674 := by
    unfold C
    simp [show (1062882 * k + 1013348) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 999707) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 999707)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_999839 : ∀ k : Nat,
    iterate (1048576 * k + 999839) 32 = 531441 * k + 506741 ∧
      531441 * k + 506741 < 1048576 * k + 999839 := by
  intro k
  have h1 : C (1048576 * k + 999839) = 3145728 * k + 2999518 := by
    unfold C
    simp [show (1048576 * k + 999839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2999518) = 1572864 * k + 1499759 := by
    unfold C
    simp [show (3145728 * k + 2999518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1499759) = 4718592 * k + 4499278 := by
    unfold C
    simp [show (1572864 * k + 1499759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4499278) = 2359296 * k + 2249639 := by
    unfold C
    simp [show (4718592 * k + 4499278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2249639) = 7077888 * k + 6748918 := by
    unfold C
    simp [show (2359296 * k + 2249639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6748918) = 3538944 * k + 3374459 := by
    unfold C
    simp [show (7077888 * k + 6748918) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3374459) = 10616832 * k + 10123378 := by
    unfold C
    simp [show (3538944 * k + 3374459) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10123378) = 5308416 * k + 5061689 := by
    unfold C
    simp [show (10616832 * k + 10123378) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5061689) = 15925248 * k + 15185068 := by
    unfold C
    simp [show (5308416 * k + 5061689) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15185068) = 7962624 * k + 7592534 := by
    unfold C
    simp [show (15925248 * k + 15185068) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7592534) = 3981312 * k + 3796267 := by
    unfold C
    simp [show (7962624 * k + 7592534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3796267) = 11943936 * k + 11388802 := by
    unfold C
    simp [show (3981312 * k + 3796267) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11388802) = 5971968 * k + 5694401 := by
    unfold C
    simp [show (11943936 * k + 11388802) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5694401) = 17915904 * k + 17083204 := by
    unfold C
    simp [show (5971968 * k + 5694401) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17083204) = 8957952 * k + 8541602 := by
    unfold C
    simp [show (17915904 * k + 17083204) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8541602) = 4478976 * k + 4270801 := by
    unfold C
    simp [show (8957952 * k + 8541602) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4270801) = 13436928 * k + 12812404 := by
    unfold C
    simp [show (4478976 * k + 4270801) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12812404) = 6718464 * k + 6406202 := by
    unfold C
    simp [show (13436928 * k + 12812404) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6406202) = 3359232 * k + 3203101 := by
    unfold C
    simp [show (6718464 * k + 6406202) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3203101) = 10077696 * k + 9609304 := by
    unfold C
    simp [show (3359232 * k + 3203101) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9609304) = 5038848 * k + 4804652 := by
    unfold C
    simp [show (10077696 * k + 9609304) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4804652) = 2519424 * k + 2402326 := by
    unfold C
    simp [show (5038848 * k + 4804652) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2402326) = 1259712 * k + 1201163 := by
    unfold C
    simp [show (2519424 * k + 2402326) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1201163) = 3779136 * k + 3603490 := by
    unfold C
    simp [show (1259712 * k + 1201163) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3603490) = 1889568 * k + 1801745 := by
    unfold C
    simp [show (3779136 * k + 3603490) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1801745) = 5668704 * k + 5405236 := by
    unfold C
    simp [show (1889568 * k + 1801745) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5405236) = 2834352 * k + 2702618 := by
    unfold C
    simp [show (5668704 * k + 5405236) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2702618) = 1417176 * k + 1351309 := by
    unfold C
    simp [show (2834352 * k + 2702618) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1351309) = 4251528 * k + 4053928 := by
    unfold C
    simp [show (1417176 * k + 1351309) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4053928) = 2125764 * k + 2026964 := by
    unfold C
    simp [show (4251528 * k + 4053928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2026964) = 1062882 * k + 1013482 := by
    unfold C
    simp [show (2125764 * k + 2026964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1013482) = 531441 * k + 506741 := by
    unfold C
    simp [show (1062882 * k + 1013482) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 999839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 999839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1000319 : ∀ k : Nat,
    iterate (1048576 * k + 1000319) 32 = 531441 * k + 506984 ∧
      531441 * k + 506984 < 1048576 * k + 1000319 := by
  intro k
  have h1 : C (1048576 * k + 1000319) = 3145728 * k + 3000958 := by
    unfold C
    simp [show (1048576 * k + 1000319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3000958) = 1572864 * k + 1500479 := by
    unfold C
    simp [show (3145728 * k + 3000958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1500479) = 4718592 * k + 4501438 := by
    unfold C
    simp [show (1572864 * k + 1500479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4501438) = 2359296 * k + 2250719 := by
    unfold C
    simp [show (4718592 * k + 4501438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2250719) = 7077888 * k + 6752158 := by
    unfold C
    simp [show (2359296 * k + 2250719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6752158) = 3538944 * k + 3376079 := by
    unfold C
    simp [show (7077888 * k + 6752158) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3376079) = 10616832 * k + 10128238 := by
    unfold C
    simp [show (3538944 * k + 3376079) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10128238) = 5308416 * k + 5064119 := by
    unfold C
    simp [show (10616832 * k + 10128238) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5064119) = 15925248 * k + 15192358 := by
    unfold C
    simp [show (5308416 * k + 5064119) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15192358) = 7962624 * k + 7596179 := by
    unfold C
    simp [show (15925248 * k + 15192358) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7596179) = 23887872 * k + 22788538 := by
    unfold C
    simp [show (7962624 * k + 7596179) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22788538) = 11943936 * k + 11394269 := by
    unfold C
    simp [show (23887872 * k + 22788538) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11394269) = 35831808 * k + 34182808 := by
    unfold C
    simp [show (11943936 * k + 11394269) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34182808) = 17915904 * k + 17091404 := by
    unfold C
    simp [show (35831808 * k + 34182808) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17091404) = 8957952 * k + 8545702 := by
    unfold C
    simp [show (17915904 * k + 17091404) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8545702) = 4478976 * k + 4272851 := by
    unfold C
    simp [show (8957952 * k + 8545702) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4272851) = 13436928 * k + 12818554 := by
    unfold C
    simp [show (4478976 * k + 4272851) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12818554) = 6718464 * k + 6409277 := by
    unfold C
    simp [show (13436928 * k + 12818554) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6409277) = 20155392 * k + 19227832 := by
    unfold C
    simp [show (6718464 * k + 6409277) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19227832) = 10077696 * k + 9613916 := by
    unfold C
    simp [show (20155392 * k + 19227832) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9613916) = 5038848 * k + 4806958 := by
    unfold C
    simp [show (10077696 * k + 9613916) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4806958) = 2519424 * k + 2403479 := by
    unfold C
    simp [show (5038848 * k + 4806958) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2403479) = 7558272 * k + 7210438 := by
    unfold C
    simp [show (2519424 * k + 2403479) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7210438) = 3779136 * k + 3605219 := by
    unfold C
    simp [show (7558272 * k + 7210438) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3605219) = 11337408 * k + 10815658 := by
    unfold C
    simp [show (3779136 * k + 3605219) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10815658) = 5668704 * k + 5407829 := by
    unfold C
    simp [show (11337408 * k + 10815658) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5407829) = 17006112 * k + 16223488 := by
    unfold C
    simp [show (5668704 * k + 5407829) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16223488) = 8503056 * k + 8111744 := by
    unfold C
    simp [show (17006112 * k + 16223488) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8111744) = 4251528 * k + 4055872 := by
    unfold C
    simp [show (8503056 * k + 8111744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4055872) = 2125764 * k + 2027936 := by
    unfold C
    simp [show (4251528 * k + 4055872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2027936) = 1062882 * k + 1013968 := by
    unfold C
    simp [show (2125764 * k + 2027936) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1013968) = 531441 * k + 506984 := by
    unfold C
    simp [show (1062882 * k + 1013968) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1000319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1000319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1000607 : ∀ k : Nat,
    iterate (1048576 * k + 1000607) 32 = 531441 * k + 507130 ∧
      531441 * k + 507130 < 1048576 * k + 1000607 := by
  intro k
  have h1 : C (1048576 * k + 1000607) = 3145728 * k + 3001822 := by
    unfold C
    simp [show (1048576 * k + 1000607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3001822) = 1572864 * k + 1500911 := by
    unfold C
    simp [show (3145728 * k + 3001822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1500911) = 4718592 * k + 4502734 := by
    unfold C
    simp [show (1572864 * k + 1500911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4502734) = 2359296 * k + 2251367 := by
    unfold C
    simp [show (4718592 * k + 4502734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2251367) = 7077888 * k + 6754102 := by
    unfold C
    simp [show (2359296 * k + 2251367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6754102) = 3538944 * k + 3377051 := by
    unfold C
    simp [show (7077888 * k + 6754102) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3377051) = 10616832 * k + 10131154 := by
    unfold C
    simp [show (3538944 * k + 3377051) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10131154) = 5308416 * k + 5065577 := by
    unfold C
    simp [show (10616832 * k + 10131154) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5065577) = 15925248 * k + 15196732 := by
    unfold C
    simp [show (5308416 * k + 5065577) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15196732) = 7962624 * k + 7598366 := by
    unfold C
    simp [show (15925248 * k + 15196732) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7598366) = 3981312 * k + 3799183 := by
    unfold C
    simp [show (7962624 * k + 7598366) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3799183) = 11943936 * k + 11397550 := by
    unfold C
    simp [show (3981312 * k + 3799183) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11397550) = 5971968 * k + 5698775 := by
    unfold C
    simp [show (11943936 * k + 11397550) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5698775) = 17915904 * k + 17096326 := by
    unfold C
    simp [show (5971968 * k + 5698775) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17096326) = 8957952 * k + 8548163 := by
    unfold C
    simp [show (17915904 * k + 17096326) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8548163) = 26873856 * k + 25644490 := by
    unfold C
    simp [show (8957952 * k + 8548163) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25644490) = 13436928 * k + 12822245 := by
    unfold C
    simp [show (26873856 * k + 25644490) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12822245) = 40310784 * k + 38466736 := by
    unfold C
    simp [show (13436928 * k + 12822245) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38466736) = 20155392 * k + 19233368 := by
    unfold C
    simp [show (40310784 * k + 38466736) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19233368) = 10077696 * k + 9616684 := by
    unfold C
    simp [show (20155392 * k + 19233368) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9616684) = 5038848 * k + 4808342 := by
    unfold C
    simp [show (10077696 * k + 9616684) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4808342) = 2519424 * k + 2404171 := by
    unfold C
    simp [show (5038848 * k + 4808342) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2404171) = 7558272 * k + 7212514 := by
    unfold C
    simp [show (2519424 * k + 2404171) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7212514) = 3779136 * k + 3606257 := by
    unfold C
    simp [show (7558272 * k + 7212514) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3606257) = 11337408 * k + 10818772 := by
    unfold C
    simp [show (3779136 * k + 3606257) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10818772) = 5668704 * k + 5409386 := by
    unfold C
    simp [show (11337408 * k + 10818772) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5409386) = 2834352 * k + 2704693 := by
    unfold C
    simp [show (5668704 * k + 5409386) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2704693) = 8503056 * k + 8114080 := by
    unfold C
    simp [show (2834352 * k + 2704693) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8114080) = 4251528 * k + 4057040 := by
    unfold C
    simp [show (8503056 * k + 8114080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4057040) = 2125764 * k + 2028520 := by
    unfold C
    simp [show (4251528 * k + 4057040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2028520) = 1062882 * k + 1014260 := by
    unfold C
    simp [show (2125764 * k + 2028520) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1014260) = 531441 * k + 507130 := by
    unfold C
    simp [show (1062882 * k + 1014260) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1000607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1000607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1001543 : ∀ k : Nat,
    iterate (1048576 * k + 1001543) 32 = 531441 * k + 507605 ∧
      531441 * k + 507605 < 1048576 * k + 1001543 := by
  intro k
  have h1 : C (1048576 * k + 1001543) = 3145728 * k + 3004630 := by
    unfold C
    simp [show (1048576 * k + 1001543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3004630) = 1572864 * k + 1502315 := by
    unfold C
    simp [show (3145728 * k + 3004630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1502315) = 4718592 * k + 4506946 := by
    unfold C
    simp [show (1572864 * k + 1502315) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4506946) = 2359296 * k + 2253473 := by
    unfold C
    simp [show (4718592 * k + 4506946) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2253473) = 7077888 * k + 6760420 := by
    unfold C
    simp [show (2359296 * k + 2253473) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6760420) = 3538944 * k + 3380210 := by
    unfold C
    simp [show (7077888 * k + 6760420) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3380210) = 1769472 * k + 1690105 := by
    unfold C
    simp [show (3538944 * k + 3380210) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1690105) = 5308416 * k + 5070316 := by
    unfold C
    simp [show (1769472 * k + 1690105) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5070316) = 2654208 * k + 2535158 := by
    unfold C
    simp [show (5308416 * k + 5070316) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2535158) = 1327104 * k + 1267579 := by
    unfold C
    simp [show (2654208 * k + 2535158) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1267579) = 3981312 * k + 3802738 := by
    unfold C
    simp [show (1327104 * k + 1267579) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3802738) = 1990656 * k + 1901369 := by
    unfold C
    simp [show (3981312 * k + 3802738) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1901369) = 5971968 * k + 5704108 := by
    unfold C
    simp [show (1990656 * k + 1901369) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5704108) = 2985984 * k + 2852054 := by
    unfold C
    simp [show (5971968 * k + 5704108) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2852054) = 1492992 * k + 1426027 := by
    unfold C
    simp [show (2985984 * k + 2852054) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1426027) = 4478976 * k + 4278082 := by
    unfold C
    simp [show (1492992 * k + 1426027) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4278082) = 2239488 * k + 2139041 := by
    unfold C
    simp [show (4478976 * k + 4278082) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2139041) = 6718464 * k + 6417124 := by
    unfold C
    simp [show (2239488 * k + 2139041) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6417124) = 3359232 * k + 3208562 := by
    unfold C
    simp [show (6718464 * k + 6417124) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3208562) = 1679616 * k + 1604281 := by
    unfold C
    simp [show (3359232 * k + 3208562) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1604281) = 5038848 * k + 4812844 := by
    unfold C
    simp [show (1679616 * k + 1604281) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4812844) = 2519424 * k + 2406422 := by
    unfold C
    simp [show (5038848 * k + 4812844) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2406422) = 1259712 * k + 1203211 := by
    unfold C
    simp [show (2519424 * k + 2406422) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1203211) = 3779136 * k + 3609634 := by
    unfold C
    simp [show (1259712 * k + 1203211) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3609634) = 1889568 * k + 1804817 := by
    unfold C
    simp [show (3779136 * k + 3609634) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1804817) = 5668704 * k + 5414452 := by
    unfold C
    simp [show (1889568 * k + 1804817) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5414452) = 2834352 * k + 2707226 := by
    unfold C
    simp [show (5668704 * k + 5414452) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2707226) = 1417176 * k + 1353613 := by
    unfold C
    simp [show (2834352 * k + 2707226) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1353613) = 4251528 * k + 4060840 := by
    unfold C
    simp [show (1417176 * k + 1353613) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4060840) = 2125764 * k + 2030420 := by
    unfold C
    simp [show (4251528 * k + 4060840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2030420) = 1062882 * k + 1015210 := by
    unfold C
    simp [show (2125764 * k + 2030420) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1015210) = 531441 * k + 507605 := by
    unfold C
    simp [show (1062882 * k + 1015210) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1001543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1001543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1001703 : ∀ k : Nat,
    iterate (1048576 * k + 1001703) 32 = 531441 * k + 507686 ∧
      531441 * k + 507686 < 1048576 * k + 1001703 := by
  intro k
  have h1 : C (1048576 * k + 1001703) = 3145728 * k + 3005110 := by
    unfold C
    simp [show (1048576 * k + 1001703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3005110) = 1572864 * k + 1502555 := by
    unfold C
    simp [show (3145728 * k + 3005110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1502555) = 4718592 * k + 4507666 := by
    unfold C
    simp [show (1572864 * k + 1502555) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4507666) = 2359296 * k + 2253833 := by
    unfold C
    simp [show (4718592 * k + 4507666) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2253833) = 7077888 * k + 6761500 := by
    unfold C
    simp [show (2359296 * k + 2253833) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6761500) = 3538944 * k + 3380750 := by
    unfold C
    simp [show (7077888 * k + 6761500) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3380750) = 1769472 * k + 1690375 := by
    unfold C
    simp [show (3538944 * k + 3380750) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1690375) = 5308416 * k + 5071126 := by
    unfold C
    simp [show (1769472 * k + 1690375) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5071126) = 2654208 * k + 2535563 := by
    unfold C
    simp [show (5308416 * k + 5071126) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2535563) = 7962624 * k + 7606690 := by
    unfold C
    simp [show (2654208 * k + 2535563) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7606690) = 3981312 * k + 3803345 := by
    unfold C
    simp [show (7962624 * k + 7606690) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3803345) = 11943936 * k + 11410036 := by
    unfold C
    simp [show (3981312 * k + 3803345) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11410036) = 5971968 * k + 5705018 := by
    unfold C
    simp [show (11943936 * k + 11410036) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5705018) = 2985984 * k + 2852509 := by
    unfold C
    simp [show (5971968 * k + 5705018) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2852509) = 8957952 * k + 8557528 := by
    unfold C
    simp [show (2985984 * k + 2852509) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8557528) = 4478976 * k + 4278764 := by
    unfold C
    simp [show (8957952 * k + 8557528) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4278764) = 2239488 * k + 2139382 := by
    unfold C
    simp [show (4478976 * k + 4278764) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2139382) = 1119744 * k + 1069691 := by
    unfold C
    simp [show (2239488 * k + 2139382) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1069691) = 3359232 * k + 3209074 := by
    unfold C
    simp [show (1119744 * k + 1069691) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3209074) = 1679616 * k + 1604537 := by
    unfold C
    simp [show (3359232 * k + 3209074) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1604537) = 5038848 * k + 4813612 := by
    unfold C
    simp [show (1679616 * k + 1604537) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4813612) = 2519424 * k + 2406806 := by
    unfold C
    simp [show (5038848 * k + 4813612) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2406806) = 1259712 * k + 1203403 := by
    unfold C
    simp [show (2519424 * k + 2406806) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1203403) = 3779136 * k + 3610210 := by
    unfold C
    simp [show (1259712 * k + 1203403) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3610210) = 1889568 * k + 1805105 := by
    unfold C
    simp [show (3779136 * k + 3610210) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1805105) = 5668704 * k + 5415316 := by
    unfold C
    simp [show (1889568 * k + 1805105) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5415316) = 2834352 * k + 2707658 := by
    unfold C
    simp [show (5668704 * k + 5415316) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2707658) = 1417176 * k + 1353829 := by
    unfold C
    simp [show (2834352 * k + 2707658) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1353829) = 4251528 * k + 4061488 := by
    unfold C
    simp [show (1417176 * k + 1353829) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4061488) = 2125764 * k + 2030744 := by
    unfold C
    simp [show (4251528 * k + 4061488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2030744) = 1062882 * k + 1015372 := by
    unfold C
    simp [show (2125764 * k + 2030744) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1015372) = 531441 * k + 507686 := by
    unfold C
    simp [show (1062882 * k + 1015372) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1001703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1001703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1002311 : ∀ k : Nat,
    iterate (1048576 * k + 1002311) 32 = 531441 * k + 507994 ∧
      531441 * k + 507994 < 1048576 * k + 1002311 := by
  intro k
  have h1 : C (1048576 * k + 1002311) = 3145728 * k + 3006934 := by
    unfold C
    simp [show (1048576 * k + 1002311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3006934) = 1572864 * k + 1503467 := by
    unfold C
    simp [show (3145728 * k + 3006934) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1503467) = 4718592 * k + 4510402 := by
    unfold C
    simp [show (1572864 * k + 1503467) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4510402) = 2359296 * k + 2255201 := by
    unfold C
    simp [show (4718592 * k + 4510402) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2255201) = 7077888 * k + 6765604 := by
    unfold C
    simp [show (2359296 * k + 2255201) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6765604) = 3538944 * k + 3382802 := by
    unfold C
    simp [show (7077888 * k + 6765604) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3382802) = 1769472 * k + 1691401 := by
    unfold C
    simp [show (3538944 * k + 3382802) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1691401) = 5308416 * k + 5074204 := by
    unfold C
    simp [show (1769472 * k + 1691401) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5074204) = 2654208 * k + 2537102 := by
    unfold C
    simp [show (5308416 * k + 5074204) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2537102) = 1327104 * k + 1268551 := by
    unfold C
    simp [show (2654208 * k + 2537102) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1268551) = 3981312 * k + 3805654 := by
    unfold C
    simp [show (1327104 * k + 1268551) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3805654) = 1990656 * k + 1902827 := by
    unfold C
    simp [show (3981312 * k + 3805654) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1902827) = 5971968 * k + 5708482 := by
    unfold C
    simp [show (1990656 * k + 1902827) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5708482) = 2985984 * k + 2854241 := by
    unfold C
    simp [show (5971968 * k + 5708482) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2854241) = 8957952 * k + 8562724 := by
    unfold C
    simp [show (2985984 * k + 2854241) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8562724) = 4478976 * k + 4281362 := by
    unfold C
    simp [show (8957952 * k + 8562724) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4281362) = 2239488 * k + 2140681 := by
    unfold C
    simp [show (4478976 * k + 4281362) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2140681) = 6718464 * k + 6422044 := by
    unfold C
    simp [show (2239488 * k + 2140681) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6422044) = 3359232 * k + 3211022 := by
    unfold C
    simp [show (6718464 * k + 6422044) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3211022) = 1679616 * k + 1605511 := by
    unfold C
    simp [show (3359232 * k + 3211022) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1605511) = 5038848 * k + 4816534 := by
    unfold C
    simp [show (1679616 * k + 1605511) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4816534) = 2519424 * k + 2408267 := by
    unfold C
    simp [show (5038848 * k + 4816534) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2408267) = 7558272 * k + 7224802 := by
    unfold C
    simp [show (2519424 * k + 2408267) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7224802) = 3779136 * k + 3612401 := by
    unfold C
    simp [show (7558272 * k + 7224802) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3612401) = 11337408 * k + 10837204 := by
    unfold C
    simp [show (3779136 * k + 3612401) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10837204) = 5668704 * k + 5418602 := by
    unfold C
    simp [show (11337408 * k + 10837204) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5418602) = 2834352 * k + 2709301 := by
    unfold C
    simp [show (5668704 * k + 5418602) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2709301) = 8503056 * k + 8127904 := by
    unfold C
    simp [show (2834352 * k + 2709301) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8127904) = 4251528 * k + 4063952 := by
    unfold C
    simp [show (8503056 * k + 8127904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4063952) = 2125764 * k + 2031976 := by
    unfold C
    simp [show (4251528 * k + 4063952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2031976) = 1062882 * k + 1015988 := by
    unfold C
    simp [show (2125764 * k + 2031976) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1015988) = 531441 * k + 507994 := by
    unfold C
    simp [show (1062882 * k + 1015988) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1002311) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1002311)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1002343 : ∀ k : Nat,
    iterate (1048576 * k + 1002343) 32 = 531441 * k + 508010 ∧
      531441 * k + 508010 < 1048576 * k + 1002343 := by
  intro k
  have h1 : C (1048576 * k + 1002343) = 3145728 * k + 3007030 := by
    unfold C
    simp [show (1048576 * k + 1002343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3007030) = 1572864 * k + 1503515 := by
    unfold C
    simp [show (3145728 * k + 3007030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1503515) = 4718592 * k + 4510546 := by
    unfold C
    simp [show (1572864 * k + 1503515) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4510546) = 2359296 * k + 2255273 := by
    unfold C
    simp [show (4718592 * k + 4510546) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2255273) = 7077888 * k + 6765820 := by
    unfold C
    simp [show (2359296 * k + 2255273) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6765820) = 3538944 * k + 3382910 := by
    unfold C
    simp [show (7077888 * k + 6765820) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3382910) = 1769472 * k + 1691455 := by
    unfold C
    simp [show (3538944 * k + 3382910) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1691455) = 5308416 * k + 5074366 := by
    unfold C
    simp [show (1769472 * k + 1691455) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5074366) = 2654208 * k + 2537183 := by
    unfold C
    simp [show (5308416 * k + 5074366) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2537183) = 7962624 * k + 7611550 := by
    unfold C
    simp [show (2654208 * k + 2537183) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7611550) = 3981312 * k + 3805775 := by
    unfold C
    simp [show (7962624 * k + 7611550) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3805775) = 11943936 * k + 11417326 := by
    unfold C
    simp [show (3981312 * k + 3805775) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11417326) = 5971968 * k + 5708663 := by
    unfold C
    simp [show (11943936 * k + 11417326) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5708663) = 17915904 * k + 17125990 := by
    unfold C
    simp [show (5971968 * k + 5708663) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17125990) = 8957952 * k + 8562995 := by
    unfold C
    simp [show (17915904 * k + 17125990) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8562995) = 26873856 * k + 25688986 := by
    unfold C
    simp [show (8957952 * k + 8562995) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25688986) = 13436928 * k + 12844493 := by
    unfold C
    simp [show (26873856 * k + 25688986) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12844493) = 40310784 * k + 38533480 := by
    unfold C
    simp [show (13436928 * k + 12844493) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38533480) = 20155392 * k + 19266740 := by
    unfold C
    simp [show (40310784 * k + 38533480) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19266740) = 10077696 * k + 9633370 := by
    unfold C
    simp [show (20155392 * k + 19266740) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9633370) = 5038848 * k + 4816685 := by
    unfold C
    simp [show (10077696 * k + 9633370) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4816685) = 15116544 * k + 14450056 := by
    unfold C
    simp [show (5038848 * k + 4816685) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14450056) = 7558272 * k + 7225028 := by
    unfold C
    simp [show (15116544 * k + 14450056) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7225028) = 3779136 * k + 3612514 := by
    unfold C
    simp [show (7558272 * k + 7225028) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3612514) = 1889568 * k + 1806257 := by
    unfold C
    simp [show (3779136 * k + 3612514) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1806257) = 5668704 * k + 5418772 := by
    unfold C
    simp [show (1889568 * k + 1806257) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5418772) = 2834352 * k + 2709386 := by
    unfold C
    simp [show (5668704 * k + 5418772) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2709386) = 1417176 * k + 1354693 := by
    unfold C
    simp [show (2834352 * k + 2709386) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1354693) = 4251528 * k + 4064080 := by
    unfold C
    simp [show (1417176 * k + 1354693) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4064080) = 2125764 * k + 2032040 := by
    unfold C
    simp [show (4251528 * k + 4064080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2032040) = 1062882 * k + 1016020 := by
    unfold C
    simp [show (2125764 * k + 2032040) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1016020) = 531441 * k + 508010 := by
    unfold C
    simp [show (1062882 * k + 1016020) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1002343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1002343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1002779 : ∀ k : Nat,
    iterate (1048576 * k + 1002779) 32 = 531441 * k + 508231 ∧
      531441 * k + 508231 < 1048576 * k + 1002779 := by
  intro k
  have h1 : C (1048576 * k + 1002779) = 3145728 * k + 3008338 := by
    unfold C
    simp [show (1048576 * k + 1002779) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3008338) = 1572864 * k + 1504169 := by
    unfold C
    simp [show (3145728 * k + 3008338) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1504169) = 4718592 * k + 4512508 := by
    unfold C
    simp [show (1572864 * k + 1504169) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4512508) = 2359296 * k + 2256254 := by
    unfold C
    simp [show (4718592 * k + 4512508) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2256254) = 1179648 * k + 1128127 := by
    unfold C
    simp [show (2359296 * k + 2256254) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1128127) = 3538944 * k + 3384382 := by
    unfold C
    simp [show (1179648 * k + 1128127) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3384382) = 1769472 * k + 1692191 := by
    unfold C
    simp [show (3538944 * k + 3384382) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1692191) = 5308416 * k + 5076574 := by
    unfold C
    simp [show (1769472 * k + 1692191) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5076574) = 2654208 * k + 2538287 := by
    unfold C
    simp [show (5308416 * k + 5076574) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2538287) = 7962624 * k + 7614862 := by
    unfold C
    simp [show (2654208 * k + 2538287) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7614862) = 3981312 * k + 3807431 := by
    unfold C
    simp [show (7962624 * k + 7614862) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3807431) = 11943936 * k + 11422294 := by
    unfold C
    simp [show (3981312 * k + 3807431) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11422294) = 5971968 * k + 5711147 := by
    unfold C
    simp [show (11943936 * k + 11422294) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5711147) = 17915904 * k + 17133442 := by
    unfold C
    simp [show (5971968 * k + 5711147) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17133442) = 8957952 * k + 8566721 := by
    unfold C
    simp [show (17915904 * k + 17133442) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8566721) = 26873856 * k + 25700164 := by
    unfold C
    simp [show (8957952 * k + 8566721) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25700164) = 13436928 * k + 12850082 := by
    unfold C
    simp [show (26873856 * k + 25700164) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12850082) = 6718464 * k + 6425041 := by
    unfold C
    simp [show (13436928 * k + 12850082) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6425041) = 20155392 * k + 19275124 := by
    unfold C
    simp [show (6718464 * k + 6425041) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19275124) = 10077696 * k + 9637562 := by
    unfold C
    simp [show (20155392 * k + 19275124) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9637562) = 5038848 * k + 4818781 := by
    unfold C
    simp [show (10077696 * k + 9637562) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4818781) = 15116544 * k + 14456344 := by
    unfold C
    simp [show (5038848 * k + 4818781) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14456344) = 7558272 * k + 7228172 := by
    unfold C
    simp [show (15116544 * k + 14456344) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7228172) = 3779136 * k + 3614086 := by
    unfold C
    simp [show (7558272 * k + 7228172) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3614086) = 1889568 * k + 1807043 := by
    unfold C
    simp [show (3779136 * k + 3614086) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1807043) = 5668704 * k + 5421130 := by
    unfold C
    simp [show (1889568 * k + 1807043) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5421130) = 2834352 * k + 2710565 := by
    unfold C
    simp [show (5668704 * k + 5421130) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2710565) = 8503056 * k + 8131696 := by
    unfold C
    simp [show (2834352 * k + 2710565) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8131696) = 4251528 * k + 4065848 := by
    unfold C
    simp [show (8503056 * k + 8131696) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4065848) = 2125764 * k + 2032924 := by
    unfold C
    simp [show (4251528 * k + 4065848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2032924) = 1062882 * k + 1016462 := by
    unfold C
    simp [show (2125764 * k + 2032924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1016462) = 531441 * k + 508231 := by
    unfold C
    simp [show (1062882 * k + 1016462) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1002779) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1002779)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1003035 : ∀ k : Nat,
    iterate (1048576 * k + 1003035) 32 = 531441 * k + 508361 ∧
      531441 * k + 508361 < 1048576 * k + 1003035 := by
  intro k
  have h1 : C (1048576 * k + 1003035) = 3145728 * k + 3009106 := by
    unfold C
    simp [show (1048576 * k + 1003035) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3009106) = 1572864 * k + 1504553 := by
    unfold C
    simp [show (3145728 * k + 3009106) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1504553) = 4718592 * k + 4513660 := by
    unfold C
    simp [show (1572864 * k + 1504553) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4513660) = 2359296 * k + 2256830 := by
    unfold C
    simp [show (4718592 * k + 4513660) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2256830) = 1179648 * k + 1128415 := by
    unfold C
    simp [show (2359296 * k + 2256830) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1128415) = 3538944 * k + 3385246 := by
    unfold C
    simp [show (1179648 * k + 1128415) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3385246) = 1769472 * k + 1692623 := by
    unfold C
    simp [show (3538944 * k + 3385246) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1692623) = 5308416 * k + 5077870 := by
    unfold C
    simp [show (1769472 * k + 1692623) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5077870) = 2654208 * k + 2538935 := by
    unfold C
    simp [show (5308416 * k + 5077870) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2538935) = 7962624 * k + 7616806 := by
    unfold C
    simp [show (2654208 * k + 2538935) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7616806) = 3981312 * k + 3808403 := by
    unfold C
    simp [show (7962624 * k + 7616806) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3808403) = 11943936 * k + 11425210 := by
    unfold C
    simp [show (3981312 * k + 3808403) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11425210) = 5971968 * k + 5712605 := by
    unfold C
    simp [show (11943936 * k + 11425210) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5712605) = 17915904 * k + 17137816 := by
    unfold C
    simp [show (5971968 * k + 5712605) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17137816) = 8957952 * k + 8568908 := by
    unfold C
    simp [show (17915904 * k + 17137816) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8568908) = 4478976 * k + 4284454 := by
    unfold C
    simp [show (8957952 * k + 8568908) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4284454) = 2239488 * k + 2142227 := by
    unfold C
    simp [show (4478976 * k + 4284454) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2142227) = 6718464 * k + 6426682 := by
    unfold C
    simp [show (2239488 * k + 2142227) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6426682) = 3359232 * k + 3213341 := by
    unfold C
    simp [show (6718464 * k + 6426682) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3213341) = 10077696 * k + 9640024 := by
    unfold C
    simp [show (3359232 * k + 3213341) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9640024) = 5038848 * k + 4820012 := by
    unfold C
    simp [show (10077696 * k + 9640024) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4820012) = 2519424 * k + 2410006 := by
    unfold C
    simp [show (5038848 * k + 4820012) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2410006) = 1259712 * k + 1205003 := by
    unfold C
    simp [show (2519424 * k + 2410006) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1205003) = 3779136 * k + 3615010 := by
    unfold C
    simp [show (1259712 * k + 1205003) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3615010) = 1889568 * k + 1807505 := by
    unfold C
    simp [show (3779136 * k + 3615010) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1807505) = 5668704 * k + 5422516 := by
    unfold C
    simp [show (1889568 * k + 1807505) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5422516) = 2834352 * k + 2711258 := by
    unfold C
    simp [show (5668704 * k + 5422516) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2711258) = 1417176 * k + 1355629 := by
    unfold C
    simp [show (2834352 * k + 2711258) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1355629) = 4251528 * k + 4066888 := by
    unfold C
    simp [show (1417176 * k + 1355629) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4066888) = 2125764 * k + 2033444 := by
    unfold C
    simp [show (4251528 * k + 4066888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2033444) = 1062882 * k + 1016722 := by
    unfold C
    simp [show (2125764 * k + 2033444) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1016722) = 531441 * k + 508361 := by
    unfold C
    simp [show (1062882 * k + 1016722) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1003035) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1003035)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1003803 : ∀ k : Nat,
    iterate (1048576 * k + 1003803) 32 = 531441 * k + 508750 ∧
      531441 * k + 508750 < 1048576 * k + 1003803 := by
  intro k
  have h1 : C (1048576 * k + 1003803) = 3145728 * k + 3011410 := by
    unfold C
    simp [show (1048576 * k + 1003803) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3011410) = 1572864 * k + 1505705 := by
    unfold C
    simp [show (3145728 * k + 3011410) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1505705) = 4718592 * k + 4517116 := by
    unfold C
    simp [show (1572864 * k + 1505705) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4517116) = 2359296 * k + 2258558 := by
    unfold C
    simp [show (4718592 * k + 4517116) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2258558) = 1179648 * k + 1129279 := by
    unfold C
    simp [show (2359296 * k + 2258558) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1129279) = 3538944 * k + 3387838 := by
    unfold C
    simp [show (1179648 * k + 1129279) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3387838) = 1769472 * k + 1693919 := by
    unfold C
    simp [show (3538944 * k + 3387838) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1693919) = 5308416 * k + 5081758 := by
    unfold C
    simp [show (1769472 * k + 1693919) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5081758) = 2654208 * k + 2540879 := by
    unfold C
    simp [show (5308416 * k + 5081758) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2540879) = 7962624 * k + 7622638 := by
    unfold C
    simp [show (2654208 * k + 2540879) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7622638) = 3981312 * k + 3811319 := by
    unfold C
    simp [show (7962624 * k + 7622638) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3811319) = 11943936 * k + 11433958 := by
    unfold C
    simp [show (3981312 * k + 3811319) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11433958) = 5971968 * k + 5716979 := by
    unfold C
    simp [show (11943936 * k + 11433958) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5716979) = 17915904 * k + 17150938 := by
    unfold C
    simp [show (5971968 * k + 5716979) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17150938) = 8957952 * k + 8575469 := by
    unfold C
    simp [show (17915904 * k + 17150938) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8575469) = 26873856 * k + 25726408 := by
    unfold C
    simp [show (8957952 * k + 8575469) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25726408) = 13436928 * k + 12863204 := by
    unfold C
    simp [show (26873856 * k + 25726408) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12863204) = 6718464 * k + 6431602 := by
    unfold C
    simp [show (13436928 * k + 12863204) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6431602) = 3359232 * k + 3215801 := by
    unfold C
    simp [show (6718464 * k + 6431602) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3215801) = 10077696 * k + 9647404 := by
    unfold C
    simp [show (3359232 * k + 3215801) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9647404) = 5038848 * k + 4823702 := by
    unfold C
    simp [show (10077696 * k + 9647404) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4823702) = 2519424 * k + 2411851 := by
    unfold C
    simp [show (5038848 * k + 4823702) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2411851) = 7558272 * k + 7235554 := by
    unfold C
    simp [show (2519424 * k + 2411851) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7235554) = 3779136 * k + 3617777 := by
    unfold C
    simp [show (7558272 * k + 7235554) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3617777) = 11337408 * k + 10853332 := by
    unfold C
    simp [show (3779136 * k + 3617777) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10853332) = 5668704 * k + 5426666 := by
    unfold C
    simp [show (11337408 * k + 10853332) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5426666) = 2834352 * k + 2713333 := by
    unfold C
    simp [show (5668704 * k + 5426666) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2713333) = 8503056 * k + 8140000 := by
    unfold C
    simp [show (2834352 * k + 2713333) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8140000) = 4251528 * k + 4070000 := by
    unfold C
    simp [show (8503056 * k + 8140000) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4070000) = 2125764 * k + 2035000 := by
    unfold C
    simp [show (4251528 * k + 4070000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2035000) = 1062882 * k + 1017500 := by
    unfold C
    simp [show (2125764 * k + 2035000) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1017500) = 531441 * k + 508750 := by
    unfold C
    simp [show (1062882 * k + 1017500) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1003803) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1003803)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1003839 : ∀ k : Nat,
    iterate (1048576 * k + 1003839) 32 = 531441 * k + 508768 ∧
      531441 * k + 508768 < 1048576 * k + 1003839 := by
  intro k
  have h1 : C (1048576 * k + 1003839) = 3145728 * k + 3011518 := by
    unfold C
    simp [show (1048576 * k + 1003839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3011518) = 1572864 * k + 1505759 := by
    unfold C
    simp [show (3145728 * k + 3011518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1505759) = 4718592 * k + 4517278 := by
    unfold C
    simp [show (1572864 * k + 1505759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4517278) = 2359296 * k + 2258639 := by
    unfold C
    simp [show (4718592 * k + 4517278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2258639) = 7077888 * k + 6775918 := by
    unfold C
    simp [show (2359296 * k + 2258639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6775918) = 3538944 * k + 3387959 := by
    unfold C
    simp [show (7077888 * k + 6775918) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3387959) = 10616832 * k + 10163878 := by
    unfold C
    simp [show (3538944 * k + 3387959) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10163878) = 5308416 * k + 5081939 := by
    unfold C
    simp [show (10616832 * k + 10163878) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5081939) = 15925248 * k + 15245818 := by
    unfold C
    simp [show (5308416 * k + 5081939) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15245818) = 7962624 * k + 7622909 := by
    unfold C
    simp [show (15925248 * k + 15245818) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7622909) = 23887872 * k + 22868728 := by
    unfold C
    simp [show (7962624 * k + 7622909) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22868728) = 11943936 * k + 11434364 := by
    unfold C
    simp [show (23887872 * k + 22868728) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11434364) = 5971968 * k + 5717182 := by
    unfold C
    simp [show (11943936 * k + 11434364) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5717182) = 2985984 * k + 2858591 := by
    unfold C
    simp [show (5971968 * k + 5717182) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2858591) = 8957952 * k + 8575774 := by
    unfold C
    simp [show (2985984 * k + 2858591) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8575774) = 4478976 * k + 4287887 := by
    unfold C
    simp [show (8957952 * k + 8575774) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4287887) = 13436928 * k + 12863662 := by
    unfold C
    simp [show (4478976 * k + 4287887) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12863662) = 6718464 * k + 6431831 := by
    unfold C
    simp [show (13436928 * k + 12863662) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6431831) = 20155392 * k + 19295494 := by
    unfold C
    simp [show (6718464 * k + 6431831) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19295494) = 10077696 * k + 9647747 := by
    unfold C
    simp [show (20155392 * k + 19295494) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9647747) = 30233088 * k + 28943242 := by
    unfold C
    simp [show (10077696 * k + 9647747) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 28943242) = 15116544 * k + 14471621 := by
    unfold C
    simp [show (30233088 * k + 28943242) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14471621) = 45349632 * k + 43414864 := by
    unfold C
    simp [show (15116544 * k + 14471621) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 43414864) = 22674816 * k + 21707432 := by
    unfold C
    simp [show (45349632 * k + 43414864) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21707432) = 11337408 * k + 10853716 := by
    unfold C
    simp [show (22674816 * k + 21707432) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10853716) = 5668704 * k + 5426858 := by
    unfold C
    simp [show (11337408 * k + 10853716) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5426858) = 2834352 * k + 2713429 := by
    unfold C
    simp [show (5668704 * k + 5426858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2713429) = 8503056 * k + 8140288 := by
    unfold C
    simp [show (2834352 * k + 2713429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8140288) = 4251528 * k + 4070144 := by
    unfold C
    simp [show (8503056 * k + 8140288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4070144) = 2125764 * k + 2035072 := by
    unfold C
    simp [show (4251528 * k + 4070144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2035072) = 1062882 * k + 1017536 := by
    unfold C
    simp [show (2125764 * k + 2035072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1017536) = 531441 * k + 508768 := by
    unfold C
    simp [show (1062882 * k + 1017536) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1003839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1003839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard127
